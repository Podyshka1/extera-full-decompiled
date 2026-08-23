package com.yandex.mapkit.indoor;

/* JADX INFO: loaded from: classes5.dex */
public interface IndoorStateListener {
    void onActiveLevelChanged(String str);

    void onActivePlanFocused(IndoorPlan indoorPlan);

    void onActivePlanLeft();
}
