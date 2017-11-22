<!DOCTYPE html>
<html lang='ru'>
<head>
    <title>Двойной выпадающий список</title>
    <meta charset='utf-8'>
    <script type="text/javascript" src="ajax/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#fst").on("change", function () {
                // AJAX-запрос
                $.ajax({
                    url: "ajax/catalog/select.php?id=" + $('#fst').val(),
                    success: function(data) {
//                        alert(data);
                        $('#snd').html(data);
                        $("#snd").prop("disabled", false);
                    }
                });
//                    .done(function (data) {
//                        $('#snd').html(data);
//                        $("#snd").prop("disabled", false);
//                    });
            });

            $("#snd").on("change", function () {
                // AJAX-запрос
                $.ajax({
                    url: "ajax/catalog/snd.php",
                    type: 'POST',
                    data: 'snd=' + $('#fst option:selected').text() +
                    ' / ' + $('#snd option:selected').text(),
                    success: function(data) {
//                        alert(data);
                        $('#result').html(data);
//                        $("#snd").prop("disabled", false);
                    }
                });
            });
        });

    </script>
</head>
<body>
<?php
// Устанавливаем соединение с базой данных
require_once("connect.php");
// Формируем выпадающий список корневых разделов
$query = "SELECT * FROM catalogs
              WHERE parent_id = 0 AND is_active = 1
              ORDER BY pos";
echo "<select id='fst'>";
echo "<option value='0'>Выберите раздел</option>";
$com = $pdo->query($query);
while ($catalog = $com->fetch()) {
    echo "<option value='{$catalog['id']}'>{$catalog['name']}</option>";
}
echo "</select>";
?>
<select id='snd' disabled='disabled'>
    <option value='0'>Выберите подраздел</option>
</select>
<h1 id="result">Выбраный раздел:</h1>
</body>
</html>