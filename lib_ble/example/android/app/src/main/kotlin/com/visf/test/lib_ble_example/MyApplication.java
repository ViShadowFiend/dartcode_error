package com.visf.test.lib_ble_example;

import android.content.Context;
import com.polidea.rxandroidble2.exceptions.BleException;
import io.flutter.Log;
import io.flutter.app.FlutterApplication;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.plugins.RxJavaPlugins;

public class MyApplication extends FlutterApplication {

  @Override
  public void onCreate() {
    super.onCreate();
    handleRxJava();
  }

  @Override
  protected void attachBaseContext(Context context) {
    super.attachBaseContext(context);
  }

  private void handleRxJava() {
    RxJavaPlugins.setErrorHandler(t -> {
      if (t instanceof UndeliverableException && t.getCause() instanceof BleException) {
        Log.e("LibBleExample: ble - rx", t.toString());
      }
    });
  }
}
