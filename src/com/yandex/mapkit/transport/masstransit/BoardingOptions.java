package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BoardingOptions implements Serializable {
    private List<BoardingArea> area;
    private boolean area__is_initialized;
    private NativeObject nativeObject;

    private native List<BoardingArea> getArea__Native();

    private native NativeObject init(List<BoardingArea> list);

    public static class BoardingArea implements Serializable {
        private String id;
        private boolean id__is_initialized;
        private NativeObject nativeObject;

        private native String getId__Native();

        private native NativeObject init(String str);

        public BoardingArea() {
            this.id__is_initialized = false;
        }

        public BoardingArea(String str) {
            this.id__is_initialized = false;
            this.nativeObject = init(str);
            this.id = str;
            this.id__is_initialized = true;
        }

        private BoardingArea(NativeObject nativeObject) {
            this.id__is_initialized = false;
            this.nativeObject = nativeObject;
        }

        public synchronized String getId() {
            try {
                if (!this.id__is_initialized) {
                    this.id = getId__Native();
                    this.id__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.id;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            if (archive.isReader()) {
                String strAdd = archive.add(this.id, true);
                this.id = strAdd;
                this.id__is_initialized = true;
                this.nativeObject = init(strAdd);
                return;
            }
            archive.add(getId(), true);
        }

        public static String getNativeName() {
            return "yandex::maps::mapkit::transport::masstransit::BoardingOptions::BoardingArea";
        }
    }

    public BoardingOptions() {
        this.area__is_initialized = false;
    }

    public BoardingOptions(List<BoardingArea> list) {
        this.area__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"area\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.area = list;
        this.area__is_initialized = true;
    }

    private BoardingOptions(NativeObject nativeObject) {
        this.area__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<BoardingArea> getArea() {
        try {
            if (!this.area__is_initialized) {
                this.area = getArea__Native();
                this.area__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.area;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<BoardingArea> listAdd = archive.add((List) this.area, false, (ArchivingHandler) new ClassHandler(BoardingArea.class));
            this.area = listAdd;
            this.area__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getArea(), false, (ArchivingHandler) new ClassHandler(BoardingArea.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::BoardingOptions";
    }
}
