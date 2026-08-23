package org.telegram.messenger.voip;

import android.content.Intent;
import android.graphics.Point;
import android.media.projection.MediaProjection;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.webrtc.Camera1Enumerator;
import org.webrtc.Camera2Enumerator;
import org.webrtc.CameraEnumerator;
import org.webrtc.CameraVideoCapturer;
import org.webrtc.CapturerObserver;
import org.webrtc.EglBase;
import org.webrtc.Logging;
import org.webrtc.ScreenCapturerAndroid;
import org.webrtc.SurfaceTextureHelper;
import org.webrtc.VideoCapturer;
import org.webrtc.voiceengine.WebRtcAudioRecord;

/* JADX INFO: loaded from: classes5.dex */
public class VideoCapturerDevice {
    private static final int CAPTURE_FPS = 30;
    private static final int CAPTURE_HEIGHT = 720;
    private static final int CAPTURE_WIDTH = 1280;
    public static EglBase eglBase;
    private static VideoCapturerDevice[] instance = new VideoCapturerDevice[2];
    public static Intent mediaProjectionPermissionResultData;
    private int currentHeight;
    private int currentWidth;
    private Handler handler;
    private CapturerObserver nativeCapturerObserver;
    private long nativePtr;
    private HandlerThread thread;
    private VideoCapturer videoCapturer;
    private SurfaceTextureHelper videoCapturerSurfaceTextureHelper;

    private static native CapturerObserver nativeGetJavaVideoCapturerObserver(long j);

    private void onAspectRatioRequested(float f) {
    }

    public VideoCapturerDevice(final boolean z) {
        Logging.enableLogToDebugOutput(Logging.Severity.LS_VERBOSE);
        Logging.m968d("VideoCapturerDevice", "device model = " + Build.MANUFACTURER + Build.MODEL);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(boolean z) {
        if (eglBase == null) {
            eglBase = EglBase.create(null, EglBase.CONFIG_PLAIN);
        }
        instance[z ? 1 : 0] = this;
        HandlerThread handlerThread = new HandlerThread("CallThread");
        this.thread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.thread.getLooper());
    }

    public static void checkScreenCapturerSize() {
        if (instance[1] == null) {
            return;
        }
        final Point screenCaptureSize = getScreenCaptureSize();
        final VideoCapturerDevice videoCapturerDevice = instance[1];
        int i = videoCapturerDevice.currentWidth;
        int i2 = screenCaptureSize.x;
        if (i == i2 && videoCapturerDevice.currentHeight == screenCaptureSize.y) {
            return;
        }
        videoCapturerDevice.currentWidth = i2;
        videoCapturerDevice.currentHeight = screenCaptureSize.y;
        videoCapturerDevice.handler.post(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                VideoCapturerDevice.$r8$lambda$AbWAc2gyuD_R4EsJCEzP90lW2hU(this.f$0, screenCaptureSize);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$AbWAc2gyuD_R4EsJCEzP90lW2hU(VideoCapturerDevice videoCapturerDevice, Point point) {
        VideoCapturer videoCapturer = videoCapturerDevice.videoCapturer;
        if (videoCapturer != null) {
            videoCapturer.changeCaptureFormat(point.x, point.y, 30);
        }
    }

    private static Point getScreenCaptureSize() {
        return getScreenCaptureSize(16);
    }

    private static Point getScreenCaptureSize(int i) {
        int i2;
        int i3;
        Display defaultDisplay = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i4 = point.x;
        int i5 = point.y;
        float f = i4 > i5 ? i5 / i4 : i4 / i5;
        int i6 = 1;
        while (true) {
            if (i6 > 100) {
                i6 = -1;
                i2 = -1;
                break;
            }
            float f2 = i6 * f;
            i2 = (int) f2;
            if (f2 != i2) {
                i6++;
            } else if (point.x <= point.y) {
                i2 = i6;
                i6 = i2;
            }
        }
        if (i6 != -1 && f != 1.0f) {
            while (true) {
                int i7 = point.x;
                if (i7 <= 1000 && (i3 = point.y) <= 1000 && i7 % i == 0 && i3 % i == 0) {
                    break;
                }
                int i8 = i7 - i6;
                point.x = i8;
                int i9 = point.y - i2;
                point.y = i9;
                if (i8 < 800 && i9 < 800) {
                    i6 = -1;
                    break;
                }
            }
        }
        if (i6 != -1 && f != 1.0f) {
            return point;
        }
        float fMax = Math.max(point.x / 970.0f, point.y / 970.0f);
        float f3 = i;
        point.x = ((int) Math.ceil((point.x / fMax) / f3)) * i;
        point.y = ((int) Math.ceil((point.y / fMax) / f3)) * i;
        return point;
    }

    private void init(final long j, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$init$5(j, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$5(final long j, String str) {
        if (eglBase == null) {
            return;
        }
        this.nativePtr = j;
        if ("screen".equals(str)) {
            if (this.videoCapturer == null) {
                this.videoCapturer = new ScreenCapturerAndroid(mediaProjectionPermissionResultData, new C26451());
                final Point screenCaptureSize = getScreenCaptureSize();
                this.currentWidth = screenCaptureSize.x;
                this.currentHeight = screenCaptureSize.y;
                this.videoCapturerSurfaceTextureHelper = SurfaceTextureHelper.create("ScreenCapturerThread", eglBase.getEglBaseContext());
                this.handler.post(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$init$2(j, screenCaptureSize);
                    }
                });
                return;
            }
            return;
        }
        CameraEnumerator camera2Enumerator = Camera2Enumerator.isSupported(ApplicationLoader.applicationContext) ? new Camera2Enumerator(ApplicationLoader.applicationContext) : new Camera1Enumerator();
        String[] deviceNames = camera2Enumerator.getDeviceNames();
        int i = 0;
        while (true) {
            if (i >= deviceNames.length) {
                i = -1;
                break;
            } else if (camera2Enumerator.isFrontFacing(deviceNames[i]) == "front".equals(str)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        final String str2 = deviceNames[i];
        if (this.videoCapturer == null) {
            this.videoCapturer = camera2Enumerator.createCapturer(str2, new C26462());
            this.videoCapturerSurfaceTextureHelper = SurfaceTextureHelper.create("VideoCapturerThread", eglBase.getEglBaseContext());
            this.handler.post(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$init$3(j);
                }
            });
        } else {
            FileLog.m895d("VideoCapturerDevice init(" + j + "): videoCapturer.switchCamera CAMERA");
            this.handler.post(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$init$4(str2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VideoCapturerDevice$1 */
    public class C26451 extends MediaProjection.Callback {
        public C26451() {
        }

        @Override // android.media.projection.MediaProjection.Callback
        public void onStop() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoCapturerDevice.C26451.m6421$r8$lambda$ZQSuWiFDNOs2qmwnLNxKb4FvRU();
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$ZQSuWiFDNOs2qmwnLNxKb-4FvRU, reason: not valid java name */
        public static /* synthetic */ void m6421$r8$lambda$ZQSuWiFDNOs2qmwnLNxKb4FvRU() {
            if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().stopScreenCapture();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$2(long j, Point point) {
        if (this.videoCapturerSurfaceTextureHelper != null) {
            long j2 = this.nativePtr;
            if (j2 == 0) {
                return;
            }
            this.nativeCapturerObserver = nativeGetJavaVideoCapturerObserver(j2);
            this.videoCapturer.initialize(this.videoCapturerSurfaceTextureHelper, ApplicationLoader.applicationContext, this.nativeCapturerObserver);
            FileLog.m895d("VideoCapturerDevice init(" + j + "): videoCapturer.startCapture SCREEN");
            this.videoCapturer.startCapture(point.x, point.y, 30);
            WebRtcAudioRecord webRtcAudioRecord = WebRtcAudioRecord.Instance;
            if (webRtcAudioRecord != null) {
                webRtcAudioRecord.initDeviceAudioRecord(((ScreenCapturerAndroid) this.videoCapturer).getMediaProjection());
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VideoCapturerDevice$2 */
    public class C26462 implements CameraVideoCapturer.CameraEventsHandler {
        @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
        public void onCameraClosed() {
        }

        @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
        public void onCameraDisconnected() {
        }

        @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
        public void onCameraError(String str) {
        }

        @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
        public void onCameraFreezed(String str) {
        }

        @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
        public void onCameraOpening(String str) {
        }

        public C26462() {
        }

        @Override // org.webrtc.CameraVideoCapturer.CameraEventsHandler
        public void onFirstFrameAvailable() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoCapturerDevice.C26462.$r8$lambda$nw9ghc47P82EeNmCdLj2fBnzRy0();
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$nw9ghc47P82EeNmCdLj2fBnzRy0() {
            if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().onCameraFirstFrameAvailable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$3(long j) {
        if (this.videoCapturerSurfaceTextureHelper == null) {
            return;
        }
        this.nativeCapturerObserver = nativeGetJavaVideoCapturerObserver(this.nativePtr);
        this.videoCapturer.initialize(this.videoCapturerSurfaceTextureHelper, ApplicationLoader.applicationContext, this.nativeCapturerObserver);
        FileLog.m895d("VideoCapturerDevice init(" + j + "): videoCapturer.startCapture CAMERA");
        this.videoCapturer.startCapture(CAPTURE_WIDTH, CAPTURE_HEIGHT, 30);
    }

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VideoCapturerDevice$3 */
    public class C26473 implements CameraVideoCapturer.CameraSwitchHandler {
        @Override // org.webrtc.CameraVideoCapturer.CameraSwitchHandler
        public void onCameraSwitchError(String str) {
        }

        public C26473() {
        }

        @Override // org.webrtc.CameraVideoCapturer.CameraSwitchHandler
        public void onCameraSwitchDone(final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoCapturerDevice.C26473.$r8$lambda$67_itrkxqu4lzdGSiVNTf3YO7M8(z);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$67_itrkxqu4lzdGSiVNTf3YO7M8(boolean z) {
            if (VoIPService.getSharedInstance() != null) {
                VoIPService.getSharedInstance().setSwitchingCamera(false, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$4(String str) {
        ((CameraVideoCapturer) this.videoCapturer).switchCamera(new C26473(), str);
    }

    public static MediaProjection getMediaProjection() {
        VideoCapturerDevice videoCapturerDevice = instance[1];
        if (videoCapturerDevice == null) {
            return null;
        }
        return ((ScreenCapturerAndroid) videoCapturerDevice.videoCapturer).getMediaProjection();
    }

    private void onStateChanged(final long j, final int i) {
        FileLog.m895d("VideoCapturerDevice onStateChanged(" + j + ", " + i + ")");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStateChanged$7(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStateChanged$7(final long j, final int i) {
        if (this.nativePtr != j) {
            return;
        }
        this.handler.post(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStateChanged$6(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStateChanged$6(int i, long j) {
        if (this.videoCapturer == null) {
            return;
        }
        if (i == 2) {
            FileLog.m895d("VideoCapturerDevice onStateChanged(" + j + ", " + i + "): videoCapturer.startCapture");
            this.videoCapturer.startCapture(CAPTURE_WIDTH, CAPTURE_HEIGHT, 30);
            return;
        }
        try {
            FileLog.m895d("VideoCapturerDevice onStateChanged(" + j + ", " + i + "): videoCapturer.stopCapture");
            this.videoCapturer.stopCapture();
        } catch (InterruptedException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
        }
    }

    private void onDestroy() {
        FileLog.m895d("VideoCapturerDevice onDestroy ptr=" + this.nativePtr);
        this.nativePtr = 0L;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onDestroy$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDestroy$9() {
        int i = 0;
        while (true) {
            VideoCapturerDevice[] videoCapturerDeviceArr = instance;
            if (i >= videoCapturerDeviceArr.length) {
                break;
            }
            if (videoCapturerDeviceArr[i] == this) {
                videoCapturerDeviceArr[i] = null;
                break;
            }
            i++;
        }
        this.handler.post(new Runnable() { // from class: org.telegram.messenger.voip.VideoCapturerDevice$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onDestroy$8();
            }
        });
        try {
            this.thread.quitSafely();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDestroy$8() {
        WebRtcAudioRecord webRtcAudioRecord;
        if ((this.videoCapturer instanceof ScreenCapturerAndroid) && (webRtcAudioRecord = WebRtcAudioRecord.Instance) != null) {
            webRtcAudioRecord.stopDeviceAudioRecord();
        }
        if (this.videoCapturer != null) {
            FileLog.m895d("VideoCapturerDevice onDestroy: videoCapturer.stopCapture");
            try {
                this.videoCapturer.stopCapture();
                this.videoCapturer.dispose();
                this.videoCapturer = null;
            } catch (InterruptedException e) {
                HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
                return;
            }
        }
        SurfaceTextureHelper surfaceTextureHelper = this.videoCapturerSurfaceTextureHelper;
        if (surfaceTextureHelper != null) {
            surfaceTextureHelper.dispose();
            this.videoCapturerSurfaceTextureHelper = null;
        }
    }

    private EglBase.Context getSharedEGLContext() {
        if (eglBase == null) {
            eglBase = EglBase.create(null, EglBase.CONFIG_PLAIN);
        }
        EglBase eglBase2 = eglBase;
        if (eglBase2 != null) {
            return eglBase2.getEglBaseContext();
        }
        return null;
    }

    public static EglBase getEglBase() {
        if (eglBase == null) {
            eglBase = EglBase.create(null, EglBase.CONFIG_PLAIN);
        }
        return eglBase;
    }
}
