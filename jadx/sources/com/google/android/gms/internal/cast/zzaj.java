package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.zzas;
import com.google.android.gms.dynamic.IObjectWrapper;
import de.robv.android.xposed.callbacks.XCallback;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaj extends zza implements zzak {
    zzaj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final int zze() {
        Parcel parcelZzb = zzb(8, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzaj zzf(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzam zzamVar, Map map) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zzc(parcelZza, castOptions);
        zzc.zze(parcelZza, zzamVar);
        parcelZza.writeMap(map);
        Parcel parcelZzb = zzb(1, parcelZza);
        com.google.android.gms.cast.framework.zzaj zzajVarZzb = com.google.android.gms.cast.framework.zzai.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzajVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzam zzg(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzag zzagVar) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, castOptions);
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, zzagVar);
        Parcel parcelZzb = zzb(3, parcelZza);
        com.google.android.gms.cast.framework.zzam zzamVarZzb = com.google.android.gms.cast.framework.zzal.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzamVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzat zzh(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, iObjectWrapper2);
        zzc.zze(parcelZza, iObjectWrapper3);
        Parcel parcelZzb = zzb(5, parcelZza);
        com.google.android.gms.cast.framework.zzat zzatVarZzb = zzas.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzatVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzaw zzi(String str, String str2, com.google.android.gms.cast.framework.zzbe zzbeVar) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zze(parcelZza, zzbeVar);
        Parcel parcelZzb = zzb(2, parcelZza);
        com.google.android.gms.cast.framework.zzaw zzawVarZzb = com.google.android.gms.cast.framework.zzav.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zzawVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.media.internal.zzi zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, zzkVar);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        parcelZza.writeInt(0);
        parcelZza.writeLong(2097152L);
        parcelZza.writeInt(5);
        parcelZza.writeInt(333);
        parcelZza.writeInt(XCallback.PRIORITY_HIGHEST);
        Parcel parcelZzb = zzb(6, parcelZza);
        com.google.android.gms.cast.framework.media.internal.zzi zziVarZzb = com.google.android.gms.cast.framework.media.internal.zzh.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zziVarZzb;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.media.internal.zzi zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iObjectWrapper);
        zzc.zze(parcelZza, iObjectWrapper2);
        zzc.zze(parcelZza, zzkVar);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        parcelZza.writeInt(0);
        parcelZza.writeLong(2097152L);
        parcelZza.writeInt(5);
        parcelZza.writeInt(333);
        parcelZza.writeInt(XCallback.PRIORITY_HIGHEST);
        Parcel parcelZzb = zzb(7, parcelZza);
        com.google.android.gms.cast.framework.media.internal.zzi zziVarZzb = com.google.android.gms.cast.framework.media.internal.zzh.zzb(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return zziVarZzb;
    }
}
