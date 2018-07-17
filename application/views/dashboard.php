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
                    <h2><?php echo $parent[0]->password; ?></h2>
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Password</th>
                                <th>status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($result as $r) { ?>
                            <tr>
                                <td><?php echo $r->id; ?></td>
                                <td><?php echo $r->password; ?></td>
                                <td><button class="btn btn-xs <?php echo ($r->status=="FAILED") ? "btn-danger" : "btn-success" ?>" disabled><?php echo $r->status; ?></button></td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
    </body>
</html>