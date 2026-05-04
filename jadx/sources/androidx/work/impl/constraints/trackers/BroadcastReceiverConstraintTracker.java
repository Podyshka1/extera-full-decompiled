package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class BroadcastReceiverConstraintTracker extends ConstraintTracker {
    private final BroadcastReceiver broadcastReceiver;

    public abstract IntentFilter getIntentFilter();

    public abstract void onBroadcastReceive(Intent intent);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BroadcastReceiverConstraintTracker(Context context, TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.broadcastReceiver = new BroadcastReceiver() { // from class: androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker$broadcastReceiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                this.this$0.onBroadcastReceive(intent);
            }
        };
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void startTracking() {
        Logger.get().debug(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName() + ": registering receiver");
        getAppContext().registerReceiver(this.broadcastReceiver, getIntentFilter());
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void stopTracking() {
        Logger.get().debug(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName() + ": unregistering receiver");
        getAppContext().unregisterReceiver(this.broadcastReceiver);
    }
}
