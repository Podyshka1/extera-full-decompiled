package com.yandex.mapkit.navigation.automotive;

/* JADX INFO: loaded from: classes5.dex */
public interface SpeedLimitsPolicy {
    SpeedLimits customSpeedLimits(double d);

    SpeedLimits getLegalSpeedLimits();

    SpeedLimitsRules getSpeedLimitsRules();
}
