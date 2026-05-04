package com.yandex.mapkit.map;

import android.graphics.PointF;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class IconStyle implements Serializable {
    private PointF anchor;
    private Boolean flat;
    private RotationType rotationType;
    private Float scale;
    private Rect tappableArea;
    private Boolean visible;
    private Float zIndex;

    public IconStyle(PointF pointF, RotationType rotationType, Float f, Boolean bool, Boolean bool2, Float f2, Rect rect) {
        this.anchor = pointF;
        this.rotationType = rotationType;
        this.zIndex = f;
        this.flat = bool;
        this.visible = bool2;
        this.scale = f2;
        this.tappableArea = rect;
    }

    public IconStyle() {
        this.anchor = null;
        this.rotationType = null;
        this.zIndex = null;
        this.flat = null;
        this.visible = null;
        this.scale = null;
        this.tappableArea = null;
    }

    public PointF getAnchor() {
        return this.anchor;
    }

    public IconStyle setAnchor(PointF pointF) {
        this.anchor = pointF;
        return this;
    }

    public RotationType getRotationType() {
        return this.rotationType;
    }

    public IconStyle setRotationType(RotationType rotationType) {
        this.rotationType = rotationType;
        return this;
    }

    public Float getZIndex() {
        return this.zIndex;
    }

    public IconStyle setZIndex(Float f) {
        this.zIndex = f;
        return this;
    }

    public Boolean getFlat() {
        return this.flat;
    }

    public IconStyle setFlat(Boolean bool) {
        this.flat = bool;
        return this;
    }

    public Boolean getVisible() {
        return this.visible;
    }

    public IconStyle setVisible(Boolean bool) {
        this.visible = bool;
        return this;
    }

    public Float getScale() {
        return this.scale;
    }

    public IconStyle setScale(Float f) {
        this.scale = f;
        return this;
    }

    public Rect getTappableArea() {
        return this.tappableArea;
    }

    public IconStyle setTappableArea(Rect rect) {
        this.tappableArea = rect;
        return this;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.anchor = archive.add(this.anchor, true);
        this.rotationType = (RotationType) archive.add(this.rotationType, true, (Class<RotationType>) RotationType.class);
        this.zIndex = archive.add(this.zIndex, true);
        this.flat = archive.add(this.flat, true);
        this.visible = archive.add(this.visible, true);
        this.scale = archive.add(this.scale, true);
        this.tappableArea = (Rect) archive.add(this.tappableArea, true, (Class<Rect>) Rect.class);
    }
}
