<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Заказы</title>
</head>
<body>
<ol>
    <?php
    $mysqli = new mysqli("db", "root", "password", "coffeeDB");
    $result = $mysqli->query("SELECT * FROM orders");
    foreach ($result as $row){
        echo "<li>{$row['title']} {$row['sum']} {$row['address']} {$row['status']}</li>";
    }
    ?>
</ol>
<a href="index.html">На главную</a>
<br>
<a href="admin/admin.php">Администратор</a>
</body>
</html>