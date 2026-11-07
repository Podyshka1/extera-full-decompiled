package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbb extends zza implements zzbc {
    public zzbb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final int zze() {
        Parcel parcelZzb = zzb(8, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzai zzf(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzbe zzbeVar, Map map) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zzc(parcelZza, castOptions);
        zzc.zze(parcelZza, zzbeVar);
        parcelZza.writeMap(map);
        Parcel parcelZzb = zzb(1, parcelZza);
        com.google.android.gms.cast.framework.zzai zzaiVarZzb = com.google.android.gms.cast.framework.zzah.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzaiVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzav zzg(String str, String str2, com.google.android.gms.cast.framework.zzbd zzbdVar) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zze(parcelZza, zzbdVar);
        Parcel parcelZzb = zzb(2, parcelZza);
        com.google.android.gms.cast.framework.zzav zzavVarZzb = com.google.android.gms.cast.framework.zzau.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzavVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzal zzh(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzaf zzafVar) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, castOptions);
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, zzafVar);
        Parcel parcelZzb = zzb(3, parcelZza);
        com.google.android.gms.cast.framework.zzal zzalVarZzb = com.google.android.gms.cast.framework.zzak.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzalVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzas zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, iObjectWrapper2);
        zzc.zze(parcelZza, iObjectWrapper3);
        Parcel parcelZzb = zzb(5, parcelZza);
        com.google.android.gms.cast.framework.zzas zzasVarZzb = com.google.android.gms.cast.framework.zzar.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzasVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.media.internal.zzg zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, zziVar);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        parcelZza.writeInt(0);
        parcelZza.writeLong(2097152L);
        parcelZza.writeInt(5);
        parcelZza.writeInt(333);
        parcelZza.writeInt(10000);
        Parcel parcelZzb = zzb(6, parcelZza);
        com.google.android.gms.cast.framework.media.internal.zzg zzgVarZzb = com.google.android.gms.cast.framework.media.internal.zzf.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzgVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.media.internal.zzg zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, iObjectWrapper2);
        zzc.zze(parcelZza, zziVar);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        parcelZza.writeInt(0);
        parcelZza.writeLong(2097152L);
        parcelZza.writeInt(5);
        parcelZza.writeInt(333);
        parcelZza.writeInt(10000);
        Parcel parcelZzb = zzb(7, parcelZza);
        com.google.android.gms.cast.framework.media.internal.zzg zzgVarZzb = com.google.android.gms.cast.framework.media.internal.zzf.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzgVarZzb;
    }
}
