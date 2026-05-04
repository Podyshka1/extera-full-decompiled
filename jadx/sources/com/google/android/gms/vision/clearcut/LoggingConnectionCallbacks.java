package com.google.android.gms.vision.clearcut;

import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public class LoggingConnectionCallbacks implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnected(@RecentlyNonNull Bundle bundle) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public void onConnectionFailed(@RecentlyNonNull ConnectionResult connectionResult) {
        throw new NoSuchMethodError();
    }
}
