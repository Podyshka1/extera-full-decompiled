package com.yandex.mapkit;

import com.yandex.mapkit.geometry.BoundingBox;
import com.yandex.mapkit.geometry.Geometry;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.TypeDictionary;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class GeoObject implements Serializable {
    private List<String> aref;
    private boolean aref__is_initialized;
    private Map<String, Attribution> attributionMap;
    private boolean attributionMap__is_initialized;
    private BoundingBox boundingBox;
    private boolean boundingBox__is_initialized;
    private String descriptionText;
    private boolean descriptionText__is_initialized;
    private List<Geometry> geometry;
    private boolean geometry__is_initialized;
    private TypeDictionary<BaseMetadata> metadataContainer;
    private boolean metadataContainer__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;

    private native List<String> getAref__Native();

    private native Map<String, Attribution> getAttributionMap__Native();

    private native BoundingBox getBoundingBox__Native();

    private native String getDescriptionText__Native();

    private native List<Geometry> getGeometry__Native();

    private native TypeDictionary<BaseMetadata> getMetadataContainer__Native();

    private native String getName__Native();

    private native NativeObject init(String str, String str2, List<Geometry> list, BoundingBox boundingBox, Map<String, Attribution> map, TypeDictionary<BaseMetadata> typeDictionary, List<String> list2);

    public GeoObject() {
        this.name__is_initialized = false;
        this.descriptionText__is_initialized = false;
        this.geometry__is_initialized = false;
        this.boundingBox__is_initialized = false;
        this.attributionMap__is_initialized = false;
        this.metadataContainer__is_initialized = false;
        this.aref__is_initialized = false;
    }

    public GeoObject(String str, String str2, List<Geometry> list, BoundingBox boundingBox, Map<String, Attribution> map, TypeDictionary<BaseMetadata> typeDictionary, List<String> list2) {
        this.name__is_initialized = false;
        this.descriptionText__is_initialized = false;
        this.geometry__is_initialized = false;
        this.boundingBox__is_initialized = false;
        this.attributionMap__is_initialized = false;
        this.metadataContainer__is_initialized = false;
        this.aref__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"geometry\" cannot be null");
            throw null;
        }
        if (map == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"attributionMap\" cannot be null");
            throw null;
        }
        if (typeDictionary == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"metadataContainer\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"aref\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, list, boundingBox, map, typeDictionary, list2);
        this.name = str;
        this.name__is_initialized = true;
        this.descriptionText = str2;
        this.descriptionText__is_initialized = true;
        this.geometry = list;
        this.geometry__is_initialized = true;
        this.boundingBox = boundingBox;
        this.boundingBox__is_initialized = true;
        this.attributionMap = map;
        this.attributionMap__is_initialized = true;
        this.metadataContainer = typeDictionary;
        this.metadataContainer__is_initialized = true;
        this.aref = list2;
        this.aref__is_initialized = true;
    }

    private GeoObject(NativeObject nativeObject) {
        this.name__is_initialized = false;
        this.descriptionText__is_initialized = false;
        this.geometry__is_initialized = false;
        this.boundingBox__is_initialized = false;
        this.attributionMap__is_initialized = false;
        this.metadataContainer__is_initialized = false;
        this.aref__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getName() {
        try {
            if (!this.name__is_initialized) {
                this.name = getName__Native();
                this.name__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.name;
    }

    public synchronized String getDescriptionText() {
        try {
            if (!this.descriptionText__is_initialized) {
                this.descriptionText = getDescriptionText__Native();
                this.descriptionText__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.descriptionText;
    }

    public synchronized List<Geometry> getGeometry() {
        try {
            if (!this.geometry__is_initialized) {
                this.geometry = getGeometry__Native();
                this.geometry__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.geometry;
    }

    public synchronized BoundingBox getBoundingBox() {
        try {
            if (!this.boundingBox__is_initialized) {
                this.boundingBox = getBoundingBox__Native();
                this.boundingBox__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.boundingBox;
    }

    public synchronized Map<String, Attribution> getAttributionMap() {
        try {
            if (!this.attributionMap__is_initialized) {
                this.attributionMap = getAttributionMap__Native();
                this.attributionMap__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.attributionMap;
    }

    public synchronized TypeDictionary<BaseMetadata> getMetadataContainer() {
        try {
            if (!this.metadataContainer__is_initialized) {
                this.metadataContainer = getMetadataContainer__Native();
                this.metadataContainer__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.metadataContainer;
    }

    public synchronized List<String> getAref() {
        try {
            if (!this.aref__is_initialized) {
                this.aref = getAref__Native();
                this.aref__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.aref;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.name = archive.add(this.name, true);
            this.name__is_initialized = true;
            this.descriptionText = archive.add(this.descriptionText, true);
            this.descriptionText__is_initialized = true;
            this.geometry = archive.add((List) this.geometry, false, (ArchivingHandler) new ClassHandler(Geometry.class));
            this.geometry__is_initialized = true;
            this.boundingBox = (BoundingBox) archive.add(this.boundingBox, true, (Class<BoundingBox>) BoundingBox.class);
            this.boundingBox__is_initialized = true;
            this.attributionMap = archive.add(this.attributionMap, false, new StringHandler(), new ClassHandler(Attribution.class));
            this.attributionMap__is_initialized = true;
            this.metadataContainer = archive.add((TypeDictionary) this.metadataContainer, false, (ArchivingHandler) new ClassHandler(BaseMetadata.class));
            this.metadataContainer__is_initialized = true;
            List<String> listAdd = archive.add((List) this.aref, false, (ArchivingHandler) new StringHandler());
            this.aref = listAdd;
            this.aref__is_initialized = true;
            this.nativeObject = init(this.name, this.descriptionText, this.geometry, this.boundingBox, this.attributionMap, this.metadataContainer, listAdd);
            return;
        }
        archive.add(getName(), true);
        archive.add(getDescriptionText(), true);
        archive.add((List) getGeometry(), false, (ArchivingHandler) new ClassHandler(Geometry.class));
        archive.add(getBoundingBox(), true, (Class<BoundingBox>) BoundingBox.class);
        archive.add(getAttributionMap(), false, new StringHandler(), new ClassHandler(Attribution.class));
        archive.add((TypeDictionary) getMetadataContainer(), false, (ArchivingHandler) new ClassHandler(BaseMetadata.class));
        archive.add((List) getAref(), false, (ArchivingHandler) new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::GeoObject";
    }
}
