package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.mapkit.directions.driving.DirectionSign;
import com.yandex.mapkit.directions.driving.LaneSign;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LaneSignBalloon implements Serializable {
    private DirectionSign directionSign;
    private boolean directionSign__is_initialized;
    private LaneSign laneSign;
    private boolean laneSign__is_initialized;
    private NativeObject nativeObject;

    private native DirectionSign getDirectionSign__Native();

    private native LaneSign getLaneSign__Native();

    private native NativeObject init(LaneSign laneSign, DirectionSign directionSign);

    public LaneSignBalloon() {
        this.laneSign__is_initialized = false;
        this.directionSign__is_initialized = false;
    }

    public LaneSignBalloon(LaneSign laneSign, DirectionSign directionSign) {
        this.laneSign__is_initialized = false;
        this.directionSign__is_initialized = false;
        if (laneSign == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"laneSign\" cannot be null");
            throw null;
        }
        this.nativeObject = init(laneSign, directionSign);
        this.laneSign = laneSign;
        this.laneSign__is_initialized = true;
        this.directionSign = directionSign;
        this.directionSign__is_initialized = true;
    }

    private LaneSignBalloon(NativeObject nativeObject) {
        this.laneSign__is_initialized = false;
        this.directionSign__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized LaneSign getLaneSign() {
        try {
            if (!this.laneSign__is_initialized) {
                this.laneSign = getLaneSign__Native();
                this.laneSign__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.laneSign;
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
            this.laneSign = (LaneSign) archive.add(this.laneSign, false, (Class<LaneSign>) LaneSign.class);
            this.laneSign__is_initialized = true;
            DirectionSign directionSign = (DirectionSign) archive.add(this.directionSign, true, (Class<DirectionSign>) DirectionSign.class);
            this.directionSign = directionSign;
            this.directionSign__is_initialized = true;
            this.nativeObject = init(this.laneSign, directionSign);
            return;
        }
        archive.add(getLaneSign(), false, (Class<LaneSign>) LaneSign.class);
        archive.add(getDirectionSign(), true, (Class<DirectionSign>) DirectionSign.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::navigation::automotive::layer::LaneSignBalloon";
    }
}
