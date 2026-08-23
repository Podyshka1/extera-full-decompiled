package androidx.camera.camera2.pipe.compat;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
final class Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1(Camera2DeviceCache camera2DeviceCache, Continuation continuation) {
        super(continuation);
        this.this$0 = camera2DeviceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1829getOrInitializeDeviceSetupWrapper0r8Bogc(null, this);
    }
}
