package androidx.camera.camera2.pipe.media;

import android.media.Image;
import android.os.Build;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api28Compat;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidImage implements ImageWrapper {
    private final int format;
    private final int height;
    private final Image image;
    private final Object lock;
    private final long timestamp;
    private final int width;

    public AndroidImage(Image image) {
        Intrinsics.checkNotNullParameter(image, "image");
        this.image = image;
        this.lock = new Object();
        this.format = image.getFormat();
        this.width = image.getWidth();
        this.height = image.getHeight();
        this.timestamp = image.getTimestamp();
    }

    public int getFormat() {
        return this.format;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Image.class))) {
            Image image = this.image;
            Intrinsics.checkNotNull(image, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.media.AndroidImage.unwrapAs");
            return image;
        }
        if (Build.VERSION.SDK_INT > 27) {
            return Api28Compat.unwrapAsHardwareBuffer(this.image, type);
        }
        return null;
    }

    public String toString() {
        return "Image-" + StreamFormat.m1776getNameimpl(StreamFormat.m1773constructorimpl(getFormat())) + "-w" + getWidth() + 'h' + getHeight() + "-t" + getTimestamp();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.image.close();
    }
}
