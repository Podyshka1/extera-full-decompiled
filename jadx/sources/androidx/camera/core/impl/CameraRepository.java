package androidx.camera.core.impl;

import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class CameraRepository implements InternalCameraPresenceListener {
    private CameraFactory mCameraFactory;
    private CallbackToFutureAdapter.Completer mDeinitCompleter;
    private ListenableFuture mDeinitFuture;
    private final Object mCamerasLock = new Object();
    private final Map mCameras = new LinkedHashMap();
    private final Set mReleasingCameras = new HashSet();

    public void init(CameraFactory cameraFactory) {
        this.mCameraFactory = cameraFactory;
        synchronized (this.mCamerasLock) {
            try {
                for (String str : cameraFactory.getAvailableCameraIds()) {
                    Logger.m76d("CameraRepository", "Added camera: " + str);
                    CameraInternal cameraInternal = (CameraInternal) this.mCameras.put(str, cameraFactory.getCamera(str));
                    if (cameraInternal != null) {
                        cameraInternal.release();
                    }
                }
            } catch (CameraUnavailableException e) {
                throw new InitializationException(e);
            }
        }
    }

    public ListenableFuture deinit() {
        synchronized (this.mCamerasLock) {
            try {
                if (this.mCameras.isEmpty()) {
                    ListenableFuture listenableFutureImmediateFuture = this.mDeinitFuture;
                    if (listenableFutureImmediateFuture == null) {
                        listenableFutureImmediateFuture = Futures.immediateFuture(null);
                    }
                    return listenableFutureImmediateFuture;
                }
                ListenableFuture future = this.mDeinitFuture;
                if (future == null) {
                    future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.CameraRepository$$ExternalSyntheticLambda0
                        @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                        public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                            return CameraRepository.$r8$lambda$EVR2_LFGuegIUMqvZY9O12S_ZVM(this.f$0, completer);
                        }
                    });
                    this.mDeinitFuture = future;
                }
                this.mReleasingCameras.addAll(this.mCameras.values());
                for (final CameraInternal cameraInternal : this.mCameras.values()) {
                    cameraInternal.release().addListener(new Runnable() { // from class: androidx.camera.core.impl.CameraRepository$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraRepository.$r8$lambda$6tNk7BHQV_7i2HLwF1CZkzV1hrM(this.f$0, cameraInternal);
                        }
                    }, CameraXExecutors.directExecutor());
                }
                this.mCameras.clear();
                return future;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ Object $r8$lambda$EVR2_LFGuegIUMqvZY9O12S_ZVM(CameraRepository cameraRepository, CallbackToFutureAdapter.Completer completer) {
        synchronized (cameraRepository.mCamerasLock) {
            cameraRepository.mDeinitCompleter = completer;
        }
        return "CameraRepository-deinit";
    }

    public static /* synthetic */ void $r8$lambda$6tNk7BHQV_7i2HLwF1CZkzV1hrM(CameraRepository cameraRepository, CameraInternal cameraInternal) {
        synchronized (cameraRepository.mCamerasLock) {
            try {
                cameraRepository.mReleasingCameras.remove(cameraInternal);
                if (cameraRepository.mReleasingCameras.isEmpty()) {
                    Preconditions.checkNotNull(cameraRepository.mDeinitCompleter);
                    cameraRepository.mDeinitCompleter.set(null);
                    cameraRepository.mDeinitCompleter = null;
                    cameraRepository.mDeinitFuture = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public CameraInternal getCamera(String str) {
        CameraInternal cameraInternal;
        synchronized (this.mCamerasLock) {
            try {
                cameraInternal = (CameraInternal) this.mCameras.get(str);
                if (cameraInternal == null) {
                    throw new IllegalArgumentException("Invalid camera: " + str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cameraInternal;
    }

    public LinkedHashSet getCameras() {
        LinkedHashSet linkedHashSet;
        synchronized (this.mCamerasLock) {
            linkedHashSet = new LinkedHashSet(this.mCameras.values());
        }
        return linkedHashSet;
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public void onCamerasUpdated(List list) throws CameraUpdateException {
        HashSet<String> hashSet;
        HashMap map = new HashMap();
        synchronized (this.mCamerasLock) {
            hashSet = new HashSet(list);
            hashSet.removeAll(this.mCameras.keySet());
        }
        try {
            for (String str : hashSet) {
                map.put(str, this.mCameraFactory.getCamera(str));
            }
            synchronized (this.mCamerasLock) {
                try {
                    HashSet hashSet2 = new HashSet(this.mCameras.keySet());
                    hashSet2.removeAll(list);
                    ArrayList arrayList = new ArrayList();
                    Iterator it = hashSet2.iterator();
                    while (it.hasNext()) {
                        arrayList.add((CameraInternal) this.mCameras.get((String) it.next()));
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        String str2 = (String) it2.next();
                        if (this.mCameras.containsKey(str2)) {
                            linkedHashMap.put(str2, (CameraInternal) this.mCameras.get(str2));
                        } else {
                            linkedHashMap.put(str2, (CameraInternal) map.get(str2));
                        }
                    }
                    this.mCameras.clear();
                    this.mCameras.putAll(linkedHashMap);
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        CameraInternal cameraInternal = (CameraInternal) obj;
                        if (cameraInternal != null) {
                            cameraInternal.onRemoved();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (CameraUnavailableException e) {
            throw new CameraUpdateException("Failed to create CameraInternal", e);
        }
    }
}
