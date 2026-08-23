package androidx.core.os;

import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ExecutorCompat$HandlerExecutor$$ExternalSyntheticBUOutline0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ void m101m(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new RejectedExecutionException(sb.toString());
    }
}
