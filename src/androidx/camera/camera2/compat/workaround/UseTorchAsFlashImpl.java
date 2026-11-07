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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ.\u0010\u0010\u001a\u00020\u000b2\u001e\u0010\u0011\u001a\u001a\b\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0012H\u0096@¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000b*\u00020\u0014H\u0003¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;", "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;", "cameraQuirks", "Landroidx/camera/camera2/compat/quirk/CameraQuirks;", "cameraDevices", "Landroidx/camera/camera2/pipe/CameraDevices;", "intrinsicZoomCalculator", "Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;", "<init>", "(Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/pipe/CameraDevices;Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;)V", "hasUwCameraUnderexposedFlashCaptureQuirk", _UrlKt.FRAGMENT_ENCODE_SET, "getHasUwCameraUnderexposedFlashCaptureQuirk", "()Z", "hasUwCameraUnderexposedFlashCaptureQuirk$delegate", "Lkotlin/Lazy;", "shouldUseTorchAsFlash", "frameMetadata", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Landroidx/camera/camera2/pipe/FrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isUltraWideCamera", "(Landroidx/camera/camera2/pipe/FrameMetadata;)Ljava/lang/Boolean;", "shouldDisableAePrecapture", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseTorchAsFlash.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseTorchAsFlash.kt\nandroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,171:1\n50#2,2:172\n71#2,2:174\n71#2,2:176\n71#2,2:178\n71#2,2:180\n71#2,2:182\n50#2,2:184\n*S KotlinDebug\n*F\n+ 1 UseTorchAsFlash.kt\nandroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl\n*L\n91#1:172,2\n106#1:174,2\n116#1:176,2\n131#1:178,2\n141#1:180,2\n148#1:182,2\n152#1:184,2\n*E\n"})
public final class UseTorchAsFlashImpl implements UseTorchAsFlash {
    private final CameraDevices cameraDevices;
    private final CameraQuirks cameraQuirks;

    /* JADX INFO: renamed from: hasUwCameraUnderexposedFlashCaptureQuirk$delegate, reason: from kotlin metadata */
    private final Lazy hasUwCameraUnderexposedFlashCaptureQuirk = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(this.f$0.cameraQuirks.getQuirks().contains(UltraWideFlashCaptureUnderexposureQuirk.class));
        }
    });
    private final IntrinsicZoomCalculator intrinsicZoomCalculator;

    /* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl$shouldUseTorchAsFlash$1 */
    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl", m873f = "UseTorchAsFlash.kt", m874i = {}, m875l = {113}, m876m = "shouldUseTorchAsFlash", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01281 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01281(Continuation<? super C01281> continuation) {
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
        this.cameraQuirks = cameraQuirks;
        this.cameraDevices = cameraDevices;
        this.intrinsicZoomCalculator = intrinsicZoomCalculator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasUwCameraUnderexposedFlashCaptureQuirk() {
        return ((Boolean) this.hasUwCameraUnderexposedFlashCaptureQuirk.getValue()).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object shouldUseTorchAsFlash(Function1<? super Continuation<? super FrameMetadata>, ? extends Object> function1, Continuation<? super Boolean> continuation) {
        C01281 c01281;
        if (continuation instanceof C01281) {
            c01281 = (C01281) continuation;
            int i = c01281.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01281.label = i - Integer.MIN_VALUE;
            } else {
                c01281 = new C01281(continuation);
            }
        }
        Object objInvoke = c01281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01281.label;
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
            c01281.label = 1;
            objInvoke = function1.invoke(c01281);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
        String str = (String) frameMetadata.get(CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID);
        if (str == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "isUltraWideCamera: could not get active physical camera ID to identify if it's ultra wide camera.");
            }
            return null;
        }
        CameraMetadata cameraMetadataM1239awaitCameraMetadataFpsL5FU$default = CameraDevices.m1239awaitCameraMetadataFpsL5FU$default(this.cameraDevices, CameraId.m1299constructorimpl(str), null, 2, null);
        if (cameraMetadataM1239awaitCameraMetadataFpsL5FU$default == null) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "isUltraWideCamera: failed to get CameraMetadata for ".concat(str));
            }
            return null;
        }
        Float fCalculateIntrinsicZoomRatio = this.intrinsicZoomCalculator.calculateIntrinsicZoomRatio(cameraMetadataM1239awaitCameraMetadataFpsL5FU$default);
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
