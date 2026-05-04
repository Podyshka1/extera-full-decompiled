package androidx.camera.core;

import android.graphics.Matrix;
import androidx.camera.core.impl.TagBundle;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_ImmutableImageInfo extends ImmutableImageInfo {
    private final int flashState;
    private final int rotationDegrees;
    private final Matrix sensorToBufferTransformMatrix;
    private final TagBundle tagBundle;
    private final long timestamp;

    AutoValue_ImmutableImageInfo(TagBundle tagBundle, long j, int i, Matrix matrix, int i2) {
        if (tagBundle == null) {
            throw new NullPointerException("Null tagBundle");
        }
        this.tagBundle = tagBundle;
        this.timestamp = j;
        this.rotationDegrees = i;
        if (matrix == null) {
            throw new NullPointerException("Null sensorToBufferTransformMatrix");
        }
        this.sensorToBufferTransformMatrix = matrix;
        this.flashState = i2;
    }

    @Override // androidx.camera.core.ImmutableImageInfo, androidx.camera.core.ImageInfo
    public TagBundle getTagBundle() {
        return this.tagBundle;
    }

    @Override // androidx.camera.core.ImmutableImageInfo, androidx.camera.core.ImageInfo
    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // androidx.camera.core.ImmutableImageInfo
    public int getRotationDegrees() {
        return this.rotationDegrees;
    }

    @Override // androidx.camera.core.ImmutableImageInfo
    public Matrix getSensorToBufferTransformMatrix() {
        return this.sensorToBufferTransformMatrix;
    }

    @Override // androidx.camera.core.ImmutableImageInfo, androidx.camera.core.ImageInfo
    public int getFlashState() {
        return this.flashState;
    }

    public String toString() {
        return "ImmutableImageInfo{tagBundle=" + this.tagBundle + ", timestamp=" + this.timestamp + ", rotationDegrees=" + this.rotationDegrees + ", sensorToBufferTransformMatrix=" + this.sensorToBufferTransformMatrix + ", flashState=" + this.flashState + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableImageInfo) {
            ImmutableImageInfo immutableImageInfo = (ImmutableImageInfo) obj;
            if (this.tagBundle.equals(immutableImageInfo.getTagBundle()) && this.timestamp == immutableImageInfo.getTimestamp() && this.rotationDegrees == immutableImageInfo.getRotationDegrees() && this.sensorToBufferTransformMatrix.equals(immutableImageInfo.getSensorToBufferTransformMatrix()) && this.flashState == immutableImageInfo.getFlashState()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.tagBundle.hashCode() ^ 1000003) * 1000003;
        long j = this.timestamp;
        return ((((((iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ this.rotationDegrees) * 1000003) ^ this.sensorToBufferTransformMatrix.hashCode()) * 1000003) ^ this.flashState;
    }
}
