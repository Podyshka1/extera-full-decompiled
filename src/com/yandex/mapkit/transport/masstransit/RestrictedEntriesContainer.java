package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RestrictedEntriesContainer implements Serializable {
    private List<RestrictedEntry> entries;
    private boolean entries__is_initialized;
    private NativeObject nativeObject;

    private native List<RestrictedEntry> getEntries__Native();

    private native NativeObject init(List<RestrictedEntry> list);

    public RestrictedEntriesContainer() {
        this.entries__is_initialized = false;
    }

    public RestrictedEntriesContainer(List<RestrictedEntry> list) {
        this.entries__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"entries\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.entries = list;
        this.entries__is_initialized = true;
    }

    private RestrictedEntriesContainer(NativeObject nativeObject) {
        this.entries__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<RestrictedEntry> getEntries() {
        try {
            if (!this.entries__is_initialized) {
                this.entries = getEntries__Native();
                this.entries__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.entries;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<RestrictedEntry> listAdd = archive.add((List) this.entries, false, (ArchivingHandler) new ClassHandler(RestrictedEntry.class));
            this.entries = listAdd;
            this.entries__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getEntries(), false, (ArchivingHandler) new ClassHandler(RestrictedEntry.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::RestrictedEntriesContainer";
    }
}
