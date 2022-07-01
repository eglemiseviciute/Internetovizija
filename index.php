<?php include('common/conection.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INTERNETO VIZIJA</title>

   
    <link rel="stylesheet" href="mystyle.css">
</head>

<body>
    
    <?php include ('common/header.php') ?>
<div class="offers" >
    <h3>Check our amazing offers</h3>
</div>



<div class="container">
    <div class="grid-container" >
    <?php 

$query = 'select * from categories';
$result = mysqli_query($connection , $query) ;
while($row = mysqli_fetch_assoc($result ))
{

?>
<div class="grid-item">
<div>
<h3><?php echo $row['categoryname'] ?></h3>
<p><?php echo $row['price'] ?></p>
</div>
<div class="bo">
<a href= "allproducts.php?cid=<?php echo $row['id']?>">Select</a>
</div>
</div>

    <?php }?>
    </div>
    </div>
    

</div>




    </body>
    </html>