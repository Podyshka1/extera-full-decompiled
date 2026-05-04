package androidx.credentials.internal;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class FormFactorHelper {
    public static final FormFactorHelper INSTANCE = new FormFactorHelper();

    private FormFactorHelper() {
    }

    public static final boolean isTV(Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        return ctx.getPackageManager().hasSystemFeature("android.software.leanback");
    }

    public static final boolean isWear(Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        return ctx.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static final boolean isAuto(Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        return ctx.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }
}
