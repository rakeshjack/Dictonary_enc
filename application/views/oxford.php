<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <h2>Login</h2>
                    <form method="post" action="<?php echo base_url(); ?>welcome/password">
                        <!--                <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                                        </div>-->
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" onkeyup="oxford()">
                            <span id="volunter" style="display:none;"></span>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
            </div>
    </body>
</html>
<script>
    function oxford() {
        var password = $('#pwd').val();
        $.ajax({
            type: "POST",
            url: "wordbyword",
            data: { pwd : password},
            success: function (data) {
                $('#volunter').css('display','block');
                if(data!='0') {
                    $('#pwd').css('border-color','red');
                    $('#volunter').css('color','red');
                    $('#volunter').text('Not acceptable');
                } else {
                    $('#pwd').css('border-color','green');
                    $('#volunter').css('color','green');
                    $('#volunter').text('Good');
                }
            }
        });
    }
</script>