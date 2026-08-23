package androidx.camera.camera2.pipe.compat;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class PruningCamera2DeviceManager$queue$1 extends FunctionReferenceImpl implements Function1<List<CameraRequest>, Unit> {
    public PruningCamera2DeviceManager$queue$1(Object obj) {
        super(1, obj, PruningCamera2DeviceManager.class, "prune", "prune$camera_camera2_pipe(Ljava/util/List;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<CameraRequest> list) {
        invoke2(list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<CameraRequest> list) {
        ((PruningCamera2DeviceManager) this.receiver).prune$camera_camera2_pipe(list);
    }
}
