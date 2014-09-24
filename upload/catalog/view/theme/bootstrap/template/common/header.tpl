<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bootstrap/stylesheet/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bootstrap/stylesheet/jc.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bootstrap/stylesheet/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bootstrap/stylesheet/bootstrap-theme.min.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>


<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="catalog/view/javascript/bootstrap.min.js"></script>
<!--
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>-->

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>

<!--产品的jquery-->
<script type="text/javascript">
$(document).ready(function(){
	var over={
		"background":"#ECF0F1",
	};
	
	var overinput={
		"background":"white",
		"color":"#1ABC9C"	
	};

	var outinput={
		"background":"#1ABC9C",
		"color":"white"
	};
	
	$(".box-product>div").mouseover(function(){
		$(this).css(over);
	}).mouseout(function(){
		$(this).css("background","white");
	});

	$(".box-product>div").find("input").mouseover(function(){
		$(this).css(overinput);
	}).mouseout(function(){
		$(this).css(outinput);
	});

});
</script>

<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">


<div id="header">
  <div class="container">
  <?php if ($categories) { ?>
  <nav class="navbar" role="navigation">
    <div class="navbar-header">
            <a class="navbar-brand" href="<?php echo $home; ?>">
        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
      </a>
    </div>
   <div class="container">
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
  <ul class="nav navbar-nav">
  <li>
    <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
  </li>
  <li><a href="index.php?route=information/information&information_id=4">关于我们</a></li>
    <?php foreach ($categories as $category) { ?>
    <li class="dropdown"><a class=" dropdown-toggle"  href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?><b class="caret"></b></a>
      <?php if ($category['children']) { ?>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li role="presentation"><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>

      <?php } ?>
    </li>

    <?php } ?>
    <li><a href="index.php?route=information/contact">联系我们</a></li>
  </ul>
       <div id="search" class="navbar-form pull-right" role="search">
        <div class="form-group">
            <input type="text" class="form-control"name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
        </div>
        <button type="submit" class="btn btn-default button-search">搜索</button>
      </div>
</div>
</nav>
</div>
</div>






<?php } ?>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
