<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width" />
<title>Recipe Table View</title>
<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 2: Models</h1>
	</header>
	<nav>
		<ul>
			<li><a href="recipeTiles">Tile Layout</a></li>
			<li><a href="recipeTable">Table Layout</a></li>
		</ul>

	</nav>
	<div id="biggest-outer-container-table">
	<h2 class="recipe-header">Recipes</h2>
	<section id="outer-container-table">
		
		<c:forEach var="recipe" items="${recipes }">
		
			<c:url var="recipeDetailsById" value="/recipeDetails?recipeId=${recipe.recipeId }"/>
			<a class="recipeImage" href="${ recipeDetailsById }">
			<img id="photo-table" src="<c:url value="/img/recipe${recipe.recipeId}.jpg"/>" /></a>
					
			</c:forEach>
		</section>
			
			
			<!-- begin grid -->
			
			<div id="inner-container-table">
		
		<div id="name1">Name</div>
		<div id="type1">Type</div>
		<div id="cooktime1">Cook Time</div>
		<div id="ingredients1">Ingredients</div>
		<div id="rating1">Rating</div>
			
			<c:forEach var="recipe" items="${recipes }">
			
					<div class="name">
						${recipe.name}
					</div>
			</c:forEach>
			<c:forEach var="recipe" items="${recipes }">		
					<div class="type">
						${recipe.recipeType}
					</div>
			</c:forEach>
			<c:forEach var="recipe" items="${recipes }">		
					<div class="cooktime">
						${recipe.cookTimeInMinutes } min
					</div>
			</c:forEach>	
			<c:forEach var="recipe" items="${recipes }">	
					<div class="ingredients">
						${recipe.ingredients.size()} ingredients
					</div>
			</c:forEach>		
			<c:forEach var="recipe" items="${recipes }">		
					<div class="rating">
						<c:forEach var="i" begin="1" end="${recipe.averageRating}">
							<span class= "fa fa-star filled"></span>
							</c:forEach>
							<c:forEach var="i" begin="${recipe.averageRating +1}" end="5">
								<span class= "fa fa-star-o"></span>
						</c:forEach>
					</div>
			</c:forEach>			
					

			
		</div>
		</div>
	
</body>
</html>