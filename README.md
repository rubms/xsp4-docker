# XSP4

Docker image containing mono and the XSP4 ASP.NET web server. The tags match the original mono version from which this image was created.

This Docker image will run whatever application is installed in the `/app` directory, in the 80 port. 

In order to install your application you can either map a volume into the `/app` directory:

```bash
docker run -p 8080:80 -v <path to my web app>:/app hpgy/mono-xsp4 
```

or create you own image via a Dockerfile, based on this image:

```Dockerfile
FROM    rubms/xsp4:latest
ADD     ./bin/ /app/bin
ADD     ./*.config /app/
ADD     ./*.asax /app/
ADD     ./wsdl /app/wsdl
ADD     ./*.asmx /app/
```
