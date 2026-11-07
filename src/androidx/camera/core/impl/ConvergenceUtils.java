package androidx.camera.core.impl;

import androidx.camera.core.Logger;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ConvergenceUtils {
    private static final Set<CameraCaptureMetaData$AeState> AE_CONVERGED_STATE_SET;
    private static final Set<CameraCaptureMetaData$AeState> AE_TORCH_AS_FLASH_CONVERGED_STATE_SET;
    private static final Set<CameraCaptureMetaData$AfState> AF_CONVERGED_STATE_SET = Collections.unmodifiableSet(EnumSet.of(CameraCaptureMetaData$AfState.PASSIVE_FOCUSED, CameraCaptureMetaData$AfState.PASSIVE_NOT_FOCUSED, CameraCaptureMetaData$AfState.LOCKED_FOCUSED, CameraCaptureMetaData$AfState.LOCKED_NOT_FOCUSED));
    private static final Set<CameraCaptureMetaData$AwbState> AWB_CONVERGED_STATE_SET = Collections.unmodifiableSet(EnumSet.of(CameraCaptureMetaData$AwbState.CONVERGED, CameraCaptureMetaData$AwbState.UNKNOWN));

    static {
        CameraCaptureMetaData$AeState cameraCaptureMetaData$AeState = CameraCaptureMetaData$AeState.CONVERGED;
        CameraCaptureMetaData$AeState cameraCaptureMetaData$AeState2 = CameraCaptureMetaData$AeState.FLASH_REQUIRED;
        CameraCaptureMetaData$AeState cameraCaptureMetaData$AeState3 = CameraCaptureMetaData$AeState.UNKNOWN;
        Set<CameraCaptureMetaData$AeState> setUnmodifiableSet = Collections.unmodifiableSet(EnumSet.of(cameraCaptureMetaData$AeState, cameraCaptureMetaData$AeState2, cameraCaptureMetaData$AeState3));
        AE_CONVERGED_STATE_SET = setUnmodifiableSet;
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) setUnmodifiableSet);
        enumSetCopyOf.remove(cameraCaptureMetaData$AeState2);
        enumSetCopyOf.remove(cameraCaptureMetaData$AeState3);
        AE_TORCH_AS_FLASH_CONVERGED_STATE_SET = Collections.unmodifiableSet(enumSetCopyOf);
    }

    public static boolean is3AConverged(CameraCaptureResult cameraCaptureResult, boolean z) {
        boolean z2 = cameraCaptureResult.getAfMode() == CameraCaptureMetaData$AfMode.OFF || AF_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAfState());
        boolean z3 = cameraCaptureResult.getAeMode() == CameraCaptureMetaData$AeMode.OFF;
        boolean z4 = !z ? !(z3 || AE_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAeState())) : !(z3 || AE_TORCH_AS_FLASH_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAeState()));
        boolean z5 = cameraCaptureResult.getAwbMode() == CameraCaptureMetaData$AwbMode.OFF || AWB_CONVERGED_STATE_SET.contains(cameraCaptureResult.getAwbState());
        Logger.m74d("ConvergenceUtils", "checkCaptureResult, AE=" + cameraCaptureResult.getAeState() + " AF =" + cameraCaptureResult.getAfState() + " AWB=" + cameraCaptureResult.getAwbState());
        return z2 && z4 && z5;
    }
}
