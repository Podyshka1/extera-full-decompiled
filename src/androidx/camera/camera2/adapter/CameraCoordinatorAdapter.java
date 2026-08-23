package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.CameraCompatibilityFilter;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.InternalCameraPresenceListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00100\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\t2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00180\u0010H\u0016¢\u0006\u0004\b\u001f\u0010\u0014J\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020 H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\tH\u0016¢\u0006\u0004\b&\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010'R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R*\u0010,\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b,\u0010-\u0012\u0004\b1\u0010\u000b\u001a\u0004\b.\u0010/\"\u0004\b0\u0010\u000fR4\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020302028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b4\u00105\u0012\u0004\b:\u0010\u000b\u001a\u0004\b6\u00107\"\u0004\b8\u00109R:\u0010<\u001a\u0014\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100;8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\b<\u0010=\u0012\u0004\bB\u0010\u000b\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR.\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00180\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bC\u0010D\u0012\u0004\bG\u0010\u000b\u001a\u0004\bE\u0010\u0017\"\u0004\bF\u0010\u0014R(\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00110H8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bI\u0010D\u001a\u0004\bJ\u0010\u0017\"\u0004\bK\u0010\u0014R(\u0010L\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bL\u0010M\u0012\u0004\bP\u0010\u000b\u001a\u0004\bN\u0010\"\"\u0004\bO\u0010%R(\u0010R\u001a\u00020Q8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bR\u0010S\u0012\u0004\bX\u0010\u000b\u001a\u0004\bT\u0010U\"\u0004\bV\u0010W¨\u0006Y"}, d2 = {"Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;", "Landroidx/camera/core/concurrent/CameraCoordinator;", "Landroidx/camera/core/impl/InternalCameraPresenceListener;", "Landroidx/camera/camera2/pipe/CameraPipe;", "cameraPipe", "Landroidx/camera/camera2/pipe/CameraDevices;", "cameraDevices", "<init>", "(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/pipe/CameraDevices;)V", _UrlKt.FRAGMENT_ENCODE_SET, "tryStartConcurrentGraph", "()V", "Landroidx/camera/core/impl/CameraRepository;", "repository", "init", "(Landroidx/camera/core/impl/CameraRepository;)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "cameraIds", "onCamerasUpdated", "(Ljava/util/List;)V", "Landroidx/camera/core/CameraSelector;", "getConcurrentCameraSelectors", "()Ljava/util/List;", "Landroidx/camera/core/CameraInfo;", "getActiveConcurrentCameraInfos", "cameraInfo", "addPendingCameraInfo", "(Landroidx/camera/core/CameraInfo;)V", "removePendingCameraInfo", "cameraInfos", "setActiveConcurrentCameraInfos", _UrlKt.FRAGMENT_ENCODE_SET, "getCameraOperatingMode", "()I", "cameraOperatingMode", "setCameraOperatingMode", "(I)V", "shutdown", "Landroidx/camera/camera2/pipe/CameraPipe;", "Landroidx/camera/camera2/pipe/CameraDevices;", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", "cameraRepository", "Landroidx/camera/core/impl/CameraRepository;", "getCameraRepository", "()Landroidx/camera/core/impl/CameraRepository;", "setCameraRepository", "getCameraRepository$annotations", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraId;", "concurrentCameraIdsSet", "Ljava/util/Set;", "getConcurrentCameraIdsSet", "()Ljava/util/Set;", "setConcurrentCameraIdsSet", "(Ljava/util/Set;)V", "getConcurrentCameraIdsSet$annotations", _UrlKt.FRAGMENT_ENCODE_SET, "concurrentCameraIdMap", "Ljava/util/Map;", "getConcurrentCameraIdMap", "()Ljava/util/Map;", "setConcurrentCameraIdMap", "(Ljava/util/Map;)V", "getConcurrentCameraIdMap$annotations", "activeConcurrentCameraInfosList", "Ljava/util/List;", "getActiveConcurrentCameraInfosList", "setActiveConcurrentCameraInfosList", "getActiveConcurrentCameraInfosList$annotations", _UrlKt.FRAGMENT_ENCODE_SET, "pendingCameraIds", "getPendingCameraIds", "setPendingCameraIds", "concurrentMode", "I", "getConcurrentMode", "setConcurrentMode", "getConcurrentMode$annotations", _UrlKt.FRAGMENT_ENCODE_SET, "concurrentModeOn", "Z", "getConcurrentModeOn", "()Z", "setConcurrentModeOn", "(Z)V", "getConcurrentModeOn$annotations", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraCoordinatorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraCoordinatorAdapter.kt\nandroidx/camera/camera2/adapter/CameraCoordinatorAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,287:1\n1#2:288\n1#2:331\n1563#3:289\n1634#3,3:290\n1563#3:293\n1634#3,3:294\n1563#3:305\n1634#3,2:306\n1563#3:308\n1634#3,3:309\n1636#3:312\n1563#3:313\n1634#3,3:314\n1617#3,9:321\n1869#3:330\n1870#3:332\n1626#3:333\n1563#3:334\n1634#3,3:335\n119#4,4:297\n119#4,4:301\n136#4,4:317\n*S KotlinDebug\n*F\n+ 1 CameraCoordinatorAdapter.kt\nandroidx/camera/camera2/adapter/CameraCoordinatorAdapter\n*L\n199#1:331\n72#1:289\n72#1:290,3\n83#1:293\n83#1:294,3\n134#1:305\n134#1:306,2\n136#1:308\n136#1:309,3\n134#1:312\n181#1:313\n181#1:314,3\n199#1:321,9\n199#1:330\n199#1:332\n199#1:333\n209#1:334\n209#1:335,3\n85#1:297,4\n111#1:301,4\n194#1:317,4\n*E\n"})
public final class CameraCoordinatorAdapter implements CameraCoordinator, InternalCameraPresenceListener {
    private final CameraDevices cameraDevices;
    private CameraPipe cameraPipe;
    private CameraRepository cameraRepository;
    private int concurrentMode;
    private boolean concurrentModeOn;
    private final Object lock = new Object();
    private Set<? extends Set<CameraId>> concurrentCameraIdsSet = SetsKt.emptySet();
    private Map<String, ? extends List<String>> concurrentCameraIdMap = MapsKt.emptyMap();
    private List<? extends CameraInfo> activeConcurrentCameraInfosList = CollectionsKt.emptyList();
    private List<String> pendingCameraIds = new ArrayList();

    public CameraCoordinatorAdapter(CameraPipe cameraPipe, CameraDevices cameraDevices) {
        this.cameraPipe = cameraPipe;
        this.cameraDevices = cameraDevices;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void init(CameraRepository repository) throws CameraUpdateException {
        List<String> listEmptyList;
        synchronized (this.lock) {
            this.cameraRepository = repository;
            Unit unit = Unit.INSTANCE;
        }
        List listM1148awaitCameraIdsSeavPBo$default = CameraDevices.m1148awaitCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null);
        if (listM1148awaitCameraIdsSeavPBo$default == null) {
            listEmptyList = CollectionsKt.emptyList();
        } else {
            List list = listM1148awaitCameraIdsSeavPBo$default;
            listEmptyList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                listEmptyList.add(((CameraId) it.next()).getValue());
            }
        }
        onCamerasUpdated(listEmptyList);
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public void onCamerasUpdated(List<String> cameraIds) throws CameraUpdateException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Set<Set> setM1150awaitConcurrentCameraIdsSeavPBo$default = CameraDevices.m1150awaitConcurrentCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null);
            if (setM1150awaitConcurrentCameraIdsSeavPBo$default == null) {
                setM1150awaitConcurrentCameraIdsSeavPBo$default = SetsKt.emptySet();
            }
            for (Set set : setM1150awaitConcurrentCameraIdsSeavPBo$default) {
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(((CameraId) it.next()).getValue());
                }
                Set set2 = CollectionsKt.toSet(arrayList);
                if (cameraIds.containsAll(set2)) {
                    List list = CollectionsKt.toList(set);
                    if (list.size() >= 2) {
                        String value = ((CameraId) list.get(0)).getValue();
                        String value2 = ((CameraId) list.get(1)).getValue();
                        try {
                            if (CameraCompatibilityFilter.isBackwardCompatible(value, this.cameraDevices) && CameraCompatibilityFilter.isBackwardCompatible(value2, this.cameraDevices)) {
                                linkedHashSet.add(set);
                                if (!linkedHashMap.containsKey(value)) {
                                    linkedHashMap.put(value, new ArrayList());
                                }
                                ((List) linkedHashMap.get(value)).add(value2);
                                if (!linkedHashMap.containsKey(value2)) {
                                    linkedHashMap.put(value2, new ArrayList());
                                }
                                ((List) linkedHashMap.get(value2)).add(value);
                            }
                        } catch (InitializationException e) {
                            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                            if (Logger.isWarnEnabled("CXCP")) {
                                Log.w(Camera2Logger.TRUNCATED_TAG, "Skipping incompatible concurrent pair: " + set + " due to " + e.getMessage());
                            }
                        }
                    }
                } else {
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled("CXCP")) {
                        Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to retrieve concurrent camera: " + set2 + " from " + cameraIds);
                    }
                }
            }
            synchronized (this.lock) {
                this.concurrentCameraIdsSet = linkedHashSet;
                this.concurrentCameraIdMap = linkedHashMap;
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception e2) {
            throw new CameraUpdateException("Failed to retrieve concurrent camera id info for camera-pipe.", e2);
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public List<List<CameraSelector>> getConcurrentCameraSelectors() {
        List<List<CameraSelector>> list;
        synchronized (this.lock) {
            try {
                Set<? extends Set<CameraId>> set = this.concurrentCameraIdsSet;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    Set set2 = (Set) it.next();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set2, 10));
                    Iterator it2 = set2.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(CameraSelector.of(CameraIdentifier.Factory.create$default(((CameraId) it2.next()).getValue(), null, null, 6, null)));
                    }
                    arrayList.add(CollectionsKt.toList(arrayList2));
                }
                list = CollectionsKt.toList(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public List<CameraInfo> getActiveConcurrentCameraInfos() {
        ArrayList arrayList;
        synchronized (this.lock) {
            arrayList = new ArrayList(this.activeConcurrentCameraInfosList);
        }
        return arrayList;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void addPendingCameraInfo(CameraInfo cameraInfo) {
        synchronized (this.lock) {
            try {
                if (this.concurrentModeOn) {
                    List<String> list = this.pendingCameraIds;
                    String strM989getCameraIdzjxgSG8 = CameraInfoAdapter.INSTANCE.m989getCameraIdzjxgSG8(cameraInfo);
                    CameraId cameraIdM1208boximpl = strM989getCameraIdzjxgSG8 != null ? CameraId.m1208boximpl(strM989getCameraIdzjxgSG8) : null;
                    if (cameraIdM1208boximpl == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    list.add(cameraIdM1208boximpl.getValue());
                    tryStartConcurrentGraph();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void removePendingCameraInfo(CameraInfo cameraInfo) {
        synchronized (this.lock) {
            try {
                if (this.concurrentModeOn) {
                    List<String> list = this.pendingCameraIds;
                    String strM989getCameraIdzjxgSG8 = CameraInfoAdapter.INSTANCE.m989getCameraIdzjxgSG8(cameraInfo);
                    CameraId cameraIdM1208boximpl = strM989getCameraIdzjxgSG8 != null ? CameraId.m1208boximpl(strM989getCameraIdzjxgSG8) : null;
                    if (cameraIdM1208boximpl == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    list.remove(cameraIdM1208boximpl.getValue());
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void setActiveConcurrentCameraInfos(List<? extends CameraInfo> cameraInfos) {
        synchronized (this.lock) {
            this.activeConcurrentCameraInfosList = cameraInfos;
            tryStartConcurrentGraph();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void tryStartConcurrentGraph() {
        CameraInternal camera;
        synchronized (this.lock) {
            try {
                if (!this.activeConcurrentCameraInfosList.isEmpty() && !this.pendingCameraIds.isEmpty()) {
                    List<? extends CameraInfo> list = this.activeConcurrentCameraInfosList;
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            if (Intrinsics.areEqual(CollectionsKt.toSet(arrayList), CollectionsKt.toSet(this.pendingCameraIds))) {
                                this.pendingCameraIds.clear();
                                List<? extends CameraInfo> list2 = this.activeConcurrentCameraInfosList;
                                synchronized (this.lock) {
                                    CameraRepository cameraRepository = this.cameraRepository;
                                    if (cameraRepository == null) {
                                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                                        if (Logger.isErrorEnabled("CXCP")) {
                                            Log.e(Camera2Logger.TRUNCATED_TAG, "Coordinator has not been initialized with a CameraRepository.");
                                        }
                                        return;
                                    }
                                    ArrayList arrayList2 = new ArrayList();
                                    Iterator<T> it2 = list2.iterator();
                                    while (it2.hasNext()) {
                                        try {
                                            camera = cameraRepository.getCamera(CameraInfoAdapter.INSTANCE.m989getCameraIdzjxgSG8((CameraInfo) it2.next()));
                                        } catch (IllegalArgumentException unused) {
                                        }
                                        CameraInternalAdapter cameraInternalAdapter = camera instanceof CameraInternalAdapter ? (CameraInternalAdapter) camera : null;
                                        if (cameraInternalAdapter != null) {
                                            arrayList2.add(cameraInternalAdapter);
                                        }
                                    }
                                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                                    int size = arrayList2.size();
                                    int i = 0;
                                    while (i < size) {
                                        Object obj = arrayList2.get(i);
                                        i++;
                                        CameraGraph.Config deferredCameraGraphConfig$camera_camera2 = ((CameraInternalAdapter) obj).getDeferredCameraGraphConfig$camera_camera2();
                                        if (deferredCameraGraphConfig$camera_camera2 == null) {
                                            Segment$$ExternalSyntheticBUOutline1.m848m("Every CameraInternal instance is expected to have a deferred CameraGraph config");
                                            return;
                                        }
                                        arrayList3.add(deferredCameraGraphConfig$camera_camera2);
                                    }
                                    CameraPipe cameraPipe = this.cameraPipe;
                                    if (cameraPipe == null) {
                                        Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                                        return;
                                    }
                                    List<CameraGraph> listCreateCameraGraphs = cameraPipe.createCameraGraphs(new CameraGraph.ConcurrentConfig(arrayList3));
                                    if (listCreateCameraGraphs.size() != arrayList3.size()) {
                                        Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
                                        return;
                                    }
                                    for (Pair pair : CollectionsKt.zip(arrayList2, listCreateCameraGraphs)) {
                                        ((CameraInternalAdapter) pair.component1()).resumeDeferredCameraGraphCreation$camera_camera2((CameraGraph) pair.component2());
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        String strM989getCameraIdzjxgSG8 = CameraInfoAdapter.INSTANCE.m989getCameraIdzjxgSG8((CameraInfo) it.next());
                        CameraId cameraIdM1208boximpl = strM989getCameraIdzjxgSG8 != null ? CameraId.m1208boximpl(strM989getCameraIdzjxgSG8) : null;
                        if (cameraIdM1208boximpl == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        arrayList.add(cameraIdM1208boximpl.getValue());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public int getCameraOperatingMode() {
        int i;
        synchronized (this.lock) {
            i = this.concurrentMode;
        }
        return i;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void setCameraOperatingMode(int cameraOperatingMode) {
        CameraRepository cameraRepository;
        synchronized (this.lock) {
            this.concurrentMode = cameraOperatingMode;
            cameraRepository = this.cameraRepository;
        }
        if (cameraRepository == null) {
            return;
        }
        boolean z = cameraOperatingMode == 2;
        this.concurrentModeOn = z;
        if (!z) {
            this.activeConcurrentCameraInfosList = CollectionsKt.emptyList();
        }
        for (CameraInternal cameraInternal : cameraRepository.getCameras()) {
            CameraInternalAdapter cameraInternalAdapter = cameraInternal instanceof CameraInternalAdapter ? (CameraInternalAdapter) cameraInternal : null;
            if (cameraInternalAdapter != null) {
                if (cameraOperatingMode == 1) {
                    cameraInternalAdapter.setCameraGraphCreationMode$camera_camera2(true);
                } else if (cameraOperatingMode == 2) {
                    cameraInternalAdapter.setCameraGraphCreationMode$camera_camera2(false);
                }
            }
        }
    }

    public void shutdown() {
        this.cameraPipe = null;
        this.concurrentModeOn = false;
        synchronized (this.lock) {
            this.cameraRepository = null;
            this.concurrentCameraIdsSet = SetsKt.emptySet();
            this.concurrentCameraIdMap = MapsKt.emptyMap();
            this.activeConcurrentCameraInfosList = CollectionsKt.emptyList();
            this.concurrentMode = 0;
            this.pendingCameraIds.clear();
            Unit unit = Unit.INSTANCE;
        }
    }
}
