package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.geometry.Subpolyline;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class IndoorSegment implements Serializable {
    private IndoorData indoorData;
    private Subpolyline subpolyline;

    public static class IndoorData implements Serializable {
        private Connector connector;
        private IndoorLevel indoorLevel;

        public static IndoorData fromIndoorLevel(IndoorLevel indoorLevel) {
            if (indoorLevel == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"indoorLevel\" cannot be null");
                return null;
            }
            IndoorData indoorData = new IndoorData();
            indoorData.indoorLevel = indoorLevel;
            return indoorData;
        }

        public static IndoorData fromConnector(Connector connector) {
            if (connector == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"connector\" cannot be null");
                return null;
            }
            IndoorData indoorData = new IndoorData();
            indoorData.connector = connector;
            return indoorData;
        }

        public IndoorLevel getIndoorLevel() {
            return this.indoorLevel;
        }

        public Connector getConnector() {
            return this.connector;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.indoorLevel = (IndoorLevel) archive.add(this.indoorLevel, true, (Class<IndoorLevel>) IndoorLevel.class);
            this.connector = (Connector) archive.add(this.connector, true, (Class<Connector>) Connector.class);
        }
    }

    public IndoorSegment(IndoorData indoorData, Subpolyline subpolyline) {
        if (indoorData == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"indoorData\" cannot be null");
            throw null;
        }
        if (subpolyline == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"subpolyline\" cannot be null");
            throw null;
        }
        this.indoorData = indoorData;
        this.subpolyline = subpolyline;
    }

    public IndoorSegment() {
    }

    public IndoorData getIndoorData() {
        return this.indoorData;
    }

    public Subpolyline getSubpolyline() {
        return this.subpolyline;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.indoorData = (IndoorData) archive.add(this.indoorData, false, (Class<IndoorData>) IndoorData.class);
        this.subpolyline = (Subpolyline) archive.add(this.subpolyline, false, (Class<Subpolyline>) Subpolyline.class);
    }
}
