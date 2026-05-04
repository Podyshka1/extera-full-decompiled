package androidx.work.impl.utils;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class Api28Impl {
    public static final Api28Impl INSTANCE = new Api28Impl();

    private Api28Impl() {
    }

    public final String getProcessName() {
        String processName = Application.getProcessName();
        Intrinsics.checkNotNullExpressionValue(processName, "getProcessName(...)");
        return processName;
    }
}
