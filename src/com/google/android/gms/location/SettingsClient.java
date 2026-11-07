package com.google.android.gms.location;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes5.dex */
public interface SettingsClient {
    Task<LocationSettingsResponse> checkLocationSettings(LocationSettingsRequest locationSettingsRequest);
}
