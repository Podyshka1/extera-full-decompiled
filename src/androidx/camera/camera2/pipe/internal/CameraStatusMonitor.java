package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.CameraId;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraStatusMonitor extends AutoCloseable {
    StateFlow getCameraAvailability();

    SharedFlow getCameraPriorities();

    public static abstract class CameraStatus {

        public static final class Unknown extends CameraStatus {
            public static final Unknown INSTANCE = new Unknown();

            private Unknown() {
            }

            public String toString() {
                return "UnknownCameraStatus";
            }
        }

        public static final class CameraPrioritiesChanged extends CameraStatus {
            public static final CameraPrioritiesChanged INSTANCE = new CameraPrioritiesChanged();

            private CameraPrioritiesChanged() {
            }

            public String toString() {
                return "CameraPrioritiesChanged";
            }
        }

        public static final class CameraAvailable extends CameraStatus {
            private final String cameraId;

            public /* synthetic */ CameraAvailable(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }

            private CameraAvailable(String cameraId) {
                Intrinsics.checkNotNullParameter(cameraId, "cameraId");
                this.cameraId = cameraId;
            }

            /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
            public final String m1935getCameraIdDz_R5H8() {
                return this.cameraId;
            }

            public String toString() {
                return "CameraAvailable(camera=" + ((Object) CameraId.m1607toStringimpl(this.cameraId)) + ')';
            }
        }

        public static final class CameraUnavailable extends CameraStatus {
            private final String cameraId;

            public /* synthetic */ CameraUnavailable(String str, DefaultConstructorMarker defaultConstructorMarker) {
                this(str);
            }

            private CameraUnavailable(String cameraId) {
                Intrinsics.checkNotNullParameter(cameraId, "cameraId");
                this.cameraId = cameraId;
            }

            /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
            public final String m1936getCameraIdDz_R5H8() {
                return this.cameraId;
            }

            public String toString() {
                return "CameraUnavailable(camera=" + ((Object) CameraId.m1607toStringimpl(this.cameraId)) + ')';
            }
        }
    }
}
