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
import p002c.f$$ExternalSyntheticBUOutline1;

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

    public static abstract class ImageProviderImpl extends ImageProvider {
        private final String id;

        public abstract Bitmap loadBitmap();

        public ImageProviderImpl(String str, boolean z) {
            super(z);
            this.id = str;
        }

        @Override // com.yandex.runtime.image.ImageProvider
        public String getId() {
            return this.id;
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
            f$$ExternalSyntheticBUOutline1.m178m("Bitmap config value should be ARGB_8888");
            return null;
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
            public Bitmap loadBitmap() {
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
            public Bitmap loadBitmap() {
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
            public Bitmap loadBitmap() {
                return BitmapFactory.decodeFile(str);
            }
        };
    }
}
