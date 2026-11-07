package org.telegram.ui.Components.blur3.utils;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes7.dex */
public class BitmapMemoizedMetadata<T> {
    private final BitmapChangeTracker lastBitmap = new BitmapChangeTracker();
    private T memoized;
    private final Provider<T> provider;

    public interface Provider<T> {
        T get(Bitmap bitmap);
    }

    public BitmapMemoizedMetadata(Provider<T> provider) {
        this.provider = provider;
    }

    public T get(Bitmap bitmap) {
        if (this.lastBitmap.isInvalidated(bitmap)) {
            this.memoized = this.provider.get(bitmap);
            this.lastBitmap.set(bitmap);
        }
        return this.memoized;
    }
}
