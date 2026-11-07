package androidx.camera.camera2.impl;

import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, m862k = 3, mv = {2, 1, 0})
@DebugMetadata(m872c = "androidx.camera.camera2.impl.State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1", m873f = "State3AControl.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nUseCaseThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads$confineLaunch$1\n+ 2 State3AControl.kt\nandroidx/camera/camera2/impl/State3AControl\n*L\n1#1,200:1\n127#2,18:201\n*E\n"})
public final class State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Set $useCasesSnapshot$inlined;
    int label;
    final /* synthetic */ State3AControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(Continuation continuation, Set set, State3AControl state3AControl) {
        super(2, continuation);
        this.$useCasesSnapshot$inlined = set;
        this.this$0 = state3AControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(continuation, this.$useCasesSnapshot$inlined, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        if (!this.$useCasesSnapshot$inlined.isEmpty()) {
            int iCalculateTemplateFromUseCases = this.this$0.calculateTemplateFromUseCases(this.$useCasesSnapshot$inlined);
            synchronized (this.this$0.lock) {
                if (this.this$0._template != iCalculateTemplateFromUseCases) {
                    this.this$0._template = iCalculateTemplateFromUseCases;
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                this.this$0.update();
            }
        }
        return Unit.INSTANCE;
    }
}
