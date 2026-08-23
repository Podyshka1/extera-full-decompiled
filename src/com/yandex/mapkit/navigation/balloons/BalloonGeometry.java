package com.yandex.mapkit.navigation.balloons;

import android.graphics.PointF;
import com.yandex.mapkit.map.Rect;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BalloonGeometry implements Serializable {
    private BalloonAnchor anchor;
    private Rect balloonRect;
    private Rect contentRect;
    private float height;
    private PointF imageAnchor;
    private float width;

    public BalloonGeometry(BalloonAnchor balloonAnchor, float f, float f2, PointF pointF, Rect rect, Rect rect2) {
        if (balloonAnchor == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"anchor\" cannot be null");
            throw null;
        }
        if (pointF == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"imageAnchor\" cannot be null");
            throw null;
        }
        if (rect == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"contentRect\" cannot be null");
            throw null;
        }
        if (rect2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"balloonRect\" cannot be null");
            throw null;
        }
        this.anchor = balloonAnchor;
        this.width = f;
        this.height = f2;
        this.imageAnchor = pointF;
        this.contentRect = rect;
        this.balloonRect = rect2;
    }

    public BalloonGeometry() {
    }

    public BalloonAnchor getAnchor() {
        return this.anchor;
    }

    public float getWidth() {
        return this.width;
    }

    public float getHeight() {
        return this.height;
    }

    public PointF getImageAnchor() {
        return this.imageAnchor;
    }

    public Rect getContentRect() {
        return this.contentRect;
    }

    public Rect getBalloonRect() {
        return this.balloonRect;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.anchor = (BalloonAnchor) archive.add(this.anchor, false, (Class<BalloonAnchor>) BalloonAnchor.class);
        this.width = archive.add(this.width);
        this.height = archive.add(this.height);
        this.imageAnchor = archive.add(this.imageAnchor, false);
        this.contentRect = (Rect) archive.add(this.contentRect, false, (Class<Rect>) Rect.class);
        this.balloonRect = (Rect) archive.add(this.balloonRect, false, (Class<Rect>) Rect.class);
    }
}
