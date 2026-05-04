package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BatteryChargingTrackerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("BatteryChrgTracker");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }
}
