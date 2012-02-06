<cfoutput>
	<footer class="span16">
    <ul class="navUtility">
      <li><a href="#$.createHREF(filename='about-us')#">About Us</a></li>
      <li><a href="#$.createHREF(filename='news')#">News</a></li>
      <li><a href="#$.createHREF(filename='blog')#">Blog</a></li>
      <li><a href="#$.createHREF(filename='mura')#">Mura</a></li>
      <li><a href="#$.createHREF(filename='contact')#">Contact</a></li>
      <li class="last"><a href="../../../iow/templates/inc/?mobileFormat=true">#$.rbKey("mobile.mobileversion")#</a></li>
    </ul>
    <p>&copy;#year(now())# #HTMLEditFormat($.siteConfig('site'))#</p>
	</footer>
  <script src="#$.siteConfig('themeAssetPath')#/js/plugins.js"></script>
  <script src="#$.siteConfig('themeAssetPath')#/js/script.js"></script>
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.2/CFInstall.min.js"></script>
    <script>window.attachEvent("onload",function(){CFInstall.check({mode:"overlay"})})</script>
  <![endif]-->
</cfoutput>