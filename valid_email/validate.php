<?php
$connection = mysqli_connect("localhost", "root", "", "ajax");
/* проверка соединения */
if (mysqli_connect_errno()) {
    printf("Не удалось подключиться: %s\n", mysqli_connect_error());
    exit();
}
if(isset($_POST['email']) && $_POST['email'] != ''){
    $email = $_POST['email'];
    $email = mysqli_real_escape_string($connection,$email);
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        echo 'not-email';
    }else{
        $sql = "SELECT * FROM users WHERE email='$email'";
        $result = mysqli_query($connection,$sql);
        if(mysqli_num_rows($result) >= 1){
            echo 'invalid';
        }else{
            echo 'valid';
        }
    }
}


    if(isset($_POST['add_email']) && $_POST['add_email'] != '' && (filter_var($_POST['add_email'], FILTER_VALIDATE_EMAIL))){
//    print_r($err);exit;
        //    print_r($_POST['add_email']);exit;
        $email = mysqli_real_escape_string($connection, $_POST['add_email']);
        $sql = "INSERT INTO users (id, name, pass, email, first_name, last_name, created_at, is_block) VALUES (null, 'zzz', 'hhh', '$email', 'z', 'x', NOW(), 0)";

        if(mysqli_query($connection, $sql) === TRUE){
            echo '<font color="green">Success</font>';
        }else{
            printf("Ошибка: %s\n", mysqli_error($connection));
            echo '<font color="red">Error</font>';
        }
    }
//    elseif (($err == 'valid')) {
//        echo '<font color="red">Такой E-mail уже имеется в БД</font>';
//    }



