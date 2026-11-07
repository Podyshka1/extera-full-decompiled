package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.internal.auth.zzbe;

/* JADX INFO: loaded from: classes4.dex */
final class zza extends Api.AbstractClientBuilder {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final /* synthetic */ Api.Client buildClient(Context context, Looper looper, ClientSettings clientSettings, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        return new zzbe(context, looper, clientSettings, null, connectionCallbacks, onConnectionFailedListener);
    }
}
