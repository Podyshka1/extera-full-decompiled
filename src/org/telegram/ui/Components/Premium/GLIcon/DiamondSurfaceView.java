package org.telegram.ui.Components.Premium.GLIcon;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.view.Choreographer;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.PathInterpolator;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.telegram.messenger.FileLog;
import org.telegram.ui.Components.Premium.StarParticlesView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class DiamondSurfaceView extends GLSurfaceView implements Choreographer.FrameCallback {
    private ValueAnimator animation;
    private boolean attached;
    private float bufferScale;
    private volatile float compositionAlpha;
    private volatile boolean failed;
    private final GestureDetector gestures;
    private boolean idle;
    public final GLIconRenderer mRenderer;
    private long nextFrame;
    private StarParticlesView particles;
    private boolean paused;
    private final ArrayList<Runnable> pendingRedraws;
    private volatile int placementGeneration;
    private volatile boolean positionReady;
    private boolean ready;
    private Runnable readyListener;
    private float renderScale;
    private volatile boolean revealScheduled;
    private volatile int surfaceGeneration;
    private boolean touching;

    public abstract void onRenderError();

    public void reserveRenderScale(float f) {
        float fMax = Math.max(1.0f, f);
        this.bufferScale = fMax;
        this.mRenderer.diamondResolutionScale = this.renderScale / fMax;
        updateBufferSize();
    }

    public void setRenderScale(float f) {
        float fMax = Math.max(1.0f, Math.min(this.bufferScale, f));
        if (this.renderScale == fMax) {
            return;
        }
        this.renderScale = fMax;
        this.mRenderer.diamondResolutionScale = fMax / this.bufferScale;
    }

    private void updateBufferSize() {
        if (this.bufferScale == 1.0f) {
            getHolder().setSizeFromLayout();
        } else {
            if (getWidth() <= 0 || getHeight() <= 0) {
                return;
            }
            getHolder().setFixedSize(Math.round(getWidth() * this.bufferScale), Math.round(getHeight() * this.bufferScale));
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.bufferScale > 1.0f) {
            updateBufferSize();
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, final Runnable runnable) {
        final ArrayList arrayList;
        synchronized (this.pendingRedraws) {
            this.pendingRedraws.add(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    runnable.run();
                }
            });
            arrayList = new ArrayList(this.pendingRedraws);
        }
        super.surfaceRedrawNeededAsync(surfaceHolder, new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$surfaceRedrawNeededAsync$1(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: finishRedraws, reason: merged with bridge method [inline-methods] */
    public void lambda$surfaceRedrawNeededAsync$1(ArrayList<Runnable> arrayList) {
        int i;
        ArrayList arrayList2 = new ArrayList();
        synchronized (this.pendingRedraws) {
            try {
                int size = arrayList.size();
                i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Runnable runnable = arrayList.get(i2);
                    i2++;
                    Runnable runnable2 = runnable;
                    if (this.pendingRedraws.remove(runnable2)) {
                        arrayList2.add(runnable2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj = arrayList2.get(i);
            i++;
            ((Runnable) obj).run();
        }
    }

    private void finishPendingRedraws() {
        ArrayList<Runnable> arrayList;
        synchronized (this.pendingRedraws) {
            arrayList = new ArrayList<>(this.pendingRedraws);
        }
        lambda$surfaceRedrawNeededAsync$1(arrayList);
    }

    public DiamondSurfaceView(Context context) {
        super(context);
        this.paused = true;
        this.compositionAlpha = 1.0f;
        this.pendingRedraws = new ArrayList<>();
        this.renderScale = 1.0f;
        this.bufferScale = 1.0f;
        setEGLContextClientVersion(3);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        getHolder().setFormat(-3);
        setZOrderOnTop(true);
        this.mRenderer = new GLIconRenderer(context, 1, 4);
        setRenderer(new C43081());
        setRenderMode(0);
        this.gestures = new GestureDetector(context, new C43092());
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$1 */
    public class C43081 implements GLSurfaceView.Renderer {
        private boolean announced;
        private int generation;
        private long previous;

        public C43081() {
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            DiamondSurfaceView diamondSurfaceView = DiamondSurfaceView.this;
            int i = diamondSurfaceView.surfaceGeneration + 1;
            diamondSurfaceView.surfaceGeneration = i;
            this.generation = i;
            this.announced = false;
            this.previous = 0L;
            DiamondSurfaceView.this.failed = false;
            GLIconRenderer gLIconRenderer = DiamondSurfaceView.this.mRenderer;
            gLIconRenderer.model = null;
            try {
                gLIconRenderer.onSurfaceCreated(gl10, eGLConfig);
            } catch (RuntimeException e) {
                fail(e);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            this.announced = false;
            this.generation = DiamondSurfaceView.this.surfaceGeneration;
            if (DiamondSurfaceView.this.failed) {
                return;
            }
            DiamondSurfaceView.this.mRenderer.onSurfaceChanged(gl10, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            if (DiamondSurfaceView.this.failed) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
                return;
            }
            if (!DiamondSurfaceView.this.positionReady) {
                GLES20.glBindFramebuffer(36160, 0);
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
                if (DiamondSurfaceView.this.revealScheduled) {
                    return;
                }
                DiamondSurfaceView.this.revealScheduled = true;
                final int i = DiamondSurfaceView.this.placementGeneration;
                DiamondSurfaceView.this.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onDrawFrame$0(i);
                    }
                });
                return;
            }
            try {
                long jNanoTime = System.nanoTime();
                DiamondSurfaceView.this.mRenderer.setDeltaTime(this.previous == 0 ? 0.016666668f : Math.min(0.1f, (jNanoTime - r5) / 1.0E9f));
                this.previous = jNanoTime;
                DiamondSurfaceView diamondSurfaceView = DiamondSurfaceView.this;
                diamondSurfaceView.mRenderer.model.diamondAlpha = diamondSurfaceView.compositionAlpha;
                DiamondSurfaceView.this.mRenderer.onDrawFrame(gl10);
                int iGlGetError = GLES20.glGetError();
                if (iGlGetError != 0) {
                    throw new IllegalStateException("Diamond GL error: " + iGlGetError);
                }
                if (this.announced) {
                    return;
                }
                this.announced = true;
                final int i2 = this.generation;
                DiamondSurfaceView.this.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onDrawFrame$1(i2);
                    }
                });
            } catch (RuntimeException e) {
                fail(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDrawFrame$0(int i) {
            DiamondSurfaceView.this.revealAfterPositionCommit(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDrawFrame$1(int i) {
            if (DiamondSurfaceView.this.attached && !DiamondSurfaceView.this.failed && i == DiamondSurfaceView.this.surfaceGeneration) {
                DiamondSurfaceView.this.ready = true;
                Runnable runnable = DiamondSurfaceView.this.readyListener;
                DiamondSurfaceView.this.readyListener = null;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }

        private void fail(RuntimeException runtimeException) {
            FileLog.m1040e(runtimeException);
            DiamondSurfaceView.this.failed = true;
            DiamondSurfaceView.this.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fail$2();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fail$2() {
            DiamondSurfaceView.this.ready = false;
            DiamondSurfaceView.this.readyListener = null;
            DiamondSurfaceView.this.stopFrames();
            DiamondSurfaceView.this.onRenderError();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$2 */
    public class C43092 extends GestureDetector.SimpleOnGestureListener {
        public C43092() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            DiamondSurfaceView.this.touching = true;
            DiamondSurfaceView.this.cancelAnimation();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            GLIconRenderer gLIconRenderer = DiamondSurfaceView.this.mRenderer;
            gLIconRenderer.angleX -= f * 0.5f;
            gLIconRenderer.angleY -= f2 * 0.05f;
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (Math.abs(DiamondSurfaceView.this.mRenderer.angleX) > 10.0f) {
                return true;
            }
            float fMax = Math.max(1.0f, DiamondSurfaceView.this.getWidth() / 2.0f);
            final float fRandom = (((((float) Math.random()) * 30.0f) + 40.0f) * (fMax - motionEvent.getX())) / fMax;
            final float fRandom2 = (((((float) Math.random()) * 30.0f) + 40.0f) * (fMax - motionEvent.getY())) / fMax;
            DiamondSurfaceView.this.cancelAnimation();
            DiamondSurfaceView diamondSurfaceView = DiamondSurfaceView.this;
            GLIconRenderer gLIconRenderer = diamondSurfaceView.mRenderer;
            final float f = gLIconRenderer.angleX;
            final float f2 = gLIconRenderer.angleY;
            diamondSurfaceView.animation = ValueAnimator.ofFloat(0.0f, 1.0f);
            DiamondSurfaceView.this.animation.setDuration(220L);
            DiamondSurfaceView.this.animation.setInterpolator(new PathInterpolator(0.23f, 1.0f, 0.32f, 1.0f));
            DiamondSurfaceView.this.animation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$2$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onSingleTapUp$0(f, fRandom, f2, fRandom2, valueAnimator);
                }
            });
            DiamondSurfaceView.this.animation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView.2.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    DiamondSurfaceView.this.returnToRest();
                }
            });
            DiamondSurfaceView.this.animation.start();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSingleTapUp$0(float f, float f2, float f3, float f4, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            GLIconRenderer gLIconRenderer = DiamondSurfaceView.this.mRenderer;
            gLIconRenderer.angleX = f + ((f2 - f) * fFloatValue);
            gLIconRenderer.angleY = f3 + ((f4 - f3) * fFloatValue);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            this.touching = false;
            returnToRest();
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return this.gestures.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void returnToRest() {
        cancelAnimation();
        GLIconRenderer gLIconRenderer = this.mRenderer;
        final float f = gLIconRenderer.angleX;
        final float f2 = gLIconRenderer.angleY;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.animation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(600L);
        this.animation.setInterpolator(new OvershootInterpolator());
        this.animation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$returnToRest$2(f, f2, valueAnimator);
            }
        });
        this.animation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DiamondSurfaceView.this.animation = null;
                DiamondSurfaceView.this.startIdle();
            }
        });
        this.animation.start();
        StarParticlesView starParticlesView = this.particles;
        if (starParticlesView != null) {
            starParticlesView.flingParticles(Math.abs(f + f2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$returnToRest$2(float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        GLIconRenderer gLIconRenderer = this.mRenderer;
        gLIconRenderer.angleX = f * fFloatValue;
        gLIconRenderer.angleY = f2 * fFloatValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIdle() {
        if (this.attached && !this.paused && this.idle && !this.touching && this.animation == null) {
            float f = this.mRenderer.angleX;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 360.0f + f);
            this.animation = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(Math.round(10540.18445322793d));
            this.animation.setRepeatCount(-1);
            this.animation.setInterpolator(new LinearInterpolator());
            this.animation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$startIdle$3(valueAnimator);
                }
            });
            this.animation.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startIdle$3(ValueAnimator valueAnimator) {
        this.mRenderer.angleX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAnimation() {
        ValueAnimator valueAnimator = this.animation;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator.removeAllListeners();
        this.animation.cancel();
        this.animation = null;
    }

    public void setIdleAnimationEnabled(boolean z) {
        this.idle = z;
        if (z) {
            startIdle();
        } else {
            cancelAnimation();
        }
    }

    public void setStarParticlesView(StarParticlesView starParticlesView) {
        this.particles = starParticlesView;
    }

    public void whenReady(Runnable runnable) {
        this.readyListener = runnable;
        if (!this.ready || runnable == null) {
            return;
        }
        this.readyListener = null;
        runnable.run();
    }

    public void setPaused(boolean z) {
        this.paused = z;
        stopFrames();
        if (z) {
            cancelAnimation();
        } else {
            if (!this.attached || this.failed) {
                return;
            }
            startIdle();
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        if (!this.attached || this.paused || this.failed) {
            return;
        }
        float alpha = Build.VERSION.SDK_INT < 34 ? getAlpha() : 1.0f;
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            alpha *= ((View) parent).getAlpha();
        }
        this.compositionAlpha = alpha;
        long j2 = this.nextFrame;
        if (j2 == 0 || j >= j2) {
            if (j2 == 0 || j - j2 > 16666666) {
                this.nextFrame = j;
            }
            this.nextFrame += 16666666;
            requestRender();
        }
        Choreographer.getInstance().postFrameCallback(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopFrames() {
        Choreographer.getInstance().removeFrameCallback(this);
        this.nextFrame = 0L;
    }

    public void stopThread() {
        setPaused(true);
        onPause();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.placementGeneration++;
        this.revealScheduled = false;
        this.positionReady = false;
        this.ready = false;
        super.surfaceCreated(surfaceHolder);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.placementGeneration++;
        this.revealScheduled = false;
        this.positionReady = false;
        this.ready = false;
        super.surfaceDestroyed(surfaceHolder);
        finishPendingRedraws();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revealAfterPositionCommit(final int i) {
        if (this.attached && i == this.placementGeneration) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$revealAfterPositionCommit$5(i);
                }
            };
            if (Build.VERSION.SDK_INT >= 29 && isHardwareAccelerated()) {
                getViewTreeObserver().registerFrameCommitCallback(runnable);
                getRootView().invalidate();
            } else {
                postOnAnimation(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revealAfterPositionCommit$5(final int i) {
        postOnAnimation(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$revealAfterPositionCommit$4(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revealAfterPositionCommit$4(int i) {
        if (this.attached && !this.failed && i == this.placementGeneration) {
            this.positionReady = true;
            requestRender();
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        setPaused(this.paused);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        this.attached = false;
        this.ready = false;
        this.surfaceGeneration++;
        stopFrames();
        cancelAnimation();
        super.onDetachedFromWindow();
        finishPendingRedraws();
    }
}
