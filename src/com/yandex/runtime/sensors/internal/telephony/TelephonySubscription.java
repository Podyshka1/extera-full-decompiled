package com.yandex.runtime.sensors.internal.telephony;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.CellInfo;
import android.telephony.TelephonyManager;
import android.telephony.TelephonyManager$CellInfoCallback;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.Runtime;
import com.yandex.runtime.logging.Logger;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class TelephonySubscription {
    private Context context;
    private Runnable infiniteLoop;
    private NativeObject nativeListener;
    private int requestIntervalMilliseconds;
    private TelephonyManager telephonyManager;
    private boolean shouldStop = false;
    private long previousMaxTimeStamp = 0;

    public static native void postTelephonyNetworkInfo(NativeObject nativeObject, List<GsmCellInfo> list);

    public TelephonySubscription(NativeObject nativeObject, int i) {
        this.nativeListener = nativeObject;
        this.requestIntervalMilliseconds = i;
        Context applicationContext = Runtime.getApplicationContext();
        this.context = applicationContext;
        if (applicationContext.getPackageManager().hasSystemFeature("android.hardware.telephony")) {
            this.telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
            if (Build.VERSION.SDK_INT < 29) {
                startLoopBelowQ();
            } else {
                startLoopQAndAbove();
            }
        }
    }

    public class ExecutorWrapper implements Executor {
        private final Executor impl;

        public ExecutorWrapper(Executor executor) {
            this.impl = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(final Runnable runnable) {
            this.impl.execute(new Runnable() { // from class: com.yandex.runtime.sensors.internal.telephony.TelephonySubscription.ExecutorWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (NullPointerException e) {
                        Logger.error("exception in the executor while requesting cell info update: " + e.getMessage());
                    }
                }
            });
        }
    }

    private void startLoopQAndAbove() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final TelephonyManager$CellInfoCallback telephonyManager$CellInfoCallback = new TelephonyManager$CellInfoCallback() { // from class: com.yandex.runtime.sensors.internal.telephony.TelephonySubscription.1
            public void onCellInfo(List<CellInfo> list) {
                TelephonySubscription.postTelephonyNetworkInfo(TelephonySubscription.this.nativeListener, TelephonyUtils.convertCellInfo(list));
                if (TelephonySubscription.this.shouldStop) {
                    return;
                }
                handler.postDelayed(TelephonySubscription.this.infiniteLoop, TelephonySubscription.this.requestIntervalMilliseconds);
            }

            public void onError(int i, Throwable th) {
                String str = "error while requesting cell info update with errorCode : " + i;
                if (th != null) {
                    str = str + ", detail: " + th.getMessage();
                }
                Logger.error(str);
            }
        };
        final ExecutorWrapper executorWrapper = new ExecutorWrapper(this.context.getMainExecutor());
        Runnable runnable = new Runnable() { // from class: com.yandex.runtime.sensors.internal.telephony.TelephonySubscription.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TelephonySubscription.this.telephonyManager.requestCellInfoUpdate(executorWrapper, telephonyManager$CellInfoCallback);
                } catch (IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Logger.error("exception while requesting cell info update: " + e.getMessage());
                }
            }
        };
        this.infiniteLoop = runnable;
        handler.post(runnable);
    }

    private void startLoopBelowQ() {
        final Handler handler = new Handler(Looper.getMainLooper());
        Runnable runnable = new Runnable() { // from class: com.yandex.runtime.sensors.internal.telephony.TelephonySubscription.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    List<CellInfo> allCellInfo = TelephonySubscription.this.telephonyManager.getAllCellInfo();
                    long timeStamp = ((CellInfo) Collections.max(allCellInfo, new Comparator<CellInfo>() { // from class: com.yandex.runtime.sensors.internal.telephony.TelephonySubscription.3.1
                        @Override // java.util.Comparator
                        public int compare(CellInfo cellInfo, CellInfo cellInfo2) {
                            return Long.compare(cellInfo.getTimeStamp(), cellInfo2.getTimeStamp());
                        }
                    })).getTimeStamp();
                    if (TelephonySubscription.this.previousMaxTimeStamp < timeStamp) {
                        TelephonySubscription.this.previousMaxTimeStamp = timeStamp;
                        TelephonySubscription.postTelephonyNetworkInfo(TelephonySubscription.this.nativeListener, TelephonyUtils.convertCellInfo(allCellInfo));
                    }
                } catch (Exception e) {
                    Logger.error("exception while getting cell info: " + e.getMessage());
                }
                if (TelephonySubscription.this.shouldStop) {
                    return;
                }
                handler.postDelayed(TelephonySubscription.this.infiniteLoop, TelephonySubscription.this.requestIntervalMilliseconds);
            }
        };
        this.infiniteLoop = runnable;
        handler.post(runnable);
    }

    public void cancel() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yandex.runtime.sensors.internal.telephony.TelephonySubscription.4
            @Override // java.lang.Runnable
            public void run() {
                TelephonySubscription.this.shouldStop = true;
                TelephonySubscription.this.nativeListener = null;
            }
        });
    }
}
