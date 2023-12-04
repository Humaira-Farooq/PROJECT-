<?php include('includes/conn.php'); ?>

<?php 

    extract($_REQUEST);

    //Yahan par insert ki query lagao.
    $add_date = date('Y-m-d');
    $insert_record = mysqli_query($con, "INSERT INTO temp_products(session_id, product_id, product_quantity, product_price, add_date, enabled)values('$session_id', '$product_id', '$product_quantity', '$product_price', '$add_date', '1')");

    //Select ki query lagao.
    $check_user_products = mysqli_query($con, "SELECT * FROM temp_products WHERE session_id = '$session_id' ");
    $count_user_products = mysqli_num_rows($check_user_products);

    echo $count_user_products;

    $total;
    $pro_price; 
    $price = $pro_price * $product_quantity;
    echo "Total Price: $" . $price;

?>