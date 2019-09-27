<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.initial{
	display:none;
	}
    * {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}
p{color:#fffff6;
  font-size:20px;
  margin-left:40%}
  
h1{
background: #c0c0aa;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #1cefff, #c0c0aa);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #1cefff, #c0c0aa); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
font-family:sans-serif;
font-size:40px;
text-align:center;
}
/* Slideshow container */
.slideshow-container {
  width: 100%;
  height:600px;
  font-size: 30px;
    margin-left: 40%;
  position: relative;
  margin: auto;
  background:url('/img/row-light-bulbs-with-bright-one_79603-617.jpg');
   border-radius: 8px;
  background-repeat: no-repeat;
  background-size:cover;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
.box {
  margin-left:100px;
  text-align:center;
  width: 70%;
  padding: 50px;
  margin: 2px;
}
/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 0.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
  <body>
	<div class="slideshow-container">
	      
          <c:forEach var="event" items="${events}">
            <div class="mySlides fade">
              <h1>${event.name}</h1>
			  <p>Start Date:${event.startDate}</p>
			  <p>End Date:${event.endDate}</p>
			  <p>Time:${event.time}</p>
			  <p>Description:${event.description}</p>
              <button type="submit" value="${event.id}" onclick="register(this.id)">Register Now:-</button>	
              
         </div>   
	     </c:forEach> 
	     <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
         <a class="next" onclick="plusSlides(1)">&#10095;</a>
	     
	 
	          <div id="register" class="initial">
                     
                        <form action="register-event" method="post">
                            <input type="hidden" name="id" id="eventId"/>
                            <i style="font-color:white;">What you want to do in ${event.name}</i>
                            <input type="text" name="action" required/>
                            <input type="submit" value="Register"/>
                       </form>
             </div>	
	   </div>
	  <div style="text-align:center"><%int i=1;%>
	  <c:forEach var="event" items="${events}">
	    <%i++;%>
         <span class="dot" onclick="currentSlide(<%=i%>)"></span> 
      </c:forEach>
   </div>
	  
<script>
function register(id){
	  document.getElementById("eventId").value=id;
		  document.getElementById("register").style.display="block";

}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
		    
                
  </body>
</html>