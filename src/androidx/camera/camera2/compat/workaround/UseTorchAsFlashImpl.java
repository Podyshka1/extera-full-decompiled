package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.UltraWideFlashCaptureUnderexposureQuirk;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class UseTorchAsFlashImpl implements UseTorchAsFlash {
    private final CameraDevices cameraDevices;
    private final CameraQuirks cameraQuirks;
    private final Lazy hasUwCameraUnderexposedFlashCaptureQuirk$delegate;
    private final IntrinsicZoomCalculator intrinsicZoomCalculator;

    /* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl$shouldUseTorchAsFlash$1 */
    static final class C01231 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01231(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseTorchAsFlashImpl.this.shouldUseTorchAsFlash(null, this);
        }
    }

    public UseTorchAsFlashImpl(CameraQuirks cameraQuirks, CameraDevices cameraDevices, IntrinsicZoomCalculator intrinsicZoomCalculator) {
        Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
        Intrinsics.checkNotNullParameter(cameraDevices, "cameraDevices");
        Intrinsics.checkNotNullParameter(intrinsicZoomCalculator, "intrinsicZoomCalculator");
        this.cameraQuirks = cameraQuirks;
        this.cameraDevices = cameraDevices;
        this.intrinsicZoomCalculator = intrinsicZoomCalculator;
        this.hasUwCameraUnderexposedFlashCaptureQuirk$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(UseTorchAsFlashImpl.hasUwCameraUnderexposedFlashCaptureQuirk_delegate$lambda$0(this.f$0));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasUwCameraUnderexposedFlashCaptureQuirk() {
        return ((Boolean) this.hasUwCameraUnderexposedFlashCaptureQuirk$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasUwCameraUnderexposedFlashCaptureQuirk_delegate$lambda$0(UseTorchAsFlashImpl useTorchAsFlashImpl) {
        return useTorchAsFlashImpl.cameraQuirks.getQuirks().contains(UltraWideFlashCaptureUnderexposureQuirk.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object shouldUseTorchAsFlash(Function1 function1, Continuation continuation) {
        C01231 c01231;
        if (continuation instanceof C01231) {
            c01231 = (C01231) continuation;
            int i = c01231.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01231.label = i - Integer.MIN_VALUE;
            } else {
                c01231 = new C01231(continuation);
            }
        }
        Object objInvoke = c01231.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01231.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "shouldUseTorchAsFlash: hasUwCameraUnderexposedFlashCaptureQuirk = " + getHasUwCameraUnderexposedFlashCaptureQuirk());
            }
            if (!getHasUwCameraUnderexposedFlashCaptureQuirk()) {
                return Boxing.boxBoolean(true);
            }
            if (Build.VERSION.SDK_INT < 29) {
                if (log.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "shouldUseTorchAsFlash: API level is too low to know if it's ultra wide camera, defaulting to workaround for safety.");
                }
                return Boxing.boxBoolean(true);
            }
            c01231.label = 1;
            objInvoke = function1.invoke(c01231);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objInvoke);
        }
        FrameMetadata frameMetadata = (FrameMetadata) objInvoke;
        if (frameMetadata != null) {
            Boolean boolIsUltraWideCamera = isUltraWideCamera(frameMetadata);
            return Boxing.boxBoolean(boolIsUltraWideCamera != null ? boolIsUltraWideCamera.booleanValue() : true);
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w("CXCP", "shouldUseTorchAsFlash: frameMetadata is null, defaulting to workaround for safety.");
        }
        return Boxing.boxBoolean(true);
    }

    private final Boolean isUltraWideCamera(FrameMetadata frameMetadata) {
        CaptureResult.Key LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID = CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID;
        Intrinsics.checkNotNullExpressionValue(LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID, "LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID");
        String str = (String) frameMetadata.get(LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID);
        if (str == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "isUltraWideCamera: could not get active physical camera ID to identify if it's ultra wide camera.");
            }
            return null;
        }
        CameraMetadata cameraMetadataM1547awaitCameraMetadataFpsL5FU$default = CameraDevices.CC.m1547awaitCameraMetadataFpsL5FU$default(this.cameraDevices, CameraId.m1603constructorimpl(str), null, 2, null);
        if (cameraMetadataM1547awaitCameraMetadataFpsL5FU$default == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "isUltraWideCamera: failed to get CameraMetadata for " + str);
            }
            return null;
        }
        Float fCalculateIntrinsicZoomRatio = this.intrinsicZoomCalculator.calculateIntrinsicZoomRatio(cameraMetadataM1547awaitCameraMetadataFpsL5FU$default);
        if (fCalculateIntrinsicZoomRatio == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "isUltraWideCamera: could not calculate intrinsic zoom ratio.");
            }
            return null;
        }
        float fFloatValue = fCalculateIntrinsicZoomRatio.floatValue();
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "isUltraWideCamera: cameraId = " + str + ", intrinsicZoomRatio = " + fFloatValue);
        }
        return Boolean.valueOf(fFloatValue < 1.0f);
    }

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public boolean shouldDisableAePrecapture() {
        return !getHasUwCameraUnderexposedFlashCaptureQuirk();
    }
}
