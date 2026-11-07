package org.telegram.messenger.camera;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Range;
import android.view.Surface;
import android.view.WindowManager;
import com.exteragram.messenger.ExteraConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.Camera2Session;

/* JADX INFO: loaded from: classes6.dex */
public class Camera2Session {
    private CameraCharacteristics cameraCharacteristics;
    private CameraDevice cameraDevice;
    public final String cameraId;
    private final CameraManager cameraManager;
    private final CameraDevice.StateCallback cameraStateCallback;
    private CaptureRequest.Builder captureRequestBuilder;
    private CameraCaptureSession captureSession;
    private final CameraCaptureSession.StateCallback captureStateCallback;
    private Runnable doneCallback;
    private boolean flashing;
    private Handler handler;
    private ImageReader imageReader;
    private boolean isClosed;
    private boolean isError;
    private final boolean isFront;
    private boolean isSuccess;
    private long lastTime;
    private float maxZoom;
    private boolean nightMode;
    private final android.util.Size previewSize;
    private boolean recordingVideo;
    private boolean scanningBarcode;
    private Rect sensorSize;
    private Surface surface;
    private SurfaceTexture surfaceTexture;
    private HandlerThread thread;
    private float currentZoom = 1.0f;
    private volatile int recordingFrameRate = 30;
    private boolean opened = false;
    private final Rect cropRegion = new Rect();

    public float getMinZoom() {
        return 1.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Camera2Session create(boolean z, int i, int i2) {
        Camera2Session camera2Session;
        android.util.Size size;
        String str;
        String str2;
        CameraCharacteristics cameraCharacteristics;
        float f;
        boolean z2;
        CameraManager cameraManager;
        boolean z3;
        Context context = ApplicationLoader.applicationContext;
        CameraManager cameraManager2 = (CameraManager) context.getSystemService("camera");
        try {
            String[] cameraIdList = cameraManager2.getCameraIdList();
            int length = cameraIdList.length;
            int i3 = 0;
            size = null;
            str = null;
            float f2 = 0.0f;
            while (i3 < length) {
                try {
                    str2 = cameraIdList[i3];
                    cameraCharacteristics = cameraManager2.getCameraCharacteristics(str2);
                    camera2Session = null;
                } catch (Exception e) {
                    e = e;
                    camera2Session = null;
                }
                try {
                    if (((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue() != (!z)) {
                        cameraManager = cameraManager2;
                    } else {
                        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                        float width = ((android.util.Size) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)) == null ? 0.0f : r9.getWidth() / r9.getHeight();
                        float f3 = i / i2;
                        if (f3 >= 1.0f) {
                            f = 1.0f;
                            z2 = true;
                        } else {
                            f = 1.0f;
                            z2 = false;
                        }
                        if (width >= f) {
                            cameraManager = cameraManager2;
                            z3 = true;
                        } else {
                            cameraManager = cameraManager2;
                            z3 = false;
                        }
                        if (z2 != z3) {
                            width = f / width;
                        }
                        if (f2 <= 0.0f || Math.abs(f3 - f2) > Math.abs(f3 - width)) {
                            if (streamConfigurationMap != null) {
                                android.util.Size sizeChooseOptimalSize = chooseOptimalSize(streamConfigurationMap.getOutputSizes(SurfaceTexture.class), i, i2, false);
                                if (sizeChooseOptimalSize != null) {
                                    size = sizeChooseOptimalSize;
                                    str = str2;
                                    f2 = width;
                                }
                            }
                        }
                        i3++;
                        cameraManager2 = cameraManager;
                    }
                    i3++;
                    cameraManager2 = cameraManager;
                } catch (Exception e2) {
                    e = e2;
                    FileLog.m1040e(e);
                    if (str != null) {
                    }
                }
            }
            camera2Session = null;
        } catch (Exception e3) {
            e = e3;
            camera2Session = null;
            size = null;
            str = null;
        }
        return str != null ? camera2Session : new Camera2Session(context, z, str, size);
    }

    private Camera2Session(Context context, boolean z, String str, android.util.Size size) {
        float fFloatValue = 1.0f;
        this.maxZoom = 1.0f;
        HandlerThread handlerThread = new HandlerThread("tg_camera2");
        this.thread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.thread.getLooper());
        C28391 c28391 = new C28391(str);
        this.cameraStateCallback = c28391;
        this.captureStateCallback = new C28402(str);
        this.isFront = z;
        this.cameraId = str;
        this.previewSize = size;
        this.lastTime = System.currentTimeMillis();
        this.imageReader = ImageReader.newInstance(size.getWidth(), size.getHeight(), 256, 1);
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        this.cameraManager = cameraManager;
        try {
            CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
            this.cameraCharacteristics = cameraCharacteristics;
            this.sensorSize = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            Float f = (Float) this.cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
            if (f != null && f.floatValue() >= 1.0f) {
                fFloatValue = f.floatValue();
            }
            this.maxZoom = fFloatValue;
            cameraManager.openCamera(str, c28391, this.handler);
        } catch (Exception e) {
            FileLog.m1040e(e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            });
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.camera.Camera2Session$1 */
    public class C28391 extends CameraDevice.StateCallback {
        final /* synthetic */ String val$cameraId;

        public C28391(String str) {
            this.val$cameraId = str;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Camera2Session.this.cameraDevice = cameraDevice;
            Camera2Session.this.lastTime = System.currentTimeMillis();
            FileLog.m1037d("Camera2Session camera #" + this.val$cameraId + " opened");
            Camera2Session.this.checkOpen();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Camera2Session.this.cameraDevice = cameraDevice;
            FileLog.m1037d("Camera2Session camera #" + this.val$cameraId + " disconnected");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            Camera2Session.this.cameraDevice = cameraDevice;
            FileLog.m1038e("Camera2Session camera #" + this.val$cameraId + " received " + i + " error");
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$0() {
            Camera2Session.this.isError = true;
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.camera.Camera2Session$2 */
    public class C28402 extends CameraCaptureSession.StateCallback {
        final /* synthetic */ String val$cameraId;

        public C28402(String str) {
            this.val$cameraId = str;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            Camera2Session.this.captureSession = cameraCaptureSession;
            FileLog.m1038e("Camera2Session camera #" + this.val$cameraId + " capture session configured");
            Camera2Session.this.lastTime = System.currentTimeMillis();
            try {
                Camera2Session.this.updateCaptureRequest();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onConfigured$0();
                    }
                });
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConfigured$0() {
            Camera2Session.this.isSuccess = true;
            if (Camera2Session.this.doneCallback != null) {
                Camera2Session.this.doneCallback.run();
                Camera2Session.this.doneCallback = null;
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            Camera2Session.this.captureSession = cameraCaptureSession;
            FileLog.m1038e("Camera2Session camera #" + this.val$cameraId + " capture session failed to configure");
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConfigureFailed$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConfigureFailed$1() {
            Camera2Session.this.isError = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.isError = true;
    }

    public void whenDone(Runnable runnable) {
        if (isInitiated()) {
            runnable.run();
            this.doneCallback = null;
        } else {
            this.doneCallback = runnable;
        }
    }

    public void open(final SurfaceTexture surfaceTexture) {
        this.handler.post(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$open$1(surfaceTexture);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$1(SurfaceTexture surfaceTexture) {
        this.surfaceTexture = surfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(getPreviewWidth(), getPreviewHeight());
        }
        checkOpen();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkOpen() {
        if (this.opened || this.surfaceTexture == null || this.cameraDevice == null) {
            return;
        }
        this.opened = true;
        this.surface = new Surface(this.surfaceTexture);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.surface);
            arrayList.add(this.imageReader.getSurface());
            this.cameraDevice.createCaptureSession(arrayList, this.captureStateCallback, null);
        } catch (Exception e) {
            FileLog.m1040e(e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkOpen$2();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkOpen$2() {
        this.isError = true;
    }

    public boolean isInitiated() {
        return (this.isError || !this.isSuccess || this.isClosed) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getDisplayOrientation() {
        int i;
        try {
            Context context = ApplicationLoader.applicationContext;
            if (context == null) {
                return 0;
            }
            int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
            if (rotation == 0) {
                i = 0;
            } else if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
            Integer num = (Integer) this.cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            if (this.isFront) {
                return (360 - ((num.intValue() + i) % 360)) % 360;
            }
            return ((num.intValue() - i) + 360) % 360;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int getJpegOrientation() {
        int i;
        try {
            Context context = ApplicationLoader.applicationContext;
            if (context == null) {
                return 0;
            }
            int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
            if (rotation == 0) {
                i = 0;
            } else if (rotation == 1) {
                i = 90;
            } else if (rotation == 2) {
                i = 180;
            } else if (rotation == 3) {
                i = 270;
            }
            Integer num = (Integer) this.cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            if (this.isFront) {
                return (360 - ((num.intValue() + i) % 360)) % 360;
            }
            return ((num.intValue() - i) + 360) % 360;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return 0;
        }
    }

    public int getWorldAngle() {
        int jpegOrientation = getJpegOrientation() - getDisplayOrientation();
        return jpegOrientation < 0 ? jpegOrientation + 360 : jpegOrientation;
    }

    public int getCurrentOrientation() {
        return getJpegOrientation();
    }

    public void setZoom(float f) {
        if (!isInitiated() || this.captureRequestBuilder == null || this.cameraDevice == null || this.sensorSize == null) {
            return;
        }
        this.currentZoom = Utilities.clamp(f, this.maxZoom, 1.0f);
        updateCaptureRequest();
        try {
            this.captureSession.setRepeatingRequest(this.captureRequestBuilder.build(), null, this.handler);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void setFlash(boolean z) {
        if (this.flashing != z) {
            this.flashing = z;
            updateCaptureRequest();
        }
    }

    public boolean getFlash() {
        return this.flashing;
    }

    public float getZoom() {
        return this.currentZoom;
    }

    public float getMaxZoom() {
        return this.maxZoom;
    }

    public Range<Integer>[] getAvailableFpsRanges() {
        CameraCharacteristics cameraCharacteristics = this.cameraCharacteristics;
        if (cameraCharacteristics == null) {
            return null;
        }
        return (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
    }

    public int getRecordingFrameRate() {
        return this.recordingFrameRate;
    }

    private Range<Integer> selectExtendedFpsRange() {
        Range<Integer>[] availableFpsRanges = getAvailableFpsRanges();
        Range<Integer> range = null;
        if (availableFpsRanges != null) {
            for (Range<Integer> range2 : availableFpsRanges) {
                if (range2 != null && ((Integer) range2.getLower()).intValue() <= 60 && ((Integer) range2.getUpper()).intValue() == 60) {
                    if (((Integer) range2.getLower()).intValue() == 60 && ((Integer) range2.getUpper()).intValue() == 60) {
                        return range2;
                    }
                    if (range == null || ((Integer) range2.getLower()).intValue() > ((Integer) range.getLower()).intValue() || (((Integer) range2.getLower()).equals(range.getLower()) && ((Integer) range2.getUpper()).intValue() < ((Integer) range.getUpper()).intValue())) {
                        range = range2;
                    }
                }
            }
        }
        return range;
    }

    public int getPreviewWidth() {
        return this.previewSize.getWidth();
    }

    public int getPreviewHeight() {
        return this.previewSize.getHeight();
    }

    public void destroy(boolean z) {
        destroy(z, null);
    }

    public void destroy(boolean z, final Runnable runnable) {
        this.isClosed = true;
        if (z) {
            this.handler.post(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$destroy$4(runnable);
                }
            });
            return;
        }
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.captureSession = null;
        }
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        ImageReader imageReader = this.imageReader;
        if (imageReader != null) {
            imageReader.close();
            this.imageReader = null;
        }
        this.thread.quitSafely();
        try {
            this.thread.join();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroy$4(final Runnable runnable) {
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.captureSession = null;
        }
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        ImageReader imageReader = this.imageReader;
        if (imageReader != null) {
            imageReader.close();
            this.imageReader = null;
        }
        this.thread.quitSafely();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$destroy$3(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroy$3(Runnable runnable) {
        try {
            this.thread.join();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setRecordingVideo(boolean z) {
        if (this.recordingVideo != z) {
            this.recordingVideo = z;
            updateCaptureRequest();
        }
    }

    public void setScanningBarcode(boolean z) {
        if (this.scanningBarcode != z) {
            this.scanningBarcode = z;
            updateCaptureRequest();
        }
    }

    public void setNightMode(boolean z) {
        if (this.nightMode != z) {
            this.nightMode = z;
            updateCaptureRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCaptureRequest() {
        int i;
        Range<Integer> rangeSelectExtendedFpsRange;
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null || this.surface == null || this.captureSession == null) {
            return;
        }
        try {
            if (this.recordingVideo) {
                i = 3;
            } else {
                i = this.scanningBarcode ? 2 : 1;
            }
            CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(i);
            this.captureRequestBuilder = builderCreateCaptureRequest;
            if (this.scanningBarcode) {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_SCENE_MODE, 16);
            } else if (this.nightMode) {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_SCENE_MODE, Integer.valueOf(this.isFront ? 6 : 5));
            }
            this.captureRequestBuilder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(this.flashing ? this.recordingVideo ? 2 : 1 : 0));
            if (this.recordingVideo) {
                this.captureRequestBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                this.recordingFrameRate = 30;
                if (ExteraConfig.getExtendedFramesPerSecond() && (rangeSelectExtendedFpsRange = selectExtendedFpsRange()) != null) {
                    this.captureRequestBuilder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, rangeSelectExtendedFpsRange);
                    this.captureRequestBuilder.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 3);
                    this.recordingFrameRate = 60;
                }
                if (ExteraConfig.getCameraStabilization()) {
                    chooseStabilizationMode(this.captureRequestBuilder);
                }
                chooseFocusMode(this.captureRequestBuilder);
            }
            if (this.sensorSize != null && Math.abs(this.currentZoom - 1.0f) >= 0.01f) {
                int iWidth = this.sensorSize.width() / 2;
                int iHeight = this.sensorSize.height() / 2;
                int iWidth2 = (int) ((this.sensorSize.width() * 0.5f) / this.currentZoom);
                int iHeight2 = (int) ((this.sensorSize.height() * 0.5f) / this.currentZoom);
                this.cropRegion.set(iWidth - iWidth2, iHeight - iHeight2, iWidth + iWidth2, iHeight + iHeight2);
                this.captureRequestBuilder.set(CaptureRequest.SCALER_CROP_REGION, this.cropRegion);
            }
            this.captureRequestBuilder.addTarget(this.surface);
            this.captureSession.setRepeatingRequest(this.captureRequestBuilder.build(), null, this.handler);
        } catch (Exception e) {
            this.recordingFrameRate = 30;
            FileLog.m1039e("Camera2Sessions setRepeatingRequest error in updateCaptureRequest", e);
        }
    }

    public boolean takePicture(File file, Utilities.Callback<Integer> callback) {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null && this.captureSession != null) {
            try {
                CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(2);
                int jpegOrientation = getJpegOrientation();
                builderCreateCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(jpegOrientation));
                this.imageReader.setOnImageAvailableListener(new C28413(file, callback, jpegOrientation), null);
                if (this.scanningBarcode) {
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_SCENE_MODE, 16);
                }
                builderCreateCaptureRequest.addTarget(this.imageReader.getSurface());
                this.captureSession.capture(builderCreateCaptureRequest.build(), new CameraCaptureSession.CaptureCallback() { // from class: org.telegram.messenger.camera.Camera2Session.4
                }, null);
                return true;
            } catch (Exception e) {
                FileLog.m1039e("Camera2Sessions takePicture error", e);
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: org.telegram.messenger.camera.Camera2Session$3 */
    public class C28413 implements ImageReader.OnImageAvailableListener {
        final /* synthetic */ File val$file;
        final /* synthetic */ int val$orientation;
        final /* synthetic */ Utilities.Callback val$whenDone;

        public C28413(File file, Utilities.Callback callback, int i) {
            this.val$file = file;
            this.val$whenDone = callback;
            this.val$orientation = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.media.ImageReader.OnImageAvailableListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onImageAvailable(ImageReader imageReader) throws Throwable {
            FileOutputStream fileOutputStream;
            IOException e;
            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
            ByteBuffer buffer = imageAcquireLatestImage.getPlanes()[0].getBuffer();
            byte[] bArr = new byte[buffer.remaining()];
            buffer.get(bArr);
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(this.val$file);
                try {
                    try {
                        fileOutputStream.write(bArr);
                        imageAcquireLatestImage.close();
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        imageAcquireLatestImage.close();
                        if (fileOutputStream != null) {
                        }
                        final Utilities.Callback callback = this.val$whenDone;
                        final int i = this.val$orientation;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$3$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                Camera2Session.C28413.$r8$lambda$C8GruD4YcNmICIAfGZxauIzKYfU(callback, i);
                            }
                        });
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = fileOutputStream;
                    imageAcquireLatestImage.close();
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                fileOutputStream = null;
                e = e4;
            } catch (Throwable th2) {
                th = th2;
                imageAcquireLatestImage.close();
                if (fileOutputStream2 != null) {
                }
                throw th;
            }
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            final Utilities.Callback callback2 = this.val$whenDone;
            final int i2 = this.val$orientation;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.Camera2Session$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Camera2Session.C28413.$r8$lambda$C8GruD4YcNmICIAfGZxauIzKYfU(callback2, i2);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$C8GruD4YcNmICIAfGZxauIzKYfU(Utilities.Callback callback, int i) {
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
        }
    }

    private void chooseStabilizationMode(CaptureRequest.Builder builder) {
        int[] iArr = (int[]) this.cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION);
        if (iArr != null) {
            for (int i : iArr) {
                if (i == 1) {
                    builder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, 1);
                    builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 0);
                    FileLog.m1037d("Using optical stabilization.");
                    return;
                }
            }
        }
        for (int i2 : (int[]) this.cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES)) {
            if (i2 == 1) {
                builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 1);
                builder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, 0);
                FileLog.m1037d("Using video stabilization.");
                return;
            }
        }
        FileLog.m1037d("Stabilization not available.");
    }

    private void chooseFocusMode(CaptureRequest.Builder builder) {
        for (int i : (int[]) this.cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES)) {
            if (i == 3) {
                builder.set(CaptureRequest.CONTROL_AF_MODE, 3);
                FileLog.m1037d("Using continuous video auto-focus.");
                return;
            }
        }
        FileLog.m1037d("Auto-focus is not available.");
    }

    public static android.util.Size chooseOptimalSize(android.util.Size[] sizeArr, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(sizeArr.length);
        ArrayList arrayList2 = new ArrayList(sizeArr.length);
        for (android.util.Size size : sizeArr) {
            if (!z || (size.getHeight() <= i2 && size.getWidth() <= i)) {
                if (size.getHeight() == (size.getWidth() * i2) / i && size.getWidth() >= i && size.getHeight() >= i2) {
                    arrayList.add(size);
                } else if (size.getHeight() * size.getWidth() <= i * i2 * 4 && size.getWidth() >= i && size.getHeight() >= i2) {
                    arrayList2.add(size);
                }
            }
        }
        if (arrayList.size() > 0) {
            return (android.util.Size) Collections.min(arrayList, new CompareSizesByArea());
        }
        if (arrayList2.size() > 0) {
            return (android.util.Size) Collections.min(arrayList2, new CompareSizesByArea());
        }
        return (android.util.Size) Collections.max(Arrays.asList(sizeArr), new CompareSizesByArea());
    }

    public static class CompareSizesByArea implements Comparator<android.util.Size> {
        @Override // java.util.Comparator
        public int compare(android.util.Size size, android.util.Size size2) {
            return Long.signum((((long) size.getWidth()) * ((long) size.getHeight())) - (((long) size2.getWidth()) * ((long) size2.getHeight())));
        }
    }

    public boolean isTorchAvailable(boolean z) {
        String strFindCameraId = findCameraId(z);
        if (strFindCameraId == null) {
            return false;
        }
        try {
            return Boolean.TRUE.equals(this.cameraManager.getCameraCharacteristics(strFindCameraId).get(CameraCharacteristics.FLASH_INFO_AVAILABLE));
        } catch (CameraAccessException e) {
            FileLog.m1040e(e);
            return false;
        }
    }

    private String findCameraId(boolean z) {
        int i;
        try {
            String[] cameraIdList = this.cameraManager.getCameraIdList();
            int length = cameraIdList.length;
            while (i < length) {
                String str = cameraIdList[i];
                Integer num = (Integer) this.cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING);
                i = (num == null || (!(z && num.intValue() == 0) && (z || num.intValue() != 1))) ? i + 1 : 0;
                return str;
            }
            return null;
        } catch (CameraAccessException e) {
            FileLog.m1040e(e);
            return null;
        }
    }
}
