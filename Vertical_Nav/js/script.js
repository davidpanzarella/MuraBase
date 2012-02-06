/* 
 * Author: David Panzarella (SB InnerWeb Development - www.sbinnerwebdevelopment.com)
 * Date: 12/17/2011
*/

// Primary Navigation Menu
jQuery(document).ready(function (){  
  //Initiate Navigation
	jQuery('#navPrimary').dcAccordion({
			eventType: 'click',
			autoClose: true,
			saveState: true,
			disableLink: true,
			showCount: false,
			speed: 'slow'
		});
});





