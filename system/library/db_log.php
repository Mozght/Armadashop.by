<?php
class DB {
	private $driver;
	private $log;
	private $long_query_time = 0.5;
	private $log_slow_queries = 'slow.log';
	private $all_time = 0;
	private $count_queries = 0;

	public function __construct($driver, $hostname, $username, $password, $database) {
		if (file_exists(DIR_DATABASE . $driver . '.php')) {
			require_once(DIR_DATABASE . $driver . '.php');
		} else {
			exit('Error: Could not load database file ' . $driver . '!');
		}
				
		$this->driver = new $driver($hostname, $username, $password, $database);

		$this->log = new Log($this->log_slow_queries);
	}

	public function __destruct() {
		$this->log->write(sprintf ("all_time: %05.5f; count_queries: %05d %s", $this->all_time, $this->count_queries, $_SERVER['REQUEST_URI'] ));
	}
		
  	public function query($sql) {
		$time_start = microtime(true);

		$query = $this->driver->query($sql);

		$time_end = microtime(true);
		$time = $time_end - $time_start;

		$this->all_time += $time;
		$this->count_queries ++;
		if ($time >= $this->long_query_time) {
			$this->log->write(sprintf ("%05.5f %s", $time, $sql));
		}
		return $query;
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