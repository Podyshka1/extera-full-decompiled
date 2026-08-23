package androidx.camera.camera2.pipe.media;

import androidx.camera.camera2.pipe.UnsafeWrapper;

/* JADX INFO: loaded from: classes3.dex */
public interface ImageWriterWrapper extends UnsafeWrapper, AutoCloseable {
    boolean queueInputImage(ImageWrapper imageWrapper);
}
