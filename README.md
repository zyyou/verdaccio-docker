## NPM私有仓Docker镜像
解决官方镜像不能自定义挂载storage，支持alinode监控

## 修改配置
```
// 监控配置 app-config.json
{
    appid:''
    secret''
}

// 新包通知 app.yaml 最后 notify 节点

// http_proxy、listen等
```

## 制作镜像
```
docker build . -t verdaccio
```

## 启动
```
docker run -it --name verdaccio -h verdaccio -p 4873:4873 -v /hy/verdaccio:/root/.config/verdaccio -v /hy:/hy verdaccio
```