package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TransportContour implements Serializable {
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private Style style;
    private boolean style__is_initialized;

    private native String getName__Native();

    private native Style getStyle__Native();

    private native NativeObject init(String str, Style style);

    public static class Style implements Serializable {
        private Integer mainColor;
        private Integer mainColorNight;

        public Style(Integer num, Integer num2) {
            this.mainColor = num;
            this.mainColorNight = num2;
        }

        public Style() {
        }

        public Integer getMainColor() {
            return this.mainColor;
        }

        public Integer getMainColorNight() {
            return this.mainColorNight;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.mainColor = archive.add(this.mainColor, true);
            this.mainColorNight = archive.add(this.mainColorNight, true);
        }
    }

    public TransportContour() {
        this.name__is_initialized = false;
        this.style__is_initialized = false;
    }

    public TransportContour(String str, Style style) {
        this.name__is_initialized = false;
        this.style__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, style);
        this.name = str;
        this.name__is_initialized = true;
        this.style = style;
        this.style__is_initialized = true;
    }

    private TransportContour(NativeObject nativeObject) {
        this.name__is_initialized = false;
        this.style__is_initialized = false;
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

    public synchronized Style getStyle() {
        try {
            if (!this.style__is_initialized) {
                this.style = getStyle__Native();
                this.style__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.style;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.name = archive.add(this.name, false);
            this.name__is_initialized = true;
            Style style = (Style) archive.add(this.style, true, (Class<Style>) Style.class);
            this.style = style;
            this.style__is_initialized = true;
            this.nativeObject = init(this.name, style);
            return;
        }
        archive.add(getName(), false);
        archive.add(getStyle(), true, (Class<Style>) Style.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::TransportContour";
    }
}
