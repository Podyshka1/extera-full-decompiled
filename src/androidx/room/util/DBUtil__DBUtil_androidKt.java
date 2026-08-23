package androidx.room.util;

import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.sqlite.SQLiteConnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001aB\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0006H\u0087@¢\u0006\u0004\b\t\u0010\n\u001aA\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a<\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u001c\u0010\b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0006H\u0087@¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001c\u0010\u0012\u001a\u00020\u0011*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003H\u0080@¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"R", "Landroidx/room/RoomDatabase;", "db", _UrlKt.FRAGMENT_ENCODE_SET, "isReadOnly", "inTransaction", "Lkotlin/Function1;", "Landroidx/sqlite/SQLiteConnection;", "block", "performSuspending", "(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "performBlocking", "(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "performInTransactionSuspending", "(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/io/File;", "databaseFile", _UrlKt.FRAGMENT_ENCODE_SET, "readVersion", "(Ljava/io/File;)I", "room-runtime"}, m754k = 5, mv = {2, 1, 0}, xi = 48, xs = "androidx/room/util/DBUtil")
@SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n+ 2 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n115#1,2:260\n118#1:264\n115#1,2:265\n118#1:269\n48#2:262\n67#2:263\n48#2:267\n67#2:268\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n*L\n53#1:260,2\n53#1:264\n101#1:265,2\n101#1:269\n54#1:262\n54#1:263\n102#1:267\n102#1:268\n*E\n"})
abstract /* synthetic */ class DBUtil__DBUtil_androidKt {

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.util.DBUtil__DBUtil_androidKt", m766f = "DBUtil.android.kt", m767i = {2, 2}, m768l = {97, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_SELECTED, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED}, m769m = "performInTransactionSuspending", m770n = {"db", "block"}, m771s = {"L$0", "L$1"})
    public static final class C07901<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07901(Continuation<? super C07901> continuation) {
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
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.util.DBUtil__DBUtil_androidKt", m766f = "DBUtil.android.kt", m767i = {1, 1, 1, 1}, m768l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_SELECTED, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED}, m769m = "performSuspending", m770n = {"db", "block", "isReadOnly", "inTransaction"}, m771s = {"L$0", "L$1", "Z$0", "Z$1"})
    public static final class C07951<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        public C07951(Continuation<? super C07951> continuation) {
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
    public static final <R> Object performSuspending(RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1, Continuation<? super R> continuation) {
        C07951 c07951;
        RoomDatabase roomDatabase2;
        boolean z3;
        Function1<? super SQLiteConnection, ? extends R> function12;
        if (continuation instanceof C07951) {
            c07951 = (C07951) continuation;
            int i = c07951.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07951.label = i - Integer.MIN_VALUE;
            } else {
                c07951 = new C07951(continuation);
            }
        }
        C07951 c079512 = c07951;
        Object obj = c079512.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c079512.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                C0796x2db6401c c0796x2db6401c = new C0796x2db6401c(z2, z, roomDatabase, null, function1);
                c079512.label = 1;
                Object objUseConnection = roomDatabase.useConnection(z, c0796x2db6401c, c079512);
                if (objUseConnection != coroutine_suspended) {
                    return objUseConnection;
                }
            } else {
                c079512.L$0 = roomDatabase;
                c079512.L$1 = function1;
                c079512.Z$0 = z;
                c079512.Z$1 = z2;
                c079512.label = 2;
                Object coroutineContext = DBUtil.getCoroutineContext(roomDatabase, z2, c079512);
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
            if (i2 == 3) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        boolean z4 = c079512.Z$1;
        z = c079512.Z$0;
        Function1<? super SQLiteConnection, ? extends R> function13 = (Function1) c079512.L$1;
        RoomDatabase roomDatabase3 = (RoomDatabase) c079512.L$0;
        ResultKt.throwOnFailure(obj);
        z3 = z4;
        function12 = function13;
        roomDatabase2 = roomDatabase3;
        C0794xcdc6cef6 c0794xcdc6cef6 = new C0794xcdc6cef6(null, roomDatabase2, z, z3, function12);
        c079512.L$0 = null;
        c079512.L$1 = null;
        c079512.label = 3;
        Object objWithContext = BuildersKt.withContext((CoroutineContext) obj, c0794xcdc6cef6, c079512);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    public static final <R> R performBlocking(RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1) {
        roomDatabase.assertNotMainThread();
        roomDatabase.assertNotSuspendingTransaction();
        CoroutineContext coroutineContext = roomDatabase.getSuspendingTransactionContext().get();
        if (coroutineContext == null) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return (R) RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C07871(coroutineContext, roomDatabase, z2, z, function1, null));
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1", m766f = "DBUtil.android.kt", m767i = {}, m768l = {72}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C07871<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function1<SQLiteConnection, R> $block;
        final /* synthetic */ CoroutineContext $context;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ boolean $isReadOnly;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07871(CoroutineContext coroutineContext, RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1, Continuation<? super C07871> continuation) {
            super(2, continuation);
            this.$context = coroutineContext;
            this.$db = roomDatabase;
            this.$inTransaction = z;
            this.$isReadOnly = z2;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07871(this.$context, this.$db, this.$inTransaction, this.$isReadOnly, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((C07871) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(m765c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1", m766f = "DBUtil.android.kt", m767i = {}, m768l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_VOLUME_CHANGED}, m769m = "invokeSuspend", m770n = {}, m771s = {})
        @SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$1\n+ 2 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n48#2:260\n67#2:261\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$1\n*L\n77#1:260\n77#1:261\n*E\n"})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
            final /* synthetic */ Function1<SQLiteConnection, R> $block;
            final /* synthetic */ RoomDatabase $db;
            final /* synthetic */ boolean $inTransaction;
            final /* synthetic */ boolean $isReadOnly;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(RoomDatabase roomDatabase, boolean z, boolean z2, Function1<? super SQLiteConnection, ? extends R> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$db = roomDatabase;
                this.$inTransaction = z;
                this.$isReadOnly = z2;
                this.$block = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                boolean z = !(this.$db.inCompatibilityMode() && this.$db.inTransaction()) && this.$inTransaction;
                RoomDatabase roomDatabase = this.$db;
                boolean z2 = this.$isReadOnly;
                C0788xd8c50dd3 c0788xd8c50dd3 = new C0788xd8c50dd3(z, z2, roomDatabase, null, this.$block);
                this.label = 1;
                Object objUseConnection = roomDatabase.useConnection(z2, c0788xd8c50dd3, this);
                return objUseConnection == coroutine_suspended ? coroutine_suspended : objUseConnection;
            }
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
    public static final <R> Object performInTransactionSuspending(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        C07901 c07901;
        RoomDatabase roomDatabase2;
        Function1<? super Continuation<? super R>, ? extends Object> function12;
        if (continuation instanceof C07901) {
            c07901 = (C07901) continuation;
            int i = c07901.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07901.label = i - Integer.MIN_VALUE;
            } else {
                c07901 = new C07901(continuation);
            }
        }
        C07901 c079012 = c07901;
        Object coroutineContext = c079012.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c079012.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(coroutineContext);
            if (roomDatabase.inCompatibilityMode()) {
                C07912 c07912 = new C07912(roomDatabase, function1, null);
                c079012.label = 1;
                Object objWithTransactionContext = RoomDatabaseKt.withTransactionContext(roomDatabase, c07912, c079012);
                if (objWithTransactionContext != coroutine_suspended) {
                    return objWithTransactionContext;
                }
            } else if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
                C0793x5eaa2107 c0793x5eaa2107 = new C0793x5eaa2107(true, false, roomDatabase, null, function1);
                c079012.label = 2;
                Object objUseConnection = roomDatabase.useConnection(false, c0793x5eaa2107, c079012);
                if (objUseConnection != coroutine_suspended) {
                    return objUseConnection;
                }
            } else {
                c079012.L$0 = roomDatabase;
                c079012.L$1 = function1;
                c079012.label = 3;
                coroutineContext = DBUtil.getCoroutineContext(roomDatabase, true, c079012);
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
            if (i2 == 4) {
                ResultKt.throwOnFailure(coroutineContext);
                return coroutineContext;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        function12 = (Function1) c079012.L$1;
        roomDatabase2 = (RoomDatabase) c079012.L$0;
        ResultKt.throwOnFailure(coroutineContext);
        C0789x66ceda29 c0789x66ceda29 = new C0789x66ceda29(null, roomDatabase2, function12);
        c079012.L$0 = null;
        c079012.L$1 = null;
        c079012.label = 4;
        Object objWithContext = BuildersKt.withContext((CoroutineContext) coroutineContext, c0789x66ceda29, c079012);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2 */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n"}, d2 = {"<anonymous>", "R"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$2", m766f = "DBUtil.android.kt", m767i = {}, m768l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_VOLUME_CHANGED}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    @SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$2\n+ 2 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n48#2:260\n67#2:261\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$2\n*L\n98#1:260\n98#1:261\n*E\n"})
    public static final class C07912<R> extends SuspendLambda implements Function1<Continuation<? super R>, Object> {
        final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
        final /* synthetic */ RoomDatabase $db;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07912(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super C07912> continuation) {
            super(1, continuation);
            this.$db = roomDatabase;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C07912(this.$db, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super R> continuation) {
            return ((C07912) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            RoomDatabase roomDatabase = this.$db;
            C0792xfea5cf01 c0792xfea5cf01 = new C0792xfea5cf01(true, false, roomDatabase, null, this.$block);
            this.label = 1;
            Object objUseConnection = roomDatabase.useConnection(false, c0792xfea5cf01, this);
            return objUseConnection == coroutine_suspended ? coroutine_suspended : objUseConnection;
        }
    }

    public static final Object getCoroutineContext(RoomDatabase roomDatabase, boolean z, Continuation<? super CoroutineContext> continuation) {
        TransactionElement transactionElement = (TransactionElement) continuation.get$context().get(TransactionElement.INSTANCE);
        CoroutineContext transactionDispatcher = transactionElement != null ? transactionElement.getTransactionDispatcher() : null;
        if (!roomDatabase.inCompatibilityMode()) {
            CoroutineContext queryContext = roomDatabase.getQueryContext();
            if (transactionDispatcher == null) {
                transactionDispatcher = EmptyCoroutineContext.INSTANCE;
            }
            return queryContext.plus(transactionDispatcher);
        }
        if (transactionDispatcher != null) {
            return roomDatabase.getQueryContext().plus(transactionDispatcher);
        }
        if (z) {
            return roomDatabase.getTransactionContext$room_runtime();
        }
        return roomDatabase.getQueryContext();
    }

    public static final int readVersion(File file) {
        FileChannel channel = new FileInputStream(file).getChannel();
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
