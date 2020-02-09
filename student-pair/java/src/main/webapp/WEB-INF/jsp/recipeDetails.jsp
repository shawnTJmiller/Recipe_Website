<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>

<meta name="viewport" content="width=device-width" />
<title>Recipe Detail View</title>
<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 3: Detail Views</h1>
	</header>
	<nav>
		<ul>
			<li><a href="recipeTiles">Tile Layout</a></li>
			<li><a href="recipeTable">Table Layout</a></li>
		</ul>

	</nav>

	<div id="biggest-outer-container-detail">
	
	<div>
		<img id="detail-photo"
			src="<c:url value="/img/recipe${recipe.recipeId}.jpg"/>" />
	</div>

	<div id="description">
	

	
		<div class="detail-name">${recipe.name}</div>
		<div class="detial-type">${recipe.recipeType}</div><p>
		<div class="detail-cooktime"><b>Cook Time: </b>${recipe.cookTimeInMinutes } minutes</div><p>
		<div class="detail-short-description">${recipe.description }</div>
	</div>
	
	<div id="blankSpace">
	</div>
	
	<div id= "detail-ingredients">
	<ul>
	<c:forEach var="ingredientlist" items="${recipe.ingredients}">
	
	<li>${ingredientlist.quantity} ${ingredientlist.name} </li>
	
	</c:forEach>
	</ul>
	
	</div>
	
	<div id="detail-preparation">
	<ol>
	<c:forEach var="preparationlist" items="${recipe.preparationSteps }">
	
	<li>${preparationlist }</li>
	
	</c:forEach>
	</ol>
	</div>

</div>

</body>
</html>
