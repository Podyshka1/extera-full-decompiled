package androidx.collection.internal;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RuntimeHelpersKt {
    public static final void throwIllegalStateException(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new IllegalStateException(message);
    }

    public static final void throwIndexOutOfBoundsException(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new IndexOutOfBoundsException(message);
    }

    public static final void throwNoSuchElementException(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new NoSuchElementException(message);
    }

    public static final void throwIllegalArgumentException(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        throw new IllegalArgumentException(message);
    }
}
