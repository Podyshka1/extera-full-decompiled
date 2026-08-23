package com.yandex.mapkit.transport.masstransit;

/* JADX INFO: loaded from: classes5.dex */
public interface MasstransitRouteSerializer {
    Route load(byte[] bArr);

    byte[] save(Route route);
}
