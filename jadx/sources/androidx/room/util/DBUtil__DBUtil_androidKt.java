package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class DBUtil__DBUtil_androidKt {

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1 */
    static final class C07981 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07981(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DBUtil.performInTransactionSuspending(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$1 */
    static final class C08031 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        C08031(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DBUtil.performSuspending(null, false, false, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object performSuspending(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1, Continuation continuation) {
        C08031 c08031;
        RoomDatabase roomDatabase2;
        boolean z3;
        Function1 function12;
        if (continuation instanceof C08031) {
            c08031 = (C08031) continuation;
            int i = c08031.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08031.label = i - Integer.MIN_VALUE;
            } else {
                c08031 = new C08031(continuation);
            }
        }
        C08031 c080312 = c08031;
        Object obj = c080312.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c080312.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                C0804x2db6401c c0804x2db6401c = new C0804x2db6401c(z2, z, roomDatabase, null, function1);
                c080312.label = 1;
                Object objUseConnection = roomDatabase.useConnection(z, c0804x2db6401c, c080312);
                if (objUseConnection != coroutine_suspended) {
                    return objUseConnection;
                }
            } else {
                c080312.L$0 = roomDatabase;
                c080312.L$1 = function1;
                c080312.Z$0 = z;
                c080312.Z$1 = z2;
                c080312.label = 2;
                Object coroutineContext = DBUtil.getCoroutineContext(roomDatabase, z2, c080312);
                if (coroutineContext != coroutine_suspended) {
                    roomDatabase2 = roomDatabase;
                    obj = coroutineContext;
                    z3 = z2;
                    function12 = function1;
                }
            }
        }
        if (i2 == 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        boolean z4 = c080312.Z$1;
        z = c080312.Z$0;
        Function1 function13 = (Function1) c080312.L$1;
        RoomDatabase roomDatabase3 = (RoomDatabase) c080312.L$0;
        ResultKt.throwOnFailure(obj);
        z3 = z4;
        function12 = function13;
        roomDatabase2 = roomDatabase3;
        C0802xcdc6cef6 c0802xcdc6cef6 = new C0802xcdc6cef6(null, roomDatabase2, z, z3, function12);
        c080312.L$0 = null;
        c080312.L$1 = null;
        c080312.label = 3;
        Object objWithContext = BuildersKt.withContext((CoroutineContext) obj, c0802xcdc6cef6, c080312);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    public static final Object performBlocking(RoomDatabase db, boolean z, boolean z2, Function1 block) {
        Intrinsics.checkNotNullParameter(db, "db");
        Intrinsics.checkNotNullParameter(block, "block");
        db.assertNotMainThread();
        db.assertNotSuspendingTransaction();
        CoroutineContext coroutineContext = db.getSuspendingTransactionContext().get();
        if (coroutineContext == null) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C07951(coroutineContext, db, z2, z, block, null));
    }

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1 */
    static final class C07951 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function1 $block;
        final /* synthetic */ CoroutineContext $context;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ boolean $isReadOnly;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07951(CoroutineContext coroutineContext, RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.$context = coroutineContext;
            this.$db = roomDatabase;
            this.$inTransaction = z;
            this.$isReadOnly = z2;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C07951(this.$context, this.$db, this.$inTransaction, this.$isReadOnly, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07951) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Function1 $block;
            final /* synthetic */ RoomDatabase $db;
            final /* synthetic */ boolean $inTransaction;
            final /* synthetic */ boolean $isReadOnly;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1, Continuation continuation) {
                super(2, continuation);
                this.$db = roomDatabase;
                this.$inTransaction = z;
                this.$isReadOnly = z2;
                this.$block = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                boolean z = !(this.$db.inCompatibilityMode() && this.$db.inTransaction()) && this.$inTransaction;
                RoomDatabase roomDatabase = this.$db;
                boolean z2 = this.$isReadOnly;
                C0796xd8c50dd3 c0796xd8c50dd3 = new C0796xd8c50dd3(z, z2, roomDatabase, null, this.$block);
                this.label = 1;
                Object objUseConnection = roomDatabase.useConnection(z2, c0796xd8c50dd3, this);
                return objUseConnection == coroutine_suspended ? coroutine_suspended : objUseConnection;
            }
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
            CoroutineContext coroutineContext = this.$context;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, null);
            this.label = 1;
            Object objWithContext = BuildersKt.withContext(coroutineContext, anonymousClass1, this);
            return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object performInTransactionSuspending(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        C07981 c07981;
        RoomDatabase roomDatabase2;
        Function1 function12;
        if (continuation instanceof C07981) {
            c07981 = (C07981) continuation;
            int i = c07981.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07981.label = i - Integer.MIN_VALUE;
            } else {
                c07981 = new C07981(continuation);
            }
        }
        C07981 c079812 = c07981;
        Object coroutineContext = c079812.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c079812.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(coroutineContext);
            if (roomDatabase.inCompatibilityMode()) {
                C07992 c07992 = new C07992(roomDatabase, function1, null);
                c079812.label = 1;
                Object objWithTransactionContext = RoomDatabaseKt.withTransactionContext(roomDatabase, c07992, c079812);
                if (objWithTransactionContext != coroutine_suspended) {
                    return objWithTransactionContext;
                }
            } else if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                C0801x5eaa2107 c0801x5eaa2107 = new C0801x5eaa2107(true, false, roomDatabase, null, function1);
                c079812.label = 2;
                Object objUseConnection = roomDatabase.useConnection(false, c0801x5eaa2107, c079812);
                if (objUseConnection != coroutine_suspended) {
                    return objUseConnection;
                }
            } else {
                c079812.L$0 = roomDatabase;
                c079812.L$1 = function1;
                c079812.label = 3;
                coroutineContext = DBUtil.getCoroutineContext(roomDatabase, true, c079812);
                if (coroutineContext != coroutine_suspended) {
                    roomDatabase2 = roomDatabase;
                    function12 = function1;
                }
            }
        }
        if (i2 == 1) {
            ResultKt.throwOnFailure(coroutineContext);
            return coroutineContext;
        }
        if (i2 == 2) {
            ResultKt.throwOnFailure(coroutineContext);
            return coroutineContext;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(coroutineContext);
            return coroutineContext;
        }
        function12 = (Function1) c079812.L$1;
        roomDatabase2 = (RoomDatabase) c079812.L$0;
        ResultKt.throwOnFailure(coroutineContext);
        C0797x66ceda29 c0797x66ceda29 = new C0797x66ceda29(null, roomDatabase2, function12);
        c079812.L$0 = null;
        c079812.L$1 = null;
        c079812.label = 4;
        Object objWithContext = BuildersKt.withContext((CoroutineContext) coroutineContext, c0797x66ceda29, c079812);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2 */
    static final class C07992 extends SuspendLambda implements Function1 {
        final /* synthetic */ Function1 $block;
        final /* synthetic */ RoomDatabase $db;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07992(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
            super(1, continuation);
            this.$db = roomDatabase;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new C07992(this.$db, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C07992) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
            RoomDatabase roomDatabase = this.$db;
            C0800xfea5cf01 c0800xfea5cf01 = new C0800xfea5cf01(true, false, roomDatabase, null, this.$block);
            this.label = 1;
            Object objUseConnection = roomDatabase.useConnection(false, c0800xfea5cf01, this);
            return objUseConnection == coroutine_suspended ? coroutine_suspended : objUseConnection;
        }
    }

    public static final Object getCoroutineContext(RoomDatabase roomDatabase, boolean z, Continuation continuation) {
        TransactionElement transactionElement = (TransactionElement) continuation.getContext().get(TransactionElement.Key);
        CoroutineContext transactionDispatcher$room_runtime = transactionElement != null ? transactionElement.getTransactionDispatcher$room_runtime() : null;
        if (!roomDatabase.inCompatibilityMode()) {
            CoroutineContext queryContext = roomDatabase.getQueryContext();
            if (transactionDispatcher$room_runtime == null) {
                transactionDispatcher$room_runtime = EmptyCoroutineContext.INSTANCE;
            }
            return queryContext.plus(transactionDispatcher$room_runtime);
        }
        if (transactionDispatcher$room_runtime != null) {
            return roomDatabase.getQueryContext().plus(transactionDispatcher$room_runtime);
        }
        if (z) {
            return roomDatabase.getTransactionContext$room_runtime();
        }
        return roomDatabase.getQueryContext();
    }

    public static final int readVersion(File databaseFile) {
        Intrinsics.checkNotNullParameter(databaseFile, "databaseFile");
        FileChannel channel = new FileInputStream(databaseFile).getChannel();
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i = byteBufferAllocate.getInt();
            CloseableKt.closeFinally(channel, null);
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(channel, th);
                throw th2;
            }
        }
    }
}
