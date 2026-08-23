package org.telegram.p029ui.Components.blur3.utils;

import android.graphics.Bitmap;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class BitmapMemoizedMetadata {
    private long generationId;
    private Object memoized;
    private final Provider provider;
    private WeakReference ref;

    /* JADX INFO: loaded from: classes7.dex */
    public interface Provider {
        Object get(Bitmap bitmap);

        boolean isValid(Object obj);

        /* JADX INFO: renamed from: org.telegram.ui.Components.blur3.utils.BitmapMemoizedMetadata$Provider$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static boolean $default$isValid(Provider provider, Object obj) {
                return true;
            }
        }
    }

    public BitmapMemoizedMetadata(Provider provider) {
        this.provider = provider;
    }

    public Object get(Bitmap bitmap) {
        WeakReference weakReference = this.ref;
        Bitmap bitmap2 = weakReference != null ? (Bitmap) weakReference.get() : null;
        long generationId = (bitmap == null || bitmap.isRecycled()) ? 0L : bitmap.getGenerationId();
        if (bitmap != null && bitmap2 == bitmap && generationId == this.generationId && this.provider.isValid(this.memoized)) {
            return this.memoized;
        }
        this.ref = new WeakReference(bitmap);
        this.generationId = generationId;
        Object obj = this.provider.get(bitmap);
        this.memoized = obj;
        return obj;
    }
}
