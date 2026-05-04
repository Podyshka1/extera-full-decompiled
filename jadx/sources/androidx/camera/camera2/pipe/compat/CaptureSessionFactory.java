package androidx.camera.camera2.pipe.compat;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface CaptureSessionFactory {
    Result create(CameraDeviceWrapper cameraDeviceWrapper, Map map, CaptureSessionState captureSessionState);

    public interface Result {

        public static final class Success implements Result {
            private final Map deferred;
            private final Map outputSurfaceMap;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return Intrinsics.areEqual(this.deferred, success.deferred) && Intrinsics.areEqual(this.outputSurfaceMap, success.outputSurfaceMap);
            }

            public int hashCode() {
                return (this.deferred.hashCode() * 31) + this.outputSurfaceMap.hashCode();
            }

            public String toString() {
                return "Success(deferred=" + this.deferred + ", outputSurfaceMap=" + this.outputSurfaceMap + ')';
            }

            public Success(Map deferred, Map outputSurfaceMap) {
                Intrinsics.checkNotNullParameter(deferred, "deferred");
                Intrinsics.checkNotNullParameter(outputSurfaceMap, "outputSurfaceMap");
                this.deferred = deferred;
                this.outputSurfaceMap = outputSurfaceMap;
            }

            public final Map getDeferred() {
                return this.deferred;
            }

            public final Map getOutputSurfaceMap() {
                return this.outputSurfaceMap;
            }
        }

        public static final class Failed implements Result {
            public static final Failed INSTANCE = new Failed();

            private Failed() {
            }
        }
    }
}
