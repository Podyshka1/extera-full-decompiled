package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RouteSettings implements Serializable {
    private List<String> acceptTypes;
    private boolean acceptTypes__is_initialized;
    private List<String> avoidTypes;
    private boolean avoidTypes__is_initialized;
    private NativeObject nativeObject;

    private native List<String> getAcceptTypes__Native();

    private native List<String> getAvoidTypes__Native();

    private native NativeObject init(List<String> list, List<String> list2);

    public RouteSettings() {
        this.avoidTypes__is_initialized = false;
        this.acceptTypes__is_initialized = false;
    }

    public RouteSettings(List<String> list, List<String> list2) {
        this.avoidTypes__is_initialized = false;
        this.acceptTypes__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"avoidTypes\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"acceptTypes\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list, list2);
        this.avoidTypes = list;
        this.avoidTypes__is_initialized = true;
        this.acceptTypes = list2;
        this.acceptTypes__is_initialized = true;
    }

    private RouteSettings(NativeObject nativeObject) {
        this.avoidTypes__is_initialized = false;
        this.acceptTypes__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<String> getAvoidTypes() {
        try {
            if (!this.avoidTypes__is_initialized) {
                this.avoidTypes = getAvoidTypes__Native();
                this.avoidTypes__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.avoidTypes;
    }

    public synchronized List<String> getAcceptTypes() {
        try {
            if (!this.acceptTypes__is_initialized) {
                this.acceptTypes = getAcceptTypes__Native();
                this.acceptTypes__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.acceptTypes;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.avoidTypes = archive.add((List) this.avoidTypes, false, (ArchivingHandler) new StringHandler());
            this.avoidTypes__is_initialized = true;
            List<String> listAdd = archive.add((List) this.acceptTypes, false, (ArchivingHandler) new StringHandler());
            this.acceptTypes = listAdd;
            this.acceptTypes__is_initialized = true;
            this.nativeObject = init(this.avoidTypes, listAdd);
            return;
        }
        archive.add((List) getAvoidTypes(), false, (ArchivingHandler) new StringHandler());
        archive.add((List) getAcceptTypes(), false, (ArchivingHandler) new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::RouteSettings";
    }
}
