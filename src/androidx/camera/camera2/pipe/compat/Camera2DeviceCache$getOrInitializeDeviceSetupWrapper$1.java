package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache", m766f = "Camera2DeviceCache.kt", m767i = {0, 0}, m768l = {169}, m769m = "getOrInitializeDeviceSetupWrapper-0r8Bogc", m770n = {"cameraId", "deferred"}, m771s = {"L$0", "L$1"}, m772v = 1)
public final class Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1(Camera2DeviceCache camera2DeviceCache, Continuation<? super Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1> continuation) {
        super(continuation);
        this.this$0 = camera2DeviceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1425getOrInitializeDeviceSetupWrapper0r8Bogc(null, this);
    }
}
