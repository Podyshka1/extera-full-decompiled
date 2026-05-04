package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ScreenPoint implements Serializable {

    /* JADX INFO: renamed from: x */
    private float f611x;

    /* JADX INFO: renamed from: y */
    private float f612y;

    public ScreenPoint(float f, float f2) {
        this.f611x = f;
        this.f612y = f2;
    }

    public ScreenPoint() {
    }

    public float getX() {
        return this.f611x;
    }

    public float getY() {
        return this.f612y;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f611x = archive.add(this.f611x);
        this.f612y = archive.add(this.f612y);
    }
}
