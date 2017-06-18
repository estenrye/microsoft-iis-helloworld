param(
    [string]$title = $env:pagetext
)
"<html>
    <head><title>$title</title></head>
    <body>
        <h1>$title</h1>
        <a href='/'>Home</a><br>
        <a href='/hello'>Hello</a><br>
        <a href='/goodbye'>Goodbye</a>
    </body>
</html>" | Out-File C:\inetpub\wwwroot\index.html -Force