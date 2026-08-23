package com.yandex.mapkit.places.panorama;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TileLevel implements Serializable {
    private ImageSize imageSize;
    private boolean imageSize__is_initialized;
    private int level;
    private boolean level__is_initialized;
    private NativeObject nativeObject;

    private native ImageSize getImageSize__Native();

    private native int getLevel__Native();

    private native NativeObject init(int i, ImageSize imageSize);

    public TileLevel() {
        this.level__is_initialized = false;
        this.imageSize__is_initialized = false;
    }

    public TileLevel(int i, ImageSize imageSize) {
        this.level__is_initialized = false;
        this.imageSize__is_initialized = false;
        if (imageSize == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"imageSize\" cannot be null");
            throw null;
        }
        this.nativeObject = init(i, imageSize);
        this.level = i;
        this.level__is_initialized = true;
        this.imageSize = imageSize;
        this.imageSize__is_initialized = true;
    }

    private TileLevel(NativeObject nativeObject) {
        this.level__is_initialized = false;
        this.imageSize__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized int getLevel() {
        try {
            if (!this.level__is_initialized) {
                this.level = getLevel__Native();
                this.level__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.level;
    }

    public synchronized ImageSize getImageSize() {
        try {
            if (!this.imageSize__is_initialized) {
                this.imageSize = getImageSize__Native();
                this.imageSize__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.imageSize;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.level = archive.add(this.level);
            this.level__is_initialized = true;
            ImageSize imageSize = (ImageSize) archive.add(this.imageSize, false, (Class<ImageSize>) ImageSize.class);
            this.imageSize = imageSize;
            this.imageSize__is_initialized = true;
            this.nativeObject = init(this.level, imageSize);
            return;
        }
        archive.add(getLevel());
        archive.add(getImageSize(), false, (Class<ImageSize>) ImageSize.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::TileLevel";
    }
}
