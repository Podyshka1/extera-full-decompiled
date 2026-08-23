package com.yandex.mapkit.geometry;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class MultiPolygon implements Serializable {
    private NativeObject nativeObject;
    private List<Polygon> polygons;
    private boolean polygons__is_initialized;

    private native List<Polygon> getPolygons__Native();

    private native NativeObject init(List<Polygon> list);

    public MultiPolygon() {
        this.polygons__is_initialized = false;
    }

    public MultiPolygon(List<Polygon> list) {
        this.polygons__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"polygons\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.polygons = list;
        this.polygons__is_initialized = true;
    }

    private MultiPolygon(NativeObject nativeObject) {
        this.polygons__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<Polygon> getPolygons() {
        try {
            if (!this.polygons__is_initialized) {
                this.polygons = getPolygons__Native();
                this.polygons__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.polygons;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<Polygon> listAdd = archive.add((List) this.polygons, false, (ArchivingHandler) new ClassHandler(Polygon.class));
            this.polygons = listAdd;
            this.polygons__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getPolygons(), false, (ArchivingHandler) new ClassHandler(Polygon.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::geometry::MultiPolygon";
    }
}
