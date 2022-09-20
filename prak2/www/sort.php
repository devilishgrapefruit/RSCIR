<html lang="ru">

<head>
    <title>Сортировка выбором</title>
</head>

<body>
    <?php
    $arrayString = htmlspecialchars($_GET["array"]);
    $array = array_map(null, explode(',', $arrayString));
    include __DIR__ . '/functions/sort.php';
    print_r(selectionSort($array));
    ?>
</body>

</html>
