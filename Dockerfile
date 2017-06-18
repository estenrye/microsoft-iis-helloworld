FROM microsoft/iis
COPY ./build-Index.ps1 /
SHELL ["powershell", "-Command"]
ENTRYPOINT .\build-Index.ps1;C:\ServiceMonitor.exe w3svc 
