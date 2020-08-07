/*! Search Start */
$( document ).ready(function() {
    $('[data-toggle=search-form]').click(function() {
        $('.search-form-wrapper').toggleClass('open');
        $('.search-form-wrapper .search').focus();
        $('html').toggleClass('search-form-open');
    });
    $('[data-toggle=search-form-close]').click(function() {
        $('.search-form-wrapper').removeClass('open');
        $('html').removeClass('search-form-open');
    });
    $('.search-form-wrapper .search').keypress(function( event ) {
        if($(this).val() == "Search") $(this).val("");
    });

    $('.search-close').click(function(event) {
        $('.search-form-wrapper').removeClass('open');
        $('html').removeClass('search-form-open');
    });
});
/*! Search End */
/*! Filter Start*/
filterSelection("all");
function filterSelection(c) {
    var x, i;
    x = document.getElementsByClassName("card-columns");
    if (c == "all") c = " ";
    for (i = 0; i < x.length; i++) {
        w3RemoveClass(x[i], "show");
        if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
    }
}

function w3AddClass(element, name) {
    var i, arr1, arr2;
    arr1 = element.className.split(" ");
    arr2 = element.split(" ");
    for (i=0;i<arr2.length;i++) {
        if (arr1.indexOf(arr2[i]) == -1) {
            element.className += " " + arr2[i];
        }
    }
}

function w3RemoveClass(element,name) {
    var i, arr1, arr2;
    arr1 = element.className.split(" ");
    arr2 = name.split(" ");
    for (i = 0; i < arr2.length; i++) {
        while (arr1.indexOf(arr2[i]>-1)) {
            arr1.splice(arr1.indexOf(arr2[i]), 1);
        }
    }
    element.className = arr1.join(" ");
}

var btnContainer = document.getElementById("");
var btns = btnContainer.getElementsByClassName("btn");
for (i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function() {
        var current = document.getElementsByClassName("active");
        current[0].className = current[0].className.replace(" active", "");
        this.className += " active";
    });
}
 