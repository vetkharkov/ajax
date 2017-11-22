<!DOCTYPE html>
<html lang='ru'>
<head>
    <title>Использование метода load()</title>
    <meta charset='utf-8'>
    <script type="text/javascript" src="ajax/jquery.js"></script>
    <script type="text/javascript">
        // Назначить обработчики события click
        // после загрузки документа
        // Передача методом GET 'x=55&y=7&z=test'
        // Передача методом POST {limit: 25}
        $(function () {
            $("#id").on("click", function () {
                $('#info').load("ajax/load/time.php",
                    {
                        'choices[]': ["Jon", "Susan"],
                        limit: 25,
                        varible: 'testvar'
                    },
                    function (data) {
                        alert('Функция js отработала' + data);
                    });
            })
        });
    </script>
</head>
<body>
<!--<div>-->
<!--    <a href='#' id='id'>Получить время</a>-->
<!--</div>-->
<p id='id'>Получить время</p>
<div id='info'></div>
</body>
</html>
