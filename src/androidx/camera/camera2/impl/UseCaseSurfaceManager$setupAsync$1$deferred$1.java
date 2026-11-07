package androidx.camera.camera2.impl;

import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.TimeoutCancellationException;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$setupAsync$1$deferred$1", m873f = "UseCaseSurfaceManager.kt", m874i = {0}, m875l = {97}, m876m = "invokeSuspend", m877n = {"$this$async"}, m878s = {"L$0"}, m879v = 1)
@SourceDebugExtension({"SMAP\nUseCaseSurfaceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseSurfaceManager.kt\nandroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,269:1\n129#2,4:270\n119#2,4:274\n102#2,4:278\n85#2,4:289\n102#2,4:294\n119#2,4:298\n1208#3,2:282\n1236#3,4:284\n216#4:288\n217#4:293\n*S KotlinDebug\n*F\n+ 1 UseCaseSurfaceManager.kt\nandroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1\n*L\n99#1:270,4\n103#1:274,4\n109#1:278,4\n128#1:289,4\n132#1:294,4\n135#1:298,4\n117#1:282,2\n117#1:284,4\n125#1:288\n125#1:293\n*E\n"})
public final class UseCaseSurfaceManager$setupAsync$1$deferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ List<DeferrableSurface> $deferrableSurfaces;
    final /* synthetic */ CameraGraph $graph;
    final /* synthetic */ SessionConfigAdapter $sessionConfigAdapter;
    final /* synthetic */ Map<DeferrableSurface, StreamId> $surfaceToStreamMap;
    final /* synthetic */ long $timeoutMillis;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ UseCaseSurfaceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UseCaseSurfaceManager$setupAsync$1$deferred$1(SessionConfigAdapter sessionConfigAdapter, UseCaseSurfaceManager useCaseSurfaceManager, List<? extends DeferrableSurface> list, long j, Map<DeferrableSurface, StreamId> map, CameraGraph cameraGraph, Continuation<? super UseCaseSurfaceManager$setupAsync$1$deferred$1> continuation) {
        super(2, continuation);
        this.$sessionConfigAdapter = sessionConfigAdapter;
        this.this$0 = useCaseSurfaceManager;
        this.$deferrableSurfaces = list;
        this.$timeoutMillis = j;
        this.$surfaceToStreamMap = map;
        this.$graph = cameraGraph;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UseCaseSurfaceManager$setupAsync$1$deferred$1 useCaseSurfaceManager$setupAsync$1$deferred$1 = new UseCaseSurfaceManager$setupAsync$1$deferred$1(this.$sessionConfigAdapter, this.this$0, this.$deferrableSurfaces, this.$timeoutMillis, this.$surfaceToStreamMap, this.$graph, continuation);
        useCaseSurfaceManager$setupAsync$1$deferred$1.L$0 = obj;
        return useCaseSurfaceManager$setupAsync$1$deferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((UseCaseSurfaceManager$setupAsync$1$deferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                if (!this.$sessionConfigAdapter.isSessionConfigValid()) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                    return null;
                }
                UseCaseSurfaceManager useCaseSurfaceManager = this.this$0;
                List<DeferrableSurface> list = this.$deferrableSurfaces;
                long j = this.$timeoutMillis;
                this.L$0 = coroutineScope2;
                this.label = 1;
                Object surfaces = useCaseSurfaceManager.getSurfaces(list, j, this);
                if (surfaces == coroutine_suspended) {
                    return coroutine_suspended;
                }
                coroutineScope = coroutineScope2;
                obj = surfaces;
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            List list2 = (List) obj;
            if (!CoroutineScopeKt.isActive(coroutineScope) || list2.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isInfoEnabled("CXCP")) {
                    Log.i(Camera2Logger.TRUNCATED_TAG, "Failed to get Surfaces: isActive=" + CoroutineScopeKt.isActive(coroutineScope) + ", surfaces=" + list2);
                }
                return Boxing.boxBoolean(false);
            }
            if (!this.this$0.areValid(list2)) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Surface setup failed: Some Surfaces are invalid");
                }
                this.$sessionConfigAdapter.reportSurfaceInvalid(this.$deferrableSurfaces.get(list2.indexOf(null)));
                return Boxing.boxBoolean(false);
            }
            Object obj2 = this.this$0.lock;
            UseCaseSurfaceManager useCaseSurfaceManager2 = this.this$0;
            List<DeferrableSurface> list3 = this.$deferrableSurfaces;
            synchronized (obj2) {
                try {
                    List<DeferrableSurface> list4 = list3;
                    LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list4, 10)), 16));
                    for (Object obj3 : list4) {
                        Object obj4 = list2.get(list3.indexOf((DeferrableSurface) obj3));
                        if (obj4 == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        linkedHashMap.put((Surface) obj4, obj3);
                    }
                    useCaseSurfaceManager2.configuredSurfaceMap = linkedHashMap;
                    useCaseSurfaceManager2.setSurfaceListener();
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Map<DeferrableSurface, StreamId> map = this.$surfaceToStreamMap;
            List<DeferrableSurface> list5 = this.$deferrableSurfaces;
            CameraGraph cameraGraph = this.$graph;
            UseCaseSurfaceManager useCaseSurfaceManager3 = this.this$0;
            for (Map.Entry<DeferrableSurface, StreamId> entry : map.entrySet()) {
                int value = entry.getValue().getValue();
                Surface surface = (Surface) list2.get(list5.indexOf(entry.getKey()));
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + surface + " for " + ((Object) StreamId.m1477toStringimpl(value)));
                }
                cameraGraph.mo1297setSurfaceNYG5g8E(value, surface);
                useCaseSurfaceManager3.inactiveSurfaceCloser.mo1105configurehB7JTeY(value, entry.getKey(), cameraGraph);
            }
            Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled("CXCP")) {
                Log.i(Camera2Logger.TRUNCATED_TAG, "Surface setup complete");
            }
            return Boxing.boxBoolean(true);
        } catch (DeferrableSurface.SurfaceClosedException e) {
            Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get Surfaces: Surfaces closed", e);
            }
            this.$sessionConfigAdapter.reportSurfaceInvalid(e.getDeferrableSurface());
            return Boxing.boxBoolean(false);
        } catch (TimeoutCancellationException unused) {
            Camera2Logger camera2Logger6 = Camera2Logger.INSTANCE;
            long j2 = this.$timeoutMillis;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get Surfaces within " + j2 + " ms");
            }
            return Boxing.boxBoolean(false);
        }
    }
}
