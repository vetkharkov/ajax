<!DOCTYPE html>
<html>
<title>AJAX Tutorial</title>
<link rel="stylesheet" href="ajax/valid_email/list.css">
<script type="text/javascript" src="ajax/jquery.js"></script>
<script src="ajax/valid_email/validate.js"></script>
<body>
<p>Проверка E-mail в базе users</p>
<p>И регистрация нового E-mail</p>

<form method="post" action="">
    <p>
        <input type="email" name="email" id="email" placeholder="Enter email">
        <span id="message"></span>
    </p>

    <input type="button" id="submit" value="Register">
</form>

<div id="list">
    <h2>БД users</h2>
    <?php require_once "get_db.php" ?>
</div>
</body>
</html>