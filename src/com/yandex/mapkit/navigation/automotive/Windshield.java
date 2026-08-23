package com.yandex.mapkit.navigation.automotive;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Windshield {
    void addListener(WindshieldListener windshieldListener);

    List<UpcomingDirectionSign> getDirectionSigns();

    List<UpcomingLaneSign> getLaneSigns();

    List<UpcomingManoeuvre> getManoeuvres();

    List<UpcomingRoadEvent> getRoadEvents();

    boolean isValid();

    void removeListener(WindshieldListener windshieldListener);
}
