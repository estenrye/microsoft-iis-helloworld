param(
    [string]$title = $env:pageText,
    [switch]$useCustomPath = [bool]::Parse($env:useCustomPath),
    [string]$customPath = $env:customPath
)
$html = "<html>
    <head><title>$title</title></head>
    <body>
        <h1>$title</h1>
        <a href='/'>Home</a><br>
        <a href='/hello'>Hello</a><br>
        <a href='/goodbye'>Goodbye</a>
    </body>
</html>"

if ($useCustomPath)
{
    $path = (Join-Path C:\inetpub\wwwroot $customPath)
    if (-not (Test-Path $path))
    {
        New-Item $path -ItemType Directory
    }
    $html | Out-File "$path\index.html" -Force
}
else {
    $html | Out-File C:\inetpub\wwwroot\index.html -Force
}