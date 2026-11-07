package androidx.media3.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import androidx.media3.common.util.BackgroundExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidAutoConnectionStateObserver {
    private static final Uri QUERY_URI = Uri.parse("content://androidx.car.app.connection");
    private final Executor backgroundExecutor;
    private final AndroidAutoChangeReceiver changeReceiver;
    private final Context context;
    private final AtomicBoolean isConnected;
    private final AtomicBoolean isReleased;
    private final Runnable listener;

    public AndroidAutoConnectionStateObserver(Context context, Runnable runnable) {
        this.context = context.getApplicationContext();
        this.listener = runnable;
        Executor executor = BackgroundExecutor.get();
        this.backgroundExecutor = executor;
        this.changeReceiver = new AndroidAutoChangeReceiver();
        this.isConnected = new AtomicBoolean();
        this.isReleased = new AtomicBoolean();
        executor.execute(new Runnable() { // from class: androidx.media3.session.AndroidAutoConnectionStateObserver$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoConnectionStateObserver.$r8$lambda$AiNsKMVLtOz5nK_QasgNsZ3oSJc(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$AiNsKMVLtOz5nK_QasgNsZ3oSJc(AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver) {
        androidAutoConnectionStateObserver.getClass();
        IntentFilter intentFilter = new IntentFilter("androidx.car.app.connection.action.CAR_CONNECTION_UPDATED");
        int i = Build.VERSION.SDK_INT;
        Context context = androidAutoConnectionStateObserver.context;
        AndroidAutoChangeReceiver androidAutoChangeReceiver = androidAutoConnectionStateObserver.changeReceiver;
        if (i >= 33) {
            context.registerReceiver(androidAutoChangeReceiver, intentFilter, 2);
        } else {
            context.registerReceiver(androidAutoChangeReceiver, intentFilter);
        }
        androidAutoConnectionStateObserver.updateConnectionState();
    }

    public void release() {
        if (this.isReleased.getAndSet(true)) {
            return;
        }
        this.backgroundExecutor.execute(new Runnable() { // from class: androidx.media3.session.AndroidAutoConnectionStateObserver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver = this.f$0;
                androidAutoConnectionStateObserver.context.unregisterReceiver(androidAutoConnectionStateObserver.changeReceiver);
            }
        });
    }

    public boolean isConnected() {
        return this.isConnected.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateConnectionState() {
        boolean z = this.isConnected.get();
        boolean zQueryConnectionState = queryConnectionState();
        this.isConnected.set(zQueryConnectionState);
        if (z == zQueryConnectionState || this.isReleased.get()) {
            return;
        }
        this.listener.run();
    }

    private boolean queryConnectionState() {
        Cursor cursorQuery;
        try {
            cursorQuery = this.context.getContentResolver().query(QUERY_URI, new String[]{"CarConnectionState"}, null, null, null);
        } catch (Exception unused) {
            return false;
        }
        if (cursorQuery == null) {
            if (cursorQuery != null) {
            }
            return false;
        }
        try {
            int columnIndex = cursorQuery.getColumnIndex("CarConnectionState");
            if (columnIndex != -1 && cursorQuery.moveToNext()) {
                boolean z = cursorQuery.getInt(columnIndex) != 0;
                cursorQuery.close();
                return z;
            }
        } finally {
        }
        return false;
        cursorQuery.close();
        return false;
    }

    public final class AndroidAutoChangeReceiver extends BroadcastReceiver {
        private AndroidAutoChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Executor executor = AndroidAutoConnectionStateObserver.this.backgroundExecutor;
            final AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver = AndroidAutoConnectionStateObserver.this;
            executor.execute(new Runnable() { // from class: androidx.media3.session.AndroidAutoConnectionStateObserver$AndroidAutoChangeReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    androidAutoConnectionStateObserver.updateConnectionState();
                }
            });
        }
    }
}
