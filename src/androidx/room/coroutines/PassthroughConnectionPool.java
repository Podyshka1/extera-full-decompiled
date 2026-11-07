package androidx.room.coroutines;

import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001bB[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012B\b\u0002\u0010\u0006\u001a<\b\u0001\u0012\u0018\u0012\u0016\b\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u0007j\b\u0012\u0002\b\u0003\u0018\u0001`\u000b¢\u0006\u0004\b\f\u0010\rJ@\u0010\u0012\u001a\u0002H\u0013\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\"\u0010\u0016\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00130\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007H\u0096@¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000RJ\u0010\u0006\u001a<\b\u0001\u0012\u0018\u0012\u0016\b\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u0007j\b\u0012\u0002\b\u0003\u0018\u0001`\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/room/coroutines/PassthroughConnectionPool;", "Landroidx/room/coroutines/ConnectionPool;", "driver", "Landroidx/sqlite/SQLiteDriver;", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "transactionWrapper", "Lkotlin/Function2;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/coroutines/TransactionWrapper;", "<init>", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "connection", "Lkotlin/Lazy;", "Landroidx/sqlite/SQLiteConnection;", "useConnection", "R", "isReadOnly", _UrlKt.FRAGMENT_ENCODE_SET, "block", "Landroidx/room/Transactor;", "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", _UrlKt.FRAGMENT_ENCODE_SET, "ConnectionElement", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class PassthroughConnectionPool implements ConnectionPool {
    private final Lazy<SQLiteConnection> connection = LazyKt.lazy(new Function0() { // from class: androidx.room.coroutines.PassthroughConnectionPool$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PassthroughConnectionPool passthroughConnectionPool = this.f$0;
            return passthroughConnectionPool.driver.open(passthroughConnectionPool.fileName);
        }
    });
    private final SQLiteDriver driver;
    private final String fileName;
    private final Function2<Function1<? super Continuation<Object>, ? extends Object>, Continuation<Object>, Object> transactionWrapper;

    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnectionPool(SQLiteDriver sQLiteDriver, String str, Function2<? super Function1<? super Continuation<Object>, ? extends Object>, ? super Continuation<Object>, ? extends Object> function2) {
        this.driver = sQLiteDriver;
        this.fileName = str;
        this.transactionWrapper = function2;
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public <R> Object useConnection(boolean z, Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        ConnectionElement connectionElement = (ConnectionElement) continuation.getContext().get(ConnectionElement.INSTANCE);
        PassthroughConnection connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
        if (connectionWrapper != null) {
            return function2.invoke(connectionWrapper, continuation);
        }
        PassthroughConnection passthroughConnection = new PassthroughConnection(this.transactionWrapper, this.connection.getValue());
        return BuildersKt.withContext(new ConnectionElement(passthroughConnection), new C09742(function2, passthroughConnection, null), continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnectionPool$useConnection$2 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.room.coroutines.PassthroughConnectionPool$useConnection$2", m873f = "PassthroughConnectionPool.kt", m874i = {}, m875l = {59}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C09742<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<Transactor, Continuation<? super R>, Object> $block;
        final /* synthetic */ PassthroughConnection $connectionWrapper;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C09742(Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, PassthroughConnection passthroughConnection, Continuation<? super C09742> continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$connectionWrapper = passthroughConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09742(this.$block, this.$connectionWrapper, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((C09742) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            Function2<Transactor, Continuation<? super R>, Object> function2 = this.$block;
            PassthroughConnection passthroughConnection = this.$connectionWrapper;
            this.label = 1;
            Object objInvoke = function2.invoke(passthroughConnection, this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.connection.isInitialized()) {
            this.connection.getValue().close();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;", "Lkotlin/coroutines/CoroutineContext$Element;", "connectionWrapper", "Landroidx/room/coroutines/PassthroughConnection;", "<init>", "(Landroidx/room/coroutines/PassthroughConnection;)V", "getConnectionWrapper", "()Landroidx/room/coroutines/PassthroughConnection;", PluginsConstants.Settings.KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "Key", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConnectionElement implements CoroutineContext.Element {

        /* JADX INFO: renamed from: Key, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final PassthroughConnection connectionWrapper;

        public ConnectionElement(PassthroughConnection passthroughConnection) {
            this.connectionWrapper = passthroughConnection;
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(this, r, function2);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public <E extends CoroutineContext.Element> E get(CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(this, key);
        }

        public final PassthroughConnection getConnectionWrapper() {
            return this.connectionWrapper;
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public CoroutineContext minusKey(CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public CoroutineContext plus(CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
        }

        /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnectionPool$ConnectionElement$Key, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;", "<init>", "()V", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion implements CoroutineContext.Key<ConnectionElement> {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        @Override // kotlin.coroutines.CoroutineContext.Element
        public CoroutineContext.Key<ConnectionElement> getKey() {
            return INSTANCE;
        }
    }
}
