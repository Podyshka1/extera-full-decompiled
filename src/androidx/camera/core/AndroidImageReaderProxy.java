package androidx.camera.core;

import android.media.Image;
import android.media.ImageReader;
import android.view.Surface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.MainThreadAsyncHandler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
class AndroidImageReaderProxy implements ImageReaderProxy {
    private final ImageReader mImageReader;
    private final Object mLock = new Object();
    private boolean mIsImageAvailableListenerCleared = true;

    AndroidImageReaderProxy(ImageReader imageReader) {
        this.mImageReader = imageReader;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireLatestImage() {
        Image imageAcquireLatestImage;
        synchronized (this.mLock) {
            try {
                imageAcquireLatestImage = this.mImageReader.acquireLatestImage();
            } catch (RuntimeException e) {
                if (!isImageReaderContextNotInitializedException(e)) {
                    throw e;
                }
                imageAcquireLatestImage = null;
            }
            if (imageAcquireLatestImage == null) {
                return null;
            }
            return new AndroidImageProxy(imageAcquireLatestImage);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireNextImage() {
        Image imageAcquireNextImage;
        synchronized (this.mLock) {
            try {
                imageAcquireNextImage = this.mImageReader.acquireNextImage();
            } catch (RuntimeException e) {
                if (!isImageReaderContextNotInitializedException(e)) {
                    throw e;
                }
                imageAcquireNextImage = null;
            }
            if (imageAcquireNextImage == null) {
                return null;
            }
            return new AndroidImageProxy(imageAcquireNextImage);
        }
    }

    private boolean isImageReaderContextNotInitializedException(RuntimeException runtimeException) {
        return "ImageReaderContext is not initialized".equals(runtimeException.getMessage());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void close() {
        synchronized (this.mLock) {
            this.mImageReader.close();
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getHeight() {
        int height;
        synchronized (this.mLock) {
            height = this.mImageReader.getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getWidth() {
        int width;
        synchronized (this.mLock) {
            width = this.mImageReader.getWidth();
        }
        return width;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getImageFormat() {
        int imageFormat;
        synchronized (this.mLock) {
            imageFormat = this.mImageReader.getImageFormat();
        }
        return imageFormat;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getMaxImages() {
        int maxImages;
        synchronized (this.mLock) {
            maxImages = this.mImageReader.getMaxImages();
        }
        return maxImages;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public Surface getSurface() {
        Surface surface;
        synchronized (this.mLock) {
            surface = this.mImageReader.getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void setOnImageAvailableListener(final ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, final Executor executor) {
        synchronized (this.mLock) {
            this.mIsImageAvailableListenerCleared = false;
            this.mImageReader.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: androidx.camera.core.AndroidImageReaderProxy$$ExternalSyntheticLambda0
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader) {
                    AndroidImageReaderProxy.$r8$lambda$0d9VKBtme9NUYt20OFXADDntWdE(this.f$0, executor, onImageAvailableListener, imageReader);
                }
            }, MainThreadAsyncHandler.getInstance());
        }
    }

    public static /* synthetic */ void $r8$lambda$0d9VKBtme9NUYt20OFXADDntWdE(final AndroidImageReaderProxy androidImageReaderProxy, Executor executor, final ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, ImageReader imageReader) {
        synchronized (androidImageReaderProxy.mLock) {
            try {
                if (!androidImageReaderProxy.mIsImageAvailableListenerCleared) {
                    executor.execute(new Runnable() { // from class: androidx.camera.core.AndroidImageReaderProxy$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AndroidImageReaderProxy.m1963$r8$lambda$VU285rPvGaxlLdZyrpjv6_gV1k(this.f$0, onImageAvailableListener);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$VU285rPvGaxlLdZyr-pjv6_gV1k, reason: not valid java name */
    public static /* synthetic */ void m1963$r8$lambda$VU285rPvGaxlLdZyrpjv6_gV1k(AndroidImageReaderProxy androidImageReaderProxy, ImageReaderProxy.OnImageAvailableListener onImageAvailableListener) {
        androidImageReaderProxy.getClass();
        onImageAvailableListener.onImageAvailable(androidImageReaderProxy);
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void clearOnImageAvailableListener() {
        synchronized (this.mLock) {
            this.mIsImageAvailableListenerCleared = true;
            this.mImageReader.setOnImageAvailableListener(null, null);
        }
    }
}
