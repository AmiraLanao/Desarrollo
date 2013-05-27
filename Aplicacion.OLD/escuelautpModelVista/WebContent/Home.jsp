<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Intranet UTP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Slide Down Box Menu with jQuery and CSS3" />
        <meta name="keywords" content="jquery, css3, sliding, box, menu, cube, navigation, portfolio, thumbnails"/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="css/Principal.css" type="text/css" media="screen"/>
        
        <!-- Menu Vertical -->
        <link rel="stylesheet" type="text/css" href="css/principalVertical1.css" />
        <link rel="stylesheet" type="text/css" href="css/principalVertical2.css" />
        <!-- Fin Menu Vertical -->
        <style>
        #apDiv1 {
	            position: absolute;
	            left: 13px;
	            top: 7px;
	            width: 1102px;
	            height: 84px;
	            z-index: 1;
                }
                #apDiv2 {
	            position: absolute;
	            left: 218px;
	            top: 104px;
	            width: 659px;
	            height: 32px;
	            z-index: 2;
                }
			 body{
				background: url(images/imagenDisenio/back.jpg) repeat top left;
				font-family:Arial;
			} 
			span.reference{
				position:fixed;
				left:10px;
				bottom:10px;
				font-size:12px;
			}
			span.reference a{
				color:#FF0000;
				text-transform:uppercase;
				text-decoration:none;
				text-shadow:1px 1px 1px #000;
				margin-right:30px;
			}
			span.reference a:hover{
				color:#FF0000;
			}
			ul.sdt_menu{
				margin-top:150px;
			}
			h1.title{
				text-indent:-9000px;
				background:transparent url(title.png) no-repeat top left;
				width:633px;
				height:69px;
			}
		</style>
    </head>

    <body>
    <!-- Imagenes De Cabecera -->
    <div id="apDiv1">
    <div align="center"><img src="images/logo.png" width="240" height="109" alt="logo"><img src="images/encabezado.jpg" width="738" height="85" alt="cb"></div>
    </div>
    <div id="apDiv2"><img src="images/imagenDisenio/SIA.png" width="666" height="70" alt="SIA"></div>
    <!-- Fin imagenes Cabecera -->     
         
         <!--Codigo Menu Horizontal  -->
         <br>
        
        
		<div class="content1">
			<!--<h1 class="title">Slide Down Box Menu with jQuery and CSS3</h1>-->
			<ul id="sdt_menu" class="sdt_menu">
				
				<li>
					<a href="Home.jsp">
						<img src="images/imagenPrincipal/1.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Home</span>
							<span class="sdt_descr">Pagina de Inicio</span>
						</span>
					</a>
					
				</li>
				<li>
					<a href="Dacademico.jsp">
						<img src="images/imagenPrincipal/3.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Academico</span>
							<span class="sdt_descr">ver Datos Academicos</span>
						</span>
					</a>
				</li>
				<li>
					<a href="Dservicio.jsp">
						<img src="images/imagenPrincipal/4.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Servicios</span>
							<span class="sdt_descr">Ver Servicios</span>
						</span>
					</a>
				</li>
				
				<li>
					<a href="Dadministrativo.jsp">
						<img src="images/imagenPrincipal/6.jpg" alt=""/>
						<span class="sdt_active"></span>
						<span class="sdt_wrap">
							<span class="sdt_link">Administrativo</span>
							<span class="sdt_descr">Ver Datos Administrativos</span>
						</span>
					</a>
			
				</li>
			</ul>
			
			
		
		</div>
		 
		<!-- Fin Menu Horizontal -->
		

<!-- Inicio Menu Vertical -->

<div class="container">
            
<div class="header">
 
<!--  <div class="clr"></div>-->
            
</div>
            
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br> 
<br>
<br> 
<br>

        
<div class="content">
                
<ul class="bmenu">
                    


<li><a href="#">Mision</a></li>
                    
<li><a href="#">Vision</a></li>
                    

</ul>
                
</div>
        
</div>

<br>
<br>
<br> 
<br>

<div id=pie>

<Center>Copri@2013 UTP</Center>

</div>
 <!-- Fin Menu Vertical -->       

        
         <!-- The JavaScript -->
         <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>     
         <!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script> -->
		<script type="text/javascript" src="js/jsprincipal/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
				/**
				* for each menu element, on mouseenter, 
				* we enlarge the image, and show both sdt_active span and 
				* sdt_wrap span. If the element has a sub menu (sdt_box),
				* then we slide it - if the element is the last one in the menu
				* we slide it to the left, otherwise to the right
				*/
                $('#sdt_menu > li').bind('mouseenter',function(){
					var $elem = $(this);
					$elem.find('img')
						 .stop(true)
						 .animate({
							'width':'170px',
							'height':'170px',
							'left':'0px'
						 },400,'easeOutBack')
						 .andSelf()
						 .find('.sdt_wrap')
					     .stop(true)
						 .animate({'top':'140px'},500,'easeOutBack')
						 .andSelf()
						 .find('.sdt_active')
					     .stop(true)
						 .animate({'height':'170px'},300,function(){
						var $sub_menu = $elem.find('.sdt_box');
						if($sub_menu.length){
							var left = '170px';
							if($elem.parent().children().length == $elem.index()+1)
								left = '-170px';
							$sub_menu.show().animate({'left':left},200);
						}	
					});
				}).bind('mouseleave',function(){
					var $elem = $(this);
					var $sub_menu = $elem.find('.sdt_box');
					if($sub_menu.length)
						$sub_menu.hide().css('left','0px');
					
					$elem.find('.sdt_active')
						 .stop(true)
						 .animate({'height':'0px'},300)
						 .andSelf().find('img')
						 .stop(true)
						 .animate({
							'width':'0px',
							'height':'0px',
							'left':'85px'},400)
						 .andSelf()
						 .find('.sdt_wrap')
						 .stop(true)
						 .animate({'top':'25px'},500);
				});
            });
        </script>
		
        
       
    </body>
</html>