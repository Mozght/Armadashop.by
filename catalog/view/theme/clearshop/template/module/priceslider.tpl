<div class="contenta">
<?php
if (!function_exists('curPageURL')) {
function curPageURL() {
$pageURL = 'http';
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') {$pageURL .= "s";}
$pageURL .= "://";
if ($_SERVER["SERVER_PORT"] != "80") {
$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
} else {
$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
}
return $pageURL;
}
}
?>
<div class="box">
		<div class="box-heading"><?php echo $text_filter_price; ?></div>
	        <div id="refinebyprice" class="box-content">
            	<?php 
                    $cur = $this->session->data['currency'];
                    $getCur = $this->model_localisation_currency->getCurrencies();
                    $CVal = $getCur[$cur]['value'];
                    $sr = $getCur[$cur]['symbol_right'];
                    $sl = $getCur[$cur]['symbol_left'];
                    //echo $CVal;
                ?>

	            <label for="amount"></label>
	            <div class="help-txt-heading">Мин - Макс:</div>
                    <div class="help-txt">
                    <?php
                    if (isset($this->session->data['lower'])&&isset($this->session->data['higher']))
                    {
                        $datalowercategory=$this->session->data['lower'];
                        $datahighercategory=$this->session->data['higher'];
                    }
                    else
                    { 
                        $datalowercategory=$lowerlimit;
                        $datahighercategory=$upperlimit;                    
                    }
                    $datalowercategory=ceil($datalowercategory*$CVal);
                    $datahighercategory=ceil($datahighercategory*$CVal);     
                    
                    ?>
                    <?php echo $sl.' '.$datalowercategory.' '.$sr;?> - <?php echo $sl.' '.$datahighercategory.' '.$sr; ?> </div><br>
                    <div id="slider-range"></div>
                    <input type="text" id="amount" readonly="" maxlength="20"/>
                    <?php 

                       $lowerlimit = $lowerlimit*$CVal;
                       $upperlimit =  $upperlimit*$CVal;
                       /* 
                    	echo $datalowercategory;
                        echo '-';
                   		 echo $datahighercategory;
                         echo '<br/>';
                         echo $lowerlimit;
                        echo '-';
                   		 echo $upperlimit;
                         */
                    ?>
	        </div>
	    </div>
   
<script>
    var target;
  $(function() {
    
    var queryString = window.location.search;
    if  (queryString.indexOf("route") != -1)
     {
      target='index.php?route=product/category&path='+'<?php if(isset($_GET['path'])){ echo $_GET['path']; }?>';
      } else {
      target='<?php echo curPageURL();?>';
      }  
      
    $( "#slider-range" ).slider({
      range: true,
      min: <?php echo ceil($lowerlimit) ?> ,
      max: <?php echo ceil($upperlimit) ?>,
      values: [ "<?php echo $datalowercategory;?>", "<?php echo $datahighercategory;?>" ],
      slide: function( event, ui ) { $("#amount").css("opacity","1"); $( "#amount" ).val( "<?php echo $sl.' ';?>"+ui.values[ 0 ]+"<?php echo ' '.$sr;?>" + " - " + "<?php echo $sl.' ';?>"+ui.values[ 1 ]+"<?php echo ' '.$sr;?>" ); },
      change : function (event, ui) {
            $.ajax({
				url: target,
				dataType:'html',
				type: 'get',
				data:{ lower:ui.values[ 0 ]*<?php echo 1/$CVal;?>, higher:ui.values[ 1 ]*<?php echo 1/$CVal; ?>},
				success: function(html) {
				   location.reload();
				}                               
			    });                           
       }                             
});
                           

    
    $( "#amount" ).val(  + $( "#slider-range" ).slider( "values", 0 ) +
      " - " + $( "#slider-range" ).slider( "values", 1 ) );
});



function resetslider() {
  var $slider = $("#slider-range");
  $( "#slider-range" ).slider({
      change : function (event, ui) {
			    $.ajax({
				url: target,
				dataType:'html',
				type: 'get',
				data:{ lower:"<?php echo $lowerlimit ; ?>", higher:"<?php echo $upperlimit; ?>"}				                           
			    });			
}
    });
    $slider.slider("values", 0, "15");
     location.reload();
}

 </script>

</div>