package androidx.datastore.core;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ReadException extends State {
    private final Throwable readException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadException(Throwable readException, int i) {
        super(i, null);
        Intrinsics.checkNotNullParameter(readException, "readException");
        this.readException = readException;
    }

    public final Throwable getReadException() {
        return this.readException;
    }
}
