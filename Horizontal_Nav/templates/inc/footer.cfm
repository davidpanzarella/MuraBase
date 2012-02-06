<cfoutput>
	<footer>
		<div class="wrap clearfix">
			<ul class="navUtility">
				<li><a href="#$.createHREF(filename='about-us')#">About Us</a></li>
				<li><a href="#$.createHREF(filename='news')#">News</a></li>
				<li><a href="#$.createHREF(filename='blog')#">Blog</a></li>
				<li><a href="#$.createHREF(filename='mura')#">Mura</a></li>
				<li><a href="#$.createHREF(filename='contact')#">Contact</a></li>
				<li class="last"><a href="../../../iow/templates/inc/?mobileFormat=true">#$.rbKey("mobile.mobileversion")#</a></li>
			</ul>
			<p>&copy;#year(now())# #HTMLEditFormat($.siteConfig('site'))#</p>
		</div>
	</footer>
	<cfif listFirst(server.coldfusion.productversion) neq 8>
	<cf_CacheOMatic key="globalfooterjs">
	#$.static()
		.include("/js/ie/lte7/roundies/")
		.renderIncludes("js")#
	</cf_CacheOMatic>
	</cfif>
  <script src="#$.siteConfig('themeAssetPath')#/js/script.js"></script>
	<script>
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']]; // Change UA-XXXXX-X to be your site's ID
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s)}(document,'script'));
  </script>
  
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.2/CFInstall.min.js"></script>
    <script>window.attachEvent("onload",function(){CFInstall.check({mode:"overlay"})})</script>
  <![endif]-->
</cfoutput>