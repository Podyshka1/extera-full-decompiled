package com.yandex.mapkit.places.panorama;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class HistoricalPanorama implements Serializable {
    private String name;
    private String panoramaId;
    private long timestamp;

    public HistoricalPanorama(String str, String str2, long j) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"panoramaId\" cannot be null");
            throw null;
        }
        this.name = str;
        this.panoramaId = str2;
        this.timestamp = j;
    }

    public HistoricalPanorama() {
    }

    public String getName() {
        return this.name;
    }

    public String getPanoramaId() {
        return this.panoramaId;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.name = archive.add(this.name, false);
        this.panoramaId = archive.add(this.panoramaId, false);
        this.timestamp = archive.add(this.timestamp);
    }
}
