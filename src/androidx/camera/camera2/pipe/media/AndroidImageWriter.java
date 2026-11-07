package androidx.camera.camera2.pipe.media;

import android.media.Image;
import android.media.ImageWriter;
import android.os.Build;
import android.os.Handler;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.view.Surface;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.compat.Api29Compat;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal.url._UrlKt;
import okio.SegmentedByteString$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.signature.SignatureVisitor;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0001(B\u0019\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0018\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0015*\u00020\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001eR\u001c\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001a\u0010#\u001a\u00020\"8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020\"8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010\u001e\u001a\u0004\b'\u0010%¨\u0006)"}, d2 = {"Landroidx/camera/camera2/pipe/media/AndroidImageWriter;", "Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;", "Landroid/media/ImageWriter$OnImageReleasedListener;", "Landroid/media/ImageWriter;", "imageWriter", "Landroidx/camera/camera2/pipe/InputStreamId;", "inputStreamId", "<init>", "(Landroid/media/ImageWriter;I)V", "Landroidx/camera/camera2/pipe/media/ImageWrapper;", "image", _UrlKt.FRAGMENT_ENCODE_SET, "queueInputImage", "(Landroidx/camera/camera2/pipe/media/ImageWrapper;)Z", "writer", _UrlKt.FRAGMENT_ENCODE_SET, "onImageReleased", "(Landroid/media/ImageWriter;)V", "close", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroid/media/ImageWriter;", "I", "Lkotlinx/atomicfu/AtomicRef;", "onImageReleasedListener", "Lkotlinx/atomicfu/AtomicRef;", _UrlKt.FRAGMENT_ENCODE_SET, "maxImages", "getMaxImages", "()I", "format", "getFormat", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidImageWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidImageWriter.kt\nandroidx/camera/camera2/pipe/media/AndroidImageWriter\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,130:1\n71#2,2:131\n71#2,2:133\n*S KotlinDebug\n*F\n+ 1 AndroidImageWriter.kt\nandroidx/camera/camera2/pipe/media/AndroidImageWriter\n*L\n47#1:131,2\n53#1:133,2\n*E\n"})
public final class AndroidImageWriter implements ImageWriterWrapper, ImageWriter.OnImageReleasedListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int format;
    private final ImageWriter imageWriter;
    private final int inputStreamId;
    private final int maxImages;
    private final AtomicRef<Object> onImageReleasedListener;

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
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(image);
            return false;
        }
    }

    @Override // android.media.ImageWriter.OnImageReleasedListener
    public void onImageReleased(ImageWriter writer) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.onImageReleasedListener.getValue());
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.imageWriter.close();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(ImageWriter.class))) {
            return (T) this.imageWriter;
        }
        return null;
    }

    public String toString() {
        return "ImageWriter-" + StreamFormat.m1464getNameimpl(StreamFormat.m1461constructorimpl(this.imageWriter.getFormat())) + SignatureVisitor.SUPER + ((Object) InputStreamId.m1350toStringimpl(this.inputStreamId));
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "create", "Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;", "surface", "Landroid/view/Surface;", "inputStreamId", "Landroidx/camera/camera2/pipe/InputStreamId;", "maxImages", _UrlKt.FRAGMENT_ENCODE_SET, "format", "Landroidx/camera/camera2/pipe/StreamFormat;", "handler", "Landroid/os/Handler;", "create-U86x6Zg", "(Landroid/view/Surface;IILandroidx/camera/camera2/pipe/StreamFormat;Landroid/os/Handler;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAndroidImageWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidImageWriter.kt\nandroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,130:1\n1#2:131\n71#3,2:132\n*S KotlinDebug\n*F\n+ 1 AndroidImageWriter.kt\nandroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion\n*L\n115#1:132,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: create-U86x6Zg, reason: not valid java name */
        public final ImageWriterWrapper m1649createU86x6Zg(Surface surface, int inputStreamId, int maxImages, StreamFormat format, Handler handler) {
            ImageWriter imageWriterNewInstance;
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (maxImages <= 0) {
                SegmentedByteString$$ExternalSyntheticBUOutline0.m926m("Max images (", maxImages, ") must be > 0");
                return null;
            }
            if (maxImages > 54) {
                f$$ExternalSyntheticBUOutline1.m212m("Max images for ImageWriters is restricted to 54 to prevent overloading downstream consumer components.");
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i < 29 || format == null) {
                if (format != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Ignoring format (" + ((Object) StreamFormat.m1466toStringimpl(format.getValue())) + ") for " + ((Object) InputStreamId.m1350toStringimpl(inputStreamId)) + ". Android " + i + " does not support creating ImageWriters with formats. This may lead to unexpected behaviors.");
                }
                imageWriterNewInstance = ImageWriter.newInstance(surface, maxImages);
            } else {
                imageWriterNewInstance = Api29Compat.imageWriterNewInstance(surface, maxImages, format.getValue());
            }
            AndroidImageWriter androidImageWriter = new AndroidImageWriter(imageWriterNewInstance, inputStreamId, defaultConstructorMarker);
            imageWriterNewInstance.setOnImageReleasedListener(androidImageWriter, handler);
            return androidImageWriter;
        }
    }
}
