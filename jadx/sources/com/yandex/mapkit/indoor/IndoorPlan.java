package com.yandex.mapkit.indoor;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface IndoorPlan {
    String getActiveLevelId();

    List<IndoorLevel> getLevels();

    void setActiveLevelId(String str);
}
