package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.ScreenPoint;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class CompanyTapInfo implements Serializable {
    private NativeObject nativeObject;
    private String permalink;
    private boolean permalink__is_initialized;
    private ScreenPoint screenPoint;
    private boolean screenPoint__is_initialized;

    private native String getPermalink__Native();

    private native ScreenPoint getScreenPoint__Native();

    private native NativeObject init(String str, ScreenPoint screenPoint);

    public CompanyTapInfo() {
        this.permalink__is_initialized = false;
        this.screenPoint__is_initialized = false;
    }

    public CompanyTapInfo(String str, ScreenPoint screenPoint) {
        this.permalink__is_initialized = false;
        this.screenPoint__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"permalink\" cannot be null");
            throw null;
        }
        if (screenPoint == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"screenPoint\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, screenPoint);
        this.permalink = str;
        this.permalink__is_initialized = true;
        this.screenPoint = screenPoint;
        this.screenPoint__is_initialized = true;
    }

    private CompanyTapInfo(NativeObject nativeObject) {
        this.permalink__is_initialized = false;
        this.screenPoint__is_initialized = false;
        this.nativeObject = nativeObject;
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

    public synchronized ScreenPoint getScreenPoint() {
        try {
            if (!this.screenPoint__is_initialized) {
                this.screenPoint = getScreenPoint__Native();
                this.screenPoint__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.screenPoint;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.permalink = archive.add(this.permalink, false);
            this.permalink__is_initialized = true;
            ScreenPoint screenPoint = (ScreenPoint) archive.add(this.screenPoint, false, (Class<ScreenPoint>) ScreenPoint.class);
            this.screenPoint = screenPoint;
            this.screenPoint__is_initialized = true;
            this.nativeObject = init(this.permalink, screenPoint);
            return;
        }
        archive.add(getPermalink(), false);
        archive.add(getScreenPoint(), false, (Class<ScreenPoint>) ScreenPoint.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::CompanyTapInfo";
    }
}
