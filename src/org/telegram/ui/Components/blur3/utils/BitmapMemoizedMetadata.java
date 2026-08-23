package org.telegram.ui.Components.blur3.utils;

import android.graphics.Bitmap;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
public class BitmapMemoizedMetadata<T> {
    private long generationId;
    private T memoized;
    private final Provider<T> provider;
    private WeakReference<Bitmap> ref;

    public interface Provider<T> {
        T get(Bitmap bitmap);

        default boolean isValid(T t) {
            return true;
        }
    }

    public BitmapMemoizedMetadata(Provider<T> provider) {
        this.provider = provider;
    }

    public T get(Bitmap bitmap) {
        WeakReference<Bitmap> weakReference = this.ref;
        Bitmap bitmap2 = weakReference != null ? weakReference.get() : null;
        long generationId = (bitmap == null || bitmap.isRecycled()) ? 0L : bitmap.getGenerationId();
        if (bitmap != null && bitmap2 == bitmap && generationId == this.generationId && this.provider.isValid(this.memoized)) {
            return this.memoized;
        }
        this.ref = new WeakReference<>(bitmap);
        this.generationId = generationId;
        T t = this.provider.get(bitmap);
        this.memoized = t;
        return t;
    }
}
