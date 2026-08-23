package androidx.camera.lifecycle;

import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.Logger;
import androidx.camera.core.RotationProvider;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.core.util.Preconditions;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class LifecycleCameraRepository {
    CameraCoordinator mCameraCoordinator;
    private final int mDeviceId;
    private final Object mLock = new Object();
    private final Map mCameraMap = new HashMap();
    private final Map mLifecycleObserverMap = new HashMap();
    private final ArrayDeque mActiveLifecycleOwners = new ArrayDeque();

    LifecycleCameraRepository(int i) {
        this.mDeviceId = i;
    }

    LifecycleCamera createLifecycleCamera(LifecycleOwner lifecycleOwner, CameraUseCaseAdapter cameraUseCaseAdapter, RotationProvider rotationProvider) {
        synchronized (this.mLock) {
            try {
                Preconditions.checkArgument(this.mCameraMap.get(Key.create(lifecycleOwner, cameraUseCaseAdapter.getAdapterIdentifier())) == null, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras");
                LifecycleCamera lifecycleCamera = new LifecycleCamera(lifecycleOwner, cameraUseCaseAdapter, rotationProvider);
                if (cameraUseCaseAdapter.getUseCases().isEmpty()) {
                    lifecycleCamera.suspend();
                }
                if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
                    return lifecycleCamera;
                }
                registerCamera(lifecycleCamera);
                return lifecycleCamera;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    LifecycleCamera getLifecycleCamera(LifecycleOwner lifecycleOwner, CameraIdentifier cameraIdentifier) {
        synchronized (this.mLock) {
            try {
                LifecycleCamera lifecycleCamera = (LifecycleCamera) this.mCameraMap.get(Key.create(lifecycleOwner, cameraIdentifier));
                if (lifecycleCamera == null || !lifecycleCamera.getCameraUseCaseAdapter().isRemoved()) {
                    return lifecycleCamera;
                }
                unregisterCamera(lifecycleCamera);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    Collection getLifecycleCameras() {
        Collection collectionUnmodifiableCollection;
        synchronized (this.mLock) {
            collectionUnmodifiableCollection = DesugarCollections.unmodifiableCollection(this.mCameraMap.values());
        }
        return collectionUnmodifiableCollection;
    }

    void removeLifecycleCameras(Set set) {
        synchronized (this.mLock) {
            if (set == null) {
                try {
                    set = this.mCameraMap.keySet();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (Key key : set) {
                if (this.mCameraMap.containsKey(key)) {
                    unregisterCamera((LifecycleCamera) this.mCameraMap.get(key));
                }
            }
        }
    }

    private void registerCamera(LifecycleCamera lifecycleCamera) {
        Set hashSet;
        synchronized (this.mLock) {
            try {
                LifecycleOwner lifecycleOwner = lifecycleCamera.getLifecycleOwner();
                Key keyCreate = Key.create(lifecycleOwner, lifecycleCamera.getCameraUseCaseAdapter().getAdapterIdentifier());
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver != null) {
                    hashSet = (Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver);
                } else {
                    hashSet = new HashSet();
                }
                hashSet.add(keyCreate);
                this.mCameraMap.put(keyCreate, lifecycleCamera);
                if (lifecycleCameraRepositoryObserver == null) {
                    LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver2 = new LifecycleCameraRepositoryObserver(lifecycleOwner, this);
                    this.mLifecycleObserverMap.put(lifecycleCameraRepositoryObserver2, hashSet);
                    lifecycleOwner.getLifecycle().addObserver(lifecycleCameraRepositoryObserver2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void unregisterCamera(LifecycleCamera lifecycleCamera) {
        synchronized (this.mLock) {
            try {
                LifecycleOwner lifecycleOwner = lifecycleCamera.getLifecycleOwner();
                Key keyCreate = Key.create(lifecycleOwner, lifecycleCamera.getCameraUseCaseAdapter().getAdapterIdentifier());
                this.mCameraMap.remove(keyCreate);
                HashSet hashSet = new HashSet();
                for (LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver : this.mLifecycleObserverMap.keySet()) {
                    if (lifecycleOwner.equals(lifecycleCameraRepositoryObserver.getLifecycleOwner())) {
                        Set set = (Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver);
                        set.remove(keyCreate);
                        if (set.isEmpty()) {
                            hashSet.add(lifecycleCameraRepositoryObserver.getLifecycleOwner());
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    unregisterLifecycle((LifecycleOwner) it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void unregisterLifecycle(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return;
                }
                setInactive(lifecycleOwner);
                Iterator it = ((Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver)).iterator();
                while (it.hasNext()) {
                    this.mCameraMap.remove((Key) it.next());
                }
                this.mLifecycleObserverMap.remove(lifecycleCameraRepositoryObserver);
                lifecycleCameraRepositoryObserver.getLifecycleOwner().getLifecycle().removeObserver(lifecycleCameraRepositoryObserver);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private LifecycleCameraRepositoryObserver getLifecycleCameraRepositoryObserver(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                for (LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver : this.mLifecycleObserverMap.keySet()) {
                    if (lifecycleOwner.equals(lifecycleCameraRepositoryObserver.getLifecycleOwner())) {
                        return lifecycleCameraRepositoryObserver;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void bindToLifecycleCamera(LifecycleCamera lifecycleCamera, SessionConfig sessionConfig, CameraCoordinator cameraCoordinator) {
        synchronized (this.mLock) {
            try {
                Preconditions.checkArgument(!sessionConfig.getUseCases().isEmpty());
                this.mCameraCoordinator = cameraCoordinator;
                LifecycleOwner lifecycleOwner = lifecycleCamera.getLifecycleOwner();
                pruneStaleLifecycleCameras(lifecycleOwner);
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return;
                }
                Set set = (Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver);
                CameraCoordinator cameraCoordinator2 = this.mCameraCoordinator;
                if (cameraCoordinator2 == null || cameraCoordinator2.getCameraOperatingMode() != 2) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        LifecycleCamera lifecycleCamera2 = (LifecycleCamera) Preconditions.checkNotNull((LifecycleCamera) this.mCameraMap.get((Key) it.next()));
                        if (!lifecycleCamera2.equals(lifecycleCamera) && !lifecycleCamera2.getUseCases().isEmpty()) {
                            if (!lifecycleCamera2.isLegacySessionConfigBound() && !sessionConfig.isLegacy()) {
                                lifecycleCamera2.unbindAll();
                            } else {
                                throw new IllegalArgumentException("Multiple LifecycleCameras with use cases are registered to the same LifecycleOwner. Please unbind first.");
                            }
                        }
                    }
                }
                try {
                    lifecycleCamera.bind(sessionConfig);
                    if (lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
                        setActive(lifecycleOwner);
                    }
                } catch (CameraUseCaseAdapter.CameraException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void pruneStaleLifecycleCameras(LifecycleOwner lifecycleOwner) {
        LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
        if (lifecycleCameraRepositoryObserver == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        Set<Key> set = (Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver);
        Objects.requireNonNull(set);
        for (Key key : set) {
            LifecycleCamera lifecycleCamera = (LifecycleCamera) this.mCameraMap.get(key);
            if (lifecycleCamera != null && lifecycleCamera.getCameraUseCaseAdapter().isRemoved()) {
                hashSet.add(key);
            }
        }
        if (hashSet.isEmpty()) {
            return;
        }
        Logger.m81w("LifecycleCameraRepository", "Removing " + hashSet.size() + " stale LifecycleCamera(s).");
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            LifecycleCamera lifecycleCamera2 = (LifecycleCamera) this.mCameraMap.get((Key) it.next());
            Objects.requireNonNull(lifecycleCamera2);
            unregisterCamera(lifecycleCamera2);
        }
    }

    void unbindAll(Set set) {
        synchronized (this.mLock) {
            if (set == null) {
                try {
                    set = this.mCameraMap.keySet();
                } catch (Throwable th) {
                    throw th;
                }
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                LifecycleCamera lifecycleCamera = (LifecycleCamera) this.mCameraMap.get((Key) it.next());
                if (lifecycleCamera != null) {
                    lifecycleCamera.unbindAll();
                    setInactive(lifecycleCamera.getLifecycleOwner());
                }
            }
        }
    }

    void setActive(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (hasUseCaseBound(lifecycleOwner)) {
                    if (this.mActiveLifecycleOwners.isEmpty()) {
                        this.mActiveLifecycleOwners.push(lifecycleOwner);
                    } else {
                        CameraCoordinator cameraCoordinator = this.mCameraCoordinator;
                        if (cameraCoordinator == null || cameraCoordinator.getCameraOperatingMode() != 2) {
                            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) this.mActiveLifecycleOwners.peek();
                            if (!lifecycleOwner.equals(lifecycleOwner2)) {
                                suspendUseCases(lifecycleOwner2);
                                this.mActiveLifecycleOwners.remove(lifecycleOwner);
                                this.mActiveLifecycleOwners.push(lifecycleOwner);
                            }
                        }
                    }
                    unsuspendUseCases(lifecycleOwner);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void setInactive(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                this.mActiveLifecycleOwners.remove(lifecycleOwner);
                suspendUseCases(lifecycleOwner);
                if (!this.mActiveLifecycleOwners.isEmpty()) {
                    unsuspendUseCases((LifecycleOwner) this.mActiveLifecycleOwners.peek());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean hasUseCaseBound(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return false;
                }
                Iterator it = ((Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver)).iterator();
                while (it.hasNext()) {
                    if (!((LifecycleCamera) Preconditions.checkNotNull((LifecycleCamera) this.mCameraMap.get((Key) it.next()))).getUseCases().isEmpty()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void suspendUseCases(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                LifecycleCameraRepositoryObserver lifecycleCameraRepositoryObserver = getLifecycleCameraRepositoryObserver(lifecycleOwner);
                if (lifecycleCameraRepositoryObserver == null) {
                    return;
                }
                Iterator it = ((Set) this.mLifecycleObserverMap.get(lifecycleCameraRepositoryObserver)).iterator();
                while (it.hasNext()) {
                    ((LifecycleCamera) Preconditions.checkNotNull((LifecycleCamera) this.mCameraMap.get((Key) it.next()))).suspend();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void unsuspendUseCases(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                Iterator it = ((Set) this.mLifecycleObserverMap.get(getLifecycleCameraRepositoryObserver(lifecycleOwner))).iterator();
                while (it.hasNext()) {
                    LifecycleCamera lifecycleCamera = (LifecycleCamera) this.mCameraMap.get((Key) it.next());
                    if (!((LifecycleCamera) Preconditions.checkNotNull(lifecycleCamera)).getUseCases().isEmpty()) {
                        lifecycleCamera.unsuspend();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static abstract class Key {
        public abstract CameraIdentifier getCameraIdentifier();

        public abstract int getLifecycleOwnerHash();

        Key() {
        }

        static Key create(LifecycleOwner lifecycleOwner, CameraIdentifier cameraIdentifier) {
            return new AutoValue_LifecycleCameraRepository_Key(System.identityHashCode(lifecycleOwner), cameraIdentifier);
        }
    }

    private static class LifecycleCameraRepositoryObserver implements LifecycleObserver {
        private final LifecycleCameraRepository mLifecycleCameraRepository;
        private final LifecycleOwner mLifecycleOwner;

        LifecycleCameraRepositoryObserver(LifecycleOwner lifecycleOwner, LifecycleCameraRepository lifecycleCameraRepository) {
            this.mLifecycleOwner = lifecycleOwner;
            this.mLifecycleCameraRepository = lifecycleCameraRepository;
        }

        LifecycleOwner getLifecycleOwner() {
            return this.mLifecycleOwner;
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart(LifecycleOwner lifecycleOwner) {
            this.mLifecycleCameraRepository.setActive(lifecycleOwner);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
        public void onStop(LifecycleOwner lifecycleOwner) {
            this.mLifecycleCameraRepository.setInactive(lifecycleOwner);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        public void onDestroy(LifecycleOwner lifecycleOwner) {
            this.mLifecycleCameraRepository.unregisterLifecycle(lifecycleOwner);
        }
    }
}
