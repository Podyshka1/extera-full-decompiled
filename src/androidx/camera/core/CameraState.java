package androidx.camera.core;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraState {

    public enum Type {
        PENDING_OPEN,
        OPENING,
        OPEN,
        CLOSING,
        CLOSED
    }

    public abstract StateError getError();

    public abstract Type getType();

    public static CameraState create(Type type, StateError stateError) {
        return new AutoValue_CameraState(type, stateError);
    }

    public static abstract class StateError {
        public abstract Throwable getCause();

        public abstract int getCode();

        public static StateError create(int i) {
            return create(i, null);
        }

        public static StateError create(int i, Throwable th) {
            return new AutoValue_CameraState_StateError(i, th);
        }
    }
}
