package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TileId implements Serializable {

    /* JADX INFO: renamed from: x */
    private int f450x;

    /* JADX INFO: renamed from: y */
    private int f451y;

    /* JADX INFO: renamed from: z */
    private int f452z;

    public TileId(int i, int i2, int i3) {
        this.f450x = i;
        this.f451y = i2;
        this.f452z = i3;
    }

    public TileId() {
    }

    public int getX() {
        return this.f450x;
    }

    public int getY() {
        return this.f451y;
    }

    public int getZ() {
        return this.f452z;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f450x = archive.add(this.f450x);
        this.f451y = archive.add(this.f451y);
        this.f452z = archive.add(this.f452z);
    }
}
