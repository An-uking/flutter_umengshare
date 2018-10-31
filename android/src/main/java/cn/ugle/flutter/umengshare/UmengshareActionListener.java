package cn.ugle.flutter.umengshare;

import android.app.Activity;

import com.umeng.socialize.UMShareListener;
import com.umeng.socialize.bean.SHARE_MEDIA;

import java.util.HashMap;
import java.util.Map;

import io.flutter.plugin.common.MethodChannel.Result;

public class UmengshareActionListener implements UMShareListener {
    private final Activity activity;
    private final Result result;
    public UmengshareActionListener(Activity activity, Result result){
        this.activity=activity;
        this.result=result;
    }
    @Override
    public void onStart(SHARE_MEDIA share_media) {
    }

    @Override
    public void onResult(SHARE_MEDIA share_media) {
        Map<String,Object> map = new HashMap<>();
        map.put("um_status","SUCCESS");
        result.success(map);
    }

    @Override
    public void onError(SHARE_MEDIA share_media, Throwable throwable) {
        Map<String,Object> map = new HashMap<>();
        map.put("um_status","ERROR");
        map.put("um_msg",throwable.getMessage());
        result.success(map);
    }

    @Override
    public void onCancel(SHARE_MEDIA share_media) {
        Map<String,Object> map = new HashMap<>();
        map.put("um_status","CANCEL");
        result.success(map);
    }
}
