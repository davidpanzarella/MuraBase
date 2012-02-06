<cfoutput>
<cfinclude template="../../mura-html5-tb-base - Copy/templates/inc/html_head.cfm" />
<body id="#$.getTopID()#" class="home">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="../../mura-html5-tb-base - Copy/templates/inc/header.cfm" />
  <div id="content" role="main">
		<section>
			#$.dspBody(body=$.content('body'),pageTitle="",crumbList=0,showMetaImage=0)#
			#$.dspObjects(2)#
		</section>
		<aside id="right">
			#$.dspObjects(3)#
		</aside>
	</div>
	<cfinclude template="../../mura-html5-tb-base - Copy/templates/inc/footer.cfm" />
</div>
</body>
</html>
</cfoutput>