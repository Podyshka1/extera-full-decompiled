package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjs {
    final Context zza;
    Boolean zzb;
    long zzc;
    com.google.android.gms.internal.measurement.zzdd zzd;
    boolean zze;
    final Long zzf;
    String zzg;

    public zzjs(Context context, com.google.android.gms.internal.measurement.zzdd zzddVar, Long l) {
        this.zze = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
        this.zzf = l;
        if (zzddVar != null) {
            this.zzd = zzddVar;
            this.zze = zzddVar.zzc;
            this.zzc = zzddVar.zzb;
            this.zzg = zzddVar.zze;
            Bundle bundle = zzddVar.zzd;
            if (bundle != null) {
                this.zzb = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
