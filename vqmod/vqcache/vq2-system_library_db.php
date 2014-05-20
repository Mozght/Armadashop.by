<?php
class DB {
	private $driver;
	
	public function __construct($driver, $hostname, $username, $password, $database) {
		if (file_exists(DIR_DATABASE . $driver . '.php')) {
			require_once(VQMod::modCheck(DIR_DATABASE . $driver . '.php'));
		} else {
			exit('Error: Could not load database file ' . $driver . '!');
		}
				
		$this->driver = new $driver($hostname, $username, $password, $database);
				// Clear Query Log
		if (file_exists('query_time.txt')) { unlink('query_time.txt'); }
		$urlquery = (isset($_SERVER['QUERY_STRING']) && $_SERVER['QUERY_STRING']) ? $_SERVER['QUERY_STRING'] : 'index.php';
		file_put_contents('query_time.txt', '--- PAGE URL: ' . $urlquery . ' ---' . "\r\n\r\n");
		require_once(VQMod::modCheck(DIR_SYSTEM . 'library/session.php'));
		$session = new Session();
		$_SESSION['query_total_time'] = 0;
		//
	}
		
  	public function query($sql) {
		//return $this->driver->query($sql);

        // Log Time
        $trace = debug_backtrace();
        $filename = (isset($trace[0]['file'])) ? $trace[0]['file'] : '---';
        $query_time = (time() + microtime());
        $result = $this->driver->query($sql);
        $exec_time = (time() + microtime());
        $exec_time = round($exec_time - $query_time, 4);
        if (!isset($_SESSION['query_total_time'])) { $_SESSION['query_total_time'] = 0; }
        $_SESSION['query_total_time'] = (float)$_SESSION['query_total_time'] + (float)$exec_time;
        file_put_contents('query_time.txt', ('[' . $filename . ']' . "\r\n" . 'Query Time: ' . $exec_time . ' :: ' . $sql . "\r\n" . 'Aggregate: ' . $_SESSION['query_total_time'] . "\r\n\r\n"), FILE_APPEND);
        return $result;
        //
  	}
	
	public function escape($value) {
		return $this->driver->escape($value);
	}
	
  	public function countAffected() {
		return $this->driver->countAffected();
  	}

  	public function getLastId() {
		return $this->driver->getLastId();
  	}	
}
?>