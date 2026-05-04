package androidx.camera.lifecycle;

import android.os.Build;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.RotationProvider;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class LifecycleCamera implements LifecycleObserver, Camera {
    private final CameraUseCaseAdapter mCameraUseCaseAdapter;
    private final LifecycleOwner mLifecycleOwner;
    private final RotationProvider mRotationProvider;
    private final Object mLock = new Object();
    private volatile boolean mIsActive = false;
    private boolean mSuspended = false;
    private boolean mReleased = false;
    private SessionConfig mBoundSessionConfig = null;

    LifecycleCamera(LifecycleOwner lifecycleOwner, CameraUseCaseAdapter cameraUseCaseAdapter, RotationProvider rotationProvider) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mCameraUseCaseAdapter = cameraUseCaseAdapter;
        this.mRotationProvider = rotationProvider;
        if (lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            cameraUseCaseAdapter.attachUseCases();
        } else {
            cameraUseCaseAdapter.detachUseCases();
        }
        lifecycleOwner.getLifecycle().addObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!this.mSuspended && !this.mReleased) {
                    this.mCameraUseCaseAdapter.attachUseCases();
                    this.mIsActive = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!this.mSuspended && !this.mReleased) {
                    this.mCameraUseCaseAdapter.detachUseCases();
                    this.mIsActive = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            CameraUseCaseAdapter cameraUseCaseAdapter = this.mCameraUseCaseAdapter;
            cameraUseCaseAdapter.removeUseCases(cameraUseCaseAdapter.getUseCases());
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume(LifecycleOwner lifecycleOwner) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mCameraUseCaseAdapter.setActiveResumingMode(true);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause(LifecycleOwner lifecycleOwner) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mCameraUseCaseAdapter.setActiveResumingMode(false);
        }
    }

    public void suspend() {
        synchronized (this.mLock) {
            try {
                if (this.mSuspended) {
                    return;
                }
                onStop(this.mLifecycleOwner);
                this.mSuspended = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unsuspend() {
        synchronized (this.mLock) {
            try {
                if (this.mSuspended) {
                    this.mSuspended = false;
                    if (this.mLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
                        onStart(this.mLifecycleOwner);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isBound(UseCase useCase) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mCameraUseCaseAdapter.getUseCases().contains(useCase);
        }
        return zContains;
    }

    public List getUseCases() {
        List listUnmodifiableList;
        synchronized (this.mLock) {
            listUnmodifiableList = DesugarCollections.unmodifiableList(this.mCameraUseCaseAdapter.getUseCases());
        }
        return listUnmodifiableList;
    }

    public LifecycleOwner getLifecycleOwner() {
        LifecycleOwner lifecycleOwner;
        synchronized (this.mLock) {
            lifecycleOwner = this.mLifecycleOwner;
        }
        return lifecycleOwner;
    }

    public CameraUseCaseAdapter getCameraUseCaseAdapter() {
        return this.mCameraUseCaseAdapter;
    }

    void bind(final SessionConfig sessionConfig) {
        synchronized (this.mLock) {
            try {
                if (this.mBoundSessionConfig == null) {
                    this.mBoundSessionConfig = sessionConfig;
                } else if (sessionConfig.isLegacy()) {
                    if (!this.mBoundSessionConfig.isLegacy()) {
                        throw new IllegalStateException("Cannot bind use cases when a SessionConfig is already bound to this LifecycleOwner. Please unbind first");
                    }
                    ArrayList arrayList = new ArrayList(this.mBoundSessionConfig.getUseCases());
                    arrayList.addAll(sessionConfig.getUseCases());
                    sessionConfig.getViewPort();
                    this.mBoundSessionConfig = new LegacySessionConfig(arrayList, null, sessionConfig.getEffects());
                } else {
                    if (this.mBoundSessionConfig.isLegacy()) {
                        throw new IllegalStateException("Cannot bind the SessionConfig when use cases are bound to this LifecycleOwner already. Please unbind first");
                    }
                    this.mBoundSessionConfig = sessionConfig;
                    CameraUseCaseAdapter cameraUseCaseAdapter = this.mCameraUseCaseAdapter;
                    cameraUseCaseAdapter.removeUseCases(cameraUseCaseAdapter.getUseCases());
                }
                CameraUseCaseAdapter cameraUseCaseAdapter2 = this.mCameraUseCaseAdapter;
                sessionConfig.getViewPort();
                cameraUseCaseAdapter2.setViewPort(null);
                this.mCameraUseCaseAdapter.setEffects(sessionConfig.getEffects());
                this.mCameraUseCaseAdapter.setSessionType(sessionConfig.getSessionType());
                this.mCameraUseCaseAdapter.setFrameRate(sessionConfig.getFrameRateRange());
                if (sessionConfig.isAutoRotationEnabled()) {
                    updateUseCasesRotationProvider(sessionConfig.getUseCases(), this.mRotationProvider);
                }
                final ResolvedFeatureGroup resolvedFeatureGroupResolveFeatureGroup = ResolvedFeatureGroup.resolveFeatureGroup(sessionConfig, (CameraInfoInternal) getCameraInfo());
                sessionConfig.getFeatureSelectionListenerExecutor().execute(new Runnable() { // from class: androidx.camera.lifecycle.LifecycleCamera$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        LifecycleCamera.m2008$r8$lambda$ZjFrRYn4_PbuhgqvDfsH48r0Ow(resolvedFeatureGroupResolveFeatureGroup, sessionConfig);
                    }
                });
                this.mCameraUseCaseAdapter.addUseCases(sessionConfig.getUseCases(), resolvedFeatureGroupResolveFeatureGroup);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ZjFrRY-n4_PbuhgqvDfsH48r0Ow, reason: not valid java name */
    public static /* synthetic */ void m2008$r8$lambda$ZjFrRYn4_PbuhgqvDfsH48r0Ow(ResolvedFeatureGroup resolvedFeatureGroup, SessionConfig sessionConfig) {
        HashSet hashSet = new HashSet();
        if (resolvedFeatureGroup != null) {
            hashSet.addAll(resolvedFeatureGroup.getFeatures());
        }
        sessionConfig.getFeatureSelectionListener().accept(hashSet);
    }

    private void updateUseCasesRotationProvider(List list, RotationProvider rotationProvider) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase.isAutoRotationSupported()) {
                useCase.setRotationProvider(rotationProvider);
            }
        }
    }

    boolean isLegacySessionConfigBound() {
        boolean zIsLegacy;
        synchronized (this.mLock) {
            SessionConfig sessionConfig = this.mBoundSessionConfig;
            zIsLegacy = sessionConfig == null ? false : sessionConfig.isLegacy();
        }
        return zIsLegacy;
    }

    void unbindAll() {
        synchronized (this.mLock) {
            List useCases = this.mCameraUseCaseAdapter.getUseCases();
            this.mCameraUseCaseAdapter.removeUseCases(useCases);
            updateUseCasesRotationProvider(useCases, null);
            this.mBoundSessionConfig = null;
        }
    }

    @Override // androidx.camera.core.Camera
    public CameraControl getCameraControl() {
        return this.mCameraUseCaseAdapter.getCameraControl();
    }

    @Override // androidx.camera.core.Camera
    public CameraInfo getCameraInfo() {
        return this.mCameraUseCaseAdapter.getCameraInfo();
    }
}
