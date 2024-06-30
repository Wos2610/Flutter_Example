package com.example.dio_example

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.navigation.ui.AppBarConfiguration
import com.example.dio_example.databinding.ActivityTestBinding
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class TestActivity : FlutterActivity() {

    private lateinit var binding: ActivityTestBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityTestBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.button.setOnClickListener {
//            openFlutterView()
            finish()
        }
    }

    private fun openFlutterView() {
        val CHANNEL = "dio_example/open_flutter_view"
        val channel = MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger!!, CHANNEL)
        channel.invokeMethod("openFlutterView", null, object: MethodChannel.Result{
            override fun notImplemented() {
                Toast.makeText(context, "Not Implemented", Toast.LENGTH_SHORT).show()
            }

            override fun success(result: Any?) {
                val intent = Intent(
                    context,
                    MainActivity::class.java
                )
                startActivity(intent)
                Toast.makeText(context, "Success: $result", Toast.LENGTH_SHORT).show()
            }

            override fun error(p0: String, p1: String?, p2: Any?) {
                Toast.makeText(context, "Error: $p0", Toast.LENGTH_SHORT).show()
            }
        })
    }
}