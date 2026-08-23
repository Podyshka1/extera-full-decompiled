package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class StopFeatureMask implements Serializable {
    private boolean cooled;
    private boolean heated;

    public StopFeatureMask(boolean z, boolean z2) {
        this.cooled = z;
        this.heated = z2;
    }

    public StopFeatureMask() {
    }

    public boolean getCooled() {
        return this.cooled;
    }

    public boolean getHeated() {
        return this.heated;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.cooled = archive.add(this.cooled);
        this.heated = archive.add(this.heated);
    }
}
