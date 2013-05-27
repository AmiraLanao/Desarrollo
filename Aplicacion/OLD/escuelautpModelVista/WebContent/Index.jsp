<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	
<head>
		
<meta charset="UTF-8" />
		
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	
<title>Intranet UTP</title>
<meta name="description" content="Thumbnail Grid with Expanding Preview" />
	
<meta name="keywords" content="thumbnails, grid, preview, google image search, jquery, image grid, expanding, preview, portfolio" />
	
<meta name="author" content="Codrops" />
		
<link rel="shortcut icon" href="../favicon.ico"> 
	
<link rel="stylesheet" type="text/css" href="css/Indexdefault.css" />
		
<link rel="stylesheet" type="text/css" href="css/Indexcomponent.css" />
		
<script src="js/modernizr.custom.js"></script>
	
</head>


<body>
		
<div class="container">	

<!-- Codrops top bar -->
			
<div class="codrops-top clearfix">
				

				
<span class="right">
					
<a href="http://outlook.com/utp.edu.pe">Correo de Estudiante</a>
					

				
</span>
			
</div><!--/ Codrops top bar -->
			
<header class="clearfix">
				
<h1>Universidad Tecnologica Del Peru <span>Tecnologia de Portales</span></h1>
</header>
			
<div class="main">
				
<ul id="og-grid" class="og-grid">
					
<li>
						
<a href=Login.jsp data-largesrc="images/1.jpg" data-title="Portal De Alumnos" data-description="En este Portal Los Aalumnos Podran revisar todos sus datos academincos respectivos">
							
<img src="images/imagenIndex/thumbs/1.jpg" alt="img01"/>
						
</a>
					
</li>
					
<li>
						
<a href="http://cargocollective.com/jaimemartinez/" data-largesrc="images/2.jpg" data-title="Portal de Padres" data-description="En Construccion">
							
<img src="images/imagenIndex/thumbs/2.jpg" alt="img02"/>
						
</a>
					
</li>
					
<li>
						
<a href="http://cargocollective.com/jaimemartinez/" data-largesrc="images/3.jpg" data-title="Portal Docente" data-description="Enconstruccion">
							
<img src="images/imagenIndex/thumbs/3.jpg" alt="img03"/>
						
</a>
					
				
				
				
				
</ul>
				
<p>UTP@2013<a href="http://www.utp.edu.pe/">UTP</a></p>
		
</div>
		
</div><!-- /container -->
		
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		
<script src="js/grid.js"></script>
		
<script>
			
$(function() {
				
Grid.init();
			
});
		
</script>

	
</body>


</html>