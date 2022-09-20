<?php
    function print_res($commands) {
        foreach ($commands as $command) {
            print_r('Результат выполнения команды ' . $command . '<br>');
            exec($command, $result);
            foreach ($result as $i) {
                print_r($i . '<br>');
            }
        }
    }
    ?>