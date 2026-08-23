package androidx.room;

import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0014\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\fJ\u001c\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0010H\u0086@¢\u0006\u0002\u0010\u0011R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/room/ObservedTableVersions;", _UrlKt.FRAGMENT_ENCODE_SET, "size", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "versions", "Lkotlinx/coroutines/flow/MutableStateFlow;", _UrlKt.FRAGMENT_ENCODE_SET, "increment", _UrlKt.FRAGMENT_ENCODE_SET, "tableIds", _UrlKt.FRAGMENT_ENCODE_SET, "collect", _UrlKt.FRAGMENT_ENCODE_SET, "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableVersions\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,640:1\n226#2,5:641\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableVersions\n*L\n626#1:641,5\n*E\n"})
public final class ObservedTableVersions {
    private final MutableStateFlow<int[]> versions;

    /* JADX INFO: renamed from: androidx.room.ObservedTableVersions$collect$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.ObservedTableVersions", m766f = "InvalidationTracker.kt", m767i = {}, m768l = {638}, m769m = "collect", m770n = {}, m771s = {})
    public static final class C07491 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C07491(Continuation<? super C07491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ObservedTableVersions.this.collect(null, this);
        }
    }

    public ObservedTableVersions(int i) {
        this.versions = StateFlowKt.MutableStateFlow(new int[i]);
    }

    public final void increment(Set<Integer> tableIds) {
        int[] value;
        int[] iArr;
        int i;
        if (tableIds.isEmpty()) {
            return;
        }
        MutableStateFlow<int[]> mutableStateFlow = this.versions;
        do {
            value = mutableStateFlow.getValue();
            int[] iArr2 = value;
            int length = iArr2.length;
            iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                if (tableIds.contains(Integer.valueOf(i2))) {
                    i = iArr2[i2] + 1;
                } else {
                    i = iArr2[i2];
                }
                iArr[i2] = i;
            }
        } while (!mutableStateFlow.compareAndSet(value, iArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object collect(FlowCollector<? super int[]> flowCollector, Continuation<?> continuation) {
        C07491 c07491;
        if (continuation instanceof C07491) {
            c07491 = (C07491) continuation;
            int i = c07491.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07491.label = i - Integer.MIN_VALUE;
            } else {
                c07491 = new C07491(continuation);
            }
        }
        Object obj = c07491.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07491.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            MutableStateFlow<int[]> mutableStateFlow = this.versions;
            c07491.label = 1;
            if (mutableStateFlow.collect(flowCollector, c07491) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        InstantKt$$ExternalSyntheticBUOutline0.m813m();
        return null;
    }
}
