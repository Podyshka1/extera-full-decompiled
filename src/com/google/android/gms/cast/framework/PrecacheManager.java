package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.internal.cast.zzpm;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class PrecacheManager {
    private final Logger zza = new Logger("PrecacheManager");
    private final CastOptions zzb;
    private final SessionManager zzc;
    private final com.google.android.gms.cast.internal.zzn zzd;

    public PrecacheManager(CastOptions castOptions, SessionManager sessionManager, com.google.android.gms.cast.internal.zzn zznVar) {
        this.zzb = castOptions;
        this.zzc = sessionManager;
        this.zzd = zznVar;
    }

    public void precache(String str) {
        com.google.android.gms.internal.cast.zzr.zzb(zzpm.PRECACHE);
        Session currentSession = this.zzc.getCurrentSession();
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("No precache data found to be precached");
            return;
        }
        if (currentSession == null) {
            this.zzd.zza(new String[]{this.zzb.getReceiverApplicationId()}, str, null);
            return;
        }
        if (!(currentSession instanceof CastSession)) {
            this.zza.m284e("Current session is not a CastSession. Precache is not supported.", new Object[0]);
            return;
        }
        RemoteMediaClient remoteMediaClient = ((CastSession) currentSession).getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.zzh(str, null);
        } else {
            this.zza.m284e("Failed to get RemoteMediaClient from current cast session.", new Object[0]);
        }
    }
}
