package com.yandex.mapkit.traffic;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class TrafficLevel implements Serializable {
    private TrafficColor color;
    private boolean color__is_initialized;
    private int level;
    private boolean level__is_initialized;
    private NativeObject nativeObject;

    private native TrafficColor getColor__Native();

    private native int getLevel__Native();

    private native NativeObject init(TrafficColor trafficColor, int i);

    public TrafficLevel() {
        this.color__is_initialized = false;
        this.level__is_initialized = false;
    }

    public TrafficLevel(TrafficColor trafficColor, int i) {
        this.color__is_initialized = false;
        this.level__is_initialized = false;
        if (trafficColor == null) {
            throw new IllegalArgumentException("Required field \"color\" cannot be null");
        }
        this.nativeObject = init(trafficColor, i);
        this.color = trafficColor;
        this.color__is_initialized = true;
        this.level = i;
        this.level__is_initialized = true;
    }

    private TrafficLevel(NativeObject nativeObject) {
        this.color__is_initialized = false;
        this.level__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized TrafficColor getColor() {
        try {
            if (!this.color__is_initialized) {
                this.color = getColor__Native();
                this.color__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.color;
    }

    public synchronized int getLevel() {
        try {
            if (!this.level__is_initialized) {
                this.level = getLevel__Native();
                this.level__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.level;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.color = (TrafficColor) archive.add(this.color, false, (Class<TrafficColor>) TrafficColor.class);
            this.color__is_initialized = true;
            int iAdd = archive.add(this.level);
            this.level = iAdd;
            this.level__is_initialized = true;
            this.nativeObject = init(this.color, iAdd);
            return;
        }
        archive.add(getColor(), false, (Class<TrafficColor>) TrafficColor.class);
        archive.add(getLevel());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::traffic::TrafficLevel";
    }
}
