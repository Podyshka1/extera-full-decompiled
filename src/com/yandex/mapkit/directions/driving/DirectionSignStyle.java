package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DirectionSignStyle implements Serializable {
    private int bgColor;
    private int textColor;

    public DirectionSignStyle(int i, int i2) {
        this.textColor = i;
        this.bgColor = i2;
    }

    public DirectionSignStyle() {
    }

    public int getTextColor() {
        return this.textColor;
    }

    public int getBgColor() {
        return this.bgColor;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.textColor = archive.add(this.textColor);
        this.bgColor = archive.add(this.bgColor);
    }
}
