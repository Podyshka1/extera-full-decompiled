package com.yandex.mapkit.navigation.automotive.layer.styling;

import android.graphics.PointF;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SpeedControlHighlightStyle implements Serializable {
    private long animationDuration;
    private int fillColor;
    private float maximumRadius;
    private PointF pulsationCenter;
    private int strokeColor;
    private float strokeWidth;

    public SpeedControlHighlightStyle(int i, float f, int i2, float f2, long j, PointF pointF) {
        if (pointF == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"pulsationCenter\" cannot be null");
            throw null;
        }
        this.strokeColor = i;
        this.strokeWidth = f;
        this.fillColor = i2;
        this.maximumRadius = f2;
        this.animationDuration = j;
        this.pulsationCenter = pointF;
    }

    public SpeedControlHighlightStyle() {
    }

    public int getStrokeColor() {
        return this.strokeColor;
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    public int getFillColor() {
        return this.fillColor;
    }

    public float getMaximumRadius() {
        return this.maximumRadius;
    }

    public long getAnimationDuration() {
        return this.animationDuration;
    }

    public PointF getPulsationCenter() {
        return this.pulsationCenter;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.strokeColor = archive.add(this.strokeColor);
        this.strokeWidth = archive.add(this.strokeWidth);
        this.fillColor = archive.add(this.fillColor);
        this.maximumRadius = archive.add(this.maximumRadius);
        this.animationDuration = archive.add(this.animationDuration);
        this.pulsationCenter = archive.add(this.pulsationCenter, false);
    }
}
