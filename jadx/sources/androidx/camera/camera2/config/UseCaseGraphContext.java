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
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseGraphContext {
    private final Lazy _graph;
    private final Provider cameraGraphProvider;
    private final CameraStateAdapter cameraStateAdapter;
    private final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    private final Provider streamConfigMapProvider;
    private final Lazy surfaceToStreamMap$delegate;

    public UseCaseGraphContext(Provider cameraGraphProvider, CameraStateAdapter cameraStateAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Provider streamConfigMapProvider, final Map map) {
        Intrinsics.checkNotNullParameter(cameraGraphProvider, "cameraGraphProvider");
        Intrinsics.checkNotNullParameter(cameraStateAdapter, "cameraStateAdapter");
        Intrinsics.checkNotNullParameter(graphStateToCameraStateAdapter, "graphStateToCameraStateAdapter");
        Intrinsics.checkNotNullParameter(streamConfigMapProvider, "streamConfigMapProvider");
        this.cameraGraphProvider = cameraGraphProvider;
        this.cameraStateAdapter = cameraStateAdapter;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.streamConfigMapProvider = streamConfigMapProvider;
        this._graph = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseGraphContext._graph$lambda$0(this.f$0);
            }
        });
        this.surfaceToStreamMap$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseGraphContext.surfaceToStreamMap_delegate$lambda$0(map, this);
            }
        });
    }

    public /* synthetic */ UseCaseGraphContext(Provider provider, CameraStateAdapter cameraStateAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, Provider provider2, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(provider, cameraStateAdapter, graphStateToCameraStateAdapter, provider2, (i & 16) != 0 ? null : map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph _graph$lambda$0(UseCaseGraphContext useCaseGraphContext) {
        return (CameraGraph) useCaseGraphContext.cameraGraphProvider.get();
    }

    public final CameraGraph getGraph() {
        Object value = this._graph.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (CameraGraph) value;
    }

    public final Map getSurfaceToStreamMap() {
        return (Map) this.surfaceToStreamMap$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map surfaceToStreamMap_delegate$lambda$0(Map map, UseCaseGraphContext useCaseGraphContext) {
        if (map != null) {
            return map;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object obj = useCaseGraphContext.streamConfigMapProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            CameraStream.Config config = (CameraStream.Config) entry.getKey();
            DeferrableSurface deferrableSurface = (DeferrableSurface) entry.getValue();
            CameraStream cameraStream = useCaseGraphContext.getGraph().getStreams().get(config);
            if (cameraStream != null) {
                linkedHashMap.put(deferrableSurface, StreamId.m1786boximpl(cameraStream.m1616getIdptHMqGs()));
            }
        }
        return MapsKt.toMap(linkedHashMap);
    }

    public final void closeGraph() throws Exception {
        if (this._graph.isInitialized()) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(getGraph());
        }
    }

    public final Set getStreamIdsFromSurfaces(Collection deferrableSurfaces) {
        Intrinsics.checkNotNullParameter(deferrableSurfaces, "deferrableSurfaces");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = deferrableSurfaces.iterator();
        while (it.hasNext()) {
            StreamId streamId = (StreamId) getSurfaceToStreamMap().get((DeferrableSurface) it.next());
            if (streamId != null) {
                linkedHashSet.add(StreamId.m1786boximpl(streamId.m1792unboximpl()));
            }
        }
        return linkedHashSet;
    }

    public final void configureCameraStateListener() {
        this.graphStateToCameraStateAdapter.setCameraGraph(getGraph());
        this.cameraStateAdapter.onGraphUpdated(getGraph());
    }
}
