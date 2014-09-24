<div class="box">
 <div class="box-heading"></div>
  <ul class="box-attribute">
 	<?php
 		foreach ($attribute_groups as $attribute_group) {?>
 			<li><span id="attribute-group<?php echo $attribute_group['attribute_group_id']?>"><?php echo $attribute_group['name']?></span>

 			<?php foreach ($attribute_group['attribute'] as $attribute){ ?>

 			<li>
            <input type="checkbox" value="<?php echo $attribute['attribute_id']; ?>" id="$attribute<?php echo $attribute['filter_id']; ?>" checked="checked" />
            <label for="attribute<?php echo $attribute['attribute_id']; ?>"><?php echo $attribute['name']; ?></label>
            </li>
 				
 			<?php
   			}
 			echo "<br>";
 		}
 	?>
 </ul>
 <a id="button-attribute" class="button">aaa></a>
</div>
<style type="text/css">
#selector{
	background:yellow;
}
.attribute{
	display:inline;
}

.active{
	background:grey;
}

</style>
<script type="text/javascript">
$('#button-attribute').bind('click', function() {
	attribute = [];
	
	$('.box-attribute input[type=\'checkbox\']:checked').each(function(element) {
		attribute.push(this.value);
	});
	
	location = '<?php echo $action; ?>&attribute=' + filter.join(',');
});
</script>