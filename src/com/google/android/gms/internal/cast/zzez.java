package com.google.android.gms.internal.cast;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public final class zzez extends zza implements IInterface {
    public zzez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
    }

    public final void zze(ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, apiMetadata);
        zzd(3, parcelZza);
    }

    public final void zzf(zzey zzeyVar, zzfb zzfbVar, String str, String str2, Bundle bundle, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzeyVar);
        zzc.zze(parcelZza, zzfbVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zzc(parcelZza, bundle);
        zzc.zzc(parcelZza, apiMetadata);
        zzd(7, parcelZza);
    }

    public final void zzg(zzey zzeyVar, PendingIntent pendingIntent, String str, String str2, Bundle bundle, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzeyVar);
        zzc.zzc(parcelZza, pendingIntent);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zzc(parcelZza, bundle);
        zzc.zzc(parcelZza, apiMetadata);
        zzd(8, parcelZza);
    }

    public final void zzh(zzey zzeyVar, int i, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzeyVar);
        parcelZza.writeInt(i);
        zzc.zzc(parcelZza, apiMetadata);
        zzd(5, parcelZza);
    }

    public final void zzi(zzey zzeyVar, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzeyVar);
        zzc.zzc(parcelZza, apiMetadata);
        zzd(6, parcelZza);
    }
}
