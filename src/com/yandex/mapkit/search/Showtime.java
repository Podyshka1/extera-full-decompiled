package com.yandex.mapkit.search;

import com.yandex.mapkit.Money;
import com.yandex.mapkit.Time;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Showtime implements Serializable {
    private NativeObject nativeObject;
    private Money price;
    private boolean price__is_initialized;
    private Time startTime;
    private boolean startTime__is_initialized;
    private String ticketId;
    private boolean ticketId__is_initialized;

    private native Money getPrice__Native();

    private native Time getStartTime__Native();

    private native String getTicketId__Native();

    private native NativeObject init(Time time, Money money, String str);

    public Showtime() {
        this.startTime__is_initialized = false;
        this.price__is_initialized = false;
        this.ticketId__is_initialized = false;
    }

    public Showtime(Time time, Money money, String str) {
        this.startTime__is_initialized = false;
        this.price__is_initialized = false;
        this.ticketId__is_initialized = false;
        if (time == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"startTime\" cannot be null");
            throw null;
        }
        this.nativeObject = init(time, money, str);
        this.startTime = time;
        this.startTime__is_initialized = true;
        this.price = money;
        this.price__is_initialized = true;
        this.ticketId = str;
        this.ticketId__is_initialized = true;
    }

    private Showtime(NativeObject nativeObject) {
        this.startTime__is_initialized = false;
        this.price__is_initialized = false;
        this.ticketId__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Time getStartTime() {
        try {
            if (!this.startTime__is_initialized) {
                this.startTime = getStartTime__Native();
                this.startTime__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.startTime;
    }

    public synchronized Money getPrice() {
        try {
            if (!this.price__is_initialized) {
                this.price = getPrice__Native();
                this.price__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.price;
    }

    public synchronized String getTicketId() {
        try {
            if (!this.ticketId__is_initialized) {
                this.ticketId = getTicketId__Native();
                this.ticketId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.ticketId;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.startTime = (Time) archive.add(this.startTime, false, (Class<Time>) Time.class);
            this.startTime__is_initialized = true;
            this.price = (Money) archive.add(this.price, true, (Class<Money>) Money.class);
            this.price__is_initialized = true;
            String strAdd = archive.add(this.ticketId, true);
            this.ticketId = strAdd;
            this.ticketId__is_initialized = true;
            this.nativeObject = init(this.startTime, this.price, strAdd);
            return;
        }
        archive.add(getStartTime(), false, (Class<Time>) Time.class);
        archive.add(getPrice(), true, (Class<Money>) Money.class);
        archive.add(getTicketId(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::Showtime";
    }
}
