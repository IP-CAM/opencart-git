
  <div class="category-title"><?php echo $heading_title; ?></div>
    <div id="accordion">
      <?php foreach ($categories as $category) { ?>
      <h3>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active item popular"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>" class="item popular"><?php echo $category['name']; ?></a>
        <?php } ?>

      </h3>
      <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      <?php } ?>
    </div>


   <style media="screen" type="text/css">
   .category-title{
    background: #333333;
    color:white;
    padding-top: 7px;
    padding-bottom: 7px;
    font-size:16px;
    width:220px;
    margin:0px;
    text-indent: 20px;
    line-height: 36px; 

   }

    #accordion a{
      text-decoration: none;
    }

    #accordion :focus, :active{
      outline: 0px;
    }

    * {   
    -moz-box-sizing: border-box;   
    -webkit-box-sizing: border-box;   
    box-sizing: border-box;  
    }  

    #accordion{
      width:220px;
    }
    
    #accordion ul{
      list-style: none;
      margin:0px;
      text-indent: 20px;
      padding:0px;
    }
    #accordion .ui-accordion-content {  
    width: 100%;  
    font-size: 10pt;  
    line-height: 16pt;  
    border-bottom:1px solid #333333;
    border-right:1px solid #333333;;
    }

    #accordion .ui-accordion-content > * {  
    margin: 0;  
    padding: 5px;  
    }

    #accordion .ui-accordion-content a {  
    color: #777;  
    }      

    #accordion .ui-accordion-header {  
    margin: 0px;  
}  

#accordion .ui-accordion-header a {  
    color:#000;
    line-height: 36px;  
    display: block;  
    font-size: 11pt;  
    width: 100%;  
    text-indent: 20px;  
}  

#accordion .ui-accordion-header{
    border-bottom: 1px solid #333333;
    border-right:1px solid #333333;
}
</style>
<script src="/opencart/upload/catalog/view/javascript/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
