package com.yandex.runtime.connectivity.internal;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;
import com.yandex.runtime.connectivity.ConnectivityStatus;

/* JADX INFO: loaded from: classes5.dex */
public class ConnectivitySubscription extends BroadcastReceiver {
    public static final String ACTION_CONNECTIVITY_CHANGED = "com.yandex.runtime.internal.CONNECTIVITY_CHANGED";
    private static final String ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED";
    private static final String TAG = "com.yandex.runtime.connectivity.internal.ConnectivitySubscription";
    private NativeObject nativePromise;
    private boolean isRegistered = false;
    private ConnectivityManager connectivityManager = (ConnectivityManager) Runtime.getApplicationContext().getSystemService("connectivity");
    private Object jobScheduler = Runtime.getApplicationContext().getSystemService("jobscheduler");

    public static native void submit(NativeObject nativeObject, ConnectivityStatus connectivityStatus);

    public void subscribe(NativeObject nativeObject) {
        this.nativePromise = nativeObject;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.connectivity.internal.ConnectivitySubscription.1
            @Override // java.lang.Runnable
            public void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                intentFilter.addAction(ConnectivitySubscription.ACTION_CONNECTIVITY_CHANGED);
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
                intentFilter.addAction(ConnectivitySubscription.ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED);
                try {
                    if (Build.VERSION.SDK_INT >= 26) {
                        Runtime.getApplicationContext().registerReceiver(ConnectivitySubscription.this, intentFilter, 4);
                    } else {
                        Runtime.getApplicationContext().registerReceiver(ConnectivitySubscription.this, intentFilter);
                    }
                    ConnectivitySubscription.this.isRegistered = true;
                    ConnectivitySubscription connectivitySubscription = ConnectivitySubscription.this;
                    connectivitySubscription.update(connectivitySubscription.status());
                } catch (SecurityException e) {
                    Log.e(ConnectivitySubscription.TAG, "Cannot register receiver", e);
                }
            }
        });
    }

    public void unsubscribe() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.connectivity.internal.ConnectivitySubscription.2
            @Override // java.lang.Runnable
            public void run() {
                if (ConnectivitySubscription.this.isRegistered) {
                    Runtime.getApplicationContext().unregisterReceiver(ConnectivitySubscription.this);
                }
                ConnectivitySubscription.this.isRegistered = false;
            }
        });
    }

    public ConnectivityStatus status() {
        NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return ConnectivityStatus.NONE;
        }
        int type = activeNetworkInfo.getType();
        if (type == 0 || type == 4 || type == 7) {
            return ConnectivityStatus.CELLULAR;
        }
        return ConnectivityStatus.BROADBAND;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        ConnectivityStatus connectivityStatusStatus = status();
        update(connectivityStatusStatus);
        if ((action == ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED || action == "android.os.action.DEVICE_IDLE_MODE_CHANGED") && connectivityStatusStatus == ConnectivityStatus.NONE) {
            try {
                ((JobScheduler) this.jobScheduler).schedule(new JobInfo.Builder(4105, new ComponentName(Runtime.getApplicationContext(), (Class<?>) ConnectivityService.class)).setRequiredNetworkType(1).build());
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "Failed to schedule job", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(ConnectivityStatus connectivityStatus) {
        try {
            submit(this.nativePromise, connectivityStatus);
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "Native libraries not loaded: " + e.getMessage());
        }
    }
}
