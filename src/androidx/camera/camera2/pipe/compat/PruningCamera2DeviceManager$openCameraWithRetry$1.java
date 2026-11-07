package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", m921f = "Camera2DeviceManager.kt", m922i = {0, 0, 0}, m923l = {576}, m924m = "openCameraWithRetry-zDSwpeU", m925n = {"cameraId", "sharedCameraIds", "scope"}, m926s = {"L$0", "L$1", "L$2"}, m927v = 1)
public final class PruningCamera2DeviceManager$openCameraWithRetry$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PruningCamera2DeviceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PruningCamera2DeviceManager$openCameraWithRetry$1(PruningCamera2DeviceManager pruningCamera2DeviceManager, Continuation<? super PruningCamera2DeviceManager$openCameraWithRetry$1> continuation) {
        super(continuation);
        this.this$0 = pruningCamera2DeviceManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m1592openCameraWithRetryzDSwpeU(null, null, null, null, this);
    }
}
