package com.example.dio_example

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        fromFlutter()
        openNativeView()
    }

    private fun fromFlutter() {
        val CHANNEL = "dio_example/native_view"
        val channel = MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger!!, CHANNEL)
        channel.setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
            if (call.method == "showBattery") {
                val batteryLevel = getBatteryLevel(this)
                if (batteryLevel != -1) {
                    result.success(batteryLevel)
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null)
                }
                Toast.makeText(this, "show battery invoked", Toast.LENGTH_SHORT).show()
            } else {
                result.notImplemented()
            }
        }
    }

    private fun openNativeView() {
        val CHANNEL = "dio_example/open_native_view"
        val channel = MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger!!, CHANNEL)
        channel.setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
            if (call.method == "openNativeView") {
                val intent = Intent(
                    this,
                    TestActivity::class.java
                )
                startActivity(intent)
                result.success("Success")
            } else {
                result.notImplemented()
            }
        }
    }

    private fun getBatteryLevel(context: Context): Int {
        val batteryIntent =
            context.registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
        val level = batteryIntent?.getIntExtra(
            BatteryManager.EXTRA_LEVEL,
            BATTERY_LEVEL_ERROR
        )
        val scale = batteryIntent?.getIntExtra(
            BatteryManager.EXTRA_SCALE,
            BATTERY_LEVEL_ERROR
        )

        return if (level != null && scale != null && scale != 0) {
            (level * 100 / scale)
        } else {
            BATTERY_LEVEL_ERROR
        }
    }

    companion object {
        private const val BATTERY_LEVEL_ERROR = -1
    }

}
