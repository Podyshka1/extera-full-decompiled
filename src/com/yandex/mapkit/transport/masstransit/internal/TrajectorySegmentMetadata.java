package com.yandex.mapkit.transport.masstransit.internal;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TrajectorySegmentMetadata implements BaseMetadata, Serializable {
    private int duration;
    private boolean duration__is_initialized;
    private NativeObject nativeObject;
    private long time;
    private boolean time__is_initialized;

    private native int getDuration__Native();

    private native long getTime__Native();

    private native NativeObject init(long j, int i);

    public TrajectorySegmentMetadata() {
        this.time__is_initialized = false;
        this.duration__is_initialized = false;
    }

    public TrajectorySegmentMetadata(long j, int i) {
        this.time__is_initialized = false;
        this.duration__is_initialized = false;
        this.nativeObject = init(j, i);
        this.time = j;
        this.time__is_initialized = true;
        this.duration = i;
        this.duration__is_initialized = true;
    }

    private TrajectorySegmentMetadata(NativeObject nativeObject) {
        this.time__is_initialized = false;
        this.duration__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized long getTime() {
        try {
            if (!this.time__is_initialized) {
                this.time = getTime__Native();
                this.time__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.time;
    }

    public synchronized int getDuration() {
        try {
            if (!this.duration__is_initialized) {
                this.duration = getDuration__Native();
                this.duration__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.duration;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.time = archive.add(this.time);
            this.time__is_initialized = true;
            int iAdd = archive.add(this.duration);
            this.duration = iAdd;
            this.duration__is_initialized = true;
            this.nativeObject = init(this.time, iAdd);
            return;
        }
        archive.add(getTime());
        archive.add(getDuration());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::internal::TrajectorySegmentMetadata";
    }
}
