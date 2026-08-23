package androidx.camera.camera2.pipe.internal;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendFactory;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraBackendsImpl implements CameraBackends {
    private final Map activeCameraBackends;
    private final Map cameraBackends;
    private final Context cameraPipeContext;

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private final CameraBackend f2280default;
    private final String defaultBackendId;
    private final Object lock;
    private final Threads threads;

    public /* synthetic */ CameraBackendsImpl(String str, Map map, Context context, Threads threads, CameraPipeLifetime cameraPipeLifetime, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, map, context, threads, cameraPipeLifetime);
    }

    private CameraBackendsImpl(String defaultBackendId, Map cameraBackends, Context cameraPipeContext, Threads threads, CameraPipeLifetime cameraPipeLifetime) {
        Intrinsics.checkNotNullParameter(defaultBackendId, "defaultBackendId");
        Intrinsics.checkNotNullParameter(cameraBackends, "cameraBackends");
        Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraPipeLifetime, "cameraPipeLifetime");
        this.defaultBackendId = defaultBackendId;
        this.cameraBackends = cameraBackends;
        this.cameraPipeContext = cameraPipeContext;
        this.threads = threads;
        this.lock = new Object();
        this.activeCameraBackends = new LinkedHashMap();
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.CAMERA, new Runnable() { // from class: androidx.camera.camera2.pipe.internal.CameraBackendsImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CameraBackendsImpl._init_$lambda$0(this.f$0);
            }
        });
        CameraBackend cameraBackendMo1533getSG3A4s8 = mo1533getSG3A4s8(defaultBackendId);
        if (cameraBackendMo1533getSG3A4s8 != null) {
            this.f2280default = cameraBackendMo1533getSG3A4s8;
            return;
        }
        throw new IllegalStateException(("Failed to load the default backend for " + ((Object) CameraBackendId.m1531toStringimpl(defaultBackendId)) + "! Available backends are " + cameraBackends.keySet()).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(CameraBackendsImpl cameraBackendsImpl) {
        BuildersKt__BuildersKt.runBlocking$default(null, new CameraBackendsImpl$1$1(cameraBackendsImpl, null), 1, null);
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    public CameraBackend getDefault() {
        return this.f2280default;
    }

    public Object shutdown(Continuation continuation) {
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "CameraBackends#shutdown");
        }
        Map map = this.activeCameraBackends;
        ArrayList arrayList = new ArrayList(map.size());
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(((CameraBackend) ((Map.Entry) it.next()).getValue()).shutdownAsync());
        }
        Object objJoinAll = AwaitKt.joinAll(arrayList, continuation);
        return objJoinAll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoinAll : Unit.INSTANCE;
    }

    @Override // androidx.camera.camera2.pipe.CameraBackends
    /* JADX INFO: renamed from: get-SG3A4s8 */
    public CameraBackend mo1533getSG3A4s8(String backendId) {
        Intrinsics.checkNotNullParameter(backendId, "backendId");
        synchronized (this.lock) {
            try {
                CameraBackend cameraBackend = (CameraBackend) this.activeCameraBackends.get(CameraBackendId.m1526boximpl(backendId));
                if (cameraBackend != null) {
                    return cameraBackend;
                }
                CameraBackendFactory cameraBackendFactory = (CameraBackendFactory) this.cameraBackends.get(CameraBackendId.m1526boximpl(backendId));
                CameraBackend cameraBackendCreate = cameraBackendFactory != null ? cameraBackendFactory.create(new CameraBackendContext(this.cameraPipeContext, this.threads, this)) : null;
                if (cameraBackendCreate != null) {
                    if (!CameraBackendId.m1529equalsimpl0(backendId, cameraBackendCreate.mo1524getIdQwmhuAM())) {
                        throw new IllegalStateException(("Unexpected backend id! Expected " + ((Object) CameraBackendId.m1531toStringimpl(backendId)) + " but it was actually " + ((Object) CameraBackendId.m1531toStringimpl(cameraBackendCreate.mo1524getIdQwmhuAM()))).toString());
                    }
                    this.activeCameraBackends.put(CameraBackendId.m1526boximpl(backendId), cameraBackendCreate);
                }
                return cameraBackendCreate;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class CameraBackendContext implements CameraContext {
        private final Context appContext;
        private final CameraBackends cameraBackends;
        private final Threads threads;

        public CameraBackendContext(Context appContext, Threads threads, CameraBackends cameraBackends) {
            Intrinsics.checkNotNullParameter(appContext, "appContext");
            Intrinsics.checkNotNullParameter(threads, "threads");
            Intrinsics.checkNotNullParameter(cameraBackends, "cameraBackends");
            this.appContext = appContext;
            this.threads = threads;
            this.cameraBackends = cameraBackends;
        }
    }
}
