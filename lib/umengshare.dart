import 'dart:async';

import 'package:flutter/services.dart';
///支持分享平台
///
///Sina 新浪
///
///WechatSession 微信聊天
///
///WechatTimeLine 微信朋在圈
///
///WechatFavorite 微信收藏
///
///QQ
///
///Qzone QQ空间
///
///Facebook 脸书
///
///Twitter 推特
enum UMSharePlatform{
  Sina,
  WechatSession,
  WechatTimeLine,
  WechatFavorite,
  QQ,
  Qzone,
  Facebook,
  Twitter
}
///支持登录或检察安装的平台
///
///QQ
///
///Wechat 微信
///
///Sina 新浪
///
///Facebook 脸书
///
///Twitter 推特
enum UMPlatform{
  Sina,
  Wechat,
  QQ,
  Facebook,
  Twitter
}
///分享类型
///
///Misuc 音乐
///
///Video 视频
///
///WebUrl 网页
enum UMShareMediaType{
  Misuc,
  Video,
  WebUrl
}
///集成U盟分享SDK
class UMengShare {
  UMengShare._();
  static const MethodChannel _channel = const MethodChannel('ugle.cn/UMengShare');
  /// 分享文本
  /// 
  /// @platform 分享平台
  /// 
  /// @text 文本
  /// 
  /// 返回参数说明 um_status : SUCCESS 成功 ERROR 失败 CANCEL 用户取消
  static Future<dynamic> shareText(UMSharePlatform platform,String text) async {
    Map<dynamic,dynamic> result= await _channel.invokeMethod('shareText',{"platform":platform.index,"text":text});
    return result;
  }
  /// 分享图片
  /// 
  /// @platform 分享平台
  /// 
  /// @thumb 缩略图或图标 注：图片链接或本地图片路径
  /// 
  /// @desc 分享的图片 注：图片链接或本地图片路径
  /// 
  /// 返回参数说明 um_status : SUCCESS 成功 ERROR 失败 CANCEL 用户取消
  static Future<dynamic> shareImage(UMSharePlatform platform,String thumb,String image) async{
    Map<dynamic,dynamic> result = await _channel.invokeMethod('shareImage',{'platform':platform.index,"thumb":thumb,"image":image});
    return result;
  }
  /// 分享媒体
  /// 
  /// @platform 分享平台
  /// 
  /// @type 分享类型
  /// 
  /// @title 标题
  /// 
  /// @desc 分享描述文本
  /// 
  /// @thumb 缩略图或图标 注：图片链接或本地图片路径
  /// 
  /// @link 分享的音乐、视频、网页的url链接 
  /// 
  /// 注：当分享为图片类型的时候可以是图片链接或本地图片路径
  /// 
  /// 返回参数说明 um_status : SUCCESS 成功 ERROR 失败 CANCEL 用户取消
  static Future<dynamic> shareMedia(UMSharePlatform platform,UMShareMediaType type,String title,String desc,String thumb,String link) async{
    Map<dynamic,dynamic> result = await _channel.invokeMethod('shareMedia',{"platform":platform.index,"type":type.index,"title":title,"desc":desc,"thumb":thumb,"link":link});
    return result;
  }
  /// 分享小程序（只能分享给微信好友）
  /// 
  /// @username 小程序id 如：gh_d43f693ca31f
  /// 
  /// @title 标题
  /// 
  /// @desc 分享描述文本
  /// 
  /// @thumb 小程序消息封面图片，小于128k 注：图片链接或本地图片路径
  /// 
  /// @url 兼容低版本的网页链接
  /// 
  /// @path 小程序页面路径 如：/pages/media
  /// 
  /// 注：当分享为图片类型的时候可以是图片链接或本地图片路径
  /// 
  /// 返回参数说明 um_status : SUCCESS 成功 ERROR 失败 CANCEL 用户取消
  static Future<dynamic> shareMiniApp(String username,String title,String desc,String thumb,String url,String path) async{
    Map<dynamic,dynamic> result = await _channel.invokeMethod('shareMiniApp',{"username":username,"title":title,"desc":desc,"thumb":thumb,"url":url,"path":path});
    return result;
  }
  /// 登录
  /// 
  /// @platform 需要登录的平台
  /// 
  /// 返回参数说明 um_status : SUCCESS 成功 ERROR 失败 CANCEL 用户取消
  /// 如果成功 用户信息会包含在该返回对象中
  static Future<dynamic> login(UMPlatform platform) async{
    Map<dynamic,dynamic> result = await _channel.invokeMethod('login',{"platform":platform.index});
    return result;
  }
  /// 检测是否安装应用
  /// 
  /// @platform 需要检测的平台
  /// 
  /// 返回参数说明 bool
  static Future<dynamic> checkInstall(UMPlatform platform) async{
    bool result = await _channel.invokeMethod('checkInstall',{"platform":platform.index});
    return result;
  }
}
