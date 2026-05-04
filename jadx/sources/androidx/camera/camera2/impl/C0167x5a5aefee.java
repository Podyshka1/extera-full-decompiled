package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.core.CameraControl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0167x5a5aefee extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $cancelPreviousTask$inlined;
    final /* synthetic */ boolean $lowLightBoost$inlined;
    final /* synthetic */ CompletableDeferred $signal$inlined;
    int label;
    final /* synthetic */ LowLightBoostControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0167x5a5aefee(Continuation continuation, LowLightBoostControl lowLightBoostControl, CompletableDeferred completableDeferred, boolean z, boolean z2) {
        super(2, continuation);
        this.this$0 = lowLightBoostControl;
        this.$signal$inlined = completableDeferred;
        this.$lowLightBoost$inlined = z;
        this.$cancelPreviousTask$inlined = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0167x5a5aefee(continuation, this.this$0, this.$signal$inlined, this.$lowLightBoost$inlined, this.$cancelPreviousTask$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0167x5a5aefee) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c0  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        boolean zBooleanValue;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Deferred checkFrameRateJob$camera_camera2 = this.this$0.getCheckFrameRateJob$camera_camera2();
            if (checkFrameRateJob$camera_camera2 == null) {
                zBooleanValue = false;
                if (zBooleanValue) {
                    this.this$0.isLowLightBoostOn = this.$lowLightBoost$inlined;
                    if (!this.$lowLightBoost$inlined) {
                        LowLightBoostControl lowLightBoostControl = this.this$0;
                        lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, -1);
                    }
                    if (this.this$0.getRequestControl() == null) {
                        this.this$0.createFailureResult(this.$signal$inlined, new CameraControl.OperationCanceledException("Camera is not active."));
                        Unit unit = Unit.INSTANCE;
                    } else {
                        if (this.$lowLightBoost$inlined) {
                            LowLightBoostControl lowLightBoostControl2 = this.this$0;
                            lowLightBoostControl2.setLiveDataValue(lowLightBoostControl2._lowLightBoostState, 0);
                        }
                        if (this.$cancelPreviousTask$inlined) {
                            this.this$0.stopRunningTaskInternal();
                        } else {
                            CompletableDeferred completableDeferred = this.this$0._updateSignal;
                            if (completableDeferred != null) {
                                CoroutineAdaptersKt.propagateTo(this.$signal$inlined, completableDeferred);
                            }
                        }
                        this.this$0._updateSignal = this.$signal$inlined;
                        CoroutineAdaptersKt.propagateTo(this.this$0.state3AControl.setPreferredAeModeAsync(this.$lowLightBoost$inlined ? Boxing.boxInt(6) : null), this.$signal$inlined);
                        final CompletableDeferred completableDeferred2 = this.$signal$inlined;
                        final LowLightBoostControl lowLightBoostControl3 = this.this$0;
                        if (completableDeferred2.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.LowLightBoostControl$setLowLightBoostAsync$2$1$2
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                invoke((Throwable) obj2);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Throwable th) {
                                if (Intrinsics.areEqual(completableDeferred2, lowLightBoostControl3._updateSignal)) {
                                    lowLightBoostControl3._updateSignal = null;
                                }
                            }
                        }) == null) {
                        }
                    }
                } else {
                    LowLightBoostControl lowLightBoostControl4 = this.this$0;
                    lowLightBoostControl4.setLiveDataValue(lowLightBoostControl4._lowLightBoostState, -1);
                    this.this$0.createFailureResult(this.$signal$inlined, new IllegalStateException("Low Light Boost is disabled when expected frame rate range exceeds 30."));
                }
                return Unit.INSTANCE;
            }
            this.label = 1;
            obj = checkFrameRateJob$camera_camera2.await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        zBooleanValue = ((Boolean) obj).booleanValue();
        if (zBooleanValue) {
        }
        return Unit.INSTANCE;
    }
}
