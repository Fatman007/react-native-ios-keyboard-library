package com.IosKeyboardLibrary;

import android.content.Context;
import android.widget.Toast;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class IosKeyboardLibraryModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public IosKeyboardLibraryModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "IosKeyboardLibrary";
    }

    @ReactMethod
    public void sampleMethod(String stringArgument, int numberArgument, Callback callback) {
        // TODO: Implement some actually useful functionality
        callback.invoke("Received numberArgument: " + numberArgument + " stringArgument: " + stringArgument);
    }

    @ReactMethod
    public void show(String text) {
        Context context = getReactApplicationContext();
        Toast.makeText(context, text, Toast.LENGTH_LONG).show();
    }
}
