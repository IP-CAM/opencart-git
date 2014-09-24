<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

  <div class="container">
  <h1><?php echo $heading_title; ?></h1>
  <hr class="featurette-divider">
  <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">公司简介</h2>
          <p class="lead">本网站隶属于吴江市利群纺织有限公司。
           本公司成立于2002年。目前有员工200名。是盛泽最早的提花面料生产厂商之一。
            本公司目前与国内外多家品牌服装公司合作。以优异的品质和服务赢得了客户的肯定。
          </p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="500x500" src="http://127.0.0.1/opencart/upload/image/data/plant.jpg">
        </div>
  </div>
  <hr class="featurette-divider">
  <div class="row featurette">
        <div class="col-md-5">
          <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="500x500" src="http://127.0.0.1/opencart/upload/image/data/equipment.jpg">
        </div>
        <div class="col-md-7">
          <h2 class="featurette-heading">设备和规模</h2>
          <p class="lead"> 本公司目前有各类提花机170多台。包括40多台电子提花机和130多台机械提花机。
      本公司还有转移印花生产线若干条。
          </p>
        </div>
  </div>
  
  <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">产品及服务</h2>
          <p class="lead">      
            本公司目前现有花型200个左右。并且每年都有新花型推出
      本公司以全涤和交织类产品为主。
      提花的范围和品种比较广。
      从原料上分，可以生产含有金银丝，特种纱的提花品种。
      从密度上分，可以生产中，高精密的提花产品。
      本公司也提供来样开发服务
      </p></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="500x500" src="http://127.0.0.1/opencart/upload/image/data/product.jpg">
        </div>
  </div>
  </div>
  <hr class="featurette-divider">

<style type="text/css">
  .featurette-heading{
    margin-top:120px;
    margin-bottom: 10px;
  }
  .text-muted {
    color: #777;
  }
</style>
<!--

  <?php echo $description; ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>-->
<?php echo $footer; ?>