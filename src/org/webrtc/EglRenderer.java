package org.webrtc;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.messenger.FileLog;
import org.webrtc.EglBase;
import org.webrtc.GlGenericDrawer;
import org.webrtc.GlUtil;
import org.webrtc.RendererCommon;

/* JADX INFO: loaded from: classes6.dex */
public class EglRenderer implements VideoSink {
    private static final long LOG_INTERVAL_SEC = 4;
    private static final String TAG = "EglRenderer";
    private final GlTextureFrameBuffer bitmapTextureFramebuffer;
    private final Matrix drawMatrix;
    private RendererCommon.GlDrawer drawer;
    private EglBase eglBase;
    private final EglSurfaceCreation eglSurfaceBackgroundCreationRunnable;
    private final EglSurfaceCreation eglSurfaceCreationRunnable;
    private volatile ErrorCallback errorCallback;
    public boolean firstFrameRendered;
    private final Object fpsReductionLock;
    private final VideoFrameDrawer frameDrawer;
    private final ArrayList<FrameListenerAndParams> frameListeners;
    private final Object frameLock;
    private int framesDropped;
    private int framesReceived;
    private int framesRendered;
    private final Object handlerLock;
    private float layoutAspectRatio;
    private final Object layoutLock;
    private long minRenderPeriodNs;
    private boolean mirrorHorizontally;
    private boolean mirrorVertically;
    protected final String name;
    private long nextFrameTimeNs;
    private VideoFrame pendingFrame;
    private long renderSwapBufferTimeNs;
    private Handler renderThreadHandler;
    private long renderTimeNs;
    private int rotation;
    private boolean usePresentationTimeStamp;

    public interface ErrorCallback {
        void onGlOutOfMemory();
    }

    public interface FrameListener {
        void onFrame(Bitmap bitmap);
    }

    public void onFirstFrameRendered() {
    }

    public static class FrameListenerAndParams {
        public final boolean applyFpsReduction;
        public final RendererCommon.GlDrawer drawer;
        public final FrameListener listener;
        public final float scale;

        public FrameListenerAndParams(FrameListener frameListener, float f, RendererCommon.GlDrawer glDrawer, boolean z) {
            this.listener = frameListener;
            this.scale = f;
            this.drawer = glDrawer;
            this.applyFpsReduction = z;
        }
    }

    public class EglSurfaceCreation implements Runnable {
        private final boolean background;
        private Object surface;

        public EglSurfaceCreation(boolean z) {
            this.background = z;
        }

        public synchronized void setSurface(Object obj) {
            this.surface = obj;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0033 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:11:0x0015, B:18:0x002d, B:20:0x0033, B:28:0x0062, B:31:0x006b, B:32:0x0076, B:34:0x008c, B:21:0x0041, B:23:0x0045, B:26:0x004b, B:27:0x0057, B:35:0x0096, B:36:0x00a9, B:16:0x0023), top: B:41:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0041 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:11:0x0015, B:18:0x002d, B:20:0x0033, B:28:0x0062, B:31:0x006b, B:32:0x0076, B:34:0x008c, B:21:0x0041, B:23:0x0045, B:26:0x004b, B:27:0x0057, B:35:0x0096, B:36:0x00a9, B:16:0x0023), top: B:41:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x006b A[Catch: all -> 0x0020, TRY_ENTER, TryCatch #0 {all -> 0x0020, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:11:0x0015, B:18:0x002d, B:20:0x0033, B:28:0x0062, B:31:0x006b, B:32:0x0076, B:34:0x008c, B:21:0x0041, B:23:0x0045, B:26:0x004b, B:27:0x0057, B:35:0x0096, B:36:0x00a9, B:16:0x0023), top: B:41:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0076 A[Catch: all -> 0x0020, TryCatch #0 {all -> 0x0020, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000f, B:11:0x0015, B:18:0x002d, B:20:0x0033, B:28:0x0062, B:31:0x006b, B:32:0x0076, B:34:0x008c, B:21:0x0041, B:23:0x0045, B:26:0x004b, B:27:0x0057, B:35:0x0096, B:36:0x00a9, B:16:0x0023), top: B:41:0x0003 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public synchronized void run() {
            Object obj;
            boolean z;
            try {
                if (this.surface != null && EglRenderer.this.eglBase != null) {
                    boolean z2 = this.background;
                    EglRenderer eglRenderer = EglRenderer.this;
                    if (z2) {
                        if (!eglRenderer.eglBase.hasBackgroundSurface()) {
                            obj = this.surface;
                            if (!(obj instanceof Surface)) {
                                EglRenderer.this.eglBase.createSurface((Surface) this.surface);
                            } else if (obj instanceof SurfaceTexture) {
                                boolean z3 = this.background;
                                EglRenderer eglRenderer2 = EglRenderer.this;
                                if (z3) {
                                    eglRenderer2.eglBase.createBackgroundSurface((SurfaceTexture) this.surface);
                                } else {
                                    eglRenderer2.eglBase.createSurface((SurfaceTexture) this.surface);
                                }
                            } else {
                                throw new IllegalStateException("Invalid surface: " + this.surface);
                            }
                            z = this.background;
                            EglRenderer eglRenderer3 = EglRenderer.this;
                            if (z) {
                                eglRenderer3.eglBase.makeCurrent();
                                GLES20.glPixelStorei(3317, 1);
                            } else {
                                eglRenderer3.eglBase.makeBackgroundCurrent();
                                GLES20.glPixelStorei(3317, 1);
                                if (EglRenderer.this.eglBase.hasSurface()) {
                                    EglRenderer.this.eglBase.makeCurrent();
                                }
                            }
                        }
                    } else if (!eglRenderer.eglBase.hasSurface()) {
                        obj = this.surface;
                        if (!(obj instanceof Surface)) {
                        }
                        z = this.background;
                        EglRenderer eglRenderer32 = EglRenderer.this;
                        if (z) {
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static class HandlerWithExceptionCallback extends Handler {
        private final Runnable exceptionCallback;

        public HandlerWithExceptionCallback(Looper looper, Runnable runnable) {
            super(looper);
            this.exceptionCallback = runnable;
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) throws Exception {
            try {
                super.dispatchMessage(message);
            } catch (Exception e) {
                Logging.m1060e(EglRenderer.TAG, "Exception on EglRenderer thread", e);
                this.exceptionCallback.run();
                throw e;
            }
        }
    }

    public EglRenderer(String str) {
        this(str, new VideoFrameDrawer());
    }

    public EglRenderer(String str, VideoFrameDrawer videoFrameDrawer) {
        this.handlerLock = new Object();
        this.frameListeners = new ArrayList<>();
        this.fpsReductionLock = new Object();
        this.drawMatrix = new Matrix();
        this.frameLock = new Object();
        this.layoutLock = new Object();
        this.bitmapTextureFramebuffer = new GlTextureFrameBuffer(6408);
        this.eglSurfaceCreationRunnable = new EglSurfaceCreation(false);
        this.eglSurfaceBackgroundCreationRunnable = new EglSurfaceCreation(true);
        this.name = str;
        this.frameDrawer = videoFrameDrawer;
    }

    public void init(final EglBase.Context context, final int[] iArr, RendererCommon.GlDrawer glDrawer, boolean z) {
        synchronized (this.handlerLock) {
            try {
                if (this.renderThreadHandler != null) {
                    throw new IllegalStateException(this.name + "Already initialized");
                }
                logD("Initializing EglRenderer");
                this.drawer = glDrawer;
                this.usePresentationTimeStamp = z;
                this.firstFrameRendered = false;
                HandlerThread handlerThread = new HandlerThread(this.name + TAG);
                handlerThread.start();
                HandlerWithExceptionCallback handlerWithExceptionCallback = new HandlerWithExceptionCallback(handlerThread.getLooper(), new Runnable() { // from class: org.webrtc.EglRenderer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (EglRenderer.this.handlerLock) {
                            EglRenderer.this.renderThreadHandler = null;
                        }
                    }
                });
                this.renderThreadHandler = handlerWithExceptionCallback;
                handlerWithExceptionCallback.post(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$init$0(context, iArr);
                    }
                });
                this.renderThreadHandler.post(this.eglSurfaceCreationRunnable);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(EglBase.Context context, int[] iArr) {
        if (context == null) {
            logD("EglBase10.create context");
            this.eglBase = EglBase.createEgl10(iArr);
        } else {
            logD("EglBase.create shared context");
            this.eglBase = EglBase.create(context, iArr);
        }
    }

    public void init(EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        init(context, iArr, glDrawer, false);
    }

    public void createEglSurface(Surface surface) {
        createEglSurfaceInternal(surface, false);
    }

    public void createEglSurface(SurfaceTexture surfaceTexture) {
        createEglSurfaceInternal(surfaceTexture, false);
    }

    public void createBackgroundSurface(SurfaceTexture surfaceTexture) {
        createEglSurfaceInternal(surfaceTexture, true);
    }

    private void createEglSurfaceInternal(Object obj, boolean z) {
        if (z) {
            this.eglSurfaceBackgroundCreationRunnable.setSurface(obj);
            synchronized (this.handlerLock) {
                try {
                    Handler handler = this.renderThreadHandler;
                    if (handler != null) {
                        handler.post(this.eglSurfaceBackgroundCreationRunnable);
                    } else {
                        FileLog.m989d("can't create background surface. render thread is null");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        this.eglSurfaceCreationRunnable.setSurface(obj);
        postToRenderThread(this.eglSurfaceCreationRunnable);
    }

    public void release() {
        logD("Releasing.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler == null) {
                    logD("Already released");
                    return;
                }
                handler.postAtFrontOfQueue(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$release$1(countDownLatch);
                    }
                });
                final Looper looper = this.renderThreadHandler.getLooper();
                this.renderThreadHandler.post(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$release$2(looper);
                    }
                });
                this.renderThreadHandler = null;
                ThreadUtils.awaitUninterruptibly(countDownLatch);
                synchronized (this.frameLock) {
                    try {
                        VideoFrame videoFrame = this.pendingFrame;
                        if (videoFrame != null) {
                            videoFrame.release();
                            this.pendingFrame = null;
                        }
                    } finally {
                    }
                }
                logD("Releasing done.");
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$1(CountDownLatch countDownLatch) {
        synchronized (EglBase.lock) {
            GLES20.glUseProgram(0);
        }
        RendererCommon.GlDrawer glDrawer = this.drawer;
        if (glDrawer != null) {
            glDrawer.release();
            this.drawer = null;
        }
        this.frameDrawer.release();
        this.bitmapTextureFramebuffer.release();
        if (this.eglBase != null) {
            logD("eglBase detach and release.");
            this.eglBase.detachCurrent();
            this.eglBase.release();
            this.eglBase = null;
        }
        this.frameListeners.clear();
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$2(Looper looper) {
        logD("Quitting render thread.");
        looper.quit();
    }

    public void printStackTrace() {
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                Thread thread = handler == null ? null : handler.getLooper().getThread();
                if (thread != null) {
                    StackTraceElement[] stackTrace = thread.getStackTrace();
                    if (stackTrace.length > 0) {
                        logW("EglRenderer stack trace:");
                        for (StackTraceElement stackTraceElement : stackTrace) {
                            logW(stackTraceElement.toString());
                        }
                    }
                }
            } finally {
            }
        }
    }

    public void setMirror(boolean z) {
        logD("setMirrorHorizontally: " + z);
        synchronized (this.layoutLock) {
            this.mirrorHorizontally = z;
        }
    }

    public void setMirrorVertically(boolean z) {
        logD("setMirrorVertically: " + z);
        synchronized (this.layoutLock) {
            this.mirrorVertically = z;
        }
    }

    public void setLayoutAspectRatio(float f) {
        if (this.layoutAspectRatio != f) {
            synchronized (this.layoutLock) {
                this.layoutAspectRatio = f;
            }
        }
    }

    public void setFpsReduction(float f) {
        logD("setFpsReduction: " + f);
        synchronized (this.fpsReductionLock) {
            try {
                long j = this.minRenderPeriodNs;
                if (f <= 0.0f) {
                    this.minRenderPeriodNs = LongCompanionObject.MAX_VALUE;
                } else {
                    this.minRenderPeriodNs = (long) (1.0E9f / f);
                }
                if (this.minRenderPeriodNs != j) {
                    this.nextFrameTimeNs = System.nanoTime();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void disableFpsReduction() {
        setFpsReduction(Float.POSITIVE_INFINITY);
    }

    public void pauseVideo() {
        setFpsReduction(0.0f);
    }

    public void addFrameListener(FrameListener frameListener, float f) {
        addFrameListener(frameListener, f, null, false);
    }

    public void addFrameListener(FrameListener frameListener, float f, RendererCommon.GlDrawer glDrawer) {
        addFrameListener(frameListener, f, glDrawer, false);
    }

    public void addFrameListener(final FrameListener frameListener, final float f, final RendererCommon.GlDrawer glDrawer, final boolean z) {
        postToRenderThread(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addFrameListener$3(glDrawer, frameListener, f, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addFrameListener$3(RendererCommon.GlDrawer glDrawer, FrameListener frameListener, float f, boolean z) {
        if (glDrawer == null) {
            glDrawer = this.drawer;
        }
        this.frameListeners.add(new FrameListenerAndParams(frameListener, f, glDrawer, z));
    }

    public void removeFrameListener(final FrameListener frameListener) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            try {
                if (this.renderThreadHandler == null) {
                    return;
                }
                if (Thread.currentThread() == this.renderThreadHandler.getLooper().getThread()) {
                    throw new RuntimeException("removeFrameListener must not be called on the render thread.");
                }
                postToRenderThread(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$removeFrameListener$4(countDownLatch, frameListener);
                    }
                });
                ThreadUtils.awaitUninterruptibly(countDownLatch);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeFrameListener$4(CountDownLatch countDownLatch, FrameListener frameListener) {
        countDownLatch.countDown();
        Iterator<FrameListenerAndParams> it = this.frameListeners.iterator();
        while (it.hasNext()) {
            if (it.next().listener == frameListener) {
                it.remove();
            }
        }
    }

    public void setErrorCallback(ErrorCallback errorCallback) {
        this.errorCallback = errorCallback;
    }

    @Override // org.webrtc.VideoSink
    public void onFrame(VideoFrame videoFrame) {
        synchronized (this.handlerLock) {
            try {
                if (this.renderThreadHandler == null) {
                    logD("Dropping frame - Not initialized or already released.");
                    return;
                }
                synchronized (this.frameLock) {
                    try {
                        VideoFrame videoFrame2 = this.pendingFrame;
                        if (videoFrame2 != null) {
                            videoFrame2.release();
                        }
                        this.pendingFrame = videoFrame;
                        videoFrame.retain();
                        this.renderThreadHandler.post(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.renderFrameOnRenderThread();
                            }
                        });
                    } finally {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRotation(int i) {
        synchronized (this.layoutLock) {
            this.rotation = i;
        }
    }

    public void releaseEglSurface(final Runnable runnable, final boolean z) {
        this.eglSurfaceCreationRunnable.setSurface(null);
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler != null) {
                    handler.removeCallbacks(this.eglSurfaceCreationRunnable);
                    this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$releaseEglSurface$5(z, runnable);
                        }
                    });
                } else if (runnable != null) {
                    runnable.run();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseEglSurface$5(boolean z, Runnable runnable) {
        EglBase eglBase = this.eglBase;
        if (eglBase != null) {
            eglBase.detachCurrent();
            this.eglBase.releaseSurface(z);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    private void postToRenderThread(Runnable runnable) {
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler != null) {
                    handler.post(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: clearSurfaceOnRenderThread, reason: merged with bridge method [inline-methods] */
    public void lambda$clearImage$6(float f, float f2, float f3, float f4) {
        EglBase eglBase = this.eglBase;
        if (eglBase != null && eglBase.hasSurface()) {
            logD("clearSurface");
            GLES20.glClearColor(f, f2, f3, f4);
            GLES20.glClear(16384);
            this.eglBase.swapBuffers(false);
        }
        EglBase eglBase2 = this.eglBase;
        if (eglBase2 == null || !eglBase2.hasBackgroundSurface()) {
            return;
        }
        this.eglBase.makeBackgroundCurrent();
        logD("clearSurface in background");
        GLES20.glClearColor(f, f2, f3, f4);
        GLES20.glClear(16384);
        this.eglBase.swapBuffers(true);
        this.eglBase.makeCurrent();
    }

    public void clearImage() {
        clearImage(0.0f, 0.0f, 0.0f, 0.0f);
        this.firstFrameRendered = false;
    }

    public void clearImage(final float f, final float f2, final float f3, final float f4) {
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler == null) {
                    return;
                }
                handler.postAtFrontOfQueue(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$clearImage$6(f, f2, f3, f4);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void getTexture(final GlGenericDrawer.TextureCallback textureCallback) {
        Handler handler;
        synchronized (this.handlerLock) {
            try {
                handler = this.renderThreadHandler;
            } catch (Exception e) {
                FileLog.m992e(e);
            }
            if (handler != null) {
                handler.post(new Runnable() { // from class: org.webrtc.EglRenderer$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$getTexture$7(textureCallback);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTexture$7(GlGenericDrawer.TextureCallback textureCallback) {
        this.frameDrawer.getRenderBufferBitmap(this.drawer, this.rotation, textureCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderFrameOnRenderThread() {
        boolean z;
        float f;
        float f2;
        float f3;
        synchronized (this.frameLock) {
            try {
                VideoFrame videoFrame = this.pendingFrame;
                if (videoFrame == null) {
                    return;
                }
                this.pendingFrame = null;
                EglBase eglBase = this.eglBase;
                if (eglBase == null || !eglBase.hasSurface()) {
                    logD("Dropping frame - No surface");
                    videoFrame.release();
                    return;
                }
                synchronized (this.fpsReductionLock) {
                    long j = this.minRenderPeriodNs;
                    if (j != LongCompanionObject.MAX_VALUE) {
                        if (j > 0) {
                            long jNanoTime = System.nanoTime();
                            long j2 = this.nextFrameTimeNs;
                            if (jNanoTime < j2) {
                                z = false;
                            } else {
                                long j3 = j2 + this.minRenderPeriodNs;
                                this.nextFrameTimeNs = j3;
                                this.nextFrameTimeNs = Math.max(j3, jNanoTime);
                            }
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                }
                System.nanoTime();
                boolean z2 = Math.abs(this.rotation) == 90 || Math.abs(this.rotation) == 270;
                float rotatedHeight = (z2 ? videoFrame.getRotatedHeight() : videoFrame.getRotatedWidth()) / (z2 ? videoFrame.getRotatedWidth() : videoFrame.getRotatedHeight());
                synchronized (this.layoutLock) {
                    f = this.layoutAspectRatio;
                    if (f == 0.0f) {
                        f = rotatedHeight;
                    }
                }
                if (rotatedHeight > f) {
                    f3 = f / rotatedHeight;
                    f2 = 1.0f;
                } else {
                    f2 = rotatedHeight / f;
                    f3 = 1.0f;
                }
                this.drawMatrix.reset();
                this.drawMatrix.preTranslate(0.5f, 0.5f);
                this.drawMatrix.preRotate(this.rotation);
                this.drawMatrix.preScale(this.mirrorHorizontally ? -1.0f : 1.0f, this.mirrorVertically ? -1.0f : 1.0f);
                this.drawMatrix.preScale(f3, f2);
                this.drawMatrix.preTranslate(-0.5f, -0.5f);
                if (z) {
                    try {
                        try {
                            this.frameDrawer.drawFrame(videoFrame, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight(), z2, false);
                            if (this.eglBase.hasBackgroundSurface()) {
                                this.eglBase.makeBackgroundCurrent();
                                this.frameDrawer.drawFrame(videoFrame, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight(), z2, true);
                                boolean z3 = this.usePresentationTimeStamp;
                                EglBase eglBase2 = this.eglBase;
                                if (z3) {
                                    eglBase2.swapBuffers(videoFrame.getTimestampNs(), true);
                                } else {
                                    eglBase2.swapBuffers(true);
                                }
                                this.eglBase.makeCurrent();
                            }
                            System.nanoTime();
                            boolean z4 = this.usePresentationTimeStamp;
                            EglBase eglBase3 = this.eglBase;
                            if (z4) {
                                eglBase3.swapBuffers(videoFrame.getTimestampNs(), false);
                            } else {
                                eglBase3.swapBuffers(false);
                            }
                            if (!this.firstFrameRendered) {
                                this.firstFrameRendered = true;
                                onFirstFrameRendered();
                            }
                        } catch (GlUtil.GlOutOfMemoryException e) {
                            logE("Error while drawing frame", e);
                            ErrorCallback errorCallback = this.errorCallback;
                            if (errorCallback != null) {
                                errorCallback.onGlOutOfMemory();
                            }
                            this.drawer.release();
                            this.frameDrawer.release();
                            this.bitmapTextureFramebuffer.release();
                            videoFrame.release();
                            return;
                        }
                    } catch (Throwable th) {
                        videoFrame.release();
                        throw th;
                    }
                }
                notifyCallbacks(videoFrame, z);
                videoFrame.release();
            } finally {
            }
        }
    }

    private void notifyCallbacks(VideoFrame videoFrame, boolean z) {
        if (this.frameListeners.isEmpty()) {
            return;
        }
        this.drawMatrix.reset();
        this.drawMatrix.preTranslate(0.5f, 0.5f);
        this.drawMatrix.preRotate(this.rotation);
        this.drawMatrix.preScale(this.mirrorHorizontally ? -1.0f : 1.0f, this.mirrorVertically ? -1.0f : 1.0f);
        this.drawMatrix.preScale(1.0f, -1.0f);
        this.drawMatrix.preTranslate(-0.5f, -0.5f);
        Iterator<FrameListenerAndParams> it = this.frameListeners.iterator();
        while (it.hasNext()) {
            FrameListenerAndParams next = it.next();
            if (z || !next.applyFpsReduction) {
                it.remove();
                int rotatedWidth = (int) (next.scale * videoFrame.getRotatedWidth());
                int rotatedHeight = (int) (next.scale * videoFrame.getRotatedHeight());
                if (rotatedWidth == 0 || rotatedHeight == 0) {
                    next.listener.onFrame(null);
                } else {
                    this.bitmapTextureFramebuffer.setSize(rotatedWidth, rotatedHeight);
                    GLES20.glBindFramebuffer(36160, this.bitmapTextureFramebuffer.getFrameBufferId());
                    GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.bitmapTextureFramebuffer.getTextureId(), 0);
                    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                    GLES20.glClear(16384);
                    this.frameDrawer.drawFrame(videoFrame, next.drawer, this.drawMatrix, 0, 0, rotatedWidth, rotatedHeight, false, false);
                    ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(rotatedWidth * rotatedHeight * 4);
                    GLES20.glViewport(0, 0, rotatedWidth, rotatedHeight);
                    GLES20.glReadPixels(0, 0, rotatedWidth, rotatedHeight, 6408, 5121, byteBufferAllocateDirect);
                    GLES20.glBindFramebuffer(36160, 0);
                    GlUtil.checkNoGLES2Error("EglRenderer.notifyCallbacks");
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(rotatedWidth, rotatedHeight, Bitmap.Config.ARGB_8888);
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferAllocateDirect);
                    next.listener.onFrame(bitmapCreateBitmap);
                }
            }
        }
    }

    private void logE(String str, Throwable th) {
        Logging.m1060e(TAG, this.name + str, th);
    }

    private void logD(String str) {
        Logging.m1058d(TAG, this.name + str);
    }

    private void logW(String str) {
        Logging.m1062w(TAG, this.name + str);
    }
}
