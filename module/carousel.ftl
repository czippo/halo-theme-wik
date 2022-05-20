<#if is_index??>
  <div class="carousel carousel-slider center">
  <div class="carousel-fixed-item center">
    <a ><i class="fd-chevron bottom fa fa-chevron-down"></i></a>
  </div>
    <div class="carousel-item fd-carouse" href="#one!">
       <img src="${theme_base!}/source/images/photo4.jpg">
      <h2>${settings.index_title!}</h2>
      <p class="white-text">${settings.index_notice!}</p>
      <#include "social.ftl">
    </div>
</#if>
<#if is_post??>
   <div class="carousel carousel-slider center">
    <div class="carousel-item fd-post-carousel-item" href="#one!">
      <img src="${theme_base!}/source/images/photo4.jpg">
      <h2>${post.title!}</h2>
      <p class="white-text">${post.summary}</p>
    </div>
</#if>
<#if is_categories?? || is_category??>
   <div class="carousel carousel-slider center">
    <div class="carousel-item fd-post-carousel-item" href="#one!">
      <img src="${theme_base!}/source/images/photo4.jpg">
      <h2>文章分类</h2>
      <p class="white-text">文章分类描述</p>
    </div>
</#if>
<#if is_index??>
      <#list posts.content as post>
      <#if post.topped == true>
        <div class="carousel-item fd-carouse" href="#one!">
          <img src="${post.thumbnail!}">
          <h2>${post.title!}</h2>
          <p class="white-text">${post.summary}</p>
          <a class="fd-botton" href="${post.fullPath!}">查看更多</a>
        </div>
        </#if>
    </#list>
</#if>


   
  </div>
  <script type="text/javascript" src="${theme_base!}/source/plugins/jquery-3.5.1/jquery-3.5.1.min.js"></script>
  <script type="text/javascript" src="${theme_base!}/source/plugins/materialize/js/materialize.min.js"></script>
  <script>
 var instance = M.Carousel.init({
    fullWidth: true,
    indicators: true,
    noWrap: true,
  });

  // Or with jQuery

  $('.carousel.carousel-slider').carousel({
    fullWidth: true,
    indicators: true,
    noWrap: true,
  });
      
  </script>