/*Show/Hide*/
$(document).ready(function(){
  $(".flipBtn").click(function(){
    $(this).next(".flip").slideToggle("slow");
  });
});

/*Sticky navbar onScroll*/
$(function() {
    //caches a jQuery object containing the header element
    var header = $(".navbar");
    $(window).scroll(function() {
        var scroll = $(window).scrollTop();

        if (scroll <= 100) {
            header.removeClass("navbar-scroll fixed-top");
        } else {
            header.addClass("navbar-scroll fixed-top");
        }
    });
});

/*Cookies popup*/
window.addEventListener("load", function(){
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#5bc4cb",
      "text": "#ffffff"
    },
    "button": {
      "background": "#6fcbd1",
      "text": "#ffffff"
    }
  },
  "content": {
    "message": "Tento web používá k poskytování služeb a analýze návštěvnosti soubory cookie. Používáním tohoto webu souhlasíte s podmínkami používání souborů cookie.",
    "dismiss": "Souhlasím",
    "link": "Více informací",
    "href": "https://policies.google.com/technologies/cookies?hl=cs"
  }
})});
