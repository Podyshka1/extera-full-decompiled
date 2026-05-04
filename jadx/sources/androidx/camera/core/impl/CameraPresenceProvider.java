package androidx.camera.core.impl;

import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CameraPresenceProvider {
    public static final Companion Companion = new Companion(null);
    private final Executor backgroundExecutor;
    private CameraFactory cameraFactory;
    private CameraRepository cameraRepository;
    private final Map cameraStateObservers;
    private CameraValidator cameraValidator;
    private volatile List currentFilteredIds;
    private final CopyOnWriteArrayList dependentInternalListeners;
    private final AtomicBoolean isMonitoring;
    private final Object observerLock;
    private final CopyOnWriteArrayList publicApiListeners;
    private final Object retryLock;
    private ScheduledFuture retryScanFuture;
    private final ScheduledExecutorService scheduledExecutor;
    private final SourceObservableObserver sourceObserver;
    private Observable sourcePresenceObservable;

    public CameraPresenceProvider(Executor backgroundExecutor, ScheduledExecutorService scheduledExecutor) {
        Intrinsics.checkNotNullParameter(backgroundExecutor, "backgroundExecutor");
        Intrinsics.checkNotNullParameter(scheduledExecutor, "scheduledExecutor");
        this.backgroundExecutor = backgroundExecutor;
        this.scheduledExecutor = scheduledExecutor;
        this.observerLock = new Object();
        this.retryLock = new Object();
        this.sourceObserver = new SourceObservableObserver();
        this.currentFilteredIds = CollectionsKt.emptyList();
        this.isMonitoring = new AtomicBoolean(false);
        this.dependentInternalListeners = new CopyOnWriteArrayList();
        this.publicApiListeners = new CopyOnWriteArrayList();
        this.cameraStateObservers = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ListenerWrapper {
        private final Executor executor;
        private final CameraPresenceListener listener;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerWrapper)) {
                return false;
            }
            ListenerWrapper listenerWrapper = (ListenerWrapper) obj;
            return Intrinsics.areEqual(this.listener, listenerWrapper.listener) && Intrinsics.areEqual(this.executor, listenerWrapper.executor);
        }

        public int hashCode() {
            return (this.listener.hashCode() * 31) + this.executor.hashCode();
        }

        public String toString() {
            return "ListenerWrapper(listener=" + this.listener + ", executor=" + this.executor + ')';
        }

        public ListenerWrapper(CameraPresenceListener listener, Executor executor) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(executor, "executor");
            this.listener = listener;
            this.executor = executor;
        }

        public final Executor getExecutor() {
            return this.executor;
        }

        public final CameraPresenceListener getListener() {
            return this.listener;
        }
    }

    public final void startup(CameraValidator cameraValidator, CameraFactory cameraFactory, CameraRepository cameraRepository) {
        Intrinsics.checkNotNullParameter(cameraValidator, "cameraValidator");
        Intrinsics.checkNotNullParameter(cameraFactory, "cameraFactory");
        Intrinsics.checkNotNullParameter(cameraRepository, "cameraRepository");
        if (this.isMonitoring.compareAndSet(false, true)) {
            Logger.m80i("CameraPresencePrvdr", "Starting CameraPresenceProvider monitoring.");
            this.cameraValidator = cameraValidator;
            Set<String> availableCameraIds = cameraFactory.getAvailableCameraIds();
            Intrinsics.checkNotNullExpressionValue(availableCameraIds, "getAvailableCameraIds(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(availableCameraIds, 10));
            for (String str : availableCameraIds) {
                Intrinsics.checkNotNull(str);
                arrayList.add(CameraIdentifier.Factory.create$default(str, null, null, 6, null));
            }
            this.currentFilteredIds = arrayList;
            this.cameraFactory = cameraFactory;
            this.cameraRepository = cameraRepository;
            this.sourcePresenceObservable = cameraFactory.getCameraPresenceSource();
            this.backgroundExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.startup$lambda$1(this.f$0);
                }
            });
            Observable observable = this.sourcePresenceObservable;
            if (observable != null) {
                observable.addObserver(CameraXExecutors.newSequentialExecutor(this.backgroundExecutor), this.sourceObserver);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startup$lambda$1(CameraPresenceProvider cameraPresenceProvider) {
        Iterator it = cameraPresenceProvider.currentFilteredIds.iterator();
        while (it.hasNext()) {
            cameraPresenceProvider.conditionallySetupCameraStateObserver(((CameraIdentifier) it.next()).getInternalId());
        }
    }

    public final void shutdown() {
        if (!this.isMonitoring.getAndSet(false)) {
            Logger.m76d("CameraPresencePrvdr", "Shutdown called when not monitoring. Ignoring.");
            return;
        }
        Logger.m80i("CameraPresencePrvdr", "Shutting down CameraPresenceProvider monitoring.");
        synchronized (this.retryLock) {
            try {
                ScheduledFuture scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.retryScanFuture = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Observable observable = this.sourcePresenceObservable;
        if (observable != null) {
            observable.removeObserver(this.sourceObserver);
        }
        clearAllCameraStateObservers();
        this.cameraValidator = null;
        this.dependentInternalListeners.clear();
        this.publicApiListeners.clear();
        this.currentFilteredIds = CollectionsKt.emptyList();
        this.cameraFactory = null;
        this.cameraRepository = null;
    }

    private final class SourceObservableObserver implements Observable.Observer {
        public SourceObservableObserver() {
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onNewData(List list) {
            CameraFactory cameraFactory;
            CameraRepository cameraRepository;
            CameraValidator cameraValidator;
            List listEmptyList;
            if (!CameraPresenceProvider.this.isMonitoring.get() || (cameraFactory = CameraPresenceProvider.this.cameraFactory) == null || (cameraRepository = CameraPresenceProvider.this.cameraRepository) == null || (cameraValidator = CameraPresenceProvider.this.cameraValidator) == null) {
                return;
            }
            if (list != null) {
                List list2 = list;
                listEmptyList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    listEmptyList.add(((CameraIdentifier) it.next()).getInternalId());
                }
            } else {
                listEmptyList = CollectionsKt.emptyList();
            }
            if (cameraFactory instanceof CameraFactory.Interrogator) {
                try {
                    List list3 = CameraPresenceProvider.this.currentFilteredIds;
                    List availableCameraIds = ((CameraFactory.Interrogator) cameraFactory).getAvailableCameraIds(listEmptyList);
                    Intrinsics.checkNotNullExpressionValue(availableCameraIds, "getAvailableCameraIds(...)");
                    List<String> list4 = availableCameraIds;
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
                    for (String str : list4) {
                        Intrinsics.checkNotNull(str);
                        arrayList.add(CameraIdentifier.Factory.create$default(str, null, null, 6, null));
                    }
                    Set setMinus = SetsKt.minus(CollectionsKt.toSet(list3), (Iterable) CollectionsKt.toSet(arrayList));
                    if (!setMinus.isEmpty()) {
                        LinkedHashSet cameras = cameraRepository.getCameras();
                        Intrinsics.checkNotNullExpressionValue(cameras, "getCameras(...)");
                        if (cameraValidator.isChangeInvalid(cameras, setMinus)) {
                            Logger.m81w("CameraPresencePrvdr", "Camera removal update invalid. Aborting.");
                            return;
                        }
                    }
                } catch (Exception e) {
                    Logger.m82w("CameraPresencePrvdr", "Failed to interrogate camera factory. Falling back to full update.", e);
                }
            }
            try {
                cameraFactory.onCameraIdsUpdated(listEmptyList);
                Set<String> availableCameraIds2 = cameraFactory.getAvailableCameraIds();
                Intrinsics.checkNotNullExpressionValue(availableCameraIds2, "getAvailableCameraIds(...)");
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(availableCameraIds2, 10));
                for (String str2 : availableCameraIds2) {
                    Intrinsics.checkNotNull(str2);
                    arrayList2.add(CameraIdentifier.Factory.create$default(str2, null, null, 6, null));
                }
                if (Intrinsics.areEqual(arrayList2, CameraPresenceProvider.this.currentFilteredIds)) {
                    return;
                }
                CameraPresenceProvider.this.processFilteredCameraIdUpdate(arrayList2);
            } catch (Exception e2) {
                Logger.m82w("CameraPresencePrvdr", "CameraFactory failed to update. The camera list may be stale until the next update.", e2);
            }
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(Throwable t) {
            Intrinsics.checkNotNullParameter(t, "t");
            if (CameraPresenceProvider.this.isMonitoring.get()) {
                Logger.m79e("CameraPresencePrvdr", "Error from source camera presence observable. Triggering refresh.", t);
                Observable observable = CameraPresenceProvider.this.sourcePresenceObservable;
                if (observable != null) {
                    observable.fetchData();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processFilteredCameraIdUpdate(List list) {
        List list2 = CollectionsKt.toList(this.currentFilteredIds);
        if (Intrinsics.areEqual(list, list2)) {
            return;
        }
        synchronized (this.retryLock) {
            try {
                if (this.retryScanFuture != null) {
                    Logger.m76d("CameraPresencePrvdr", "Camera list updated. Cancelling any pending retries.");
                    ScheduledFuture scheduledFuture = this.retryScanFuture;
                    Intrinsics.checkNotNull(scheduledFuture);
                    scheduledFuture.cancel(false);
                    this.retryScanFuture = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        List list3 = list2;
        Set set = CollectionsKt.toSet(list3);
        List list4 = list;
        Set set2 = CollectionsKt.toSet(list4);
        Set setMinus = SetsKt.minus(set2, (Iterable) set);
        Set setMinus2 = SetsKt.minus(set, (Iterable) set2);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
        Iterator it = list4.iterator();
        while (it.hasNext()) {
            arrayList2.add(((CameraIdentifier) it.next()).getInternalId());
        }
        try {
            Iterator it2 = setMinus2.iterator();
            while (it2.hasNext()) {
                removeCameraStateObserver(((CameraIdentifier) it2.next()).getInternalId());
            }
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                Logger.m76d("CameraPresencePrvdr", "Updating CameraRepository...");
                cameraRepository.onCamerasUpdated(arrayList2);
                arrayList.add(cameraRepository);
                Logger.m76d("CameraPresencePrvdr", "CameraRepository updated successfully.");
            }
            if (!this.dependentInternalListeners.isEmpty()) {
                Logger.m76d("CameraPresencePrvdr", "Updating " + this.dependentInternalListeners.size() + " dependent listeners...");
                for (InternalCameraPresenceListener internalCameraPresenceListener : this.dependentInternalListeners) {
                    internalCameraPresenceListener.onCamerasUpdated(arrayList2);
                    Intrinsics.checkNotNull(internalCameraPresenceListener);
                    arrayList.add(internalCameraPresenceListener);
                }
            }
            this.currentFilteredIds = list;
            Iterator it3 = setMinus.iterator();
            while (it3.hasNext()) {
                conditionallySetupCameraStateObserver(((CameraIdentifier) it3.next()).getInternalId());
            }
            notifyPublicListeners(setMinus, setMinus2);
        } catch (Exception e) {
            Logger.m79e("CameraPresencePrvdr", "A core module failed to update. Rolling back changes.", e);
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            Iterator it4 = list3.iterator();
            while (it4.hasNext()) {
                arrayList3.add(((CameraIdentifier) it4.next()).getInternalId());
            }
            for (InternalCameraPresenceListener internalCameraPresenceListener2 : CollectionsKt.asReversedMutable(arrayList)) {
                try {
                    internalCameraPresenceListener2.onCamerasUpdated(arrayList3);
                } catch (Exception e2) {
                    Logger.m79e("CameraPresencePrvdr", "Failed to rollback listener: " + internalCameraPresenceListener2, e2);
                }
            }
            Iterator it5 = setMinus2.iterator();
            while (it5.hasNext()) {
                conditionallySetupCameraStateObserver(((CameraIdentifier) it5.next()).getInternalId());
            }
            Iterator it6 = setMinus.iterator();
            while (it6.hasNext()) {
                removeCameraStateObserver(((CameraIdentifier) it6.next()).getInternalId());
            }
        }
    }

    private final void notifyPublicListeners(Set set, Set set2) {
        if (!set.isEmpty()) {
            Logger.m80i("CameraPresencePrvdr", "Notifying " + set.size() + " cameras added.");
            notifyPublicCamerasAdded(set);
        }
        if (set2.isEmpty()) {
            return;
        }
        Logger.m80i("CameraPresencePrvdr", "Notifying " + set2.size() + " cameras removed.");
        notifyPublicCamerasRemoved(set2);
    }

    public final void addDependentInternalListener(InternalCameraPresenceListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.dependentInternalListeners.add(listener);
    }

    private final void conditionallySetupCameraStateObserver(String str) {
        CameraRepository cameraRepository = this.cameraRepository;
        if (cameraRepository == null) {
            return;
        }
        try {
            CameraInternal camera = cameraRepository.getCamera(str);
            Intrinsics.checkNotNullExpressionValue(camera, "getCamera(...)");
            CameraInfoInternal cameraInfoInternal = camera.getCameraInfoInternal();
            Intrinsics.checkNotNullExpressionValue(cameraInfoInternal, "getCameraInfoInternal(...)");
            setupCameraStateObserver(cameraInfoInternal);
        } catch (IllegalArgumentException unused) {
            Logger.m81w("CameraPresencePrvdr", "CameraInternal not found for " + str + ". Cannot setup state observer.");
        }
    }

    private final void setupCameraStateObserver(final CameraInfoInternal cameraInfoInternal) {
        final String cameraId = cameraInfoInternal.getCameraId();
        Intrinsics.checkNotNullExpressionValue(cameraId, "getCameraId(...)");
        if (this.isMonitoring.get()) {
            synchronized (this.observerLock) {
                if (this.cameraStateObservers.containsKey(cameraId)) {
                    return;
                }
                final Observer observer = new Observer() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda4
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        CameraPresenceProvider.setupCameraStateObserver$lambda$0$0(this.f$0, cameraId, (CameraState) obj);
                    }
                };
                CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraPresenceProvider.setupCameraStateObserver$lambda$0$1(cameraInfoInternal, observer);
                    }
                });
                this.cameraStateObservers.put(cameraId, observer);
                Logger.m76d("CameraPresencePrvdr", "Registered state observer for camera: " + cameraId);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCameraStateObserver$lambda$0$0(final CameraPresenceProvider cameraPresenceProvider, String str, CameraState cameraState) {
        if (!cameraPresenceProvider.isMonitoring.get()) {
            Logger.m76d("CameraPresencePrvdr", "Ignore camera state change handling since already stop monitoring");
            return;
        }
        if (cameraState.getError() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Camera ");
            sb.append(str);
            sb.append(" state changed to ");
            sb.append(cameraState.getType());
            sb.append(" with error: ");
            CameraState.StateError error = cameraState.getError();
            sb.append(error != null ? Integer.valueOf(error.getCode()) : null);
            sb.append(". Triggering refresh.");
            Logger.m81w("CameraPresencePrvdr", sb.toString());
            cameraPresenceProvider.backgroundExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.triggerRefreshWithRetries();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCameraStateObserver$lambda$0$1(CameraInfoInternal cameraInfoInternal, Observer observer) {
        cameraInfoInternal.getCameraState().observeForever(observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerRefreshWithRetries() {
        synchronized (this.retryLock) {
            try {
                ScheduledFuture scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                Logger.m76d("CameraPresencePrvdr", "Starting new refresh-with-retries sequence.");
                scheduleRetryAttempt(3, this.currentFilteredIds);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void scheduleRetryAttempt(final int i, final List list) {
        if (i > 0 && this.isMonitoring.get()) {
            this.retryScanFuture = this.scheduledExecutor.schedule(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.scheduleRetryAttempt$lambda$0(this.f$0, list, i);
                }
            }, i == 3 ? 0L : 400L, TimeUnit.MILLISECONDS);
        } else if (i <= 0) {
            Logger.m81w("CameraPresencePrvdr", "Exhausted all retries for camera list refresh.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleRetryAttempt$lambda$0(final CameraPresenceProvider cameraPresenceProvider, final List list, final int i) {
        cameraPresenceProvider.backgroundExecutor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CameraPresenceProvider.scheduleRetryAttempt$lambda$0$0(this.f$0, list, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleRetryAttempt$lambda$0$0(CameraPresenceProvider cameraPresenceProvider, List list, int i) {
        if (cameraPresenceProvider.isMonitoring.get() && Intrinsics.areEqual(cameraPresenceProvider.currentFilteredIds, list)) {
            Logger.m76d("CameraPresencePrvdr", "Triggering refresh. Attempts left: " + i);
            Observable observable = cameraPresenceProvider.sourcePresenceObservable;
            if (observable != null) {
                observable.fetchData();
            }
            cameraPresenceProvider.scheduleRetryAttempt(i - 1, list);
        }
    }

    private final void removeCameraStateObserver(String str) {
        synchronized (this.observerLock) {
            final Observer observer = (Observer) this.cameraStateObservers.remove(str);
            CameraRepository cameraRepository = this.cameraRepository;
            if (observer != null && cameraRepository != null) {
                try {
                    final CameraInternal camera = cameraRepository.getCamera(str);
                    Intrinsics.checkNotNullExpressionValue(camera, "getCamera(...)");
                    CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraPresenceProvider.removeCameraStateObserver$lambda$0$0(camera, observer);
                        }
                    });
                    Logger.m76d("CameraPresencePrvdr", "Removed state observer for: " + str);
                } catch (IllegalArgumentException unused) {
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeCameraStateObserver$lambda$0$0(CameraInternal cameraInternal, Observer observer) {
        cameraInternal.getCameraInfoInternal().getCameraState().removeObserver(observer);
    }

    private final void clearAllCameraStateObservers() {
        synchronized (this.observerLock) {
            if (this.cameraStateObservers.isEmpty()) {
                return;
            }
            Map map = MapsKt.toMap(this.cameraStateObservers);
            this.cameraStateObservers.clear();
            Unit unit = Unit.INSTANCE;
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                LinkedHashSet<CameraInternal> cameras = cameraRepository.getCameras();
                Intrinsics.checkNotNullExpressionValue(cameras, "getCameras(...)");
                final ArrayList arrayList = new ArrayList();
                for (CameraInternal cameraInternal : cameras) {
                    CameraInfoInternal cameraInfoInternal = cameraInternal != null ? cameraInternal.getCameraInfoInternal() : null;
                    if (cameraInfoInternal != null) {
                        arrayList.add(cameraInfoInternal);
                    }
                }
                Logger.m76d("CameraPresencePrvdr", "Clearing all " + map.size() + " state observers.");
                for (Map.Entry entry : map.entrySet()) {
                    final String str = (String) entry.getKey();
                    final Observer observer = (Observer) entry.getValue();
                    CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraPresenceProvider.clearAllCameraStateObservers$lambda$2$0(arrayList, observer, str);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearAllCameraStateObservers$lambda$2$0(List list, Observer observer, String str) {
        Object next;
        LiveData cameraState;
        try {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    if (Intrinsics.areEqual(((CameraInfoInternal) next).getCameraId(), str)) {
                        break;
                    }
                }
            }
            CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) next;
            if (cameraInfoInternal == null || (cameraState = cameraInfoInternal.getCameraState()) == null) {
                return;
            }
            cameraState.removeObserver(observer);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final void addCameraPresenceListener(final CameraPresenceListener listener, Executor executor) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.publicApiListeners.add(new ListenerWrapper(listener, executor));
        executor.execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CameraPresenceProvider.addCameraPresenceListener$lambda$0(this.f$0, listener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addCameraPresenceListener$lambda$0(CameraPresenceProvider cameraPresenceProvider, CameraPresenceListener cameraPresenceListener) {
        Set set = CollectionsKt.toSet(cameraPresenceProvider.currentFilteredIds);
        if (set.isEmpty()) {
            return;
        }
        cameraPresenceListener.onCamerasAdded(set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeCameraPresenceListener$lambda$0(CameraPresenceListener cameraPresenceListener, ListenerWrapper listenerWrapper) {
        return Intrinsics.areEqual(listenerWrapper.getListener(), cameraPresenceListener);
    }

    public final void removeCameraPresenceListener(final CameraPresenceListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        CollectionsKt.removeAll(this.publicApiListeners, new Function1() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(CameraPresenceProvider.removeCameraPresenceListener$lambda$0(listener, (CameraPresenceProvider.ListenerWrapper) obj));
            }
        });
    }

    private final void notifyPublicCamerasAdded(final Set set) {
        for (final ListenerWrapper listenerWrapper : this.publicApiListeners) {
            listenerWrapper.getExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.notifyPublicCamerasAdded$lambda$0$0(listenerWrapper, set);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPublicCamerasAdded$lambda$0$0(ListenerWrapper listenerWrapper, Set set) {
        listenerWrapper.getListener().onCamerasAdded(set);
    }

    private final void notifyPublicCamerasRemoved(final Set set) {
        for (final ListenerWrapper listenerWrapper : this.publicApiListeners) {
            listenerWrapper.getExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.notifyPublicCamerasRemoved$lambda$0$0(listenerWrapper, set);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPublicCamerasRemoved$lambda$0$0(ListenerWrapper listenerWrapper, Set set) {
        listenerWrapper.getListener().onCamerasRemoved(set);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
