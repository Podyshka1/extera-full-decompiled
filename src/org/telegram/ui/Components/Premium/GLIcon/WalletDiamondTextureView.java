package org.telegram.ui.Components.Premium.GLIcon;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.os.Trace;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.FileLog;
import org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class WalletDiamondTextureView extends TextureView implements TextureView.SurfaceTextureListener, Choreographer.FrameCallback {
    private static final Engine[] engines = new Engine[3];
    private boolean attached;
    private final int bufferSize;
    private boolean custom;
    private final Engine engine;
    private boolean enlarged;
    private boolean paused;
    private float pitch;
    private boolean ready;
    private Target target;
    private final Runnable updatePose;
    private final Rect visibleRect;
    private float yaw;

    public abstract void onRenderError();

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public WalletDiamondTextureView(Context context, Runnable runnable) {
        this(context, runnable, 2);
    }

    public WalletDiamondTextureView(Context context, Runnable runnable, int i) {
        super(context);
        this.visibleRect = new Rect();
        this.paused = true;
        this.updatePose = runnable;
        Engine[] engineArr = engines;
        if (engineArr[i] == null) {
            engineArr[i] = new Engine(context.getApplicationContext(), i);
        }
        Engine engine = engineArr[i];
        this.engine = engine;
        this.bufferSize = engine.expandedSize;
        setOpaque(false);
        setSurfaceTextureListener(this);
    }

    public boolean isReady() {
        return this.ready;
    }

    public void setPose(float f, float f2, boolean z, boolean z2) {
        this.yaw = f;
        this.pitch = f2;
        this.custom = z;
        this.enlarged = z2;
    }

    public void setPaused(boolean z) {
        this.paused = z;
        Choreographer.getInstance().removeFrameCallback(this);
        if (this.attached && !z) {
            Choreographer.getInstance().postFrameCallback(this);
            return;
        }
        Target target = this.target;
        if (target != null) {
            target.pose = null;
            this.engine.requestFrame();
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        if (!this.attached || this.paused) {
            return;
        }
        this.updatePose.run();
        if (this.target != null) {
            boolean z = isShown() && getWindowVisibility() == 0 && getGlobalVisibleRect(this.visibleRect);
            this.target.pose = z ? new Pose(this.yaw, this.pitch, 1.0f, this.custom, this.enlarged) : null;
            this.engine.requestFrame();
        }
        Choreographer.getInstance().postFrameCallback(this);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.ready = false;
        int i3 = this.bufferSize;
        surfaceTexture.setDefaultBufferSize(i3, i3);
        Target target = new Target(this, new Surface(surfaceTexture), this.bufferSize);
        this.target = target;
        this.engine.add(target);
        setPaused(this.paused);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        int i3 = this.bufferSize;
        surfaceTexture.setDefaultBufferSize(i3, i3);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.ready = false;
        Target target = this.target;
        this.target = null;
        if (target == null) {
            return true;
        }
        this.engine.remove(target);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        Target target;
        int i = this.bufferSize;
        surfaceTexture.setDefaultBufferSize(i, i);
        if (this.ready || (target = this.target) == null || !target.hasContent) {
            return;
        }
        this.ready = true;
        if (getParent() instanceof View) {
            ((View) getParent()).invalidate();
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        setPaused(this.paused);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.ready = false;
        this.attached = false;
        Choreographer.getInstance().removeFrameCallback(this);
        super.onDetachedFromWindow();
    }

    public static final class Pose {
        final float alpha;
        final boolean custom;
        final boolean enlarged;
        final float pitch;
        final float yaw;

        public Pose(float f, float f2, float f3, boolean z, boolean z2) {
            this.yaw = f;
            this.pitch = f2;
            this.alpha = f3;
            this.custom = z;
            this.enlarged = z2;
        }
    }

    public static final class Target {
        boolean cleared;
        boolean custom;
        volatile boolean hasContent;
        int height;
        volatile Pose pose;
        final Surface surface;
        final WalletDiamondTextureView view;
        int width;
        volatile boolean valid = true;
        EGLSurface egl = EGL14.EGL_NO_SURFACE;
        int idleVersion = -1;
        float alpha = -1.0f;

        public Target(WalletDiamondTextureView walletDiamondTextureView, Surface surface, int i) {
            this.view = walletDiamondTextureView;
            this.surface = surface;
            this.height = i;
            this.width = i;
        }
    }

    public static final class Engine {
        final int appearance;
        EGLConfig config;
        final Context context;
        DiamondRenderer idle;
        int idleVersion;
        DiamondRenderer interaction;
        long lastFrame;
        long lastIdle;
        DiamondRenderer sending;
        final int size;
        final Handler worker;
        final ArrayList<Target> views = new ArrayList<>();
        volatile Target[] targets = new Target[0];
        final AtomicBoolean scheduled = new AtomicBoolean();
        final int[] surfaceSize = new int[2];
        EGLDisplay display = EGL14.EGL_NO_DISPLAY;
        EGLContext contextGL = EGL14.EGL_NO_CONTEXT;
        EGLSurface pbuffer = EGL14.EGL_NO_SURFACE;
        final int expandedSize = 378;

        public Engine(Context context, int i) {
            this.context = context;
            this.appearance = i;
            this.size = Math.max(1, Math.min(192, Math.round(context.getResources().getDisplayMetrics().density * 42.0f)));
            HandlerThread handlerThread = new HandlerThread("WalletDiamondTextures");
            handlerThread.start();
            this.worker = new Handler(handlerThread.getLooper());
        }

        public void add(Target target) {
            this.views.add(target);
            this.targets = (Target[]) this.views.toArray(new Target[0]);
            requestFrame();
        }

        public void remove(final Target target) {
            target.valid = false;
            this.views.remove(target);
            this.targets = (Target[]) this.views.toArray(new Target[0]);
            this.worker.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView$Engine$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$remove$0(target);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$remove$0(Target target) {
            try {
                EGLDisplay eGLDisplay = this.display;
                if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
                    EGLSurface eGLSurface = this.pbuffer;
                    EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.contextGL);
                    EGLSurface eGLSurface2 = target.egl;
                    if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
                        EGL14.eglDestroySurface(this.display, eGLSurface2);
                    }
                    target.egl = EGL14.EGL_NO_SURFACE;
                    if (this.targets.length == 0) {
                        release();
                    }
                }
                target.surface.release();
            } catch (Throwable th) {
                target.surface.release();
                throw th;
            }
        }

        public void requestFrame() {
            if (this.scheduled.compareAndSet(false, true)) {
                this.worker.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView$Engine$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        this.f$0.render();
                    }
                });
            }
        }

        public DiamondRenderer renderer() {
            DiamondRenderer diamondRenderer = new DiamondRenderer(this.context, 2);
            diamondRenderer.appearance = this.appearance;
            return diamondRenderer;
        }

        public void initialize() {
            EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
            this.display = eGLDisplayEglGetDisplay;
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Wallet EGL initialize failed");
                return;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr2 = new int[1];
            if (!EGL14.eglChooseConfig(this.display, new int[]{12352, 64, 12339, 5, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) || iArr2[0] == 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Wallet EGL config failed");
                return;
            }
            EGLConfig eGLConfig = eGLConfigArr[0];
            this.config = eGLConfig;
            this.contextGL = EGL14.eglCreateContext(this.display, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 3, 12344}, 0);
            EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.display, this.config, new int[]{12375, 1, 12374, 1, 12344}, 0);
            this.pbuffer = eGLSurfaceEglCreatePbufferSurface;
            if (!EGL14.eglMakeCurrent(this.display, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, this.contextGL)) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Wallet EGL context failed");
                return;
            }
            this.idle = renderer();
            this.interaction = renderer();
            this.lastIdle = 0L;
            this.lastFrame = 0L;
            this.idleVersion = 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:154:0x0229  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0107 A[Catch: all -> 0x00bf, RuntimeException -> 0x00c2, TryCatch #0 {RuntimeException -> 0x00c2, blocks: (B:45:0x006c, B:49:0x0084, B:51:0x0091, B:53:0x0097, B:55:0x009f, B:59:0x00b4, B:58:0x00af, B:64:0x00c5, B:66:0x00cb, B:139:0x01ec, B:69:0x00d3, B:71:0x00d7, B:74:0x00dd, B:76:0x00e3, B:78:0x00f9, B:81:0x00ff, B:82:0x0106, B:83:0x0107, B:85:0x0113, B:88:0x0119, B:89:0x0120, B:90:0x0121, B:92:0x0134, B:95:0x0144, B:97:0x014c, B:102:0x0156, B:104:0x015e, B:106:0x0162, B:108:0x0179, B:110:0x017d, B:112:0x0181, B:114:0x0185, B:116:0x018b, B:119:0x0194, B:121:0x019a, B:123:0x019e, B:127:0x01ab, B:128:0x01b0, B:130:0x01b4, B:131:0x01ba, B:135:0x01c7, B:136:0x01cb, B:137:0x01e8, B:140:0x01f0, B:141:0x01f7, B:48:0x0079), top: B:156:0x006c }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void render() throws Throwable {
            boolean z;
            Pose pose;
            Target[] targetArr = this.targets;
            try {
                try {
                    if (targetArr.length == 0) {
                        this.scheduled.set(false);
                        return;
                    }
                    if (this.idle == null) {
                        initialize();
                    }
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    int length = targetArr.length;
                    Pose pose2 = null;
                    int i = 0;
                    boolean z2 = false;
                    boolean z3 = false;
                    while (true) {
                        z = true;
                        if (i >= length) {
                            break;
                        }
                        Target target = targetArr[i];
                        Pose pose3 = target.pose;
                        if (target.valid && pose3 != null) {
                            boolean z4 = pose3.custom;
                            z3 |= z4;
                            if (!z4) {
                                pose2 = pose3;
                            }
                        }
                        if (!target.valid || target.hasContent || pose3 == null) {
                            z = false;
                        }
                        z2 |= z;
                        i++;
                    }
                    if (!z2) {
                        if (jUptimeMillis - this.lastFrame < (z3 ? 16 : 33)) {
                            this.scheduled.set(false);
                            return;
                        }
                    }
                    Trace.beginSection(z3 ? "WalletTextures.dragBatch" : "WalletTextures.idleBatch");
                    try {
                        float fMin = this.lastFrame == 0 ? 0.0f : Math.min(0.1f, (jUptimeMillis - r7) / 1000.0f);
                        this.lastFrame = jUptimeMillis;
                        EGLDisplay eGLDisplay = this.display;
                        EGLSurface eGLSurface = this.pbuffer;
                        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.contextGL);
                        if (pose2 != null) {
                            long j = this.lastIdle;
                            if (j == 0 || jUptimeMillis - j >= 33) {
                                this.idle.drawToTexture(this.size, pose2.yaw, pose2.pitch, j == 0 ? 0.0f : (jUptimeMillis - j) / 1000.0f);
                                this.lastIdle = jUptimeMillis;
                                this.idleVersion++;
                            }
                        }
                        boolean z5 = false;
                        boolean z6 = false;
                        for (Target target2 : targetArr) {
                            if (target2.valid && ((pose = target2.pose) != null || !target2.cleared)) {
                                if (target2.egl == EGL14.EGL_NO_SURFACE) {
                                    EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.display, this.config, target2.surface, new int[]{12344}, 0);
                                    target2.egl = eGLSurfaceEglCreateWindowSurface;
                                    if (eGLSurfaceEglCreateWindowSurface != EGL14.EGL_NO_SURFACE) {
                                        EGLDisplay eGLDisplay2 = this.display;
                                        EGLSurface eGLSurface2 = target2.egl;
                                        if (EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, this.contextGL)) {
                                            EGL14.eglSwapInterval(this.display, 0);
                                            if (EGL14.eglQuerySurface(this.display, target2.egl, 12375, this.surfaceSize, 0) && EGL14.eglQuerySurface(this.display, target2.egl, 12374, this.surfaceSize, 1)) {
                                                int i2 = target2.width;
                                                int[] iArr = this.surfaceSize;
                                                int i3 = iArr[0];
                                                boolean z7 = (i2 == i3 && target2.height == iArr[1]) ? false : true;
                                                target2.width = i3;
                                                target2.height = iArr[1];
                                                if (pose == null) {
                                                    if (!target2.cleared) {
                                                        GLES20.glBindFramebuffer(36160, 0);
                                                        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                                                        GLES20.glClear(16384);
                                                        swap(target2);
                                                        target2.cleared = true;
                                                    }
                                                } else if (z7 || pose.custom || target2.custom || target2.cleared || target2.idleVersion != this.idleVersion || target2.alpha != pose.alpha) {
                                                    DiamondRenderer diamondRenderer = this.idle;
                                                    if (pose.custom) {
                                                        if (pose.enlarged) {
                                                            diamondRenderer = this.interaction;
                                                            diamondRenderer.drawToTexture(this.expandedSize, pose.yaw, pose.pitch, z5 ? 0.0f : fMin);
                                                            z5 = true;
                                                        } else {
                                                            if (this.sending == null) {
                                                                this.sending = renderer();
                                                            }
                                                            diamondRenderer = this.sending;
                                                            diamondRenderer.drawToTexture(this.size, pose.yaw, pose.pitch, z6 ? 0.0f : fMin);
                                                            z6 = true;
                                                        }
                                                    }
                                                    diamondRenderer.drawTexture(target2.width, target2.height, pose.alpha);
                                                    swap(target2);
                                                    target2.cleared = false;
                                                    target2.idleVersion = this.idleVersion;
                                                    target2.alpha = pose.alpha;
                                                    target2.custom = pose.custom;
                                                    target2.hasContent = true;
                                                }
                                            } else if (target2.valid) {
                                                throw new IllegalStateException("Wallet EGL surface size failed");
                                            }
                                        } else if (target2.valid) {
                                            throw new IllegalStateException("Wallet EGL makeCurrent failed");
                                        }
                                    } else if (target2.valid) {
                                        throw new IllegalStateException("Wallet EGL window failed");
                                    }
                                }
                            }
                        }
                        this.scheduled.set(false);
                        Trace.endSection();
                        return;
                    } catch (RuntimeException e) {
                        e = e;
                    }
                } catch (Throwable th) {
                    th = th;
                    this.scheduled.set(false);
                    if (0 != 0) {
                        Trace.endSection();
                    }
                    throw th;
                }
            } catch (RuntimeException e2) {
                e = e2;
                z = false;
            } catch (Throwable th2) {
                th = th2;
                this.scheduled.set(false);
                if (0 != 0) {
                }
                throw th;
            }
            FileLog.m1040e(e);
            for (final Target target3 : targetArr) {
                target3.view.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView$Engine$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        WalletDiamondTextureView.Engine.$r8$lambda$MSGtPFeIXnNa3X2PL4q6kbDF5Ak(target3);
                    }
                });
            }
            this.scheduled.set(false);
            if (z) {
                Trace.endSection();
            }
        }

        public static /* synthetic */ void $r8$lambda$MSGtPFeIXnNa3X2PL4q6kbDF5Ak(Target target) {
            if (target.view.target == target) {
                target.view.ready = false;
                target.view.onRenderError();
            }
        }

        public void swap(Target target) {
            if (EGL14.eglSwapBuffers(this.display, target.egl) || !target.valid) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("Wallet EGL swap failed");
        }

        public void release() {
            DiamondRenderer diamondRenderer = this.idle;
            if (diamondRenderer != null) {
                diamondRenderer.destroy();
            }
            DiamondRenderer diamondRenderer2 = this.interaction;
            if (diamondRenderer2 != null) {
                diamondRenderer2.destroy();
            }
            DiamondRenderer diamondRenderer3 = this.sending;
            if (diamondRenderer3 != null) {
                diamondRenderer3.destroy();
            }
            this.sending = null;
            this.interaction = null;
            this.idle = null;
            EGLDisplay eGLDisplay = this.display;
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(this.display, this.pbuffer);
            EGL14.eglDestroyContext(this.display, this.contextGL);
            EGL14.eglTerminate(this.display);
            EGL14.eglReleaseThread();
            this.display = EGL14.EGL_NO_DISPLAY;
            this.contextGL = EGL14.EGL_NO_CONTEXT;
            this.pbuffer = EGL14.EGL_NO_SURFACE;
        }
    }
}
