package androidx.datastore.core;

import androidx.datastore.core.Message;
import androidx.datastore.core.UpdatingDataContextElement;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaError;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 V*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0002VWBn\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012?\b\u0002\u0010\u0005\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00070\u0006\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u000e\u00103\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104JG\u00105\u001a\u0002H6\"\u0004\b\u0001\u001062\u0006\u00107\u001a\u0002082\u001c\u00109\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H60\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0:H\u0082@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010;J\u001c\u0010<\u001a\u00020\r2\f\u0010=\u001a\b\u0012\u0004\u0012\u00028\u000002H\u0082@¢\u0006\u0002\u0010>J\u000e\u0010?\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104J\u000e\u0010@\u001a\u00020\rH\u0082@¢\u0006\u0002\u00104J\u001c\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010C\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJ\u000e\u0010E\u001a\u00028\u0000H\u0082@¢\u0006\u0002\u00104J\u001c\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000G2\u0006\u00107\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJ\u001c\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000B2\u0006\u0010C\u001a\u000208H\u0082@¢\u0006\u0002\u0010DJI\u0010I\u001a\u00028\u000021\u0010J\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(K\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00072\u0006\u0010L\u001a\u00020MH\u0082@¢\u0006\u0002\u0010NJA\u0010O\u001a\u00028\u000021\u0010J\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(K\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0007H\u0096@¢\u0006\u0002\u0010PJ \u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00028\u00002\u0006\u0010S\u001a\u000208H\u0080@¢\u0006\u0004\bT\u0010UR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000!X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000%X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010&\u001a\f0'R\b\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000)8@X\u0080\u0084\u0002¢\u0006\f\u001a\u0004\b,\u0010-*\u0004\b*\u0010+R\u001a\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000)0/X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000201X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006X"}, d2 = {"Landroidx/datastore/core/DataStoreImpl;", "T", "Landroidx/datastore/core/DataStore;", "storage", "Landroidx/datastore/core/Storage;", "initTasksList", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "corruptionHandler", "Landroidx/datastore/core/CorruptionHandler;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V", "collectorCounter", _UrlKt.FRAGMENT_ENCODE_SET, "collectorJob", "Lkotlinx/coroutines/Job;", "collectorMutex", "Lkotlinx/coroutines/sync/Mutex;", "coordinator", "Landroidx/datastore/core/InterProcessCoordinator;", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "coordinator$delegate", "Lkotlin/Lazy;", "data", "Lkotlinx/coroutines/flow/Flow;", "getData", "()Lkotlinx/coroutines/flow/Flow;", "inMemoryCache", "Landroidx/datastore/core/DataStoreInMemoryCache;", "readAndInit", "Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "storageConnection", "Landroidx/datastore/core/StorageConnection;", "getStorageConnection$datastore_core_release$delegate", "(Landroidx/datastore/core/DataStoreImpl;)Ljava/lang/Object;", "getStorageConnection$datastore_core_release", "()Landroidx/datastore/core/StorageConnection;", "storageConnectionDelegate", "Lkotlin/Lazy;", "writeActor", "Landroidx/datastore/core/SimpleActor;", "Landroidx/datastore/core/Message$Update;", "decrementCollector", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doWithWriteFileLock", "R", "hasWriteFileLock", _UrlKt.FRAGMENT_ENCODE_SET, "block", "Lkotlin/Function1;", "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleUpdate", PluginsConstants.UPDATE, "(Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "incrementCollector", "readAndInitOrPropagateAndThrowFailure", "readDataAndUpdateCache", "Landroidx/datastore/core/State;", "requireLock", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readDataFromFileOrDefault", "readDataOrHandleCorruption", "Landroidx/datastore/core/Data;", "readState", "transformAndWrite", "transform", "t", "callerContext", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateData", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeData", "newData", "updateCache", "writeData$datastore_core_release", "(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "InitDataStore", "datastore-core_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,538:1\n120#2,10:539\n120#2,10:549\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/DataStoreImpl\n*L\n130#1:539,10\n148#1:549,10\n*E\n"})
public final class DataStoreImpl<T> implements DataStore<T> {
    private int collectorCounter;
    private Job collectorJob;
    private final CorruptionHandler<T> corruptionHandler;
    private final DataStoreImpl<T>.InitDataStore readAndInit;
    private final CoroutineScope scope;
    private final Storage<T> storage;
    private final SimpleActor<Message.Update<T>> writeActor;
    private final Flow<T> data = FlowKt.flow(new DataStoreImpl$data$1(this, null));
    private final Mutex collectorMutex = MutexKt.Mutex$default(false, 1, null);
    private final DataStoreInMemoryCache<T> inMemoryCache = new DataStoreInMemoryCache<>();
    private final Lazy<StorageConnection<T>> storageConnectionDelegate = LazyKt.lazy(new Function0<StorageConnection<T>>(this) { // from class: androidx.datastore.core.DataStoreImpl$storageConnectionDelegate$1
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
            this.this$0 = this;
        }

        @Override // kotlin.jvm.functions.Function0
        public final StorageConnection<T> invoke() {
            return ((DataStoreImpl) this.this$0).storage.createConnection();
        }
    });

    /* JADX INFO: renamed from: coordinator$delegate, reason: from kotlin metadata */
    private final Lazy coordinator = LazyKt.lazy(new Function0<InterProcessCoordinator>(this) { // from class: androidx.datastore.core.DataStoreImpl$coordinator$2
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
            this.this$0 = this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final InterProcessCoordinator invoke() {
            return this.this$0.getStorageConnection$datastore_core_release().getCoordinator();
        }
    });

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$decrementCollector$1 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl", m873f = "DataStoreImpl.kt", m874i = {0, 0}, m875l = {544}, m876m = "decrementCollector", m877n = {"this", "$this$withLock_u24default$iv"}, m878s = {"L$0", "L$1"})
    public static final class C05001 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05001(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05001> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.decrementCollector(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$handleUpdate$1 */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl", m873f = "DataStoreImpl.kt", m874i = {1, 1}, m875l = {237, 243, 246}, m876m = "handleUpdate", m877n = {PluginsConstants.UPDATE, "$this$handleUpdate_u24lambda_u242"}, m878s = {"L$0", "L$1"})
    public static final class C05021 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05021(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05021> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.handleUpdate(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$incrementCollector$1 */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl", m873f = "DataStoreImpl.kt", m874i = {0, 0}, m875l = {544}, m876m = "incrementCollector", m877n = {"this", "$this$withLock_u24default$iv"}, m878s = {"L$0", "L$1"})
    public static final class C05031 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05031(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05031> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.incrementCollector(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl", m873f = "DataStoreImpl.kt", m874i = {0, 1, 1}, m875l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_DISCONNECTED}, m876m = "readAndInitOrPropagateAndThrowFailure", m877n = {"this", "this", "preReadVersion"}, m878s = {"L$0", "L$0", "I$0"})
    public static final class C05051 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05051(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05051> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readAndInitOrPropagateAndThrowFailure(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1 */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl", m873f = "DataStoreImpl.kt", m874i = {0, 0, 0, 1, 2}, m875l = {287, 296, 304}, m876m = "readDataAndUpdateCache", m877n = {"this", "currentState", "requireLock", "this", "this"}, m878s = {"L$0", "L$1", "Z$0", "L$0", "L$0"})
    public static final class C05061 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05061(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05061> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataAndUpdateCache(false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$1 */
    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl", m873f = "DataStoreImpl.kt", m874i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 5}, m875l = {365, 366, 368, 369, 380, 384}, m876m = "readDataOrHandleCorruption", m877n = {"this", "hasWriteFileLock", "this", "hasWriteFileLock", "this", "hasWriteFileLock", "this", "hasWriteFileLock", "this", "ex", "newData", "hasWriteFileLock", "ex", "newData", "version"}, m878s = {"L$0", "Z$0", "L$0", "Z$0", "L$0", "Z$0", "L$0", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2"})
    public static final class C05091 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05091(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05091> continuation) {
            super(continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataOrHandleCorruption(false, this);
        }
    }

    public DataStoreImpl(Storage<T> storage, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> list, CorruptionHandler<T> corruptionHandler, CoroutineScope coroutineScope) {
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = coroutineScope;
        this.readAndInit = new InitDataStore(list);
        this.writeActor = new SimpleActor<>(coroutineScope, new Function1<Throwable, Unit>(this) { // from class: androidx.datastore.core.DataStoreImpl$writeActor$1
            final /* synthetic */ DataStoreImpl<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (th != null) {
                    ((DataStoreImpl) this.this$0).inMemoryCache.tryUpdate(new Final(th));
                }
                if (((DataStoreImpl) this.this$0).storageConnectionDelegate.isInitialized()) {
                    this.this$0.getStorageConnection$datastore_core_release().close();
                }
            }
        }, new Function2<Message.Update<T>, Throwable, Unit>() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Throwable th) {
                invoke((Message.Update) obj, th);
                return Unit.INSTANCE;
            }

            public final void invoke(Message.Update<T> update, Throwable th) {
                CompletableDeferred<T> ack = update.getAck();
                if (th == null) {
                    th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                ack.completeExceptionally(th);
            }
        }, new DataStoreImpl$writeActor$3(this, null));
    }

    @Override // androidx.datastore.core.DataStore
    public Flow<T> getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object incrementCollector(Continuation<? super Unit> continuation) {
        C05031 c05031;
        Mutex mutex;
        if (continuation instanceof C05031) {
            c05031 = (C05031) continuation;
            int i = c05031.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05031.label = i - Integer.MIN_VALUE;
            } else {
                c05031 = new C05031(this, continuation);
            }
        }
        Object obj = c05031.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05031.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.collectorMutex;
            c05031.L$0 = this;
            c05031.L$1 = mutex;
            c05031.label = 1;
            if (mutex.lock(null, c05031) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) c05031.L$1;
            DataStoreImpl<T> dataStoreImpl = (DataStoreImpl) c05031.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            this = dataStoreImpl;
        }
        try {
            int i3 = this.collectorCounter + 1;
            this.collectorCounter = i3;
            if (i3 == 1) {
                this.collectorJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new DataStoreImpl$incrementCollector$2$1(this, null), 3, null);
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object decrementCollector(Continuation<? super Unit> continuation) {
        C05001 c05001;
        Mutex mutex;
        if (continuation instanceof C05001) {
            c05001 = (C05001) continuation;
            int i = c05001.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05001.label = i - Integer.MIN_VALUE;
            } else {
                c05001 = new C05001(this, continuation);
            }
        }
        Object obj = c05001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05001.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.collectorMutex;
            c05001.L$0 = this;
            c05001.L$1 = mutex;
            c05001.label = 1;
            if (mutex.lock(null, c05001) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) c05001.L$1;
            DataStoreImpl<T> dataStoreImpl = (DataStoreImpl) c05001.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            this = dataStoreImpl;
        }
        try {
            int i3 = this.collectorCounter - 1;
            this.collectorCounter = i3;
            if (i3 == 0) {
                Job job = this.collectorJob;
                if (job != null) {
                    Job.cancel$default(job, null, 1, null);
                }
                this.collectorJob = null;
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    @Override // androidx.datastore.core.DataStore
    public Object updateData(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) continuation.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return BuildersKt.withContext(new UpdatingDataContextElement(updatingDataContextElement, this), new C05142(this, function2, null), continuation);
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$updateData$2 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$updateData$2", m873f = "DataStoreImpl.kt", m874i = {}, m875l = {169}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C05142 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function2<T, Continuation<? super T>, Object> $transform;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05142(DataStoreImpl<T> dataStoreImpl, Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super C05142> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05142 c05142 = new C05142(this.this$0, this.$transform, continuation);
            c05142.L$0 = obj;
            return c05142;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C05142) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            ((DataStoreImpl) this.this$0).writeActor.offer(new Message.Update(this.$transform, completableDeferredCompletableDeferred$default, ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState(), coroutineScope.getCoroutineContext()));
            this.label = 1;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    public final StorageConnection<T> getStorageConnection$datastore_core_release() {
        return this.storageConnectionDelegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator.getValue();
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readState$2 */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/State;", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$readState$2", m873f = "DataStoreImpl.kt", m874i = {}, m875l = {Opcodes.MUL_INT_LIT8, Opcodes.USHR_INT_LIT8}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C05122 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super State<T>>, Object> {
        final /* synthetic */ boolean $requireLock;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05122(DataStoreImpl<T> dataStoreImpl, boolean z, Continuation<? super C05122> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$requireLock = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05122(this.this$0, this.$requireLock, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super State<T>> continuation) {
            return ((C05122) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        
            if (r5 == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    boolean z = ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState() instanceof Final;
                    DataStoreImpl<T> dataStoreImpl = this.this$0;
                    if (z) {
                        return ((DataStoreImpl) dataStoreImpl).inMemoryCache.getCurrentState();
                    }
                    this.label = 1;
                    if (dataStoreImpl.readAndInitOrPropagateAndThrowFailure(this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        return (State) obj;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                DataStoreImpl<T> dataStoreImpl2 = this.this$0;
                boolean z2 = this.$requireLock;
                this.label = 2;
                obj = dataStoreImpl2.readDataAndUpdateCache(z2, this);
            } catch (Throwable th) {
                return new ReadException(th, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readState(boolean z, Continuation<? super State<T>> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C05122(this, z, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b0, code lost:
    
        if (r9 == r1) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.datastore.core.DataStoreImpl, androidx.datastore.core.DataStoreImpl<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v14, types: [androidx.datastore.core.DataStoreImpl] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.CompletableDeferred] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object handleUpdate(Message.Update<T> update, Continuation<? super Unit> continuation) {
        C05021 c05021;
        Object objM3087constructorimpl;
        ?? r9;
        CompletableDeferred<T> ack;
        State<T> currentState;
        Object objTransformAndWrite;
        ?? r92;
        if (continuation instanceof C05021) {
            c05021 = (C05021) continuation;
            int i = c05021.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05021.label = i - Integer.MIN_VALUE;
            } else {
                c05021 = new C05021(this, continuation);
            }
        }
        Object obj = c05021.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05021.label;
        boolean z = true;
        try {
        } catch (Throwable th) {
            th = th;
        }
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ack = update.getAck();
            try {
                Result.Companion companion = Result.INSTANCE;
                currentState = this.inMemoryCache.getCurrentState();
            } catch (Throwable th2) {
                th = th2;
                this = ack;
                Result.Companion companion2 = Result.INSTANCE;
                objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
                r9 = this;
            }
            if (currentState instanceof Data) {
                Function2<T, Continuation<? super T>, Object> transform = update.getTransform();
                CoroutineContext callerContext = update.getCallerContext();
                c05021.L$0 = ack;
                c05021.label = 1;
                objTransformAndWrite = transformAndWrite(transform, callerContext, c05021);
                if (objTransformAndWrite == coroutine_suspended) {
                }
                CompletableDeferred<T> completableDeferred = ack;
                obj = objTransformAndWrite;
                this = (DataStoreImpl<T>) completableDeferred;
                objM3087constructorimpl = Result.m3087constructorimpl(obj);
                r9 = this;
                CompletableDeferredKt.completeWith(r9, objM3087constructorimpl);
                return Unit.INSTANCE;
            }
            if (!(currentState instanceof ReadException)) {
                z = currentState instanceof UnInitialized;
            }
            if (z) {
                if (currentState == update.getLastState()) {
                    c05021.L$0 = update;
                    c05021.L$1 = this;
                    c05021.L$2 = ack;
                    c05021.label = 2;
                    Object andInitOrPropagateAndThrowFailure = readAndInitOrPropagateAndThrowFailure(c05021);
                    this = this;
                    if (andInitOrPropagateAndThrowFailure == coroutine_suspended) {
                    }
                } else {
                    throw ((ReadException) currentState).getReadException();
                }
            } else {
                if (currentState instanceof Final) {
                    throw ((Final) currentState).getFinalException();
                }
                throw new NoWhenBranchMatchedException();
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                CompletableDeferred<T> completableDeferred2 = (CompletableDeferred) c05021.L$2;
                DataStoreImpl dataStoreImpl = (DataStoreImpl) c05021.L$1;
                Message.Update<T> update2 = (Message.Update) c05021.L$0;
                ResultKt.throwOnFailure(obj);
                ack = completableDeferred2;
                boolean z2 = (DataStoreImpl<T>) dataStoreImpl;
                update = update2;
                r92 = z2;
            } else if (i2 != 3) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }
        boolean z3 = (DataStoreImpl<T>) ((CompletableDeferred) c05021.L$0);
        ResultKt.throwOnFailure(obj);
        this = z3;
        objM3087constructorimpl = Result.m3087constructorimpl(obj);
        r9 = this;
        CompletableDeferredKt.completeWith(r9, objM3087constructorimpl);
        return Unit.INSTANCE;
        Function2<T, Continuation<? super T>, Object> transform2 = update.getTransform();
        CoroutineContext callerContext2 = update.getCallerContext();
        c05021.L$0 = ack;
        c05021.L$1 = null;
        c05021.L$2 = null;
        c05021.label = 3;
        objTransformAndWrite = r92.transformAndWrite(transform2, callerContext2, c05021);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0067, code lost:
    
        if (r2.runIfNeeded(r0) == r1) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readAndInitOrPropagateAndThrowFailure(Continuation<? super Unit> continuation) throws Throwable {
        C05051 c05051;
        int iIntValue;
        DataStoreImpl<T> dataStoreImpl;
        int i;
        Throwable th;
        if (continuation instanceof C05051) {
            c05051 = (C05051) continuation;
            int i2 = c05051.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c05051.label = i2 - Integer.MIN_VALUE;
            } else {
                c05051 = new C05051(this, continuation);
            }
        }
        Object version = c05051.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c05051.label;
        try {
            if (i3 == 0) {
                ResultKt.throwOnFailure(version);
                InterProcessCoordinator coordinator = getCoordinator();
                c05051.L$0 = this;
                c05051.label = 1;
                version = coordinator.getVersion(c05051);
                if (version != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = c05051.I$0;
                dataStoreImpl = (DataStoreImpl) c05051.L$0;
                try {
                    ResultKt.throwOnFailure(version);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    dataStoreImpl.inMemoryCache.tryUpdate(new ReadException(th, i));
                    throw th;
                }
            }
            this = (DataStoreImpl) c05051.L$0;
            ResultKt.throwOnFailure(version);
            DataStoreImpl<T>.InitDataStore initDataStore = this.readAndInit;
            c05051.L$0 = this;
            c05051.I$0 = iIntValue;
            c05051.label = 2;
        } catch (Throwable th3) {
            dataStoreImpl = this;
            i = iIntValue;
            th = th3;
            dataStoreImpl.inMemoryCache.tryUpdate(new ReadException(th, i));
            throw th;
        }
        iIntValue = ((Number) version).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readDataAndUpdateCache(boolean z, Continuation<? super State<T>> continuation) {
        C05061 c05061;
        DataStoreImpl<T> dataStoreImpl;
        State<T> state;
        DataStoreImpl<T> dataStoreImpl2;
        Pair pair;
        if (continuation instanceof C05061) {
            c05061 = (C05061) continuation;
            int i = c05061.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05061.label = i - Integer.MIN_VALUE;
            } else {
                c05061 = new C05061(this, continuation);
            }
        }
        Object objTryLock = c05061.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05061.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objTryLock);
            State<T> currentState = this.inMemoryCache.getCurrentState();
            if (currentState instanceof UnInitialized) {
                Segment$$ExternalSyntheticBUOutline1.m925m("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                return null;
            }
            InterProcessCoordinator coordinator = getCoordinator();
            c05061.L$0 = this;
            c05061.L$1 = currentState;
            c05061.Z$0 = z;
            c05061.label = 1;
            Object version = coordinator.getVersion(c05061);
            if (version != coroutine_suspended) {
                dataStoreImpl = this;
                state = currentState;
                objTryLock = version;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                dataStoreImpl2 = (DataStoreImpl) c05061.L$0;
                ResultKt.throwOnFailure(objTryLock);
                pair = (Pair) objTryLock;
                State<T> state2 = (State) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                }
                return state2;
            }
            if (i2 != 3) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            dataStoreImpl2 = (DataStoreImpl) c05061.L$0;
            ResultKt.throwOnFailure(objTryLock);
            pair = (Pair) objTryLock;
            State<T> state22 = (State) pair.component1();
            if (((Boolean) pair.component2()).booleanValue()) {
                dataStoreImpl2.inMemoryCache.tryUpdate(state22);
            }
            return state22;
        }
        z = c05061.Z$0;
        state = (State) c05061.L$1;
        dataStoreImpl = (DataStoreImpl) c05061.L$0;
        ResultKt.throwOnFailure(objTryLock);
        int iIntValue = ((Number) objTryLock).intValue();
        boolean z2 = state instanceof Data;
        int version2 = z2 ? state.getVersion() : -1;
        if (z2 && iIntValue == version2) {
            return state;
        }
        if (z) {
            InterProcessCoordinator coordinator2 = dataStoreImpl.getCoordinator();
            C05073 c05073 = new C05073(dataStoreImpl, null);
            c05061.L$0 = dataStoreImpl;
            c05061.L$1 = null;
            c05061.label = 2;
            objTryLock = coordinator2.lock(c05073, c05061);
            if (objTryLock != coroutine_suspended) {
                dataStoreImpl2 = dataStoreImpl;
                pair = (Pair) objTryLock;
                State<T> state222 = (State) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                }
                return state222;
            }
        } else {
            InterProcessCoordinator coordinator3 = dataStoreImpl.getCoordinator();
            C05084 c05084 = new C05084(dataStoreImpl, version2, null);
            c05061.L$0 = dataStoreImpl;
            c05061.L$1 = null;
            c05061.label = 3;
            objTryLock = coordinator3.tryLock(c05084, c05061);
            if (objTryLock != coroutine_suspended) {
                dataStoreImpl2 = dataStoreImpl;
                pair = (Pair) objTryLock;
                State<T> state2222 = (State) pair.component1();
                if (((Boolean) pair.component2()).booleanValue()) {
                }
                return state2222;
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", _UrlKt.FRAGMENT_ENCODE_SET}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", m873f = "DataStoreImpl.kt", m874i = {}, m875l = {298, 300}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C05073 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05073(DataStoreImpl<T> dataStoreImpl, Continuation<? super C05073> continuation) {
            super(1, continuation);
            this.this$0 = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C05073(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Pair<? extends State<T>, Boolean>> continuation) {
            return ((C05073) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            State readException;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Throwable th2) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = th2;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version != coroutine_suspended) {
                    obj = version;
                    th = th2;
                }
                return coroutine_suspended;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.label = 1;
                obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    th = (Throwable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    readException = new ReadException(th, ((Number) obj).intValue());
                    return TuplesKt.to(readException, Boxing.boxBoolean(true));
                }
                ResultKt.throwOnFailure(obj);
            }
            readException = (State) obj;
            return TuplesKt.to(readException, Boxing.boxBoolean(true));
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001\"\u0004\b\u0000\u0010\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/datastore/core/State;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "locked"}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", m873f = "DataStoreImpl.kt", m874i = {0, 1}, m875l = {306, 309}, m876m = "invokeSuspend", m877n = {"locked", "locked"}, m878s = {"Z$0", "Z$0"})
    public static final class C05084 extends SuspendLambda implements Function2<Boolean, Continuation<? super Pair<? extends State<T>, ? extends Boolean>>, Object> {
        final /* synthetic */ int $cachedVersion;
        Object L$0;
        /* synthetic */ boolean Z$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05084(DataStoreImpl<T> dataStoreImpl, int i, Continuation<? super C05084> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$cachedVersion = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05084 c05084 = new C05084(this.this$0, this.$cachedVersion, continuation);
            c05084.Z$0 = ((Boolean) obj).booleanValue();
            return c05084;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Object obj) {
            return invoke(bool.booleanValue(), (Continuation) obj);
        }

        public final Object invoke(boolean z, Continuation<? super Pair<? extends State<T>, Boolean>> continuation) {
            return ((C05084) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v9 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int iIntValue;
            Throwable th;
            boolean z;
            State readException;
            ?? r1;
            ?? r12;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r13 = this.label;
            try {
            } catch (Throwable th2) {
                if (r13 != 0) {
                    InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                    this.L$0 = th2;
                    this.Z$0 = r13;
                    this.label = 2;
                    Object version = coordinator.getVersion(this);
                    if (version != coroutine_suspended) {
                        obj = version;
                        th = th2;
                        z = r13 == true ? 1 : 0;
                    }
                    return coroutine_suspended;
                }
                iIntValue = this.$cachedVersion;
                th = th2;
                r12 = r13;
            }
            if (r13 == 0) {
                ResultKt.throwOnFailure(obj);
                boolean z2 = this.Z$0;
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.Z$0 = z2;
                this.label = 1;
                obj = dataStoreImpl.readDataOrHandleCorruption(z2, this);
                r13 = z2;
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (r13 != 1) {
                    if (r13 != 2) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    z = this.Z$0;
                    th = (Throwable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    iIntValue = ((Number) obj).intValue();
                    r12 = z;
                    readException = new ReadException(th, iIntValue);
                    r1 = r12;
                    return TuplesKt.to(readException, Boxing.boxBoolean(r1));
                }
                boolean z3 = this.Z$0;
                ResultKt.throwOnFailure(obj);
                r13 = z3;
            }
            readException = (State) obj;
            r1 = r13;
            return TuplesKt.to(readException, Boxing.boxBoolean(r1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readDataFromFileOrDefault(Continuation<? super T> continuation) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), continuation);
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$transformAndWrite$2 */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\u008a@"}, d2 = {"<anonymous>", "T"}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", m873f = "DataStoreImpl.kt", m874i = {1, 2}, m875l = {330, MediaError.DetailedErrorCode.SMOOTH_NETWORK, 337}, m876m = "invokeSuspend", m877n = {"curData", "newData"}, m878s = {"L$0", "L$0"})
    public static final class C05132 extends SuspendLambda implements Function1<Continuation<? super T>, Object> {
        final /* synthetic */ CoroutineContext $callerContext;
        final /* synthetic */ Function2<T, Continuation<? super T>, Object> $transform;
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05132(DataStoreImpl<T> dataStoreImpl, CoroutineContext coroutineContext, Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super C05132> continuation) {
            super(1, continuation);
            this.this$0 = dataStoreImpl;
            this.$callerContext = coroutineContext;
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C05132(this.this$0, this.$callerContext, this.$transform, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super T> continuation) {
            return ((C05132) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to androidx.datastore.core.DataStoreImpl$transformAndWrite$2 for r8v4 'this'  kotlin.coroutines.Continuation
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2a
                if (r1 == r5) goto L26
                if (r1 == r4) goto L1e
                if (r1 != r3) goto L18
                java.lang.Object r8 = r8.L$0
                kotlin.ResultKt.throwOnFailure(r9)
                return r8
            L18:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                okio.Segment$$ExternalSyntheticBUOutline1.m925m(r8)
                return r2
            L1e:
                java.lang.Object r1 = r8.L$0
                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L4f
            L26:
                kotlin.ResultKt.throwOnFailure(r9)
                goto L38
            L2a:
                kotlin.ResultKt.throwOnFailure(r9)
                androidx.datastore.core.DataStoreImpl<T> r9 = r8.this$0
                r8.label = r5
                java.lang.Object r9 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r9, r5, r8)
                if (r9 != r0) goto L38
                goto L68
            L38:
                r1 = r9
                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                kotlin.coroutines.CoroutineContext r9 = r8.$callerContext
                androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1 r6 = new androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1
                kotlin.jvm.functions.Function2<T, kotlin.coroutines.Continuation<? super T>, java.lang.Object> r7 = r8.$transform
                r6.<init>(r7, r1, r2)
                r8.L$0 = r1
                r8.label = r4
                java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r8)
                if (r9 != r0) goto L4f
                goto L68
            L4f:
                r1.checkHashCode()
                java.lang.Object r1 = r1.getValue()
                boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r9)
                if (r1 != 0) goto L69
                androidx.datastore.core.DataStoreImpl<T> r1 = r8.this$0
                r8.L$0 = r9
                r8.label = r3
                java.lang.Object r8 = r1.writeData$datastore_core_release(r9, r5, r8)
                if (r8 != r0) goto L69
            L68:
                return r0
            L69:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.C05132.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Object transformAndWrite(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        return getCoordinator().lock(new C05132(this, coroutineContext, function2, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object writeData$datastore_core_release(T t, boolean z, Continuation<? super Integer> continuation) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        Ref.IntRef intRef;
        if (continuation instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) continuation;
            int i = dataStoreImpl$writeData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuation);
            }
        }
        Object obj = dataStoreImpl$writeData$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = dataStoreImpl$writeData$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.IntRef intRef2 = new Ref.IntRef();
            StorageConnection<T> storageConnection$datastore_core_release = getStorageConnection$datastore_core_release();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(intRef2, this, t, z, null);
            dataStoreImpl$writeData$1.L$0 = intRef2;
            dataStoreImpl$writeData$1.label = 1;
            if (storageConnection$datastore_core_release.writeScope(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            intRef = intRef2;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            intRef = (Ref.IntRef) dataStoreImpl$writeData$1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxInt(intRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1 A[Catch: CorruptionException -> 0x0061, TryCatch #2 {CorruptionException -> 0x0061, blocks: (B:19:0x005c, B:54:0x00fe, B:24:0x006a, B:51:0x00e1, B:32:0x0087, B:40:0x00a1, B:42:0x00a7, B:36:0x0090, B:48:0x00cf), top: B:78:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object readDataOrHandleCorruption(boolean z, Continuation<? super Data<T>> continuation) throws CorruptionException {
        C05091 c05091;
        Ref.ObjectRef objectRef;
        CorruptionException corruptionException;
        DataStoreImpl<T> dataStoreImpl;
        boolean z2;
        Ref.ObjectRef objectRef2;
        CorruptionException corruptionException2;
        C05113 c05113;
        Ref.IntRef intRef;
        Ref.ObjectRef objectRef3;
        Object version;
        DataStoreImpl<T> dataStoreImpl2;
        int i;
        Object obj;
        if (continuation instanceof C05091) {
            c05091 = (C05091) continuation;
            int i2 = c05091.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c05091.label = i2 - Integer.MIN_VALUE;
            } else {
                c05091 = new C05091(this, continuation);
            }
        }
        Object obj2 = (T) c05091.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
        } catch (CorruptionException e) {
            e = e;
        }
        switch (c05091.label) {
            case 0:
                ResultKt.throwOnFailure(obj2);
                if (z) {
                    c05091.L$0 = this;
                    c05091.Z$0 = z;
                    c05091.label = 1;
                    obj2 = (T) readDataFromFileOrDefault(c05091);
                    if (obj2 != coroutine_suspended) {
                        int iHashCode = obj2 == null ? obj2.hashCode() : 0;
                        InterProcessCoordinator coordinator = this.getCoordinator();
                        c05091.L$0 = this;
                        c05091.L$1 = obj2;
                        c05091.Z$0 = z;
                        c05091.I$0 = iHashCode;
                        c05091.label = 2;
                        version = coordinator.getVersion(c05091);
                        if (version != coroutine_suspended) {
                            dataStoreImpl2 = this;
                            i = iHashCode;
                            obj = obj2;
                            obj2 = (T) version;
                            return new Data(obj, i, ((Number) obj2).intValue());
                        }
                    }
                } else {
                    InterProcessCoordinator coordinator2 = getCoordinator();
                    c05091.L$0 = this;
                    c05091.Z$0 = z;
                    c05091.label = 3;
                    obj2 = (T) coordinator2.getVersion(c05091);
                    if (obj2 != coroutine_suspended) {
                        int iIntValue = ((Number) obj2).intValue();
                        InterProcessCoordinator coordinator3 = this.getCoordinator();
                        C05102 c05102 = new C05102(this, iIntValue, null);
                        c05091.L$0 = this;
                        c05091.Z$0 = z;
                        c05091.label = 4;
                        obj2 = (T) coordinator3.tryLock(c05102, c05091);
                        if (obj2 == coroutine_suspended) {
                        }
                        return (Data) obj2;
                    }
                }
                return coroutine_suspended;
            case 1:
                z = c05091.Z$0;
                this = (DataStoreImpl) c05091.L$0;
                ResultKt.throwOnFailure(obj2);
                if (obj2 == null) {
                }
                InterProcessCoordinator coordinator4 = this.getCoordinator();
                c05091.L$0 = this;
                c05091.L$1 = obj2;
                c05091.Z$0 = z;
                c05091.I$0 = iHashCode;
                c05091.label = 2;
                version = coordinator4.getVersion(c05091);
                if (version != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                i = c05091.I$0;
                z = c05091.Z$0;
                obj = c05091.L$1;
                dataStoreImpl2 = (DataStoreImpl) c05091.L$0;
                try {
                    ResultKt.throwOnFailure(obj2);
                    return new Data(obj, i, ((Number) obj2).intValue());
                } catch (CorruptionException e2) {
                    e = e2;
                    this = dataStoreImpl2;
                    objectRef = new Ref.ObjectRef();
                    CorruptionHandler<T> corruptionHandler = this.corruptionHandler;
                    c05091.L$0 = this;
                    c05091.L$1 = e;
                    c05091.L$2 = objectRef;
                    c05091.L$3 = objectRef;
                    c05091.Z$0 = z;
                    c05091.label = 5;
                    Object objHandleCorruption = corruptionHandler.handleCorruption(e, c05091);
                    if (objHandleCorruption != coroutine_suspended) {
                        corruptionException = e;
                        obj2 = (T) objHandleCorruption;
                        dataStoreImpl = this;
                        z2 = z;
                        objectRef2 = objectRef;
                        objectRef2.element = (T) obj2;
                        Ref.IntRef intRef2 = new Ref.IntRef();
                        try {
                            c05113 = new C05113(objectRef, dataStoreImpl, intRef2, null);
                            c05091.L$0 = corruptionException;
                            c05091.L$1 = objectRef;
                            c05091.L$2 = intRef2;
                            c05091.L$3 = null;
                            c05091.label = 6;
                            if (dataStoreImpl.doWithWriteFileLock(z2, c05113, c05091) != coroutine_suspended) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            corruptionException2 = corruptionException;
                            ExceptionsKt.addSuppressed(corruptionException2, th);
                            throw corruptionException2;
                        }
                    }
                    return coroutine_suspended;
                }
            case 3:
                z = c05091.Z$0;
                this = (DataStoreImpl) c05091.L$0;
                ResultKt.throwOnFailure(obj2);
                int iIntValue2 = ((Number) obj2).intValue();
                InterProcessCoordinator coordinator32 = this.getCoordinator();
                C05102 c051022 = new C05102(this, iIntValue2, null);
                c05091.L$0 = this;
                c05091.Z$0 = z;
                c05091.label = 4;
                obj2 = (T) coordinator32.tryLock(c051022, c05091);
                if (obj2 == coroutine_suspended) {
                }
                return (Data) obj2;
            case 4:
                boolean z3 = c05091.Z$0;
                ResultKt.throwOnFailure(obj2);
                return (Data) obj2;
            case 5:
                z2 = c05091.Z$0;
                objectRef2 = (Ref.ObjectRef) c05091.L$3;
                objectRef = (Ref.ObjectRef) c05091.L$2;
                corruptionException = (CorruptionException) c05091.L$1;
                dataStoreImpl = (DataStoreImpl) c05091.L$0;
                ResultKt.throwOnFailure(obj2);
                objectRef2.element = (T) obj2;
                Ref.IntRef intRef22 = new Ref.IntRef();
                c05113 = new C05113(objectRef, dataStoreImpl, intRef22, null);
                c05091.L$0 = corruptionException;
                c05091.L$1 = objectRef;
                c05091.L$2 = intRef22;
                c05091.L$3 = null;
                c05091.label = 6;
                if (dataStoreImpl.doWithWriteFileLock(z2, c05113, c05091) != coroutine_suspended) {
                    intRef = intRef22;
                    objectRef3 = objectRef;
                    T t = objectRef3.element;
                    return new Data(t, t != null ? t.hashCode() : 0, intRef.element);
                }
                return coroutine_suspended;
            case 6:
                intRef = (Ref.IntRef) c05091.L$2;
                objectRef3 = (Ref.ObjectRef) c05091.L$1;
                corruptionException2 = (CorruptionException) c05091.L$0;
                try {
                    ResultKt.throwOnFailure(obj2);
                    T t2 = objectRef3.element;
                    return new Data(t2, t2 != null ? t2.hashCode() : 0, intRef.element);
                } catch (Throwable th2) {
                    th = th2;
                    ExceptionsKt.addSuppressed(corruptionException2, th);
                    throw corruptionException2;
                }
            default:
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", "T", "locked", _UrlKt.FRAGMENT_ENCODE_SET}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", m873f = "DataStoreImpl.kt", m874i = {0, 1}, m875l = {370, 371}, m876m = "invokeSuspend", m877n = {"locked", "data"}, m878s = {"Z$0", "L$0"})
    public static final class C05102 extends SuspendLambda implements Function2<Boolean, Continuation<? super Data<T>>, Object> {
        final /* synthetic */ int $preLockVersion;
        Object L$0;
        /* synthetic */ boolean Z$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05102(DataStoreImpl<T> dataStoreImpl, int i, Continuation<? super C05102> continuation) {
            super(2, continuation);
            this.this$0 = dataStoreImpl;
            this.$preLockVersion = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05102 c05102 = new C05102(this.this$0, this.$preLockVersion, continuation);
            c05102.Z$0 = ((Boolean) obj).booleanValue();
            return c05102;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Object obj) {
            return invoke(bool.booleanValue(), (Continuation) obj);
        }

        public final Object invoke(boolean z, Continuation<? super Data<T>> continuation) {
            return ((C05102) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            boolean z;
            int iIntValue;
            Object obj2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                z = this.Z$0;
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.Z$0 = z;
                this.label = 1;
                obj = dataStoreImpl.readDataFromFileOrDefault(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = this.L$0;
                ResultKt.throwOnFailure(obj);
                iIntValue = ((Number) obj).intValue();
                return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, iIntValue);
            }
            z = this.Z$0;
            ResultKt.throwOnFailure(obj);
            if (z) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = obj;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version != coroutine_suspended) {
                    Object obj3 = obj;
                    obj = version;
                    obj2 = obj3;
                    iIntValue = ((Number) obj).intValue();
                    return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, iIntValue);
                }
                return coroutine_suspended;
            }
            Object obj4 = obj;
            iIntValue = this.$preLockVersion;
            obj2 = obj4;
            return new Data(obj2, obj2 != null ? obj2.hashCode() : 0, iIntValue);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "T"}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", m873f = "DataStoreImpl.kt", m874i = {}, m875l = {387, 388, 390}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C05113 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<T> $newData;
        final /* synthetic */ Ref.IntRef $version;
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05113(Ref.ObjectRef<T> objectRef, DataStoreImpl<T> dataStoreImpl, Ref.IntRef intRef, Continuation<? super C05113> continuation) {
            super(1, continuation);
            this.$newData = objectRef;
            this.this$0 = dataStoreImpl;
            this.$version = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C05113(this.$newData, this.this$0, this.$version, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C05113) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Ref.IntRef intRef;
            Ref.ObjectRef<T> objectRef;
            Ref.IntRef intRef2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (CorruptionException unused) {
                Ref.IntRef intRef3 = this.$version;
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                T t = this.$newData.element;
                this.L$0 = intRef3;
                this.label = 3;
                Object objWriteData$datastore_core_release = dataStoreImpl.writeData$datastore_core_release(t, true, this);
                if (objWriteData$datastore_core_release != coroutine_suspended) {
                    obj = (T) objWriteData$datastore_core_release;
                    intRef = intRef3;
                }
                return coroutine_suspended;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                objectRef = this.$newData;
                DataStoreImpl<T> dataStoreImpl2 = this.this$0;
                this.L$0 = objectRef;
                this.label = 1;
                obj = (T) dataStoreImpl2.readDataFromFileOrDefault(this);
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    intRef2 = (Ref.IntRef) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    intRef2.element = ((Number) obj).intValue();
                    return Unit.INSTANCE;
                }
                if (i != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                intRef = (Ref.IntRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                intRef.element = ((Number) obj).intValue();
                return Unit.INSTANCE;
            }
            objectRef = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            objectRef.element = (T) obj;
            intRef2 = this.$version;
            InterProcessCoordinator coordinator = this.this$0.getCoordinator();
            this.L$0 = intRef2;
            this.label = 2;
            obj = (T) coordinator.getVersion(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            intRef2.element = ((Number) obj).intValue();
            return Unit.INSTANCE;
        }
    }

    private final <R> Object doWithWriteFileLock(boolean z, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        if (z) {
            return function1.invoke(continuation);
        }
        return getCoordinator().lock(new C05013(function1, null), continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "R", "T"}, m862k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3", m873f = "DataStoreImpl.kt", m874i = {}, m875l = {416}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C05013<R> extends SuspendLambda implements Function1<Continuation<? super R>, Object> {
        final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C05013(Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super C05013> continuation) {
            super(1, continuation);
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C05013(this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super R> continuation) {
            return ((C05013) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            Function1<Continuation<? super R>, Object> function1 = this.$block;
            this.label = 1;
            Object objInvoke = function1.invoke(this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001BD\u0012=\u0010\u0002\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u0003¢\u0006\u0002\u0010\fJ\u000e\u0010\u000e\u001a\u00020\nH\u0094@¢\u0006\u0002\u0010\u000fRG\u0010\r\u001a;\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "Landroidx/datastore/core/RunOnce;", "initTasksList", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V", "initTasks", "doRun", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
    public final class InitDataStore extends RunOnce {
        private List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> initTasks;

        public InitDataStore(List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> list) {
            this.initTasks = CollectionsKt.toList(list);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        
            if (r7 == r1) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0073, code lost:
        
            if (r7 == r1) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // androidx.datastore.core.RunOnce
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object doRun(Continuation<? super Unit> continuation) throws CorruptionException {
            DataStoreImpl$InitDataStore$doRun$1 dataStoreImpl$InitDataStore$doRun$1;
            Data data;
            if (continuation instanceof DataStoreImpl$InitDataStore$doRun$1) {
                dataStoreImpl$InitDataStore$doRun$1 = (DataStoreImpl$InitDataStore$doRun$1) continuation;
                int i = dataStoreImpl$InitDataStore$doRun$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$1.label = i - Integer.MIN_VALUE;
                } else {
                    dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuation);
                }
            }
            Object dataOrHandleCorruption = dataStoreImpl$InitDataStore$doRun$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = dataStoreImpl$InitDataStore$doRun$1.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> list = this.initTasks;
                if (list != null && !list.isEmpty()) {
                    InterProcessCoordinator coordinator = DataStoreImpl.this.getCoordinator();
                    DataStoreImpl$InitDataStore$doRun$initData$1 dataStoreImpl$InitDataStore$doRun$initData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl.this, this, null);
                    dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                    dataStoreImpl$InitDataStore$doRun$1.label = 2;
                    dataOrHandleCorruption = coordinator.lock(dataStoreImpl$InitDataStore$doRun$initData$1, dataStoreImpl$InitDataStore$doRun$1);
                } else {
                    DataStoreImpl<T> dataStoreImpl = DataStoreImpl.this;
                    dataStoreImpl$InitDataStore$doRun$1.L$0 = this;
                    dataStoreImpl$InitDataStore$doRun$1.label = 1;
                    dataOrHandleCorruption = dataStoreImpl.readDataOrHandleCorruption(false, dataStoreImpl$InitDataStore$doRun$1);
                }
                return coroutine_suspended;
            }
            if (i2 == 1) {
                this = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            } else {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                this = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.L$0;
                ResultKt.throwOnFailure(dataOrHandleCorruption);
                data = (Data) dataOrHandleCorruption;
            }
            ((DataStoreImpl) DataStoreImpl.this).inMemoryCache.tryUpdate(data);
            return Unit.INSTANCE;
        }
    }
}
