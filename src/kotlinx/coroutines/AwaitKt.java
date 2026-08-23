package kotlinx.coroutines;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a<\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00002\u001e\u0010\u0003\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001\"\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@¢\u0006\u0004\b\u0005\u0010\u0006\u001a,\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0007H\u0086@¢\u0006\u0004\b\u0005\u0010\b\u001a\u001a\u0010\u000b\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\t0\u0007H\u0086@¢\u0006\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"T", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/Deferred;", "deferreds", _UrlKt.FRAGMENT_ENCODE_SET, "awaitAll", "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/Job;", _UrlKt.FRAGMENT_ENCODE_SET, "joinAll", "kotlinx-coroutines-core"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n37#2:122\n36#2,3:123\n13402#3,2:126\n1863#4,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n36#1:122\n36#1:123,3\n47#1:126,2\n58#1:128,2\n*E\n"})
public abstract class AwaitKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.AwaitKt$joinAll$3 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "kotlinx.coroutines.AwaitKt", m766f = "Await.kt", m767i = {}, m768l = {58}, m769m = "joinAll", m770n = {}, m771s = {})
    public static final class C23013 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C23013(Continuation<? super C23013> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AwaitKt.joinAll(null, this);
        }
    }

    public static final <T> Object awaitAll(Deferred<? extends T>[] deferredArr, Continuation<? super List<? extends T>> continuation) {
        return deferredArr.length == 0 ? CollectionsKt.emptyList() : new AwaitAll(deferredArr).await(continuation);
    }

    public static final <T> Object awaitAll(Collection<? extends Deferred<? extends T>> collection, Continuation<? super List<? extends T>> continuation) {
        return collection.isEmpty() ? CollectionsKt.emptyList() : new AwaitAll((Deferred[]) collection.toArray(new Deferred[0])).await(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object joinAll(Collection<? extends Job> collection, Continuation<? super Unit> continuation) {
        C23013 c23013;
        Iterator it;
        if (continuation instanceof C23013) {
            c23013 = (C23013) continuation;
            int i = c23013.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23013.label = i - Integer.MIN_VALUE;
            } else {
                c23013 = new C23013(continuation);
            }
        }
        Object obj = c23013.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c23013.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            it = collection.iterator();
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            it = (Iterator) c23013.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            Job job = (Job) it.next();
            c23013.L$0 = it;
            c23013.label = 1;
            if (job.join(c23013) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
