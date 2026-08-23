package com.yandex.runtime;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.os.Process;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Runtime extends RuntimeBase {
    private static final String TAG = "com.yandex.runtime.Runtime";
    private static Context applicationContext;

    private static native void initClassloader();

    private static native void initUiThread();

    public static boolean isMainProcess(Context context) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        String packageName = context.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    return packageName.equals(runningAppProcessInfo.processName);
                }
            }
        }
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
            } catch (Throwable th2) {
                bufferedReader = null;
                th = th2;
            }
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int i = bufferedReader.read();
                    if (i <= 0) {
                        break;
                    }
                    sb.append((char) i);
                }
                if (packageName.equals(sb.toString())) {
                    bufferedReader.close();
                    return true;
                }
                bufferedReader.close();
                return false;
            } catch (Throwable th3) {
                th = th3;
                if (bufferedReader != null) {
                    bufferedReader.close();
                    throw th;
                }
                throw th;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    public static void init(Context context, String str) {
        if (context == null) {
            throw new RuntimeException("null context passed to init");
        }
        if (!isMainProcess(context)) {
            throw new RuntimeException("Runtime could be initialized from the application's main process");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new RuntimeException("Runtime could only be initialized from ui thread");
        }
        if (applicationContext == null) {
            Context applicationContext2 = context.getApplicationContext();
            applicationContext = applicationContext2;
            try {
                String string = applicationContext.getPackageManager().getApplicationInfo(applicationContext2.getPackageName(), 128).metaData.getString("yandex.maps.runtime.stl.linkage");
                if (string != null && string.equals("dynamic")) {
                    loadLibrary("c++_shared");
                }
                loadLibrary(str);
                initClassloader();
            } catch (PackageManager.NameNotFoundException unused) {
                throw new RuntimeException("Could not find package info");
            }
        }
        initUiThread();
    }

    public static void init(Context context) {
        init(context, "maps-mobile");
    }

    public static void init(Context context, Map<String, String> map) {
        init(context, "maps-mobile", map);
    }

    public static void init(Context context, String str, Map<String, String> map) {
        init(context, str);
        RuntimeBase.setPreinitializationOptions(map);
    }

    public static Context getApplicationContext() {
        Context context = applicationContext;
        if (context != null) {
            return context;
        }
        throw new RuntimeException("init has not been called");
    }

    public static void loadLibrary(String str) {
        try {
            System.loadLibrary(str);
        } catch (RuntimeException e) {
            throw new UnsatisfiedLinkError("Couldn't load " + str + ", reason: " + e.getMessage());
        }
    }
}
