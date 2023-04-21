<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Manik Calculator</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1>Manik Calculator</h1>
            <p>The result is <%= request.getAttribute("result") %></p>
            <p><a href="index.jsp">Calculate Again</a></p>
        </div>
    </body>
</html>
