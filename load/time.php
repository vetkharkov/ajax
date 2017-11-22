<?php ## Серверное время
echo 'Серверное время: ' . date("d.m.Y H:i:s");
echo '<br>Передача параметров GET ';
echo '<pre>';
print_r($_GET);
echo '</pre>';

echo '<br>Передача параметров POST ';
echo '<pre>';
print_r($_POST);
echo '</pre>';
