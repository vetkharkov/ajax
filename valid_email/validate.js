$(document).ready(function () {
    $("#submit").prop("disabled", true);
    var email = '';

    $('#email').keyup(function () {
        var value = $(this).val();

        $.ajax({
            type: 'POST',
            url: 'ajax/valid_email/validate.php',
            data: 'email=' + value,
            success: function (msg) {
                // alert(msg);
                if (msg == 'not-email') {
                    $('#message').html('<font color="blue">Это не похоже на Email.</font>');
                    $("#submit").prop("disabled", true);
                }

                if (msg == 'valid') {
                    $('#message').html('<font color="green">Этот Email можно использовать.</font>');
                    $("#submit").prop("disabled", false);
                    email = value;
                }

                if (msg == 'invalid') {
                    $('#message').html('<font color="red">Этот Email уже занят.</font>');
                    $("#submit").prop("disabled", false);
                }
            }
        });
    });

    $('#submit').click(function () {
        email = $('#email').val();
        // // alert(email);
        if (email == '') {
            alert('Please, put data to all email');
        } else {
            $.ajax({
                type: 'POST',
                url: 'ajax/valid_email/validate.php',
                data: 'add_email=' + email,
                success: function (msg) {
                    $('#message').html(msg);
                }
            });
        }
    });

});