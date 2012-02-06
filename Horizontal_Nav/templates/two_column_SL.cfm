<cfoutput>
<cfinclude template="../../mura-html5-tb-base - Copy/templates/inc/html_head.cfm" />
<body id="#$.getTopID()#" class="twoColSL depth#arrayLen($.event('crumbdata'))#">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="../../mura-html5-tb-base - Copy/templates/inc/header.cfm" />
	<div id="content" class="clearfix">
		<aside id="left">
			#$.dspObjects(1)#
		</aside>
		<article>
			<nav>#$.dspCrumbListLinks("crumbList","&nbsp;&raquo;&nbsp;")#</nav>
			#$.dspBody(body=$.content('body'),pageTitle=$.content('title'),crumbList=0,showMetaImage=1)#
			#$.dspObjects(2)#
		</article>
	</div>
	<cfinclude template="../../mura-html5-tb-base - Copy/templates/inc/footer.cfm" />
</div>
</body>
</html>
</cfoutput>