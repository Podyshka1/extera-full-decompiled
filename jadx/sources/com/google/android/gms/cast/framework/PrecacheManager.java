package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.internal.Logger;

/* JADX INFO: loaded from: classes.dex */
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
}
