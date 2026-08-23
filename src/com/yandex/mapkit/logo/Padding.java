package com.yandex.mapkit.logo;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Padding implements Serializable {
    private int horizontalPadding;
    private int verticalPadding;

    public Padding(int i, int i2) {
        this.horizontalPadding = i;
        this.verticalPadding = i2;
    }

    public Padding() {
    }

    public int getHorizontalPadding() {
        return this.horizontalPadding;
    }

    public int getVerticalPadding() {
        return this.verticalPadding;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.horizontalPadding = archive.add(this.horizontalPadding);
        this.verticalPadding = archive.add(this.verticalPadding);
    }
}
