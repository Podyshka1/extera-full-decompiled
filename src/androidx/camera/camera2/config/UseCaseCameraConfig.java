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
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0087\b\u0018\u0000 -2\u00020\u0001:\u0001-BC\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 JV\u0010!\u001a\u00020\u00002\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0001¢\u0006\u0004\b!\u0010\"J\u0010\u0010$\u001a\u00020#HÖ\u0001¢\u0006\u0004\b$\u0010%R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010'R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010(R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010)R\u0011\u0010,\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u0006."}, d2 = {"Landroidx/camera/camera2/config/UseCaseCameraConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraphFactory", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "graphStateToCameraStateAdapter", "Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "sessionConfigAdapter", "Landroidx/camera/core/impl/SessionProcessor;", "sessionProcessor", "Lkotlin/Lazy;", "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;", "lazyCreationResult", "<init>", "(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)V", "provideSessionConfigAdapter", "()Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "provideSessionProcessor", "()Landroidx/camera/core/impl/SessionProcessor;", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "cameraStateAdapter", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "provideUseCaseGraphContext", "(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/config/UseCaseGraphContext;", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "copy", "(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lkotlin/Lazy;)Landroidx/camera/camera2/config/UseCaseCameraConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Lkotlin/jvm/functions/Function1;", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "Lkotlin/Lazy;", "getCameraGraphConfig", "()Landroidx/camera/camera2/pipe/CameraGraph$Config;", "cameraGraphConfig", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseCameraConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseCameraConfig\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,261:1\n85#2,4:262\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseCameraConfig\n*L\n103#1:262,4\n*E\n"})
public final /* data */ class UseCaseCameraConfig {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Function1<CameraGraph.Config, CameraGraph> cameraGraphFactory;
    private final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter;
    private final Lazy<CameraGraphConfigProvider.CameraGraphCreationResult> lazyCreationResult;
    private final SessionConfigAdapter sessionConfigAdapter;

    /* JADX WARN: Multi-variable type inference failed */
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

    public final UseCaseCameraConfig copy(Function1<? super CameraGraph.Config, ? extends CameraGraph> cameraGraphFactory, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, Lazy<CameraGraphConfigProvider.CameraGraphCreationResult> lazyCreationResult) {
        return new UseCaseCameraConfig(cameraGraphFactory, graphStateToCameraStateAdapter, sessionConfigAdapter, sessionProcessor, lazyCreationResult);
    }

    public final SessionProcessor provideSessionProcessor() {
        return null;
    }

    public String toString() {
        return "UseCaseCameraConfig(cameraGraphFactory=" + this.cameraGraphFactory + ", graphStateToCameraStateAdapter=" + this.graphStateToCameraStateAdapter + ", sessionConfigAdapter=" + this.sessionConfigAdapter + ", sessionProcessor=null, lazyCreationResult=" + this.lazyCreationResult + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UseCaseCameraConfig(Function1<? super CameraGraph.Config, ? extends CameraGraph> function1, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, SessionConfigAdapter sessionConfigAdapter, SessionProcessor sessionProcessor, Lazy<CameraGraphConfigProvider.CameraGraphCreationResult> lazy) {
        this.cameraGraphFactory = function1;
        this.graphStateToCameraStateAdapter = graphStateToCameraStateAdapter;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.lazyCreationResult = lazy;
    }

    public final CameraGraph.Config getCameraGraphConfig() {
        return this.lazyCreationResult.getValue().getConfig();
    }

    /* JADX INFO: renamed from: provideSessionConfigAdapter, reason: from getter */
    public final SessionConfigAdapter getSessionConfigAdapter() {
        return this.sessionConfigAdapter;
    }

    public final UseCaseGraphContext provideUseCaseGraphContext(CameraStateAdapter cameraStateAdapter) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Prepared UseCaseGraphContext (Deferred)");
        }
        return new UseCaseGraphContext(new Provider() { // from class: androidx.camera.camera2.config.UseCaseCameraConfig$$ExternalSyntheticLambda0
            @Override // javax.inject.Provider
            public final Object get() {
                UseCaseCameraConfig useCaseCameraConfig = this.f$0;
                return useCaseCameraConfig.cameraGraphFactory.invoke(useCaseCameraConfig.getCameraGraphConfig());
            }
        }, cameraStateAdapter, this.graphStateToCameraStateAdapter, new Provider() { // from class: androidx.camera.camera2.config.UseCaseCameraConfig$$ExternalSyntheticLambda1
            @Override // javax.inject.Provider
            public final Object get() {
                return this.f$0.lazyCreationResult.getValue().getStreamConfigMap();
            }
        }, null, 16, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(UseCaseCameraConfig.class, other != null ? other.getClass() : null)) {
            return false;
        }
        UseCaseCameraConfig useCaseCameraConfig = (UseCaseCameraConfig) other;
        if (!Intrinsics.areEqual(this.sessionConfigAdapter, useCaseCameraConfig.sessionConfigAdapter) || !Intrinsics.areEqual(this.graphStateToCameraStateAdapter, useCaseCameraConfig.graphStateToCameraStateAdapter)) {
            return false;
        }
        useCaseCameraConfig.getClass();
        return Intrinsics.areEqual((Object) null, (Object) null);
    }

    public int hashCode() {
        return ((this.sessionConfigAdapter.hashCode() * 31) + this.graphStateToCameraStateAdapter.hashCode()) * 31;
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JD\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "create", "Landroidx/camera/camera2/config/UseCaseCameraConfig;", "sessionConfigAdapter", "Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "cameraGraphConfigProvider", "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;", "cameraGraphFactory", "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "Landroidx/camera/camera2/pipe/CameraGraph;", "graphStateToCameraStateAdapter", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "sessionProcessor", "Landroidx/camera/core/impl/SessionProcessor;", "isExtensions", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UseCaseCameraConfig create(final SessionConfigAdapter sessionConfigAdapter, final CameraGraphConfigProvider cameraGraphConfigProvider, Function1<? super CameraGraph.Config, ? extends CameraGraph> cameraGraphFactory, final GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, final SessionProcessor sessionProcessor, final boolean isExtensions) {
            return new UseCaseCameraConfig(cameraGraphFactory, graphStateToCameraStateAdapter, sessionConfigAdapter, sessionProcessor, LazyKt.lazy(new Function0(isExtensions, sessionProcessor, cameraGraphConfigProvider, graphStateToCameraStateAdapter) { // from class: androidx.camera.camera2.config.UseCaseCameraConfig$Companion$$ExternalSyntheticLambda0
                public final /* synthetic */ boolean f$1;
                public final /* synthetic */ CameraGraphConfigProvider f$3;
                public final /* synthetic */ GraphStateToCameraStateAdapter f$4;

                {
                    this.f$3 = cameraGraphConfigProvider;
                    this.f$4 = graphStateToCameraStateAdapter;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UseCaseCameraConfig.Companion.m1020$r8$lambda$oX4lbhDoh8cSXf19LhLAjDjp3A(this.f$0, this.f$1, null, this.f$3, this.f$4);
                }
            }));
        }

        /* JADX INFO: renamed from: $r8$lambda$o-X4lbhDoh8cSXf19LhLAjDjp3A, reason: not valid java name */
        public static CameraGraphConfigProvider.CameraGraphCreationResult m1020$r8$lambda$oX4lbhDoh8cSXf19LhLAjDjp3A(SessionConfigAdapter sessionConfigAdapter, boolean z, SessionProcessor sessionProcessor, CameraGraphConfigProvider cameraGraphConfigProvider, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter) {
            int iM1203getNORMAL2uNL3no;
            Pair<Integer, Integer> implementationType;
            SessionConfig validSessionConfigOrNull = sessionConfigAdapter.getValidSessionConfigOrNull();
            if (z) {
                iM1203getNORMAL2uNL3no = CameraGraph.OperatingMode.INSTANCE.m1201getEXTENSION2uNL3no();
            } else if (validSessionConfigOrNull == null) {
                iM1203getNORMAL2uNL3no = CameraGraph.OperatingMode.INSTANCE.m1203getNORMAL2uNL3no();
            } else if (validSessionConfigOrNull.getSessionType() == 1) {
                iM1203getNORMAL2uNL3no = CameraGraph.OperatingMode.INSTANCE.m1202getHIGH_SPEED2uNL3no();
            } else {
                iM1203getNORMAL2uNL3no = validSessionConfigOrNull.getSessionType() == 0 ? CameraGraph.OperatingMode.INSTANCE.m1203getNORMAL2uNL3no() : CameraGraph.OperatingMode.INSTANCE.m1200customEP6OhB0(validSessionConfigOrNull.getSessionType());
            }
            int i = iM1203getNORMAL2uNL3no;
            Integer num = null;
            if (z && sessionProcessor != null && (implementationType = sessionProcessor.getImplementationType()) != null) {
                num = (Integer) implementationType.second;
            }
            return cameraGraphConfigProvider.m1038create79VDu0o(i, validSessionConfigOrNull, false, graphStateToCameraStateAdapter, num, sessionConfigAdapter.getSurfaceToStreamUseCaseMap(), sessionConfigAdapter.getSurfaceToStreamUseHintMap());
        }
    }
}
