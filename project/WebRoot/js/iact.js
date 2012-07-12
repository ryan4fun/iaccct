$(document).ready(function(){
	/* This code is executed after the DOM has been completely loaded */
	
	var totWidth=0;
	var positions = new Array();
	
	$('#slides .slide').each(function(i){
		
		/* Traverse through all the slides and store their accumulative widths in totWidth */
		
		positions[i]= totWidth;
		totWidth += $(this).width();
		
		/* The positions array contains each slide's commulutative offset from the left part of the container */
		
		if(!$(this).width())
		{
			alert("Please, fill in width & height for all your images!");
			return false;
		}
		
	});
	
	$('#slides').width(totWidth);

	/* Change the cotnainer div's width to the exact width of all the slides combined */

	$('#menu ul li a').click(function(e,keepScroll){

			/* On a thumbnail click */

			$('li.menuItem').removeClass('act').addClass('inact');
			$(this).parent().addClass('act');
			
			var pos = $(this).parent().prevAll('.menuItem').length;
			
			$('#slides').stop().animate({marginLeft:-positions[pos]+'px'},450);
			/* Start the sliding animation */
			
			e.preventDefault();
			/* Prevent the default action of the link */
			
			
			// Stopping the auto-advance if an icon has been clicked:
			if(!keepScroll) clearInterval(itvl);
	});
	
	$('#menu ul li.menuItem:first').addClass('act').siblings().addClass('inact');
	/* On page load, mark the first thumbnail as active */
	

	/**
	 *
	 *	Enabling auto-advance.
	 *
	 */
	var current=1;
	function autoAdvance()
	{
		if(current==-1) return false;
		
		$('#menu ul li a').eq(current%$('#menu ul li a').length).trigger('click',[true]);	// [true] will be passed as the keepScroll parameter of the click function on line 28
		current++;
	}

	// The number of seconds that the slider will auto-advance in:
	
	var changeEvery = 10;

	var itvl = setInterval(function(){autoAdvance()},changeEvery*1000);

	/* End of customizations */
});

/**
 * AJAX object get response text.
 * 
 * @return
 */
var ajax = function () {
	var xhr =  window.XMLHttpRequest && (window.location.protocol !== "file:" || !window.ActiveXObject) ?
			function() {
				return new window.XMLHttpRequest();
			}  :
			function() {
				try {
					return new window.ActiveXObject("Microsoft.XMLHTTP");
				} catch(e) {}
			};
	return {
						get:function(url){
							var xmlhttp = xhr();
							xmlhttp.open("GET", url, false);
							xmlhttp.send(null);
							return xmlhttp.responseText;
						},
						
						post:function(url, param) {
							var xmlhttp = xhr();
							xmlhttp.open("POST",url,false);  	
							xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=utf-8");  
							xmlhttp.send(param);
							return xmlhttp.responseText;
						}
				}
};


/**
 * Add prototype for string trim
 * 
 * @return
 */
String.prototype.trim = function() {
	 return this.replace(/^(\s|\u00A0)+/,'').replace(/(\s|\u00A0)+$/,'');   
};


/**
 * Add event listener dynamically for target object.
 * 
 */
var addEventListener = function(target, eventName, fn) {
	
	//IE 
	if (window.attachEvent) {
		target.attachEvent('on' + eventName,
				function(e) {fn.call(target, e);});
	// FireFox and CHROME
	} else if (window.addEventListener) {
		target.addEventListener(eventName, fn, false);
	} else {
		target['on' + eventName] = fn;
	}
};

/**
 * Assemble AJAX get request parameters such as name1=value1&name2=value2
 * 
 * @param fObj
 * @return
 */
var makeQueryStr = function (fObj) { 
	 var i,queryString = "", and = "";
	    var item; // for each form's object
	    var itemValue;// store each form object's value
		for( i=0;i<fObj.length;i++ ) {
	       item = fObj[i];// get form's each object
		      if ( item.name!='') {
	          if ( item.type == 'select-one' ) {
	                itemValue = item.options[item.selectedIndex].value;
	          } else if ( item.type=='checkbox' || item.type=='radio') {
	                if ( item.checked == false ) {
	                     continue;    
	                }
	                itemValue = item.value;
	          } else if ( item.type == 'button' 
	          				|| item.type == 'submit' 
	          				|| item.type == 'reset' 
	          				|| item.type == 'image')
	                  {// ignore this type
	                        continue;
		         } else  {
		              itemValue = item.value;
		         }
		         itemValue = encodeURIComponent(itemValue);
		         queryString += and + item.name + '=' + itemValue;
		         and="&";
		       }
	    }
	    return queryString;
};


/**
 * Ajax response string eval to json object
 */
var jsonEval = function(jsonStr) {
		return eval("(" + jsonStr + ")");
};