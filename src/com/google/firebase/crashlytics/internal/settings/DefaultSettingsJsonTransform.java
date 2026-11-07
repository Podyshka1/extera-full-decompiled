package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.CurrentTimeProvider;
import com.google.firebase.crashlytics.internal.settings.Settings;
import kotlin.time.DurationKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class DefaultSettingsJsonTransform implements SettingsJsonTransform {
    @Override // com.google.firebase.crashlytics.internal.settings.SettingsJsonTransform
    public Settings buildFromJson(CurrentTimeProvider currentTimeProvider, JSONObject jSONObject) {
        return defaultSettings(currentTimeProvider);
    }

    public static Settings defaultSettings(CurrentTimeProvider currentTimeProvider) {
        return new Settings(currentTimeProvider.getCurrentTimeMillis() + DurationKt.MILLIS_IN_HOUR, new Settings.SessionData(8, 4), new Settings.FeatureFlagData(true, false, false), 0, 3600, 10.0d, 1.2d, 60);
    }
}
