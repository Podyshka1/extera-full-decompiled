package androidx.camera.video;

import androidx.camera.core.CameraInfo;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Timebase;

/* JADX INFO: loaded from: classes4.dex */
public interface VideoOutput {

    public enum SourceState {
        ACTIVE_STREAMING,
        ACTIVE_NON_STREAMING,
        INACTIVE
    }

    EncoderProfilesResolver getEncoderProfilesResolver(CameraInfo cameraInfo, int i);

    VideoCapabilities getMediaCapabilities(CameraInfo cameraInfo, int i);

    Observable getMediaSpec();

    Observable getStreamInfo();

    boolean isQualitySelectorDefault();

    Observable isSourceStreamRequired();

    void onSourceStateChanged(SourceState sourceState);

    void onSurfaceRequested(SurfaceRequest surfaceRequest);

    void onSurfaceRequested(SurfaceRequest surfaceRequest, Timebase timebase, boolean z);

    /* JADX INFO: renamed from: androidx.camera.video.VideoOutput$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onSourceStateChanged(VideoOutput videoOutput, SourceState sourceState) {
        }

        public static boolean $default$isQualitySelectorDefault(VideoOutput videoOutput) {
            return true;
        }
    }
}
