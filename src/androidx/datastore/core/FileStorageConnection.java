package androidx.datastore.core;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class FileStorageConnection implements StorageConnection {
    private final AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final File file;
    private final Function0 onClose;
    private final Serializer serializer;
    private final Mutex transactionMutex;

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$readScope$1 */
    static final class C05181 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05181(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileStorageConnection.this.readScope(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$writeScope$1 */
    static final class C05191 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C05191(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FileStorageConnection.this.writeScope(null, this);
        }
    }

    public FileStorageConnection(File file, Serializer serializer, InterProcessCoordinator coordinator, Function0 onClose) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        this.file = file;
        this.serializer = serializer;
        this.coordinator = coordinator;
        this.onClose = onClose;
        this.closed = new AtomicBoolean(false);
        this.transactionMutex = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // androidx.datastore.core.StorageConnection
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007b A[Catch: all -> 0x007c, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x007c, blocks: (B:31:0x007b, B:40:0x008c, B:39:0x0089, B:36:0x0084), top: B:52:0x0022, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.FileStorageConnection$readScope$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.FileStorageConnection] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlin.jvm.functions.Function3] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object readScope(Function3 function3, Continuation continuation) throws Throwable {
        ?? c05181;
        Throwable th;
        Closeable closeable;
        ?? r8;
        ?? r0;
        if (continuation instanceof C05181) {
            C05181 c051812 = (C05181) continuation;
            int i = c051812.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c051812.label = i - Integer.MIN_VALUE;
                c05181 = c051812;
            } else {
                c05181 = new C05181(continuation);
            }
        }
        Object obj = c05181.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05181.label;
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function3 = c05181.Z$0;
                closeable = (Closeable) c05181.L$1;
                c05181 = (FileStorageConnection) c05181.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    r0 = c05181;
                    r8 = function3;
                    try {
                        closeable.close();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    if (th == null) {
                        throw th;
                    }
                    if (r8 != 0) {
                        Mutex.DefaultImpls.unlock$default(r0.transactionMutex, null, 1, null);
                    }
                    return obj;
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
            ResultKt.throwOnFailure(obj);
            checkNotClosed();
            boolean zTryLock$default = Mutex.DefaultImpls.tryLock$default(this.transactionMutex, null, 1, null);
            try {
                FileReadScope fileReadScope = new FileReadScope(this.file, this.serializer);
                try {
                    Boolean boolBoxBoolean = Boxing.boxBoolean(zTryLock$default);
                    c05181.L$0 = this;
                    c05181.L$1 = fileReadScope;
                    c05181.Z$0 = zTryLock$default;
                    c05181.label = 1;
                    Object objInvoke = function3.invoke(fileReadScope, boolBoxBoolean, c05181);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = objInvoke;
                    r8 = zTryLock$default;
                    r0 = this;
                    closeable = fileReadScope;
                    closeable.close();
                    th = null;
                    if (th == null) {
                    }
                } catch (Throwable th5) {
                    th = th5;
                    function3 = zTryLock$default;
                    c05181 = this;
                    closeable = fileReadScope;
                    closeable.close();
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                function3 = zTryLock$default;
                c05181 = this;
                if (function3 != 0) {
                }
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            if (function3 != 0) {
                Mutex.DefaultImpls.unlock$default(c05181.transactionMutex, null, 1, null);
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bb A[Catch: all -> 0x00f0, IOException -> 0x00f2, TRY_ENTER, TryCatch #0 {all -> 0x00f0, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:46:0x00f5, B:49:0x00fd, B:58:0x010c, B:60:0x0112, B:61:0x0115, B:56:0x010a, B:55:0x0107, B:24:0x007a, B:25:0x0096), top: B:64:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd A[Catch: all -> 0x00f0, IOException -> 0x00f2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00f0, blocks: (B:35:0x00bb, B:37:0x00c1, B:40:0x00ca, B:41:0x00ef, B:46:0x00f5, B:49:0x00fd, B:58:0x010c, B:60:0x0112, B:61:0x0115, B:56:0x010a, B:55:0x0107, B:24:0x007a, B:25:0x0096), top: B:64:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int, kotlinx.coroutines.sync.Mutex] */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object writeScope(Function2 function2, Continuation continuation) throws IOException {
        C05191 c05191;
        File file;
        FileStorageConnection fileStorageConnection;
        Mutex mutex;
        FileWriteScope fileWriteScope;
        Throwable th;
        Closeable closeable;
        File file2;
        FileStorageConnection fileStorageConnection2;
        if (continuation instanceof C05191) {
            c05191 = (C05191) continuation;
            int i = c05191.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05191.label = i - Integer.MIN_VALUE;
            } else {
                c05191 = new C05191(continuation);
            }
        }
        Object obj = c05191.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = c05191.label;
        try {
            try {
            } catch (Throwable th2) {
                r2.unlock(null);
                throw th2;
            }
        } catch (IOException e) {
            e = e;
            file = coroutine_suspended;
        }
        try {
            try {
                if (r2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    checkNotClosed();
                    createParentDirectories(this.file);
                    Mutex mutex2 = this.transactionMutex;
                    c05191.L$0 = this;
                    c05191.L$1 = function2;
                    c05191.L$2 = mutex2;
                    c05191.label = 1;
                    if (mutex2.lock(null, c05191) != coroutine_suspended) {
                        fileStorageConnection = this;
                        mutex = mutex2;
                    }
                    return coroutine_suspended;
                }
                if (r2 != 1) {
                    if (r2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    closeable = (Closeable) c05191.L$3;
                    File file3 = (File) c05191.L$2;
                    mutex = (Mutex) c05191.L$1;
                    fileStorageConnection2 = (FileStorageConnection) c05191.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        file2 = file3;
                        Unit unit = Unit.INSTANCE;
                        try {
                            closeable.close();
                            th = null;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        if (th == null) {
                            throw th;
                        }
                        if (file2.exists() && !FileMoves_androidKt.atomicMoveTo(file2, fileStorageConnection2.file)) {
                            throw new IOException("Unable to rename " + file2 + " to " + fileStorageConnection2.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                        }
                        Unit unit2 = Unit.INSTANCE;
                        mutex.unlock(null);
                        return Unit.INSTANCE;
                    } catch (Throwable th4) {
                        th = th4;
                        try {
                            closeable.close();
                        } catch (Throwable th5) {
                            ExceptionsKt.addSuppressed(th, th5);
                        }
                        throw th;
                    }
                }
                Mutex mutex3 = (Mutex) c05191.L$2;
                Function2 function22 = (Function2) c05191.L$1;
                fileStorageConnection = (FileStorageConnection) c05191.L$0;
                ResultKt.throwOnFailure(obj);
                mutex = mutex3;
                function2 = function22;
                c05191.L$0 = fileStorageConnection;
                c05191.L$1 = mutex;
                c05191.L$2 = file;
                c05191.L$3 = fileWriteScope;
                c05191.label = 2;
                if (function2.invoke(fileWriteScope, c05191) != coroutine_suspended) {
                    file2 = file;
                    fileStorageConnection2 = fileStorageConnection;
                    closeable = fileWriteScope;
                    Unit unit3 = Unit.INSTANCE;
                    closeable.close();
                    th = null;
                    if (th == null) {
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th6) {
                th = th6;
                closeable = fileWriteScope;
                closeable.close();
                throw th;
            }
            fileWriteScope = new FileWriteScope(file, fileStorageConnection.serializer);
        } catch (IOException e2) {
            e = e2;
            if (file.exists()) {
                file.delete();
            }
            throw e;
        }
        file = new File(fileStorageConnection.file.getAbsolutePath() + ".tmp");
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("StorageConnection has already been disposed.");
        }
    }

    private final void createParentDirectories(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
                return;
            }
            throw new IOException("Unable to create parent directories of " + file);
        }
    }
}
