package com.yandex.mapkit.search;

import com.yandex.mapkit.Attribution;
import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class FuelMetadata implements BaseMetadata, Serializable {
    private Attribution attribution;
    private boolean attribution__is_initialized;
    private List<FuelType> fuels;
    private boolean fuels__is_initialized;
    private NativeObject nativeObject;
    private Long timestamp;
    private boolean timestamp__is_initialized;

    private native Attribution getAttribution__Native();

    private native List<FuelType> getFuels__Native();

    private native Long getTimestamp__Native();

    private native NativeObject init(Long l, List<FuelType> list, Attribution attribution);

    public FuelMetadata() {
        this.timestamp__is_initialized = false;
        this.fuels__is_initialized = false;
        this.attribution__is_initialized = false;
    }

    public FuelMetadata(Long l, List<FuelType> list, Attribution attribution) {
        this.timestamp__is_initialized = false;
        this.fuels__is_initialized = false;
        this.attribution__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"fuels\" cannot be null");
            throw null;
        }
        this.nativeObject = init(l, list, attribution);
        this.timestamp = l;
        this.timestamp__is_initialized = true;
        this.fuels = list;
        this.fuels__is_initialized = true;
        this.attribution = attribution;
        this.attribution__is_initialized = true;
    }

    private FuelMetadata(NativeObject nativeObject) {
        this.timestamp__is_initialized = false;
        this.fuels__is_initialized = false;
        this.attribution__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Long getTimestamp() {
        try {
            if (!this.timestamp__is_initialized) {
                this.timestamp = getTimestamp__Native();
                this.timestamp__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.timestamp;
    }

    public synchronized List<FuelType> getFuels() {
        try {
            if (!this.fuels__is_initialized) {
                this.fuels = getFuels__Native();
                this.fuels__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.fuels;
    }

    public synchronized Attribution getAttribution() {
        try {
            if (!this.attribution__is_initialized) {
                this.attribution = getAttribution__Native();
                this.attribution__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.attribution;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.timestamp = archive.add(this.timestamp, true);
            this.timestamp__is_initialized = true;
            this.fuels = archive.add((List) this.fuels, false, (ArchivingHandler) new ClassHandler(FuelType.class));
            this.fuels__is_initialized = true;
            Attribution attribution = (Attribution) archive.add(this.attribution, true, (Class<Attribution>) Attribution.class);
            this.attribution = attribution;
            this.attribution__is_initialized = true;
            this.nativeObject = init(this.timestamp, this.fuels, attribution);
            return;
        }
        archive.add(getTimestamp(), true);
        archive.add((List) getFuels(), false, (ArchivingHandler) new ClassHandler(FuelType.class));
        archive.add(getAttribution(), true, (Class<Attribution>) Attribution.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::FuelMetadata";
    }
}
