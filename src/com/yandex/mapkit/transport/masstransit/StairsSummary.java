package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class StairsSummary implements Serializable {
    private int numberOfStairs;
    private int numberOfStairsWithRamp;

    public StairsSummary(int i, int i2) {
        this.numberOfStairs = i;
        this.numberOfStairsWithRamp = i2;
    }

    public StairsSummary() {
    }

    public int getNumberOfStairs() {
        return this.numberOfStairs;
    }

    public int getNumberOfStairsWithRamp() {
        return this.numberOfStairsWithRamp;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.numberOfStairs = archive.add(this.numberOfStairs);
        this.numberOfStairsWithRamp = archive.add(this.numberOfStairsWithRamp);
    }
}
