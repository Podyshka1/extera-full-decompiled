package androidx.datastore.core;

import androidx.datastore.core.SharedCounter;
import com.android.dx.io.Opcodes;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.ZipFileSystem$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\r\u001a\u00020\f*\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\f*\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ4\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00102\u001c\u0010\u0014\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011H\u0096@¢\u0006\u0004\b\u0015\u0010\u0016J:\u0010\u0019\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00102\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0017H\u0096@¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001c\u001a\u00020\u001bH\u0096@¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001bH\u0096@¢\u0006\u0004\b\u001e\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001fR\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0005\u0010 \u001a\u0004\b!\u0010\"R \u0010$\u001a\b\u0012\u0004\u0012\u00020\f0#8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010)R\u0014\u0010+\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010)R\u0014\u0010-\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001b\u00102\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u0010\"R\u001a\u00105\u001a\b\u0012\u0004\u0012\u000204038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00100R\u001b\u0010:\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b6\u00107*\u0004\b8\u00109¨\u0006<"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator;", "Landroidx/datastore/core/InterProcessCoordinator;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/io/File;", "file", "<init>", "(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V", _UrlKt.FRAGMENT_ENCODE_SET, "suffix", "fileWithSuffix", "(Ljava/lang/String;)Ljava/io/File;", _UrlKt.FRAGMENT_ENCODE_SET, "createIfNotExists", "(Ljava/io/File;)V", "createParentDirectories", "T", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "block", "lock", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function2;", _UrlKt.FRAGMENT_ENCODE_SET, "tryLock", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "getVersion", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "incrementAndGetVersion", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "Lkotlinx/coroutines/flow/Flow;", "updateNotifications", "Lkotlinx/coroutines/flow/Flow;", "getUpdateNotifications", "()Lkotlinx/coroutines/flow/Flow;", "LOCK_SUFFIX", "Ljava/lang/String;", "VERSION_SUFFIX", "LOCK_ERROR_MESSAGE", "Lkotlinx/coroutines/sync/Mutex;", "inMemoryMutex", "Lkotlinx/coroutines/sync/Mutex;", "lockFile$delegate", "Lkotlin/Lazy;", "getLockFile", "lockFile", "Lkotlin/Lazy;", "Landroidx/datastore/core/SharedCounter;", "lazySharedCounter", "getSharedCounter", "()Landroidx/datastore/core/SharedCounter;", "getSharedCounter$delegate", "(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/Object;", "sharedCounter", "Companion", "datastore-core_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMultiProcessCoordinator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 MutexUtils.kt\nandroidx/datastore/core/MutexUtilsKt\n*L\n1#1,205:1\n159#1,8:226\n159#1,8:234\n120#2,10:206\n32#3,10:216\n*S KotlinDebug\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n*L\n99#1:226,8\n106#1:234,8\n43#1:206,10\n60#1:216,10\n*E\n"})
public final class MultiProcessCoordinator implements InterProcessCoordinator {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String DEADLOCK_ERROR_MESSAGE = "Resource deadlock would occur";
    private static final long INITIAL_WAIT_MILLIS = 10;
    private static final long MAX_WAIT_MILLIS = 60000;
    private final CoroutineContext context;
    private final File file;
    private final Flow<Unit> updateNotifications;
    private final String LOCK_SUFFIX = ".lock";
    private final String VERSION_SUFFIX = ".version";
    private final String LOCK_ERROR_MESSAGE = "fcntl failed: EAGAIN";
    private final Mutex inMemoryMutex = MutexKt.Mutex$default(false, 1, null);

    /* JADX INFO: renamed from: lockFile$delegate, reason: from kotlin metadata */
    private final Lazy lockFile = LazyKt.lazy(new Function0<File>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lockFile$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final File invoke() throws IOException {
            MultiProcessCoordinator multiProcessCoordinator = this.this$0;
            File fileFileWithSuffix = multiProcessCoordinator.fileWithSuffix(multiProcessCoordinator.LOCK_SUFFIX);
            this.this$0.createIfNotExists(fileFileWithSuffix);
            return fileFileWithSuffix;
        }
    });
    private final Lazy<SharedCounter> lazySharedCounter = LazyKt.lazy(new Function0<SharedCounter>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final SharedCounter invoke() {
            SharedCounter.Companion companion = SharedCounter.INSTANCE;
            companion.loadLib();
            final MultiProcessCoordinator multiProcessCoordinator = this.this$0;
            return companion.create$datastore_core_release(new Function0<File>() { // from class: androidx.datastore.core.MultiProcessCoordinator$lazySharedCounter$1.1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
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

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$lock$1 */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.MultiProcessCoordinator", m873f = "MultiProcessCoordinator.android.kt", m874i = {0, 0, 0, 1, 1, 2, 2}, m875l = {Opcodes.DIV_INT_LIT16, 47, 48}, m876m = "lock", m877n = {"this", "block", "$this$withLock_u24default$iv", "block", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv", "lock"}, m878s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$2"})
    public static final class C05241<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C05241(Continuation<? super C05241> continuation) {
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
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.MultiProcessCoordinator", m873f = "MultiProcessCoordinator.android.kt", m874i = {0, 0, 1, 1, 1}, m875l = {62, 87}, m876m = "tryLock", m877n = {"$this$withTryLock_u24default$iv", "locked$iv", "$this$withTryLock_u24default$iv", "lock", "locked$iv"}, m878s = {"L$0", "Z$0", "L$0", "L$2", "Z$0"})
    public static final class C05251<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C05251(Continuation<? super C05251> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.tryLock(null, this);
        }
    }

    public MultiProcessCoordinator(CoroutineContext coroutineContext, File file) {
        this.context = coroutineContext;
        this.file = file;
        this.updateNotifications = MulticastFileObserver.INSTANCE.observe(file);
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Flow<Unit> getUpdateNotifications() {
        return this.updateNotifications;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b9 A[Catch: all -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00bd, blocks: (B:41:0x00b9, B:55:0x00d7, B:56:0x00da), top: B:75:0x0024, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d7 A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #6 {all -> 0x00bd, blocks: (B:41:0x00b9, B:55:0x00d7, B:56:0x00da), top: B:75:0x0024, outer: #1 }] */
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
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v23, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.io.Closeable, java.lang.Object, kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super T>, ? extends java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> Object lock(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) throws Throwable {
        C05241 c05241;
        ?? r9;
        FileOutputStream fileOutputStream;
        Throwable th;
        ?? r10;
        ?? r8;
        ?? r2;
        java.io.Closeable closeable;
        FileLock fileLock;
        FileLock fileLock2;
        Object objInvoke;
        ?? r0;
        ?? r102;
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
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
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
                        Object objLock = mutex.lock(null, c05241);
                        r9 = function1;
                        r103 = mutex;
                        if (objLock != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            fileLock = (FileLock) c05241.L$2;
                            closeable = (java.io.Closeable) c05241.L$1;
                            Mutex mutex2 = (Mutex) c05241.L$0;
                            try {
                                ResultKt.throwOnFailure(r103);
                                r0 = mutex2;
                                r102 = r103;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                try {
                                    CloseableKt.closeFinally(closeable, null);
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
                        r8 = (Mutex) c05241.L$1;
                        Function1 function12 = (Function1) c05241.L$0;
                        try {
                            ResultKt.throwOnFailure(r103);
                            r2 = function12;
                            r8 = r8;
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
                            c05241.L$0 = r8;
                            c05241.L$1 = closeable;
                            c05241.L$2 = fileLock2;
                            c05241.label = 3;
                            objInvoke = r2.invoke(c05241);
                            if (objInvoke != coroutine_suspended) {
                                r0 = r8;
                                fileLock = fileLock2;
                                r102 = objInvoke;
                                if (fileLock != null) {
                                }
                                CloseableKt.closeFinally(closeable, null);
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
                    boolean z = (Function1<? super Continuation<? super T>, ? extends Object>) ((Function1) c05241.L$1);
                    MultiProcessCoordinator multiProcessCoordinator = (MultiProcessCoordinator) c05241.L$0;
                    ResultKt.throwOnFailure(r103);
                    r103 = mutex3;
                    this = multiProcessCoordinator;
                    r9 = z;
                    Companion companion = INSTANCE;
                    c05241.L$0 = r9;
                    c05241.L$1 = r103;
                    c05241.L$2 = fileOutputStream;
                    c05241.label = 2;
                    Object exclusiveFileLockWithRetryIfDeadlock = companion.getExclusiveFileLockWithRetryIfDeadlock(fileOutputStream, c05241);
                    if (exclusiveFileLockWithRetryIfDeadlock != coroutine_suspended) {
                        ?? r7 = r103;
                        r10 = exclusiveFileLockWithRetryIfDeadlock;
                        r8 = r7;
                        r2 = r9;
                        closeable = fileOutputStream;
                        fileLock2 = (FileLock) r10;
                        c05241.L$0 = r8;
                        c05241.L$1 = closeable;
                        c05241.L$2 = fileLock2;
                        c05241.label = 3;
                        objInvoke = r2.invoke(c05241);
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
                fileOutputStream = new FileOutputStream(this.getLockFile());
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
                CloseableKt.closeFinally(function1, th8);
                throw th9;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e4 A[Catch: all -> 0x00e8, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00e8, blocks: (B:60:0x00e4, B:74:0x00ff, B:75:0x0102), top: B:97:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ff A[Catch: all -> 0x00e8, TRY_ENTER, TryCatch #6 {all -> 0x00e8, blocks: (B:60:0x00e4, B:74:0x00ff, B:75:0x0102), top: B:97:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v10, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v14, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.datastore.core.MultiProcessCoordinator$tryLock$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.io.Closeable, java.lang.Object] */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> Object tryLock(Function2<? super Boolean, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        ?? c05251;
        ?? r1;
        ?? r2;
        FileLock fileLock;
        String message;
        FileLock fileLockTryLock;
        java.io.Closeable closeable;
        ?? r22;
        ?? r12;
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
        Object objInvoke = ((C05251) c05251).result;
        ?? coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ((C05251) c05251).label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                Mutex mutex = this.inMemoryMutex;
                boolean zTryLock = mutex.tryLock(null);
                try {
                    if (!zTryLock) {
                        Boolean boolBoxBoolean = Boxing.boxBoolean(false);
                        ((C05251) c05251).L$0 = mutex;
                        ((C05251) c05251).Z$0 = zTryLock;
                        ((C05251) c05251).label = 1;
                        objInvoke = function2.invoke(boolBoxBoolean, (Object) c05251);
                        if (objInvoke != coroutine_suspended) {
                            r22 = mutex;
                            r12 = zTryLock;
                            if (r12 != 0) {
                            }
                            return objInvoke;
                        }
                    } else {
                        FileInputStream fileInputStream = new FileInputStream(getLockFile());
                        try {
                            try {
                                fileLockTryLock = fileInputStream.getChannel().tryLock(0L, LongCompanionObject.MAX_VALUE, true);
                            } catch (IOException e) {
                                String message2 = e.getMessage();
                                if ((message2 == null || !StringsKt.startsWith$default(message2, this.LOCK_ERROR_MESSAGE, false, 2, (Object) null)) && ((message = e.getMessage()) == null || !StringsKt.startsWith$default(message, DEADLOCK_ERROR_MESSAGE, false, 2, (Object) null))) {
                                    throw e;
                                }
                                fileLockTryLock = null;
                            }
                            try {
                                Boolean boolBoxBoolean2 = Boxing.boxBoolean(fileLockTryLock != null);
                                ((C05251) c05251).L$0 = mutex;
                                ((C05251) c05251).L$1 = fileInputStream;
                                ((C05251) c05251).L$2 = fileLockTryLock;
                                ((C05251) c05251).Z$0 = zTryLock;
                                ((C05251) c05251).label = 2;
                                objInvoke = function2.invoke(boolBoxBoolean2, (Object) c05251);
                                if (objInvoke != coroutine_suspended) {
                                    fileLock = fileLockTryLock;
                                    c05251 = mutex;
                                    r1 = zTryLock;
                                    closeable = fileInputStream;
                                    if (fileLock != null) {
                                    }
                                    CloseableKt.closeFinally(closeable, null);
                                    if (r1 != 0) {
                                    }
                                    return objInvoke;
                                }
                            } catch (Throwable th) {
                                th = th;
                                fileLock = fileLockTryLock;
                                if (fileLock != null) {
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileLock = null;
                            if (fileLock != null) {
                            }
                            throw th;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    r2 = mutex;
                    r1 = zTryLock;
                }
            } else if (i2 == 1) {
                r1 = ((C05251) c05251).Z$0;
                r2 = (Mutex) ((C05251) c05251).L$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    r12 = r1;
                    r22 = r2;
                    if (r12 != 0) {
                        r22.unlock(null);
                    }
                    return objInvoke;
                } catch (Throwable th4) {
                    th = th4;
                }
            } else {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                boolean z = ((C05251) c05251).Z$0;
                fileLock = (FileLock) ((C05251) c05251).L$2;
                closeable = (java.io.Closeable) ((C05251) c05251).L$1;
                Mutex mutex2 = (Mutex) ((C05251) c05251).L$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    r1 = z;
                    c05251 = mutex2;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    try {
                        CloseableKt.closeFinally(closeable, null);
                        if (r1 != 0) {
                            ((Mutex) c05251).unlock(null);
                        }
                        return objInvoke;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
            }
            r2 = c05251;
            if (r1 != 0) {
                r2.unlock(null);
            }
            throw th;
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                try {
                    CloseableKt.closeFinally(coroutine_suspended, th7);
                    throw th8;
                } catch (Throwable th9) {
                    th = th9;
                    r1 = this;
                }
            }
        }
    }

    private final File getLockFile() {
        return (File) this.lockFile.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedCounter getSharedCounter() {
        return this.lazySharedCounter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File fileWithSuffix(String suffix) {
        return new File(this.file.getAbsolutePath() + suffix);
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
            ZipFileSystem$$ExternalSyntheticBUOutline0.m929m("Unable to create parent directories of ", file);
        }
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object getVersion(Continuation<? super Integer> continuation) {
        if (this.lazySharedCounter.isInitialized()) {
            return Boxing.boxInt(getSharedCounter().getValue());
        }
        return BuildersKt.withContext(this.context, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), continuation);
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object incrementAndGetVersion(Continuation<? super Integer> continuation) {
        if (this.lazySharedCounter.isInitialized()) {
            return Boxing.boxInt(getSharedCounter().incrementAndGetValue());
        }
        return BuildersKt.withContext(this.context, new C0522xb55e9682(this, null), continuation);
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0082@¢\u0006\u0002\u0010\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "DEADLOCK_ERROR_MESSAGE", _UrlKt.FRAGMENT_ENCODE_SET, "INITIAL_WAIT_MILLIS", _UrlKt.FRAGMENT_ENCODE_SET, "MAX_WAIT_MILLIS", "getExclusiveFileLockWithRetryIfDeadlock", "Ljava/nio/channels/FileLock;", "lockFileStream", "Ljava/io/FileOutputStream;", "(Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0075 -> B:27:0x0078). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object getExclusiveFileLockWithRetryIfDeadlock(FileOutputStream fileOutputStream, Continuation<? super FileLock> continuation) throws IOException {
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
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j = c0521xe413854a.J$0;
                fileOutputStream = (FileOutputStream) c0521xe413854a.L$0;
                ResultKt.throwOnFailure(obj);
                c0521xe413854a2 = c0521xe413854a;
                j *= 2;
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
                    return fileOutputStream.getChannel().lock(0L, LongCompanionObject.MAX_VALUE, false);
                }
                return fileOutputStream.getChannel().lock(0L, LongCompanionObject.MAX_VALUE, false);
            }
            ResultKt.throwOnFailure(obj);
            j = MultiProcessCoordinator.INITIAL_WAIT_MILLIS;
            c0521xe413854a2 = c0521xe413854a;
            if (j > MultiProcessCoordinator.MAX_WAIT_MILLIS) {
            }
        }
    }
}
