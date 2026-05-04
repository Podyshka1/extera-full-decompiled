package androidx.camera.core;

import android.media.ImageReader;
import android.util.LongSparseArray;
import android.view.Surface;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class MetadataImageReader implements ImageReaderProxy, ForwardingImageProxy.OnImageCloseListener {
    private final List mAcquiredImageProxies;
    private CameraCaptureCallback mCameraCaptureCallback;
    private boolean mClosed;
    private Executor mExecutor;
    private int mImageProxiesIndex;
    private final ImageReaderProxy mImageReaderProxy;
    ImageReaderProxy.OnImageAvailableListener mListener;
    private final Object mLock;
    private final List mMatchedImageProxies;
    private final LongSparseArray mPendingImageInfos;
    private final LongSparseArray mPendingImages;
    private ImageReaderProxy.OnImageAvailableListener mTransformedListener;
    private int mUnAcquiredAvailableImageCount;

    public static /* synthetic */ void $r8$lambda$uxDvm7kLxw0WlB3lkvXpuw_QwbI(MetadataImageReader metadataImageReader, ImageReaderProxy imageReaderProxy) {
        synchronized (metadataImageReader.mLock) {
            metadataImageReader.mUnAcquiredAvailableImageCount++;
        }
        metadataImageReader.imageIncoming(imageReaderProxy);
    }

    public MetadataImageReader(int i, int i2, int i3, int i4) {
        this(createImageReaderProxy(i, i2, i3, i4));
    }

    private static ImageReaderProxy createImageReaderProxy(int i, int i2, int i3, int i4) {
        return new AndroidImageReaderProxy(ImageReader.newInstance(i, i2, i3, i4));
    }

    MetadataImageReader(ImageReaderProxy imageReaderProxy) {
        this.mLock = new Object();
        this.mCameraCaptureCallback = new CameraCaptureCallback() { // from class: androidx.camera.core.MetadataImageReader.1
            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
                super.onCaptureCompleted(i, cameraCaptureResult);
                MetadataImageReader.this.resultIncoming(cameraCaptureResult);
            }
        };
        this.mUnAcquiredAvailableImageCount = 0;
        this.mTransformedListener = new ImageReaderProxy.OnImageAvailableListener() { // from class: androidx.camera.core.MetadataImageReader$$ExternalSyntheticLambda0
            @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
            public final void onImageAvailable(ImageReaderProxy imageReaderProxy2) {
                MetadataImageReader.$r8$lambda$uxDvm7kLxw0WlB3lkvXpuw_QwbI(this.f$0, imageReaderProxy2);
            }
        };
        this.mClosed = false;
        this.mPendingImageInfos = new LongSparseArray();
        this.mPendingImages = new LongSparseArray();
        this.mAcquiredImageProxies = new ArrayList();
        this.mImageReaderProxy = imageReaderProxy;
        this.mImageProxiesIndex = 0;
        this.mMatchedImageProxies = new ArrayList(getMaxImages());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireLatestImage() {
        synchronized (this.mLock) {
            try {
                if (this.mMatchedImageProxies.isEmpty()) {
                    return null;
                }
                if (this.mImageProxiesIndex >= this.mMatchedImageProxies.size()) {
                    throw new IllegalStateException("Maximum image number reached.");
                }
                ArrayList arrayList = new ArrayList();
                int i = 0;
                for (int i2 = 0; i2 < this.mMatchedImageProxies.size() - 1; i2++) {
                    if (!this.mAcquiredImageProxies.contains(this.mMatchedImageProxies.get(i2))) {
                        arrayList.add((ImageProxy) this.mMatchedImageProxies.get(i2));
                    }
                }
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((ImageProxy) obj).close();
                }
                int size2 = this.mMatchedImageProxies.size();
                List list = this.mMatchedImageProxies;
                this.mImageProxiesIndex = size2;
                ImageProxy imageProxy = (ImageProxy) list.get(size2 - 1);
                this.mAcquiredImageProxies.add(imageProxy);
                return imageProxy;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public ImageProxy acquireNextImage() {
        synchronized (this.mLock) {
            try {
                if (this.mMatchedImageProxies.isEmpty()) {
                    return null;
                }
                if (this.mImageProxiesIndex >= this.mMatchedImageProxies.size()) {
                    throw new IllegalStateException("Maximum image number reached.");
                }
                List list = this.mMatchedImageProxies;
                int i = this.mImageProxiesIndex;
                this.mImageProxiesIndex = i + 1;
                ImageProxy imageProxy = (ImageProxy) list.get(i);
                this.mAcquiredImageProxies.add(imageProxy);
                return imageProxy;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void close() {
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.mMatchedImageProxies);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((ImageProxy) obj).close();
                }
                this.mMatchedImageProxies.clear();
                this.mImageReaderProxy.close();
                this.mClosed = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getHeight() {
        int height;
        synchronized (this.mLock) {
            height = this.mImageReaderProxy.getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getWidth() {
        int width;
        synchronized (this.mLock) {
            width = this.mImageReaderProxy.getWidth();
        }
        return width;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getImageFormat() {
        int imageFormat;
        synchronized (this.mLock) {
            imageFormat = this.mImageReaderProxy.getImageFormat();
        }
        return imageFormat;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public int getMaxImages() {
        int maxImages;
        synchronized (this.mLock) {
            maxImages = this.mImageReaderProxy.getMaxImages();
        }
        return maxImages;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public Surface getSurface() {
        Surface surface;
        synchronized (this.mLock) {
            surface = this.mImageReaderProxy.getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void setOnImageAvailableListener(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, Executor executor) {
        synchronized (this.mLock) {
            this.mListener = (ImageReaderProxy.OnImageAvailableListener) Preconditions.checkNotNull(onImageAvailableListener);
            this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
            this.mImageReaderProxy.setOnImageAvailableListener(this.mTransformedListener, executor);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public void clearOnImageAvailableListener() {
        synchronized (this.mLock) {
            this.mImageReaderProxy.clearOnImageAvailableListener();
            this.mListener = null;
            this.mExecutor = null;
            this.mUnAcquiredAvailableImageCount = 0;
        }
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public void onImageClose(ImageProxy imageProxy) {
        synchronized (this.mLock) {
            dequeImageProxy(imageProxy);
        }
    }

    private void enqueueImageProxy(SettableImageProxy settableImageProxy) {
        final ImageReaderProxy.OnImageAvailableListener onImageAvailableListener;
        Executor executor;
        synchronized (this.mLock) {
            try {
                if (this.mMatchedImageProxies.size() < getMaxImages()) {
                    settableImageProxy.addOnImageCloseListener(this);
                    this.mMatchedImageProxies.add(settableImageProxy);
                    onImageAvailableListener = this.mListener;
                    executor = this.mExecutor;
                } else {
                    Logger.m76d("TAG", "Maximum image number reached.");
                    settableImageProxy.close();
                    onImageAvailableListener = null;
                    executor = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (onImageAvailableListener != null) {
            if (executor != null) {
                executor.execute(new Runnable() { // from class: androidx.camera.core.MetadataImageReader$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MetadataImageReader.$r8$lambda$OjJ1V45j4ZKbpW9cCAbCbNa1Ia4(this.f$0, onImageAvailableListener);
                    }
                });
            } else {
                onImageAvailableListener.onImageAvailable(this);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$OjJ1V45j4ZKbpW9cCAbCbNa1Ia4(MetadataImageReader metadataImageReader, ImageReaderProxy.OnImageAvailableListener onImageAvailableListener) {
        metadataImageReader.getClass();
        onImageAvailableListener.onImageAvailable(metadataImageReader);
    }

    private void dequeImageProxy(ImageProxy imageProxy) {
        synchronized (this.mLock) {
            try {
                int iIndexOf = this.mMatchedImageProxies.indexOf(imageProxy);
                if (iIndexOf >= 0) {
                    this.mMatchedImageProxies.remove(iIndexOf);
                    int i = this.mImageProxiesIndex;
                    if (iIndexOf <= i) {
                        this.mImageProxiesIndex = i - 1;
                    }
                }
                this.mAcquiredImageProxies.remove(imageProxy);
                if (this.mUnAcquiredAvailableImageCount > 0) {
                    imageIncoming(this.mImageReaderProxy);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public CameraCaptureCallback getCameraCaptureCallback() {
        return this.mCameraCaptureCallback;
    }

    void imageIncoming(ImageReaderProxy imageReaderProxy) {
        ImageProxy imageProxyAcquireNextImage;
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    return;
                }
                int size = this.mPendingImages.size() + this.mMatchedImageProxies.size();
                if (size >= imageReaderProxy.getMaxImages()) {
                    Logger.m76d("MetadataImageReader", "Skip to acquire the next image because the acquired image count has reached the max images count.");
                    return;
                }
                do {
                    try {
                        imageProxyAcquireNextImage = imageReaderProxy.acquireNextImage();
                        if (imageProxyAcquireNextImage != null) {
                            this.mUnAcquiredAvailableImageCount--;
                            size++;
                            this.mPendingImages.put(imageProxyAcquireNextImage.getImageInfo().getTimestamp(), imageProxyAcquireNextImage);
                            matchImages();
                        }
                    } catch (IllegalStateException e) {
                        Logger.m77d("MetadataImageReader", "Failed to acquire next image.", e);
                        imageProxyAcquireNextImage = null;
                    }
                    if (imageProxyAcquireNextImage == null || this.mUnAcquiredAvailableImageCount <= 0) {
                        break;
                    }
                } while (size < imageReaderProxy.getMaxImages());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void resultIncoming(CameraCaptureResult cameraCaptureResult) {
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    return;
                }
                this.mPendingImageInfos.put(cameraCaptureResult.getTimestamp(), new CameraCaptureResultImageInfo(cameraCaptureResult));
                matchImages();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void removeStaleData() {
        synchronized (this.mLock) {
            try {
                if (this.mPendingImages.size() != 0 && this.mPendingImageInfos.size() != 0) {
                    long jKeyAt = this.mPendingImages.keyAt(0);
                    Long lValueOf = Long.valueOf(jKeyAt);
                    long jKeyAt2 = this.mPendingImageInfos.keyAt(0);
                    Preconditions.checkArgument(!Long.valueOf(jKeyAt2).equals(lValueOf));
                    if (jKeyAt2 > jKeyAt) {
                        for (int size = this.mPendingImages.size() - 1; size >= 0; size--) {
                            if (this.mPendingImages.keyAt(size) < jKeyAt2) {
                                ((ImageProxy) this.mPendingImages.valueAt(size)).close();
                                this.mPendingImages.removeAt(size);
                            }
                        }
                    } else {
                        for (int size2 = this.mPendingImageInfos.size() - 1; size2 >= 0; size2--) {
                            if (this.mPendingImageInfos.keyAt(size2) < jKeyAt) {
                                this.mPendingImageInfos.removeAt(size2);
                            }
                        }
                    }
                }
            } finally {
            }
        }
    }

    private void matchImages() {
        synchronized (this.mLock) {
            try {
                for (int size = this.mPendingImageInfos.size() - 1; size >= 0; size--) {
                    ImageInfo imageInfo = (ImageInfo) this.mPendingImageInfos.valueAt(size);
                    long timestamp = imageInfo.getTimestamp();
                    ImageProxy imageProxy = (ImageProxy) this.mPendingImages.get(timestamp);
                    if (imageProxy != null) {
                        this.mPendingImages.remove(timestamp);
                        this.mPendingImageInfos.removeAt(size);
                        enqueueImageProxy(new SettableImageProxy(imageProxy, imageInfo));
                    }
                }
                removeStaleData();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
