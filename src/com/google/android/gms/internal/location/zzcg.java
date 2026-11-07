package com.google.android.gms.internal.location;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcg extends GoogleApi implements FusedLocationProviderClient {
    static final Api.ClientKey zza;
    public static final Api zzb;
    private static final Object zzc;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzb = new Api("LocationServices.API", new zzbe(), clientKey);
        zzc = new Object();
    }

    private final Task zzb(final LocationRequest locationRequest, ListenerHolder listenerHolder) {
        final zzcf zzcfVar = new zzcf(this, listenerHolder, zzbv.zza);
        return doRegisterEventListener(RegistrationMethods.builder().register(new RemoteCall() { // from class: com.google.android.gms.internal.location.zzbq
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                Api api = zzcg.zzb;
                ((zzec) obj).zzt(zzcfVar, locationRequest, (TaskCompletionSource) obj2);
            }
        }).unregister(zzcfVar).withHolder(listenerHolder).setMethodKey(2436).build());
    }

    @Override // com.google.android.gms.common.api.GoogleApi
    public final String getApiFallbackAttributionTag(Context context) {
        return null;
    }

    @Override // com.google.android.gms.location.FusedLocationProviderClient
    public final Task<Location> getLastLocation() {
        return doRead(TaskApiCall.builder().run(zzbu.zza).setMethodKey(2414).build());
    }

    public zzcg(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzb, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.location.FusedLocationProviderClient
    public final Task<Void> removeLocationUpdates(LocationCallback locationCallback) {
        return doUnregisterEventListener(ListenerHolders.createListenerKey(locationCallback, LocationCallback.class.getSimpleName()), 2418).continueWith(zzca.zza, zzbs.zza);
    }

    @Override // com.google.android.gms.location.FusedLocationProviderClient
    public final Task<Void> requestLocationUpdates(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        if (looper == null) {
            looper = Looper.myLooper();
            Preconditions.checkNotNull(looper, "invalid null looper");
        }
        return zzb(locationRequest, ListenerHolders.createListenerHolder(locationCallback, looper, LocationCallback.class.getSimpleName()));
    }
}
