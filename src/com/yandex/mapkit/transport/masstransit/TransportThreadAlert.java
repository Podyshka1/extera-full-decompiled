package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.Time;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TransportThreadAlert implements Serializable {
    private Closed closed;
    private ClosedUntil closedUntil;
    private LastTrip lastTrip;
    private String text;

    public static class Closed implements Serializable {
        private boolean dummy;

        public Closed(boolean z) {
            this.dummy = z;
        }

        public Closed() {
        }

        public boolean getDummy() {
            return this.dummy;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.dummy = archive.add(this.dummy);
        }
    }

    public static class ClosedUntil implements Serializable {
        private Time time;

        public ClosedUntil(Time time) {
            if (time == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"time\" cannot be null");
                throw null;
            }
            this.time = time;
        }

        public ClosedUntil() {
        }

        public Time getTime() {
            return this.time;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.time = (Time) archive.add(this.time, false, (Class<Time>) Time.class);
        }
    }

    public static class LastTrip implements Serializable {
        private Time time;

        public LastTrip(Time time) {
            if (time == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"time\" cannot be null");
                throw null;
            }
            this.time = time;
        }

        public LastTrip() {
        }

        public Time getTime() {
            return this.time;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.time = (Time) archive.add(this.time, false, (Class<Time>) Time.class);
        }
    }

    public TransportThreadAlert(String str, Closed closed, ClosedUntil closedUntil, LastTrip lastTrip) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"text\" cannot be null");
            throw null;
        }
        this.text = str;
        this.closed = closed;
        this.closedUntil = closedUntil;
        this.lastTrip = lastTrip;
    }

    public TransportThreadAlert() {
    }

    public String getText() {
        return this.text;
    }

    public Closed getClosed() {
        return this.closed;
    }

    public ClosedUntil getClosedUntil() {
        return this.closedUntil;
    }

    public LastTrip getLastTrip() {
        return this.lastTrip;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.text = archive.add(this.text, false);
        this.closed = (Closed) archive.add(this.closed, true, (Class<Closed>) Closed.class);
        this.closedUntil = (ClosedUntil) archive.add(this.closedUntil, true, (Class<ClosedUntil>) ClosedUntil.class);
        this.lastTrip = (LastTrip) archive.add(this.lastTrip, true, (Class<LastTrip>) LastTrip.class);
    }
}
