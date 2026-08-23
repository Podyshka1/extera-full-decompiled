package com.yandex.runtime.sensors.internal;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionClient;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ActivityTrackerSubscription {
    private static final String BROADCAST_ACTION = "activityRecognitionAction";
    private static final int FLAG_MUTABLE = 33554432;
    private static final long MS_IN_SEC = 1000;
    private static final String TAG = "com.yandex.runtime.sensors.internal.ActivityTrackerSubscription";
    private BroadcastReceiver broadcastReceiver_;
    private ActivityRecognitionClient client_;
    private boolean connected_;
    private NativeObject nativeObject_;
    private PendingIntent pendingIntent_;

    public static native void updateActivity(NativeObject nativeObject, Map map);

    public static boolean isActivityTrackerAvailable() {
        return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(Runtime.getApplicationContext()) == 0;
    }

    public ActivityTrackerSubscription(NativeObject nativeObject, int i) {
        this.connected_ = false;
        Log.i(TAG, "ActivityTracker started");
        this.nativeObject_ = nativeObject;
        Intent intent = new Intent();
        intent.setAction(BROADCAST_ACTION);
        intent.setPackage(Runtime.getApplicationContext().getPackageName());
        int i2 = Build.VERSION.SDK_INT;
        this.pendingIntent_ = PendingIntent.getBroadcast(Runtime.getApplicationContext(), 0, intent, i2 >= 31 ? 167772160 : 134217728);
        this.client_ = ActivityRecognition.getClient(Runtime.getApplicationContext());
        this.broadcastReceiver_ = new ActivityTrackerBroadcastReceiver();
        Task<Void> taskRequestActivityUpdates = this.client_.requestActivityUpdates(((long) i) * 1000, this.pendingIntent_);
        taskRequestActivityUpdates.addOnSuccessListener(new OnSuccessListener() { // from class: com.yandex.runtime.sensors.internal.ActivityTrackerSubscription.1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public void onSuccess(Object obj) {
                Log.i(ActivityTrackerSubscription.TAG, "ActivityTracker subscribed");
            }
        });
        taskRequestActivityUpdates.addOnFailureListener(new OnFailureListener() { // from class: com.yandex.runtime.sensors.internal.ActivityTrackerSubscription.2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public void onFailure(Exception exc) {
                Log.e(ActivityTrackerSubscription.TAG, "ActivityTracker failed to subscribe: " + exc.getMessage());
            }
        });
        IntentFilter intentFilter = new IntentFilter(BROADCAST_ACTION);
        if (i2 >= 26) {
            Runtime.getApplicationContext().registerReceiver(this.broadcastReceiver_, intentFilter, 4);
        } else {
            Runtime.getApplicationContext().registerReceiver(this.broadcastReceiver_, intentFilter);
        }
        this.connected_ = true;
    }

    public void stop() {
        if (this.connected_) {
            doStop();
            this.connected_ = false;
        }
    }

    private void doStop() {
        this.client_.removeActivityUpdates(this.pendingIntent_);
        Runtime.getApplicationContext().unregisterReceiver(this.broadcastReceiver_);
        Log.i(TAG, "ActivityTracker stopped");
    }

    public class ActivityTrackerBroadcastReceiver extends BroadcastReceiver {
        private ActivityTrackerBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ActivityRecognitionResult.hasResult(intent)) {
                ActivityTrackerSubscription.this.handle(ActivityRecognitionResult.extractResult(intent));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handle(ActivityRecognitionResult activityRecognitionResult) {
        HashMap map = new HashMap();
        Iterator<DetectedActivity> it = activityRecognitionResult.getProbableActivities().iterator();
        while (it.hasNext()) {
            int type = it.next().getType();
            if (type != 2) {
                map.put(Integer.valueOf(type), Float.valueOf(r1.getConfidence() / 100.0f));
            }
        }
        updateActivity(this.nativeObject_, map);
    }
}
