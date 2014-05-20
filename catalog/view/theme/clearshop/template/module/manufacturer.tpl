<?php  if (empty($this->request->get['route']) || $this->request->get['route'] == 'common/home') {?>
<div class="manufacturer">	 
      <ul>
        <?php foreach ($manufacturers as $manufacturer) { ?>
        <li>
        	<a href="<?php echo $manufacturer['href']; ?>">
        		<img src="<?php echo $manufacturer['image']; ?>" alt="<?php echo $manufacturer['name']; ?>" title="<?php echo $manufacturer['name']; ?>" />
			<?php echo $manufacturer['name']; ?></a>
        </li>
        <?php } ?>
        <li class="clear"></li>
      </ul>
    </div>
    <?php }?>

