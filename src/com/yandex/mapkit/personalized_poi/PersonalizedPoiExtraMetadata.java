package com.yandex.mapkit.personalized_poi;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PersonalizedPoiExtraMetadata implements BaseMetadata, Serializable {
    private List<PersonalizedPoiExtraMetadataEntry> data;
    private boolean data__is_initialized;
    private NativeObject nativeObject;

    private native List<PersonalizedPoiExtraMetadataEntry> getData__Native();

    private native NativeObject init(List<PersonalizedPoiExtraMetadataEntry> list);

    public PersonalizedPoiExtraMetadata() {
        this.data__is_initialized = false;
    }

    public PersonalizedPoiExtraMetadata(List<PersonalizedPoiExtraMetadataEntry> list) {
        this.data__is_initialized = false;
        if (list == null) {
            throw new IllegalArgumentException("Required field \"data\" cannot be null");
        }
        this.nativeObject = init(list);
        this.data = list;
        this.data__is_initialized = true;
    }

    private PersonalizedPoiExtraMetadata(NativeObject nativeObject) {
        this.data__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<PersonalizedPoiExtraMetadataEntry> getData() {
        try {
            if (!this.data__is_initialized) {
                this.data = getData__Native();
                this.data__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.data;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<PersonalizedPoiExtraMetadataEntry> listAdd = archive.add((List) this.data, false, (ArchivingHandler) new ClassHandler(PersonalizedPoiExtraMetadataEntry.class));
            this.data = listAdd;
            this.data__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getData(), false, (ArchivingHandler) new ClassHandler(PersonalizedPoiExtraMetadataEntry.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::personalized_poi::PersonalizedPoiExtraMetadata";
    }
}
