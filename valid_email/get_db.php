<?php
// Устанавливаем соединение с базой данных
require_once("connect.php");

$query = "SELECT * FROM users
                  ORDER BY name";
$usr = $pdo->query($query);

try {
    echo "<div class='jumbotron'>";
    while($user = $usr->fetch()) {
        echo "<div>".
            "Имя: ".
            htmlspecialchars($user['name'])." E-mail: ".
            $user['email'].
            "</div>";
    }
    echo "</div>";
} catch (PDOException $e) {
    echo "Ошибка выполнения запроса: " . $e->getMessage();
}