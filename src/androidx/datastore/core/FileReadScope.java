package androidx.datastore.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0004J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u000e\u0010\u0011\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u0012R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Landroidx/datastore/core/FileReadScope;", "T", "Landroidx/datastore/core/ReadScope;", "file", "Ljava/io/File;", "serializer", "Landroidx/datastore/core/Serializer;", "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", "closed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getFile", "()Ljava/io/File;", "getSerializer", "()Landroidx/datastore/core/Serializer;", "checkNotClosed", _UrlKt.FRAGMENT_ENCODE_SET, "close", "readData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileReadScope\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n1#2:209\n*E\n"})
public class FileReadScope<T> implements ReadScope<T> {
    private final AtomicBoolean closed = new AtomicBoolean(false);
    private final File file;
    private final Serializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.FileReadScope$readData$1 */
    @Metadata(m754k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.datastore.core.FileReadScope", m766f = "FileStorage.kt", m767i = {0}, m768l = {169, 178}, m769m = "readData$suspendImpl", m770n = {"$this"}, m771s = {"L$0"})
    public static final class C05111<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05111(FileReadScope<T> fileReadScope, Continuation<? super C05111> continuation) {
            super(continuation);
            this.this$0 = fileReadScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    @Override // androidx.datastore.core.ReadScope
    public Object readData(Continuation<? super T> continuation) {
        return readData$suspendImpl(this, continuation);
    }

    public FileReadScope(File file, Serializer<T> serializer) {
        this.file = file;
        this.serializer = serializer;
    }

    public final File getFile() {
        return this.file;
    }

    public final Serializer<T> getSerializer() {
        return this.serializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.datastore.core.FileReadScope] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ <T> Object readData$suspendImpl(FileReadScope<T> fileReadScope, Continuation<? super T> continuation) {
        C05111 c05111;
        Throwable th;
        java.io.Closeable closeable;
        FileInputStream fileInputStream;
        java.io.Closeable closeable2;
        Throwable th2;
        if (continuation instanceof C05111) {
            c05111 = (C05111) continuation;
            int i = c05111.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05111.label = i - Integer.MIN_VALUE;
            } else {
                c05111 = new C05111(fileReadScope, continuation);
            }
        }
        Object obj = c05111.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = c05111.label;
        try {
        } catch (FileNotFoundException unused) {
            fileReadScope = (FileReadScope<T>) r2;
            if (!((FileReadScope) fileReadScope).file.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(((FileReadScope) fileReadScope).file);
                try {
                    Serializer<T> serializer = ((FileReadScope) fileReadScope).serializer;
                    c05111.L$0 = fileInputStream2;
                    c05111.L$1 = null;
                    c05111.label = 2;
                    Object from = serializer.readFrom(fileInputStream2, c05111);
                    if (from != coroutine_suspended) {
                        obj = from;
                        closeable = fileInputStream2;
                        CloseableKt.closeFinally(closeable, null);
                        return obj;
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    closeable = fileInputStream2;
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return ((FileReadScope) fileReadScope).serializer.getDefaultValue();
        }
        if (r2 != 0) {
            if (r2 == 1) {
                closeable2 = (java.io.Closeable) c05111.L$1;
                r2 = (FileReadScope) c05111.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    CloseableKt.closeFinally(closeable2, null);
                    return obj;
                } catch (Throwable th4) {
                    th2 = th4;
                    try {
                        throw th2;
                    } finally {
                    }
                }
            }
            if (r2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeable = (java.io.Closeable) c05111.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                CloseableKt.closeFinally(closeable, null);
                return obj;
            } catch (Throwable th5) {
                th = th5;
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        fileReadScope.checkNotClosed();
        try {
            fileInputStream = new FileInputStream(((FileReadScope) fileReadScope).file);
        } catch (FileNotFoundException unused2) {
            if (!((FileReadScope) fileReadScope).file.exists()) {
            }
        }
        try {
            Serializer<T> serializer2 = ((FileReadScope) fileReadScope).serializer;
            c05111.L$0 = fileReadScope;
            c05111.L$1 = fileInputStream;
            c05111.label = 1;
            Object from2 = serializer2.readFrom(fileInputStream, c05111);
            if (from2 != coroutine_suspended) {
                closeable2 = fileInputStream;
                obj = from2;
                CloseableKt.closeFinally(closeable2, null);
                return obj;
            }
            return coroutine_suspended;
        } catch (Throwable th6) {
            r2 = fileReadScope;
            closeable2 = fileInputStream;
            th2 = th6;
            throw th2;
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    public final void checkNotClosed() {
        if (this.closed.get()) {
            Segment$$ExternalSyntheticBUOutline1.m848m("This scope has already been closed.");
        }
    }
}
