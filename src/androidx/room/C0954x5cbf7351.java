package androidx.room;

import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableSharedFlow;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1 */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1", m873f = "MultiInstanceInvalidationClient.android.kt", m874i = {0}, m875l = {87}, m876m = "invokeSuspend", m877n = {"invalidatedTablesSet"}, m878s = {"L$0"})
public final class C0954x5cbf7351 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String[] $tables;
    Object L$0;
    int label;
    final /* synthetic */ MultiInstanceInvalidationClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0954x5cbf7351(String[] strArr, MultiInstanceInvalidationClient multiInstanceInvalidationClient, Continuation<? super C0954x5cbf7351> continuation) {
        super(2, continuation);
        this.$tables = strArr;
        this.this$0 = multiInstanceInvalidationClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0954x5cbf7351(this.$tables, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C0954x5cbf7351) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Set<String> set;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String[] strArr = this.$tables;
            Set<String> of = SetsKt.setOf(Arrays.copyOf(strArr, strArr.length));
            MutableSharedFlow mutableSharedFlow = this.this$0.invalidatedTables;
            this.L$0 = of;
            this.label = 1;
            if (mutableSharedFlow.emit(of, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            set = of;
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            set = (Set) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.getInvalidationTracker().notifyObserversByTableNames$room_runtime(set);
        return Unit.INSTANCE;
    }
}
