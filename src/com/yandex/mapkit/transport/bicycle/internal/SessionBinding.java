package com.yandex.mapkit.transport.bicycle.internal;

import com.yandex.mapkit.transport.bicycle.Session;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class SessionBinding implements Session {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.transport.bicycle.Session
    public native void cancel();

    @Override // com.yandex.mapkit.transport.bicycle.Session
    public native void retry(Session.RouteListener routeListener);

    public SessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
