package com.yandex.mapkit.search;

import com.yandex.mapkit.Image;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Feature implements Serializable {
    private String aref;
    private boolean aref__is_initialized;
    private Image iconDark;
    private boolean iconDark__is_initialized;
    private Image iconLight;
    private boolean iconLight__is_initialized;
    private String id;
    private boolean id__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private VariantValue value;
    private boolean value__is_initialized;

    private native String getAref__Native();

    private native Image getIconDark__Native();

    private native Image getIconLight__Native();

    private native String getId__Native();

    private native String getName__Native();

    private native VariantValue getValue__Native();

    private native NativeObject init(String str, VariantValue variantValue, String str2, String str3, Image image, Image image2);

    public static class FeatureEnumValue implements Serializable {
        private String id;
        private boolean id__is_initialized;
        private String imageUrlTemplate;
        private boolean imageUrlTemplate__is_initialized;
        private String name;
        private boolean name__is_initialized;
        private NativeObject nativeObject;
        private List<String> tags;
        private boolean tags__is_initialized;

        private native String getId__Native();

        private native String getImageUrlTemplate__Native();

        private native String getName__Native();

        private native List<String> getTags__Native();

        private native NativeObject init(String str, String str2, String str3, List<String> list);

        public FeatureEnumValue() {
            this.id__is_initialized = false;
            this.name__is_initialized = false;
            this.imageUrlTemplate__is_initialized = false;
            this.tags__is_initialized = false;
        }

        public FeatureEnumValue(String str, String str2, String str3, List<String> list) {
            this.id__is_initialized = false;
            this.name__is_initialized = false;
            this.imageUrlTemplate__is_initialized = false;
            this.tags__is_initialized = false;
            if (str == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
                throw null;
            }
            if (str2 == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
                throw null;
            }
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"tags\" cannot be null");
                throw null;
            }
            this.nativeObject = init(str, str2, str3, list);
            this.id = str;
            this.id__is_initialized = true;
            this.name = str2;
            this.name__is_initialized = true;
            this.imageUrlTemplate = str3;
            this.imageUrlTemplate__is_initialized = true;
            this.tags = list;
            this.tags__is_initialized = true;
        }

        private FeatureEnumValue(NativeObject nativeObject) {
            this.id__is_initialized = false;
            this.name__is_initialized = false;
            this.imageUrlTemplate__is_initialized = false;
            this.tags__is_initialized = false;
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

        public synchronized String getImageUrlTemplate() {
            try {
                if (!this.imageUrlTemplate__is_initialized) {
                    this.imageUrlTemplate = getImageUrlTemplate__Native();
                    this.imageUrlTemplate__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.imageUrlTemplate;
        }

        public synchronized List<String> getTags() {
            try {
                if (!this.tags__is_initialized) {
                    this.tags = getTags__Native();
                    this.tags__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.tags;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            if (archive.isReader()) {
                this.id = archive.add(this.id, false);
                this.id__is_initialized = true;
                this.name = archive.add(this.name, false);
                this.name__is_initialized = true;
                this.imageUrlTemplate = archive.add(this.imageUrlTemplate, true);
                this.imageUrlTemplate__is_initialized = true;
                List<String> listAdd = archive.add((List) this.tags, false, (ArchivingHandler) new StringHandler());
                this.tags = listAdd;
                this.tags__is_initialized = true;
                this.nativeObject = init(this.id, this.name, this.imageUrlTemplate, listAdd);
                return;
            }
            archive.add(getId(), false);
            archive.add(getName(), false);
            archive.add(getImageUrlTemplate(), true);
            archive.add((List) getTags(), false, (ArchivingHandler) new StringHandler());
        }

        public static String getNativeName() {
            return "yandex::maps::mapkit::search::Feature::EnumValue";
        }
    }

    public static class BooleanValue implements Serializable {
        private boolean value;

        public BooleanValue(boolean z) {
            this.value = z;
        }

        public BooleanValue() {
        }

        public boolean getValue() {
            return this.value;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.value = archive.add(this.value);
        }
    }

    public static class VariantValue implements Serializable {
        private BooleanValue booleanValue;
        private List<FeatureEnumValue> enumValue;
        private List<String> textValue;

        public static VariantValue fromBooleanValue(BooleanValue booleanValue) {
            if (booleanValue == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"booleanValue\" cannot be null");
                return null;
            }
            VariantValue variantValue = new VariantValue();
            variantValue.booleanValue = booleanValue;
            return variantValue;
        }

        public static VariantValue fromTextValue(List<String> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"textValue\" cannot be null");
                return null;
            }
            VariantValue variantValue = new VariantValue();
            variantValue.textValue = list;
            return variantValue;
        }

        public static VariantValue fromEnumValue(List<FeatureEnumValue> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"enumValue\" cannot be null");
                return null;
            }
            VariantValue variantValue = new VariantValue();
            variantValue.enumValue = list;
            return variantValue;
        }

        public BooleanValue getBooleanValue() {
            return this.booleanValue;
        }

        public List<String> getTextValue() {
            return this.textValue;
        }

        public List<FeatureEnumValue> getEnumValue() {
            return this.enumValue;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.booleanValue = (BooleanValue) archive.add(this.booleanValue, true, (Class<BooleanValue>) BooleanValue.class);
            this.textValue = archive.add((List) this.textValue, true, (ArchivingHandler) new StringHandler());
            this.enumValue = archive.add((List) this.enumValue, true, (ArchivingHandler) new ClassHandler(FeatureEnumValue.class));
        }
    }

    public Feature() {
        this.id__is_initialized = false;
        this.value__is_initialized = false;
        this.name__is_initialized = false;
        this.aref__is_initialized = false;
        this.iconLight__is_initialized = false;
        this.iconDark__is_initialized = false;
    }

    public Feature(String str, VariantValue variantValue, String str2, String str3, Image image, Image image2) {
        this.id__is_initialized = false;
        this.value__is_initialized = false;
        this.name__is_initialized = false;
        this.aref__is_initialized = false;
        this.iconLight__is_initialized = false;
        this.iconDark__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (variantValue == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"value\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, variantValue, str2, str3, image, image2);
        this.id = str;
        this.id__is_initialized = true;
        this.value = variantValue;
        this.value__is_initialized = true;
        this.name = str2;
        this.name__is_initialized = true;
        this.aref = str3;
        this.aref__is_initialized = true;
        this.iconLight = image;
        this.iconLight__is_initialized = true;
        this.iconDark = image2;
        this.iconDark__is_initialized = true;
    }

    private Feature(NativeObject nativeObject) {
        this.id__is_initialized = false;
        this.value__is_initialized = false;
        this.name__is_initialized = false;
        this.aref__is_initialized = false;
        this.iconLight__is_initialized = false;
        this.iconDark__is_initialized = false;
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

    public synchronized VariantValue getValue() {
        try {
            if (!this.value__is_initialized) {
                this.value = getValue__Native();
                this.value__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.value;
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

    public synchronized String getAref() {
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

    public synchronized Image getIconLight() {
        try {
            if (!this.iconLight__is_initialized) {
                this.iconLight = getIconLight__Native();
                this.iconLight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconLight;
    }

    public synchronized Image getIconDark() {
        try {
            if (!this.iconDark__is_initialized) {
                this.iconDark = getIconDark__Native();
                this.iconDark__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconDark;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.id = archive.add(this.id, false);
            this.id__is_initialized = true;
            this.value = (VariantValue) archive.add(this.value, false, (Class<VariantValue>) VariantValue.class);
            this.value__is_initialized = true;
            this.name = archive.add(this.name, true);
            this.name__is_initialized = true;
            this.aref = archive.add(this.aref, true);
            this.aref__is_initialized = true;
            this.iconLight = (Image) archive.add(this.iconLight, true, (Class<Image>) Image.class);
            this.iconLight__is_initialized = true;
            Image image = (Image) archive.add(this.iconDark, true, (Class<Image>) Image.class);
            this.iconDark = image;
            this.iconDark__is_initialized = true;
            this.nativeObject = init(this.id, this.value, this.name, this.aref, this.iconLight, image);
            return;
        }
        archive.add(getId(), false);
        archive.add(getValue(), false, (Class<VariantValue>) VariantValue.class);
        archive.add(getName(), true);
        archive.add(getAref(), true);
        archive.add(getIconLight(), true, (Class<Image>) Image.class);
        archive.add(getIconDark(), true, (Class<Image>) Image.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::Feature";
    }
}
