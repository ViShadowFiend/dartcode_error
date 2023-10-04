package com.visf.test.lib_ble

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** LibBlePlugin */
class LibBlePlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel : MethodChannel

  companion object {
    const val CHANNEL_NAME = "com.visf.test.lib_ble"
  }

  override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {

  }

  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(binding.binaryMessenger, CHANNEL_NAME)
    channel.setMethodCallHandler(this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
