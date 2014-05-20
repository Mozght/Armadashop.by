/*  
Theme Name: Clearshop
Version: 1.0
*/

$(document).ready(function(){
	$('.tip').tooltip();
	var showChar = 220;
    var ellipsestext = "...";
    var moretext = "читать далее";
    var lesstext = "свернуть";
	
	if( (navigator.userAgent.match(/iPhone/i)) || (navigator.userAgent.match(/iPod/i)) || (navigator.userAgent.match(/iPad/i))) {
			
	}
	
	$('.grid-box').hover(
		function(){
			$(this).addClass('hover');		
		},
		function(){
			$(this).removeClass('hover');
		});
	$('.product-slider ul li').hover(
		function(){
			$(this).addClass('hover');		
		},
		function(){
			$(this).removeClass('hover');
		});
	
    $('.more p:eq(0)').fadeIn(200); 
 	$('.more').append('<div class="readmore"><a href="#" class="morelink less">'+moretext+'</a></div>');
	
	$(".morelink").click(function(){
			if($(this).hasClass("less")) {
				$(this).addClass("more");
				$(this).removeClass("less");
				$(this).parent().parent('.more').children('p').fadeIn(200);
				$(this).html(lesstext);
			} else {
				var len = $(this).parent().parent('.more').children('p').length;
				$(this).addClass("less");
				$(this).removeClass("more");
				$(this).parent().parent('.more').children('p').slice(1,length).fadeOut(100);
				$(this).html(moretext);
			}
			return false;
		});
	
	/*	Forms Validation
	---------------------------------------------------------------------- */

		jQuery.validator.setDefaults({
			errorClass: "error",  
			validClass: "",  
			errorElement: "span",  
			highlight: function(element, errorClass, validClass) {	
				if (element.type === 'radio') { 
					this.findByName(element.name).parent("div").parent("div").removeClass(validClass).addClass(errorClass);	
				} else { $(element).parent("div").parent("div").removeClass(validClass).addClass(errorClass);	}  
			},  
			unhighlight: function(element, errorClass, validClass) { 
				if (element.type === 'radio') { this.findByName(element.name).parent("div").parent("div").removeClass(errorClass).addClass(validClass);	
				} else { $(element).parent("div").parent("div").removeClass(errorClass).addClass(validClass);	}  
			},
			errorPlacement: function(error, element) {
				error.insertAfter(element);
			}
		});
		
		$('.color-box').click(function(){
			if ($(this).hasClass('checked')) {
				$(this).removeClass('checked');
			}
			else {
				$(this).addClass('checked');
			}
		});

		$("#contact-form").validate({
			rules: {
				enquiry: {
					required: true,
					minlength: 10
				}
			}
		});
		
		$('.list-options select').selectmenu();
		//$('.controls select').selectmenu();


		$("#register-form, #password-form").validate({
			rules: {
				password: {
					required: true, minlength: 3
				},
				confirm: {
					required: function(element) {
						var str = $("#password").val();

						return str.length > 0;
					},
					equalTo: "#password",
					minlength: 3
				}
			}
		});

		$("#edit-account, #voucher, #address, #return, #login, #forgotten").validate();

	

	/*	Search
	---------------------------------------------------------------------- */

		$('.button-search').bind('click', function() {
			url = $('base').attr('href') + 'index.php?route=product/search';
					 
			var search = $('input[name=\'search\']').attr('value');
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		});
		
		$('#header input[name=\'search\']').bind('keydown', function(e) {
			if (e.keyCode == 13) {
				url = $('base').attr('href') + 'index.php?route=product/search';
				 
				var search = $('input[name=\'search\']').attr('value');
				
				if (search) {
					url += '&search=' + encodeURIComponent(search);
				}
				
				location = url;
			}
		});

	
	/*	Opacity animation on hover
	---------------------------------------------------------------------- */

		if ($('html').hasClass('ie7') || $('html').hasClass('ie8' || $('html').hasClass('ie9'))) {

		} else {

			$(".image-additional > a").hover(function() { 
				$(this).siblings().stop().animate({ opacity: .85 }, 500)}, function () {
					$(this).siblings().stop().animate({ opacity: 1 }, 300) }
			);

			$("#toggle_sidebar").hover(function() {
				$(".sidebar").stop().animate({ opacity: .45 }, 300)}, function () {
					$(".sidebar").stop().animate({ opacity: 1 }, 300)}
			);

		}


	/*	Ajax Minicart
	---------------------------------------------------------------------- */


		$('#cart-items').on('click', function() {
			$('#cart').addClass('active');			
			$('#cart').load('index.php?route=module/cart #cart > *');
		});
		
		$('#closecart').on('click',function() {
				$('#cart').hide('active');
			});


	/*	Language/Currency dropdowns
	---------------------------------------------------------------------- */

		$('.dropd').click(function() {

			$(this).find('.options').slideDown('fast');
			$(this).addClass('active');

			$(this).bind('mouseleave', function() {
				$(this).find('.options').slideUp('fast');
				$(this).removeClass('active');
			});

		});


	/*	Footer menu
	---------------------------------------------------------------------- */

		$(".column .header").click(function () {

			$screensize = $(window).width();

			if ($screensize < 767) {
				$(this).toggleClass("active");  
				$(this).parent().find(".content").slideToggle('medium');
			}

		});



	/*	Scroll to top
	---------------------------------------------------------------------- */
	
		$().UItoTop({ 
			easingType: 'easeOutQuart',
			scrollSpeed: 1200
		});



	/*	Toggle sidebar
	---------------------------------------------------------------------- */
		
		$("#toggle_sidebar").click(function () {

			$(this).toggleClass("collapse");

			$(".sidebar").toggleClass("close");

			$("#maincontent").toggleClass('expanded');

		});
	
	
	/*	Tooltips
	---------------------------------------------------------------------- */

		$('body').tooltip({
		     selector:'[class=tooltp]',
		});


	
	/*	Mobile menu
	---------------------------------------------------------------------- */
		$('#mobileMenu').change(function(){
			if($(this).val() !== null){document.location.href = $(this).val()}
		});


	
	/*	Accordion
	---------------------------------------------------------------------- */

		$('.accordion-group:first-child .accordion-toggle').addClass('active');

	    $('.accordion').on('show', function (e) {
	         $(e.target).prev('.accordion-heading').find('.accordion-toggle').addClass('active');
	    });

	    $('.accordion').on('hide', function (e) {
	        $(this).find('.accordion-toggle').not($(e.target)).removeClass('active');
	    });


	
	/*	Tabs
	---------------------------------------------------------------------- */

		$('#tabs a').tabs();


	
	/*	Banners
	---------------------------------------------------------------------- */

		var banner = function() {
			$('.banner').cycle({
				before: function(current, next) {
					$(next).parent().height($(next).outerHeight());
				}
			});
		}

		setTimeout(banner, 2000);


	
	/*	Alert boxes
	---------------------------------------------------------------------- */

		$('.success img, .warning img, .attention img, .information img').on('click', function() {
			$(this).parent().fadeOut('slow', function() {
				$(this).remove();
			});
		});	

});


	
	/*	Same height for all grid boxes
	---------------------------------------------------------------------- */

		// Adjust boxes height when the page is completely loaded
		$(window).load(function(){
			
			doAdjust = true;
			previousWidth = 0;
			adjustBoxHeights();
		
			// Raise doAdjust flag every time the window width changes

			$(window).resize(function() {
				var currentWidth = $(window).width();
				if (previousWidth != currentWidth) {
					doAdjust = true;
				}
				previousWidth = currentWidth;
			})

			// Run every half second

			$(function() {
				setInterval('maybeAdjust()', 500);
			});

		});

		
		// Check the doAdjust flag

		function maybeAdjust() {
			if (doAdjust) {
				adjustBoxHeights();
				doAdjust = false;
			}
		}

		// Loop through the DIVs and find the height of the tallest one, then loop again and set them all to that height

		function adjustBoxHeights() {
			var maxHeight = 0;
			$('#maincontent .product-grid .inner2,  .content-top .product-grid .inner2, .content-bottom .product-grid .inner2').each(function(){
				$(this).height('auto');
				if (maxHeight < $(this).height()) {maxHeight = $(this).height()}
			});
			$('#maincontent .product-grid .inner2,  .content-top .product-grid .inner2, .content-bottom .product-grid .inner2').each(function(){
				$(this).height(maxHeight);
			});

			var thumbs_maxHeight = 0;
			$('.category-list > li').each(function(){
				$(this).height('auto');
				if (thumbs_maxHeight < $(this).height()) {thumbs_maxHeight = $(this).height()}
			});
			$('.category-list > li').each(function(){
				$(this).height(thumbs_maxHeight);
			});
		}



	function getURLVar(urlVarName) {
		var urlHalves = String(document.location).toLowerCase().split('?');
		var urlVarValue = '';
		
		if (urlHalves[1]) {
			var urlVars = urlHalves[1].split('&');

			for (var i = 0; i <= (urlVars.length); i++) {
				if (urlVars[i]) {
					var urlVarPair = urlVars[i].split('=');
					
					if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
						urlVarValue = urlVarPair[1];
					}
				}
			}
		}
		
		return urlVarValue;
	}


	/*	Add to Cart
	---------------------------------------------------------------------- */

		function addToCart(product_id, quantity) {
			quantity = typeof(quantity) != 'undefined' ? quantity : 1;

			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: 'product_id=' + product_id + '&quantity=' + quantity,
				dataType: 'json',
				success: function(json) {
					$('.success, .warning, .attention, .information, .error').remove();
					
					if (json['redirect']) {
						location = json['redirect'];
					}
					
					if (json['success']) {

						$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>');

						$('.success').fadeIn('slow');

						$('html, body').animate({ scrollTop: 0 }, 'slow');

						$('#cart-items').html(json['total']);

					}	
				}
			});
		}

	
	/*	Add to Wishlist
	---------------------------------------------------------------------- */

		function addToWishList(product_id) {
			$.ajax({
				url: 'index.php?route=account/wishlist/add',
				type: 'post',
				data: 'product_id=' + product_id,
				dataType: 'json',
				success: function(json) {
					$('.success, .warning, .attention, .information').remove();
								
					if (json['success']) {
						$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>');
						
						$('.success').fadeIn('slow');
						
						$('#wishlist-total').html(json['total']);
						
						$('html, body').animate({ scrollTop: 0 }, 'slow');
					}	
				}
			});
		}

	
	/*	Add to Compare
	---------------------------------------------------------------------- */

		function addToCompare(product_id) { 
			$.ajax({
				url: 'index.php?route=product/compare/add',
				type: 'post',
				data: 'product_id=' + product_id,
				dataType: 'json',
				success: function(json) {
					$('.success, .warning, .attention, .information').remove();
								
					if (json['success']) {
						$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/clearshop/images/close.png" alt="" class="close" /></div>');
						
						$('.success').fadeIn('slow');
						
						$('#compare-total').html(json['total']);
						
						$('html, body').animate({ scrollTop: 0 }, 'slow'); 
					}	
				}
			});
		}

	
	/*	Grid/List view
	---------------------------------------------------------------------- */

		function display(view) {

			if (view == 'list') {

				$('#list').addClass('active');
				$('#grid').removeClass('active');

				$('.product-listing .product-grid').toggleClass('product-grid product-list');
				
				$('.product-list > div').each(function(index, element) {

					$(this).removeClass('grid-box');

					$(this).addClass('product-row');
					$(this).height('auto');

					
					html = '<div class="inner"><div class="inner2"><div class="row-fluid">';
				
					var image = $(element).find('.image').html();

					if (image != null) { 
						html += '<div class="image span3">' + image + '</div>';
					} else {
						html += '<div class="image span3">&nbsp;</div>';
					}
					
					html += '<div class="name-desc span6">';

					var special = $(element).find('.onsale').html();

					if (special != null) {
						html += '<div class="onsale">' + special  + '</div>';
					}

					html += '<div class="name">' + $(element).find('.name').html() + '</div>';
					var rating = $(element).find('.rating').html();
					
					if (rating != null) {
						html += '<div class="rating">' + rating + '</div>';
					}

					var price = $(element).find('.price').html();
					
					if (price != null) {
						html += '<div class="price">' + price  + '</div>';
					} else {
						html += '<div class="price">&nbsp;</div>';
					}

					html += '<div class="description">' + $(element).find('.description').html() + '</div>';

					html += '  <div class="quickview">' + $(element).find('.quickview').html() + '</div>';

					html += '</div>';
					

					html += '<div class="actions span3">';

					

					html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';

					html += ' <div class="links">';
					
					var wishlist = $(element).find('.wishlist').html();
					if (wishlist != null) {
						html += '  <span class="wishlist">' + wishlist + '</span>';
					}

					var compare = $(element).find('.compare').html();
					if (compare != null) {
						html += '  <span class="compare">' + compare + '</span>';
					}
					html += '</div>';

					html += '</div>';

					html += '</div></div></div>';

								
					$(element).html(html);
				});
				
				$.totalStorage('display', 'list'); 

			} else {

				$('#grid').addClass('active');
				$('#list').removeClass('active');
				
				$('.product-list').toggleClass('product-list product-grid');
				
				$('.product-listing .product-grid > div').each(function(index, element) {

					$(this).removeClass('product-row');
					
					$(this).addClass('grid-box');

					html = '';

					html += '<div class="inner">';
					html += '<div class="inner2">';

					var image = $(element).find('.image').html();
					if (image != null) {
						html += '<div class="image">' + image + '</div>';
					}

					var special = $(element).find('.onsale').html();
					
					if (special != null) {
						html += '<div class="onsale">' + special  + '</div>';
					}

					var special = $(element).find('.quickview').html();
					
					if (special != null) {
						html += '<div class="quickview">' + special  + '</div>';
					}
					
					html += '<div class="name">' + $(element).find('.name').html() + '</div>';

					html += '<div class="description">' + $(element).find('.description').html() + '</div>';
					
					var price = $(element).find('.price').html();
					
					if (price != null) {
						html += '<div class="price">' + price  + '</div>';
					}
					
					var rating = $(element).find('.rating').html();

					if (rating != null) {
						html += '<div class="rating">' + rating + '</div>';
					}
					html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';

					html += ' <div class="links">';
					
					var wishlist = $(element).find('.wishlist').html();
					if (wishlist != null) {
						html += '  <span class="wishlist">' + wishlist + '</span>';
					}
					
					var compare = $(element).find('.compare').html();
					if (compare != null) {
						html += '  <span class="compare">' + compare + '</span>';
					}

					html += '</div>';

					html += '</div>';
					html += '</div>';
					
					$(element).html(html);

				});
										
				$.totalStorage('display', 'grid');

				adjustBoxHeights();

			}

			$('.tooltp').tooltip();

		}

		view = $.totalStorage('display');



	
	/*	Responsive video embeds
	---------------------------------------------------------------------- */

		/*!
		* FitVids 1.0
		*
		* Copyright 2011, Chris Coyier - http://css-tricks.com + Dave Rupert - http://daverupert.com
		* Credit to Thierry Koblentz - http://www.alistapart.com/articles/creating-intrinsic-ratios-for-video/
		* Released under the WTFPL license - http://sam.zoy.org/wtfpl/
		*
		*/

		(function( $ ){

		  $.fn.fitVids = function( options ) {
		    var settings = {
		      customSelector: null
		    }

		    if ( options ) {
		      $.extend( settings, options );
		    }

		    return this.each(function(){
		      var selectors = [
		        "iframe[src*='player.vimeo.com']",
		        "iframe[src*='www.youtube.com']",
		        "iframe[src*='www.kickstarter.com']",
		        "object",
		        "embed"
		      ];

		      if (settings.customSelector) {
		        selectors.push(settings.customSelector);
		      }

		      var $allVideos = $(this).find(selectors.join(','));

		      $allVideos.each(function(){
		        var $this = $(this);
		        if (this.tagName.toLowerCase() == 'embed' && $this.parent('object').length || $this.parent('.fluid-width-video-wrapper').length) { return; }
		        var height = ( this.tagName.toLowerCase() == 'object' || $this.attr('height') ) ? $this.attr('height') : $this.height(),
		            width = $this.attr('width') ? $this.attr('width') : $this.width(),
		            aspectRatio = height / width;
		        if(!$this.attr('id')){
		          var videoID = 'fitvid' + Math.floor(Math.random()*999999);
		          $this.attr('id', videoID);
		        }
		        $this.wrap('<div class="fluid-width-video-wrapper"></div>').parent('.fluid-width-video-wrapper').css('padding-top', (aspectRatio * 100)+"%");
		        $this.removeAttr('height').removeAttr('width');
		      });
		    });
		  }
		})( jQuery );

		if($("body").hasClass("home") || $("body").hasClass("page_external")) { /*do nothing*/ }
		else { $(".container").fitVids(); }