package androidx.camera.camera2.impl;

import android.graphics.SurfaceTexture;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002%&B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001bH\u0014J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u001fJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000bH\u0002J\u0010\u0010$\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u000bH\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Landroidx/camera/camera2/impl/MeteringRepeating;", "Landroidx/camera/core/UseCase;", "cameraProperties", "Landroidx/camera/camera2/impl/CameraProperties;", "config", "Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;", "displayInfoManager", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;Landroidx/camera/camera2/impl/DisplayInfoManager;)V", "meteringSurfaceSize", "Landroid/util/Size;", "deferrableSurfaceLock", _UrlKt.FRAGMENT_ENCODE_SET, "closeableErrorListener", "Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;", "deferrableSurface", "Landroidx/camera/core/impl/DeferrableSurface;", "getDefaultConfig", "applyDefaultConfig", _UrlKt.FRAGMENT_ENCODE_SET, "factory", "Landroidx/camera/core/impl/UseCaseConfigFactory;", "getUseCaseConfigBuilder", "Landroidx/camera/camera2/impl/MeteringRepeating$Builder;", "Landroidx/camera/core/impl/Config;", "onSuggestedStreamSpecUpdated", "Landroidx/camera/core/impl/StreamSpec;", "primaryStreamSpec", "secondaryStreamSpec", "onUnbind", _UrlKt.FRAGMENT_ENCODE_SET, "setupSession", "createPipeline", "Landroidx/camera/core/impl/SessionConfig$Builder;", "resolution", "createAndManageDeferrableSurface", "MeteringRepeatingConfig", "Builder", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMeteringRepeating.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeteringRepeating.kt\nandroidx/camera/camera2/impl/MeteringRepeating\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n1#2:264\n*E\n"})
public final class MeteringRepeating extends UseCase {
    private final CameraProperties cameraProperties;
    private SessionConfig.CloseableErrorListener closeableErrorListener;
    private DeferrableSurface deferrableSurface;
    private final Object deferrableSurfaceLock;
    private final DisplayInfoManager displayInfoManager;
    private final Size meteringSurfaceSize;

    public MeteringRepeating(CameraProperties cameraProperties, MeteringRepeatingConfig meteringRepeatingConfig, DisplayInfoManager displayInfoManager) {
        super(meteringRepeatingConfig);
        this.cameraProperties = cameraProperties;
        this.displayInfoManager = displayInfoManager;
        this.meteringSurfaceSize = MeteringRepeatingKt.getProperPreviewSize(cameraProperties, displayInfoManager);
        this.deferrableSurfaceLock = new Object();
    }

    @Override // androidx.camera.core.UseCase
    public MeteringRepeatingConfig getDefaultConfig(boolean applyDefaultConfig, UseCaseConfigFactory factory) {
        return new Builder(this.cameraProperties, this.displayInfoManager).getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public Builder getUseCaseConfigBuilder(Config config) {
        return new Builder(this.cameraProperties, this.displayInfoManager);
    }

    @Override // androidx.camera.core.UseCase
    public StreamSpec onSuggestedStreamSpecUpdated(StreamSpec primaryStreamSpec, StreamSpec secondaryStreamSpec) {
        updateSessionConfig(CollectionsKt.listOf(createPipeline(this.meteringSurfaceSize).build()));
        return primaryStreamSpec.toBuilder().setResolution(this.meteringSurfaceSize).build();
    }

    @Override // androidx.camera.core.UseCase
    public void onUnbind() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        this.closeableErrorListener = null;
        synchronized (this.deferrableSurfaceLock) {
            try {
                DeferrableSurface deferrableSurface = this.deferrableSurface;
                if (deferrableSurface != null) {
                    deferrableSurface.close();
                }
                this.deferrableSurface = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setupSession() {
        updateSuggestedStreamSpec(StreamSpec.builder(MeteringRepeatingKt.DEFAULT_PREVIEW_SIZE).build(), null);
    }

    private final SessionConfig.Builder createPipeline(final Size resolution) {
        DeferrableSurface deferrableSurfaceCreateAndManageDeferrableSurface;
        synchronized (this.deferrableSurfaceLock) {
            deferrableSurfaceCreateAndManageDeferrableSurface = createAndManageDeferrableSurface(resolution);
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.camera2.impl.MeteringRepeating$$ExternalSyntheticLambda0
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                MeteringRepeating.$r8$lambda$BPlB8isfuWKFvMqTcjDrqYh8Ecw(this.f$0, resolution, sessionConfig, sessionError);
            }
        });
        this.closeableErrorListener = closeableErrorListener2;
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(new MeteringRepeatingConfig(), resolution);
        builderCreateFrom.setTemplateType(1);
        builderCreateFrom.addSurface(deferrableSurfaceCreateAndManageDeferrableSurface);
        builderCreateFrom.setErrorListener(closeableErrorListener2);
        return builderCreateFrom;
    }

    public static void $r8$lambda$BPlB8isfuWKFvMqTcjDrqYh8Ecw(MeteringRepeating meteringRepeating, Size size, SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        meteringRepeating.updateSessionConfig(CollectionsKt.listOf(meteringRepeating.createPipeline(size).build()));
        meteringRepeating.notifyReset();
    }

    private final DeferrableSurface createAndManageDeferrableSurface(Size resolution) {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(resolution.getWidth(), resolution.getHeight());
        final Surface surface = new Surface(surfaceTexture);
        DeferrableSurface deferrableSurface = this.deferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(surface, resolution, getImageFormat());
        this.deferrableSurface = immediateSurface;
        immediateSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.camera2.impl.MeteringRepeating$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MeteringRepeating.$r8$lambda$Q7CbjLDnricLd1mJRiIT8an2ZhA(surface, surfaceTexture);
            }
        }, CameraXExecutors.directExecutor());
        return immediateSurface;
    }

    public static void $r8$lambda$Q7CbjLDnricLd1mJRiIT8an2ZhA(Surface surface, SurfaceTexture surfaceTexture) {
        surface.release();
        surfaceTexture.release();
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;", "Landroidx/camera/core/impl/UseCaseConfig;", "Landroidx/camera/camera2/impl/MeteringRepeating;", "Landroidx/camera/core/impl/ImageInputConfig;", "<init>", "()V", "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;", "getCaptureType", "()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;", "Landroidx/camera/core/impl/MutableOptionsBundle;", "getConfig", "()Landroidx/camera/core/impl/MutableOptionsBundle;", _UrlKt.FRAGMENT_ENCODE_SET, "getInputFormat", "()I", "config", "Landroidx/camera/core/impl/MutableOptionsBundle;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class MeteringRepeatingConfig implements UseCaseConfig<MeteringRepeating>, ImageInputConfig {
        private final MutableOptionsBundle config;

        @Override // androidx.camera.core.impl.ImageInputConfig
        public int getInputFormat() {
            return 34;
        }

        public MeteringRepeatingConfig() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, CameraUseCaseAdapter.DefaultSessionOptionsUnpacker.INSTANCE);
            mutableOptionsBundleCreate.insertOption(TargetConfig.OPTION_TARGET_NAME, "MeteringRepeating");
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.METERING_REPEATING);
            this.config = mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public UseCaseConfigFactory.CaptureType getCaptureType() {
            return UseCaseConfigFactory.CaptureType.METERING_REPEATING;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public MutableOptionsBundle getConfig() {
            return this.config;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/camera/camera2/impl/MeteringRepeating$Builder;", "Landroidx/camera/core/impl/UseCaseConfig$Builder;", "Landroidx/camera/camera2/impl/MeteringRepeating;", "Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "displayInfoManager", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/DisplayInfoManager;)V", "Landroidx/camera/core/impl/MutableOptionsBundle;", "getMutableConfig", "()Landroidx/camera/core/impl/MutableOptionsBundle;", "getUseCaseConfig", "()Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;", "build", "()Landroidx/camera/camera2/impl/MeteringRepeating;", "Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder implements UseCaseConfig.Builder<MeteringRepeating, MeteringRepeatingConfig, Builder> {
        private final CameraProperties cameraProperties;
        private final DisplayInfoManager displayInfoManager;

        public Builder(CameraProperties cameraProperties, DisplayInfoManager displayInfoManager) {
            this.cameraProperties = cameraProperties;
            this.displayInfoManager = displayInfoManager;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableOptionsBundle getMutableConfig() {
            return MutableOptionsBundle.create();
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public MeteringRepeatingConfig getUseCaseConfig() {
            return new MeteringRepeatingConfig();
        }

        public MeteringRepeating build() {
            return new MeteringRepeating(this.cameraProperties, getUseCaseConfig(), this.displayInfoManager);
        }
    }
}
