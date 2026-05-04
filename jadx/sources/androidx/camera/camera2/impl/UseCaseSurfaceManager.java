package androidx.camera.camera2.impl;

import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes3.dex */
public class UseCaseSurfaceManager implements CameraSurfaceManager.SurfaceListener {
    private final Map activeSurfaceMap;
    private final CameraPipe cameraPipe;
    private Map configuredSurfaceMap;
    private final InactiveSurfaceCloser inactiveSurfaceCloser;
    private final Object lock;
    private final SessionConfigAdapter sessionConfigAdapter;
    private Deferred setupDeferred;
    private CompletableDeferred stopDeferred;
    private final UseCaseThreads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1 */
    static final class C01771 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01771(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseSurfaceManager.awaitSetupCompletion$suspendImpl(UseCaseSurfaceManager.this, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1 */
    static final class C01781 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01781(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseSurfaceManager.this.getSurfaces(null, 0L, this);
        }
    }

    public Object awaitSetupCompletion(Continuation continuation) {
        return awaitSetupCompletion$suspendImpl(this, continuation);
    }

    public UseCaseSurfaceManager(UseCaseThreads threads, CameraPipe cameraPipe, InactiveSurfaceCloser inactiveSurfaceCloser, SessionConfigAdapter sessionConfigAdapter) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraPipe, "cameraPipe");
        Intrinsics.checkNotNullParameter(inactiveSurfaceCloser, "inactiveSurfaceCloser");
        Intrinsics.checkNotNullParameter(sessionConfigAdapter, "sessionConfigAdapter");
        this.threads = threads;
        this.cameraPipe = cameraPipe;
        this.inactiveSurfaceCloser = inactiveSurfaceCloser;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.lock = new Object();
        this.activeSurfaceMap = new LinkedHashMap();
    }

    public static /* synthetic */ Deferred setupAsync$default(UseCaseSurfaceManager useCaseSurfaceManager, CameraGraph cameraGraph, SessionConfigAdapter sessionConfigAdapter, Map map, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setupAsync");
        }
        if ((i & 8) != 0) {
            j = 5000;
        }
        return useCaseSurfaceManager.setupAsync(cameraGraph, sessionConfigAdapter, map, j);
    }

    public final Deferred setupAsync(CameraGraph graph, SessionConfigAdapter sessionConfigAdapter, Map surfaceToStreamMap, long j) {
        Deferred deferredCompletableDeferred;
        Intrinsics.checkNotNullParameter(graph, "graph");
        Intrinsics.checkNotNullParameter(sessionConfigAdapter, "sessionConfigAdapter");
        Intrinsics.checkNotNullParameter(surfaceToStreamMap, "surfaceToStreamMap");
        synchronized (this.lock) {
            try {
                if (this.setupDeferred != null) {
                    throw new IllegalStateException("Surfaces should only be set up once!");
                }
                if (this.stopDeferred != null) {
                    throw new IllegalStateException("Surfaces being setup after stopped!");
                }
                if (this.configuredSurfaceMap != null) {
                    throw new IllegalStateException("Check failed.");
                }
                final List deferrableSurfaces = sessionConfigAdapter.getDeferrableSurfaces();
                try {
                    DeferrableSurfaces.incrementAll(deferrableSurfaces);
                    deferredCompletableDeferred = BuildersKt__Builders_commonKt.async$default(this.threads.getScope(), null, null, new UseCaseSurfaceManager$setupAsync$1$deferred$1(sessionConfigAdapter, this, deferrableSurfaces, j, surfaceToStreamMap, graph, null), 3, null);
                    deferredCompletableDeferred.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.UseCaseSurfaceManager$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return UseCaseSurfaceManager.setupAsync$lambda$0$3$0(deferrableSurfaces, (Throwable) obj);
                        }
                    });
                    this.setupDeferred = deferredCompletableDeferred;
                } catch (DeferrableSurface.SurfaceClosedException e) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled("CXCP")) {
                        Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to increment DeferrableSurfaces: Surfaces closed");
                    }
                    BuildersKt__Builders_commonKt.launch$default(this.threads.getScope(), null, null, new UseCaseSurfaceManager$setupAsync$1$4(sessionConfigAdapter, e, null), 3, null);
                    deferredCompletableDeferred = CompletableDeferredKt.CompletableDeferred(Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return deferredCompletableDeferred;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupAsync$lambda$0$3$0(List list, Throwable th) {
        DeferrableSurfaces.decrementAll(list);
        return Unit.INSTANCE;
    }

    public final Deferred stopAsync() {
        CompletableDeferred completableDeferredCompletableDeferred$default;
        synchronized (this.lock) {
            try {
                completableDeferredCompletableDeferred$default = this.stopDeferred;
                if (completableDeferredCompletableDeferred$default != null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled("CXCP")) {
                        Log.w(Camera2Logger.TRUNCATED_TAG, "UseCaseSurfaceManager is already stopping!");
                    }
                } else {
                    Deferred deferred = this.setupDeferred;
                    if (deferred != null) {
                        Job.DefaultImpls.cancel$default(deferred, null, 1, null);
                    }
                    this.inactiveSurfaceCloser.closeAll();
                    this.configuredSurfaceMap = null;
                    completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                    this.stopDeferred = completableDeferredCompletableDeferred$default;
                    tryClearSurfaceListener();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static /* synthetic */ Object awaitSetupCompletion$suspendImpl(UseCaseSurfaceManager useCaseSurfaceManager, Continuation continuation) {
        C01771 c01771;
        if (continuation instanceof C01771) {
            c01771 = (C01771) continuation;
            int i = c01771.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01771.label = i - Integer.MIN_VALUE;
            } else {
                c01771 = useCaseSurfaceManager.new C01771(continuation);
            }
        }
        Object obj = c01771.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01771.label;
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            synchronized (useCaseSurfaceManager.lock) {
                Deferred deferred = useCaseSurfaceManager.setupDeferred;
                if (deferred == null || useCaseSurfaceManager.stopDeferred != null) {
                    return Boxing.boxBoolean(false);
                }
                c01771.label = 1;
                Object objAwait = deferred.await(c01771);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            }
        } catch (CancellationException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Surface setup was cancelled");
            }
            return Boxing.boxBoolean(false);
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraSurfaceManager.SurfaceListener
    public void onSurfaceActive(Surface surface) {
        DeferrableSurface deferrableSurface;
        Intrinsics.checkNotNullParameter(surface, "surface");
        synchronized (this.lock) {
            try {
                Map map = this.configuredSurfaceMap;
                if (map != null && (deferrableSurface = (DeferrableSurface) map.get(surface)) != null) {
                    if (!this.activeSurfaceMap.containsKey(surface)) {
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "SurfaceActive " + deferrableSurface + " in " + this);
                        }
                        this.activeSurfaceMap.put(surface, deferrableSurface);
                        try {
                            deferrableSurface.incrementUseCount();
                        } catch (DeferrableSurface.SurfaceClosedException e) {
                            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                            if (Logger.isWarnEnabled("CXCP")) {
                                Log.w(Camera2Logger.TRUNCATED_TAG, "Error when " + surface + " going to increase the use count.", e);
                            }
                            SessionConfigAdapter sessionConfigAdapter = this.sessionConfigAdapter;
                            DeferrableSurface deferrableSurface2 = e.getDeferrableSurface();
                            Intrinsics.checkNotNullExpressionValue(deferrableSurface2, "getDeferrableSurface(...)");
                            sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface2);
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraSurfaceManager.SurfaceListener
    public void onSurfaceInactive(Surface surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        synchronized (this.lock) {
            try {
                DeferrableSurface deferrableSurface = (DeferrableSurface) this.activeSurfaceMap.remove(surface);
                if (deferrableSurface != null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "SurfaceInactive " + deferrableSurface + " in " + this);
                    }
                    this.inactiveSurfaceCloser.onSurfaceInactive(deferrableSurface);
                    try {
                        deferrableSurface.decrementUseCount();
                    } catch (IllegalStateException e) {
                        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                        if (Logger.isWarnEnabled("CXCP")) {
                            Log.w(Camera2Logger.TRUNCATED_TAG, "Error when " + surface + " going to decrease the use count.", e);
                        }
                    }
                    tryClearSurfaceListener();
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSurfaceListener() {
        this.cameraPipe.cameraSurfaceManager().addListener(this);
    }

    private final void tryClearSurfaceListener() {
        synchronized (this.lock) {
            try {
                if (this.activeSurfaceMap.isEmpty() && this.configuredSurfaceMap == null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, this + " remove surface listener");
                    }
                    this.cameraPipe.cameraSurfaceManager().removeListener(this);
                    CompletableDeferred completableDeferred = this.stopDeferred;
                    if (completableDeferred != null) {
                        completableDeferred.complete(Unit.INSTANCE);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object getSurfaces(List list, long j, Continuation continuation) {
        C01781 c01781;
        if (continuation instanceof C01781) {
            c01781 = (C01781) continuation;
            int i = c01781.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01781.label = i - Integer.MIN_VALUE;
            } else {
                c01781 = new C01781(continuation);
            }
        }
        Object objWithTimeoutOrNull = c01781.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01781.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
            C01792 c01792 = new C01792(list, null);
            c01781.label = 1;
            objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(j, c01792, c01781);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
        }
        List list2 = (List) objWithTimeoutOrNull;
        return list2 == null ? CollectionsKt.emptyList() : list2;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$2 */
    static final class C01792 extends SuspendLambda implements Function2 {
        final /* synthetic */ List $deferrableSurfaces;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01792(List list, Continuation continuation) {
            super(2, continuation);
            this.$deferrableSurfaces = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01792(this.$deferrableSurfaces, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01792) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            List list = this.$deferrableSurfaces;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Futures.nonCancellationPropagating(((DeferrableSurface) it.next()).getSurface()));
            }
            ListenableFuture listenableFutureSuccessfulAsList = Futures.successfulAsList(arrayList);
            Intrinsics.checkNotNullExpressionValue(listenableFutureSuccessfulAsList, "successfulAsList(...)");
            this.label = 1;
            Object objAwait = ListenableFutureKt.await(listenableFutureSuccessfulAsList, this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean areValid(List list) {
        return (list.isEmpty() || list.contains(null)) ? false : true;
    }
}
