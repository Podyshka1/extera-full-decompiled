package com.yandex.mapkit.navigation.balloons;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BalloonAnchor implements Serializable {
    private HorizontalPosition horizontal;
    private VerticalPosition vertical;

    public BalloonAnchor(VerticalPosition verticalPosition, HorizontalPosition horizontalPosition) {
        if (verticalPosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"vertical\" cannot be null");
            throw null;
        }
        if (horizontalPosition == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"horizontal\" cannot be null");
            throw null;
        }
        this.vertical = verticalPosition;
        this.horizontal = horizontalPosition;
    }

    public BalloonAnchor() {
    }

    public VerticalPosition getVertical() {
        return this.vertical;
    }

    public HorizontalPosition getHorizontal() {
        return this.horizontal;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.vertical = (VerticalPosition) archive.add(this.vertical, false, (Class<VerticalPosition>) VerticalPosition.class);
        this.horizontal = (HorizontalPosition) archive.add(this.horizontal, false, (Class<HorizontalPosition>) HorizontalPosition.class);
    }
}
