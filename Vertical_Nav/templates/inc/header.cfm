<cfoutput>
	<header>
		<hgroup>
		<h1><a href="#$.createHREF(filename='')#">#HTMLEditFormat($.siteConfig('site'))#</a></h1>
		<cfif len($.siteConfig('tagline'))><h2 class="tagline">#$.siteConfig('tagline')#</h2></cfif>
		</hgroup>
		<nav id="navigation">
    	<h1>#HTMLEditFormat($.siteConfig('site'))# Main Navigation Menu</h1>
      <cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
        #$.dspPrimaryNav(
          viewDepth="2",
          id="navPrimary",
          displayHome="Always",
          closePortals="true",
          showCurrentChildrenOnly="false"
          )#</cf_cacheomatic>
        <!--- Optional named arguments for Primary Nav are: displayHome="Always/Never/Conditional", openPortals/closePortals="contentid,contentid" (i.e. show specific sub-content in dropdown nav) --->
		</nav>	
	</header>
</cfoutput>