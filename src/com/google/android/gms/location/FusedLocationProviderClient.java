package com.google.android.gms.location;

import android.os.Looper;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface FusedLocationProviderClient {
    Task getLastLocation();

    Task removeLocationUpdates(LocationCallback locationCallback);

    Task requestLocationUpdates(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper);
}
