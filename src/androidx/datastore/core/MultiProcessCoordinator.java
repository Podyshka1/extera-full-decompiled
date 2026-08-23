package androidx.datastore.core;

import androidx.datastore.core.SharedCounter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.p025ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public final class MultiProcessCoordinator implements InterProcessCoordinator {
    public static final Companion Companion = new Companion(null);
    private static final String DEADLOCK_ERROR_MESSAGE = "Resource deadlock would occur";
    private static final long INITIAL_WAIT_MILLIS = 10;
    private static final long MAX_WAIT_MILLIS = RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS;
    private final String LOCK_ERROR_MESSAGE;
    private final String LOCK_SUFFIX;
    private final String VERSION_SUFFIX;
    private final CoroutineContext context;
    private final File file;
    private final Mutex inMemoryMutex;
    private final Lazy lazySharedCounter;
    private final Lazy lockFile$delegate;
    private final Flow updateNotifications;

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$lock$1 */
    static final class C05241 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C05241(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.lock(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$tryLock$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C05251 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05251(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.tryLock(null, this);
        }
    }

    public MultiProcessCoordinator(CoroutineContext context, File file) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        this.context = context;
        this.file = file;
        this.updateNotifications = MulticastFileObserver.Companion.observe(file);
        this.LOCK_SUFFIX = ".lock";
        this.VERSION_SUFFIX = ".version";
        this.LOCK_ERROR_MESSAGE = "fcntl failed: EAGAIN";
        this.inMemoryMutex = MutexKt.Mutex$default(false, 1, null);
        this.lockFile$delegate = LazyKt.lazy(new Function0() { // from class: androidx.datastore.core.MultiProcessCoordinator$lockFile$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final File invoke() throws IOException {
                MultiProcessCoordinator multiProcessCoordinator = this.this$0;
                File fileFileWithSuffix = multiProcessCoordinator.fileWithSuffix(multiProcessCoordinator.LOCK_SUFFIX);
                this.this$0.createIfNotExists(fileFileWithSuffix);
                return fileFileWithSuffix;
            }
        });
        this.lazySharedCounter = LazyKt.lazy(new Function0() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SharedCounter invoke() {
                SharedCounter.Factory factory = SharedCounter.Factory;
                factory.loadLib();
                final MultiProcessCoordinator multiProcessCoordinator = this.this$0;
                return factory.create$datastore_core_release(new Function0() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final File invoke() throws IOException {
                        MultiProcessCoordinator multiProcessCoordinator2 = multiProcessCoordinator;
                        File fileFileWithSuffix = multiProcessCoordinator2.fileWithSuffix(multiProcessCoordinator2.VERSION_SUFFIX);
                        multiProcessCoordinator.createIfNotExists(fileFileWithSuffix);
                        return fileFileWithSuffix;
                    }
                });
            }
        });
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Flow getUpdateNotifications() {
        return this.updateNotifications;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb A[Catch: all -> 0x00bf, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00bf, blocks: (B:42:0x00bb, B:56:0x00d9, B:57:0x00dc), top: B:78:0x0024, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d9 A[Catch: all -> 0x00bf, TRY_ENTER, TryCatch #7 {all -> 0x00bf, blocks: (B:42:0x00bb, B:56:0x00d9, B:57:0x00dc), top: B:78:0x0024, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object lock(Function1 function1, Continuation continuation) throws Throwable {
        C05241 c05241;
        MultiProcessCoordinator multiProcessCoordinator;
        FileOutputStream fileOutputStream;
        Throwable th;
        Function1 function12;
        java.io.Closeable closeable;
        ?? r2;
        ?? r10;
        FileLock fileLock;
        FileLock fileLock2;
        Object objInvoke;
        java.io.Closeable closeable2;
        ?? r102;
        ?? r0;
        if (continuation instanceof C05241) {
            c05241 = (C05241) continuation;
            int i = c05241.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05241.label = i - Integer.MIN_VALUE;
            } else {
                c05241 = new C05241(continuation);
            }
        }
        ?? r103 = c05241.result;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05241.label;
        try {
            try {
                try {
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(r103);
                        Mutex mutex = this.inMemoryMutex;
                        c05241.L$0 = this;
                        c05241.L$1 = function1;
                        c05241.L$2 = mutex;
                        c05241.label = 1;
                        if (mutex.lock(null, c05241) != coroutine_suspended) {
                            multiProcessCoordinator = this;
                            r103 = mutex;
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            fileLock = (FileLock) c05241.L$2;
                            closeable2 = (java.io.Closeable) c05241.L$1;
                            Mutex mutex2 = (Mutex) c05241.L$0;
                            try {
                                ResultKt.throwOnFailure(r103);
                                r0 = mutex2;
                                r102 = r103;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                try {
                                    CloseableKt.closeFinally(closeable2, null);
                                    r0.unlock(null);
                                    return r102;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r103 = r0;
                                    r103.unlock(null);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (fileLock != null) {
                                }
                                throw th;
                            }
                        }
                        closeable = (java.io.Closeable) c05241.L$2;
                        r2 = (Mutex) c05241.L$1;
                        function12 = (Function1) c05241.L$0;
                        try {
                            ResultKt.throwOnFailure(r103);
                            r2 = r2;
                            r10 = r103;
                            fileLock2 = (FileLock) r10;
                        } catch (Throwable th4) {
                            th = th4;
                            fileLock = null;
                            if (fileLock != null) {
                            }
                            throw th;
                        }
                        try {
                            c05241.L$0 = r2;
                            c05241.L$1 = closeable;
                            c05241.L$2 = fileLock2;
                            c05241.label = 3;
                            objInvoke = function12.invoke(c05241);
                            if (objInvoke != coroutine_suspended) {
                                closeable2 = closeable;
                                fileLock = fileLock2;
                                r102 = objInvoke;
                                r0 = r2;
                                if (fileLock != null) {
                                }
                                CloseableKt.closeFinally(closeable2, null);
                                r0.unlock(null);
                                return r102;
                            }
                            return coroutine_suspended;
                        } catch (Throwable th5) {
                            fileLock = fileLock2;
                            th = th5;
                            if (fileLock != null) {
                            }
                            throw th;
                        }
                    }
                    Mutex mutex3 = (Mutex) c05241.L$2;
                    Function1 function13 = (Function1) c05241.L$1;
                    multiProcessCoordinator = (MultiProcessCoordinator) c05241.L$0;
                    ResultKt.throwOnFailure(r103);
                    r103 = mutex3;
                    function1 = function13;
                    Companion companion = Companion;
                    c05241.L$0 = function1;
                    c05241.L$1 = r103;
                    c05241.L$2 = fileOutputStream;
                    c05241.label = 2;
                    Object exclusiveFileLockWithRetryIfDeadlock = companion.getExclusiveFileLockWithRetryIfDeadlock(fileOutputStream, c05241);
                    if (exclusiveFileLockWithRetryIfDeadlock != coroutine_suspended) {
                        function12 = function1;
                        closeable = fileOutputStream;
                        r2 = r103;
                        r10 = exclusiveFileLockWithRetryIfDeadlock;
                        fileLock2 = (FileLock) r10;
                        c05241.L$0 = r2;
                        c05241.L$1 = closeable;
                        c05241.L$2 = fileLock2;
                        c05241.label = 3;
                        objInvoke = function12.invoke(c05241);
                        if (objInvoke != coroutine_suspended) {
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th6) {
                    th = th6;
                    fileLock = null;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
                fileOutputStream = new FileOutputStream(multiProcessCoordinator.getLockFile());
            } catch (Throwable th7) {
                th = th7;
                r103.unlock(null);
                throw th;
            }
        } catch (Throwable th8) {
            r103 = c05241;
            try {
                throw th8;
            } catch (Throwable th9) {
                CloseableKt.closeFinally(coroutine_suspended, th8);
                throw th9;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e6 A[Catch: all -> 0x00ea, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00ea, blocks: (B:59:0x00e6, B:71:0x0101, B:72:0x0104), top: B:91:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0101 A[Catch: all -> 0x00ea, TRY_ENTER, TryCatch #7 {all -> 0x00ea, blocks: (B:59:0x00e6, B:71:0x0101, B:72:0x0104), top: B:91:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0110  */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.datastore.core.MultiProcessCoordinator$tryLock$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r5v0, types: [int, java.io.Closeable] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object tryLock(Function2 function2, Continuation continuation) throws Throwable {
        ?? c05251;
        String message;
        FileLock fileLockTryLock;
        FileLock fileLock;
        Mutex mutex;
        boolean z;
        java.io.Closeable closeable;
        Mutex mutex2;
        boolean z2;
        ?? r2 = function2;
        if (continuation instanceof C05251) {
            C05251 c052512 = (C05251) continuation;
            int i = c052512.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c052512.label = i - Integer.MIN_VALUE;
                c05251 = c052512;
            } else {
                c05251 = new C05251(continuation);
            }
        }
        Object objInvoke = c05251.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r5 = c05251.label;
        try {
            try {
                if (r5 != 0) {
                    if (r5 == 1) {
                        z2 = c05251.Z$0;
                        mutex2 = (Mutex) c05251.L$0;
                        ResultKt.throwOnFailure(objInvoke);
                        if (z2) {
                            mutex2.unlock(null);
                        }
                        return objInvoke;
                    }
                    if (r5 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    z = c05251.Z$0;
                    fileLock = (FileLock) c05251.L$2;
                    closeable = (java.io.Closeable) c05251.L$1;
                    mutex = (Mutex) c05251.L$0;
                    try {
                        ResultKt.throwOnFailure(objInvoke);
                        if (fileLock != null) {
                            fileLock.release();
                        }
                        CloseableKt.closeFinally(closeable, null);
                        if (z) {
                            mutex.unlock(null);
                        }
                        return objInvoke;
                    } catch (Throwable th) {
                        th = th;
                        if (fileLock != null) {
                        }
                        throw th;
                    }
                }
                ResultKt.throwOnFailure(objInvoke);
                Mutex mutex3 = this.inMemoryMutex;
                boolean zTryLock = mutex3.tryLock(null);
                try {
                    if (!zTryLock) {
                        Boolean boolBoxBoolean = Boxing.boxBoolean(false);
                        c05251.L$0 = mutex3;
                        c05251.Z$0 = zTryLock;
                        c05251.label = 1;
                        objInvoke = r2.invoke(boolBoxBoolean, c05251);
                        if (objInvoke != coroutine_suspended) {
                            mutex2 = mutex3;
                            z2 = zTryLock;
                            if (z2) {
                            }
                            return objInvoke;
                        }
                    } else {
                        FileInputStream fileInputStream = new FileInputStream(getLockFile());
                        try {
                            try {
                                fileLockTryLock = fileInputStream.getChannel().tryLock(0L, Long.MAX_VALUE, true);
                            } catch (Throwable th2) {
                                th = th2;
                                fileLock = null;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (IOException e) {
                            String message2 = e.getMessage();
                            if ((message2 == null || !StringsKt.startsWith$default(message2, this.LOCK_ERROR_MESSAGE, false, 2, (Object) null)) && ((message = e.getMessage()) == null || !StringsKt.startsWith$default(message, DEADLOCK_ERROR_MESSAGE, false, 2, (Object) null))) {
                                throw e;
                            }
                            fileLockTryLock = null;
                        }
                        try {
                            Boolean boolBoxBoolean2 = Boxing.boxBoolean(fileLockTryLock != null);
                            c05251.L$0 = mutex3;
                            c05251.L$1 = fileInputStream;
                            c05251.L$2 = fileLockTryLock;
                            c05251.Z$0 = zTryLock;
                            c05251.label = 2;
                            objInvoke = r2.invoke(boolBoxBoolean2, c05251);
                            if (objInvoke != coroutine_suspended) {
                                mutex = mutex3;
                                z = zTryLock;
                                closeable = fileInputStream;
                                fileLock = fileLockTryLock;
                                if (fileLock != null) {
                                }
                                CloseableKt.closeFinally(closeable, null);
                                if (z) {
                                }
                                return objInvoke;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileLock = fileLockTryLock;
                            if (fileLock != null) {
                            }
                            throw th;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th4) {
                    th = th4;
                    c05251 = mutex3;
                    r2 = zTryLock;
                    if (r2 != 0) {
                        c05251.unlock(null);
                    }
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            ?? r4 = c05251;
            try {
                throw th6;
            } catch (Throwable th7) {
                try {
                    CloseableKt.closeFinally(r5, th6);
                    throw th7;
                } catch (Throwable th8) {
                    th = th8;
                    r2 = r2;
                    c05251 = r4;
                    if (r2 != 0) {
                    }
                    throw th;
                }
            }
        }
    }

    private final File getLockFile() {
        return (File) this.lockFile$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedCounter getSharedCounter() {
        return (SharedCounter) this.lazySharedCounter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File fileWithSuffix(String str) {
        return new File(this.file.getAbsolutePath() + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createIfNotExists(File file) throws IOException {
        createParentDirectories(file);
        if (file.exists()) {
            return;
        }
        file.createNewFile();
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

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object getVersion(Continuation continuation) {
        if (this.lazySharedCounter.isInitialized()) {
            return Boxing.boxInt(getSharedCounter().getValue());
        }
        return BuildersKt.withContext(this.context, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), continuation);
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object incrementAndGetVersion(Continuation continuation) {
        if (this.lazySharedCounter.isInitialized()) {
            return Boxing.boxInt(getSharedCounter().incrementAndGetValue());
        }
        return BuildersKt.withContext(this.context, new C0522xb55e9682(this, null), continuation);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:27:0x0080). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object getExclusiveFileLockWithRetryIfDeadlock(FileOutputStream fileOutputStream, Continuation continuation) throws IOException {
            C0521xe413854a c0521xe413854a;
            long j;
            C0521xe413854a c0521xe413854a2;
            if (continuation instanceof C0521xe413854a) {
                c0521xe413854a = (C0521xe413854a) continuation;
                int i = c0521xe413854a.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0521xe413854a.label = i - Integer.MIN_VALUE;
                } else {
                    c0521xe413854a = new C0521xe413854a(this, continuation);
                }
            }
            Object obj = c0521xe413854a.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = c0521xe413854a.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = c0521xe413854a.J$0;
                fileOutputStream = (FileOutputStream) c0521xe413854a.L$0;
                ResultKt.throwOnFailure(obj);
                c0521xe413854a2 = c0521xe413854a;
                j *= (long) 2;
                if (j > MultiProcessCoordinator.MAX_WAIT_MILLIS) {
                    try {
                    } catch (IOException e) {
                        String message = e.getMessage();
                        if (message == null || !StringsKt.contains$default((CharSequence) message, (CharSequence) MultiProcessCoordinator.DEADLOCK_ERROR_MESSAGE, false, 2, (Object) null)) {
                            throw e;
                        }
                        c0521xe413854a2.L$0 = fileOutputStream;
                        c0521xe413854a2.J$0 = j;
                        c0521xe413854a2.label = 1;
                        if (DelayKt.delay(j, c0521xe413854a2) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    FileLock fileLockLock = fileOutputStream.getChannel().lock(0L, Long.MAX_VALUE, false);
                    Intrinsics.checkNotNullExpressionValue(fileLockLock, "lockFileStream.getChanne…LUE, /* shared= */ false)");
                    return fileLockLock;
                }
                FileLock fileLockLock2 = fileOutputStream.getChannel().lock(0L, Long.MAX_VALUE, false);
                Intrinsics.checkNotNullExpressionValue(fileLockLock2, "lockFileStream.getChanne…LUE, /* shared= */ false)");
                return fileLockLock2;
            }
            ResultKt.throwOnFailure(obj);
            j = MultiProcessCoordinator.INITIAL_WAIT_MILLIS;
            c0521xe413854a2 = c0521xe413854a;
            if (j > MultiProcessCoordinator.MAX_WAIT_MILLIS) {
            }
        }
    }
}
