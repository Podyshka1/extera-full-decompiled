package androidx.camera.camera2.pipe;

import java.util.Map;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraController {
    Object awaitClosed(Continuation continuation);

    void close();

    void setForeground(boolean z);

    void start();

    void updateSurfaceMap(Map map);

    public static abstract class ControllerState {

        public static final class STARTED extends ControllerState {
            public static final STARTED INSTANCE = new STARTED();

            private STARTED() {
            }
        }

        public static final class STOPPING extends ControllerState {
            public static final STOPPING INSTANCE = new STOPPING();

            private STOPPING() {
            }
        }

        public static final class STOPPED extends ControllerState {
            public static final STOPPED INSTANCE = new STOPPED();

            private STOPPED() {
            }
        }

        public static final class DISCONNECTED extends ControllerState {
            public static final DISCONNECTED INSTANCE = new DISCONNECTED();

            private DISCONNECTED() {
            }
        }

        public static final class ERROR extends ControllerState {
            public static final ERROR INSTANCE = new ERROR();

            private ERROR() {
            }
        }

        public static final class CLOSING extends ControllerState {
            public static final CLOSING INSTANCE = new CLOSING();

            private CLOSING() {
            }
        }

        public static final class CLOSED extends ControllerState {
            public static final CLOSED INSTANCE = new CLOSED();

            private CLOSED() {
            }
        }
    }
}
