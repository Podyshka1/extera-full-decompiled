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
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseSurfaceManager$setupAsync$1$deferred$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ List $deferrableSurfaces;
    final /* synthetic */ CameraGraph $graph;
    final /* synthetic */ SessionConfigAdapter $sessionConfigAdapter;
    final /* synthetic */ Map $surfaceToStreamMap;
    final /* synthetic */ long $timeoutMillis;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ UseCaseSurfaceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseSurfaceManager$setupAsync$1$deferred$1(SessionConfigAdapter sessionConfigAdapter, UseCaseSurfaceManager useCaseSurfaceManager, List list, long j, Map map, CameraGraph cameraGraph, Continuation continuation) {
        super(2, continuation);
        this.$sessionConfigAdapter = sessionConfigAdapter;
        this.this$0 = useCaseSurfaceManager;
        this.$deferrableSurfaces = list;
        this.$timeoutMillis = j;
        this.$surfaceToStreamMap = map;
        this.$graph = cameraGraph;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        UseCaseSurfaceManager$setupAsync$1$deferred$1 useCaseSurfaceManager$setupAsync$1$deferred$1 = new UseCaseSurfaceManager$setupAsync$1$deferred$1(this.$sessionConfigAdapter, this.this$0, this.$deferrableSurfaces, this.$timeoutMillis, this.$surfaceToStreamMap, this.$graph, continuation);
        useCaseSurfaceManager$setupAsync$1$deferred$1.L$0 = obj;
        return useCaseSurfaceManager$setupAsync$1$deferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
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
                    throw new IllegalStateException("Check failed.");
                }
                UseCaseSurfaceManager useCaseSurfaceManager = this.this$0;
                List list = this.$deferrableSurfaces;
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
                this.$sessionConfigAdapter.reportSurfaceInvalid((DeferrableSurface) this.$deferrableSurfaces.get(list2.indexOf(null)));
                return Boxing.boxBoolean(false);
            }
            Object obj2 = this.this$0.lock;
            UseCaseSurfaceManager useCaseSurfaceManager2 = this.this$0;
            List list3 = this.$deferrableSurfaces;
            synchronized (obj2) {
                try {
                    List list4 = list3;
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
            Map map = this.$surfaceToStreamMap;
            List list5 = this.$deferrableSurfaces;
            CameraGraph cameraGraph = this.$graph;
            UseCaseSurfaceManager useCaseSurfaceManager3 = this.this$0;
            for (Map.Entry entry : map.entrySet()) {
                int iM1792unboximpl = ((StreamId) entry.getValue()).m1792unboximpl();
                Surface surface = (Surface) list2.get(list5.indexOf(entry.getKey()));
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + surface + " for " + ((Object) StreamId.m1791toStringimpl(iM1792unboximpl)));
                }
                cameraGraph.mo1601setSurfaceNYG5g8E(iM1792unboximpl, surface);
                useCaseSurfaceManager3.inactiveSurfaceCloser.mo1414configurehB7JTeY(iM1792unboximpl, (DeferrableSurface) entry.getKey(), cameraGraph);
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
            SessionConfigAdapter sessionConfigAdapter = this.$sessionConfigAdapter;
            DeferrableSurface deferrableSurface = e.getDeferrableSurface();
            Intrinsics.checkNotNullExpressionValue(deferrableSurface, "getDeferrableSurface(...)");
            sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface);
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
