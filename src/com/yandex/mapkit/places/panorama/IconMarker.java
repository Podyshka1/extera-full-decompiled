package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Direction;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class IconMarker implements Serializable {
    private Direction angularPosition;
    private boolean angularPosition__is_initialized;
    private String iconId;
    private boolean iconId__is_initialized;
    private NativeObject nativeObject;

    private native Direction getAngularPosition__Native();

    private native String getIconId__Native();

    private native NativeObject init(Direction direction, String str);

    public IconMarker() {
        this.angularPosition__is_initialized = false;
        this.iconId__is_initialized = false;
    }

    public IconMarker(Direction direction, String str) {
        this.angularPosition__is_initialized = false;
        this.iconId__is_initialized = false;
        if (direction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"angularPosition\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"iconId\" cannot be null");
            throw null;
        }
        this.nativeObject = init(direction, str);
        this.angularPosition = direction;
        this.angularPosition__is_initialized = true;
        this.iconId = str;
        this.iconId__is_initialized = true;
    }

    private IconMarker(NativeObject nativeObject) {
        this.angularPosition__is_initialized = false;
        this.iconId__is_initialized = false;
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

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.angularPosition = (Direction) archive.add(this.angularPosition, false, (Class<Direction>) Direction.class);
            this.angularPosition__is_initialized = true;
            String strAdd = archive.add(this.iconId, false);
            this.iconId = strAdd;
            this.iconId__is_initialized = true;
            this.nativeObject = init(this.angularPosition, strAdd);
            return;
        }
        archive.add(getAngularPosition(), false, (Class<Direction>) Direction.class);
        archive.add(getIconId(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::IconMarker";
    }
}
