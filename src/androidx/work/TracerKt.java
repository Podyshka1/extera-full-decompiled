package androidx.work;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class TracerKt {
    public static final Object traced(Tracer tracer, String label, Function0 block) {
        Intrinsics.checkNotNullParameter(tracer, "<this>");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(block, "block");
        boolean zIsEnabled = tracer.isEnabled();
        if (zIsEnabled) {
            try {
                tracer.beginSection(label);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                if (zIsEnabled) {
                    tracer.endSection();
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        Object objInvoke = block.invoke();
        InlineMarker.finallyStart(1);
        if (zIsEnabled) {
            tracer.endSection();
        }
        InlineMarker.finallyEnd(1);
        return objInvoke;
    }
}
