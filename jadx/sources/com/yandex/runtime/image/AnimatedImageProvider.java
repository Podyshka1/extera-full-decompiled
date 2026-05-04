package com.yandex.runtime.image;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.util.Log;
import com.yandex.runtime.ByteBufferUtils;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AnimatedImageProvider {
    public abstract String getId();

    public abstract Object getImage();

    private static abstract class AnimatedImageProviderImpl extends AnimatedImageProvider {

        /* JADX INFO: renamed from: id */
        private final String f623id;
        private Object image;

        protected abstract Object loadImage();

        public AnimatedImageProviderImpl(String str) {
            this.f623id = str;
        }

        @Override // com.yandex.runtime.image.AnimatedImageProvider
        public String getId() {
            return this.f623id;
        }

        @Override // com.yandex.runtime.image.AnimatedImageProvider
        public Object getImage() {
            if (this.image == null) {
                this.image = loadImage();
            }
            return this.image;
        }
    }

    public static AnimatedImageProvider fromByteArray(final byte[] bArr) {
        final String str = "animation/bytes:" + UUID.randomUUID().toString();
        return new AnimatedImageProvider() { // from class: com.yandex.runtime.image.AnimatedImageProvider.1
            @Override // com.yandex.runtime.image.AnimatedImageProvider
            public String getId() {
                return str;
            }

            @Override // com.yandex.runtime.image.AnimatedImageProvider
            public Object getImage() {
                return ByteBufferUtils.fromByteArray(bArr);
            }
        };
    }

    public static AnimatedImageProvider fromResource(Context context, final int i) {
        final Resources resources = context.getResources();
        return new AnimatedImageProviderImpl("animation/resource:" + String.valueOf(i)) { // from class: com.yandex.runtime.image.AnimatedImageProvider.2
            @Override // com.yandex.runtime.image.AnimatedImageProvider.AnimatedImageProviderImpl
            protected Object loadImage() {
                try {
                    return ByteBufferUtils.fromResource(resources, i);
                } catch (IOException e) {
                    Log.e("yandex.maps", "Can't load animated image from resource: " + String.valueOf(i), e);
                    return null;
                }
            }
        };
    }

    public static AnimatedImageProvider fromAsset(Context context, final String str) {
        final AssetManager assets = context.getAssets();
        return new AnimatedImageProviderImpl("animation/asset:" + str) { // from class: com.yandex.runtime.image.AnimatedImageProvider.3
            @Override // com.yandex.runtime.image.AnimatedImageProvider.AnimatedImageProviderImpl
            protected Object loadImage() {
                try {
                    return ByteBufferUtils.fromAsset(assets, str);
                } catch (IOException e) {
                    Log.e("yandex.maps", "Can't load animated image from asset: " + str, e);
                    return null;
                }
            }
        };
    }

    public static AnimatedImageProvider fromFile(final String str) {
        return new AnimatedImageProviderImpl("animation/file:" + str) { // from class: com.yandex.runtime.image.AnimatedImageProvider.4
            @Override // com.yandex.runtime.image.AnimatedImageProvider.AnimatedImageProviderImpl
            protected Object loadImage() {
                try {
                    return ByteBufferUtils.fromFile(str);
                } catch (IOException e) {
                    Log.e("yandex.maps", "Can't load animated image from file: " + str, e);
                    return null;
                }
            }
        };
    }

    public static AnimatedImageProvider fromAnimatedImage(final AnimatedImage animatedImage) {
        final String str = "animation/image:" + UUID.randomUUID().toString();
        return new AnimatedImageProvider() { // from class: com.yandex.runtime.image.AnimatedImageProvider.5
            @Override // com.yandex.runtime.image.AnimatedImageProvider
            public String getId() {
                return str;
            }

            @Override // com.yandex.runtime.image.AnimatedImageProvider
            public Object getImage() {
                return animatedImage;
            }
        };
    }
}
