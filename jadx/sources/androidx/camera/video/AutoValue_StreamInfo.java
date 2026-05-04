package androidx.camera.video;

import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.StreamInfo;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_StreamInfo extends StreamInfo {

    /* JADX INFO: renamed from: id */
    private final int f27id;
    private final SurfaceRequest.TransformationInfo inProgressTransformationInfo;
    private final StreamInfo.StreamState streamState;

    AutoValue_StreamInfo(int i, StreamInfo.StreamState streamState, SurfaceRequest.TransformationInfo transformationInfo) {
        this.f27id = i;
        if (streamState == null) {
            throw new NullPointerException("Null streamState");
        }
        this.streamState = streamState;
        this.inProgressTransformationInfo = transformationInfo;
    }

    @Override // androidx.camera.video.StreamInfo
    public int getId() {
        return this.f27id;
    }

    @Override // androidx.camera.video.StreamInfo
    public StreamInfo.StreamState getStreamState() {
        return this.streamState;
    }

    @Override // androidx.camera.video.StreamInfo
    public SurfaceRequest.TransformationInfo getInProgressTransformationInfo() {
        return this.inProgressTransformationInfo;
    }

    public String toString() {
        return "StreamInfo{id=" + this.f27id + ", streamState=" + this.streamState + ", inProgressTransformationInfo=" + this.inProgressTransformationInfo + "}";
    }

    public boolean equals(Object obj) {
        SurfaceRequest.TransformationInfo transformationInfo;
        if (obj == this) {
            return true;
        }
        if (obj instanceof StreamInfo) {
            StreamInfo streamInfo = (StreamInfo) obj;
            if (this.f27id == streamInfo.getId() && this.streamState.equals(streamInfo.getStreamState()) && ((transformationInfo = this.inProgressTransformationInfo) != null ? transformationInfo.equals(streamInfo.getInProgressTransformationInfo()) : streamInfo.getInProgressTransformationInfo() == null)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (((this.f27id ^ 1000003) * 1000003) ^ this.streamState.hashCode()) * 1000003;
        SurfaceRequest.TransformationInfo transformationInfo = this.inProgressTransformationInfo;
        return iHashCode ^ (transformationInfo == null ? 0 : transformationInfo.hashCode());
    }
}
