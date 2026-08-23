package com.yandex.mapkit.road_events.internal;

import com.yandex.mapkit.road_events.EventInfoSession;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class EventInfoSessionBinding implements EventInfoSession {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.road_events.EventInfoSession
    public native void cancel();

    @Override // com.yandex.mapkit.road_events.EventInfoSession
    public native void retry(EventInfoSession.EventInfoListener eventInfoListener);

    public EventInfoSessionBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
