package androidx.camera.camera2.adapter;

import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.lifecycle.LiveData;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraControlStateAdapter {
    private final EvCompControl evCompControl;
    private final LowLightBoostControl lowLightBoostControl;
    private final TorchControl torchControl;
    private final ZoomControl zoomControl;

    public CameraControlStateAdapter(ZoomControl zoomControl, EvCompControl evCompControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl) {
        Intrinsics.checkNotNullParameter(zoomControl, "zoomControl");
        Intrinsics.checkNotNullParameter(evCompControl, "evCompControl");
        Intrinsics.checkNotNullParameter(torchControl, "torchControl");
        Intrinsics.checkNotNullParameter(lowLightBoostControl, "lowLightBoostControl");
        this.zoomControl = zoomControl;
        this.evCompControl = evCompControl;
        this.torchControl = torchControl;
        this.lowLightBoostControl = lowLightBoostControl;
    }

    public final LiveData getZoomStateLiveData() {
        return this.zoomControl.getZoomStateLiveData();
    }
}
