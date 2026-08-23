package com.yandex.mapkit.geometry;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LinearRing implements Serializable {
    private NativeObject nativeObject;
    private List<Point> points;
    private boolean points__is_initialized;

    private native List<Point> getPoints__Native();

    private native NativeObject init(List<Point> list);

    public LinearRing() {
        this.points__is_initialized = false;
    }

    public LinearRing(List<Point> list) {
        this.points__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"points\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.points = list;
        this.points__is_initialized = true;
    }

    private LinearRing(NativeObject nativeObject) {
        this.points__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<Point> getPoints() {
        try {
            if (!this.points__is_initialized) {
                this.points = getPoints__Native();
                this.points__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.points;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<Point> listAdd = archive.add((List) this.points, false, (ArchivingHandler) new ClassHandler(Point.class));
            this.points = listAdd;
            this.points__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getPoints(), false, (ArchivingHandler) new ClassHandler(Point.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::geometry::LinearRing";
    }
}
