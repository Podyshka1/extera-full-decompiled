package androidx.camera.camera2.pipe;

import kotlin.jvm.JvmInline;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002\f\rB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\t\u001a\u00020\b8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u0012\u0004\b\u000b\u0010\u0003¨\u0006\u000e"}, d2 = {"Landroidx/camera/camera2/pipe/CameraInterop;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;", "nextCameraCaptureSessionId-159jkk4$camera_camera2_pipe", "()I", "nextCameraCaptureSessionId", "Lkotlinx/atomicfu/AtomicInt;", "captureSessionIds", "Lkotlinx/atomicfu/AtomicInt;", "getCaptureSessionIds$annotations", "CaptureSessionListener", "CameraCaptureSessionId", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraInterop {
    public static final CameraInterop INSTANCE = new CameraInterop();
    private static final AtomicInt captureSessionIds = AtomicFU.atomic(0);

    @kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0006"}, d2 = {"Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class CameraCaptureSessionId {
        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1216constructorimpl(int i) {
            return i;
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\bf\u0018\u00002\u00020\u0001J\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\f\u0010\bJ\u001f\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u000e\u0010\bJ\u001f\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0010\u0010\bJ\u001f\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0012\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;", "captureSessionId", _UrlKt.FRAGMENT_ENCODE_SET, "onConfigured-rphkYDA", "(Ljava/lang/String;I)V", "onConfigured", "onConfigureFailed-rphkYDA", "onConfigureFailed", "onReady-rphkYDA", "onReady", "onActive-rphkYDA", "onActive", "onCaptureQueueEmpty-rphkYDA", "onCaptureQueueEmpty", "onClosed-rphkYDA", "onClosed", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public interface CaptureSessionListener {
        /* JADX INFO: renamed from: onActive-rphkYDA */
        void mo1039onActiverphkYDA(String cameraId, int captureSessionId);

        /* JADX INFO: renamed from: onCaptureQueueEmpty-rphkYDA */
        void mo1040onCaptureQueueEmptyrphkYDA(String cameraId, int captureSessionId);

        /* JADX INFO: renamed from: onClosed-rphkYDA */
        void mo1041onClosedrphkYDA(String cameraId, int captureSessionId);

        /* JADX INFO: renamed from: onConfigureFailed-rphkYDA */
        void mo1042onConfigureFailedrphkYDA(String cameraId, int captureSessionId);

        /* JADX INFO: renamed from: onConfigured-rphkYDA */
        void mo1043onConfiguredrphkYDA(String cameraId, int captureSessionId);

        /* JADX INFO: renamed from: onReady-rphkYDA */
        void mo1044onReadyrphkYDA(String cameraId, int captureSessionId);
    }

    private CameraInterop() {
    }
}
