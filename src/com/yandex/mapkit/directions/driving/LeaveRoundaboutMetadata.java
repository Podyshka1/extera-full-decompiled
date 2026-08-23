package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class LeaveRoundaboutMetadata implements Serializable {
    private int exitNumber;

    public LeaveRoundaboutMetadata(int i) {
        this.exitNumber = i;
    }

    public LeaveRoundaboutMetadata() {
    }

    public int getExitNumber() {
        return this.exitNumber;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.exitNumber = archive.add(this.exitNumber);
    }
}
