package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import java.util.List;
import java.util.Map;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* JADX INFO: loaded from: classes3.dex */
public final class GraphState3A {
    private final AtomicRef _state = AtomicFU.atomic(new State3A(null, null, null, null, null, null, null, null, null, null, 1023, null));

    public final State3A getCurrent() {
        return (State3A) this._state.getValue();
    }

    /* JADX INFO: renamed from: update-7jOEVJU$default, reason: not valid java name */
    public static /* synthetic */ void m1909update7jOEVJU$default(GraphState3A graphState3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, int i, Object obj) {
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
            flashMode = null;
        }
        if ((i & 16) != 0) {
            list = null;
        }
        if ((i & 32) != 0) {
            list2 = null;
        }
        if ((i & 64) != 0) {
            list3 = null;
        }
        if ((i & 128) != 0) {
            bool = null;
        }
        if ((i & 256) != 0) {
            bool2 = null;
        }
        if ((i & 512) != 0) {
            bool3 = null;
        }
        graphState3A.m1910update7jOEVJU(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0069  */
    /* JADX INFO: renamed from: update-7jOEVJU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1910update7jOEVJU(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3) {
        Object value;
        State3A state3A;
        AeMode aeModeM1917getAeModeO_cDUUs;
        AfMode afModeM1918getAfMode32_E3BI;
        AwbMode awbModeM1919getAwbModeaLFtWSU;
        FlashMode flashModeM1920getFlashModecL19HE;
        List aeRegions;
        List afRegions;
        List awbRegions;
        Boolean aeLock;
        Boolean afLock;
        List list4;
        List list5;
        List list6;
        Boolean awbLock;
        AtomicRef atomicRef = this._state;
        do {
            value = atomicRef.getValue();
            state3A = (State3A) value;
            aeModeM1917getAeModeO_cDUUs = aeMode == null ? state3A.m1917getAeModeO_cDUUs() : aeMode;
            afModeM1918getAfMode32_E3BI = afMode == null ? state3A.m1918getAfMode32_E3BI() : afMode;
            awbModeM1919getAwbModeaLFtWSU = awbMode == null ? state3A.m1919getAwbModeaLFtWSU() : awbMode;
            flashModeM1920getFlashModecL19HE = flashMode == null ? state3A.m1920getFlashModecL19HE() : flashMode;
            if (list != null) {
                List list7 = list;
                if (list7.isEmpty()) {
                    list7 = null;
                }
                aeRegions = list7;
                if (aeRegions == null) {
                    aeRegions = state3A.getAeRegions();
                }
            }
            if (list2 != null) {
                List list8 = list2;
                if (list8.isEmpty()) {
                    list8 = null;
                }
                afRegions = list8;
                if (afRegions == null) {
                    afRegions = state3A.getAfRegions();
                }
            }
            if (list3 != null) {
                List list9 = list3;
                awbRegions = list9.isEmpty() ? null : list9;
                if (awbRegions == null) {
                    awbRegions = state3A.getAwbRegions();
                }
            }
            aeLock = bool == null ? state3A.getAeLock() : bool;
            afLock = bool2 == null ? state3A.getAfLock() : bool2;
            if (bool3 == null) {
                awbLock = state3A.getAwbLock();
                List list10 = afRegions;
                list4 = awbRegions;
                list5 = aeRegions;
                list6 = list10;
            } else {
                List list11 = afRegions;
                list4 = awbRegions;
                list5 = aeRegions;
                list6 = list11;
                awbLock = bool3;
            }
        } while (!atomicRef.compareAndSet(value, state3A.m1916copy7jOEVJU(aeModeM1917getAeModeO_cDUUs, afModeM1918getAfMode32_E3BI, awbModeM1919getAwbModeaLFtWSU, flashModeM1920getFlashModecL19HE, list5, list6, list4, aeLock, afLock, awbLock)));
    }

    public final Map toCaptureRequestParametersMap() {
        return GraphState3AKt.toCaptureRequestParameterMap(getCurrent());
    }
}
