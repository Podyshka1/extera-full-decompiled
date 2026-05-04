package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.media.ImageWrapper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class InputRequest {
    private final FrameInfo frameInfo;
    private final ImageWrapper image;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InputRequest)) {
            return false;
        }
        InputRequest inputRequest = (InputRequest) obj;
        return Intrinsics.areEqual(this.image, inputRequest.image) && Intrinsics.areEqual(this.frameInfo, inputRequest.frameInfo);
    }

    public int hashCode() {
        return (this.image.hashCode() * 31) + this.frameInfo.hashCode();
    }

    public String toString() {
        return "InputRequest(image=" + this.image + ", frameInfo=" + this.frameInfo + ')';
    }

    public InputRequest(ImageWrapper image, FrameInfo frameInfo) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(frameInfo, "frameInfo");
        this.image = image;
        this.frameInfo = frameInfo;
    }

    public final FrameInfo getFrameInfo() {
        return this.frameInfo;
    }

    public final ImageWrapper getImage() {
        return this.image;
    }
}
