package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class TransferStop implements Serializable {
    private NativeObject nativeObject;
    private RouteStop routeStop;
    private boolean routeStop__is_initialized;
    private List<Transport> transports;
    private boolean transports__is_initialized;

    private native RouteStop getRouteStop__Native();

    private native List<Transport> getTransports__Native();

    private native NativeObject init(RouteStop routeStop, List<Transport> list);

    public TransferStop() {
        this.routeStop__is_initialized = false;
        this.transports__is_initialized = false;
    }

    public TransferStop(RouteStop routeStop, List<Transport> list) {
        this.routeStop__is_initialized = false;
        this.transports__is_initialized = false;
        if (routeStop == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"routeStop\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"transports\" cannot be null");
            throw null;
        }
        this.nativeObject = init(routeStop, list);
        this.routeStop = routeStop;
        this.routeStop__is_initialized = true;
        this.transports = list;
        this.transports__is_initialized = true;
    }

    private TransferStop(NativeObject nativeObject) {
        this.routeStop__is_initialized = false;
        this.transports__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized RouteStop getRouteStop() {
        try {
            if (!this.routeStop__is_initialized) {
                this.routeStop = getRouteStop__Native();
                this.routeStop__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.routeStop;
    }

    public synchronized List<Transport> getTransports() {
        try {
            if (!this.transports__is_initialized) {
                this.transports = getTransports__Native();
                this.transports__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.transports;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.routeStop = (RouteStop) archive.add(this.routeStop, false, (Class<RouteStop>) RouteStop.class);
            this.routeStop__is_initialized = true;
            List<Transport> listAdd = archive.add((List) this.transports, false, (ArchivingHandler) new ClassHandler(Transport.class));
            this.transports = listAdd;
            this.transports__is_initialized = true;
            this.nativeObject = init(this.routeStop, listAdd);
            return;
        }
        archive.add(getRouteStop(), false, (Class<RouteStop>) RouteStop.class);
        archive.add((List) getTransports(), false, (ArchivingHandler) new ClassHandler(Transport.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::TransferStop";
    }
}
