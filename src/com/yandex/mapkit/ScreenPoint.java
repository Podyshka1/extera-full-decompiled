package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ScreenPoint implements Serializable {

    /* JADX INFO: renamed from: x */
    private float f448x;

    /* JADX INFO: renamed from: y */
    private float f449y;

    public ScreenPoint(float f, float f2) {
        this.f448x = f;
        this.f449y = f2;
    }

    public ScreenPoint() {
    }

    public float getX() {
        return this.f448x;
    }

    public float getY() {
        return this.f449y;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f448x = archive.add(this.f448x);
        this.f449y = archive.add(this.f449y);
    }
}
