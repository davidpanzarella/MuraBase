<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="twoColSL depth#arrayLen($.event('crumbdata'))#">
<div id="container" class="row #$.createCSSid($.content('menuTitle'))#">
	<div class="row">
		<!--- Sidebar: Begins with Header (logo & primary nav) --->
    <div id="sidebar" class="span4">
      <div class="well">
        <cfinclude template="inc/header.cfm" />
        <nav id="search">
        	<h1>Search the site</h1>
          <form action="" id="searchForm">
            <fieldset>
              <input type="text" name="Keywords" id="txtKeywords" class="span3" value="Search" onfocus="this.value=(this.value=='Search') ? '' : this.value;" onblur="this.value=(this.value=='') ? 'Search' : this.value;" />
              <input type="hidden" name="display" value="search" />
              <input type="hidden" name="newSearch" value="true" />
              <input type="hidden" name="noCache" value="1" />
              <input type="submit" class="btn small span1" value="Go" />
            </fieldset>
          </form>
        </nav>
      </div>
    </div>
    <div id="content" role="main" class="span12">
      <!--- Show Breadcrumb if not on home page --->
      <cfif $.content('contentID') neq "00000000000000000000000000000000001"><nav class="breadcrumb">#$.dspCrumbListLinks("","&nbsp;/&nbsp;")#</nav></cfif>
  
      <!--- Show any content that's been added to display region1  --->
      <cfif len($.dspObjects(1))><section id="topContent">#$.dspObjects(1)#</section></cfif>
      <section>
        <cfif len($.content('file'))><figure><img src="#$.siteConfig('assetPath')#/cache/file/#$.content('file')#_medium.#$.content('fileEXT')#" alt="#$.content('title')#"/></figure></cfif> 
        <h1>#$.content('title')#</h1>
        #$.dspBody(body=$.content('body'),pageTitle='',crumbList=0,showMetaImage=0)#
        #$.dspObjects(2)#
      </section>
    </div>
    <cfinclude template="inc/footer.cfm" />
  </div>
</div>
</body>
</html>
</cfoutput>