<?php 
include('common/conection.php');



if(isset($_POST["add"])){


    if(isset($_SESSION["shopping_cart"])){

$item_array_id = array_column($_SESSION["shopping_cart"], "item_id");

if(!in_array($_GET["pid"], $item_array_id)){

$count = count($_SESSION["shopping_chart"]);
$item_array = array(

    'item_id' => $_GET["pid"],
'item_name' => $_POST["hidden_name"],
'item_price' => $_POST["hidden_price"],
'iteam_quantity' => $_POST["quantity"]
);

$_SESSION["shopping_cart"][$count] = $item_array;
}else{

echo '<script>alert ("item added")</script>';
echo '<script>window.location = "buychart.php"</script>';
}



    }else{

        $item_array = array(

'item_id' => $_GET["pid"],
'item_name' => $_POST["hidden_name"],
'item_price' => $_POST["hidden_price"],
'item_quantity' => $_POST["quantity"]

        );
        $_SESSION["shopping_cart"][0] = $item_array;
    }
}


if(isset($_GET["action"])){

if($_GET["action"] == "delete"){

foreach($_SESSION["shopping_cart"] as $keys => $values ){

    if($values["item_id"] == $_GET["pid"]){


unset($_SESSION["shopping_cart"][$keys]);

echo '<script>alert ("item removed")</script>';
echo '<script>window.location = "buychart.php"</script>';



    }
}


}

}




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

<?php include ('common/header.php') ?>

<div class="shopchart" >
<h3>Your Shopping Chart</h3>
</div>

    <?php 
$id = $_GET['pid'];
$query = "select * from product where id=$id ";
$result = mysqli_query($connection , $query);
if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_array($result)){

?>
<form action="buychart.php?action=add&pid=<?php echo $row["id"]; ?>" method="post">
<div class="card">
    <div class="card-title">
    <h3><?php echo $row['productname'] ?></h3>

</div>



<div class="card-body">

<div class="aprasymas1">
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



<table>
    <tr>
        <td>Choose Price</td>
<td>
        <select>
      <option><?php echo $row['productprice'] ?></option>
      
    </select>
    </td>
    </tr>
</table>

<input type="text" name="quantity" class="form-control" value="1"/>

<input type="hidden" name="hidden_name" value="<?php echo $row['productname'] ?>">
<input type="hidden" name="hidden_price" value="<?php echo $row['productprice'] ?>">
<div class="continue" >

<input type="submit" name="add" class="in" value="Pay"/>

</div>
    </div>
</form>

        <?php
    }
}

?>
<h3>Order Details</h3>

<table>
    <tr>
        <th width="40%">Item Name</th>
        <th width="20%">Price</th>
        <th width="10%">Quantity</th>
        <th width="20%">Total</th>
        <th width="20%">Action</th>
    </tr>
    <?php
    if(!empty($_SESSION["shopping_cart"])){

        $total = 0;
        foreach($_SESSION["shopping_cart"] as $keys => $values){
?>
<tr>
    <td><?php echo $values["item_name"]; ?></td>
    <td><?php echo $values["item_price"]; ?></td>
    <td><?php echo $values["item_quantity"]; ?></td>
    <td><?php echo number_format( $values["item_price"] * $values["item_quantity"], 2 ); ?></td>
    <td><a href="buychart.php?action=delet&pid=<?php echo $values["item_id"]?>">remove</a></td>

</tr>
<?php

$total = $total + (($values["item_price"]) * ($values["item_quantity"]) );


        }
        ?>
        
        <?php
        
    }
    
    ?>
</table>


</body>
</html>
