package com.google.android.gms.cast.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.IStatusCallback;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzak extends com.google.android.gms.internal.cast.zza implements IInterface {
    public zzak(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.internal.ICastService");
    }

    public final void zze(IStatusCallback iStatusCallback, String[] strArr, String str, List list, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, iStatusCallback);
        parcelZza.writeStringArray(strArr);
        parcelZza.writeString(str);
        parcelZza.writeTypedList(null);
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, apiMetadata);
        zzd(2, parcelZza);
    }

    public final void zzf(zzag zzagVar, String[] strArr, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzagVar);
        parcelZza.writeStringArray(strArr);
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, apiMetadata);
        zzd(5, parcelZza);
    }

    public final void zzg(zzag zzagVar, String[] strArr, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzagVar);
        parcelZza.writeStringArray(strArr);
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, apiMetadata);
        zzd(6, parcelZza);
    }

    public final void zzh(zzag zzagVar, String[] strArr, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzagVar);
        parcelZza.writeStringArray(strArr);
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, apiMetadata);
        zzd(7, parcelZza);
    }
}
