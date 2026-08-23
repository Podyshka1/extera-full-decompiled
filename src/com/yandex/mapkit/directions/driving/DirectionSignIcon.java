package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class DirectionSignIcon implements Serializable {
    private DirectionSignImage image;
    private DirectionSignStyle style;

    public DirectionSignIcon(DirectionSignImage directionSignImage, DirectionSignStyle directionSignStyle) {
        if (directionSignImage == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"image\" cannot be null");
            throw null;
        }
        if (directionSignStyle == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"style\" cannot be null");
            throw null;
        }
        this.image = directionSignImage;
        this.style = directionSignStyle;
    }

    public DirectionSignIcon() {
    }

    public DirectionSignImage getImage() {
        return this.image;
    }

    public DirectionSignStyle getStyle() {
        return this.style;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.image = (DirectionSignImage) archive.add(this.image, false, (Class<DirectionSignImage>) DirectionSignImage.class);
        this.style = (DirectionSignStyle) archive.add(this.style, false, (Class<DirectionSignStyle>) DirectionSignStyle.class);
    }
}
