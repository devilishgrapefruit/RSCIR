<html lang="ru">

<head>
    <title>Команды</title>
</head>

<body>
    <?php
    $com = htmlspecialchars($_GET["commands"]);
    $arrayCommands = explode(',', $com);
    require __DIR__ . '/functions/info.php';
    print_res($arrayCommands);
    ?>
</body>

</html>