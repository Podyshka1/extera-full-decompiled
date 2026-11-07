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
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00022\u00020\u0001:\u0002\u0003\u0002¨\u0006\u0004"}, d2 = {"Landroidx/camera/camera2/Camera2Config;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "DefaultProvider", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Camera2Config {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Landroidx/camera/camera2/Camera2Config$DefaultProvider;", "Landroidx/camera/core/CameraXConfig$Provider;", "<init>", "()V", "getCameraXConfig", "Landroidx/camera/core/CameraXConfig;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultProvider implements CameraXConfig.Provider {
        @Override // androidx.camera.core.CameraXConfig.Provider
        public CameraXConfig getCameraXConfig() {
            return Camera2Config.INSTANCE.defaultConfig();
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007J,\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/Camera2Config$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "defaultConfig", "Landroidx/camera/core/CameraXConfig;", "from", "sharedCameraPipe", "Landroidx/camera/camera2/pipe/CameraPipe;", "sharedAppContext", "Landroid/content/Context;", "sharedThreadConfig", "Landroidx/camera/core/impl/CameraThreadConfig;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
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

        @JvmStatic
        public final CameraXConfig from(CameraPipe sharedCameraPipe, Context sharedAppContext, CameraThreadConfig sharedThreadConfig) {
            return new CameraXConfig.Builder().setCameraFactoryProvider(new CameraFactoryProvider(sharedCameraPipe, sharedAppContext, sharedThreadConfig)).setDeviceSurfaceManagerProvider(new CameraDeviceSurfaceManager.Provider() { // from class: androidx.camera.camera2.Camera2Config$Companion$$ExternalSyntheticLambda0
                @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager.Provider
                public final CameraDeviceSurfaceManager newInstance(Context context, Object obj, Set set) {
                    return new CameraSurfaceAdapter(context, obj, set);
                }
            }).setUseCaseConfigFactoryProvider(new UseCaseConfigFactory.Provider() { // from class: androidx.camera.camera2.Camera2Config$Companion$$ExternalSyntheticLambda1
                @Override // androidx.camera.core.impl.UseCaseConfigFactory.Provider
                public final UseCaseConfigFactory newInstance(Context context) {
                    return new CameraUseCaseAdapter(context);
                }
            }).setRepeatingStreamForced(true).build();
        }
    }
}
