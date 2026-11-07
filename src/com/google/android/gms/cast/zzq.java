package com.google.android.gms.cast;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface zzq {
    /* synthetic */ ApiKey getApiKey();

    boolean zza();

    void zzb(zzp zzpVar);

    Task zzc();

    Task zzd();

    Task zze();

    Task zzf(String str, String str2);

    Task zzg(String str, LaunchOptions launchOptions);

    Task zzh(String str);

    Task zzi(double d);

    double zzj();

    Task zzk(boolean z);

    boolean zzl();

    int zzm();

    int zzn();

    ApplicationMetadata zzo();

    String zzp();

    Task zzq(String str, Cast.MessageReceivedCallback messageReceivedCallback);

    Task zzr(String str);
}
