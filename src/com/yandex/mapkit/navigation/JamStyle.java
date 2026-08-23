package com.yandex.mapkit.navigation;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class JamStyle implements Serializable {
    private List<JamTypeColor> colors;
    private boolean colors__is_initialized;
    private NativeObject nativeObject;

    private native List<JamTypeColor> getColors__Native();

    private native NativeObject init(List<JamTypeColor> list);

    public JamStyle() {
        this.colors__is_initialized = false;
    }

    public JamStyle(List<JamTypeColor> list) {
        this.colors__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"colors\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.colors = list;
        this.colors__is_initialized = true;
    }

    private JamStyle(NativeObject nativeObject) {
        this.colors__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<JamTypeColor> getColors() {
        try {
            if (!this.colors__is_initialized) {
                this.colors = getColors__Native();
                this.colors__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.colors;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<JamTypeColor> listAdd = archive.add((List) this.colors, false, (ArchivingHandler) new ClassHandler(JamTypeColor.class));
            this.colors = listAdd;
            this.colors__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getColors(), false, (ArchivingHandler) new ClassHandler(JamTypeColor.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::navigation::JamStyle";
    }
}
