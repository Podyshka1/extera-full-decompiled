package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache", m873f = "Camera2DeviceCache.kt", m874i = {0, 0}, m875l = {130}, m876m = "getOrInitializeDeviceSetupCompat-0r8Bogc", m877n = {"cameraId", "deferred"}, m878s = {"L$0", "L$1"}, m879v = 1)
public final class Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1(Camera2DeviceCache camera2DeviceCache, Continuation<? super Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1> continuation) {
        super(continuation);
        this.this$0 = camera2DeviceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1514getOrInitializeDeviceSetupCompat0r8Bogc(null, this);
    }
}
