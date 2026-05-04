package androidx.camera.core;

import android.graphics.Rect;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.impl.CameraInternal;
import androidx.core.util.Consumer;
import java.io.Closeable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public interface SurfaceOutput extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int getFormat();

    Size getSize();

    Surface getSurface(Executor executor, Consumer consumer);

    void updateTransformMatrix(float[] fArr, float[] fArr2);

    void updateTransformMatrix(float[] fArr, float[] fArr2, boolean z);

    public static abstract class Event {
        public abstract int getEventCode();

        public abstract SurfaceOutput getSurfaceOutput();

        Event() {
        }

        /* JADX INFO: renamed from: of */
        public static Event m84of(int i, SurfaceOutput surfaceOutput) {
            return new AutoValue_SurfaceOutput_Event(i, surfaceOutput);
        }
    }

    public static abstract class CameraInputInfo {
        public abstract CameraInternal getCameraInternal();

        public abstract Rect getInputCropRect();

        public abstract Size getInputSize();

        public abstract boolean getMirroring();

        public abstract int getRotationDegrees();

        /* JADX INFO: renamed from: of */
        public static CameraInputInfo m83of(Size size, Rect rect, CameraInternal cameraInternal, int i, boolean z) {
            return new AutoValue_SurfaceOutput_CameraInputInfo(size, rect, cameraInternal, i, z);
        }
    }
}
