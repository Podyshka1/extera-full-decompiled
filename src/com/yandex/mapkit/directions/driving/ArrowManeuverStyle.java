package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ArrowManeuverStyle implements Serializable {
    private boolean enabled;
    private int fillColor;
    private float length;
    private int outlineColor;
    private float outlineWidth;
    private float triangleHeight;

    public ArrowManeuverStyle(int i, int i2, float f, float f2, float f3, boolean z) {
        this.fillColor = i;
        this.outlineColor = i2;
        this.outlineWidth = f;
        this.length = f2;
        this.triangleHeight = f3;
        this.enabled = z;
    }

    public ArrowManeuverStyle() {
    }

    public int getFillColor() {
        return this.fillColor;
    }

    public int getOutlineColor() {
        return this.outlineColor;
    }

    public float getOutlineWidth() {
        return this.outlineWidth;
    }

    public float getLength() {
        return this.length;
    }

    public float getTriangleHeight() {
        return this.triangleHeight;
    }

    public boolean getEnabled() {
        return this.enabled;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.fillColor = archive.add(this.fillColor);
        this.outlineColor = archive.add(this.outlineColor);
        this.outlineWidth = archive.add(this.outlineWidth);
        this.length = archive.add(this.length);
        this.triangleHeight = archive.add(this.triangleHeight);
        this.enabled = archive.add(this.enabled);
    }
}
