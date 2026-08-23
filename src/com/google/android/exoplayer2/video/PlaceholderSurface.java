package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public final class PlaceholderSurface extends Surface {
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final EGLContext parentContext;
    public final boolean secure;
    private final PlaceholderSurfaceThread thread;
    private boolean threadReleased;

    public static synchronized boolean isSecureSupported(Context context) {
        try {
            if (!secureModeInitialized) {
                secureMode = getSecureMode(context);
                secureModeInitialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return secureMode != 0;
    }

    public static PlaceholderSurface newInstanceV17(Context context, boolean z, EGLContext eGLContext) {
        Assertions.checkState(!z || isSecureSupported(context));
        return new PlaceholderSurfaceThread().init(z ? secureMode : 0, eGLContext);
    }

    private PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture, boolean z, EGLContext eGLContext) {
        super(surfaceTexture);
        this.thread = placeholderSurfaceThread;
        this.secure = z;
        this.parentContext = eGLContext;
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            try {
                if (!this.threadReleased) {
                    this.thread.release();
                    this.threadReleased = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static int getSecureMode(Context context) {
        if (GlUtil.isProtectedContentExtensionSupported(context)) {
            return GlUtil.isSurfacelessContextExtensionSupported() ? 1 : 2;
        }
        return 0;
    }

    public static class PlaceholderSurfaceThread extends HandlerThread implements Handler.Callback {
        private EGLSurfaceTexture eglSurfaceTexture;
        private Handler handler;
        private Error initError;
        private RuntimeException initException;
        private PlaceholderSurface surface;

        public PlaceholderSurfaceThread() {
            super("ExoPlayer:PlaceholderSurface");
        }

        public PlaceholderSurface init(int i, EGLContext eGLContext) {
            boolean z;
            start();
            this.handler = new Handler(getLooper(), this);
            this.eglSurfaceTexture = new EGLSurfaceTexture(this.handler);
            synchronized (this) {
                z = false;
                this.handler.obtainMessage(1, i, 0, eGLContext).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.initException;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.initError;
            if (error != null) {
                throw error;
            }
            return (PlaceholderSurface) Assertions.checkNotNull(this.surface);
        }

        public void release() {
            Assertions.checkNotNull(this.handler);
            this.handler.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        releaseInternal();
                    } finally {
                        try {
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    try {
                        int i2 = message.arg1;
                        Object obj = message.obj;
                        initInternal(i2, obj == null ? null : (EGLContext) obj);
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e) {
                        Log.m271e("PlaceholderSurface", "Failed to initialize placeholder surface", e);
                        this.initException = e;
                        synchronized (this) {
                            notify();
                        }
                    }
                } catch (GlUtil.GlException e2) {
                    Log.m271e("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                    this.initException = new IllegalStateException(e2);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e3) {
                    Log.m271e("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                    this.initError = e3;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }

        private void initInternal(int i, EGLContext eGLContext) throws GlUtil.GlException {
            Assertions.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.init(i, eGLContext);
            this.surface = new PlaceholderSurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i != 0, eGLContext);
        }

        private void releaseInternal() {
            Assertions.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.release();
        }
    }
}
