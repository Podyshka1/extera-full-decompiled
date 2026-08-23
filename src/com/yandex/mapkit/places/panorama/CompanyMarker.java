package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Direction;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class CompanyMarker implements Serializable {
    private Direction angularPosition;
    private boolean angularPosition__is_initialized;
    private String iconId;
    private boolean iconId__is_initialized;
    private String label;
    private boolean label__is_initialized;
    private NativeObject nativeObject;
    private String permalink;
    private boolean permalink__is_initialized;

    private native Direction getAngularPosition__Native();

    private native String getIconId__Native();

    private native String getLabel__Native();

    private native String getPermalink__Native();

    private native NativeObject init(Direction direction, String str, String str2, String str3);

    public CompanyMarker() {
        this.angularPosition__is_initialized = false;
        this.label__is_initialized = false;
        this.iconId__is_initialized = false;
        this.permalink__is_initialized = false;
    }

    public CompanyMarker(Direction direction, String str, String str2, String str3) {
        this.angularPosition__is_initialized = false;
        this.label__is_initialized = false;
        this.iconId__is_initialized = false;
        this.permalink__is_initialized = false;
        if (direction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"angularPosition\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"label\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"iconId\" cannot be null");
            throw null;
        }
        if (str3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"permalink\" cannot be null");
            throw null;
        }
        this.nativeObject = init(direction, str, str2, str3);
        this.angularPosition = direction;
        this.angularPosition__is_initialized = true;
        this.label = str;
        this.label__is_initialized = true;
        this.iconId = str2;
        this.iconId__is_initialized = true;
        this.permalink = str3;
        this.permalink__is_initialized = true;
    }

    private CompanyMarker(NativeObject nativeObject) {
        this.angularPosition__is_initialized = false;
        this.label__is_initialized = false;
        this.iconId__is_initialized = false;
        this.permalink__is_initialized = false;
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

    public synchronized String getIconId() {
        try {
            if (!this.iconId__is_initialized) {
                this.iconId = getIconId__Native();
                this.iconId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconId;
    }

    public synchronized String getPermalink() {
        try {
            if (!this.permalink__is_initialized) {
                this.permalink = getPermalink__Native();
                this.permalink__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.permalink;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.angularPosition = (Direction) archive.add(this.angularPosition, false, (Class<Direction>) Direction.class);
            this.angularPosition__is_initialized = true;
            this.label = archive.add(this.label, false);
            this.label__is_initialized = true;
            this.iconId = archive.add(this.iconId, false);
            this.iconId__is_initialized = true;
            String strAdd = archive.add(this.permalink, false);
            this.permalink = strAdd;
            this.permalink__is_initialized = true;
            this.nativeObject = init(this.angularPosition, this.label, this.iconId, strAdd);
            return;
        }
        archive.add(getAngularPosition(), false, (Class<Direction>) Direction.class);
        archive.add(getLabel(), false);
        archive.add(getIconId(), false);
        archive.add(getPermalink(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::CompanyMarker";
    }
}
