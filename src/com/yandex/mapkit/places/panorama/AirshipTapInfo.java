package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class AirshipTapInfo implements BaseMetadata, Serializable {
    private NativeObject nativeObject;
    private String panoramaId;
    private boolean panoramaId__is_initialized;

    private native String getPanoramaId__Native();

    private native NativeObject init(String str);

    public AirshipTapInfo() {
        this.panoramaId__is_initialized = false;
    }

    public AirshipTapInfo(String str) {
        this.panoramaId__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"panoramaId\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str);
        this.panoramaId = str;
        this.panoramaId__is_initialized = true;
    }

    private AirshipTapInfo(NativeObject nativeObject) {
        this.panoramaId__is_initialized = false;
        this.nativeObject = nativeObject;
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
            String strAdd = archive.add(this.panoramaId, false);
            this.panoramaId = strAdd;
            this.panoramaId__is_initialized = true;
            this.nativeObject = init(strAdd);
            return;
        }
        archive.add(getPanoramaId(), false);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::AirshipTapInfo";
    }
}
