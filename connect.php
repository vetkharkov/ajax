<?php ## Соединение с базой данных
  try {
    $pdo = new PDO(
      'mysql:host=localhost;dbname=ajax',
      'root',
      '',
      [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
  }
  catch (PDOException $e) {
    echo "Невозможно установить соединение с базой данных";
  }
?>