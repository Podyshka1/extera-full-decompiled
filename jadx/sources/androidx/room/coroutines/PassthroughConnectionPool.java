package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class PassthroughConnectionPool implements ConnectionPool {
    private final Lazy connection;
    private final SQLiteDriver driver;
    private final String fileName;
    private final Function2 transactionWrapper;

    public PassthroughConnectionPool(SQLiteDriver driver, String fileName, Function2 function2) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.driver = driver;
        this.fileName = fileName;
        this.transactionWrapper = function2;
        this.connection = LazyKt.lazy(new Function0() { // from class: androidx.room.coroutines.PassthroughConnectionPool$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PassthroughConnectionPool.connection$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteConnection connection$lambda$0(PassthroughConnectionPool passthroughConnectionPool) {
        return passthroughConnectionPool.driver.open(passthroughConnectionPool.fileName);
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public Object useConnection(boolean z, Function2 function2, Continuation continuation) {
        ConnectionElement connectionElement = (ConnectionElement) continuation.getContext().get(ConnectionElement.Key);
        PassthroughConnection connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
        if (connectionWrapper != null) {
            return function2.invoke(connectionWrapper, continuation);
        }
        PassthroughConnection passthroughConnection = new PassthroughConnection(this.transactionWrapper, (SQLiteConnection) this.connection.getValue());
        return BuildersKt.withContext(new ConnectionElement(passthroughConnection), new C07762(function2, passthroughConnection, null), continuation);
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnectionPool$useConnection$2 */
    static final class C07762 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        final /* synthetic */ PassthroughConnection $connectionWrapper;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07762(Function2 function2, PassthroughConnection passthroughConnection, Continuation continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$connectionWrapper = passthroughConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C07762(this.$block, this.$connectionWrapper, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07762) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Function2 function2 = this.$block;
            PassthroughConnection passthroughConnection = this.$connectionWrapper;
            this.label = 1;
            Object objInvoke = function2.invoke(passthroughConnection, this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.connection.isInitialized()) {
            ((SQLiteConnection) this.connection.getValue()).close();
        }
    }

    private static final class ConnectionElement implements CoroutineContext.Element {
        public static final Key Key = new Key(null);
        private final PassthroughConnection connectionWrapper;

        public ConnectionElement(PassthroughConnection connectionWrapper) {
            Intrinsics.checkNotNullParameter(connectionWrapper, "connectionWrapper");
            this.connectionWrapper = connectionWrapper;
        }

        @Override // kotlin.coroutines.CoroutineContext
        public Object fold(Object obj, Function2 function2) {
            return CoroutineContext.Element.DefaultImpls.fold(this, obj, function2);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public CoroutineContext.Element get(CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.get(this, key);
        }

        public final PassthroughConnection getConnectionWrapper() {
            return this.connectionWrapper;
        }

        @Override // kotlin.coroutines.CoroutineContext
        public CoroutineContext minusKey(CoroutineContext.Key key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public CoroutineContext plus(CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(this, coroutineContext);
        }

        public static final class Key implements CoroutineContext.Key {
            public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Key() {
            }
        }

        @Override // kotlin.coroutines.CoroutineContext.Element
        public CoroutineContext.Key getKey() {
            return Key;
        }
    }
}
