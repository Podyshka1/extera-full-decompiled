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
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a,\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u0086@¢\u0006\u0004\b\u0004\u0010\u0005\u001a$\u0010\n\u001a\u00020\t2\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0086@¢\u0006\u0004\b\n\u0010\u000b\u001a\u001a\u0010\n\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\u00070\u0001H\u0086@¢\u0006\u0004\b\n\u0010\u0005¨\u0006\f"}, d2 = {"T", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "awaitAll", "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/Job;", "jobs", _UrlKt.FRAGMENT_ENCODE_SET, "joinAll", "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n37#2,2:122\n13805#3,2:124\n1869#4,2:126\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n36#1:122,2\n47#1:124,2\n58#1:126,2\n*E\n"})
public abstract class AwaitKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.AwaitKt$joinAll$1 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.AwaitKt", m873f = "Await.kt", m874i = {0, 0, 0, 0, 0, 0}, m875l = {47}, m876m = "joinAll", m877n = {"jobs", "$this$forEach$iv", "element$iv", "it", "$i$f$forEach", "$i$a$-forEach-AwaitKt$joinAll$2"}, m878s = {"L$0", "L$1", "L$2", "L$3", "I$0", "I$3"}, m879v = 1)
    public static final class C23701 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        int I$3;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C23701(Continuation<? super C23701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AwaitKt.joinAll((Job[]) null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.AwaitKt$joinAll$3 */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "kotlinx.coroutines.AwaitKt", m873f = "Await.kt", m874i = {0, 0, 0, 0, 0, 0}, m875l = {58}, m876m = "joinAll", m877n = {"$this$joinAll", "$this$forEach$iv", "element$iv", "it", "$i$f$forEach", "$i$a$-forEach-AwaitKt$joinAll$4"}, m878s = {"L$0", "L$1", "L$3", "L$4", "I$0", "I$1"}, m879v = 1)
    public static final class C23713 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public C23713(Continuation<? super C23713> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AwaitKt.joinAll((Collection<? extends Job>) null, this);
        }
    }

    public static final <T> Object awaitAll(Collection<? extends Deferred<? extends T>> collection, Continuation<? super List<? extends T>> continuation) {
        return collection.isEmpty() ? CollectionsKt.emptyList() : new AwaitAll((Deferred[]) collection.toArray(new Deferred[0])).await(continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x007e -> B:20:0x0081). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object joinAll(Job[] jobArr, Continuation<? super Unit> continuation) {
        C23701 c23701;
        C23701 c237012;
        int i;
        int i2;
        Job[] jobArr2;
        int length;
        Job[] jobArr3;
        if (continuation instanceof C23701) {
            c23701 = (C23701) continuation;
            int i3 = c23701.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c23701.label = i3 - Integer.MIN_VALUE;
            } else {
                c23701 = new C23701(continuation);
            }
        }
        Object obj = c23701.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c23701.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            c237012 = c23701;
            i = 0;
            i2 = 0;
            jobArr2 = jobArr;
            length = jobArr.length;
            jobArr3 = jobArr2;
            if (i < length) {
            }
        } else {
            if (i4 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            length = c23701.I$2;
            int i5 = c23701.I$1;
            int i6 = c23701.I$0;
            Job[] jobArr4 = (Job[]) c23701.L$1;
            Job[] jobArr5 = (Job[]) c23701.L$0;
            ResultKt.throwOnFailure(obj);
            jobArr3 = jobArr4;
            i2 = i6;
            C23701 c237013 = c23701;
            jobArr2 = jobArr5;
            C23701 c237014 = c237013;
            i = i5 + 1;
            c237012 = c237014;
            if (i < length) {
                Job job = jobArr3[i];
                c237012.L$0 = SpillingKt.nullOutSpilledVariable(jobArr2);
                c237012.L$1 = jobArr3;
                c237012.L$2 = SpillingKt.nullOutSpilledVariable(job);
                c237012.L$3 = SpillingKt.nullOutSpilledVariable(job);
                c237012.I$0 = i2;
                c237012.I$1 = i;
                c237012.I$2 = length;
                c237012.I$3 = 0;
                c237012.label = 1;
                if (job.join(c237012) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                int i7 = i;
                c237013 = c237012;
                i5 = i7;
                C23701 c2370142 = c237013;
                i = i5 + 1;
                c237012 = c2370142;
                if (i < length) {
                    return Unit.INSTANCE;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object joinAll(Collection<? extends Job> collection, Continuation<? super Unit> continuation) {
        C23713 c23713;
        Iterator it;
        Iterable iterable;
        int i;
        if (continuation instanceof C23713) {
            c23713 = (C23713) continuation;
            int i2 = c23713.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c23713.label = i2 - Integer.MIN_VALUE;
            } else {
                c23713 = new C23713(continuation);
            }
        }
        Object obj = c23713.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c23713.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            Collection<? extends Job> collection2 = collection;
            it = collection2.iterator();
            iterable = collection2;
            i = 0;
        } else {
            if (i3 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            int i4 = c23713.I$0;
            it = (Iterator) c23713.L$2;
            iterable = (Iterable) c23713.L$1;
            Collection<? extends Job> collection3 = (Collection) c23713.L$0;
            ResultKt.throwOnFailure(obj);
            i = i4;
            collection = collection3;
        }
        while (it.hasNext()) {
            Object next = it.next();
            Job job = (Job) next;
            c23713.L$0 = SpillingKt.nullOutSpilledVariable(collection);
            c23713.L$1 = SpillingKt.nullOutSpilledVariable(iterable);
            c23713.L$2 = it;
            c23713.L$3 = SpillingKt.nullOutSpilledVariable(next);
            c23713.L$4 = SpillingKt.nullOutSpilledVariable(job);
            c23713.I$0 = i;
            c23713.I$1 = 0;
            c23713.label = 1;
            if (job.join(c23713) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
