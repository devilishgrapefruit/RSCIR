<html lang="ru">
<head>
    <title>Рисование фигур</title>
    <style>
        body {
        background-color: #fa8e47;
        }
    </style>
</head>

<body>
    <?php
    $n = htmlspecialchars($_GET['code']);
    include __DIR__ . '/functions/decoder.php';
    include __DIR__ . '/functions/drawer.php';
    $a = decode($n);
    echo draw($a["shape"], $a["color"], $a["width"], $a["height"]);
    ?>
</body>

</html>