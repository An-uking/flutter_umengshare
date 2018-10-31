# flutter_umengshare

友盟分享插件 for Flutter

## 说明：
目前当前库添加了微博、qq、微信这个几个库
因为要配置很多参数，我没有另写加载函数，也方便你们自己扩展其他分享和登陆的第三方库，如 facebook、twitter等可自己到友盟去下载相应的包加入到其中.


# android 配置 （参考友盟官方文档）
## 1.集成准备
https://developer.umeng.com/docs/66632/detail/66639#h1-u96C6u6210u51C6u59073
## 2.配置android AndroidManifest.xml
注：该文件在本插件路径 /android/src/main/AndroidManifest.xml
只需要改qq的appkey
```
<data android:scheme="tencent100424468" />
```
https://developer.umeng.com/docs/66632/detail/66639#h3--android-manifest-xml
## 3.初始化设置
修改文件 /android/src/main/java/cn/ugle/flutter/umengshage/UmengsharePlugin.java中的appkey
## 4.扩展其第三方库下载相应包到根目libs下

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).
