package com.flutter.plugins.flutter_qiyu;

import io.flutter.app.FlutterApplication;

public class MainApplication extends FlutterApplication {
    @Override
    public void onCreate() {
        super.onCreate();
        FlutterQiyuPlugin.initSDK(this, "<appKey>");
    }
}
