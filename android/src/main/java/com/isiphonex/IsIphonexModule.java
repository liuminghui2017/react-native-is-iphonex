package com.isiphonex;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;

public class IsIphonexModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public IsIphonexModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "IsIphonex";
    }

    @ReactMethod
    public void isIphonex(Promise promise) {
        promise.resolve(false);
    }
}
