package com.yandex.mapkit.map;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class TextStyle implements Serializable {
    private int color;
    private float offset;
    private boolean offsetFromIcon;
    private int outlineColor;
    private float outlineWidth;
    private Placement placement;
    private float size;
    private boolean textOptional;

    public enum Placement {
        CENTER,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_RIGHT
    }

    public TextStyle(float f, int i, float f2, int i2, Placement placement, float f3, boolean z, boolean z2) {
        this.size = 8.0f;
        this.color = -16777216;
        this.outlineWidth = 1.0f;
        this.outlineColor = -1;
        this.placement = Placement.CENTER;
        this.offset = 0.0f;
        this.offsetFromIcon = true;
        this.textOptional = false;
        if (placement == null) {
            throw new IllegalArgumentException("Required field \"placement\" cannot be null");
        }
        this.size = f;
        this.color = i;
        this.outlineWidth = f2;
        this.outlineColor = i2;
        this.placement = placement;
        this.offset = f3;
        this.offsetFromIcon = z;
        this.textOptional = z2;
    }

    public TextStyle() {
        this.size = 8.0f;
        this.color = -16777216;
        this.outlineWidth = 1.0f;
        this.outlineColor = -1;
        this.placement = Placement.CENTER;
        this.offset = 0.0f;
        this.offsetFromIcon = true;
        this.textOptional = false;
    }

    public float getSize() {
        return this.size;
    }

    public TextStyle setSize(float f) {
        this.size = f;
        return this;
    }

    public int getColor() {
        return this.color;
    }

    public TextStyle setColor(int i) {
        this.color = i;
        return this;
    }

    public float getOutlineWidth() {
        return this.outlineWidth;
    }

    public TextStyle setOutlineWidth(float f) {
        this.outlineWidth = f;
        return this;
    }

    public int getOutlineColor() {
        return this.outlineColor;
    }

    public TextStyle setOutlineColor(int i) {
        this.outlineColor = i;
        return this;
    }

    public Placement getPlacement() {
        return this.placement;
    }

    public TextStyle setPlacement(Placement placement) {
        if (placement == null) {
            throw new IllegalArgumentException("Required field \"placement\" cannot be null");
        }
        this.placement = placement;
        return this;
    }

    public float getOffset() {
        return this.offset;
    }

    public TextStyle setOffset(float f) {
        this.offset = f;
        return this;
    }

    public boolean getOffsetFromIcon() {
        return this.offsetFromIcon;
    }

    public TextStyle setOffsetFromIcon(boolean z) {
        this.offsetFromIcon = z;
        return this;
    }

    public boolean getTextOptional() {
        return this.textOptional;
    }

    public TextStyle setTextOptional(boolean z) {
        this.textOptional = z;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.size = archive.add(this.size);
        this.color = archive.add(this.color);
        this.outlineWidth = archive.add(this.outlineWidth);
        this.outlineColor = archive.add(this.outlineColor);
        this.placement = (Placement) archive.add(this.placement, false, (Class<Placement>) Placement.class);
        this.offset = archive.add(this.offset);
        this.offsetFromIcon = archive.add(this.offsetFromIcon);
        this.textOptional = archive.add(this.textOptional);
    }
}
