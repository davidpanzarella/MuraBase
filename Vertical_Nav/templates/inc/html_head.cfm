<cfoutput>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="#HTMLEditFormat($.getMetaDesc())#" />
	<meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#" />
	<cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#" />
	<meta name="robots" content="noindex, nofollow" /> <!--- use this to discourage search engines from indexing your site. (can be useful if developing on a live server for example) Delete if not needed. --->
	<title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="icon" href="#$.siteConfig('themeAssetPath')#/images/logo.ico" type="image/x-icon" />
  <link rel="shortcut icon" href="#$.siteConfig('themeAssetPath')#/images/logo.ico" type="image/x-icon" />
  <link rel="apple-touch-icon" href="#$.siteConfig('themeAssetPath')#/images/icons/apple-touch-icon.png">
  
	<!--- Shared Styles --->
  <link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.min.css" type="text/css" media="all" />

	<!--- Theme-Specific Styles --->
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/base.css" type="text/css" media="all" />
	
	<cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
	<cfloop query="rs">
	<link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" />
	</cfloop>
  
	<!--- SHOULD MOVE ALL EXCEPT MODERNIZER TO BOTTOM, BUT NEED TO WAIT FOR MURA GUYS TO MOVE SHADOW BOX TO JUST BEFORE BODY END. Grab Google CDN's jQuery. Fall back to local if necessary ---> 
  <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script> 
  <script>!window.jQuery && document.write(unescape('%3Cscript src="#$.siteConfig("themeAssetPath")#/js/libs/jquery.1.7.1.min.js"%3E%3C/script%3E'))</script> 
	<script src="#$.siteConfig('themeAssetPath')#/js/libs/modernizr-2.0.6.min.js"></script>
	<script>
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']]; // Change UA-XXXXX-X to be your site's ID
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s)}(document,'script'));
  </script>  
 </head>
</cfoutput>