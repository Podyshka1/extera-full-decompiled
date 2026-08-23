package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Direction;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ArrowConnection implements Serializable {
    private Direction angularPosition;
    private boolean angularPosition__is_initialized;
    private Style arrowStyle;
    private boolean arrowStyle__is_initialized;
    private String label;
    private boolean label__is_initialized;
    private NativeObject nativeObject;
    private String panoramaId;
    private boolean panoramaId__is_initialized;

    public enum Style {
        STREET,
        INDOOR,
        ENTRY
    }

    private native Direction getAngularPosition__Native();

    private native Style getArrowStyle__Native();

    private native String getLabel__Native();

    private native String getPanoramaId__Native();

    private native NativeObject init(Direction direction, String str, Style style, String str2);

    public ArrowConnection() {
        this.angularPosition__is_initialized = false;
        this.label__is_initialized = false;
        this.arrowStyle__is_initialized = false;
        this.panoramaId__is_initialized = false;
    }

    public ArrowConnection(Direction direction, String str, Style style, String str2) {
        this.angularPosition__is_initialized = false;
        this.label__is_initialized = false;
        this.arrowStyle__is_initialized = false;
        this.panoramaId__is_initialized = false;
        if (direction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"angularPosition\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"label\" cannot be null");
            throw null;
        }
        if (style == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"arrowStyle\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"panoramaId\" cannot be null");
            throw null;
        }
        this.nativeObject = init(direction, str, style, str2);
        this.angularPosition = direction;
        this.angularPosition__is_initialized = true;
        this.label = str;
        this.label__is_initialized = true;
        this.arrowStyle = style;
        this.arrowStyle__is_initialized = true;
        this.panoramaId = str2;
        this.panoramaId__is_initialized = true;
    }

    private ArrowConnection(NativeObject nativeObject) {
        this.angularPosition__is_initialized = false;
        this.label__is_initialized = false;
        this.arrowStyle__is_initialized = false;
        this.panoramaId__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Direction getAngularPosition() {
        try {
            if (!this.angularPosition__is_initialized) {
                this.angularPosition = getAngularPosition__Native();
                this.angularPosition__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.angularPosition;
    }

    public synchronized String getLabel() {
        try {
            if (!this.label__is_initialized) {
                this.label = getLabel__Native();
                this.label__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.label;
    }

    public synchronized Style getArrowStyle() {
        try {
            if (!this.arrowStyle__is_initialized) {
                this.arrowStyle = getArrowStyle__Native();
                this.arrowStyle__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.arrowStyle;
    }

    public synchronized String getPanoramaId() {
        try {
            if (!this.panoramaId__is_initialized) {
                this.panoramaId = getPanoramaId__Native();
                this.panoramaId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.panoramaId;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.angularPosition = (Direction) archive.add(this.angularPosition, false, (Class<Direction>) Direction.class);
            this.angularPosition__is_initialized = true;
            this.label = archive.add(this.label, false);
            this.label__is_initialized = true;
            this.arrowStyle = (Style) archive.add(this.arrowStyle, false, (Class<Style>) Style.class);
            this.arrowStyle__is_initialized = true;
            String strAdd = archive.add(this.panoramaId, false);
            this.panoramaId = strAdd;
            this.panoramaId__is_initialized = true;
            this.nativeObject = init(this.angularPosition, this.label, this.arrowStyle, strAdd);
            return;
        }
        archive.add(getAngularPosition(), false, (Class<Direction>) Direction.class);
        archive.add(getLabel(), false);
        archive.add(getArrowStyle(), false, (Class<Style>) Style.class);
        archive.add(getPanoramaId(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::ArrowConnection";
    }
}
