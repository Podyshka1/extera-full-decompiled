package androidx.datastore.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;

/* JADX INFO: loaded from: classes.dex */
public class FileReadScope implements ReadScope {
    private final AtomicBoolean closed;
    private final File file;
    private final Serializer serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.FileReadScope$readData$1 */
    static final class C05151 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05151(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileReadScope.readData$suspendImpl(FileReadScope.this, this);
        }
    }

    @Override // androidx.datastore.core.ReadScope
    public Object readData(Continuation continuation) {
        return readData$suspendImpl(this, continuation);
    }

    public FileReadScope(File file, Serializer serializer) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.file = file;
        this.serializer = serializer;
        this.closed = new AtomicBoolean(false);
    }

    protected final File getFile() {
        return this.file;
    }

    protected final Serializer getSerializer() {
        return this.serializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.datastore.core.FileReadScope] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.datastore.core.FileReadScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.datastore.core.FileReadScope] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static /* synthetic */ Object readData$suspendImpl(FileReadScope fileReadScope, Continuation continuation) {
        C05151 c05151;
        Throwable th;
        java.io.Closeable closeable;
        java.io.Closeable closeable2;
        Throwable th2;
        if (continuation instanceof C05151) {
            c05151 = (C05151) continuation;
            int i = c05151.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05151.label = i - Integer.MIN_VALUE;
            } else {
                c05151 = new C05151(continuation);
            }
        }
        Object obj = c05151.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = c05151.label;
        try {
        } catch (FileNotFoundException unused) {
            fileReadScope = r2;
        }
        if (r2 != 0) {
            if (r2 == 1) {
                closeable2 = (java.io.Closeable) c05151.L$1;
                r2 = (FileReadScope) c05151.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    CloseableKt.closeFinally(closeable2, null);
                    return obj;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            if (r2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeable = (java.io.Closeable) c05151.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                CloseableKt.closeFinally(closeable, null);
                return obj;
            } catch (Throwable th4) {
                th = th4;
                try {
                    throw th;
                } finally {
                }
            }
        }
        ResultKt.throwOnFailure(obj);
        fileReadScope.checkNotClosed();
        try {
            FileInputStream fileInputStream = new FileInputStream(((FileReadScope) fileReadScope).file);
            try {
                Serializer serializer = ((FileReadScope) fileReadScope).serializer;
                c05151.L$0 = fileReadScope;
                c05151.L$1 = fileInputStream;
                c05151.label = 1;
                Object from = serializer.readFrom(fileInputStream, c05151);
                if (from != coroutine_suspended) {
                    closeable2 = fileInputStream;
                    obj = from;
                    CloseableKt.closeFinally(closeable2, null);
                    return obj;
                }
            } catch (Throwable th5) {
                r2 = fileReadScope;
                closeable2 = fileInputStream;
                th2 = th5;
                throw th;
            }
        } catch (FileNotFoundException unused2) {
            if (((FileReadScope) fileReadScope).file.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(((FileReadScope) fileReadScope).file);
                try {
                    Serializer serializer2 = ((FileReadScope) fileReadScope).serializer;
                    c05151.L$0 = fileInputStream2;
                    c05151.L$1 = null;
                    c05151.label = 2;
                    Object from2 = serializer2.readFrom(fileInputStream2, c05151);
                    if (from2 != coroutine_suspended) {
                        obj = from2;
                        closeable = fileInputStream2;
                        CloseableKt.closeFinally(closeable, null);
                        return obj;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    closeable = fileInputStream2;
                    throw th;
                }
            } else {
                return ((FileReadScope) fileReadScope).serializer.getDefaultValue();
            }
        }
        return coroutine_suspended;
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    protected final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("This scope has already been closed.");
        }
    }
}
