package com.yandex.mapkit.indoor.internal;

import com.yandex.mapkit.indoor.IndoorLevel;
import com.yandex.mapkit.indoor.IndoorPlan;
import com.yandex.runtime.NativeObject;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class IndoorPlanBinding implements IndoorPlan {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.indoor.IndoorPlan
    public native String getActiveLevelId();

    @Override // com.yandex.mapkit.indoor.IndoorPlan
    public native List<IndoorLevel> getLevels();

    @Override // com.yandex.mapkit.indoor.IndoorPlan
    public native void setActiveLevelId(String str);

    public IndoorPlanBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
