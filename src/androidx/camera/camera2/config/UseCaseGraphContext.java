package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001BW\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\u0002\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r\u0018\u00010\t¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u00162\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u0013R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001bR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001cR&\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001aR\"\u0010\u001f\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u00030\u00030\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R'\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r0\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010 \u001a\u0004\b\"\u0010#R\u001b\u0010)\u001a\u00020\u00038FX\u0086\u0084\u0002¢\u0006\f\u001a\u0004\b%\u0010&*\u0004\b'\u0010(¨\u0006*"}, d2 = {"Landroidx/camera/camera2/config/UseCaseGraphContext;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljavax/inject/Provider;", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraphProvider", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "cameraStateAdapter", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "graphStateToCameraStateAdapter", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream$Config;", "Landroidx/camera/core/impl/DeferrableSurface;", "streamConfigMapProvider", "Landroidx/camera/camera2/pipe/StreamId;", "defaultSurfaceToStreamMap", "<init>", "(Ljavax/inject/Provider;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljavax/inject/Provider;Ljava/util/Map;)V", _UrlKt.FRAGMENT_ENCODE_SET, "closeGraph", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "deferrableSurfaces", _UrlKt.FRAGMENT_ENCODE_SET, "getStreamIdsFromSurfaces", "(Ljava/util/Collection;)Ljava/util/Set;", "configureCameraStateListener", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "Lkotlin/Lazy;", "kotlin.jvm.PlatformType", "_graph", "Lkotlin/Lazy;", "surfaceToStreamMap$delegate", "getSurfaceToStreamMap", "()Ljava/util/Map;", "surfaceToStreamMap", "getGraph", "()Landroidx/camera/camera2/pipe/CameraGraph;", "getGraph$delegate", "(Landroidx/camera/camera2/config/UseCaseGraphContext;)Ljava/lang/Object;", "graph", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseCameraConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,261:1\n1869#2:262\n1870#2:264\n1#3:263\n216#4,2:265\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n*L\n230#1:262\n230#1:264\n213#1:265,2\n*E\n"})
public final class UseCaseGraphContext {
    private final Lazy<CameraGraph> _graph;
    private final Provider<CameraGraph> cameraGraphProvider;
    private final CameraStateAdapter cameraStateAdapter;
    private final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    private final Provider<Map<CameraStream.Config, DeferrableSurface>> streamConfigMapProvider;

    /* JADX INFO: renamed from: surfaceToStreamMap$delegate, reason: from kotlin metadata */
    private final Lazy surfaceToStreamMap;

    public UseCaseGraphContext(Provider<CameraGraph> provider, CameraStateAdapter cameraStateAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Provider<Map<CameraStream.Config, DeferrableSurface>> provider2, final Map<DeferrableSurface, StreamId> map) {
        this.cameraGraphProvider = provider;
        this.cameraStateAdapter = cameraStateAdapter;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.streamConfigMapProvider = provider2;
        this._graph = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.cameraGraphProvider.get();
            }
        });
        this.surfaceToStreamMap = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseGraphContext.$r8$lambda$F3E2j3PZZTemDi6FKnCj8rRWPTg(map, this);
            }
        });
    }

    public /* synthetic */ UseCaseGraphContext(Provider provider, CameraStateAdapter cameraStateAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Provider provider2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(provider, cameraStateAdapter, graphStateToCameraStateAdapter, provider2, (i & 16) != 0 ? null : map);
    }

    public final CameraGraph getGraph() {
        return this._graph.getValue();
    }

    public final Map<DeferrableSurface, StreamId> getSurfaceToStreamMap() {
        return (Map) this.surfaceToStreamMap.getValue();
    }

    public static Map $r8$lambda$F3E2j3PZZTemDi6FKnCj8rRWPTg(Map map, UseCaseGraphContext useCaseGraphContext) {
        if (map != null) {
            return map;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<CameraStream.Config, DeferrableSurface> entry : useCaseGraphContext.streamConfigMapProvider.get().entrySet()) {
            CameraStream.Config key = entry.getKey();
            DeferrableSurface value = entry.getValue();
            CameraStream cameraStream = useCaseGraphContext.getGraph().getStreams().get(key);
            if (cameraStream != null) {
                linkedHashMap.put(value, StreamId.m1472boximpl(cameraStream.getId()));
            }
        }
        return MapsKt.toMap(linkedHashMap);
    }

    public final void closeGraph() throws Exception {
        if (this._graph.isInitialized()) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(getGraph());
        }
    }

    public final Set<StreamId> getStreamIdsFromSurfaces(Collection<? extends DeferrableSurface> deferrableSurfaces) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = deferrableSurfaces.iterator();
        while (it.hasNext()) {
            StreamId streamId = getSurfaceToStreamMap().get((DeferrableSurface) it.next());
            if (streamId != null) {
                linkedHashSet.add(StreamId.m1472boximpl(streamId.getValue()));
            }
        }
        return linkedHashSet;
    }

    public final void configureCameraStateListener() {
        this.graphStateToCameraStateAdapter.setCameraGraph(getGraph());
        this.cameraStateAdapter.onGraphUpdated(getGraph());
    }
}
