package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.IntegerHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingSectionMetadata implements Serializable {
    private Annotation annotation;
    private boolean annotation__is_initialized;
    private int legIndex;
    private boolean legIndex__is_initialized;
    private NativeObject nativeObject;
    private List<Integer> viaPointPositions;
    private boolean viaPointPositions__is_initialized;
    private Weight weight;
    private boolean weight__is_initialized;

    private native Annotation getAnnotation__Native();

    private native int getLegIndex__Native();

    private native List<Integer> getViaPointPositions__Native();

    private native Weight getWeight__Native();

    private native NativeObject init(int i, Weight weight, Annotation annotation, List<Integer> list);

    public DrivingSectionMetadata() {
        this.legIndex__is_initialized = false;
        this.weight__is_initialized = false;
        this.annotation__is_initialized = false;
        this.viaPointPositions__is_initialized = false;
    }

    public DrivingSectionMetadata(int i, Weight weight, Annotation annotation, List<Integer> list) {
        this.legIndex__is_initialized = false;
        this.weight__is_initialized = false;
        this.annotation__is_initialized = false;
        this.viaPointPositions__is_initialized = false;
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        if (annotation == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"annotation\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"viaPointPositions\" cannot be null");
            throw null;
        }
        this.nativeObject = init(i, weight, annotation, list);
        this.legIndex = i;
        this.legIndex__is_initialized = true;
        this.weight = weight;
        this.weight__is_initialized = true;
        this.annotation = annotation;
        this.annotation__is_initialized = true;
        this.viaPointPositions = list;
        this.viaPointPositions__is_initialized = true;
    }

    private DrivingSectionMetadata(NativeObject nativeObject) {
        this.legIndex__is_initialized = false;
        this.weight__is_initialized = false;
        this.annotation__is_initialized = false;
        this.viaPointPositions__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized int getLegIndex() {
        try {
            if (!this.legIndex__is_initialized) {
                this.legIndex = getLegIndex__Native();
                this.legIndex__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.legIndex;
    }

    public synchronized Weight getWeight() {
        try {
            if (!this.weight__is_initialized) {
                this.weight = getWeight__Native();
                this.weight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.weight;
    }

    public synchronized Annotation getAnnotation() {
        try {
            if (!this.annotation__is_initialized) {
                this.annotation = getAnnotation__Native();
                this.annotation__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.annotation;
    }

    public synchronized List<Integer> getViaPointPositions() {
        try {
            if (!this.viaPointPositions__is_initialized) {
                this.viaPointPositions = getViaPointPositions__Native();
                this.viaPointPositions__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.viaPointPositions;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.legIndex = archive.add(this.legIndex);
            this.legIndex__is_initialized = true;
            this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
            this.weight__is_initialized = true;
            this.annotation = (Annotation) archive.add(this.annotation, false, (Class<Annotation>) Annotation.class);
            this.annotation__is_initialized = true;
            List<Integer> listAdd = archive.add((List) this.viaPointPositions, false, (ArchivingHandler) new IntegerHandler());
            this.viaPointPositions = listAdd;
            this.viaPointPositions__is_initialized = true;
            this.nativeObject = init(this.legIndex, this.weight, this.annotation, listAdd);
            return;
        }
        archive.add(getLegIndex());
        archive.add(getWeight(), false, (Class<Weight>) Weight.class);
        archive.add(getAnnotation(), false, (Class<Annotation>) Annotation.class);
        archive.add((List) getViaPointPositions(), false, (ArchivingHandler) new IntegerHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::SectionMetadata";
    }
}
