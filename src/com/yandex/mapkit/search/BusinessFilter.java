package com.yandex.mapkit.search;

import com.yandex.mapkit.Image;
import com.yandex.mapkit.search.Feature;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class BusinessFilter implements Serializable {
    private Boolean disabled;
    private boolean disabled__is_initialized;
    private Image iconAfterDark;
    private boolean iconAfterDark__is_initialized;
    private Image iconAfterLight;
    private boolean iconAfterLight__is_initialized;
    private Image iconDark;
    private boolean iconDark__is_initialized;
    private Image iconLight;
    private boolean iconLight__is_initialized;
    private String id;
    private boolean id__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private Boolean singleSelect;
    private boolean singleSelect__is_initialized;
    private Values values;
    private boolean values__is_initialized;

    private native Boolean getDisabled__Native();

    private native Image getIconAfterDark__Native();

    private native Image getIconAfterLight__Native();

    private native Image getIconDark__Native();

    private native Image getIconLight__Native();

    private native String getId__Native();

    private native String getName__Native();

    private native Boolean getSingleSelect__Native();

    private native Values getValues__Native();

    private native NativeObject init(String str, String str2, Boolean bool, Image image, Image image2, Image image3, Image image4, Boolean bool2, Values values);

    public static class BooleanValue implements Serializable {
        private Boolean selected;
        private boolean value;

        public BooleanValue(boolean z, Boolean bool) {
            this.value = z;
            this.selected = bool;
        }

        public BooleanValue() {
        }

        public boolean getValue() {
            return this.value;
        }

        public Boolean getSelected() {
            return this.selected;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.value = archive.add(this.value);
            this.selected = archive.add(this.selected, true);
        }
    }

    public static class EnumValue implements Serializable {
        private Boolean disabled;
        private boolean disabled__is_initialized;
        private NativeObject nativeObject;
        private Boolean selected;
        private boolean selected__is_initialized;
        private Feature.FeatureEnumValue value;
        private boolean value__is_initialized;

        private native Boolean getDisabled__Native();

        private native Boolean getSelected__Native();

        private native Feature.FeatureEnumValue getValue__Native();

        private native NativeObject init(Feature.FeatureEnumValue featureEnumValue, Boolean bool, Boolean bool2);

        public EnumValue() {
            this.value__is_initialized = false;
            this.selected__is_initialized = false;
            this.disabled__is_initialized = false;
        }

        public EnumValue(Feature.FeatureEnumValue featureEnumValue, Boolean bool, Boolean bool2) {
            this.value__is_initialized = false;
            this.selected__is_initialized = false;
            this.disabled__is_initialized = false;
            if (featureEnumValue == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"value\" cannot be null");
                throw null;
            }
            this.nativeObject = init(featureEnumValue, bool, bool2);
            this.value = featureEnumValue;
            this.value__is_initialized = true;
            this.selected = bool;
            this.selected__is_initialized = true;
            this.disabled = bool2;
            this.disabled__is_initialized = true;
        }

        private EnumValue(NativeObject nativeObject) {
            this.value__is_initialized = false;
            this.selected__is_initialized = false;
            this.disabled__is_initialized = false;
            this.nativeObject = nativeObject;
        }

        public synchronized Feature.FeatureEnumValue getValue() {
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

        public synchronized Boolean getSelected() {
            try {
                if (!this.selected__is_initialized) {
                    this.selected = getSelected__Native();
                    this.selected__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.selected;
        }

        public synchronized Boolean getDisabled() {
            try {
                if (!this.disabled__is_initialized) {
                    this.disabled = getDisabled__Native();
                    this.disabled__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.disabled;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            if (archive.isReader()) {
                this.value = (Feature.FeatureEnumValue) archive.add(this.value, false, (Class<Feature.FeatureEnumValue>) Feature.FeatureEnumValue.class);
                this.value__is_initialized = true;
                this.selected = archive.add(this.selected, true);
                this.selected__is_initialized = true;
                Boolean boolAdd = archive.add(this.disabled, true);
                this.disabled = boolAdd;
                this.disabled__is_initialized = true;
                this.nativeObject = init(this.value, this.selected, boolAdd);
                return;
            }
            archive.add(getValue(), false, (Class<Feature.FeatureEnumValue>) Feature.FeatureEnumValue.class);
            archive.add(getSelected(), true);
            archive.add(getDisabled(), true);
        }

        public static String getNativeName() {
            return "yandex::maps::mapkit::search::BusinessFilter::EnumValue";
        }
    }

    public static class RangeValue implements Serializable {
        private double from;
        private double to;

        public RangeValue(double d, double d2) {
            this.from = d;
            this.to = d2;
        }

        public RangeValue() {
        }

        public double getFrom() {
            return this.from;
        }

        public double getTo() {
            return this.to;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.from = archive.add(this.from);
            this.to = archive.add(this.to);
        }
    }

    public static class DateValue implements Serializable {
        private int reserved;

        public DateValue(int i) {
            this.reserved = i;
        }

        public DateValue() {
        }

        public int getReserved() {
            return this.reserved;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.reserved = archive.add(this.reserved);
        }
    }

    public static class Values implements Serializable {
        private List<BooleanValue> booleans;
        private DateValue date;
        private List<EnumValue> enums;
        private RangeValue range;

        public static Values fromBooleans(List<BooleanValue> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"booleans\" cannot be null");
                return null;
            }
            Values values = new Values();
            values.booleans = list;
            return values;
        }

        public static Values fromEnums(List<EnumValue> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"enums\" cannot be null");
                return null;
            }
            Values values = new Values();
            values.enums = list;
            return values;
        }

        public static Values fromRange(RangeValue rangeValue) {
            if (rangeValue == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"range\" cannot be null");
                return null;
            }
            Values values = new Values();
            values.range = rangeValue;
            return values;
        }

        public static Values fromDate(DateValue dateValue) {
            if (dateValue == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"date\" cannot be null");
                return null;
            }
            Values values = new Values();
            values.date = dateValue;
            return values;
        }

        public List<BooleanValue> getBooleans() {
            return this.booleans;
        }

        public List<EnumValue> getEnums() {
            return this.enums;
        }

        public RangeValue getRange() {
            return this.range;
        }

        public DateValue getDate() {
            return this.date;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.booleans = archive.add((List) this.booleans, true, (ArchivingHandler) new ClassHandler(BooleanValue.class));
            this.enums = archive.add((List) this.enums, true, (ArchivingHandler) new ClassHandler(EnumValue.class));
            this.range = (RangeValue) archive.add(this.range, true, (Class<RangeValue>) RangeValue.class);
            this.date = (DateValue) archive.add(this.date, true, (Class<DateValue>) DateValue.class);
        }
    }

    public BusinessFilter() {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.disabled__is_initialized = false;
        this.iconLight__is_initialized = false;
        this.iconDark__is_initialized = false;
        this.iconAfterLight__is_initialized = false;
        this.iconAfterDark__is_initialized = false;
        this.singleSelect__is_initialized = false;
        this.values__is_initialized = false;
    }

    public BusinessFilter(String str, String str2, Boolean bool, Image image, Image image2, Image image3, Image image4, Boolean bool2, Values values) {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.disabled__is_initialized = false;
        this.iconLight__is_initialized = false;
        this.iconDark__is_initialized = false;
        this.iconAfterLight__is_initialized = false;
        this.iconAfterDark__is_initialized = false;
        this.singleSelect__is_initialized = false;
        this.values__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (values == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"values\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, bool, image, image2, image3, image4, bool2, values);
        this.id = str;
        this.id__is_initialized = true;
        this.name = str2;
        this.name__is_initialized = true;
        this.disabled = bool;
        this.disabled__is_initialized = true;
        this.iconLight = image;
        this.iconLight__is_initialized = true;
        this.iconDark = image2;
        this.iconDark__is_initialized = true;
        this.iconAfterLight = image3;
        this.iconAfterLight__is_initialized = true;
        this.iconAfterDark = image4;
        this.iconAfterDark__is_initialized = true;
        this.singleSelect = bool2;
        this.singleSelect__is_initialized = true;
        this.values = values;
        this.values__is_initialized = true;
    }

    private BusinessFilter(NativeObject nativeObject) {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.disabled__is_initialized = false;
        this.iconLight__is_initialized = false;
        this.iconDark__is_initialized = false;
        this.iconAfterLight__is_initialized = false;
        this.iconAfterDark__is_initialized = false;
        this.singleSelect__is_initialized = false;
        this.values__is_initialized = false;
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

    public synchronized Boolean getDisabled() {
        try {
            if (!this.disabled__is_initialized) {
                this.disabled = getDisabled__Native();
                this.disabled__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.disabled;
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

    public synchronized Image getIconAfterLight() {
        try {
            if (!this.iconAfterLight__is_initialized) {
                this.iconAfterLight = getIconAfterLight__Native();
                this.iconAfterLight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconAfterLight;
    }

    public synchronized Image getIconAfterDark() {
        try {
            if (!this.iconAfterDark__is_initialized) {
                this.iconAfterDark = getIconAfterDark__Native();
                this.iconAfterDark__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconAfterDark;
    }

    public synchronized Boolean getSingleSelect() {
        try {
            if (!this.singleSelect__is_initialized) {
                this.singleSelect = getSingleSelect__Native();
                this.singleSelect__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.singleSelect;
    }

    public synchronized Values getValues() {
        try {
            if (!this.values__is_initialized) {
                this.values = getValues__Native();
                this.values__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.values;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.id = archive.add(this.id, false);
            this.id__is_initialized = true;
            this.name = archive.add(this.name, true);
            this.name__is_initialized = true;
            this.disabled = archive.add(this.disabled, true);
            this.disabled__is_initialized = true;
            this.iconLight = (Image) archive.add(this.iconLight, true, (Class<Image>) Image.class);
            this.iconLight__is_initialized = true;
            this.iconDark = (Image) archive.add(this.iconDark, true, (Class<Image>) Image.class);
            this.iconDark__is_initialized = true;
            this.iconAfterLight = (Image) archive.add(this.iconAfterLight, true, (Class<Image>) Image.class);
            this.iconAfterLight__is_initialized = true;
            this.iconAfterDark = (Image) archive.add(this.iconAfterDark, true, (Class<Image>) Image.class);
            this.iconAfterDark__is_initialized = true;
            this.singleSelect = archive.add(this.singleSelect, true);
            this.singleSelect__is_initialized = true;
            Values values = (Values) archive.add(this.values, false, (Class<Values>) Values.class);
            this.values = values;
            this.values__is_initialized = true;
            this.nativeObject = init(this.id, this.name, this.disabled, this.iconLight, this.iconDark, this.iconAfterLight, this.iconAfterDark, this.singleSelect, values);
            return;
        }
        archive.add(getId(), false);
        archive.add(getName(), true);
        archive.add(getDisabled(), true);
        archive.add(getIconLight(), true, (Class<Image>) Image.class);
        archive.add(getIconDark(), true, (Class<Image>) Image.class);
        archive.add(getIconAfterLight(), true, (Class<Image>) Image.class);
        archive.add(getIconAfterDark(), true, (Class<Image>) Image.class);
        archive.add(getSingleSelect(), true);
        archive.add(getValues(), false, (Class<Values>) Values.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::BusinessFilter";
    }
}
