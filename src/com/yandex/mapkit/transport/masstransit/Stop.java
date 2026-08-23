package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Stop implements BaseMetadata, Serializable {
    private String additionalName;
    private boolean additionalName__is_initialized;
    private StopFeatureMask features;
    private boolean features__is_initialized;
    private String id;
    private boolean id__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private List<TransportContour> transportContours;
    private boolean transportContours__is_initialized;

    private native String getAdditionalName__Native();

    private native StopFeatureMask getFeatures__Native();

    private native String getId__Native();

    private native String getName__Native();

    private native List<TransportContour> getTransportContours__Native();

    private native NativeObject init(String str, String str2, String str3, StopFeatureMask stopFeatureMask, List<TransportContour> list);

    public Stop() {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.additionalName__is_initialized = false;
        this.features__is_initialized = false;
        this.transportContours__is_initialized = false;
    }

    public Stop(String str, String str2, String str3, StopFeatureMask stopFeatureMask, List<TransportContour> list) {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.additionalName__is_initialized = false;
        this.features__is_initialized = false;
        this.transportContours__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"transportContours\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, str3, stopFeatureMask, list);
        this.id = str;
        this.id__is_initialized = true;
        this.name = str2;
        this.name__is_initialized = true;
        this.additionalName = str3;
        this.additionalName__is_initialized = true;
        this.features = stopFeatureMask;
        this.features__is_initialized = true;
        this.transportContours = list;
        this.transportContours__is_initialized = true;
    }

    private Stop(NativeObject nativeObject) {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.additionalName__is_initialized = false;
        this.features__is_initialized = false;
        this.transportContours__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getId() {
        try {
            if (!this.id__is_initialized) {
                this.id = getId__Native();
                this.id__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.id;
    }

    public synchronized String getName() {
        try {
            if (!this.name__is_initialized) {
                this.name = getName__Native();
                this.name__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.name;
    }

    public synchronized String getAdditionalName() {
        try {
            if (!this.additionalName__is_initialized) {
                this.additionalName = getAdditionalName__Native();
                this.additionalName__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.additionalName;
    }

    public synchronized StopFeatureMask getFeatures() {
        try {
            if (!this.features__is_initialized) {
                this.features = getFeatures__Native();
                this.features__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.features;
    }

    public synchronized List<TransportContour> getTransportContours() {
        try {
            if (!this.transportContours__is_initialized) {
                this.transportContours = getTransportContours__Native();
                this.transportContours__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.transportContours;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.id = archive.add(this.id, false);
            this.id__is_initialized = true;
            this.name = archive.add(this.name, false);
            this.name__is_initialized = true;
            this.additionalName = archive.add(this.additionalName, true);
            this.additionalName__is_initialized = true;
            this.features = (StopFeatureMask) archive.add(this.features, true, (Class<StopFeatureMask>) StopFeatureMask.class);
            this.features__is_initialized = true;
            List<TransportContour> listAdd = archive.add((List) this.transportContours, false, (ArchivingHandler) new ClassHandler(TransportContour.class));
            this.transportContours = listAdd;
            this.transportContours__is_initialized = true;
            this.nativeObject = init(this.id, this.name, this.additionalName, this.features, listAdd);
            return;
        }
        archive.add(getId(), false);
        archive.add(getName(), false);
        archive.add(getAdditionalName(), true);
        archive.add(getFeatures(), true, (Class<StopFeatureMask>) StopFeatureMask.class);
        archive.add((List) getTransportContours(), false, (ArchivingHandler) new ClassHandler(TransportContour.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Stop";
    }
}
