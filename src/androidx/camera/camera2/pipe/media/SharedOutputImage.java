package androidx.camera.camera2.pipe.media;

import android.media.Image;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\u000f\u0010\u0002\u001a\u00020\u0000H&¢\u0006\u0004\b\u0002\u0010\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/media/SharedOutputImage;", "Landroidx/camera/camera2/pipe/media/OutputImage;", "acquire", "()Landroidx/camera/camera2/pipe/media/SharedOutputImage;", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public interface SharedOutputImage extends OutputImage {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    SharedOutputImage acquire();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "from", "Landroidx/camera/camera2/pipe/media/SharedOutputImage;", "image", "Landroidx/camera/camera2/pipe/media/OutputImage;", "SharedOutputImageImpl", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SharedOutputImage from(OutputImage image) {
            if (image instanceof SharedOutputImage) {
                return ((SharedOutputImage) image).acquire();
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) image.unwrapAs(Reflection.getOrCreateKotlinClass(SharedOutputImage.class));
            if (sharedOutputImage != null) {
                return sharedOutputImage.acquire();
            }
            return new SharedOutputImageImpl(image, new SharedReference(image, ClosingFinalizer.INSTANCE));
        }

        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\n\u0010\tJ)\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\f*\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0017R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;", "Landroidx/camera/camera2/pipe/media/OutputImage;", "Landroidx/camera/camera2/pipe/media/SharedOutputImage;", "outputImage", "Landroidx/camera/camera2/pipe/media/SharedReference;", "sharedReference", "<init>", "(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V", "acquire", "()Landroidx/camera/camera2/pipe/media/SharedOutputImage;", "acquireOrNull", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "close", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/media/OutputImage;", "Landroidx/camera/camera2/pipe/media/SharedReference;", "Lkotlinx/atomicfu/AtomicBoolean;", "closed", "Lkotlinx/atomicfu/AtomicBoolean;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class SharedOutputImageImpl implements OutputImage, SharedOutputImage {
            private final AtomicBoolean closed = AtomicFU.atomic(false);
            private final OutputImage outputImage;
            private final SharedReference<OutputImage> sharedReference;

            public SharedOutputImageImpl(OutputImage outputImage, SharedReference<OutputImage> sharedReference) {
                this.outputImage = outputImage;
                this.sharedReference = sharedReference;
            }

            @Override // androidx.camera.camera2.pipe.media.SharedOutputImage
            public SharedOutputImage acquire() {
                SharedOutputImage sharedOutputImageAcquireOrNull = acquireOrNull();
                if (sharedOutputImageAcquireOrNull != null) {
                    return sharedOutputImageAcquireOrNull;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("Required value was null.");
                return null;
            }

            public SharedOutputImage acquireOrNull() {
                if (this.closed.getValue() || this.sharedReference.acquireOrNull() == null) {
                    return null;
                }
                return new SharedOutputImageImpl(this.outputImage, this.sharedReference);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public <T> T unwrapAs(KClass<T> type) {
                if (this.closed.getValue()) {
                    return null;
                }
                if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(SharedOutputImage.class)) || Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(OutputImage.class)) || Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(ImageWrapper.class))) {
                    return this;
                }
                if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Image.class))) {
                    throw new UnsupportedOperationException("Cannot unwrap " + this + " as android.media.Image. Use setFinalizerinstead and close all outstanding references.");
                }
                return (T) this.outputImage.unwrapAs(type);
            }

            @Override // java.lang.AutoCloseable
            public void close() {
                if (this.closed.compareAndSet(false, true)) {
                    this.sharedReference.decrement();
                }
            }

            public String toString() {
                return this.outputImage.toString();
            }
        }
    }
}
