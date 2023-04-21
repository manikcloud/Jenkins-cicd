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
            <form action="calculate" method="post">
                <div class="row">
                    <label for="num1">Number 1:</label>
                    <input type="text" id="num1" name="num1">
                </div>
                <div class="row">
                    <label for="num2">Number 2:</label>
                    <input type="text" id="num2" name="num2">
                </div>
                <div class="row">
                    <button type="submit" name="operation" value="add">Add</button>
                    <button type="submit" name="operation" value="subtract">Subtract</button>
                    <button type="submit" name="operation" value="multiply">Multiply</button>
                    <button type="submit" name="operation" value="divide">Divide</button>
                </div>
            </form>
        </div>
    </body>
</html>
