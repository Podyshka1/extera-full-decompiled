package com.yandex.mapkit.navigation.automotive.internal;

import com.yandex.mapkit.navigation.automotive.SpeedLimits;
import com.yandex.mapkit.navigation.automotive.SpeedLimitsPolicy;
import com.yandex.mapkit.navigation.automotive.SpeedLimitsRules;
import com.yandex.runtime.NativeObject;

/* JADX INFO: loaded from: classes5.dex */
public class SpeedLimitsPolicyBinding implements SpeedLimitsPolicy {
    private final NativeObject nativeObject;

    @Override // com.yandex.mapkit.navigation.automotive.SpeedLimitsPolicy
    public native SpeedLimits customSpeedLimits(double d);

    @Override // com.yandex.mapkit.navigation.automotive.SpeedLimitsPolicy
    public native SpeedLimits getLegalSpeedLimits();

    @Override // com.yandex.mapkit.navigation.automotive.SpeedLimitsPolicy
    public native SpeedLimitsRules getSpeedLimitsRules();

    public SpeedLimitsPolicyBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
