package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class DrivingRouteMetadata implements BaseMetadata, Serializable {
    private Flags flags;
    private boolean flags__is_initialized;
    private NativeObject nativeObject;
    private NonAvoidedFeatures nonAvoidedFeatures;
    private boolean nonAvoidedFeatures__is_initialized;
    private List<RoutePoint> routePoints;
    private boolean routePoints__is_initialized;
    private String uri;
    private boolean uri__is_initialized;
    private Weight weight;
    private boolean weight__is_initialized;

    private native Flags getFlags__Native();

    private native NonAvoidedFeatures getNonAvoidedFeatures__Native();

    private native List<RoutePoint> getRoutePoints__Native();

    private native String getUri__Native();

    private native Weight getWeight__Native();

    private native NativeObject init(Weight weight, Flags flags, List<RoutePoint> list, String str, NonAvoidedFeatures nonAvoidedFeatures);

    public DrivingRouteMetadata() {
        this.weight__is_initialized = false;
        this.flags__is_initialized = false;
        this.routePoints__is_initialized = false;
        this.uri__is_initialized = false;
        this.nonAvoidedFeatures__is_initialized = false;
    }

    public DrivingRouteMetadata(Weight weight, Flags flags, List<RoutePoint> list, String str, NonAvoidedFeatures nonAvoidedFeatures) {
        this.weight__is_initialized = false;
        this.flags__is_initialized = false;
        this.routePoints__is_initialized = false;
        this.uri__is_initialized = false;
        this.nonAvoidedFeatures__is_initialized = false;
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        if (flags == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"flags\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"routePoints\" cannot be null");
            throw null;
        }
        this.nativeObject = init(weight, flags, list, str, nonAvoidedFeatures);
        this.weight = weight;
        this.weight__is_initialized = true;
        this.flags = flags;
        this.flags__is_initialized = true;
        this.routePoints = list;
        this.routePoints__is_initialized = true;
        this.uri = str;
        this.uri__is_initialized = true;
        this.nonAvoidedFeatures = nonAvoidedFeatures;
        this.nonAvoidedFeatures__is_initialized = true;
    }

    private DrivingRouteMetadata(NativeObject nativeObject) {
        this.weight__is_initialized = false;
        this.flags__is_initialized = false;
        this.routePoints__is_initialized = false;
        this.uri__is_initialized = false;
        this.nonAvoidedFeatures__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Weight getWeight() {
        try {
            if (!this.weight__is_initialized) {
                this.weight = getWeight__Native();
                this.weight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.weight;
    }

    public synchronized Flags getFlags() {
        try {
            if (!this.flags__is_initialized) {
                this.flags = getFlags__Native();
                this.flags__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.flags;
    }

    public synchronized List<RoutePoint> getRoutePoints() {
        try {
            if (!this.routePoints__is_initialized) {
                this.routePoints = getRoutePoints__Native();
                this.routePoints__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.routePoints;
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

    public synchronized NonAvoidedFeatures getNonAvoidedFeatures() {
        try {
            if (!this.nonAvoidedFeatures__is_initialized) {
                this.nonAvoidedFeatures = getNonAvoidedFeatures__Native();
                this.nonAvoidedFeatures__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.nonAvoidedFeatures;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
            this.weight__is_initialized = true;
            this.flags = (Flags) archive.add(this.flags, false, (Class<Flags>) Flags.class);
            this.flags__is_initialized = true;
            this.routePoints = archive.add((List) this.routePoints, false, (ArchivingHandler) new ClassHandler(RoutePoint.class));
            this.routePoints__is_initialized = true;
            this.uri = archive.add(this.uri, true);
            this.uri__is_initialized = true;
            NonAvoidedFeatures nonAvoidedFeatures = (NonAvoidedFeatures) archive.add(this.nonAvoidedFeatures, true, (Class<NonAvoidedFeatures>) NonAvoidedFeatures.class);
            this.nonAvoidedFeatures = nonAvoidedFeatures;
            this.nonAvoidedFeatures__is_initialized = true;
            this.nativeObject = init(this.weight, this.flags, this.routePoints, this.uri, nonAvoidedFeatures);
            return;
        }
        archive.add(getWeight(), false, (Class<Weight>) Weight.class);
        archive.add(getFlags(), false, (Class<Flags>) Flags.class);
        archive.add((List) getRoutePoints(), false, (ArchivingHandler) new ClassHandler(RoutePoint.class));
        archive.add(getUri(), true);
        archive.add(getNonAvoidedFeatures(), true, (Class<NonAvoidedFeatures>) NonAvoidedFeatures.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::directions::driving::RouteMetadata";
    }
}
