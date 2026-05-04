package com.yandex.mapkit;

import com.yandex.mapkit.geometry.BoundingBox;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.TypeDictionary;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GeoObjectCollection implements Serializable {
    private BoundingBox boundingBox;
    private boolean boundingBox__is_initialized;
    private List<Item> children;
    private boolean children__is_initialized;
    private TypeDictionary<BaseMetadata> metadataContainer;
    private boolean metadataContainer__is_initialized;
    private NativeObject nativeObject;

    private native BoundingBox getBoundingBox__Native();

    private native List<Item> getChildren__Native();

    private native TypeDictionary<BaseMetadata> getMetadataContainer__Native();

    private native NativeObject init(BoundingBox boundingBox, TypeDictionary<BaseMetadata> typeDictionary, List<Item> list);

    public static class Item implements Serializable {
        private GeoObjectCollection collection;
        private GeoObject obj;

        public static Item fromObj(GeoObject geoObject) {
            if (geoObject == null) {
                throw new IllegalArgumentException("Variant value \"obj\" cannot be null");
            }
            Item item = new Item();
            item.obj = geoObject;
            return item;
        }

        public static Item fromCollection(GeoObjectCollection geoObjectCollection) {
            if (geoObjectCollection == null) {
                throw new IllegalArgumentException("Variant value \"collection\" cannot be null");
            }
            Item item = new Item();
            item.collection = geoObjectCollection;
            return item;
        }

        public GeoObject getObj() {
            return this.obj;
        }

        public GeoObjectCollection getCollection() {
            return this.collection;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.obj = (GeoObject) archive.add(this.obj, true, (Class<GeoObject>) GeoObject.class);
            this.collection = (GeoObjectCollection) archive.add(this.collection, true, (Class<GeoObjectCollection>) GeoObjectCollection.class);
        }
    }

    public GeoObjectCollection() {
        this.boundingBox__is_initialized = false;
        this.metadataContainer__is_initialized = false;
        this.children__is_initialized = false;
    }

    public GeoObjectCollection(BoundingBox boundingBox, TypeDictionary<BaseMetadata> typeDictionary, List<Item> list) {
        this.boundingBox__is_initialized = false;
        this.metadataContainer__is_initialized = false;
        this.children__is_initialized = false;
        if (typeDictionary == null) {
            throw new IllegalArgumentException("Required field \"metadataContainer\" cannot be null");
        }
        if (list == null) {
            throw new IllegalArgumentException("Required field \"children\" cannot be null");
        }
        this.nativeObject = init(boundingBox, typeDictionary, list);
        this.boundingBox = boundingBox;
        this.boundingBox__is_initialized = true;
        this.metadataContainer = typeDictionary;
        this.metadataContainer__is_initialized = true;
        this.children = list;
        this.children__is_initialized = true;
    }

    private GeoObjectCollection(NativeObject nativeObject) {
        this.boundingBox__is_initialized = false;
        this.metadataContainer__is_initialized = false;
        this.children__is_initialized = false;
        this.nativeObject = nativeObject;
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

    public synchronized List<Item> getChildren() {
        try {
            if (!this.children__is_initialized) {
                this.children = getChildren__Native();
                this.children__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.children;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.boundingBox = (BoundingBox) archive.add(this.boundingBox, true, (Class<BoundingBox>) BoundingBox.class);
            this.boundingBox__is_initialized = true;
            this.metadataContainer = archive.add((TypeDictionary) this.metadataContainer, false, (ArchivingHandler) new ClassHandler(BaseMetadata.class));
            this.metadataContainer__is_initialized = true;
            List<Item> listAdd = archive.add((List) this.children, false, (ArchivingHandler) new ClassHandler(Item.class));
            this.children = listAdd;
            this.children__is_initialized = true;
            this.nativeObject = init(this.boundingBox, this.metadataContainer, listAdd);
            return;
        }
        archive.add(getBoundingBox(), true, (Class<BoundingBox>) BoundingBox.class);
        archive.add((TypeDictionary) getMetadataContainer(), false, (ArchivingHandler) new ClassHandler(BaseMetadata.class));
        archive.add((List) getChildren(), false, (ArchivingHandler) new ClassHandler(Item.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::GeoObjectCollection";
    }
}
