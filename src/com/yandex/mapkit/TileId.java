package com.yandex.mapkit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TileId implements Serializable {

    /* JADX INFO: renamed from: x */
    private int f613x;

    /* JADX INFO: renamed from: y */
    private int f614y;

    /* JADX INFO: renamed from: z */
    private int f615z;

    public TileId(int i, int i2, int i3) {
        this.f613x = i;
        this.f614y = i2;
        this.f615z = i3;
    }

    public TileId() {
    }

    public int getX() {
        return this.f613x;
    }

    public int getY() {
        return this.f614y;
    }

    public int getZ() {
        return this.f615z;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.f613x = archive.add(this.f613x);
        this.f614y = archive.add(this.f614y);
        this.f615z = archive.add(this.f615z);
    }
}
