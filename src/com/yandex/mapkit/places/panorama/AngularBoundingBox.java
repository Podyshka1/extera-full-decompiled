package com.yandex.mapkit.places.panorama;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class AngularBoundingBox implements Serializable {
    private float bottom;
    private float left;
    private float right;
    private float top;

    public AngularBoundingBox(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public AngularBoundingBox() {
    }

    public float getLeft() {
        return this.left;
    }

    public float getTop() {
        return this.top;
    }

    public float getRight() {
        return this.right;
    }

    public float getBottom() {
        return this.bottom;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.left = archive.add(this.left);
        this.top = archive.add(this.top);
        this.right = archive.add(this.right);
        this.bottom = archive.add(this.bottom);
    }
}
