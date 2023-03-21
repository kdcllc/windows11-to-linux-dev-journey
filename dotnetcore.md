# DotNetCore development on Ubuntu

While running tests I can into the following error:

`System.IO.IOException: The configured user limit (128) on the number of inotify instances has been reached.`

```bash
    echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

<https://github.com/dotnet/aspnetcore/issues/8449#issuecomment-512275929>
