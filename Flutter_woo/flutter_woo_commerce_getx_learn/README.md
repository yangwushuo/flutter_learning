# flutter_woo_commerce_getx_learn

1. 确保系统环境

    ```bash
    sdk: ">=2.19.0 <3.0.0"
    flutter: ">=3.7.0"
    ```

2. 安装相关依赖 

    ```bash
    flutter pub get
    ```

3. 生成文档

   执行命令，安装 `dartdoc`

   ```bash
   dart pub global activate dartdoc
   ```

   执行命令，生成文档到 `doc/api` 目录

   ```bash
   dart pub global run dartdoc
   ```

    执行命令，安装 `dhttpd`

    ```bash
    dart pub global activate dhttpd
    ```

    执行命令，运行 `dhttpd`

    ```bash
    dhttpd --path doc/api
    ```

4. 创建图标/启动图

   ```bash
   flutter pub run flutter_native_splash:create
   flutter pub run flutter_launcher_icons -f pubspec.yaml
   ```

   

