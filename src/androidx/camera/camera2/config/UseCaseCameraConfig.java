package androidx.camera.camera2.config;

import android.util.Log;
import android.util.Pair;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import java.util.Map;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseCameraConfig {
    public static final Companion Companion = new Companion(null);
    private final Function1 cameraGraphFactory;
    private final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    private final Lazy lazyCreationResult;
    private final SessionConfigAdapter sessionConfigAdapter;

    public static /* synthetic */ UseCaseCameraConfig copy$default(UseCaseCameraConfig useCaseCameraConfig, Function1 function1, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, Lazy lazy, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = useCaseCameraConfig.cameraGraphFactory;
        }
        if ((i & 2) != 0) {
            graphStateToCameraStateAdapter = useCaseCameraConfig.graphStateToCameraStateAdapter;
        }
        if ((i & 4) != 0) {
            sessionConfigAdapter = useCaseCameraConfig.sessionConfigAdapter;
        }
        if ((i & 8) != 0) {
            useCaseCameraConfig.getClass();
            sessionProcessor = null;
        }
        if ((i & 16) != 0) {
            lazy = useCaseCameraConfig.lazyCreationResult;
        }
        Lazy lazy2 = lazy;
        SessionConfigAdapter sessionConfigAdapter2 = sessionConfigAdapter;
        return useCaseCameraConfig.copy(function1, graphStateToCameraStateAdapter, sessionConfigAdapter2, sessionProcessor, lazy2);
    }

    public final UseCaseCameraConfig copy(Function1 cameraGraphFactory, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, Lazy lazyCreationResult) {
        Intrinsics.checkNotNullParameter(cameraGraphFactory, "cameraGraphFactory");
        Intrinsics.checkNotNullParameter(graphStateToCameraStateAdapter, "graphStateToCameraStateAdapter");
        Intrinsics.checkNotNullParameter(sessionConfigAdapter, "sessionConfigAdapter");
        Intrinsics.checkNotNullParameter(lazyCreationResult, "lazyCreationResult");
        return new UseCaseCameraConfig(cameraGraphFactory, graphStateToCameraStateAdapter, sessionConfigAdapter, sessionProcessor, lazyCreationResult);
    }

    public final SessionProcessor provideSessionProcessor() {
        return null;
    }

    public String toString() {
        return "UseCaseCameraConfig(cameraGraphFactory=" + this.cameraGraphFactory + ", graphStateToCameraStateAdapter=" + this.graphStateToCameraStateAdapter + ", sessionConfigAdapter=" + this.sessionConfigAdapter + ", sessionProcessor=" + ((Object) null) + ", lazyCreationResult=" + this.lazyCreationResult + ')';
    }

    public UseCaseCameraConfig(Function1 cameraGraphFactory, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, Lazy lazyCreationResult) {
        Intrinsics.checkNotNullParameter(cameraGraphFactory, "cameraGraphFactory");
        Intrinsics.checkNotNullParameter(graphStateToCameraStateAdapter, "graphStateToCameraStateAdapter");
        Intrinsics.checkNotNullParameter(sessionConfigAdapter, "sessionConfigAdapter");
        Intrinsics.checkNotNullParameter(lazyCreationResult, "lazyCreationResult");
        this.cameraGraphFactory = cameraGraphFactory;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.lazyCreationResult = lazyCreationResult;
    }

    public final CameraGraph.Config getCameraGraphConfig() {
        return ((CameraGraphConfigProvider.CameraGraphCreationResult) this.lazyCreationResult.getValue()).getConfig();
    }

    public final SessionConfigAdapter provideSessionConfigAdapter() {
        return this.sessionConfigAdapter;
    }

    public final UseCaseGraphContext provideUseCaseGraphContext(CameraStateAdapter cameraStateAdapter) {
        Intrinsics.checkNotNullParameter(cameraStateAdapter, "cameraStateAdapter");
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Prepared UseCaseGraphContext (Deferred)");
        }
        return new UseCaseGraphContext(new Provider() { // from class: androidx.camera.camera2.config.UseCaseCameraConfig$$ExternalSyntheticLambda0
            @Override // javax.inject.Provider
            public final Object get() {
                return UseCaseCameraConfig.provideUseCaseGraphContext$lambda$1(this.f$0);
            }
        }, cameraStateAdapter, this.graphStateToCameraStateAdapter, new Provider() { // from class: androidx.camera.camera2.config.UseCaseCameraConfig$$ExternalSyntheticLambda1
            @Override // javax.inject.Provider
            public final Object get() {
                return UseCaseCameraConfig.provideUseCaseGraphContext$lambda$2(this.f$0);
            }
        }, null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph provideUseCaseGraphContext$lambda$1(UseCaseCameraConfig useCaseCameraConfig) {
        return (CameraGraph) useCaseCameraConfig.cameraGraphFactory.invoke(useCaseCameraConfig.getCameraGraphConfig());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map provideUseCaseGraphContext$lambda$2(UseCaseCameraConfig useCaseCameraConfig) {
        return ((CameraGraphConfigProvider.CameraGraphCreationResult) useCaseCameraConfig.lazyCreationResult.getValue()).getStreamConfigMap();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(UseCaseCameraConfig.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.camera.camera2.config.UseCaseCameraConfig");
        UseCaseCameraConfig useCaseCameraConfig = (UseCaseCameraConfig) obj;
        if (!Intrinsics.areEqual(this.sessionConfigAdapter, useCaseCameraConfig.sessionConfigAdapter) || !Intrinsics.areEqual(this.graphStateToCameraStateAdapter, useCaseCameraConfig.graphStateToCameraStateAdapter)) {
            return false;
        }
        useCaseCameraConfig.getClass();
        return Intrinsics.areEqual(null, null);
    }

    public int hashCode() {
        return ((this.sessionConfigAdapter.hashCode() * 31) + this.graphStateToCameraStateAdapter.hashCode()) * 31;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UseCaseCameraConfig create(final SessionConfigAdapter sessionConfigAdapter, final CameraGraphConfigProvider cameraGraphConfigProvider, Function1 cameraGraphFactory, final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, final SessionProcessor sessionProcessor, final boolean z) {
            Intrinsics.checkNotNullParameter(sessionConfigAdapter, "sessionConfigAdapter");
            Intrinsics.checkNotNullParameter(cameraGraphConfigProvider, "cameraGraphConfigProvider");
            Intrinsics.checkNotNullParameter(cameraGraphFactory, "cameraGraphFactory");
            Intrinsics.checkNotNullParameter(graphStateToCameraStateAdapter, "graphStateToCameraStateAdapter");
            return new UseCaseCameraConfig(cameraGraphFactory, graphStateToCameraStateAdapter, sessionConfigAdapter, sessionProcessor, LazyKt.lazy(new Function0(z, sessionProcessor, cameraGraphConfigProvider, graphStateToCameraStateAdapter) { // from class: androidx.camera.camera2.config.UseCaseCameraConfig$Companion$$ExternalSyntheticLambda0
                public final /* synthetic */ boolean f$1;
                public final /* synthetic */ CameraGraphConfigProvider f$3;
                public final /* synthetic */ GraphStateToCameraStateAdapter f$4;

                {
                    this.f$3 = cameraGraphConfigProvider;
                    this.f$4 = graphStateToCameraStateAdapter;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UseCaseCameraConfig.Companion.create$lambda$0(this.f$0, this.f$1, null, this.f$3, this.f$4);
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CameraGraphConfigProvider.CameraGraphCreationResult create$lambda$0(SessionConfigAdapter sessionConfigAdapter, boolean z, SessionProcessor sessionProcessor, CameraGraphConfigProvider cameraGraphConfigProvider, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter) {
            int iM1597getNORMAL2uNL3no;
            Pair implementationType;
            SessionConfig validSessionConfigOrNull = sessionConfigAdapter.getValidSessionConfigOrNull();
            if (z) {
                iM1597getNORMAL2uNL3no = CameraGraph.OperatingMode.Companion.m1595getEXTENSION2uNL3no();
            } else if (validSessionConfigOrNull == null) {
                iM1597getNORMAL2uNL3no = CameraGraph.OperatingMode.Companion.m1597getNORMAL2uNL3no();
            } else if (validSessionConfigOrNull.getSessionType() == 1) {
                iM1597getNORMAL2uNL3no = CameraGraph.OperatingMode.Companion.m1596getHIGH_SPEED2uNL3no();
            } else {
                iM1597getNORMAL2uNL3no = validSessionConfigOrNull.getSessionType() == 0 ? CameraGraph.OperatingMode.Companion.m1597getNORMAL2uNL3no() : CameraGraph.OperatingMode.Companion.m1594customEP6OhB0(validSessionConfigOrNull.getSessionType());
            }
            int i = iM1597getNORMAL2uNL3no;
            Integer num = null;
            if (z && sessionProcessor != null && (implementationType = sessionProcessor.getImplementationType()) != null) {
                num = (Integer) implementationType.second;
            }
            return cameraGraphConfigProvider.m1432create79VDu0o(i, validSessionConfigOrNull, false, graphStateToCameraStateAdapter, num, sessionConfigAdapter.getSurfaceToStreamUseCaseMap(), sessionConfigAdapter.getSurfaceToStreamUseHintMap());
        }
    }
}
