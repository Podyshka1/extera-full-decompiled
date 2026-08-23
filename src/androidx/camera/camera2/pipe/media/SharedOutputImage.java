package androidx.camera.camera2.pipe.media;

import android.media.Image;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;

/* JADX INFO: loaded from: classes3.dex */
public interface SharedOutputImage extends OutputImage {
    public static final Companion Companion = Companion.$$INSTANCE;

    SharedOutputImage acquire();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final SharedOutputImage from(OutputImage image) {
            Intrinsics.checkNotNullParameter(image, "image");
            if (image instanceof SharedOutputImage) {
                return ((SharedOutputImage) image).acquire();
            }
            SharedOutputImage sharedOutputImage = (SharedOutputImage) image.unwrapAs(Reflection.getOrCreateKotlinClass(SharedOutputImage.class));
            if (sharedOutputImage != null) {
                return sharedOutputImage.acquire();
            }
            return new SharedOutputImageImpl(image, new SharedReference(image, ClosingFinalizer.INSTANCE));
        }

        private static final class SharedOutputImageImpl implements OutputImage, SharedOutputImage {
            private final AtomicBoolean closed;
            private final OutputImage outputImage;
            private final SharedReference sharedReference;

            public SharedOutputImageImpl(OutputImage outputImage, SharedReference sharedReference) {
                Intrinsics.checkNotNullParameter(outputImage, "outputImage");
                Intrinsics.checkNotNullParameter(sharedReference, "sharedReference");
                this.outputImage = outputImage;
                this.sharedReference = sharedReference;
                this.closed = AtomicFU.atomic(false);
            }

            @Override // androidx.camera.camera2.pipe.media.SharedOutputImage
            public SharedOutputImage acquire() {
                SharedOutputImage sharedOutputImageAcquireOrNull = acquireOrNull();
                if (sharedOutputImageAcquireOrNull != null) {
                    return sharedOutputImageAcquireOrNull;
                }
                throw new IllegalStateException("Required value was null.");
            }

            public SharedOutputImage acquireOrNull() {
                if (this.closed.getValue() || ((OutputImage) this.sharedReference.acquireOrNull()) == null) {
                    return null;
                }
                return new SharedOutputImageImpl(this.outputImage, this.sharedReference);
            }

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public Object unwrapAs(KClass type) {
                Intrinsics.checkNotNullParameter(type, "type");
                if (this.closed.getValue()) {
                    return null;
                }
                if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(SharedOutputImage.class)) || Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(OutputImage.class)) || Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(ImageWrapper.class))) {
                    return this;
                }
                if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(Image.class))) {
                    throw new UnsupportedOperationException("Cannot unwrap " + this + " as android.media.Image. Use setFinalizerinstead and close all outstanding references.");
                }
                return this.outputImage.unwrapAs(type);
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
