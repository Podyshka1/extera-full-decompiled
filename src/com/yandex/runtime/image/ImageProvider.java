package com.yandex.runtime.image;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ImageProvider {
    private final boolean cacheable;

    public abstract String getId();

    public abstract Bitmap getImage();

    public ImageProvider() {
        this(true);
    }

    public ImageProvider(boolean z) {
        this.cacheable = z;
    }

    public boolean isCacheable() {
        return this.cacheable;
    }

    private static abstract class ImageProviderImpl extends ImageProvider {

        /* JADX INFO: renamed from: id */
        private final String f624id;

        protected abstract Bitmap loadBitmap();

        public ImageProviderImpl(String str, boolean z) {
            super(z);
            this.f624id = str;
        }

        @Override // com.yandex.runtime.image.ImageProvider
        public String getId() {
            return this.f624id;
        }

        @Override // com.yandex.runtime.image.ImageProvider
        public Bitmap getImage() {
            return loadBitmap();
        }
    }

    public static ImageProvider fromBitmap(Bitmap bitmap) {
        return fromBitmap(bitmap, true, "bitmap:" + UUID.randomUUID().toString());
    }

    public static ImageProvider fromBitmap(final Bitmap bitmap, boolean z, final String str) {
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            throw new IllegalArgumentException("Bitmap config value should be ARGB_8888");
        }
        return new ImageProvider(z) { // from class: com.yandex.runtime.image.ImageProvider.1
            @Override // com.yandex.runtime.image.ImageProvider
            public String getId() {
                return str;
            }

            @Override // com.yandex.runtime.image.ImageProvider
            public Bitmap getImage() {
                return bitmap;
            }
        };
    }

    public static ImageProvider fromAsset(Context context, String str) {
        return fromAsset(context, str, true);
    }

    public static ImageProvider fromAsset(Context context, final String str, boolean z) {
        final AssetManager assets = context.getAssets();
        return new ImageProviderImpl("asset:" + str, z) { // from class: com.yandex.runtime.image.ImageProvider.2
            @Override // com.yandex.runtime.image.ImageProvider.ImageProviderImpl
            protected Bitmap loadBitmap() {
                Bitmap bitmapDecodeStream = null;
                try {
                    InputStream inputStreamOpen = assets.open(str);
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                        return bitmapDecodeStream;
                    } finally {
                        inputStreamOpen.close();
                    }
                } catch (IOException e) {
                    Log.e("yandex.maps", "Can't load image from asset: " + str, e);
                    return bitmapDecodeStream;
                }
            }
        };
    }

    public static ImageProvider fromResource(Context context, int i) {
        return fromResource(context, i, true);
    }

    public static ImageProvider fromResource(Context context, final int i, boolean z) {
        final Resources resources = context.getResources();
        return new ImageProviderImpl("resource:" + i, z) { // from class: com.yandex.runtime.image.ImageProvider.3
            @Override // com.yandex.runtime.image.ImageProvider.ImageProviderImpl
            protected Bitmap loadBitmap() {
                return BitmapFactory.decodeResource(resources, i);
            }
        };
    }

    public static ImageProvider fromFile(String str) {
        return fromFile(str, true);
    }

    public static ImageProvider fromFile(final String str, boolean z) {
        return new ImageProviderImpl("file:" + str, z) { // from class: com.yandex.runtime.image.ImageProvider.4
            @Override // com.yandex.runtime.image.ImageProvider.ImageProviderImpl
            protected Bitmap loadBitmap() {
                return BitmapFactory.decodeFile(str);
            }
        };
    }
}
