package org.telegram.ui.Components.Premium.GLIcon;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.opengl.GLUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Collections;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import org.mvel2.ast.Instance$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.EmuDetector;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Premium.StarParticlesView;
import org.telegram.ui.WearAuthSheet$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes7.dex */
public class GLIconTextureView extends TextureView implements TextureView.SurfaceTextureListener {
    ArrayList<Integer> animationIndexes;
    int animationPointer;
    private final int animationsCount;
    AnimatorSet animatorSet;
    boolean attached;
    ValueAnimator backAnimation;
    private final int[] bufferHeight;
    private final int[] bufferWidth;
    private boolean dialogIsVisible;
    private EGLConfig eglConfig;
    GestureDetector gestureDetector;
    Runnable idleAnimation;
    private boolean idleAnimationEnabled;
    private long idleDelay;
    private GLIconRenderer initializedRenderer;
    public volatile boolean isRunning;
    private EGL10 mEgl;
    private EGLContext mEglContext;
    private EGLDisplay mEglDisplay;
    private EGLSurface mEglSurface;
    private GL10 mGl;
    public GLIconRenderer mRenderer;
    private SurfaceTexture mSurface;
    private volatile boolean paused;
    private volatile boolean ready;
    private volatile Runnable readyListener;
    private final Object renderLock;
    private int renderedHeight;
    private int renderedWidth;
    private volatile boolean rendererChanged;
    private volatile boolean scaledBuffer;
    StarParticlesView starParticlesView;
    private volatile int surfaceHeight;
    private volatile int surfaceWidth;
    private int targetFps;
    private long targetFrameDurationNanos;
    private volatile RenderThread thread;
    public boolean touched;
    int type;
    ValueAnimator.AnimatorUpdateListener xUpdater;
    ValueAnimator.AnimatorUpdateListener xUpdater2;
    ValueAnimator.AnimatorUpdateListener yUpdater;

    public long getFrameDurationNanos(long j) {
        return j;
    }

    public int getMsaaSamples() {
        return 4;
    }

    public float getRenderScale() {
        return 1.0f;
    }

    public void onLongPress() {
    }

    public void onRenderError() {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public boolean renderFirstFrameWhilePaused() {
        return false;
    }

    public GLIconTextureView(Context context, int i) {
        this(context, i, 0);
    }

    public GLIconTextureView(Context context, int i, int i2) {
        super(context);
        this.renderLock = new Object();
        int i3 = 0;
        this.isRunning = false;
        this.paused = true;
        this.rendererChanged = false;
        this.dialogIsVisible = false;
        this.idleAnimationEnabled = true;
        this.animationIndexes = new ArrayList<>();
        this.bufferWidth = new int[1];
        this.bufferHeight = new int[1];
        this.animatorSet = new AnimatorSet();
        this.idleAnimation = new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.2
            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimator;
                AnimatorSet animatorSet = GLIconTextureView.this.animatorSet;
                if ((animatorSet != null && animatorSet.isRunning()) || ((valueAnimator = GLIconTextureView.this.backAnimation) != null && valueAnimator.isRunning())) {
                    GLIconTextureView gLIconTextureView = GLIconTextureView.this;
                    gLIconTextureView.scheduleIdleAnimation(gLIconTextureView.idleDelay);
                } else {
                    GLIconTextureView.this.startIdleAnimation();
                }
            }
        };
        this.xUpdater2 = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$1(valueAnimator);
            }
        };
        this.xUpdater = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$2(valueAnimator);
            }
        };
        this.yUpdater = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$3(valueAnimator);
            }
        };
        this.type = i2;
        this.animationsCount = (i2 == 1 || i2 == 4 || i2 == 3) ? 1 : 5;
        this.idleDelay = i2 == 4 ? 0L : 2000L;
        setOpaque(false);
        setRenderer(new GLIconRenderer(context, i, i2));
        initialize(context);
        GestureDetector gestureDetector = new GestureDetector(context, new GestureDetectorOnGestureListenerC43111(i2));
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
        while (true) {
            int i4 = this.animationsCount;
            ArrayList<Integer> arrayList = this.animationIndexes;
            if (i3 < i4) {
                arrayList.add(Integer.valueOf(i3));
                i3++;
            } else {
                Collections.shuffle(arrayList);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$1 */
    public class GestureDetectorOnGestureListenerC43111 implements GestureDetector.OnGestureListener {
        final /* synthetic */ int val$type;

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        public GestureDetectorOnGestureListenerC43111(int i) {
            this.val$type = i;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            ValueAnimator valueAnimator = GLIconTextureView.this.backAnimation;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                GLIconTextureView.this.backAnimation.cancel();
                GLIconTextureView.this.backAnimation = null;
            }
            AnimatorSet animatorSet = GLIconTextureView.this.animatorSet;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
                GLIconTextureView.this.animatorSet.cancel();
                GLIconTextureView.this.animatorSet = null;
            }
            AndroidUtilities.cancelRunOnUIThread(GLIconTextureView.this.idleAnimation);
            GLIconTextureView.this.touched = true;
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            float measuredWidth = GLIconTextureView.this.getMeasuredWidth() / 2.0f;
            final float fNextInt = ((Utilities.random.nextInt(30) + 40) * (measuredWidth - motionEvent.getX())) / measuredWidth;
            final float fNextInt2 = ((Utilities.random.nextInt(30) + 40) * (measuredWidth - motionEvent.getY())) / measuredWidth;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSingleTapUp$0(fNextInt, fNextInt2);
                }
            }, 16L);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSingleTapUp$0(float f, float f2) {
            ValueAnimator valueAnimator = GLIconTextureView.this.backAnimation;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                GLIconTextureView.this.backAnimation.cancel();
                GLIconTextureView.this.backAnimation = null;
            }
            AnimatorSet animatorSet = GLIconTextureView.this.animatorSet;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
                GLIconTextureView.this.animatorSet.cancel();
                GLIconTextureView.this.animatorSet = null;
            }
            float fAbs = Math.abs(GLIconTextureView.this.mRenderer.angleX);
            GLIconTextureView gLIconTextureView = GLIconTextureView.this;
            if (fAbs > 10.0f) {
                gLIconTextureView.startBackAnimation();
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(gLIconTextureView.idleAnimation);
            GLIconTextureView.this.animatorSet = new AnimatorSet();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(GLIconTextureView.this.mRenderer.angleX, f);
            valueAnimatorOfFloat.addUpdateListener(GLIconTextureView.this.xUpdater);
            valueAnimatorOfFloat.setDuration(220L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            valueAnimatorOfFloat.setInterpolator(cubicBezierInterpolator);
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f, 0.0f);
            valueAnimatorOfFloat2.addUpdateListener(GLIconTextureView.this.xUpdater);
            valueAnimatorOfFloat2.setStartDelay(220L);
            valueAnimatorOfFloat2.setDuration(600L);
            valueAnimatorOfFloat2.setInterpolator(AndroidUtilities.overshootInterpolator);
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(GLIconTextureView.this.mRenderer.angleY, f2);
            valueAnimatorOfFloat3.addUpdateListener(GLIconTextureView.this.yUpdater);
            valueAnimatorOfFloat3.setDuration(220L);
            valueAnimatorOfFloat3.setInterpolator(cubicBezierInterpolator);
            ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(f2, 0.0f);
            valueAnimatorOfFloat4.addUpdateListener(GLIconTextureView.this.yUpdater);
            valueAnimatorOfFloat4.setStartDelay(220L);
            valueAnimatorOfFloat4.setDuration(600L);
            valueAnimatorOfFloat4.setInterpolator(AndroidUtilities.overshootInterpolator);
            GLIconTextureView.this.animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfFloat3, valueAnimatorOfFloat4);
            GLIconTextureView.this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.1.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    GLIconTextureView gLIconTextureView2 = GLIconTextureView.this;
                    gLIconTextureView2.mRenderer.angleX = 0.0f;
                    gLIconTextureView2.animatorSet = null;
                    gLIconTextureView2.scheduleIdleAnimation(gLIconTextureView2.idleDelay);
                }
            });
            GLIconTextureView.this.animatorSet.start();
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            int i = this.val$type;
            GLIconTextureView gLIconTextureView = GLIconTextureView.this;
            if (i == 4) {
                GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
                gLIconRenderer.angleX -= f * 0.5f;
                gLIconRenderer.angleY -= f2 * 0.05f;
                return true;
            }
            GLIconRenderer gLIconRenderer2 = gLIconTextureView.mRenderer;
            gLIconRenderer2.angleX += f * 0.5f;
            gLIconRenderer2.angleY += f2 * 0.05f;
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            GLIconTextureView.this.onLongPress();
        }
    }

    public synchronized void setRenderer(GLIconRenderer gLIconRenderer) {
        this.mRenderer = gLIconRenderer;
        this.rendererChanged = true;
    }

    private void initialize(Context context) {
        this.targetFps = (int) AndroidUtilities.screenRefreshRate;
        setSurfaceTextureListener(this);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        startThread(surfaceTexture, i, i2);
    }

    public boolean preferGles3() {
        return this.type == 4;
    }

    public int getMaxFrameRate() {
        if (this.type == 4) {
            return SharedConfig.getDevicePerformanceClass() == 2 ? 60 : 30;
        }
        return this.targetFps;
    }

    private void setScaledDimensions(SurfaceTexture surfaceTexture, int i, int i2) {
        float renderScale = getRenderScale();
        this.scaledBuffer = renderScale < 1.0f;
        if (renderScale < 1.0f && i > 0 && i2 > 0) {
            i = Math.max(1, Math.round(i * renderScale));
            i2 = Math.max(1, Math.round(i2 * renderScale));
            surfaceTexture.setDefaultBufferSize(i, i2);
        }
        setDimensions(i, i2);
    }

    public void startThread(SurfaceTexture surfaceTexture, int i, int i2) {
        stopThread();
        this.ready = false;
        this.thread = new RenderThread(surfaceTexture);
        this.isRunning = true;
        setScaledDimensions(surfaceTexture, i, i2);
        this.targetFrameDurationNanos = 1000000000 / ((long) Math.max(1, Math.min(this.targetFps, getMaxFrameRate())));
        this.thread.start();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        setScaledDimensions(surfaceTexture, i, i2);
    }

    public void setPaused(boolean z) {
        boolean z2 = this.paused;
        this.paused = z;
        if (!z2 || z || this.thread == null) {
            return;
        }
        this.thread.interrupt();
    }

    public boolean isPaused() {
        return this.paused;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.ready = false;
        stopThread();
        return true;
    }

    public void stopThread() {
        RenderThread renderThread = this.thread;
        this.thread = null;
        this.isRunning = false;
        this.ready = false;
        if (renderThread != null) {
            renderThread.cancelled = true;
            renderThread.interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldSleep() {
        if (this.mRenderer == null) {
            return true;
        }
        if (isPaused()) {
            return this.ready || !renderFirstFrameWhilePaused();
        }
        return false;
    }

    public void setBackgroundBitmap(Bitmap bitmap) {
        this.mRenderer.setBackground(bitmap);
    }

    public void whenReady(Runnable runnable) {
        this.readyListener = runnable;
        if (!this.ready || runnable == null) {
            return;
        }
        this.readyListener = null;
        runnable.run();
    }

    public class RenderThread extends Thread {
        private volatile boolean cancelled;
        private boolean readyPosted;
        private final SurfaceTexture surface;

        public RenderThread(SurfaceTexture surfaceTexture) {
            this.surface = surfaceTexture;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v4, types: [org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (GLIconTextureView.this.renderLock) {
                try {
                    if (this.cancelled) {
                        return;
                    }
                    GLIconTextureView.this.mSurface = this.surface;
                    GLIconTextureView.this.rendererChanged = true;
                    try {
                        try {
                            render();
                        } catch (Exception e) {
                            if (!this.cancelled) {
                                FileLog.m1040e(e);
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$RenderThread$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$run$0();
                                    }
                                });
                            }
                        }
                        this = GLIconTextureView.this;
                        this.releaseGL();
                    } catch (Throwable th) {
                        GLIconTextureView.this.releaseGL();
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            if (GLIconTextureView.this.thread != this) {
                return;
            }
            GLIconTextureView.this.isRunning = false;
            GLIconTextureView.this.ready = false;
            GLIconTextureView.this.readyListener = null;
            GLIconTextureView.this.onRenderError();
        }

        private void render() {
            GLIconTextureView gLIconTextureView;
            GLIconRenderer gLIconRenderer;
            GLIconTextureView.this.initGL();
            GLIconTextureView.this.checkGlError();
            long jNanoTime = System.nanoTime();
            while (!this.cancelled) {
                synchronized (GLIconTextureView.this) {
                    try {
                        if (GLIconTextureView.this.rendererChanged && (gLIconRenderer = (gLIconTextureView = GLIconTextureView.this).mRenderer) != null) {
                            gLIconTextureView.initializeRenderer(gLIconRenderer);
                            GLIconTextureView.this.rendererChanged = false;
                        }
                    } finally {
                    }
                }
                if (!GLIconTextureView.this.shouldSleep()) {
                    long jNanoTime2 = System.nanoTime();
                    GLIconTextureView.this.drawSingleFrame((jNanoTime2 - jNanoTime) / 1.0E9f);
                    if (!this.readyPosted) {
                        this.readyPosted = true;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$RenderThread$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$render$1();
                            }
                        });
                    }
                    jNanoTime = jNanoTime2;
                }
                try {
                    if (GLIconTextureView.this.shouldSleep()) {
                        Thread.sleep(100L);
                    } else {
                        GLIconTextureView gLIconTextureView2 = GLIconTextureView.this;
                        long frameDurationNanos = gLIconTextureView2.getFrameDurationNanos(gLIconTextureView2.targetFrameDurationNanos) - (System.nanoTime() - jNanoTime);
                        if (frameDurationNanos > 0) {
                            Thread.sleep(frameDurationNanos / 1000000, (int) (frameDurationNanos % 1000000));
                        }
                    }
                } catch (InterruptedException unused) {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$render$1() {
            if (GLIconTextureView.this.thread != this || this.cancelled) {
                return;
            }
            GLIconTextureView.this.ready = true;
            Runnable runnable = GLIconTextureView.this.readyListener;
            GLIconTextureView.this.readyListener = null;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void releaseGL() {
        EGLDisplay eGLDisplay;
        Icon3D icon3D;
        try {
            try {
                GLIconRenderer gLIconRenderer = this.initializedRenderer;
                if (gLIconRenderer != null && (icon3D = gLIconRenderer.model) != null) {
                    icon3D.destroy();
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
                GLIconRenderer gLIconRenderer2 = this.initializedRenderer;
                if (gLIconRenderer2 != null) {
                }
            }
            try {
                try {
                    EGL10 egl10 = this.mEgl;
                    if (egl10 != null && (eGLDisplay = this.mEglDisplay) != null && eGLDisplay != EGL10.EGL_NO_DISPLAY) {
                        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
                        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
                        EGLSurface eGLSurface2 = this.mEglSurface;
                        if (eGLSurface2 != null && eGLSurface2 != eGLSurface) {
                            this.mEgl.eglDestroySurface(this.mEglDisplay, eGLSurface2);
                        }
                        EGLContext eGLContext2 = this.mEglContext;
                        if (eGLContext2 != null && eGLContext2 != eGLContext) {
                            this.mEgl.eglDestroyContext(this.mEglDisplay, eGLContext2);
                        }
                    }
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                }
                this.mEglSurface = null;
                this.mEglContext = null;
                this.mEglDisplay = null;
                this.mGl = null;
                this.mSurface = null;
            } catch (Throwable th) {
                this.mEglSurface = null;
                this.mEglContext = null;
                this.mEglDisplay = null;
                this.mGl = null;
                this.mSurface = null;
                throw th;
            }
        } finally {
            GLIconRenderer gLIconRenderer3 = this.initializedRenderer;
            if (gLIconRenderer3 != null) {
                gLIconRenderer3.model = null;
            }
            this.initializedRenderer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void initializeRenderer(GLIconRenderer gLIconRenderer) {
        if (gLIconRenderer != null) {
            this.initializedRenderer = gLIconRenderer;
            gLIconRenderer.onSurfaceCreated(this.mGl, this.eglConfig);
            this.renderedWidth = this.surfaceWidth;
            int i = this.surfaceHeight;
            this.renderedHeight = i;
            gLIconRenderer.onSurfaceChanged(this.mGl, this.renderedWidth, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void drawSingleFrame(float f) {
        int i;
        try {
            checkCurrent();
            if (this.mRenderer != null) {
                int i2 = this.surfaceWidth;
                int i3 = this.surfaceHeight;
                if (this.scaledBuffer) {
                    this.mEgl.eglQuerySurface(this.mEglDisplay, this.mEglSurface, 12375, this.bufferWidth);
                    this.mEgl.eglQuerySurface(this.mEglDisplay, this.mEglSurface, 12374, this.bufferHeight);
                    int i4 = this.bufferWidth[0];
                    if (i4 > 0 && (i = this.bufferHeight[0]) > 0 && (i4 != i2 || i != i3)) {
                        this.mSurface.setDefaultBufferSize(i2, i3);
                        i2 = this.bufferWidth[0];
                        i3 = this.bufferHeight[0];
                    }
                }
                if (i2 != this.renderedWidth || i3 != this.renderedHeight) {
                    this.renderedWidth = i2;
                    this.renderedHeight = i3;
                    this.mRenderer.onSurfaceChanged(this.mGl, i2, i3);
                }
                this.mRenderer.setDeltaTime(f);
                this.mRenderer.onDrawFrame(this.mGl);
            }
            checkGlError();
            if (!this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface) && this.type == 4) {
                throw new IllegalStateException("Diamond buffer swap failed: " + this.mEgl.eglGetError());
            }
        } finally {
        }
    }

    public void setDimensions(int i, int i2) {
        this.surfaceWidth = i;
        this.surfaceHeight = i2;
    }

    private void checkCurrent() {
        if (this.mEglContext.equals(this.mEgl.eglGetCurrentContext()) && this.mEglSurface.equals(this.mEgl.eglGetCurrentSurface(12377))) {
            return;
        }
        checkEglError();
        EGL10 egl10 = this.mEgl;
        EGLDisplay eGLDisplay = this.mEglDisplay;
        EGLSurface eGLSurface = this.mEglSurface;
        if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
            Instance$$ExternalSyntheticBUOutline0.m1009m("eglMakeCurrent failed ", GLUtils.getEGLErrorString(this.mEgl.eglGetError()));
        } else {
            checkEglError();
        }
    }

    private void checkEglError() {
        if (this.mEgl.eglGetError() != 12288) {
            FileLog.m1038e("cannot swap buffers!");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkGlError() {
        int iGlGetError = this.mGl.glGetError();
        if (iGlGetError == 0 || this.type != 4) {
            return;
        }
        CstInsn$$ExternalSyntheticBUOutline0.m225m("Diamond GL error: 0x", Integer.toHexString(iGlGetError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initGL() {
        int[] iArr;
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.mEgl = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.mEglDisplay = eGLDisplayEglGetDisplay;
        EGL10 egl102 = this.mEgl;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            Instance$$ExternalSyntheticBUOutline0.m1009m("eglGetDisplay failed ", GLUtils.getEGLErrorString(egl102.eglGetError()));
            return;
        }
        if (!egl102.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
            Instance$$ExternalSyntheticBUOutline0.m1009m("eglInitialize failed ", GLUtils.getEGLErrorString(this.mEgl.eglGetError()));
            return;
        }
        int[] iArr2 = new int[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EmuDetector.with(getContext()).detect()) {
            iArr = new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12344};
        } else {
            iArr = new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12326, 0, 12338, 1, 12337, getMsaaSamples(), 12344};
        }
        this.eglConfig = null;
        if (EmuDetector.with(getContext()).detect() || !this.mEgl.eglChooseConfig(this.mEglDisplay, iArr, eGLConfigArr, 1, iArr2) || iArr2[0] == 0) {
            if (!this.mEgl.eglChooseConfig(this.mEglDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 16, 12326, 0, 12344}, eGLConfigArr, 1, iArr2)) {
                Buffer$$ExternalSyntheticBUOutline4.m967m("eglChooseConfig failed ", GLUtils.getEGLErrorString(this.mEgl.eglGetError()));
                return;
            } else if (iArr2[0] > 0) {
                this.eglConfig = eGLConfigArr[0];
            }
        } else {
            this.eglConfig = eGLConfigArr[0];
        }
        if (this.eglConfig == null) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("eglConfig not initialized");
            return;
        }
        int i = preferGles3() ? 3 : 2;
        EGL10 egl103 = this.mEgl;
        EGLDisplay eGLDisplay = this.mEglDisplay;
        EGLConfig eGLConfig = this.eglConfig;
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        EGLContext eGLContextEglCreateContext = egl103.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, new int[]{12440, i, 12344});
        this.mEglContext = eGLContextEglCreateContext;
        if (eGLContextEglCreateContext == null || eGLContextEglCreateContext == eGLContext) {
            WearAuthSheet$$ExternalSyntheticBUOutline0.m1104m("eglCreateContext failed: ", this.mEgl.eglGetError());
            return;
        }
        checkEglError();
        this.mEglSurface = this.mEgl.eglCreateWindowSurface(this.mEglDisplay, this.eglConfig, this.mSurface, null);
        checkEglError();
        EGLSurface eGLSurface = this.mEglSurface;
        if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
            int iEglGetError = this.mEgl.eglGetError();
            if (iEglGetError == 12299) {
                FileLog.m1038e("eglCreateWindowSurface returned EGL10.EGL_BAD_NATIVE_WINDOW");
                return;
            } else {
                Instance$$ExternalSyntheticBUOutline0.m1009m("eglCreateWindowSurface failed ", GLUtils.getEGLErrorString(iEglGetError));
                return;
            }
        }
        if (!this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
            Instance$$ExternalSyntheticBUOutline0.m1009m("eglMakeCurrent failed ", GLUtils.getEGLErrorString(this.mEgl.eglGetError()));
            return;
        }
        checkEglError();
        this.mGl = (GL10) this.mEglContext.getGL();
        checkEglError();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
            this.touched = false;
            startBackAnimation();
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    public void startBackAnimation() {
        cancelAnimatons();
        GLIconRenderer gLIconRenderer = this.mRenderer;
        final float f = gLIconRenderer.angleX;
        final float f2 = gLIconRenderer.angleY;
        final float f3 = gLIconRenderer.angleX2;
        float f4 = f + f2;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.backAnimation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startBackAnimation$0(f, f3, f2, valueAnimator);
            }
        });
        this.backAnimation.setDuration(600L);
        this.backAnimation.setInterpolator(new OvershootInterpolator());
        this.backAnimation.start();
        StarParticlesView starParticlesView = this.starParticlesView;
        if (starParticlesView != null) {
            starParticlesView.flingParticles(Math.abs(f4));
        }
        scheduleIdleAnimation(this.idleDelay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startBackAnimation$0(float f, float f2, float f3, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        GLIconRenderer gLIconRenderer = this.mRenderer;
        gLIconRenderer.angleX = f * fFloatValue;
        gLIconRenderer.angleX2 = f2 * fFloatValue;
        gLIconRenderer.angleY = fFloatValue * f3;
    }

    public void cancelAnimatons() {
        ValueAnimator valueAnimator = this.backAnimation;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.backAnimation.cancel();
            this.backAnimation = null;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.animatorSet.cancel();
            this.animatorSet = null;
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        this.rendererChanged = true;
        scheduleIdleAnimation(this.idleDelay);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimatons();
        GLIconRenderer gLIconRenderer = this.mRenderer;
        if (gLIconRenderer != null) {
            gLIconRenderer.angleX = 0.0f;
            gLIconRenderer.angleY = 0.0f;
            gLIconRenderer.angleX2 = 0.0f;
        }
        this.attached = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ValueAnimator valueAnimator) {
        this.mRenderer.angleX2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(ValueAnimator valueAnimator) {
        this.mRenderer.angleX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ValueAnimator valueAnimator) {
        this.mRenderer.angleY = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    public void scheduleIdleAnimation(long j) {
        AndroidUtilities.cancelRunOnUIThread(this.idleAnimation);
        if (this.dialogIsVisible || !this.idleAnimationEnabled) {
            return;
        }
        AndroidUtilities.runOnUIThread(this.idleAnimation, j);
    }

    public void cancelIdleAnimation() {
        AndroidUtilities.cancelRunOnUIThread(this.idleAnimation);
    }

    public void setIdleAnimationEnabled(boolean z) {
        this.idleAnimationEnabled = z;
        if (z) {
            scheduleIdleAnimation(this.idleDelay);
        } else {
            cancelIdleAnimation();
            cancelAnimatons();
        }
    }

    public void startIdleAnimation() {
        if (this.attached && this.idleAnimationEnabled) {
            int iIntValue = this.animationIndexes.get(this.animationPointer).intValue();
            int i = this.animationPointer + 1;
            this.animationPointer = i;
            if (i >= this.animationIndexes.size()) {
                Collections.shuffle(this.animationIndexes);
                this.animationPointer = 0;
            }
            if (iIntValue == 0) {
                pullAnimation();
                return;
            }
            if (iIntValue == 1) {
                slowFlipAnimation();
            } else if (iIntValue == 2) {
                sleepAnimation();
            } else {
                flipAnimation();
            }
        }
    }

    private void slowFlipAnimation() {
        this.animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mRenderer.angleX, 360.0f);
        valueAnimatorOfFloat.addUpdateListener(this.xUpdater);
        valueAnimatorOfFloat.setDuration(8000L);
        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animatorSet.playTogether(valueAnimatorOfFloat);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GLIconTextureView gLIconTextureView = GLIconTextureView.this;
                gLIconTextureView.mRenderer.angleX = 0.0f;
                gLIconTextureView.animatorSet = null;
                gLIconTextureView.scheduleIdleAnimation(gLIconTextureView.idleDelay);
            }
        });
        this.animatorSet.start();
    }

    private void pullAnimation() {
        int iAbs = Math.abs(Utilities.random.nextInt() % 4);
        this.animatorSet = new AnimatorSet();
        int i = this.type;
        if (i == 4) {
            float f = this.mRenderer.angleX;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 360.0f + f);
            valueAnimatorOfFloat.addUpdateListener(this.xUpdater);
            valueAnimatorOfFloat.setDuration(12000L);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            this.animatorSet.playTogether(valueAnimatorOfFloat);
        } else if (iAbs == 0 && i != 1 && i != 3) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.mRenderer.angleY, 48.0f);
            valueAnimatorOfFloat2.addUpdateListener(this.yUpdater);
            valueAnimatorOfFloat2.setDuration(2300L);
            valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(48.0f, 0.0f);
            valueAnimatorOfFloat3.addUpdateListener(this.yUpdater);
            valueAnimatorOfFloat3.setDuration(500L);
            valueAnimatorOfFloat3.setStartDelay(2300L);
            valueAnimatorOfFloat3.setInterpolator(AndroidUtilities.overshootInterpolator);
            this.animatorSet.playTogether(valueAnimatorOfFloat2, valueAnimatorOfFloat3);
        } else {
            int i2 = (i == 1 || i == 3) ? 360 : 485;
            if (iAbs == 2) {
                i2 = -i2;
            }
            float f2 = i2;
            ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(this.mRenderer.angleY, f2);
            valueAnimatorOfFloat4.addUpdateListener(this.xUpdater);
            valueAnimatorOfFloat4.setDuration(3000L);
            valueAnimatorOfFloat4.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(f2, 0.0f);
            valueAnimatorOfFloat5.addUpdateListener(this.xUpdater);
            valueAnimatorOfFloat5.setDuration(1000L);
            valueAnimatorOfFloat5.setStartDelay(3000L);
            valueAnimatorOfFloat5.setInterpolator(AndroidUtilities.overshootInterpolator);
            this.animatorSet.playTogether(valueAnimatorOfFloat4, valueAnimatorOfFloat5);
        }
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GLIconTextureView gLIconTextureView = GLIconTextureView.this;
                gLIconTextureView.mRenderer.angleX = 0.0f;
                gLIconTextureView.animatorSet = null;
                gLIconTextureView.scheduleIdleAnimation(gLIconTextureView.idleDelay);
            }
        });
        this.animatorSet.start();
    }

    private void flipAnimation() {
        this.animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mRenderer.angleX, 180.0f);
        valueAnimatorOfFloat.addUpdateListener(this.xUpdater);
        valueAnimatorOfFloat.setDuration(600L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        valueAnimatorOfFloat.setInterpolator(cubicBezierInterpolator);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(180.0f, 360.0f);
        valueAnimatorOfFloat2.addUpdateListener(this.xUpdater);
        valueAnimatorOfFloat2.setDuration(600L);
        valueAnimatorOfFloat2.setStartDelay(2000L);
        valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
        this.animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GLIconTextureView gLIconTextureView = GLIconTextureView.this;
                gLIconTextureView.mRenderer.angleX = 0.0f;
                gLIconTextureView.animatorSet = null;
                gLIconTextureView.scheduleIdleAnimation(gLIconTextureView.idleDelay);
            }
        });
        this.animatorSet.start();
    }

    private void sleepAnimation() {
        this.animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mRenderer.angleX, 184.0f);
        valueAnimatorOfFloat.addUpdateListener(this.xUpdater);
        valueAnimatorOfFloat.setDuration(600L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
        valueAnimatorOfFloat.setInterpolator(cubicBezierInterpolator);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.mRenderer.angleY, 50.0f);
        valueAnimatorOfFloat2.addUpdateListener(this.yUpdater);
        valueAnimatorOfFloat2.setDuration(600L);
        valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(180.0f, 0.0f);
        valueAnimatorOfFloat3.addUpdateListener(this.xUpdater);
        valueAnimatorOfFloat3.setDuration(800L);
        valueAnimatorOfFloat3.setStartDelay(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        valueAnimatorOfFloat3.setInterpolator(AndroidUtilities.overshootInterpolator);
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(60.0f, 0.0f);
        valueAnimatorOfFloat4.addUpdateListener(this.yUpdater);
        valueAnimatorOfFloat4.setDuration(800L);
        valueAnimatorOfFloat4.setStartDelay(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        valueAnimatorOfFloat4.setInterpolator(AndroidUtilities.overshootInterpolator);
        ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(0.0f, 2.0f, -3.0f, 2.0f, -1.0f, 2.0f, -3.0f, 2.0f, -1.0f, 0.0f);
        valueAnimatorOfFloat5.addUpdateListener(this.xUpdater2);
        valueAnimatorOfFloat5.setDuration(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        valueAnimatorOfFloat5.setInterpolator(new LinearInterpolator());
        this.animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfFloat3, valueAnimatorOfFloat4, valueAnimatorOfFloat5);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GLIconTextureView gLIconTextureView = GLIconTextureView.this;
                gLIconTextureView.mRenderer.angleX = 0.0f;
                gLIconTextureView.animatorSet = null;
                gLIconTextureView.scheduleIdleAnimation(gLIconTextureView.idleDelay);
            }
        });
        this.animatorSet.start();
    }

    public void setStarParticlesView(StarParticlesView starParticlesView) {
        this.starParticlesView = starParticlesView;
    }

    public void startEnterAnimation(int i, long j) {
        GLIconRenderer gLIconRenderer = this.mRenderer;
        if (gLIconRenderer != null) {
            gLIconRenderer.angleX = -180.0f;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView.7
                @Override // java.lang.Runnable
                public void run() {
                    GLIconTextureView.this.startBackAnimation();
                }
            }, j);
        }
    }

    public void setDialogVisible(boolean z) {
        this.dialogIsVisible = z;
        if (z) {
            AndroidUtilities.cancelRunOnUIThread(this.idleAnimation);
            startBackAnimation();
        } else {
            scheduleIdleAnimation(this.idleDelay);
        }
    }
}
