<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Error</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1>Error</h1>
            <p><%= request.getAttribute("message") %></p>
            <p><a href="index.jsp">Calculate Again</a></p>
        </div>
    </body>
</html>
