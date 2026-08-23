package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Line implements BaseMetadata, Serializable {
    private String id;
    private boolean id__is_initialized;
    private boolean isNight;
    private boolean isNight__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private String shortName;
    private boolean shortName__is_initialized;
    private Style style;
    private boolean style__is_initialized;
    private String transportSystemId;
    private boolean transportSystemId__is_initialized;
    private String uri;
    private boolean uri__is_initialized;
    private List<String> vehicleTypes;
    private boolean vehicleTypes__is_initialized;

    private native String getId__Native();

    private native boolean getIsNight__Native();

    private native String getName__Native();

    private native String getShortName__Native();

    private native Style getStyle__Native();

    private native String getTransportSystemId__Native();

    private native String getUri__Native();

    private native List<String> getVehicleTypes__Native();

    private native NativeObject init(String str, String str2, List<String> list, Style style, boolean z, String str3, String str4, String str5);

    public static class Style implements Serializable {
        private Integer color;

        public Style(Integer num) {
            this.color = num;
        }

        public Style() {
        }

        public Integer getColor() {
            return this.color;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.color = archive.add(this.color, true);
        }
    }

    public Line() {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.vehicleTypes__is_initialized = false;
        this.style__is_initialized = false;
        this.isNight__is_initialized = false;
        this.uri__is_initialized = false;
        this.shortName__is_initialized = false;
        this.transportSystemId__is_initialized = false;
    }

    public Line(String str, String str2, List<String> list, Style style, boolean z, String str3, String str4, String str5) {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.vehicleTypes__is_initialized = false;
        this.style__is_initialized = false;
        this.isNight__is_initialized = false;
        this.uri__is_initialized = false;
        this.shortName__is_initialized = false;
        this.transportSystemId__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"id\" cannot be null");
            throw null;
        }
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"name\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"vehicleTypes\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, str2, list, style, z, str3, str4, str5);
        this.id = str;
        this.id__is_initialized = true;
        this.name = str2;
        this.name__is_initialized = true;
        this.vehicleTypes = list;
        this.vehicleTypes__is_initialized = true;
        this.style = style;
        this.style__is_initialized = true;
        this.isNight = z;
        this.isNight__is_initialized = true;
        this.uri = str3;
        this.uri__is_initialized = true;
        this.shortName = str4;
        this.shortName__is_initialized = true;
        this.transportSystemId = str5;
        this.transportSystemId__is_initialized = true;
    }

    private Line(NativeObject nativeObject) {
        this.id__is_initialized = false;
        this.name__is_initialized = false;
        this.vehicleTypes__is_initialized = false;
        this.style__is_initialized = false;
        this.isNight__is_initialized = false;
        this.uri__is_initialized = false;
        this.shortName__is_initialized = false;
        this.transportSystemId__is_initialized = false;
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

    public synchronized List<String> getVehicleTypes() {
        try {
            if (!this.vehicleTypes__is_initialized) {
                this.vehicleTypes = getVehicleTypes__Native();
                this.vehicleTypes__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.vehicleTypes;
    }

    public synchronized Style getStyle() {
        try {
            if (!this.style__is_initialized) {
                this.style = getStyle__Native();
                this.style__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.style;
    }

    public synchronized boolean getIsNight() {
        try {
            if (!this.isNight__is_initialized) {
                this.isNight = getIsNight__Native();
                this.isNight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isNight;
    }

    public synchronized String getUri() {
        try {
            if (!this.uri__is_initialized) {
                this.uri = getUri__Native();
                this.uri__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.uri;
    }

    public synchronized String getShortName() {
        try {
            if (!this.shortName__is_initialized) {
                this.shortName = getShortName__Native();
                this.shortName__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.shortName;
    }

    public synchronized String getTransportSystemId() {
        try {
            if (!this.transportSystemId__is_initialized) {
                this.transportSystemId = getTransportSystemId__Native();
                this.transportSystemId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.transportSystemId;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.id = archive.add(this.id, false);
            this.id__is_initialized = true;
            this.name = archive.add(this.name, false);
            this.name__is_initialized = true;
            this.vehicleTypes = archive.add((List) this.vehicleTypes, false, (ArchivingHandler) new StringHandler());
            this.vehicleTypes__is_initialized = true;
            this.style = (Style) archive.add(this.style, true, (Class<Style>) Style.class);
            this.style__is_initialized = true;
            this.isNight = archive.add(this.isNight);
            this.isNight__is_initialized = true;
            this.uri = archive.add(this.uri, true);
            this.uri__is_initialized = true;
            this.shortName = archive.add(this.shortName, true);
            this.shortName__is_initialized = true;
            String strAdd = archive.add(this.transportSystemId, true);
            this.transportSystemId = strAdd;
            this.transportSystemId__is_initialized = true;
            this.nativeObject = init(this.id, this.name, this.vehicleTypes, this.style, this.isNight, this.uri, this.shortName, strAdd);
            return;
        }
        archive.add(getId(), false);
        archive.add(getName(), false);
        archive.add((List) getVehicleTypes(), false, (ArchivingHandler) new StringHandler());
        archive.add(getStyle(), true, (Class<Style>) Style.class);
        archive.add(getIsNight());
        archive.add(getUri(), true);
        archive.add(getShortName(), true);
        archive.add(getTransportSystemId(), true);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Line";
    }
}
