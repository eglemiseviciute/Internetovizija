<?php 
include('common/conection.php');


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INTERNETO VIZIJA</title>
    
    <link rel="stylesheet" href="linux.css">
</head>
<body>
    
<?php include('common/header.php') ?>
<div class="kita" >
<ul>
    <?php 

$query = 'select * from categories';
$result = mysqli_query($connection , $query) ;
while($row = mysqli_fetch_assoc($result ))
{

?>
                    <li>
                    <a href= "allproducts.php?cid=<?php echo $row['id']?>"><?php echo $row['categoryname'] ?></a>
                    </li>
                    
                    <?php }?>
                </ul>
               
</div>





<div class="all">

<?php 
$cid = $_GET['cid'];
$query = "select * from product where categoryid=$cid ";
$result = mysqli_query($connection , $query);
while($row = mysqli_fetch_assoc($result))
{
?>



<form action="buychart.php?pid=<?php echo $row['id']; ?>" method="post">


    <div class="linux" >
<div class="price" > 
    <h3> <?php echo $row['productname'] ?></h3>
    <select>
      <option><?php echo $row['productprice'] ?></option>
      <option><?php echo $row['productprice1'] ?></option>
      <option><?php echo $row['productprice2'] ?></option>
      <option><?php echo $row['productprice3'] ?></option>
      <option><?php echo $row['productprice4'] ?></option>
    </select>
    
<p><?php echo $row['fromproductprice'] ?></p>
</div>

<div class="aprasymas">
    <ul>
<li><?php echo $row['productdesceiption'] ?></li>
<li><?php echo $row['productdesceiption1'] ?></li>
<li><?php echo $row['productdesceiption2'] ?></li>
<li><?php echo $row['productdesceiption3'] ?></li>
<li><?php echo $row['productdesceiption4'] ?></li>
<li><?php echo $row['productdesceiption5'] ?></li>
<li><?php echo $row['productdesceiption6'] ?></li>
</ul>
</div>

<div class="continue" >
<!-- gali reikti perdaryt i buttona nes formoj jau parasiau kur eis viskas -->
<a href= "buychart.php?pid=<?php echo $row['id']; ?>"><input type="submit" name="add" class = "in" value="Continue"></a>

</div>
    </div>
</form>

<?php } ?>









</body>
</html>