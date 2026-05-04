package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PickVisualMediaRequest {
    private ActivityResultContracts$PickVisualMedia.VisualMediaType mediaType = ActivityResultContracts$PickVisualMedia.ImageAndVideo.INSTANCE;

    public final ActivityResultContracts$PickVisualMedia.VisualMediaType getMediaType() {
        return this.mediaType;
    }

    public final void setMediaType$activity_release(ActivityResultContracts$PickVisualMedia.VisualMediaType visualMediaType) {
        Intrinsics.checkNotNullParameter(visualMediaType, "<set-?>");
        this.mediaType = visualMediaType;
    }

    public static final class Builder {
        private ActivityResultContracts$PickVisualMedia.VisualMediaType mediaType = ActivityResultContracts$PickVisualMedia.ImageAndVideo.INSTANCE;

        public final Builder setMediaType(ActivityResultContracts$PickVisualMedia.VisualMediaType mediaType) {
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            this.mediaType = mediaType;
            return this;
        }

        public final PickVisualMediaRequest build() {
            PickVisualMediaRequest pickVisualMediaRequest = new PickVisualMediaRequest();
            pickVisualMediaRequest.setMediaType$activity_release(this.mediaType);
            return pickVisualMediaRequest;
        }
    }
}
