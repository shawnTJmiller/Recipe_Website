<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width" />
<title>Recipe List View</title>
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
	
	<div id="biggest-outer-container-tile">
	<h2 class="recipe-header">Recipes</h2>

	<section id="outer-container-tile">
		
		<div id="inner-container-tile">


			<c:forEach var="recipe" items="${recipes }">

				<div id="recipe-tile">

					<div>
						<c:url var="recipeDetailsById" value="/recipeDetails?recipeId=${recipe.recipeId }"/>
						<a class="recipeImage" href="${ recipeDetailsById }">
						<img id="recipe-image-tile"	src="<c:url value="/img/recipe${recipe.recipeId}.jpg"/>" />
						</a>
					</div>
					<div id="text-container-tile">
						<div id="recipe-name-tile">
							<h3>${recipe.name}</h3>
						</div>

						<div id="recipe-rating-tile">
							<c:forEach var="i" begin="1" end="${recipe.averageRating}">
								<span class= "fa fa-star filled"></span>
							</c:forEach>
							<c:forEach var="i" begin="${recipe.averageRating +1}" end="5">
								<span class= "fa fa-star-o"></span>
							</c:forEach>
						</div>
						<div id="recipe-ingredient-count-tile">
							${recipe.ingredients.size()} ingredients</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</section>
	</div>
</body>
</html>