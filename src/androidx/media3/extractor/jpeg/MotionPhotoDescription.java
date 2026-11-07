package androidx.media3.extractor.jpeg;

import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class MotionPhotoDescription {
    public final List<ContainerItem> items;
    public final long photoPresentationTimestampUs;

    public static final class ContainerItem {
        public final long length;
        public final String mime;
        public final long padding;
        public final String semantic;

        public ContainerItem(String str, String str2, long j, long j2) {
            this.mime = str;
            this.semantic = str2;
            this.length = j;
            this.padding = j2;
        }
    }

    public MotionPhotoDescription(long j, List<ContainerItem> list) {
        this.photoPresentationTimestampUs = j;
        this.items = list;
    }

    public MotionPhotoMetadata getMotionPhotoMetadata(long j) {
        MotionPhotoMetadata motionPhotoMetadata;
        long j2;
        MotionPhotoMetadata motionPhotoMetadata2 = null;
        if (this.items.size() < 2) {
            return null;
        }
        boolean z = true;
        int size = this.items.size() - 1;
        long j3 = j;
        long j4 = -1;
        long j5 = -1;
        long j6 = -1;
        long j7 = -1;
        while (size >= 0) {
            ContainerItem containerItem = this.items.get(size);
            boolean z2 = (containerItem.mime.equals("video/mp4") || containerItem.mime.equals("video/quicktime")) ? z : false;
            if (size == 0) {
                motionPhotoMetadata = motionPhotoMetadata2;
                j3 -= containerItem.padding;
                j2 = 0;
            } else {
                motionPhotoMetadata = motionPhotoMetadata2;
                j2 = j3 - containerItem.length;
            }
            long j8 = j3;
            j3 = j2;
            if (z2 && j3 != j8) {
                j7 = j8 - j3;
                j6 = j3;
            }
            if (size == 0) {
                j5 = j8;
                j4 = j3;
            }
            size--;
            motionPhotoMetadata2 = motionPhotoMetadata;
            z = true;
        }
        return (j6 == -1 || j7 == -1 || j4 == -1 || j5 == -1) ? motionPhotoMetadata2 : new MotionPhotoMetadata(j4, j5, this.photoPresentationTimestampUs, j6, j7);
    }
}
