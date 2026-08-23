package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.directions.driving.DirectionSign;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ManoeuvreBalloon implements Serializable {
    private DirectionSign directionSign;
    private boolean directionSign__is_initialized;
    private Manoeuvre manoeuvre;
    private boolean manoeuvre__is_initialized;
    private NativeObject nativeObject;

    private native DirectionSign getDirectionSign__Native();

    private native Manoeuvre getManoeuvre__Native();

    private native NativeObject init(Manoeuvre manoeuvre, DirectionSign directionSign);

    public ManoeuvreBalloon() {
        this.manoeuvre__is_initialized = false;
        this.directionSign__is_initialized = false;
    }

    public ManoeuvreBalloon(Manoeuvre manoeuvre, DirectionSign directionSign) {
        this.manoeuvre__is_initialized = false;
        this.directionSign__is_initialized = false;
        if (manoeuvre == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"manoeuvre\" cannot be null");
            throw null;
        }
        this.nativeObject = init(manoeuvre, directionSign);
        this.manoeuvre = manoeuvre;
        this.manoeuvre__is_initialized = true;
        this.directionSign = directionSign;
        this.directionSign__is_initialized = true;
    }

    private ManoeuvreBalloon(NativeObject nativeObject) {
        this.manoeuvre__is_initialized = false;
        this.directionSign__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Manoeuvre getManoeuvre() {
        try {
            if (!this.manoeuvre__is_initialized) {
                this.manoeuvre = getManoeuvre__Native();
                this.manoeuvre__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.manoeuvre;
    }

    public synchronized DirectionSign getDirectionSign() {
        try {
            if (!this.directionSign__is_initialized) {
                this.directionSign = getDirectionSign__Native();
                this.directionSign__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.directionSign;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.manoeuvre = (Manoeuvre) archive.add(this.manoeuvre, false, (Class<Manoeuvre>) Manoeuvre.class);
            this.manoeuvre__is_initialized = true;
            DirectionSign directionSign = (DirectionSign) archive.add(this.directionSign, true, (Class<DirectionSign>) DirectionSign.class);
            this.directionSign = directionSign;
            this.directionSign__is_initialized = true;
            this.nativeObject = init(this.manoeuvre, directionSign);
            return;
        }
        archive.add(getManoeuvre(), false, (Class<Manoeuvre>) Manoeuvre.class);
        archive.add(getDirectionSign(), true, (Class<DirectionSign>) DirectionSign.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::navigation::automotive::layer::ManoeuvreBalloon";
    }
}
