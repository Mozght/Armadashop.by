<div class="box blogModule blogTags <?php echo $classSuffix; ?>">
   <div class="box-heading"><?php echo $heading_title; ?></div>
   <div class="box-content blogModule">   
      <?php if ($tagsData) {
         echo $tagsData;
      } else {
         echo $text_notags;
      } ?>	  
   </div>
   <div class="box-footer"><span></span></div>
</div>
