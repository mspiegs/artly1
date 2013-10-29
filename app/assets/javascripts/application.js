// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place
//= require art_pieces.js
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function(){
	$(".editions").hide();
	$(".prodslide").click(function() {


		var editionsection = $(this).parents("tbody").next("tbody")
		$(editionsection).slideToggle(0, function(){
			if($(editionsection).is(":visible")){
	        	$(editionsection).closest("tbody").prev().find("td.prodslide").find("a#plus").text("Hide Editions");
	        }
	        else {
	            $(editionsection).closest("tbody").prevAll().find("td.prodslide").find("a#plus").text("Show Editions");  
	        } 
		});
		
	});
});
   

//    $(".editions").hide();
//    // $(".prodslide").show();

//    $(".prodslide").click(function(){
//        $(this).parents("tbody").next("tbody").slideDown(
//          function(){
//            $("#plus").text("-")
//          }
//        );
//    },function(){
//        $(this).parents("tbody").next("tbody").slideUp(
//        function(){
//            $("#plus").text("+")
//        }
//        );
//    });
// });