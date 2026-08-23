package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.mapkit.geometry.Point;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ToponymObjectMetadata implements BaseMetadata, Serializable {
    private Address address;
    private boolean address__is_initialized;
    private Point balloonPoint;
    private boolean balloonPoint__is_initialized;
    private String formerName;
    private boolean formerName__is_initialized;
    private String id;
    private boolean id__is_initialized;
    private NativeObject nativeObject;
    private Precision precision;
    private boolean precision__is_initialized;

    private native Address getAddress__Native();

    private native Point getBalloonPoint__Native();

    private native String getFormerName__Native();

    private native String getId__Native();

    private native Precision getPrecision__Native();

    private native NativeObject init(Address address, Precision precision, String str, Point point, String str2);

    public ToponymObjectMetadata() {
        this.address__is_initialized = false;
        this.precision__is_initialized = false;
        this.formerName__is_initialized = false;
        this.balloonPoint__is_initialized = false;
        this.id__is_initialized = false;
    }

    public ToponymObjectMetadata(Address address, Precision precision, String str, Point point, String str2) {
        this.address__is_initialized = false;
        this.precision__is_initialized = false;
        this.formerName__is_initialized = false;
        this.balloonPoint__is_initialized = false;
        this.id__is_initialized = false;
        if (address == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"address\" cannot be null");
            throw null;
        }
        if (point == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"balloonPoint\" cannot be null");
            throw null;
        }
        this.nativeObject = init(address, precision, str, point, str2);
        this.address = address;
        this.address__is_initialized = true;
        this.precision = precision;
        this.precision__is_initialized = true;
        this.formerName = str;
        this.formerName__is_initialized = true;
        this.balloonPoint = point;
        this.balloonPoint__is_initialized = true;
        this.id = str2;
        this.id__is_initialized = true;
    }

    private ToponymObjectMetadata(NativeObject nativeObject) {
        this.address__is_initialized = false;
        this.precision__is_initialized = false;
        this.formerName__is_initialized = false;
        this.balloonPoint__is_initialized = false;
        this.id__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Address getAddress() {
        try {
            if (!this.address__is_initialized) {
                this.address = getAddress__Native();
                this.address__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.address;
    }

    public synchronized Precision getPrecision() {
        try {
            if (!this.precision__is_initialized) {
                this.precision = getPrecision__Native();
                this.precision__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.precision;
    }

    public synchronized String getFormerName() {
        try {
            if (!this.formerName__is_initialized) {
                this.formerName = getFormerName__Native();
                this.formerName__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.formerName;
    }

    public synchronized Point getBalloonPoint() {
        try {
            if (!this.balloonPoint__is_initialized) {
                this.balloonPoint = getBalloonPoint__Native();
                this.balloonPoint__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.balloonPoint;
    }

    public synchronized String getId() {
        try {
            if (!this.id__is_initialized) {
                this.id = getId__Native();
                this.id__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.id;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.address = (Address) archive.add(this.address, false, (Class<Address>) Address.class);
            this.address__is_initialized = true;
            this.precision = (Precision) archive.add(this.precision, true, (Class<Precision>) Precision.class);
            this.precision__is_initialized = true;
            this.formerName = archive.add(this.formerName, true);
            this.formerName__is_initialized = true;
            this.balloonPoint = (Point) archive.add(this.balloonPoint, false, (Class<Point>) Point.class);
            this.balloonPoint__is_initialized = true;
            String strAdd = archive.add(this.id, true);
            this.id = strAdd;
            this.id__is_initialized = true;
            this.nativeObject = init(this.address, this.precision, this.formerName, this.balloonPoint, strAdd);
            return;
        }
        archive.add(getAddress(), false, (Class<Address>) Address.class);
        archive.add(getPrecision(), true, (Class<Precision>) Precision.class);
        archive.add(getFormerName(), true);
        archive.add(getBalloonPoint(), false, (Class<Point>) Point.class);
        archive.add(getId(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::ToponymObjectMetadata";
    }
}
