//carousel
var slideIndex = 1;

//increment slide index
function plusSlides(n) {
    showSlides(slideIndex += n);
}

//show current slide index
function currentSlide(n) {
    showSlides(slideIndex = n);
}

//display the slide at specified index
function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}


var isSingleColumn = false;

//switch to single column page on resize
function detectViewPort() {
    //get screen size
    var width = window.innerWidth
        || document.documentElement.clientWidth
        || document.body.clientWidth;

    //check for smaller screen size and if already in single column
    //check for if single colum to prevent it from changing from sort by latest to sort by popular due to resize
    if (width <= 990 && !isSingleColumn) {
        //hide latest column

        showPopular();
        isSingleColumn = true;

    } else if(width>990){
        //show both columns

        document.getElementById("latest").style.display = 'block';
        document.getElementById("popular").style.display = 'block';

        isSingleColumn = false;
    }
}


//hide popular and show latest
function showLatest() {
    document.getElementById("latest").style.display = 'block';
    document.getElementById("popular").style.display = 'none';
}


//hide latest and show popular
function showPopular() {
    document.getElementById("popular").style.display = 'block';
    document.getElementById("latest").style.display = 'none';
}

window.onload = function () {
    showSlides(slideIndex);
    detectViewPort();
}

window.onresize = function () {
    detectViewPort();
}



