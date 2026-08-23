package com.yandex.mapkit.search;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Availability implements Serializable {
    private int days;
    private boolean days__is_initialized;
    private NativeObject nativeObject;
    private List<TimeRange> timeRanges;
    private boolean timeRanges__is_initialized;

    private native int getDays__Native();

    private native List<TimeRange> getTimeRanges__Native();

    private native NativeObject init(int i, List<TimeRange> list);

    public Availability() {
        this.days__is_initialized = false;
        this.timeRanges__is_initialized = false;
    }

    public Availability(int i, List<TimeRange> list) {
        this.days__is_initialized = false;
        this.timeRanges__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"timeRanges\" cannot be null");
            throw null;
        }
        this.nativeObject = init(i, list);
        this.days = i;
        this.days__is_initialized = true;
        this.timeRanges = list;
        this.timeRanges__is_initialized = true;
    }

    private Availability(NativeObject nativeObject) {
        this.days__is_initialized = false;
        this.timeRanges__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized int getDays() {
        try {
            if (!this.days__is_initialized) {
                this.days = getDays__Native();
                this.days__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.days;
    }

    public synchronized List<TimeRange> getTimeRanges() {
        try {
            if (!this.timeRanges__is_initialized) {
                this.timeRanges = getTimeRanges__Native();
                this.timeRanges__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.timeRanges;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.days = archive.add(Integer.valueOf(this.days), false).intValue();
            this.days__is_initialized = true;
            List<TimeRange> listAdd = archive.add((List) this.timeRanges, false, (ArchivingHandler) new ClassHandler(TimeRange.class));
            this.timeRanges = listAdd;
            this.timeRanges__is_initialized = true;
            this.nativeObject = init(this.days, listAdd);
            return;
        }
        archive.add(Integer.valueOf(getDays()), false);
        archive.add((List) getTimeRanges(), false, (ArchivingHandler) new ClassHandler(TimeRange.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::Availability";
    }
}
