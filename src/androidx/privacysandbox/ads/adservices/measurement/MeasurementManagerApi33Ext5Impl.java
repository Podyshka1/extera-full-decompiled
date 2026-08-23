package androidx.privacysandbox.ads.adservices.measurement;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MeasurementManagerApi33Ext5Impl extends MeasurementManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    public MeasurementManagerApi33Ext5Impl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService((Class<Object>) C0702x7e546fa.m197m());
        Intrinsics.checkNotNullExpressionValue(systemService, "context.getSystemService…ementManager::class.java)");
        super(C0703x7e546fb.m198m(systemService));
    }
}
