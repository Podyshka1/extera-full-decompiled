package com.yandex.mapkit.search;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.ListHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class FilterCollection implements Serializable {
    private List<String> booleanFilters;
    private boolean booleanFilters__is_initialized;
    private Map<String, DateRange> dateFilters;
    private boolean dateFilters__is_initialized;
    private Map<String, List<String>> enumFilters;
    private boolean enumFilters__is_initialized;
    private NativeObject nativeObject;
    private Map<String, NumberRange> rangeFilters;
    private boolean rangeFilters__is_initialized;

    private native List<String> getBooleanFilters__Native();

    private native Map<String, DateRange> getDateFilters__Native();

    private native Map<String, List<String>> getEnumFilters__Native();

    private native Map<String, NumberRange> getRangeFilters__Native();

    private native NativeObject init(List<String> list, Map<String, List<String>> map, Map<String, NumberRange> map2, Map<String, DateRange> map3);

    public static class NumberRange implements Serializable {
        private double from;
        private double to;

        public NumberRange(double d, double d2) {
            this.from = d;
            this.to = d2;
        }

        public NumberRange() {
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

    public static class DateRange implements Serializable {
        private String from;
        private String to;

        public DateRange(String str, String str2) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"from\" cannot be null");
                throw null;
            }
            if (str2 == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"to\" cannot be null");
                throw null;
            }
            this.from = str;
            this.to = str2;
        }

        public DateRange() {
        }

        public String getFrom() {
            return this.from;
        }

        public String getTo() {
            return this.to;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.from = archive.add(this.from, false);
            this.to = archive.add(this.to, false);
        }
    }

    public FilterCollection() {
        this.booleanFilters__is_initialized = false;
        this.enumFilters__is_initialized = false;
        this.rangeFilters__is_initialized = false;
        this.dateFilters__is_initialized = false;
    }

    public FilterCollection(List<String> list, Map<String, List<String>> map, Map<String, NumberRange> map2, Map<String, DateRange> map3) {
        this.booleanFilters__is_initialized = false;
        this.enumFilters__is_initialized = false;
        this.rangeFilters__is_initialized = false;
        this.dateFilters__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"booleanFilters\" cannot be null");
            throw null;
        }
        if (map == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"enumFilters\" cannot be null");
            throw null;
        }
        if (map2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"rangeFilters\" cannot be null");
            throw null;
        }
        if (map3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"dateFilters\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list, map, map2, map3);
        this.booleanFilters = list;
        this.booleanFilters__is_initialized = true;
        this.enumFilters = map;
        this.enumFilters__is_initialized = true;
        this.rangeFilters = map2;
        this.rangeFilters__is_initialized = true;
        this.dateFilters = map3;
        this.dateFilters__is_initialized = true;
    }

    private FilterCollection(NativeObject nativeObject) {
        this.booleanFilters__is_initialized = false;
        this.enumFilters__is_initialized = false;
        this.rangeFilters__is_initialized = false;
        this.dateFilters__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<String> getBooleanFilters() {
        try {
            if (!this.booleanFilters__is_initialized) {
                this.booleanFilters = getBooleanFilters__Native();
                this.booleanFilters__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.booleanFilters;
    }

    public synchronized Map<String, List<String>> getEnumFilters() {
        try {
            if (!this.enumFilters__is_initialized) {
                this.enumFilters = getEnumFilters__Native();
                this.enumFilters__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.enumFilters;
    }

    public synchronized Map<String, NumberRange> getRangeFilters() {
        try {
            if (!this.rangeFilters__is_initialized) {
                this.rangeFilters = getRangeFilters__Native();
                this.rangeFilters__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.rangeFilters;
    }

    public synchronized Map<String, DateRange> getDateFilters() {
        try {
            if (!this.dateFilters__is_initialized) {
                this.dateFilters = getDateFilters__Native();
                this.dateFilters__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.dateFilters;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.booleanFilters = archive.add((List) this.booleanFilters, false, (ArchivingHandler) new StringHandler());
            this.booleanFilters__is_initialized = true;
            this.enumFilters = archive.add(this.enumFilters, false, new StringHandler(), new ListHandler(new StringHandler()));
            this.enumFilters__is_initialized = true;
            this.rangeFilters = archive.add(this.rangeFilters, false, new StringHandler(), new ClassHandler(NumberRange.class));
            this.rangeFilters__is_initialized = true;
            Map<String, DateRange> mapAdd = archive.add(this.dateFilters, false, new StringHandler(), new ClassHandler(DateRange.class));
            this.dateFilters = mapAdd;
            this.dateFilters__is_initialized = true;
            this.nativeObject = init(this.booleanFilters, this.enumFilters, this.rangeFilters, mapAdd);
            return;
        }
        archive.add((List) getBooleanFilters(), false, (ArchivingHandler) new StringHandler());
        archive.add(getEnumFilters(), false, new StringHandler(), new ListHandler(new StringHandler()));
        archive.add(getRangeFilters(), false, new StringHandler(), new ClassHandler(NumberRange.class));
        archive.add(getDateFilters(), false, new StringHandler(), new ClassHandler(DateRange.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::FilterCollection";
    }
}
