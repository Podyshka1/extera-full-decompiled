package com.yandex.mapkit.navigation.automotive;

import com.yandex.mapkit.geometry.Point;

/* JADX INFO: loaded from: classes5.dex */
public interface SpeedPolicyProvider {
    void addListener(SpeedPolicyListener speedPolicyListener);

    SpeedLimitsPolicy getSpeedLimitsPolicy();

    void removeListener(SpeedPolicyListener speedPolicyListener);

    void updateSpeedLimitsPolicy(Point point);
}
