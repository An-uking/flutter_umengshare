# flutter_umengshare

友盟分享插件 for Flutter

因本人没有相应的平台的appkey所以以前测试的时候用的是友盟官方demo文档里的appkey,能调出相应的app但分享不了，因为要校验。
使用者如发现有不对的地方修改后提交到本库

## 说明：
目前当前库添加了常用的微博、qq、微信这个几个库
因为要配置很多参数，我没有另写加载函数去实现，所以这个库不好发pub上，也方便你们自己扩展其他分享和登陆的第三方库，如 facebook、twitter等可自己到友盟去下载相应的包加入到其中.

## 如何集成到我的flutter项目中？
在项目根目录下建一个plugin目录 下载此库到该目录中去

在包管理文件pubspec.yaml中添加如下：

```
dev_dependencies:
  umengshare:
    path: ./plugin/flutter_umengshare 
```

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
## 4.扩展其他第三方分享和登陆库

到友盟官方去下载相应包到根目libs下

1.修改/android/src/main/java/cn/ugle/flutter/umengshage/UmengsharePlugin.java

2.修改umengshare.dart文件

增加相应的分享类型和登陆类型的枚举

# IOS 配置 （参考友盟官方文档）
## 1.平台配置

看文档 https://developer.umeng.com/docs/66632/detail/66825#h2-u7B2Cu4E09u65B9u5E73u53F0u914Du7F6E3

1.配置SSO白名单

2.配置URL Scheme

3.权限配置

## 2.初始化设置

初始化U-Share及第三方平台

修改 ios/classes/UmengsharePlugin.m 中的setupUSharePlatforms函数里的appkey

## 3.扩展其他第三方分享和登陆库

Cocoapods集成

https://developer.umeng.com/docs/66632/detail/67204#h2--sdk4

去友盟官网文档中找到相应的第三方库 添加到 /ios/umengshare.podspec中去

1.修改ios/classes/UmengsharePlugin.m

2.修改umengshare.dart文件

增加相应的分享类型和登陆类型的枚举

# 相应函数
在lib/umengshare里写得很详细了
### 分享文本
```UMengShare.shareText(UMSharePlatform platform,String text)```
### 分享图片
```UMengShare.shareImage(UMSharePlatform platform,String thumb,String image)```
### 分享媒体
```UMengShare.shareMedia(UMSharePlatform platform,UMShareMediaType type,String title,String desc,String thumb,String link)```
### 分享小程序（只能分享给微信好友）
```UMengShare.shareMiniApp(String username,String title,String desc,String thumb,String url,String path)```
### 第三方登录
```UMengShare.login(UMPlatform platform)```
### 检测是否安装应用
```UMengShare.checkInstall(UMPlatform platform)```

