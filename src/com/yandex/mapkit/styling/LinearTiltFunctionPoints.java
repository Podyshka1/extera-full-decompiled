package com.yandex.mapkit.styling;

import android.graphics.PointF;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.PointHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LinearTiltFunctionPoints implements Serializable {
    private NativeObject nativeObject;
    private List<PointF> points;
    private boolean points__is_initialized;

    private native List<PointF> getPoints__Native();

    private native NativeObject init(List<PointF> list);

    public LinearTiltFunctionPoints() {
        this.points__is_initialized = false;
    }

    public LinearTiltFunctionPoints(List<PointF> list) {
        this.points__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"points\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.points = list;
        this.points__is_initialized = true;
    }

    private LinearTiltFunctionPoints(NativeObject nativeObject) {
        this.points__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<PointF> getPoints() {
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
            List<PointF> listAdd = archive.add((List) this.points, false, (ArchivingHandler) new PointHandler());
            this.points = listAdd;
            this.points__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getPoints(), false, (ArchivingHandler) new PointHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::styling::LinearTiltFunctionPoints";
    }
}
