package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Connector implements Serializable {
    private IndoorLevel from;
    private IndoorLevel to;

    public Connector(IndoorLevel indoorLevel, IndoorLevel indoorLevel2) {
        this.from = indoorLevel;
        this.to = indoorLevel2;
    }

    public Connector() {
    }

    public IndoorLevel getFrom() {
        return this.from;
    }

    public IndoorLevel getTo() {
        return this.to;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.from = (IndoorLevel) archive.add(this.from, true, (Class<IndoorLevel>) IndoorLevel.class);
        this.to = (IndoorLevel) archive.add(this.to, true, (Class<IndoorLevel>) IndoorLevel.class);
    }
}
