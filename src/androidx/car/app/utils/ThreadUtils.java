package androidx.car.app.utils;

import android.os.Handler;
import android.os.Looper;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ThreadUtils {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());

    public static void runOnMain(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            HANDLER.post(runnable);
        }
    }

    public static void checkMainThread() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Not running on main thread when it is required to");
    }
}
