<?php include 'dbconfig.php';
$sql = "SELECT * FROM products";
$result = mysqli_query($conn, $sql);
//var_dump($result);	
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Esewa Payment Gateway</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	</head>
	<body>
<!--navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-success text-white">
  <a class="navbar-brand" href="#">Shikhar Store</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active ms-5">
        <a class="nav-link" href="index.php">Home <span class="sr-only"></span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="service.php">Services</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="contact.php">Contact Us</a>
      </li>
    </ul>
    <form class="form-inline my-1 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-white text-white my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<!--Container-->
       <div class="container mt-5">
			<div class="pt-md-5">
				<div class="row">
					
					<?php while( $product = mysqli_fetch_assoc($result)) {?>
					<div class="col-md-4 mt-2">
						<div class="card" stylea="width: 18rem;">
							<div class="imagecontainer" style="height: 180px;">
								<img src="image/<?php echo $product['image']?>" class="card-img-top" alt="..." style="width: 100%; height: 100%;">
							</div>
							<div class="card-body">
								<h5 class="card-title"><?php echo $product['title'];?></h5>
								<p class="card-text">Rs. <?php echo $product['amount'];?></p>
								<p class="card-text"><?php echo $product['description'];?></p>

								<form method="post" action="checkout.php">
									<input type="hidden" name="product_id" value="<?php echo $product['id'];?>">
									<input type="submit" name="submit" value="Buy Now" class="btn btn-success">
								</form>
							</div>
						</div>
					</div>
					<?php }?>
				</div>
			</div>
		</div>
<!--Footer-->
<div class="footer mt-2 text-center bg-success text-white pt-3">
<p>copyright@2023, Online Shopping Store</p>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</body>
</html>