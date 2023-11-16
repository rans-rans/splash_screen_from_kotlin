package com.rans_innovations.splash_screen

import androidx.core.splashscreen.SplashScreen.Companion.installSplashScreen
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {

    var isLoading = true


    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        installSplashScreen().apply {
            setKeepOnScreenCondition { isLoading }
        }

        val delaySeconds = 2L // seconds
        Thread.sleep(delaySeconds * 1000) // convert seconds to milliseconds
        isLoading = false
    }

}
