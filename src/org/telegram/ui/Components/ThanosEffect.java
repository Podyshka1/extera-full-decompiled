package org.telegram.ui.Components;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.opengl.GLUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import android.view.TextureView;
import android.view.View;
import com.google.zxing.common.detector.MathUtils;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.EmuDetector;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Cells.BaseCell;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.ThanosEffect;

/* JADX INFO: loaded from: classes7.dex */
public class ThanosEffect extends TextureView {
    private static Boolean nothanos;
    public boolean destroyed;
    private DrawingThread drawThread;
    private final Choreographer.FrameCallback frameCallback;
    private final ArrayList<ToSet> toSet;
    private Runnable whenDone;

    public static boolean supports() {
        if (nothanos == null) {
            nothanos = Boolean.valueOf(MessagesController.getGlobalMainSettings().getBoolean("nothanos", false));
        }
        Boolean bool = nothanos;
        return bool == null || !bool.booleanValue();
    }

    public static class ToSet {
        public final Bitmap bitmap;
        public Runnable doneCallback;
        public float durationMultiplier;
        public final Matrix matrix;
        public Runnable startCallback;
        public final View view;
        public final ArrayList<View> views;

        public ToSet(View view, Runnable runnable) {
            this.durationMultiplier = 1.0f;
            this.view = view;
            this.views = null;
            this.startCallback = null;
            this.doneCallback = runnable;
            this.bitmap = null;
            this.matrix = null;
        }

        public ToSet(ArrayList<View> arrayList, Runnable runnable) {
            this.durationMultiplier = 1.0f;
            this.view = null;
            this.views = arrayList;
            this.startCallback = null;
            this.doneCallback = runnable;
            this.bitmap = null;
            this.matrix = null;
        }

        public ToSet(Matrix matrix, Bitmap bitmap, Runnable runnable, Runnable runnable2) {
            this.durationMultiplier = 1.0f;
            this.view = null;
            this.views = null;
            this.startCallback = runnable;
            this.doneCallback = runnable2;
            this.matrix = matrix;
            this.bitmap = bitmap;
        }
    }

    public ThanosEffect(Context context, Runnable runnable) {
        super(context);
        this.frameCallback = new Choreographer.FrameCallback() { // from class: org.telegram.ui.Components.ThanosEffect.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                if (ThanosEffect.this.drawThread != null) {
                    ThanosEffect.this.drawThread.requestDraw();
                    if (ThanosEffect.this.drawThread.running) {
                        Choreographer.getInstance().postFrameCallback(this);
                    }
                }
            }
        };
        this.toSet = new ArrayList<>();
        this.whenDone = runnable;
        setOpaque(false);
        setSurfaceTextureListener(new TextureViewSurfaceTextureListenerC44572());
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ThanosEffect$2 */
    public class TextureViewSurfaceTextureListenerC44572 implements TextureView.SurfaceTextureListener {
        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        public TextureViewSurfaceTextureListenerC44572() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            if (ThanosEffect.this.drawThread != null) {
                ThanosEffect.this.drawThread.kill();
                ThanosEffect.this.drawThread = null;
            }
            ThanosEffect thanosEffect = ThanosEffect.this;
            final ThanosEffect thanosEffect2 = ThanosEffect.this;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    thanosEffect2.invalidate();
                }
            };
            final ThanosEffect thanosEffect3 = ThanosEffect.this;
            thanosEffect.drawThread = new DrawingThread(surfaceTexture, runnable, new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    thanosEffect3.destroy();
                }
            }, i, i2);
            ThanosEffect.this.drawThread.isEmulator = EmuDetector.with(ThanosEffect.this.getContext()).detect();
            if (ThanosEffect.this.toSet.isEmpty()) {
                return;
            }
            int i3 = 0;
            while (true) {
                int size = ThanosEffect.this.toSet.size();
                ThanosEffect thanosEffect4 = ThanosEffect.this;
                if (i3 < size) {
                    ToSet toSet = (ToSet) thanosEffect4.toSet.get(i3);
                    if (toSet.bitmap != null) {
                        ThanosEffect.this.drawThread.animate(toSet.matrix, toSet.bitmap, toSet.startCallback, toSet.doneCallback);
                    } else {
                        ArrayList<View> arrayList = toSet.views;
                        ThanosEffect thanosEffect5 = ThanosEffect.this;
                        if (arrayList != null) {
                            thanosEffect5.drawThread.animateGroup(toSet.views, toSet.doneCallback);
                        } else {
                            thanosEffect5.drawThread.animate(toSet.view, toSet.durationMultiplier, toSet.doneCallback);
                        }
                    }
                    i3++;
                } else {
                    thanosEffect4.toSet.clear();
                    Choreographer.getInstance().postFrameCallback(ThanosEffect.this.frameCallback);
                    return;
                }
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            if (ThanosEffect.this.drawThread != null) {
                ThanosEffect.this.drawThread.resize(i, i2);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            if (ThanosEffect.this.drawThread != null) {
                ThanosEffect.this.drawThread.kill();
                ThanosEffect.this.drawThread = null;
            }
            if (ThanosEffect.this.whenDone == null) {
                return false;
            }
            Runnable runnable = ThanosEffect.this.whenDone;
            ThanosEffect.this.whenDone = null;
            ThanosEffect.ensureRunOnUIThread(runnable);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroy() {
        Runnable runnable = this.whenDone;
        if (runnable != null) {
            this.destroyed = true;
            this.whenDone = null;
            ensureRunOnUIThread(runnable);
        }
    }

    public void kill() {
        if (this.destroyed) {
            return;
        }
        this.destroyed = true;
        ArrayList<ToSet> arrayList = this.toSet;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            ToSet toSet = arrayList.get(i);
            i++;
            ToSet toSet2 = toSet;
            Runnable runnable = toSet2.doneCallback;
            if (runnable != null) {
                ensureRunOnUIThread(runnable);
                toSet2.doneCallback = null;
            }
        }
        this.toSet.clear();
        DrawingThread drawingThread = this.drawThread;
        if (drawingThread != null) {
            drawingThread.kill();
        }
        Runnable runnable2 = this.whenDone;
        if (runnable2 != null) {
            this.whenDone = null;
            ensureRunOnUIThread(runnable2);
        }
    }

    public void scroll(int i, int i2) {
        DrawingThread drawingThread = this.drawThread;
        if (drawingThread != null) {
            boolean z = drawingThread.running;
        }
    }

    public void animateGroup(ArrayList<View> arrayList, Runnable runnable) {
        DrawingThread drawingThread = this.drawThread;
        if (drawingThread != null) {
            drawingThread.animateGroup(arrayList, runnable);
            Choreographer.getInstance().postFrameCallback(this.frameCallback);
        } else {
            this.toSet.add(new ToSet(arrayList, runnable));
        }
    }

    public void animate(View view, Runnable runnable) {
        DrawingThread drawingThread = this.drawThread;
        if (drawingThread != null) {
            drawingThread.animate(view, 1.0f, runnable);
            Choreographer.getInstance().postFrameCallback(this.frameCallback);
        } else {
            this.toSet.add(new ToSet(view, runnable));
        }
    }

    public void animate(View view, float f, Runnable runnable) {
        DrawingThread drawingThread = this.drawThread;
        if (drawingThread != null) {
            drawingThread.animate(view, f, runnable);
            Choreographer.getInstance().postFrameCallback(this.frameCallback);
        } else {
            ToSet toSet = new ToSet(view, runnable);
            toSet.durationMultiplier = f;
            this.toSet.add(toSet);
        }
    }

    public void cancel(View view) {
        int i = 0;
        boolean z = false;
        while (i < this.toSet.size()) {
            ToSet toSet = this.toSet.get(i);
            if (toSet.view == view) {
                Runnable runnable = toSet.doneCallback;
                if (runnable != null) {
                    ensureRunOnUIThread(runnable);
                    toSet.doneCallback = null;
                }
                this.toSet.remove(i);
                i--;
                z = true;
            }
            i++;
        }
        if (z) {
            return;
        }
        this.drawThread.cancel(view);
    }

    public void animate(Matrix matrix, Bitmap bitmap, Runnable runnable, Runnable runnable2) {
        DrawingThread drawingThread = this.drawThread;
        if (drawingThread != null) {
            drawingThread.animate(matrix, bitmap, runnable, runnable2);
            Choreographer.getInstance().postFrameCallback(this.frameCallback);
        } else {
            this.toSet.add(new ToSet(matrix, bitmap, runnable, runnable2));
        }
    }

    public static void ensureRunOnUIThread(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            AndroidUtilities.runOnUIThread(runnable);
        } else {
            runnable.run();
        }
    }

    public static class DrawingThread extends DispatchQueue {
        private AtomicBoolean alive;
        private int deltaTimeHandle;
        private int densityHandle;
        private Runnable destroy;
        private int drawProgram;
        private boolean drawnAnimations;
        private EGL10 egl;
        private EGLConfig eglConfig;
        private EGLContext eglContext;
        private EGLDisplay eglDisplay;
        private EGLSurface eglSurface;
        private int gridSizeHandle;
        private int height;
        private final Runnable invalidate;
        private boolean isEmulator;
        private int longevityHandle;
        private int matrixHandle;
        private int offsetHandle;
        private int particlesCountHandle;
        private final ArrayList<Animation> pendingAnimations;
        private int rectPosHandle;
        private int rectSizeHandle;
        private int resetHandle;
        public volatile boolean running;
        private int scaleHandle;
        private int seedHandle;
        private int sizeHandle;
        private final SurfaceTexture surfaceTexture;
        private int textureHandle;
        private int timeHandle;
        private final ArrayList<Animation> toAddAnimations;
        private final ArrayList<Animation> toRunStartCallback;
        private int uvOffsetHandle;
        private int width;

        public DrawingThread(SurfaceTexture surfaceTexture, Runnable runnable, Runnable runnable2, int i, int i2) {
            super("ThanosEffect.DrawingThread", false);
            this.alive = new AtomicBoolean(true);
            this.pendingAnimations = new ArrayList<>();
            this.toRunStartCallback = new ArrayList<>();
            this.drawnAnimations = false;
            this.toAddAnimations = new ArrayList<>();
            this.surfaceTexture = surfaceTexture;
            this.invalidate = runnable;
            this.destroy = runnable2;
            this.width = i;
            this.height = i2;
            start();
        }

        @Override // org.telegram.messenger.DispatchQueue
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                draw();
                return;
            }
            if (i == 1) {
                resizeInternal(message.arg1, message.arg2);
                draw();
                return;
            }
            if (i == 2) {
                killInternal();
                return;
            }
            if (i == 3) {
                lambda$animateGroup$2((Animation) message.obj);
                return;
            }
            if (i != 4) {
                if (i != 5) {
                    return;
                }
                cancelAnimationInternal((View) message.obj);
            } else {
                for (int i2 = 0; i2 < this.pendingAnimations.size(); i2++) {
                    Animation animation = this.pendingAnimations.get(i2);
                    animation.offsetLeft += message.arg1;
                    animation.offsetTop += message.arg2;
                }
            }
        }

        @Override // org.telegram.messenger.DispatchQueue, java.lang.Thread, java.lang.Runnable
        public void run() {
            ArrayList<Animation> arrayList;
            int i = 0;
            try {
                init();
                if (!this.toAddAnimations.isEmpty()) {
                    while (true) {
                        int size = this.toAddAnimations.size();
                        arrayList = this.toAddAnimations;
                        if (i >= size) {
                            break;
                        }
                        lambda$animateGroup$2(arrayList.get(i));
                        i++;
                    }
                    arrayList.clear();
                }
                super.run();
            } catch (Exception e) {
                FileLog.m898e(e);
                while (true) {
                    int size2 = this.toAddAnimations.size();
                    ArrayList<Animation> arrayList2 = this.toAddAnimations;
                    if (i < size2) {
                        Animation animation = arrayList2.get(i);
                        Runnable runnable = animation.startCallback;
                        if (runnable != null) {
                            AndroidUtilities.runOnUIThread(runnable);
                        }
                        animation.done(true);
                        i++;
                    } else {
                        arrayList2.clear();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                ThanosEffect.DrawingThread.$r8$lambda$cziJfzGkCFyVEPHp8NdpNqH4Wrw();
                            }
                        });
                        killInternal();
                        return;
                    }
                }
            }
        }

        public static /* synthetic */ void $r8$lambda$cziJfzGkCFyVEPHp8NdpNqH4Wrw() {
            SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
            ThanosEffect.nothanos = Boolean.TRUE;
            editorEdit.putBoolean("nothanos", true).apply();
        }

        public void requestDraw() {
            Handler handler = getHandler();
            if (handler == null || !this.alive.get()) {
                return;
            }
            handler.sendMessage(handler.obtainMessage(0));
        }

        public void resize(int i, int i2) {
            Handler handler = getHandler();
            if (handler == null || !this.alive.get()) {
                return;
            }
            handler.sendMessage(handler.obtainMessage(1, i, i2));
        }

        private void resizeInternal(int i, int i2) {
            if (this.alive.get()) {
                this.width = i;
                this.height = i2;
                GLES20.glViewport(0, 0, i, i2);
                GLES20.glUniform2f(this.sizeHandle, i, i2);
            }
        }

        public void kill() {
            if (!this.alive.get()) {
                FileLog.m895d("ThanosEffect: kill failed, already dead");
                return;
            }
            FileLog.m895d("ThanosEffect: kill");
            try {
                Handler handler = getHandler();
                if (handler != null) {
                    handler.sendMessage(handler.obtainMessage(2));
                }
            } catch (Exception unused) {
            }
        }

        private void killInternal() {
            ArrayList<Animation> arrayList;
            if (!this.alive.get()) {
                FileLog.m895d("ThanosEffect: killInternal failed, already dead");
                return;
            }
            FileLog.m895d("ThanosEffect: killInternal");
            this.alive.set(false);
            int i = 0;
            while (true) {
                int size = this.pendingAnimations.size();
                arrayList = this.pendingAnimations;
                if (i >= size) {
                    break;
                }
                arrayList.get(i).done(true);
                i++;
            }
            arrayList.clear();
            if (this.egl != null && this.eglDisplay != null) {
                int i2 = this.drawProgram;
                if (i2 != 0) {
                    try {
                        GLES20.glDeleteProgram(i2);
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                    this.drawProgram = 0;
                }
                EGL10 egl10 = this.egl;
                EGLDisplay eGLDisplay = this.eglDisplay;
                EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
                egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
                EGLSurface eGLSurface2 = this.eglSurface;
                if (eGLSurface2 != null) {
                    this.egl.eglDestroySurface(this.eglDisplay, eGLSurface2);
                    this.eglSurface = null;
                }
                EGLContext eGLContext = this.eglContext;
                if (eGLContext != null) {
                    this.egl.eglDestroyContext(this.eglDisplay, eGLContext);
                    this.eglContext = null;
                }
                this.egl.eglTerminate(this.eglDisplay);
                this.eglDisplay = null;
            }
            SurfaceTexture surfaceTexture = this.surfaceTexture;
            if (surfaceTexture != null) {
                surfaceTexture.release();
            }
            ThanosEffect.ensureRunOnUIThread(this.destroy);
            this.destroy = null;
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                looperMyLooper.quit();
            }
        }

        private void init() {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.egl = egl10;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(0);
            this.eglDisplay = eGLDisplayEglGetDisplay;
            EGL10 egl102 = this.egl;
            if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                FileLog.m896e("ThanosEffect: eglDisplay == egl.EGL_NO_DISPLAY");
                killInternal();
                return;
            }
            if (!egl102.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                FileLog.m896e("ThanosEffect: failed eglInitialize");
                killInternal();
                return;
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (!this.egl.eglChooseConfig(this.eglDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 64, 12344}, eGLConfigArr, 1, new int[1])) {
                FileLog.m896e("ThanosEffect: failed eglChooseConfig");
                kill();
                return;
            }
            EGLConfig eGLConfig = eGLConfigArr[0];
            this.eglConfig = eGLConfig;
            EGLContext eGLContextEglCreateContext = this.egl.eglCreateContext(this.eglDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 3, 12344});
            this.eglContext = eGLContextEglCreateContext;
            if (eGLContextEglCreateContext == null) {
                FileLog.m896e("ThanosEffect: eglContext == null");
                killInternal();
                return;
            }
            EGLSurface eGLSurfaceEglCreateWindowSurface = this.egl.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, this.surfaceTexture, null);
            this.eglSurface = eGLSurfaceEglCreateWindowSurface;
            if (eGLSurfaceEglCreateWindowSurface == null) {
                FileLog.m896e("ThanosEffect: eglSurface == null");
                killInternal();
                return;
            }
            if (!this.egl.eglMakeCurrent(this.eglDisplay, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, this.eglContext)) {
                FileLog.m896e("ThanosEffect: failed eglMakeCurrent");
                killInternal();
                return;
            }
            int iGlCreateShader = GLES20.glCreateShader(35633);
            int iGlCreateShader2 = GLES20.glCreateShader(35632);
            if (iGlCreateShader == 0 || iGlCreateShader2 == 0) {
                FileLog.m896e("ThanosEffect: vertexShader == 0 || fragmentShader == 0");
                killInternal();
                return;
            }
            GLES20.glShaderSource(iGlCreateShader, AndroidUtilities.readRes(C2573R.raw.thanos_vertex));
            GLES20.glCompileShader(iGlCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            if (iArr[0] != 1) {
                FileLog.m896e("ThanosEffect, compile vertex shader error: " + GLES20.glGetShaderInfoLog(iGlCreateShader));
                GLES20.glDeleteShader(iGlCreateShader);
                killInternal();
                return;
            }
            GLES20.glShaderSource(iGlCreateShader2, AndroidUtilities.readRes(C2573R.raw.thanos_fragment));
            GLES20.glCompileShader(iGlCreateShader2);
            GLES20.glGetShaderiv(iGlCreateShader2, 35713, iArr, 0);
            if (iArr[0] != 1) {
                FileLog.m896e("ThanosEffect, compile fragment shader error: " + GLES20.glGetShaderInfoLog(iGlCreateShader2));
                GLES20.glDeleteShader(iGlCreateShader2);
                killInternal();
                return;
            }
            int iGlCreateProgram = GLES20.glCreateProgram();
            this.drawProgram = iGlCreateProgram;
            if (iGlCreateProgram == 0) {
                FileLog.m896e("ThanosEffect: drawProgram == 0");
                killInternal();
                return;
            }
            GLES20.glAttachShader(iGlCreateProgram, iGlCreateShader);
            GLES20.glAttachShader(this.drawProgram, iGlCreateShader2);
            GLES30.glTransformFeedbackVaryings(this.drawProgram, new String[]{"outUV", "outPosition", "outVelocity", "outTime"}, 35980);
            GLES20.glLinkProgram(this.drawProgram);
            GLES20.glGetProgramiv(this.drawProgram, 35714, iArr, 0);
            int i = iArr[0];
            int i2 = this.drawProgram;
            if (i != 1) {
                FileLog.m896e("ThanosEffect, link program error: " + GLES20.glGetProgramInfoLog(i2));
                killInternal();
                return;
            }
            this.matrixHandle = GLES20.glGetUniformLocation(i2, "matrix");
            this.rectSizeHandle = GLES20.glGetUniformLocation(this.drawProgram, "rectSize");
            this.rectPosHandle = GLES20.glGetUniformLocation(this.drawProgram, "rectPos");
            this.resetHandle = GLES20.glGetUniformLocation(this.drawProgram, "reset");
            this.timeHandle = GLES20.glGetUniformLocation(this.drawProgram, "time");
            this.deltaTimeHandle = GLES20.glGetUniformLocation(this.drawProgram, "deltaTime");
            this.particlesCountHandle = GLES20.glGetUniformLocation(this.drawProgram, "particlesCount");
            this.sizeHandle = GLES20.glGetUniformLocation(this.drawProgram, "size");
            this.gridSizeHandle = GLES20.glGetUniformLocation(this.drawProgram, "gridSize");
            this.textureHandle = GLES20.glGetUniformLocation(this.drawProgram, "tex");
            this.seedHandle = GLES20.glGetUniformLocation(this.drawProgram, "seed");
            this.densityHandle = GLES20.glGetUniformLocation(this.drawProgram, "dp");
            this.longevityHandle = GLES20.glGetUniformLocation(this.drawProgram, "longevity");
            this.offsetHandle = GLES20.glGetUniformLocation(this.drawProgram, "offset");
            this.scaleHandle = GLES20.glGetUniformLocation(this.drawProgram, "scale");
            this.uvOffsetHandle = GLES20.glGetUniformLocation(this.drawProgram, "uvOffset");
            GLES20.glViewport(0, 0, this.width, this.height);
            GLES20.glDisable(3042);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            GLES20.glUseProgram(this.drawProgram);
            GLES20.glUniform2f(this.sizeHandle, this.width, this.height);
        }

        private float animationHeightPart(Animation animation) {
            int i = 0;
            for (int i2 = 0; i2 < this.pendingAnimations.size(); i2++) {
                i += this.pendingAnimations.get(i2).viewHeight;
            }
            return animation.viewHeight / i;
        }

        private void draw() {
            ArrayList<Animation> arrayList;
            ArrayList<Animation> arrayList2;
            if (!this.alive.get()) {
                return;
            }
            GLES20.glClear(16384);
            int i = 0;
            int i2 = 0;
            while (i2 < this.pendingAnimations.size()) {
                Animation animation = this.pendingAnimations.get(i2);
                if (animation.firstDraw) {
                    animation.calcParticlesGrid(animationHeightPart(animation));
                    if (animation.startCallback != null) {
                        this.toRunStartCallback.add(animation);
                    }
                }
                this.drawnAnimations = true;
                animation.draw();
                if (animation.isDead()) {
                    animation.done(true);
                    this.pendingAnimations.remove(i2);
                    this.running = !this.pendingAnimations.isEmpty();
                    i2--;
                }
                i2++;
            }
            checkGlErrors();
            try {
                this.egl.eglSwapBuffers(this.eglDisplay, this.eglSurface);
                while (true) {
                    int size = this.toRunStartCallback.size();
                    arrayList2 = this.toRunStartCallback;
                    if (i >= size) {
                        break;
                    }
                    AndroidUtilities.runOnUIThread(arrayList2.get(i).startCallback);
                    i++;
                }
                arrayList2.clear();
                if (this.pendingAnimations.isEmpty() && this.drawnAnimations) {
                    killInternal();
                }
            } catch (Exception e) {
                FileLog.m898e(e);
                int i3 = 0;
                while (true) {
                    int size2 = this.toRunStartCallback.size();
                    arrayList = this.toRunStartCallback;
                    if (i3 >= size2) {
                        break;
                    }
                    AndroidUtilities.runOnUIThread(arrayList.get(i3).startCallback);
                    i3++;
                }
                arrayList.clear();
                while (true) {
                    int size3 = this.pendingAnimations.size();
                    ArrayList<Animation> arrayList3 = this.pendingAnimations;
                    if (i < size3) {
                        arrayList3.get(i).done(true);
                        i++;
                    } else {
                        arrayList3.clear();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                ThanosEffect.DrawingThread.m14321$r8$lambda$33gwjZyvrViSWSsm3D1G3vECaY();
                            }
                        });
                        killInternal();
                        return;
                    }
                }
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$33gw-jZyvrViSWSsm3D1G3vECaY, reason: not valid java name */
        public static /* synthetic */ void m14321$r8$lambda$33gwjZyvrViSWSsm3D1G3vECaY() {
            SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
            ThanosEffect.nothanos = Boolean.TRUE;
            editorEdit.putBoolean("nothanos", true).apply();
        }

        public void animateGroup(ArrayList<View> arrayList, Runnable runnable) {
            if (!this.alive.get()) {
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).setVisibility(8);
                }
                if (runnable != null) {
                    AndroidUtilities.runOnUIThread(runnable);
                }
                Runnable runnable2 = this.destroy;
                if (runnable2 != null) {
                    AndroidUtilities.runOnUIThread(runnable2);
                    this.destroy = null;
                    return;
                }
                return;
            }
            final Animation animation = new Animation(arrayList, runnable);
            this.running = true;
            postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$animateGroup$2(animation);
                }
            });
        }

        public void animate(View view, float f, Runnable runnable) {
            if (!this.alive.get()) {
                if (view != null) {
                    view.setVisibility(8);
                }
                if (runnable != null) {
                    AndroidUtilities.runOnUIThread(runnable);
                }
                Runnable runnable2 = this.destroy;
                if (runnable2 != null) {
                    AndroidUtilities.runOnUIThread(runnable2);
                    this.destroy = null;
                    return;
                }
                return;
            }
            final Animation animation = new Animation(view, f, runnable);
            getHandler();
            this.running = true;
            postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$animate$3(animation);
                }
            });
        }

        public void cancel(View view) {
            if (this.alive.get()) {
                Handler handler = getHandler();
                if (handler == null) {
                    int i = 0;
                    while (i < this.toAddAnimations.size()) {
                        Animation animation = this.toAddAnimations.get(i);
                        if (animation.views.contains(view)) {
                            Runnable runnable = animation.doneCallback;
                            if (runnable != null) {
                                ThanosEffect.ensureRunOnUIThread(runnable);
                                animation.doneCallback = null;
                            }
                            this.toAddAnimations.remove(i);
                            i--;
                        }
                        i++;
                    }
                    return;
                }
                handler.sendMessage(handler.obtainMessage(5, view));
            }
        }

        public void animate(Matrix matrix, Bitmap bitmap, final Runnable runnable, final Runnable runnable2) {
            if (!this.alive.get()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThanosEffect.DrawingThread.m14322$r8$lambda$LZe6jOiLycQhtpeORUpDh17wQ(runnable, runnable2);
                    }
                });
                ThanosEffect.ensureRunOnUIThread(this.destroy);
                this.destroy = null;
            } else {
                final Animation animation = new Animation(matrix, bitmap, runnable, runnable2);
                getHandler();
                this.running = true;
                postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$animate$5(animation);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$LZe6jOiLycQht-peORUpDh-17wQ, reason: not valid java name */
        public static /* synthetic */ void m14322$r8$lambda$LZe6jOiLycQhtpeORUpDh17wQ(Runnable runnable, Runnable runnable2) {
            ThanosEffect.ensureRunOnUIThread(runnable);
            if (runnable2 != null) {
                AndroidUtilities.runOnUIThread(runnable2);
            }
        }

        private void cancelAnimationInternal(View view) {
            int i = 0;
            while (i < this.pendingAnimations.size()) {
                Animation animation = this.pendingAnimations.get(i);
                if (animation.views.contains(view)) {
                    animation.done(true);
                    this.pendingAnimations.remove(i);
                    i--;
                }
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: addAnimationInternal, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void lambda$animateGroup$2(Animation animation) {
            int i = 0;
            GLES20.glGenTextures(1, animation.texture, 0);
            GLES20.glBindTexture(3553, animation.texture[0]);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GLUtils.texImage2D(3553, 0, animation.bitmap, 0);
            GLES20.glBindTexture(3553, 0);
            animation.bitmap.recycle();
            animation.bitmap = null;
            if (animation.isPhotoEditor) {
                ArrayList<Animation> arrayList = this.pendingAnimations;
                int size = arrayList.size();
                while (i < size) {
                    Animation animation2 = arrayList.get(i);
                    i++;
                    animation2.done(true);
                }
                this.pendingAnimations.clear();
            }
            this.pendingAnimations.add(animation);
            this.running = true;
            animation.ready = true;
        }

        public class Animation {
            private Bitmap bitmap;
            public final int[] buffer;
            public int currentBuffer;
            public boolean customMatrix;
            public final float density;
            public Runnable doneCallback;
            public boolean firstDraw;
            public final float[] glMatrixValues;
            public int gridHeight;
            public float gridSize;
            public int gridWidth;
            public boolean invalidateMatrix;
            private boolean isPhotoEditor;
            private long lastDrawTime;
            public float left;
            public float longevity;
            public final Matrix matrix;
            public final float[] matrixValues;
            public float offsetLeft;
            public float offsetTop;
            public int particlesCount;
            public volatile boolean ready;
            public final float seed;
            public Runnable startCallback;
            public final int[] texture;
            public float time;
            public float timeScale;
            public float top;
            public int viewHeight;
            public int viewWidth;
            public ArrayList<View> views;

            public Animation(Matrix matrix, Bitmap bitmap, Runnable runnable, Runnable runnable2) {
                this.views = new ArrayList<>();
                this.lastDrawTime = -1L;
                this.time = 0.0f;
                this.firstDraw = true;
                this.offsetLeft = 0.0f;
                this.offsetTop = 0.0f;
                this.left = 0.0f;
                this.top = 0.0f;
                this.density = AndroidUtilities.density;
                this.longevity = 1.5f;
                this.timeScale = 1.15f;
                this.invalidateMatrix = true;
                this.customMatrix = false;
                this.glMatrixValues = new float[9];
                this.matrixValues = new float[9];
                Matrix matrix2 = new Matrix();
                this.matrix = matrix2;
                this.seed = (float) (Math.random() * 2.0d);
                this.texture = new int[1];
                this.buffer = new int[2];
                this.isPhotoEditor = true;
                float[] fArr = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
                matrix.mapPoints(fArr);
                this.left = fArr[0];
                this.top = fArr[1];
                this.viewWidth = (int) MathUtils.distance(fArr[2], fArr[3], fArr[6], fArr[7]);
                this.viewHeight = (int) MathUtils.distance(fArr[4], fArr[5], fArr[6], fArr[7]);
                this.customMatrix = true;
                matrix2.set(matrix);
                retrieveMatrixValues();
                this.startCallback = runnable;
                this.doneCallback = runnable2;
                this.longevity = 4.0f;
                this.time = -0.1f;
                this.bitmap = bitmap;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:148:0x0332  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0235  */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, org.telegram.ui.Components.ThanosEffect$DrawingThread$Animation] */
            /* JADX WARN: Type inference failed for: r0v1 */
            /* JADX WARN: Type inference failed for: r0v38, types: [org.telegram.ui.Components.ThanosEffect$DrawingThread$Animation] */
            /* JADX WARN: Type inference failed for: r0v43 */
            /* JADX WARN: Type inference failed for: r0v50 */
            /* JADX WARN: Type inference failed for: r0v51 */
            /* JADX WARN: Type inference failed for: r0v52 */
            /* JADX WARN: Type inference failed for: r34v0, types: [org.telegram.ui.Components.ThanosEffect$DrawingThread$Animation] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Animation(final ArrayList<View> arrayList, Runnable runnable) {
                ArrayList arrayList2;
                Canvas canvas;
                int i;
                ArrayList arrayList3;
                ChatActivity chatActivity;
                RecyclerListView recyclerListView;
                float f;
                int i2;
                RecyclerListView recyclerListView2;
                int i3;
                ChatActivity.ChatActivityFragmentView chatActivityFragmentView;
                float f2;
                float f3;
                float translationY;
                int i4;
                boolean z;
                ArrayList arrayList4;
                int i5;
                int i6;
                ChatActivity.ChatActivityFragmentView chatActivityFragmentView2;
                float f4;
                float f5;
                int i7;
                ?? obj = new Object();
                obj.views = new ArrayList<>();
                obj.lastDrawTime = -1L;
                obj.time = 0.0f;
                obj.firstDraw = true;
                obj.offsetLeft = 0.0f;
                obj.offsetTop = 0.0f;
                obj.left = 0.0f;
                obj.top = 0.0f;
                obj.density = AndroidUtilities.density;
                obj.longevity = 1.5f;
                obj.timeScale = 1.15f;
                obj.invalidateMatrix = true;
                obj.customMatrix = false;
                obj.glMatrixValues = new float[9];
                obj.matrixValues = new float[9];
                obj.matrix = new Matrix();
                obj.seed = (float) (Math.random() * 2.0d);
                obj.texture = new int[1];
                obj.buffer = new int[2];
                obj.views.addAll(arrayList);
                int iMin = Integer.MAX_VALUE;
                int iMax = Integer.MIN_VALUE;
                int iMax2 = Integer.MIN_VALUE;
                int iMin2 = Integer.MAX_VALUE;
                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                    View view = arrayList.get(i8);
                    iMin2 = Math.min(iMin2, (int) view.getX());
                    iMax = Math.max(iMax, ((int) view.getX()) + view.getWidth());
                    iMin = Math.min(iMin, (int) view.getY());
                    iMax2 = Math.max(iMax2, ((int) view.getY()) + view.getHeight());
                }
                float f6 = iMin;
                obj.top = f6;
                float f7 = iMin2;
                obj.left = f7;
                obj.viewWidth = iMax - iMin2;
                obj.viewHeight = iMax2 - iMin;
                obj.doneCallback = runnable;
                obj.startCallback = new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThanosEffect.DrawingThread.Animation.m14343$r8$lambda$ffAyKhZFHxyOgaQ4fNT2BZuSYc(arrayList);
                    }
                };
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    if (arrayList.get(i9) instanceof ChatMessageCell) {
                        ((ChatMessageCell) arrayList.get(i9)).drawingToBitmap = true;
                    }
                }
                obj.bitmap = Bitmap.createBitmap(obj.viewWidth, obj.viewHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(obj.bitmap);
                if (arrayList.size() > 0 && (arrayList.get(0).getParent() instanceof RecyclerListView)) {
                    RecyclerListView recyclerListView3 = (RecyclerListView) arrayList.get(0).getParent();
                    if (recyclerListView3.getParent() instanceof ChatActivity.ChatActivityFragmentView) {
                        ChatActivity.ChatActivityFragmentView chatActivityFragmentView3 = (ChatActivity.ChatActivityFragmentView) recyclerListView3.getParent();
                        ChatActivity chatActivity2 = chatActivityFragmentView3.getChatActivity();
                        ArrayList arrayList5 = new ArrayList(10);
                        ArrayList arrayList6 = new ArrayList();
                        ArrayList arrayList7 = new ArrayList();
                        ArrayList arrayList8 = new ArrayList();
                        ArrayList arrayList9 = new ArrayList();
                        int iSave = canvas2.save();
                        int i10 = 0;
                        ?? r0 = obj;
                        while (i10 < 3) {
                            arrayList5.clear();
                            if (i10 != 2 || recyclerListView3.isFastScrollAnimationRunning()) {
                                i2 = iSave;
                                int i11 = 0;
                                while (true) {
                                    recyclerListView2 = recyclerListView3;
                                    if (i11 >= arrayList.size()) {
                                        break;
                                    }
                                    View view2 = arrayList.get(i11);
                                    if (view2 instanceof ChatMessageCell) {
                                        ChatMessageCell chatMessageCell = (ChatMessageCell) view2;
                                        if (view2.getY() > recyclerListView2.getHeight() || view2.getY() + view2.getHeight() < 0.0f) {
                                            i5 = i10;
                                            i6 = i11;
                                        } else {
                                            i6 = i11;
                                            if (chatMessageCell.getVisibility() == 4 || chatMessageCell.getVisibility() == 8) {
                                                i5 = i10;
                                            } else {
                                                MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
                                                MessageObject.GroupedMessagePosition position = (currentMessagesGroup == null || currentMessagesGroup.positions == null) ? null : currentMessagesGroup.getPosition(chatMessageCell.getMessageObject());
                                                chatActivityFragmentView2 = chatActivityFragmentView3;
                                                if (i10 == 0 && (position != null || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner)) {
                                                    if (position == null || position.last || (position.minX == 0 && position.minY == 0)) {
                                                        if (position == null || position.last) {
                                                            arrayList6.add(chatMessageCell);
                                                        }
                                                        if ((position == null || (position.minX == 0 && position.minY == 0)) && chatMessageCell.hasNameLayout()) {
                                                            arrayList7.add(chatMessageCell);
                                                        }
                                                    }
                                                    if (position != null || chatMessageCell.getTransitionParams().transformGroupToSingleMessage || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                                                        if (position == null || (position.flags & chatMessageCell.captionFlag()) != 0) {
                                                            arrayList8.add(chatMessageCell);
                                                        }
                                                        if (position != null) {
                                                            int i12 = position.flags;
                                                            if ((i12 & 8) != 0 && (i12 & 1) != 0) {
                                                                arrayList9.add(chatMessageCell);
                                                            }
                                                        }
                                                    }
                                                }
                                                if (currentMessagesGroup != null) {
                                                    if (i10 == 0) {
                                                        i7 = 1;
                                                        if (currentMessagesGroup.messages.size() != 1) {
                                                        }
                                                    } else {
                                                        i7 = 1;
                                                    }
                                                    if ((i10 != i7 || currentMessagesGroup.transitionParams.drawBackgroundForDeletedItems) && ((i10 != 0 || !chatMessageCell.getMessageObject().deleted) && ((i10 != 1 || chatMessageCell.getMessageObject().deleted) && ((i10 != 2 || chatMessageCell.willRemovedAfterAnimation()) && (i10 == 2 || !chatMessageCell.willRemovedAfterAnimation()))))) {
                                                        if (!arrayList5.contains(currentMessagesGroup)) {
                                                            MessageObject.GroupedMessages.TransitionParams transitionParams = currentMessagesGroup.transitionParams;
                                                            transitionParams.left = 0;
                                                            transitionParams.top = 0;
                                                            transitionParams.right = 0;
                                                            transitionParams.bottom = 0;
                                                            transitionParams.pinnedBotton = false;
                                                            transitionParams.pinnedTop = false;
                                                            transitionParams.cell = chatMessageCell;
                                                            arrayList5.add(currentMessagesGroup);
                                                        }
                                                        currentMessagesGroup.transitionParams.pinnedTop = chatMessageCell.isPinnedTop();
                                                        currentMessagesGroup.transitionParams.pinnedBotton = chatMessageCell.isPinnedBottom();
                                                        int left = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableLeft();
                                                        int left2 = chatMessageCell.getLeft() + chatMessageCell.getBackgroundDrawableRight();
                                                        int top = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableTop();
                                                        int top2 = chatMessageCell.getTop() + chatMessageCell.getPaddingTop() + chatMessageCell.getBackgroundDrawableBottom();
                                                        i5 = i10;
                                                        f4 = f6;
                                                        int iDp = (chatMessageCell.getCurrentPosition().flags & 4) == 0 ? top - AndroidUtilities.dp(10.0f) : top;
                                                        int iDp2 = (chatMessageCell.getCurrentPosition().flags & 8) == 0 ? top2 + AndroidUtilities.dp(10.0f) : top2;
                                                        f5 = f7;
                                                        if (chatMessageCell.willRemovedAfterAnimation()) {
                                                            currentMessagesGroup.transitionParams.cell = chatMessageCell;
                                                        }
                                                        MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                                        int i13 = transitionParams2.top;
                                                        if (i13 == 0 || iDp < i13) {
                                                            transitionParams2.top = iDp;
                                                        }
                                                        int i14 = transitionParams2.bottom;
                                                        if (i14 == 0 || iDp2 > i14) {
                                                            transitionParams2.bottom = iDp2;
                                                        }
                                                        int i15 = transitionParams2.left;
                                                        if (i15 == 0 || left < i15) {
                                                            transitionParams2.left = left;
                                                        }
                                                        int i16 = transitionParams2.right;
                                                        if (i16 == 0 || left2 > i16) {
                                                            transitionParams2.right = left2;
                                                        }
                                                    }
                                                }
                                                i5 = i10;
                                                f4 = f6;
                                                f5 = f7;
                                            }
                                        }
                                        chatActivityFragmentView2 = chatActivityFragmentView3;
                                        f4 = f6;
                                        f5 = f7;
                                    }
                                    i11 = i6 + 1;
                                    recyclerListView3 = recyclerListView2;
                                    chatActivityFragmentView3 = chatActivityFragmentView2;
                                    i10 = i5;
                                    f6 = f4;
                                    f7 = f5;
                                }
                                i3 = i10;
                                chatActivityFragmentView = chatActivityFragmentView3;
                                f2 = f6;
                                f3 = f7;
                                int i17 = 0;
                                ?? r02 = r0;
                                while (i17 < arrayList5.size()) {
                                    MessageObject.GroupedMessages groupedMessages = (MessageObject.GroupedMessages) arrayList5.get(i17);
                                    float nonAnimationTranslationX = groupedMessages.transitionParams.cell.getNonAnimationTranslationX(true);
                                    MessageObject.GroupedMessages.TransitionParams transitionParams3 = groupedMessages.transitionParams;
                                    float f8 = transitionParams3.left + nonAnimationTranslationX + transitionParams3.offsetLeft;
                                    float fDp = transitionParams3.top + transitionParams3.offsetTop;
                                    float f9 = transitionParams3.right + nonAnimationTranslationX + transitionParams3.offsetRight;
                                    float f10 = transitionParams3.bottom + transitionParams3.offsetBottom;
                                    if (transitionParams3.backgroundChangeBounds) {
                                        translationY = f10;
                                    } else {
                                        fDp += transitionParams3.cell.getTranslationY();
                                        translationY = f10 + groupedMessages.transitionParams.cell.getTranslationY();
                                    }
                                    float f11 = translationY;
                                    fDp = fDp < (chatActivity2.chatListViewPaddingTop - ((float) chatActivity2.chatListViewPaddingVisibleOffset)) - ((float) AndroidUtilities.dp(20.0f)) ? (chatActivity2.chatListViewPaddingTop - chatActivity2.chatListViewPaddingVisibleOffset) - AndroidUtilities.dp(20.0f) : fDp;
                                    float measuredHeight = f11 > ((float) (recyclerListView2.getMeasuredHeight() + AndroidUtilities.dp(20.0f))) ? recyclerListView2.getMeasuredHeight() + AndroidUtilities.dp(20.0f) : f11;
                                    float f12 = r02.top;
                                    float f13 = fDp - f12;
                                    float f14 = measuredHeight - f12;
                                    float f15 = r02.left;
                                    float f16 = f8 - f15;
                                    float f17 = f9 - f15;
                                    boolean z2 = (groupedMessages.transitionParams.cell.getScaleX() == 1.0f && groupedMessages.transitionParams.cell.getScaleY() == 1.0f) ? false : true;
                                    if (z2) {
                                        canvas2.save();
                                        i4 = i17;
                                        z = z2;
                                        arrayList4 = arrayList5;
                                        canvas2.scale(groupedMessages.transitionParams.cell.getScaleX(), groupedMessages.transitionParams.cell.getScaleY(), f16 + ((f17 - f16) / 2.0f), f13 + ((f14 - f13) / 2.0f));
                                    } else {
                                        i4 = i17;
                                        z = z2;
                                        arrayList4 = arrayList5;
                                    }
                                    MessageObject.GroupedMessages.TransitionParams transitionParams4 = groupedMessages.transitionParams;
                                    ArrayList arrayList10 = arrayList7;
                                    ArrayList arrayList11 = arrayList8;
                                    transitionParams4.cell.drawBackground(canvas2, (int) f16, (int) f13, (int) f17, (int) f14, transitionParams4.pinnedTop, transitionParams4.pinnedBotton, false, chatActivityFragmentView.getKeyboardHeight());
                                    MessageObject.GroupedMessages.TransitionParams transitionParams5 = groupedMessages.transitionParams;
                                    transitionParams5.cell = null;
                                    transitionParams5.drawCaptionLayout = groupedMessages.hasCaption;
                                    if (z) {
                                        canvas2.restore();
                                        for (int i18 = 0; i18 < arrayList.size(); i18++) {
                                            View view3 = arrayList.get(i18);
                                            if (view3 instanceof ChatMessageCell) {
                                                ChatMessageCell chatMessageCell2 = (ChatMessageCell) view3;
                                                if (chatMessageCell2.getCurrentMessagesGroup() == groupedMessages) {
                                                    int left3 = chatMessageCell2.getLeft();
                                                    int top3 = chatMessageCell2.getTop();
                                                    view3.setPivotX((f16 - left3) + ((f17 - f16) / 2.0f));
                                                    view3.setPivotY((f13 - top3) + ((f14 - f13) / 2.0f));
                                                }
                                            }
                                        }
                                    }
                                    arrayList7 = arrayList10;
                                    arrayList8 = arrayList11;
                                    arrayList5 = arrayList4;
                                    i17 = i4 + 1;
                                    r02 = this;
                                }
                            } else {
                                i3 = i10;
                                i2 = iSave;
                                recyclerListView2 = recyclerListView3;
                                chatActivityFragmentView = chatActivityFragmentView3;
                                f2 = f6;
                                f3 = f7;
                            }
                            i10 = i3 + 1;
                            r0 = this;
                            iSave = i2;
                            arrayList7 = arrayList7;
                            arrayList8 = arrayList8;
                            recyclerListView3 = recyclerListView2;
                            chatActivityFragmentView3 = chatActivityFragmentView;
                            f6 = f2;
                            f7 = f3;
                            arrayList5 = arrayList5;
                        }
                        int i19 = iSave;
                        RecyclerListView recyclerListView4 = recyclerListView3;
                        float f18 = f6;
                        float f19 = f7;
                        ArrayList arrayList12 = arrayList7;
                        ArrayList arrayList13 = arrayList8;
                        for (int i20 = 0; i20 < arrayList.size(); i20++) {
                            View view4 = arrayList.get(i20);
                            canvas2.save();
                            canvas2.translate(view4.getX() - f19, view4.getY() - f18);
                            view4.draw(canvas2);
                            if (view4 instanceof ChatMessageCell) {
                                ((ChatMessageCell) view4).drawOutboundsContent(canvas2);
                            } else if (view4 instanceof ChatActionCell) {
                                ((ChatActionCell) view4).drawOutboundsContent(canvas2);
                            }
                            canvas2.restore();
                        }
                        float y = ((recyclerListView4.getY() + chatActivity2.chatListViewPaddingTop) - chatActivity2.chatListViewPaddingVisibleOffset) - AndroidUtilities.dp(4.0f);
                        int size = arrayList6.size();
                        if (size > 0) {
                            int i21 = 0;
                            while (i21 < size) {
                                ChatMessageCell chatMessageCell3 = (ChatMessageCell) arrayList6.get(i21);
                                ChatActivity chatActivity3 = chatActivity2;
                                Canvas canvas3 = canvas2;
                                ArrayList arrayList14 = arrayList13;
                                float f20 = y;
                                drawChildElement(recyclerListView4, chatActivity3, canvas3, f20, chatMessageCell3, 0, chatMessageCell3.getX() - f19, chatMessageCell3.getY() - f18);
                                i21++;
                                size = size;
                                i19 = i19;
                                canvas2 = canvas3;
                                arrayList12 = arrayList12;
                                chatActivity2 = chatActivity3;
                                y = f20;
                                arrayList6 = arrayList6;
                                arrayList13 = arrayList14;
                            }
                            Canvas canvas4 = canvas2;
                            arrayList2 = arrayList12;
                            canvas = canvas4;
                            i = i19;
                            arrayList3 = arrayList13;
                            chatActivity = chatActivity2;
                            recyclerListView = recyclerListView4;
                            f = y;
                            arrayList6.clear();
                        } else {
                            arrayList2 = arrayList12;
                            canvas = canvas2;
                            i = i19;
                            arrayList3 = arrayList13;
                            chatActivity = chatActivity2;
                            recyclerListView = recyclerListView4;
                            f = y;
                        }
                        int size2 = arrayList2.size();
                        if (size2 > 0) {
                            for (int i22 = 0; i22 < size2; i22++) {
                                ChatMessageCell chatMessageCell4 = (ChatMessageCell) arrayList2.get(i22);
                                drawChildElement(recyclerListView, chatActivity, canvas, f, chatMessageCell4, 1, chatMessageCell4.getX() - f19, chatMessageCell4.getY() - f18);
                            }
                            arrayList2.clear();
                        }
                        int size3 = arrayList3.size();
                        if (size3 > 0) {
                            for (int i23 = 0; i23 < size3; i23++) {
                                ChatMessageCell chatMessageCell5 = (ChatMessageCell) arrayList3.get(i23);
                                if (chatMessageCell5.getCurrentPosition() != null || chatMessageCell5.getTransitionParams().animateBackgroundBoundsInner) {
                                    drawChildElement(recyclerListView, chatActivity, canvas, f, chatMessageCell5, 2, chatMessageCell5.getX() - f19, chatMessageCell5.getY() - f18);
                                }
                            }
                            arrayList3.clear();
                        }
                        int size4 = arrayList9.size();
                        if (size4 > 0) {
                            for (int i24 = 0; i24 < size4; i24++) {
                                ChatMessageCell chatMessageCell6 = (ChatMessageCell) arrayList9.get(i24);
                                if (chatMessageCell6.getCurrentPosition() != null || chatMessageCell6.getTransitionParams().animateBackgroundBoundsInner) {
                                    drawChildElement(recyclerListView, chatActivity, canvas, f, chatMessageCell6, 3, chatMessageCell6.getX() - f19, chatMessageCell6.getY() - f18);
                                }
                            }
                            arrayList9.clear();
                        }
                        try {
                            canvas.restoreToCount(i);
                        } catch (Exception e) {
                            FileLog.m898e(e);
                        }
                        for (int i25 = 0; i25 < arrayList.size(); i25++) {
                            if (arrayList.get(i25) instanceof ChatMessageCell) {
                                ((ChatMessageCell) arrayList.get(i25)).drawingToBitmap = false;
                            }
                        }
                    }
                }
            }

            /* JADX INFO: renamed from: $r8$lambda$ffAyKhZF-HxyOgaQ4fNT2BZuSYc, reason: not valid java name */
            public static /* synthetic */ void m14343$r8$lambda$ffAyKhZFHxyOgaQ4fNT2BZuSYc(ArrayList arrayList) {
                for (int i = 0; i < arrayList.size(); i++) {
                    ((View) arrayList.get(i)).setVisibility(8);
                    if (arrayList.get(i) instanceof ChatMessageCell) {
                        ((ChatMessageCell) arrayList.get(i)).setCheckBoxVisible(false, false);
                        ((ChatMessageCell) arrayList.get(i)).setChecked(false, false, false);
                    }
                }
            }

            private void drawChildElement(View view, ChatActivity chatActivity, Canvas canvas, float f, ChatMessageCell chatMessageCell, int i, float f2, float f3) {
                canvas.save();
                float alpha = chatMessageCell.shouldDrawAlphaLayer() ? chatMessageCell.getAlpha() : 1.0f;
                canvas.translate(f2, f3);
                chatMessageCell.setInvalidatesParent(true);
                if (i == 0) {
                    chatMessageCell.drawTime(canvas, alpha, true);
                } else if (i == 1) {
                    chatMessageCell.drawNamesLayout(canvas, alpha);
                } else if (i == 2) {
                    chatMessageCell.drawCaptionLayout(canvas, chatMessageCell.getCurrentPosition() != null && (chatMessageCell.getCurrentPosition().flags & 1) == 0, alpha);
                } else if (chatMessageCell.getCurrentPosition() == null || (1 & chatMessageCell.getCurrentPosition().flags) != 0) {
                    chatMessageCell.drawReactionsLayout(canvas, alpha, null);
                    chatMessageCell.drawCommentLayout(canvas, alpha);
                }
                chatMessageCell.setInvalidatesParent(false);
                canvas.restore();
            }

            public void calcParticlesGrid(float f) {
                int i;
                int i2;
                int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
                int i3 = DrawingThread.this.isEmulator ? 120000 : devicePerformanceClass != 1 ? devicePerformanceClass != 2 ? 30000 : 120000 : 60000;
                if (this.isPhotoEditor) {
                    i3 /= 2;
                }
                float fMax = Math.max(AndroidUtilities.dpf2(0.4f), 1.0f);
                this.particlesCount = Utilities.clamp((int) ((this.viewWidth * this.viewHeight) / (fMax * fMax)), (int) (i3 * f), 10);
                float f2 = this.viewWidth / this.viewHeight;
                int iRound = (int) Math.round(Math.sqrt(r6 / f2));
                this.gridHeight = iRound;
                this.gridWidth = Math.round(this.particlesCount / iRound);
                while (true) {
                    i = this.gridWidth;
                    i2 = this.gridHeight;
                    if (i * i2 >= this.particlesCount) {
                        break;
                    } else if (i / i2 < f2) {
                        this.gridWidth = i + 1;
                    } else {
                        this.gridHeight = i2 + 1;
                    }
                }
                this.particlesCount = i * i2;
                this.gridSize = Math.max(this.viewWidth / i, this.viewHeight / i2);
                GLES20.glGenBuffers(2, this.buffer, 0);
                for (int i4 = 0; i4 < 2; i4++) {
                    GLES20.glBindBuffer(34962, this.buffer[i4]);
                    GLES20.glBufferData(34962, this.particlesCount * 28, null, 35048);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x00f6  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public Animation(View view, float f, Runnable runnable) {
                this.views = new ArrayList<>();
                this.lastDrawTime = -1L;
                this.time = 0.0f;
                this.firstDraw = true;
                this.offsetLeft = 0.0f;
                this.offsetTop = 0.0f;
                this.left = 0.0f;
                this.top = 0.0f;
                this.density = AndroidUtilities.density;
                this.longevity = 1.5f;
                this.timeScale = 1.15f;
                this.invalidateMatrix = true;
                this.customMatrix = false;
                this.glMatrixValues = new float[9];
                this.matrixValues = new float[9];
                this.matrix = new Matrix();
                this.seed = (float) (Math.random() * 2.0d);
                this.texture = new int[1];
                this.buffer = new int[2];
                this.views.add(view);
                this.viewWidth = view.getWidth();
                this.viewHeight = view.getHeight();
                this.top = view.getY();
                this.left = 0.0f;
                if (view instanceof BaseCell) {
                    BaseCell baseCell = (BaseCell) view;
                    this.viewWidth = Math.max(1, baseCell.getBoundsRight() - baseCell.getBoundsLeft());
                    this.left += baseCell.getBoundsLeft();
                }
                this.doneCallback = runnable;
                this.startCallback = new Runnable() { // from class: org.telegram.ui.Components.ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$1();
                    }
                };
                this.longevity *= f;
                this.timeScale /= ((f - 1.0f) / 3.0f) + 1.0f;
                this.bitmap = Bitmap.createBitmap(this.viewWidth, this.viewHeight, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.bitmap);
                int iSave = canvas.save();
                canvas.translate(-this.left, 0.0f);
                boolean z = view instanceof ChatMessageCell;
                if (z) {
                    ((ChatMessageCell) view).drawingToBitmap = true;
                }
                boolean z2 = view instanceof ChatActionCell;
                if (z2) {
                    ChatActionCell chatActionCell = (ChatActionCell) view;
                    if (chatActionCell.hasGradientService()) {
                        canvas.save();
                        canvas.translate(chatActionCell.sideMenuWidth / 2.0f, view.getPaddingTop());
                        chatActionCell.drawBackground(canvas, true);
                        chatActionCell.drawReactions(canvas, true, null);
                        canvas.restore();
                    } else if (z) {
                        ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                        if (chatMessageCell.drawBackgroundInParent()) {
                            canvas.save();
                            canvas.translate(0.0f, view.getPaddingTop());
                            chatMessageCell.drawBackgroundInternal(canvas, true);
                            canvas.restore();
                        }
                    }
                }
                view.draw(canvas);
                if (z) {
                    ChatMessageCell chatMessageCell2 = (ChatMessageCell) view;
                    ImageReceiver avatarImage = chatMessageCell2.getAvatarImage();
                    if (avatarImage != null && avatarImage.getVisible()) {
                        canvas.save();
                        canvas.translate(0.0f, -view.getY());
                        avatarImage.draw(canvas);
                        canvas.restore();
                    }
                    chatMessageCell2.drawingToBitmap = false;
                }
                if (z) {
                    canvas.save();
                    canvas.translate(0.0f, view.getPaddingTop());
                    ((ChatMessageCell) view).drawOutboundsContent(canvas);
                    canvas.restore();
                } else if (z2) {
                    ((ChatActionCell) view).drawOutboundsContent(canvas);
                }
                try {
                    canvas.restoreToCount(iSave);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
                this.left += view.getX();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$new$1() {
                for (int i = 0; i < this.views.size(); i++) {
                    this.views.get(i).setVisibility(8);
                    if (this.views.get(i) instanceof ChatMessageCell) {
                        ((ChatMessageCell) this.views.get(i)).setCheckBoxVisible(false, false);
                        ((ChatMessageCell) this.views.get(i)).setChecked(false, false, false);
                    }
                }
            }

            private void retrieveMatrixValues() {
                this.matrix.getValues(this.matrixValues);
                float[] fArr = this.glMatrixValues;
                float[] fArr2 = this.matrixValues;
                fArr[0] = fArr2[0];
                fArr[1] = fArr2[3];
                fArr[2] = fArr2[6];
                fArr[3] = fArr2[1];
                fArr[4] = fArr2[4];
                fArr[5] = fArr2[7];
                fArr[6] = fArr2[2];
                fArr[7] = fArr2[5];
                fArr[8] = fArr2[8];
                this.invalidateMatrix = false;
            }

            public void draw() {
                long jNanoTime = System.nanoTime();
                double d = this.lastDrawTime < 0 ? 0.0d : (jNanoTime - r3) / 1.0E9d;
                this.lastDrawTime = jNanoTime;
                if (this.invalidateMatrix && !this.customMatrix) {
                    this.matrix.reset();
                    this.matrix.postScale(this.viewWidth, this.viewHeight);
                    this.matrix.postTranslate(this.left, this.top);
                    retrieveMatrixValues();
                }
                this.time = (float) (((double) this.time) + (((double) this.timeScale) * d));
                GLES20.glUniformMatrix3fv(DrawingThread.this.matrixHandle, 1, false, this.glMatrixValues, 0);
                GLES20.glUniform1f(DrawingThread.this.resetHandle, this.firstDraw ? 1.0f : 0.0f);
                GLES20.glUniform1f(DrawingThread.this.timeHandle, this.time);
                GLES20.glUniform1f(DrawingThread.this.deltaTimeHandle, ((float) d) * this.timeScale);
                GLES20.glUniform1f(DrawingThread.this.particlesCountHandle, this.particlesCount);
                GLES20.glUniform3f(DrawingThread.this.gridSizeHandle, this.gridWidth, this.gridHeight, this.gridSize);
                GLES20.glUniform2f(DrawingThread.this.offsetHandle, this.offsetLeft, this.offsetTop);
                GLES20.glUniform1f(DrawingThread.this.scaleHandle, this.isPhotoEditor ? 0.8f : 1.0f);
                GLES20.glUniform1f(DrawingThread.this.uvOffsetHandle, this.isPhotoEditor ? 1.0f : 0.6f);
                GLES20.glUniform2f(DrawingThread.this.rectSizeHandle, this.viewWidth, this.viewHeight);
                GLES20.glUniform1f(DrawingThread.this.seedHandle, this.seed);
                GLES20.glUniform2f(DrawingThread.this.rectPosHandle, 0.0f, 0.0f);
                GLES20.glUniform1f(DrawingThread.this.densityHandle, this.density);
                GLES20.glUniform1f(DrawingThread.this.longevityHandle, this.longevity);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.texture[0]);
                GLES20.glUniform1i(DrawingThread.this.textureHandle, 0);
                GLES20.glBindBuffer(34962, this.buffer[this.currentBuffer]);
                GLES20.glVertexAttribPointer(0, 2, 5126, false, 28, 0);
                GLES20.glEnableVertexAttribArray(0);
                GLES20.glVertexAttribPointer(1, 2, 5126, false, 28, 8);
                GLES20.glEnableVertexAttribArray(1);
                GLES20.glVertexAttribPointer(2, 2, 5126, false, 28, 16);
                GLES20.glEnableVertexAttribArray(2);
                GLES20.glVertexAttribPointer(3, 1, 5126, false, 28, 24);
                GLES20.glEnableVertexAttribArray(3);
                GLES30.glBindBufferBase(35982, 0, this.buffer[1 - this.currentBuffer]);
                GLES20.glVertexAttribPointer(0, 2, 5126, false, 28, 0);
                GLES20.glEnableVertexAttribArray(0);
                GLES20.glVertexAttribPointer(1, 2, 5126, false, 28, 8);
                GLES20.glEnableVertexAttribArray(1);
                GLES20.glVertexAttribPointer(2, 2, 5126, false, 28, 16);
                GLES20.glEnableVertexAttribArray(2);
                GLES20.glVertexAttribPointer(3, 1, 5126, false, 28, 24);
                GLES20.glEnableVertexAttribArray(3);
                GLES30.glBeginTransformFeedback(0);
                GLES20.glDrawArrays(0, 0, this.particlesCount);
                GLES30.glEndTransformFeedback();
                GLES20.glBindBuffer(34962, 0);
                GLES20.glBindBuffer(35982, 0);
                this.firstDraw = false;
                this.currentBuffer = 1 - this.currentBuffer;
            }

            public boolean isDead() {
                return this.time > this.longevity + (this.isPhotoEditor ? 2.0f : 0.9f);
            }

            public void done(boolean z) {
                Runnable runnable;
                try {
                    GLES20.glDeleteBuffers(2, this.buffer, 0);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
                if (DrawingThread.this.drawProgram != 0) {
                    try {
                        GLES20.glDeleteProgram(DrawingThread.this.drawProgram);
                    } catch (Exception e2) {
                        FileLog.m898e(e2);
                    }
                    DrawingThread.this.drawProgram = 0;
                }
                try {
                    GLES20.glDeleteTextures(1, this.texture, 0);
                } catch (Exception e3) {
                    FileLog.m898e(e3);
                }
                if (!z || (runnable = this.doneCallback) == null) {
                    return;
                }
                ThanosEffect.ensureRunOnUIThread(runnable);
                this.doneCallback = null;
            }
        }

        private void checkGlErrors() {
            while (true) {
                int iGlGetError = GLES20.glGetError();
                if (iGlGetError == 0) {
                    return;
                }
                FileLog.m896e("thanos gles error " + iGlGetError);
            }
        }
    }
}
