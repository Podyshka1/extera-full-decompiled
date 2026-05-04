package androidx.camera.camera2.pipe.media;

import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api29Compat;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidImageWriter implements ImageWriterWrapper, ImageWriter.OnImageReleasedListener {
    public static final Companion Companion = new Companion(null);
    private final int format;
    private final ImageWriter imageWriter;
    private final int inputStreamId;
    private final int maxImages;
    private final AtomicRef onImageReleasedListener;

    public /* synthetic */ AndroidImageWriter(ImageWriter imageWriter, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(imageWriter, i);
    }

    private AndroidImageWriter(ImageWriter imageWriter, int i) {
        this.imageWriter = imageWriter;
        this.inputStreamId = i;
        this.onImageReleasedListener = AtomicFU.atomic((Object) null);
        this.maxImages = imageWriter.getMaxImages();
        this.format = imageWriter.getFormat();
    }

    @Override // androidx.camera.camera2.pipe.media.ImageWriterWrapper
    public boolean queueInputImage(ImageWrapper image) throws Exception {
        Intrinsics.checkNotNullParameter(image, "image");
        try {
            Image image2 = (Image) image.unwrapAs(Reflection.getOrCreateKotlinClass(Image.class));
            if (image2 != null) {
                this.imageWriter.queueInputImage(image2);
                return true;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to unwrap image wrapper " + image);
            }
            return false;
        } catch (Throwable th) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to queue image to " + this + " due to error " + th.getMessage() + ". Ignoring failure and closing " + image);
            }
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(image);
            return false;
        }
    }

    @Override // android.media.ImageWriter.OnImageReleasedListener
    public void onImageReleased(ImageWriter imageWriter) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(this.onImageReleasedListener.getValue());
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.imageWriter.close();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(ImageWriter.class))) {
            return this.imageWriter;
        }
        return null;
    }

    public String toString() {
        return "ImageWriter-" + StreamFormat.m1776getNameimpl(StreamFormat.m1773constructorimpl(this.imageWriter.getFormat())) + SignatureVisitor.SUPER + ((Object) InputStreamId.m1654toStringimpl(this.inputStreamId));
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: create-U86x6Zg, reason: not valid java name */
        public final ImageWriterWrapper m1962createU86x6Zg(Surface surface, int i, int i2, StreamFormat streamFormat, Handler handler) {
            ImageWriter imageWriterNewInstance;
            Intrinsics.checkNotNullParameter(surface, "surface");
            Intrinsics.checkNotNullParameter(handler, "handler");
            if (i2 <= 0) {
                throw new IllegalArgumentException(("Max images (" + i2 + ") must be > 0").toString());
            }
            if (i2 > 54) {
                throw new IllegalArgumentException("Max images for ImageWriters is restricted to 54 to prevent overloading downstream consumer components.");
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 < 29 || streamFormat == null) {
                if (streamFormat != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Ignoring format (" + ((Object) StreamFormat.m1778toStringimpl(streamFormat.m1779unboximpl())) + ") for " + ((Object) InputStreamId.m1654toStringimpl(i)) + ". Android " + i3 + " does not support creating ImageWriters with formats. This may lead to unexpected behaviors.");
                }
                imageWriterNewInstance = ImageWriter.newInstance(surface, i2);
                Intrinsics.checkNotNull(imageWriterNewInstance);
            } else {
                imageWriterNewInstance = Api29Compat.imageWriterNewInstance(surface, i2, streamFormat.m1779unboximpl());
            }
            AndroidImageWriter androidImageWriter = new AndroidImageWriter(imageWriterNewInstance, i, null);
            imageWriterNewInstance.setOnImageReleasedListener(androidImageWriter, handler);
            return androidImageWriter;
        }
    }
}
