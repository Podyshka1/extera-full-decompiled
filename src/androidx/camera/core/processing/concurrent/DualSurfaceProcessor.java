package androidx.camera.core.processing.concurrent;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda2;
import androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda4;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function3;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class DualSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {
    private final Executor mGlExecutor;
    final Handler mGlHandler;
    private final DualOpenGlRenderer mGlRenderer;
    final HandlerThread mGlThread;
    private int mInputSurfaceCount;
    private final AtomicBoolean mIsReleaseRequested;
    private boolean mIsReleased;
    final Map mOutputSurfaces;
    private SurfaceTexture mPrimarySurfaceTexture;
    private SurfaceTexture mSecondarySurfaceTexture;

    /* JADX INFO: renamed from: $r8$lambda$H-VJUM4Do99Q9JsClAV6N0JKx5I, reason: not valid java name */
    public static /* synthetic */ void m2001$r8$lambda$HVJUM4Do99Q9JsClAV6N0JKx5I() {
    }

    DualSurfaceProcessor(DynamicRange dynamicRange, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        this(dynamicRange, Collections.EMPTY_MAP, compositionSettings, compositionSettings2);
    }

    DualSurfaceProcessor(DynamicRange dynamicRange, Map map, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        this.mInputSurfaceCount = 0;
        this.mIsReleased = false;
        this.mIsReleaseRequested = new AtomicBoolean(false);
        this.mOutputSurfaces = new LinkedHashMap();
        HandlerThread handlerThread = new HandlerThread("CameraX-GL Thread");
        this.mGlThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mGlHandler = handler;
        this.mGlExecutor = CameraXExecutors.newHandlerExecutor(handler);
        this.mGlRenderer = new DualOpenGlRenderer(compositionSettings, compositionSettings2);
        try {
            initGlRenderer(dynamicRange, map);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onInputSurface(final SurfaceRequest surfaceRequest) {
        if (this.mIsReleaseRequested.get()) {
            surfaceRequest.willNotProvideSurface();
            return;
        }
        Runnable runnable = new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DualSurfaceProcessor.m2005$r8$lambda$eYxu5ZhmaW5Q_3yYxnq9Fy4kTk(this.f$0, surfaceRequest);
            }
        };
        Objects.requireNonNull(surfaceRequest);
        executeSafely(runnable, new DefaultSurfaceProcessor$$ExternalSyntheticLambda4(surfaceRequest));
    }

    /* JADX INFO: renamed from: $r8$lambda$eYxu-5ZhmaW5Q_3yYxnq9Fy4kTk, reason: not valid java name */
    public static /* synthetic */ void m2005$r8$lambda$eYxu5ZhmaW5Q_3yYxnq9Fy4kTk(final DualSurfaceProcessor dualSurfaceProcessor, SurfaceRequest surfaceRequest) {
        dualSurfaceProcessor.mInputSurfaceCount++;
        final SurfaceTexture surfaceTexture = new SurfaceTexture(dualSurfaceProcessor.mGlRenderer.getTextureName(surfaceRequest.isPrimary()));
        surfaceTexture.setDefaultBufferSize(surfaceRequest.getResolution().getWidth(), surfaceRequest.getResolution().getHeight());
        final Surface surface = new Surface(surfaceTexture);
        surfaceRequest.provideSurface(surface, dualSurfaceProcessor.mGlExecutor, new Consumer() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda8
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DualSurfaceProcessor.m2002$r8$lambda$NAKKUHmbm6lwk7NskA4M9WlNg(this.f$0, surfaceTexture, surface, (SurfaceRequest.Result) obj);
            }
        });
        if (surfaceRequest.isPrimary()) {
            dualSurfaceProcessor.mPrimarySurfaceTexture = surfaceTexture;
        } else {
            dualSurfaceProcessor.mSecondarySurfaceTexture = surfaceTexture;
            surfaceTexture.setOnFrameAvailableListener(dualSurfaceProcessor, dualSurfaceProcessor.mGlHandler);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$NAKKU-Hmbm6lwk-7NskA4M9WlNg, reason: not valid java name */
    public static /* synthetic */ void m2002$r8$lambda$NAKKUHmbm6lwk7NskA4M9WlNg(DualSurfaceProcessor dualSurfaceProcessor, SurfaceTexture surfaceTexture, Surface surface, SurfaceRequest.Result result) {
        dualSurfaceProcessor.getClass();
        surfaceTexture.setOnFrameAvailableListener(null);
        surfaceTexture.release();
        surface.release();
        dualSurfaceProcessor.mInputSurfaceCount--;
        dualSurfaceProcessor.checkReadyToRelease();
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onOutputSurface(final SurfaceOutput surfaceOutput) {
        if (this.mIsReleaseRequested.get()) {
            surfaceOutput.close();
            return;
        }
        Runnable runnable = new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DualSurfaceProcessor.m2004$r8$lambda$XjKCBi0iSlQAHKEbAfakln9aNU(this.f$0, surfaceOutput);
            }
        };
        Objects.requireNonNull(surfaceOutput);
        executeSafely(runnable, new DefaultSurfaceProcessor$$ExternalSyntheticLambda2(surfaceOutput));
    }

    /* JADX INFO: renamed from: $r8$lambda$XjKCBi0iSlQAHK-EbAfakln9aNU, reason: not valid java name */
    public static /* synthetic */ void m2004$r8$lambda$XjKCBi0iSlQAHKEbAfakln9aNU(final DualSurfaceProcessor dualSurfaceProcessor, final SurfaceOutput surfaceOutput) {
        Surface surface = surfaceOutput.getSurface(dualSurfaceProcessor.mGlExecutor, new Consumer() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda5
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DualSurfaceProcessor.m2003$r8$lambda$SSJVT35FEA6PJGDsDjTufRx9_M(this.f$0, surfaceOutput, (SurfaceOutput.Event) obj);
            }
        });
        dualSurfaceProcessor.mGlRenderer.registerOutputSurface(surface);
        dualSurfaceProcessor.mOutputSurfaces.put(surfaceOutput, surface);
    }

    /* JADX INFO: renamed from: $r8$lambda$SSJVT35FEA6PJGDsDjTufRx-9_M, reason: not valid java name */
    public static /* synthetic */ void m2003$r8$lambda$SSJVT35FEA6PJGDsDjTufRx9_M(DualSurfaceProcessor dualSurfaceProcessor, SurfaceOutput surfaceOutput, SurfaceOutput.Event event) {
        dualSurfaceProcessor.getClass();
        surfaceOutput.close();
        Surface surface = (Surface) dualSurfaceProcessor.mOutputSurfaces.remove(surfaceOutput);
        if (surface != null) {
            dualSurfaceProcessor.mGlRenderer.unregisterOutputSurface(surface);
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public void release() {
        if (this.mIsReleaseRequested.getAndSet(true)) {
            return;
        }
        executeSafely(new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DualSurfaceProcessor.$r8$lambda$PCwXS4W96kYxX8f3Nu5NwNa2AbE(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$PCwXS4W96kYxX8f3Nu5NwNa2AbE(DualSurfaceProcessor dualSurfaceProcessor) {
        dualSurfaceProcessor.mIsReleased = true;
        dualSurfaceProcessor.checkReadyToRelease();
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2;
        if (this.mIsReleaseRequested.get() || (surfaceTexture2 = this.mPrimarySurfaceTexture) == null || this.mSecondarySurfaceTexture == null) {
            return;
        }
        surfaceTexture2.updateTexImage();
        this.mSecondarySurfaceTexture.updateTexImage();
        for (Map.Entry entry : this.mOutputSurfaces.entrySet()) {
            Surface surface = (Surface) entry.getValue();
            SurfaceOutput surfaceOutput = (SurfaceOutput) entry.getKey();
            if (surfaceOutput.getFormat() == 34) {
                try {
                    this.mGlRenderer.render(surfaceTexture.getTimestamp(), surface, surfaceOutput, this.mPrimarySurfaceTexture, this.mSecondarySurfaceTexture);
                } catch (RuntimeException e) {
                    Logger.m79e("DualSurfaceProcessor", "Failed to render with OpenGL.", e);
                }
            }
        }
    }

    private void initGlRenderer(final DynamicRange dynamicRange, final Map map) {
        try {
            CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda2
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return DualSurfaceProcessor.$r8$lambda$xmFNEnzuXLtJLpm9XXaBYQZXSMI(this.f$0, dynamicRange, map, completer);
                }
            }).get();
        } catch (InterruptedException | ExecutionException e) {
            e = e;
            if (e instanceof ExecutionException) {
                e = e.getCause();
            }
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            throw new IllegalStateException("Failed to create DefaultSurfaceProcessor", e);
        }
    }

    public static /* synthetic */ Object $r8$lambda$xmFNEnzuXLtJLpm9XXaBYQZXSMI(final DualSurfaceProcessor dualSurfaceProcessor, final DynamicRange dynamicRange, final Map map, final CallbackToFutureAdapter.Completer completer) {
        dualSurfaceProcessor.getClass();
        dualSurfaceProcessor.executeSafely(new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                DualSurfaceProcessor.m2006$r8$lambda$gvtYv8V6pqQmb0lqnGgcqf1W30(this.f$0, dynamicRange, map, completer);
            }
        });
        return "Init GlRenderer";
    }

    /* JADX INFO: renamed from: $r8$lambda$gvtYv8V6pqQmb0lqnGgcqf1W-30, reason: not valid java name */
    public static /* synthetic */ void m2006$r8$lambda$gvtYv8V6pqQmb0lqnGgcqf1W30(DualSurfaceProcessor dualSurfaceProcessor, DynamicRange dynamicRange, Map map, CallbackToFutureAdapter.Completer completer) throws Throwable {
        dualSurfaceProcessor.getClass();
        try {
            dualSurfaceProcessor.mGlRenderer.init(dynamicRange, map);
            completer.set(null);
        } catch (RuntimeException e) {
            completer.setException(e);
        }
    }

    private void executeSafely(Runnable runnable) {
        executeSafely(runnable, new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                DualSurfaceProcessor.m2001$r8$lambda$HVJUM4Do99Q9JsClAV6N0JKx5I();
            }
        });
    }

    private void executeSafely(final Runnable runnable, final Runnable runnable2) {
        try {
            this.mGlExecutor.execute(new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    DualSurfaceProcessor.m2000$r8$lambda$ZbwcPykT74fmw8U2V6XL8hhU5w(this.f$0, runnable2, runnable);
                }
            });
        } catch (RejectedExecutionException e) {
            Logger.m82w("DualSurfaceProcessor", "Unable to executor runnable", e);
            runnable2.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-ZbwcPykT74fmw8U2V6XL8hhU5w, reason: not valid java name */
    public static /* synthetic */ void m2000$r8$lambda$ZbwcPykT74fmw8U2V6XL8hhU5w(DualSurfaceProcessor dualSurfaceProcessor, Runnable runnable, Runnable runnable2) {
        if (dualSurfaceProcessor.mIsReleased) {
            runnable.run();
        } else {
            runnable2.run();
        }
    }

    private void checkReadyToRelease() {
        if (this.mIsReleased && this.mInputSurfaceCount == 0) {
            Iterator it = this.mOutputSurfaces.keySet().iterator();
            while (it.hasNext()) {
                ((SurfaceOutput) it.next()).close();
            }
            this.mOutputSurfaces.clear();
            this.mGlRenderer.release();
            this.mGlThread.quit();
        }
    }

    public static class Factory {
        private static Function3 sSupplier = new Function3() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessor$Factory$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return new DualSurfaceProcessor((DynamicRange) obj, (CompositionSettings) obj2, (CompositionSettings) obj3);
            }
        };

        public static SurfaceProcessorInternal newInstance(DynamicRange dynamicRange, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
            return (SurfaceProcessorInternal) sSupplier.invoke(dynamicRange, compositionSettings, compositionSettings2);
        }
    }
}
