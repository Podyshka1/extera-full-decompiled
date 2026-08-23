package com.yandex.mapkit.transport.masstransit;

/* JADX INFO: loaded from: classes5.dex */
public enum FilterVehicleTypes {
    NONE(0),
    BUS(1),
    MINIBUS(2),
    RAILWAY(4),
    SUBURBAN(8),
    TRAMWAY(16),
    TROLLEYBUS(32),
    UNDERGROUND(64),
    METROBUS(128),
    DOLMUS(256),
    HISTORIC_TRAM(512),
    RAPID_TRAM(1024),
    LIGHT_RAIL(2048),
    SUBURBAN_EXPRESS(4096),
    AEROEXPRESS(8192),
    WATER(16384),
    FERRY(32768),
    FUNICULAR(65536),
    CABLE(131072),
    AERO(262144),
    S_BAHN(524288);

    public final int value;

    FilterVehicleTypes(int i) {
        this.value = i;
    }
}
