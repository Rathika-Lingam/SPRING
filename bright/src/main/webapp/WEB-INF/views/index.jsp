<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>




 <div class="container">
	<div class="row">
		
    	

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
				<img src="resources/images/c1.jpg" alt="Chania" />
				<!-- class="img-responsive" style="width=800px; height=400" -->
			</div>

			<div class="item">
				<img src="resources/images/c.jpeg" alt="Chania" 
				class="img-responsive" style="width=5000px; height=400"/>
			</div>

			<div class="item">
				<img src="resources/images/car2.gif" alt="Flower" 
				class="img-responsive" style="width=5000px; height=400"/>
			</div>

			<div class="item">
				<img src="resources/images/car3.gif" alt="Flower" 
				class="img-responsive" style="width=5000px; height=400"/>
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
 



<div class="row">
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
					src="resources/images/gif.gif" alt="Mountains" width="600"
					height="400">
				</a>
	
 </div>
</div>
 
	<div class="col-sm-6">
 		<a herf="" class="thumbnail"> <iframe width="640" height="350"
				src="https://www.youtube.com/embed/RCwmrFD0lgw" frameborder="0" 	allowfullscreen
			></iframe>
		</a>
	</div>
	
	</div>
		

 <!-- <div class="container text-center">
	<h2>Gallery</h2>
	<div class="row">
 -->

<%-- <div class="col-sm-4">
		
			<div class="img">
			  <c:forEach items="${categoryList}" var="user">
        
        <li><a href="#">${user.categoryname}</a></li>
      
				<a target="_blank" href="resources/images/r2.jpg">
				 <img src="resources/images/r2.jpg" alt="Forest" width="600" height="400">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
</c:forEach>
</div>
</div>
		
 --%>	</div>
<!-- <div class="col-sm-4">
					<div class="img">
				<a target="_blank" href="resources/images/led.jpg"> <img
					src="resources/images/led.jpg" alt="Northern Lights" width="600"
					height="400">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
		</div>


		<div class="col-sm-4">
			<div class="img">
				<a target="_blank" href="resources/images/r3.jpg"> <img
					src="resources/images/r3.jpg" alt="Mountains" width="600"
					height="400">
				</a>
				<div class="desc">Add a description of the image here</div>
			</div>
		</div>

	</div>
</div>
 -->






<a href="admin/admin">click here</a>

<a href="category" >click here for cat</a>



<%@include file="footer.jsp"%>





