package androidx.media3.common.util;

import com.google.common.base.Preconditions;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Assertions {
    @Deprecated
    @Pure
    public static void checkState(boolean z) {
        Preconditions.checkState(z);
    }

    @EnsuresNonNull({"#1"})
    @Deprecated
    @Pure
    public static <T> T checkNotNull(T t) {
        return (T) Preconditions.checkNotNull(t);
    }
}
