package androidx.camera.camera2;

import android.content.Context;
import androidx.camera.camera2.adapter.CameraFactoryProvider;
import androidx.camera.camera2.adapter.CameraSurfaceAdapter;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Camera2Config {
    public static final Companion Companion = new Companion(null);

    public static final class DefaultProvider implements CameraXConfig.Provider {
        @Override // androidx.camera.core.CameraXConfig.Provider
        public CameraXConfig getCameraXConfig() {
            return Camera2Config.Companion.defaultConfig();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CameraXConfig defaultConfig() {
            return from$default(this, null, null, null, 7, null);
        }

        public static /* synthetic */ CameraXConfig from$default(Companion companion, CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig, int i, Object obj) {
            if ((i & 1) != 0) {
                cameraPipe = null;
            }
            if ((i & 2) != 0) {
                context = null;
            }
            if ((i & 4) != 0) {
                cameraThreadConfig = null;
            }
            return companion.from(cameraPipe, context, cameraThreadConfig);
        }

        public final CameraXConfig from(CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig) {
            CameraXConfig cameraXConfigBuild = new CameraXConfig.Builder().setCameraFactoryProvider(new CameraFactoryProvider(cameraPipe, context, cameraThreadConfig)).setDeviceSurfaceManagerProvider(new CameraDeviceSurfaceManager.Provider() { // from class: androidx.camera.camera2.Camera2Config$Companion$$ExternalSyntheticLambda0
                @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager.Provider
                public final CameraDeviceSurfaceManager newInstance(Context context2, Object obj, Set set) {
                    return new CameraSurfaceAdapter(context2, obj, set);
                }
            }).setUseCaseConfigFactoryProvider(new UseCaseConfigFactory.Provider() { // from class: androidx.camera.camera2.Camera2Config$Companion$$ExternalSyntheticLambda1
                @Override // androidx.camera.core.impl.UseCaseConfigFactory.Provider
                public final UseCaseConfigFactory newInstance(Context context2) {
                    return new CameraUseCaseAdapter(context2);
                }
            }).setRepeatingStreamForced(true).build();
            Intrinsics.checkNotNullExpressionValue(cameraXConfigBuild, "build(...)");
            return cameraXConfigBuild;
        }
    }
}
