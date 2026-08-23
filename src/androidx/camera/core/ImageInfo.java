package androidx.camera.core;

import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes3.dex */
public interface ImageInfo {
    int getFlashState();

    TagBundle getTagBundle();

    long getTimestamp();

    void populateExifData(ExifData.Builder builder);

    /* JADX INFO: renamed from: androidx.camera.core.ImageInfo$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static int $default$getFlashState(ImageInfo imageInfo) {
            return 0;
        }
    }
}
