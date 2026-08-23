package androidx.room.util;

import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.room.RoomDatabase;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"R", "Lkotlinx/coroutines/CoroutineScope;", "<anonymous>"}, m754k = 3, mv = {2, 1, 0})
@DebugMetadata(m765c = "androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1", m766f = "DBUtil.android.kt", m767i = {}, m768l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED}, m769m = "invokeSuspend", m770n = {}, m771s = {})
@SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$compatCoroutineExecute$2\n+ 2 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n+ 3 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n102#2:260\n48#3:261\n67#3:262\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt\n*L\n102#1:261\n102#1:262\n*E\n"})
public final class C0789x66ceda29<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
    final /* synthetic */ Function1 $block$inlined;
    final /* synthetic */ RoomDatabase $db$inlined;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0789x66ceda29(Continuation continuation, RoomDatabase roomDatabase, Function1 function1) {
        super(2, continuation);
        this.$db$inlined = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0789x66ceda29(continuation, this.$db$inlined, this.$block$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
        return ((C0789x66ceda29) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        RoomDatabase roomDatabase = this.$db$inlined;
        C0793x5eaa2107 c0793x5eaa2107 = new C0793x5eaa2107(true, false, roomDatabase, null, this.$block$inlined);
        this.label = 1;
        Object objUseConnection = roomDatabase.useConnection(false, c0793x5eaa2107, this);
        return objUseConnection == coroutine_suspended ? coroutine_suspended : objUseConnection;
    }
}
