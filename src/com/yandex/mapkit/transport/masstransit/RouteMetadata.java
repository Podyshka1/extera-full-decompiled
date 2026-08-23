package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.EnumHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class RouteMetadata implements BaseMetadata, Serializable {
    private List<ComfortTag> comfortTags;
    private boolean comfortTags__is_initialized;
    private TravelEstimation estimation;
    private boolean estimation__is_initialized;
    private Flags flags;
    private boolean flags__is_initialized;
    private NativeObject nativeObject;
    private List<RoutePaymentOption> paymentOptions;
    private boolean paymentOptions__is_initialized;
    private String routeId;
    private boolean routeId__is_initialized;
    private RouteSettings settings;
    private boolean settings__is_initialized;
    private StairsSummary stairsSummary;
    private boolean stairsSummary__is_initialized;
    private List<WayPoint> wayPoints;
    private boolean wayPoints__is_initialized;
    private Weight weight;
    private boolean weight__is_initialized;

    private native List<ComfortTag> getComfortTags__Native();

    private native TravelEstimation getEstimation__Native();

    private native Flags getFlags__Native();

    private native List<RoutePaymentOption> getPaymentOptions__Native();

    private native String getRouteId__Native();

    private native RouteSettings getSettings__Native();

    private native StairsSummary getStairsSummary__Native();

    private native List<WayPoint> getWayPoints__Native();

    private native Weight getWeight__Native();

    private native NativeObject init(Weight weight, RouteSettings routeSettings, TravelEstimation travelEstimation, List<WayPoint> list, String str, Flags flags, List<ComfortTag> list2, StairsSummary stairsSummary, List<RoutePaymentOption> list3);

    public RouteMetadata() {
        this.weight__is_initialized = false;
        this.settings__is_initialized = false;
        this.estimation__is_initialized = false;
        this.wayPoints__is_initialized = false;
        this.routeId__is_initialized = false;
        this.flags__is_initialized = false;
        this.comfortTags__is_initialized = false;
        this.stairsSummary__is_initialized = false;
        this.paymentOptions__is_initialized = false;
    }

    public RouteMetadata(Weight weight, RouteSettings routeSettings, TravelEstimation travelEstimation, List<WayPoint> list, String str, Flags flags, List<ComfortTag> list2, StairsSummary stairsSummary, List<RoutePaymentOption> list3) {
        this.weight__is_initialized = false;
        this.settings__is_initialized = false;
        this.estimation__is_initialized = false;
        this.wayPoints__is_initialized = false;
        this.routeId__is_initialized = false;
        this.flags__is_initialized = false;
        this.comfortTags__is_initialized = false;
        this.stairsSummary__is_initialized = false;
        this.paymentOptions__is_initialized = false;
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"wayPoints\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"comfortTags\" cannot be null");
            throw null;
        }
        if (stairsSummary == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"stairsSummary\" cannot be null");
            throw null;
        }
        if (list3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"paymentOptions\" cannot be null");
            throw null;
        }
        this.nativeObject = init(weight, routeSettings, travelEstimation, list, str, flags, list2, stairsSummary, list3);
        this.weight = weight;
        this.weight__is_initialized = true;
        this.settings = routeSettings;
        this.settings__is_initialized = true;
        this.estimation = travelEstimation;
        this.estimation__is_initialized = true;
        this.wayPoints = list;
        this.wayPoints__is_initialized = true;
        this.routeId = str;
        this.routeId__is_initialized = true;
        this.flags = flags;
        this.flags__is_initialized = true;
        this.comfortTags = list2;
        this.comfortTags__is_initialized = true;
        this.stairsSummary = stairsSummary;
        this.stairsSummary__is_initialized = true;
        this.paymentOptions = list3;
        this.paymentOptions__is_initialized = true;
    }

    private RouteMetadata(NativeObject nativeObject) {
        this.weight__is_initialized = false;
        this.settings__is_initialized = false;
        this.estimation__is_initialized = false;
        this.wayPoints__is_initialized = false;
        this.routeId__is_initialized = false;
        this.flags__is_initialized = false;
        this.comfortTags__is_initialized = false;
        this.stairsSummary__is_initialized = false;
        this.paymentOptions__is_initialized = false;
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

    public synchronized RouteSettings getSettings() {
        try {
            if (!this.settings__is_initialized) {
                this.settings = getSettings__Native();
                this.settings__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.settings;
    }

    public synchronized TravelEstimation getEstimation() {
        try {
            if (!this.estimation__is_initialized) {
                this.estimation = getEstimation__Native();
                this.estimation__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.estimation;
    }

    public synchronized List<WayPoint> getWayPoints() {
        try {
            if (!this.wayPoints__is_initialized) {
                this.wayPoints = getWayPoints__Native();
                this.wayPoints__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.wayPoints;
    }

    public synchronized String getRouteId() {
        try {
            if (!this.routeId__is_initialized) {
                this.routeId = getRouteId__Native();
                this.routeId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.routeId;
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

    public synchronized List<ComfortTag> getComfortTags() {
        try {
            if (!this.comfortTags__is_initialized) {
                this.comfortTags = getComfortTags__Native();
                this.comfortTags__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.comfortTags;
    }

    public synchronized StairsSummary getStairsSummary() {
        try {
            if (!this.stairsSummary__is_initialized) {
                this.stairsSummary = getStairsSummary__Native();
                this.stairsSummary__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.stairsSummary;
    }

    public synchronized List<RoutePaymentOption> getPaymentOptions() {
        try {
            if (!this.paymentOptions__is_initialized) {
                this.paymentOptions = getPaymentOptions__Native();
                this.paymentOptions__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.paymentOptions;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
            this.weight__is_initialized = true;
            this.settings = (RouteSettings) archive.add(this.settings, true, (Class<RouteSettings>) RouteSettings.class);
            this.settings__is_initialized = true;
            this.estimation = (TravelEstimation) archive.add(this.estimation, true, (Class<TravelEstimation>) TravelEstimation.class);
            this.estimation__is_initialized = true;
            this.wayPoints = archive.add((List) this.wayPoints, false, (ArchivingHandler) new ClassHandler(WayPoint.class));
            this.wayPoints__is_initialized = true;
            this.routeId = archive.add(this.routeId, true);
            this.routeId__is_initialized = true;
            this.flags = (Flags) archive.add(this.flags, true, (Class<Flags>) Flags.class);
            this.flags__is_initialized = true;
            this.comfortTags = archive.add((List) this.comfortTags, false, (ArchivingHandler) new EnumHandler(ComfortTag.class));
            this.comfortTags__is_initialized = true;
            this.stairsSummary = (StairsSummary) archive.add(this.stairsSummary, false, (Class<StairsSummary>) StairsSummary.class);
            this.stairsSummary__is_initialized = true;
            List<RoutePaymentOption> listAdd = archive.add((List) this.paymentOptions, false, (ArchivingHandler) new ClassHandler(RoutePaymentOption.class));
            this.paymentOptions = listAdd;
            this.paymentOptions__is_initialized = true;
            this.nativeObject = init(this.weight, this.settings, this.estimation, this.wayPoints, this.routeId, this.flags, this.comfortTags, this.stairsSummary, listAdd);
            return;
        }
        archive.add(getWeight(), false, (Class<Weight>) Weight.class);
        archive.add(getSettings(), true, (Class<RouteSettings>) RouteSettings.class);
        archive.add(getEstimation(), true, (Class<TravelEstimation>) TravelEstimation.class);
        archive.add((List) getWayPoints(), false, (ArchivingHandler) new ClassHandler(WayPoint.class));
        archive.add(getRouteId(), true);
        archive.add(getFlags(), true, (Class<Flags>) Flags.class);
        archive.add((List) getComfortTags(), false, (ArchivingHandler) new EnumHandler(ComfortTag.class));
        archive.add(getStairsSummary(), false, (Class<StairsSummary>) StairsSummary.class);
        archive.add((List) getPaymentOptions(), false, (ArchivingHandler) new ClassHandler(RoutePaymentOption.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::RouteMetadata";
    }
}
