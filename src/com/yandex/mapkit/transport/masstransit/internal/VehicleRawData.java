package com.yandex.mapkit.transport.masstransit.internal;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.mapkit.transport.masstransit.Line;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class VehicleRawData implements BaseMetadata, Serializable {
    private String id;
    private boolean id__is_initialized;
    private Line line;
    private boolean line__is_initialized;
    private NativeObject nativeObject;
    private String threadId;
    private boolean threadId__is_initialized;

    private native String getId__Native();

    private native Line getLine__Native();

    private native String getThreadId__Native();

    private native NativeObject init(String str, String str2, Line line);

    public VehicleRawData() {
        this.id__is_initialized = false;
        this.threadId__is_initialized = false;
        this.line__is_initialized = false;
    }

    public VehicleRawData(String str, String str2, Line line) {
        this.id__is_initialized = false;
        this.threadId__is_initialized = false;
        this.line__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"threadId\" cannot be null");
            throw null;
        }
        if (line == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"line\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, line);
        this.id = str;
        this.id__is_initialized = true;
        this.threadId = str2;
        this.threadId__is_initialized = true;
        this.line = line;
        this.line__is_initialized = true;
    }

    private VehicleRawData(NativeObject nativeObject) {
        this.id__is_initialized = false;
        this.threadId__is_initialized = false;
        this.line__is_initialized = false;
        this.nativeObject = nativeObject;
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

    public synchronized String getThreadId() {
        try {
            if (!this.threadId__is_initialized) {
                this.threadId = getThreadId__Native();
                this.threadId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.threadId;
    }

    public synchronized Line getLine() {
        try {
            if (!this.line__is_initialized) {
                this.line = getLine__Native();
                this.line__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.line;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.id = archive.add(this.id, false);
            this.id__is_initialized = true;
            this.threadId = archive.add(this.threadId, false);
            this.threadId__is_initialized = true;
            Line line = (Line) archive.add(this.line, false, (Class<Line>) Line.class);
            this.line = line;
            this.line__is_initialized = true;
            this.nativeObject = init(this.id, this.threadId, line);
            return;
        }
        archive.add(getId(), false);
        archive.add(getThreadId(), false);
        archive.add(getLine(), false, (Class<Line>) Line.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::internal::VehicleRawData";
    }
}
