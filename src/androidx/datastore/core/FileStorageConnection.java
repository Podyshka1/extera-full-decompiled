package androidx.datastore.core;

import com.android.dx.io.Opcodes;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.ZipFileSystem$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\fJ\b\u0010\u0013\u001a\u00020\u000bH\u0002J\b\u0010\u0014\u001a\u00020\u000bH\u0016JX\u0010\u0015\u001a\u0002H\u0016\"\u0004\b\u0001\u0010\u00162B\u0010\u0017\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0019\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00160\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u0018¢\u0006\u0002\b H\u0096@¢\u0006\u0002\u0010!J=\u0010\"\u001a\u00020\u000b2-\u0010\u0017\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000$\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0#¢\u0006\u0002\b H\u0096@¢\u0006\u0002\u0010%J\f\u0010&\u001a\u00020\u000b*\u00020\u0004H\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Landroidx/datastore/core/FileStorageConnection;", "T", "Landroidx/datastore/core/StorageConnection;", "file", "Ljava/io/File;", "serializer", "Landroidx/datastore/core/Serializer;", "coordinator", "Landroidx/datastore/core/InterProcessCoordinator;", "onClose", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/io/File;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V", "closed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "transactionMutex", "Lkotlinx/coroutines/sync/Mutex;", "checkNotClosed", "close", "readScope", "R", "block", "Lkotlin/Function3;", "Landroidx/datastore/core/ReadScope;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ParameterName;", "name", "locked", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeScope", "Lkotlin/Function2;", "Landroidx/datastore/core/WriteScope;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createParentDirectories", "datastore-core_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileStorageConnection\n+ 2 Closeable.kt\nandroidx/datastore/core/CloseableKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n38#2,23:209\n38#2,23:240\n120#3,8:232\n129#3:263\n1#4:264\n*S KotlinDebug\n*F\n+ 1 FileStorage.kt\nandroidx/datastore/core/FileStorageConnection\n*L\n100#1:209,23\n117#1:240,23\n114#1:232,8\n114#1:263\n*E\n"})
public final class FileStorageConnection<T> implements StorageConnection<T> {
    private final InterProcessCoordinator coordinator;
    private final File file;
    private final Function0<Unit> onClose;
    private final Serializer<T> serializer;
    private final AtomicBoolean closed = new AtomicBoolean(false);
    private final Mutex transactionMutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$readScope$1 */
    @Metadata(m754k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.datastore.core.FileStorageConnection", m766f = "FileStorage.kt", m767i = {0, 0, 0}, m768l = {101}, m769m = "readScope", m770n = {"this", "$this$use$iv", "lock"}, m771s = {"L$0", "L$1", "Z$0"})
    public static final class C05141<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05141(FileStorageConnection<T> fileStorageConnection, Continuation<? super C05141> continuation) {
            super(continuation);
            this.this$0 = fileStorageConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$writeScope$1 */
    @Metadata(m754k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.datastore.core.FileStorageConnection", m766f = "FileStorage.kt", m767i = {0, 0, 0, 1, 1, 1, 1}, m768l = {Opcodes.OR_INT_LIT16, 118}, m769m = "writeScope", m770n = {"this", "block", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "scratchFile", "$this$use$iv"}, m771s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    public static final class C05151 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05151(FileStorageConnection<T> fileStorageConnection, Continuation<? super C05151> continuation) {
            super(continuation);
            this.this$0 = fileStorageConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public FileStorageConnection(File file, Serializer<T> serializer, InterProcessCoordinator interProcessCoordinator, Function0<Unit> function0) {
        this.file = file;
        this.serializer = serializer;
        this.coordinator = interProcessCoordinator;
        this.onClose = function0;
    }

    @Override // androidx.datastore.core.StorageConnection
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object readScope(Function3<? super ReadScope<T>, ? super Boolean, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) throws Throwable {
        C05141 c05141;
        boolean zTryLock$default;
        Throwable th;
        Closeable closeable;
        FileStorageConnection<T> fileStorageConnection;
        boolean z;
        if (continuation instanceof C05141) {
            c05141 = (C05141) continuation;
            int i = c05141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05141.label = i - Integer.MIN_VALUE;
            } else {
                c05141 = new C05141(this, continuation);
            }
        }
        Object obj = c05141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05141.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            checkNotClosed();
            zTryLock$default = Mutex.DefaultImpls.tryLock$default(this.transactionMutex, null, 1, null);
            try {
                FileReadScope fileReadScope = new FileReadScope(this.file, this.serializer);
                try {
                    Boolean boolBoxBoolean = Boxing.boxBoolean(zTryLock$default);
                    c05141.L$0 = this;
                    c05141.L$1 = fileReadScope;
                    c05141.Z$0 = zTryLock$default;
                    c05141.label = 1;
                    Object objInvoke = function3.invoke(fileReadScope, boolBoxBoolean, c05141);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    fileStorageConnection = this;
                    z = zTryLock$default;
                    obj = objInvoke;
                    closeable = fileReadScope;
                    closeable.close();
                    th = null;
                    if (th != null) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = fileReadScope;
                    closeable.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = c05141.Z$0;
            closeable = (Closeable) c05141.L$1;
            fileStorageConnection = (FileStorageConnection) c05141.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                try {
                    closeable.close();
                    th = null;
                } catch (Throwable th4) {
                    th = th4;
                }
                if (th != null) {
                    if (z) {
                        Mutex.DefaultImpls.unlock$default(fileStorageConnection.transactionMutex, null, 1, null);
                    }
                    return obj;
                }
                try {
                    throw th;
                } catch (Throwable th5) {
                    th = th5;
                    zTryLock$default = z;
                    this = fileStorageConnection;
                }
            } catch (Throwable th6) {
                zTryLock$default = z;
                this = fileStorageConnection;
                th = th6;
                try {
                    closeable.close();
                    throw th;
                } catch (Throwable th7) {
                    ExceptionsKt.addSuppressed(th, th7);
                    throw th;
                }
            }
        }
        if (zTryLock$default) {
            Mutex.DefaultImpls.unlock$default(this.transactionMutex, null, 1, null);
        }
        throw th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9 A[Catch: all -> 0x00e9, IOException -> 0x00ec, TRY_ENTER, TryCatch #6 {all -> 0x00e9, blocks: (B:34:0x00b9, B:36:0x00bf, B:39:0x00c8, B:40:0x00e8, B:45:0x00f0, B:48:0x00f8, B:55:0x0106, B:54:0x0103), top: B:77:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f8 A[Catch: all -> 0x00e9, IOException -> 0x00ec, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00e9, blocks: (B:34:0x00b9, B:36:0x00bf, B:39:0x00c8, B:40:0x00e8, B:45:0x00f0, B:48:0x00f8, B:55:0x0106, B:54:0x0103), top: B:77:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.File, java.lang.Object] */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object writeScope(Function2<? super WriteScope<T>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        C05151 c05151;
        ?? file;
        ?? r10;
        FileWriteScope fileWriteScope;
        Throwable th;
        Closeable closeable;
        FileStorageConnection<T> fileStorageConnection;
        ?? r2;
        ?? r9;
        if (continuation instanceof C05151) {
            c05151 = (C05151) continuation;
            int i = c05151.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05151.label = i - Integer.MIN_VALUE;
            } else {
                c05151 = new C05151(this, continuation);
            }
        }
        Object obj = c05151.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05151.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (i2 == 0) {
                                ResultKt.throwOnFailure(obj);
                                checkNotClosed();
                                createParentDirectories(this.file);
                                Mutex mutex = this.transactionMutex;
                                c05151.L$0 = this;
                                c05151.L$1 = function2;
                                c05151.L$2 = mutex;
                                c05151.label = 1;
                                Object objLock = mutex.lock(null, c05151);
                                r10 = mutex;
                                if (objLock != coroutine_suspended) {
                                }
                                return coroutine_suspended;
                            }
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                closeable = (Closeable) c05151.L$3;
                                File file2 = (File) c05151.L$2;
                                Mutex mutex2 = (Mutex) c05151.L$1;
                                fileStorageConnection = (FileStorageConnection) c05151.L$0;
                                try {
                                    ResultKt.throwOnFailure(obj);
                                    r2 = mutex2;
                                    r9 = file2;
                                    Unit unit = Unit.INSTANCE;
                                    try {
                                        closeable.close();
                                        th = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                    if (th == null) {
                                        throw th;
                                    }
                                    if (r9.exists() && !FileMoves_androidKt.atomicMoveTo(r9, fileStorageConnection.file)) {
                                        throw new IOException("Unable to rename " + r9 + " to " + fileStorageConnection.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                    }
                                    Unit unit2 = Unit.INSTANCE;
                                    r2.unlock(null);
                                    return Unit.INSTANCE;
                                } catch (Throwable th3) {
                                    th = th3;
                                    try {
                                        closeable.close();
                                    } catch (Throwable th4) {
                                        ExceptionsKt.addSuppressed(th, th4);
                                    }
                                    throw th;
                                }
                            }
                            Mutex mutex3 = (Mutex) c05151.L$2;
                            function2 = (Function2) c05151.L$1;
                            FileStorageConnection<T> fileStorageConnection2 = (FileStorageConnection) c05151.L$0;
                            ResultKt.throwOnFailure(obj);
                            r10 = mutex3;
                            this = fileStorageConnection2;
                            c05151.L$0 = this;
                            c05151.L$1 = r10;
                            c05151.L$2 = file;
                            c05151.L$3 = fileWriteScope;
                            c05151.label = 2;
                            if (function2.invoke(fileWriteScope, c05151) != coroutine_suspended) {
                                fileStorageConnection = this;
                                r2 = r10;
                                r9 = file;
                                closeable = fileWriteScope;
                                Unit unit3 = Unit.INSTANCE;
                                closeable.close();
                                th = null;
                                if (th == null) {
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th5) {
                            th = th5;
                            closeable = fileWriteScope;
                            closeable.close();
                            throw th;
                        }
                        fileWriteScope = new FileWriteScope(file, this.serializer);
                    } catch (IOException e) {
                        e = e;
                        if (file.exists()) {
                            file.delete();
                        }
                        throw e;
                    }
                    file = new File(this.file.getAbsolutePath() + ".tmp");
                } catch (Throwable th6) {
                    th = th6;
                    r10.unlock(null);
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
                r10 = coroutine_suspended;
                r10.unlock(null);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            file = function2;
            r10 = coroutine_suspended;
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            Segment$$ExternalSyntheticBUOutline1.m848m("StorageConnection has already been disposed.");
        }
    }

    private final void createParentDirectories(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
                return;
            }
            ZipFileSystem$$ExternalSyntheticBUOutline0.m852m("Unable to create parent directories of ", file);
        }
    }
}
