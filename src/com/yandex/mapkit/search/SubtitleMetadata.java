package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SubtitleMetadata implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private List<SubtitleItem> serpSubtitleItems;
    private boolean serpSubtitleItems__is_initialized;
    private List<SubtitleItem> subtitleItems;
    private boolean subtitleItems__is_initialized;

    private native List<SubtitleItem> getSerpSubtitleItems__Native();

    private native List<SubtitleItem> getSubtitleItems__Native();

    private native NativeObject init(List<SubtitleItem> list, List<SubtitleItem> list2);

    public SubtitleMetadata() {
        this.subtitleItems__is_initialized = false;
        this.serpSubtitleItems__is_initialized = false;
    }

    public SubtitleMetadata(List<SubtitleItem> list, List<SubtitleItem> list2) {
        this.subtitleItems__is_initialized = false;
        this.serpSubtitleItems__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"subtitleItems\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"serpSubtitleItems\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list, list2);
        this.subtitleItems = list;
        this.subtitleItems__is_initialized = true;
        this.serpSubtitleItems = list2;
        this.serpSubtitleItems__is_initialized = true;
    }

    private SubtitleMetadata(NativeObject nativeObject) {
        this.subtitleItems__is_initialized = false;
        this.serpSubtitleItems__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<SubtitleItem> getSubtitleItems() {
        try {
            if (!this.subtitleItems__is_initialized) {
                this.subtitleItems = getSubtitleItems__Native();
                this.subtitleItems__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.subtitleItems;
    }

    public synchronized List<SubtitleItem> getSerpSubtitleItems() {
        try {
            if (!this.serpSubtitleItems__is_initialized) {
                this.serpSubtitleItems = getSerpSubtitleItems__Native();
                this.serpSubtitleItems__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.serpSubtitleItems;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.subtitleItems = archive.add((List) this.subtitleItems, false, (ArchivingHandler) new ClassHandler(SubtitleItem.class));
            this.subtitleItems__is_initialized = true;
            List<SubtitleItem> listAdd = archive.add((List) this.serpSubtitleItems, false, (ArchivingHandler) new ClassHandler(SubtitleItem.class));
            this.serpSubtitleItems = listAdd;
            this.serpSubtitleItems__is_initialized = true;
            this.nativeObject = init(this.subtitleItems, listAdd);
            return;
        }
        archive.add((List) getSubtitleItems(), false, (ArchivingHandler) new ClassHandler(SubtitleItem.class));
        archive.add((List) getSerpSubtitleItems(), false, (ArchivingHandler) new ClassHandler(SubtitleItem.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::SubtitleMetadata";
    }
}
