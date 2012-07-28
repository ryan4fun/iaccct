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

function popDiv(pid) {
	 var pobj = $("#"+pid);
	 var w = document.body.clientWidth;
	 var h = document.body.clientHeight ;
	 
     var ph = pobj.height();       
     var pw = pobj.width();    
      
	$("<div class='mask'/>")
		 				.width(document.body.scrollWidth)
		 				.height(document.body.scrollHeight)
		 				.appendTo("body");
	 pobj.css({"position":"absolute"})
	 				.animate({left: w/2-pw/2,    
                      top: h/2-ph/2, opacity: "show" }, "slow");
}
function hideDiv(pid) {
	$(".mask").remove();
	var pobj = $("#"+pid);
	pobj.animate({left: 0, top: 0, opacity: "hide" }, "fast");   
}


function popForgetDiv() {
	var w = document.body.clientWidth;
	var h = document.body.clientHeight ;
	var fobj = $("#forDiv").get(0);
	if (!fobj) {
		fobj = $("<div class='forget' id='forDiv' />").appendTo("body");
		fobj.append("<div class='fortitle'>忘记密码<img src='images/close_button.png' onclick='hideDiv(\"forDiv\");' style='float:right;'/></div>");
		fobj.append("<label class='reglabel'>&nbsp;&nbsp;&nbsp;用户名：</label><input type='text' name='login' onblur='checkUser();' /><br/>");
		fobj.append("<label class='reglabel'>注册邮箱：</label><input type='text' name='real'/>");
		fobj.append("<input type='button' class='sb'onclick='sbForgetPwd();' />");	
	}
	popDiv('forDiv');
}


