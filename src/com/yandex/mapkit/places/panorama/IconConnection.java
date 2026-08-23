package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Direction;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class IconConnection implements Serializable {
    private Direction angularPosition;
    private boolean angularPosition__is_initialized;
    private String iconId;
    private boolean iconId__is_initialized;
    private NativeObject nativeObject;
    private String panoramaId;
    private boolean panoramaId__is_initialized;

    private native Direction getAngularPosition__Native();

    private native String getIconId__Native();

    private native String getPanoramaId__Native();

    private native NativeObject init(Direction direction, String str, String str2);

    public IconConnection() {
        this.angularPosition__is_initialized = false;
        this.iconId__is_initialized = false;
        this.panoramaId__is_initialized = false;
    }

    public IconConnection(Direction direction, String str, String str2) {
        this.angularPosition__is_initialized = false;
        this.iconId__is_initialized = false;
        this.panoramaId__is_initialized = false;
        if (direction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"angularPosition\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"iconId\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"panoramaId\" cannot be null");
            throw null;
        }
        this.nativeObject = init(direction, str, str2);
        this.angularPosition = direction;
        this.angularPosition__is_initialized = true;
        this.iconId = str;
        this.iconId__is_initialized = true;
        this.panoramaId = str2;
        this.panoramaId__is_initialized = true;
    }

    private IconConnection(NativeObject nativeObject) {
        this.angularPosition__is_initialized = false;
        this.iconId__is_initialized = false;
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
            this.iconId = archive.add(this.iconId, false);
            this.iconId__is_initialized = true;
            String strAdd = archive.add(this.panoramaId, false);
            this.panoramaId = strAdd;
            this.panoramaId__is_initialized = true;
            this.nativeObject = init(this.angularPosition, this.iconId, strAdd);
            return;
        }
        archive.add(getAngularPosition(), false, (Class<Direction>) Direction.class);
        archive.add(getIconId(), false);
        archive.add(getPanoramaId(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::IconConnection";
    }
}
