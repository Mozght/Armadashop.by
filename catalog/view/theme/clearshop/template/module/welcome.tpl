<?php 
 if (empty($this->request->get['route']) || $this->request->get['route'] == 'common/home') {?>

<section class="welcome">

	<?php echo $message; ?>

</section>
<?php }?>
