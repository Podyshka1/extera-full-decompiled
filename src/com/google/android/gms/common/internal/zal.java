package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes.dex */
public final class zal {
    private final SparseIntArray zaa = new SparseIntArray();
    private GoogleApiAvailabilityLight zab;

    public final int zaa(Context context, int i) {
        return this.zaa.get(i, -1);
    }

    public final int zab(Context context, Api.Client client) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        int iIsGooglePlayServicesAvailable = 0;
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int iZaa = zaa(context, minApkVersion);
        if (iZaa != -1) {
            return iZaa;
        }
        int i = 0;
        while (true) {
            if (i >= this.zaa.size()) {
                iIsGooglePlayServicesAvailable = -1;
                break;
            }
            int iKeyAt = this.zaa.keyAt(i);
            if (iKeyAt > minApkVersion && this.zaa.get(iKeyAt) == 0) {
                break;
            }
            i++;
        }
        if (iIsGooglePlayServicesAvailable == -1) {
            iIsGooglePlayServicesAvailable = this.zab.isGooglePlayServicesAvailable(context, minApkVersion);
        }
        this.zaa.put(minApkVersion, iIsGooglePlayServicesAvailable);
        return iIsGooglePlayServicesAvailable;
    }

    public final void zac() {
        this.zaa.clear();
    }

    public zal(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.zab = googleApiAvailabilityLight;
    }
}
