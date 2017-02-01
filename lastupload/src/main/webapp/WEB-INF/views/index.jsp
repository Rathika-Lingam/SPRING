<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<script src="resources/js/js.txt"></script>

<style>

.mag {
    width:200px;
    margin: 0 auto;
    float: none;
}
    
.mag img {
    max-width: 100%;
}
        
  

.magnify {
    position: relative;
    cursor: none
}

.magnify-large {
    position: absolute;
    display: none;
    width: 175px;
    height: 175px;

    -webkit-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
       -moz-box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
            box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 0 0 7px 7px rgba(0, 0, 0, 0.25), inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
    
    -webkit-border-radius: 100%;
       -moz-border-radius: 100%;
             border-radius: 100%
}
</style>


 <!--  <div class="container">
	<div class="row"> -->
 		
    	

 <div class="col-6"> 
	<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
				
			    	

		<div class="carousel-inner">
			<div class="item active">
				<img src="resources/images/car2.gif" alt="Chania" />
				<!-- class="img-responsive" style="width=800px; height=400" -->
			</div>

			<div class="item">
				<img src="resources/images/c.jpeg" alt="Chania" 
				class="img-responsive" style="width=954px; height=263px"/>
			</div>

			<div class="item">
				<img src="resources/images/c1.jpg" alt="Flower" 
				class="img-responsive" style="width=954px; height=263px"/>
			</div>

			<div class="item">
				<img src="resources/images/car3.gif" alt="Flower" 
				style="width=954px; height=263px"/>
			</div>
		</div>


		<a class="left carousel-control" href="#myCarousel"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>
 



<!-- <div class="row"> -->
<h1>

<marquee bgcolor="">

		WELCOME TO DAZZLE WORLD!</marquee>
			</h1>
<hr>
</div>

	


  <div class="container">  
<div class="col-sm-4">
			<div class="img">
				<a target="_blank" href="resources/images/r3.jpg"> <img
					src="resources/images/gif.gif" alt="Mountains" width="200"
					height="50">
				</a>
	
 </div>
</div>
 
	<div class="col-sm-4">
 		<a href="#" > <iframe width="300" height="250"
				src="https://www.youtube.com/embed/RCwmrFD0lgw" ><!-- frameborder="0" 	allowfullscreen -->
			</iframe>
		</a>
	</div>
	
	
	

<div class="col-sm-4">
			<div class="img">
				<div class="font-effect-wallpaper" class="col-md-12 col-xs-12" style="color:#8B3A62">
			<h4><b>Buy Lights For Ur Charming Life From Our DazzleWorld</b></h4>
				<a target="_blank" href="resources/images/r3.jpg"> <img
					src="resources/images/logo.gif" alt="Mountains" width="600"
					height="500">
				</a>
	
 </div>
	
	</div>
	</div>
	</div>
	<hr>	
	


 
 <center>
			<h1>Gallery</h1>
		</center>
		
 

    <div class="row">
    
        <div class="col-md-4">
       
        
            <div class="mag"> <h3><i>Chandliers</i></h3>
             <br><a href="<c:url value="allproduct?val=Chandliers" />">
                <img data-toggle="magnify" src="<c:url value="/resources/images/galler.jpg"/>"  alt="">
        </a>    </div>
            
             <h4><center>Our Chandeliers decorate</h4>
              <h4>the most prestigious buildings in the world</center></h4>
        </div>
      
       <!--/span-->
        
        
        <div class="col-md-4">
       
            <div class="mag"> <h3><i>Pendents</i></h3>
                <br><a href="<c:url value="allproduct?val=Pendents"/>">
                <img data-toggle="magnify" src="<c:url value="/resources/images/gal2.jpg"/>" alt=""> </a></div>
            
           <h4><center>Finest Quality Pendents</center></h4>
        </div><!--/span-->
        
        <div class="col-md-4">
            <div class="mag"><h3><i>Flush Mount</i></h3>
            
            <br><a href="<c:url value="allproduct?val=Flush Mount" />">
                <img data-toggle="magnify" src="<c:url value="/resources/images/flu1.jpg"/>" alt="">
               </a>
                </div><h4>
                <center>Enjoy With Illuminative Flush Mount</center></h4>
            </div></div>
        <!--/span-->
 

   


 <a href="payment" >click here for pay</a>

<!-- <a href="productdetails" >click here for pro</a> -->







<%@include file="footer.jsp" %>