package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.navigation.JamSegment;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Taxi implements Serializable {
    private List<JamSegment> jamSegments;
    private boolean jamSegments__is_initialized;
    private NativeObject nativeObject;

    private native List<JamSegment> getJamSegments__Native();

    private native NativeObject init(List<JamSegment> list);

    public Taxi() {
        this.jamSegments__is_initialized = false;
    }

    public Taxi(List<JamSegment> list) {
        this.jamSegments__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"jamSegments\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.jamSegments = list;
        this.jamSegments__is_initialized = true;
    }

    private Taxi(NativeObject nativeObject) {
        this.jamSegments__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<JamSegment> getJamSegments() {
        try {
            if (!this.jamSegments__is_initialized) {
                this.jamSegments = getJamSegments__Native();
                this.jamSegments__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.jamSegments;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<JamSegment> listAdd = archive.add((List) this.jamSegments, false, (ArchivingHandler) new ClassHandler(JamSegment.class));
            this.jamSegments = listAdd;
            this.jamSegments__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getJamSegments(), false, (ArchivingHandler) new ClassHandler(JamSegment.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Taxi";
    }
}
