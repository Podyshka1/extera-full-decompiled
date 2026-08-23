package com.yandex.mapkit.road_events;

import com.yandex.mapkit.road_events.EventInfoSession;

/* JADX INFO: loaded from: classes5.dex */
public interface RoadEventsManager {
    EventInfoSession requestEventInfo(String str, EventInfoSession.EventInfoListener eventInfoListener);
}
