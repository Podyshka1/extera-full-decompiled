package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GraphState3AKt {
    public static final Map toCaptureRequestParameterMap(State3A state3A) {
        Intrinsics.checkNotNullParameter(state3A, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AeMode aeModeM1917getAeModeO_cDUUs = state3A.m1917getAeModeO_cDUUs();
        if (aeModeM1917getAeModeO_cDUUs != null) {
            int iM1491unboximpl = aeModeM1917getAeModeO_cDUUs.m1491unboximpl();
            CaptureRequest.Key CONTROL_AE_MODE = CaptureRequest.CONTROL_AE_MODE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_MODE, "CONTROL_AE_MODE");
            linkedHashMap.put(CONTROL_AE_MODE, Integer.valueOf(iM1491unboximpl));
        }
        AfMode afModeM1918getAfMode32_E3BI = state3A.m1918getAfMode32_E3BI();
        if (afModeM1918getAfMode32_E3BI != null) {
            int iM1502unboximpl = afModeM1918getAfMode32_E3BI.m1502unboximpl();
            CaptureRequest.Key CONTROL_AF_MODE = CaptureRequest.CONTROL_AF_MODE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AF_MODE, "CONTROL_AF_MODE");
            linkedHashMap.put(CONTROL_AF_MODE, Integer.valueOf(iM1502unboximpl));
        }
        AwbMode awbModeM1919getAwbModeaLFtWSU = state3A.m1919getAwbModeaLFtWSU();
        if (awbModeM1919getAwbModeaLFtWSU != null) {
            int iM1521unboximpl = awbModeM1919getAwbModeaLFtWSU.m1521unboximpl();
            CaptureRequest.Key CONTROL_AWB_MODE = CaptureRequest.CONTROL_AWB_MODE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_MODE, "CONTROL_AWB_MODE");
            linkedHashMap.put(CONTROL_AWB_MODE, Integer.valueOf(iM1521unboximpl));
        }
        FlashMode flashModeM1920getFlashModecL19HE = state3A.m1920getFlashModecL19HE();
        if (flashModeM1920getFlashModecL19HE != null) {
            int iM1635unboximpl = flashModeM1920getFlashModecL19HE.m1635unboximpl();
            CaptureRequest.Key FLASH_MODE = CaptureRequest.FLASH_MODE;
            Intrinsics.checkNotNullExpressionValue(FLASH_MODE, "FLASH_MODE");
            linkedHashMap.put(FLASH_MODE, Integer.valueOf(iM1635unboximpl));
        }
        List aeRegions = state3A.getAeRegions();
        if (aeRegions != null) {
            CaptureRequest.Key CONTROL_AE_REGIONS = CaptureRequest.CONTROL_AE_REGIONS;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_REGIONS, "CONTROL_AE_REGIONS");
            linkedHashMap.put(CONTROL_AE_REGIONS, aeRegions.toArray(new MeteringRectangle[0]));
        }
        List afRegions = state3A.getAfRegions();
        if (afRegions != null) {
            CaptureRequest.Key CONTROL_AF_REGIONS = CaptureRequest.CONTROL_AF_REGIONS;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AF_REGIONS, "CONTROL_AF_REGIONS");
            linkedHashMap.put(CONTROL_AF_REGIONS, afRegions.toArray(new MeteringRectangle[0]));
        }
        List awbRegions = state3A.getAwbRegions();
        if (awbRegions != null) {
            CaptureRequest.Key CONTROL_AWB_REGIONS = CaptureRequest.CONTROL_AWB_REGIONS;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_REGIONS, "CONTROL_AWB_REGIONS");
            linkedHashMap.put(CONTROL_AWB_REGIONS, awbRegions.toArray(new MeteringRectangle[0]));
        }
        Boolean aeLock = state3A.getAeLock();
        if (aeLock != null) {
            CaptureRequest.Key CONTROL_AE_LOCK = CaptureRequest.CONTROL_AE_LOCK;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_LOCK, "CONTROL_AE_LOCK");
            linkedHashMap.put(CONTROL_AE_LOCK, aeLock);
        }
        Boolean awbLock = state3A.getAwbLock();
        if (awbLock != null) {
            CaptureRequest.Key CONTROL_AWB_LOCK = CaptureRequest.CONTROL_AWB_LOCK;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_LOCK, "CONTROL_AWB_LOCK");
            linkedHashMap.put(CONTROL_AWB_LOCK, awbLock);
        }
        return linkedHashMap;
    }
}
