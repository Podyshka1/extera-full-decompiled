package androidx.camera.camera2.impl;

import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.android.dx.io.Opcodes;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutKt;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ:\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u001e0\u00162\b\b\u0002\u0010\u001f\u001a\u00020 J\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00190\u000fJ\u000e\u0010\"\u001a\u00020\u0010H\u0096@¢\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0013H\u0016J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0013H\u0016J\b\u0010'\u001a\u00020\u0019H\u0003J\b\u0010(\u001a\u00020\u0019H\u0003J,\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130*2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00140*2\u0006\u0010\u001f\u001a\u00020 H\u0082@¢\u0006\u0002\u0010,J\u0014\u0010-\u001a\u00020\u0010*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130*H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00168\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00188\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Landroidx/camera/camera2/impl/UseCaseSurfaceManager;", "Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceListener;", "threads", "Landroidx/camera/camera2/impl/UseCaseThreads;", "cameraPipe", "Landroidx/camera/camera2/pipe/CameraPipe;", "inactiveSurfaceCloser", "Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;", "sessionConfigAdapter", "Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "<init>", "(Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;Landroidx/camera/camera2/adapter/SessionConfigAdapter;)V", "lock", _UrlKt.FRAGMENT_ENCODE_SET, "setupDeferred", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "activeSurfaceMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Surface;", "Landroidx/camera/core/impl/DeferrableSurface;", "configuredSurfaceMap", _UrlKt.FRAGMENT_ENCODE_SET, "stopDeferred", "Lkotlinx/coroutines/CompletableDeferred;", _UrlKt.FRAGMENT_ENCODE_SET, "setupAsync", "graph", "Landroidx/camera/camera2/pipe/CameraGraph;", "surfaceToStreamMap", "Landroidx/camera/camera2/pipe/StreamId;", "timeoutMillis", _UrlKt.FRAGMENT_ENCODE_SET, "stopAsync", "awaitSetupCompletion", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onSurfaceActive", "surface", "onSurfaceInactive", "setSurfaceListener", "tryClearSurfaceListener", "getSurfaces", _UrlKt.FRAGMENT_ENCODE_SET, "deferrableSurfaces", "(Ljava/util/List;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "areValid", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseSurfaceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseSurfaceManager.kt\nandroidx/camera/camera2/impl/UseCaseSurfaceManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,269:1\n1#2:270\n119#3,4:271\n119#3,4:275\n119#3,4:279\n85#3,4:283\n129#3,4:287\n85#3,4:291\n129#3,4:295\n85#3,4:299\n*S KotlinDebug\n*F\n+ 1 UseCaseSurfaceManager.kt\nandroidx/camera/camera2/impl/UseCaseSurfaceManager\n*L\n82#1:271,4\n158#1:275,4\n195#1:279,4\n204#1:283,4\n209#1:287,4\n222#1:291,4\n227#1:295,4\n243#1:299,4\n*E\n"})
public class UseCaseSurfaceManager implements CameraSurfaceManager.SurfaceListener {
    private final CameraPipe cameraPipe;
    private Map<Surface, ? extends DeferrableSurface> configuredSurfaceMap;
    private final InactiveSurfaceCloser inactiveSurfaceCloser;
    private final SessionConfigAdapter sessionConfigAdapter;
    private Deferred<Boolean> setupDeferred;
    private CompletableDeferred<Unit> stopDeferred;
    private final UseCaseThreads threads;
    private final Object lock = new Object();
    private final Map<Surface, DeferrableSurface> activeSurfaceMap = new LinkedHashMap();

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1 */
    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseSurfaceManager", m873f = "UseCaseSurfaceManager.kt", m874i = {}, m875l = {193}, m876m = "awaitSetupCompletion$suspendImpl", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01821 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01821(Continuation<? super C01821> continuation) {
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
    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseSurfaceManager", m873f = "UseCaseSurfaceManager.kt", m874i = {}, m875l = {Opcodes.CONST_METHOD_HANDLE}, m876m = "getSurfaces", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01831 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01831(Continuation<? super C01831> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseSurfaceManager.this.getSurfaces(null, 0L, this);
        }
    }

    public Object awaitSetupCompletion(Continuation<? super Boolean> continuation) {
        return awaitSetupCompletion$suspendImpl(this, continuation);
    }

    public UseCaseSurfaceManager(UseCaseThreads useCaseThreads, CameraPipe cameraPipe, InactiveSurfaceCloser inactiveSurfaceCloser, SessionConfigAdapter sessionConfigAdapter) {
        this.threads = useCaseThreads;
        this.cameraPipe = cameraPipe;
        this.inactiveSurfaceCloser = inactiveSurfaceCloser;
        this.sessionConfigAdapter = sessionConfigAdapter;
    }

    public static /* synthetic */ Deferred setupAsync$default(UseCaseSurfaceManager useCaseSurfaceManager, CameraGraph cameraGraph, SessionConfigAdapter sessionConfigAdapter, Map map, long j, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: setupAsync");
            return null;
        }
        if ((i & 8) != 0) {
            j = 5000;
        }
        return useCaseSurfaceManager.setupAsync(cameraGraph, sessionConfigAdapter, map, j);
    }

    public final Deferred<Boolean> setupAsync(CameraGraph graph, SessionConfigAdapter sessionConfigAdapter, Map<DeferrableSurface, StreamId> surfaceToStreamMap, long timeoutMillis) {
        Deferred<Boolean> deferredCompletableDeferred;
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
                final List<DeferrableSurface> deferrableSurfaces = sessionConfigAdapter.getDeferrableSurfaces();
                try {
                    DeferrableSurfaces.incrementAll(deferrableSurfaces);
                    deferredCompletableDeferred = BuildersKt__Builders_commonKt.async$default(this.threads.getScope(), null, null, new UseCaseSurfaceManager$setupAsync$1$deferred$1(sessionConfigAdapter, this, deferrableSurfaces, timeoutMillis, surfaceToStreamMap, graph, null), 3, null);
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

    public final Deferred<Unit> stopAsync() {
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default;
        synchronized (this.lock) {
            try {
                completableDeferredCompletableDeferred$default = this.stopDeferred;
                if (completableDeferredCompletableDeferred$default != null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled("CXCP")) {
                        Log.w(Camera2Logger.TRUNCATED_TAG, "UseCaseSurfaceManager is already stopping!");
                    }
                } else {
                    Deferred<Boolean> deferred = this.setupDeferred;
                    if (deferred != null) {
                        Job.cancel$default(deferred, null, 1, null);
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
    public static /* synthetic */ Object awaitSetupCompletion$suspendImpl(UseCaseSurfaceManager useCaseSurfaceManager, Continuation<? super Boolean> continuation) {
        C01821 c01821;
        if (continuation instanceof C01821) {
            c01821 = (C01821) continuation;
            int i = c01821.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01821.label = i - Integer.MIN_VALUE;
            } else {
                c01821 = useCaseSurfaceManager.new C01821(continuation);
            }
        }
        Object obj = c01821.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01821.label;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            synchronized (useCaseSurfaceManager.lock) {
                Deferred<Boolean> deferred = useCaseSurfaceManager.setupDeferred;
                if (deferred == null || useCaseSurfaceManager.stopDeferred != null) {
                    return Boxing.boxBoolean(false);
                }
                c01821.label = 1;
                Object objAwait = deferred.await(c01821);
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
        synchronized (this.lock) {
            try {
                Map<Surface, ? extends DeferrableSurface> map = this.configuredSurfaceMap;
                if (map != null && (deferrableSurface = map.get(surface)) != null) {
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
                            this.sessionConfigAdapter.reportSurfaceInvalid(e.getDeferrableSurface());
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
        synchronized (this.lock) {
            try {
                DeferrableSurface deferrableSurfaceRemove = this.activeSurfaceMap.remove(surface);
                if (deferrableSurfaceRemove != null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "SurfaceInactive " + deferrableSurfaceRemove + " in " + this);
                    }
                    this.inactiveSurfaceCloser.onSurfaceInactive(deferrableSurfaceRemove);
                    try {
                        deferrableSurfaceRemove.decrementUseCount();
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
                    CompletableDeferred<Unit> completableDeferred = this.stopDeferred;
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
    public final Object getSurfaces(List<? extends DeferrableSurface> list, long j, Continuation<? super List<? extends Surface>> continuation) {
        C01831 c01831;
        if (continuation instanceof C01831) {
            c01831 = (C01831) continuation;
            int i = c01831.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01831.label = i - Integer.MIN_VALUE;
            } else {
                c01831 = new C01831(continuation);
            }
        }
        Object objWithTimeoutOrNull = c01831.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01831.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
            C01842 c01842 = new C01842(list, null);
            c01831.label = 1;
            objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(j, c01842, c01831);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objWithTimeoutOrNull);
        }
        List list2 = (List) objWithTimeoutOrNull;
        return list2 == null ? CollectionsKt.emptyList() : list2;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$2 */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00040\u0001*\u00020\u0005H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Surface;", "kotlin.jvm.PlatformType", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$2", m873f = "UseCaseSurfaceManager.kt", m874i = {}, m875l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    @SourceDebugExtension({"SMAP\nUseCaseSurfaceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseSurfaceManager.kt\nandroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n1563#2:270\n1634#2,3:271\n*S KotlinDebug\n*F\n+ 1 UseCaseSurfaceManager.kt\nandroidx/camera/camera2/impl/UseCaseSurfaceManager$getSurfaces$2\n*L\n256#1:270\n256#1:271,3\n*E\n"})
    public static final class C01842 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<Surface>>, Object> {
        final /* synthetic */ List<DeferrableSurface> $deferrableSurfaces;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C01842(List<? extends DeferrableSurface> list, Continuation<? super C01842> continuation) {
            super(2, continuation);
            this.$deferrableSurfaces = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01842(this.$deferrableSurfaces, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<Surface>> continuation) {
            return ((C01842) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            List<DeferrableSurface> list = this.$deferrableSurfaces;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Futures.nonCancellationPropagating(((DeferrableSurface) it.next()).getSurface()));
            }
            ListenableFuture listenableFutureSuccessfulAsList = Futures.successfulAsList(arrayList);
            this.label = 1;
            Object objAwait = ListenableFutureKt.await(listenableFutureSuccessfulAsList, this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean areValid(List<? extends Surface> list) {
        return (list.isEmpty() || list.contains(null)) ? false : true;
    }
}
