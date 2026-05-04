package com.yandex.mapkit.location;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TimeInterval implements Serializable {
    private long from;
    private boolean from__is_initialized;
    private NativeObject nativeObject;

    /* JADX INFO: renamed from: to */
    private long f620to;
    private boolean to__is_initialized;

    private native long getFrom__Native();

    private native long getTo__Native();

    private native NativeObject init(long j, long j2);

    public TimeInterval() {
        this.from__is_initialized = false;
        this.to__is_initialized = false;
    }

    public TimeInterval(long j, long j2) {
        this.from__is_initialized = false;
        this.to__is_initialized = false;
        this.nativeObject = init(j, j2);
        this.from = j;
        this.from__is_initialized = true;
        this.f620to = j2;
        this.to__is_initialized = true;
    }

    private TimeInterval(NativeObject nativeObject) {
        this.from__is_initialized = false;
        this.to__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized long getFrom() {
        try {
            if (!this.from__is_initialized) {
                this.from = getFrom__Native();
                this.from__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.from;
    }

    public synchronized long getTo() {
        try {
            if (!this.to__is_initialized) {
                this.f620to = getTo__Native();
                this.to__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f620to;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.from = archive.add(this.from);
            this.from__is_initialized = true;
            long jAdd = archive.add(this.f620to);
            this.f620to = jAdd;
            this.to__is_initialized = true;
            this.nativeObject = init(this.from, jAdd);
            return;
        }
        archive.add(getFrom());
        archive.add(getTo());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::location::TimeInterval";
    }
}
