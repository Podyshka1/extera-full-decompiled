package androidx.camera.camera2.pipe;

import java.util.List;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraControls3A {
    /* JADX INFO: renamed from: setTorchOff-NqN7i0k, reason: not valid java name */
    Deferred mo1539setTorchOffNqN7i0k(AeMode aeMode);

    Deferred setTorchOn();

    /* JADX INFO: renamed from: update3A-ydBZfZg, reason: not valid java name */
    Deferred mo1540update3AydBZfZg(AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3);

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.CameraControls3A$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        /* JADX INFO: renamed from: update3A-ydBZfZg$default, reason: not valid java name */
        public static /* synthetic */ Deferred m1541update3AydBZfZg$default(CameraControls3A cameraControls3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: update3A-ydBZfZg");
            }
            if ((i & 1) != 0) {
                aeMode = null;
            }
            if ((i & 2) != 0) {
                afMode = null;
            }
            if ((i & 4) != 0) {
                awbMode = null;
            }
            if ((i & 8) != 0) {
                list = null;
            }
            if ((i & 16) != 0) {
                list2 = null;
            }
            if ((i & 32) != 0) {
                list3 = null;
            }
            return cameraControls3A.mo1540update3AydBZfZg(aeMode, afMode, awbMode, list, list2, list3);
        }
    }
}
