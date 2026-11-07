package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.zzv;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zzeh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzeh> CREATOR = new zzei();
    private final int zza;
    private final zzef zzb;
    private final com.google.android.gms.location.zzy zzc;
    private final zzv zzd;
    private final PendingIntent zze;
    private final zzq zzf;
    private final String zzg;

    public zzeh(int i, zzef zzefVar, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, IBinder iBinder3, String str) {
        this.zza = i;
        this.zzb = zzefVar;
        zzq zzoVar = null;
        this.zzc = iBinder != null ? com.google.android.gms.location.zzx.zzb(iBinder) : null;
        this.zze = pendingIntent;
        this.zzd = iBinder2 != null ? com.google.android.gms.location.zzu.zzb(iBinder2) : null;
        if (iBinder3 != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzoVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzo(iBinder3);
        }
        this.zzf = zzoVar;
        this.zzg = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        com.google.android.gms.location.zzy zzyVar = this.zzc;
        SafeParcelWriter.writeIBinder(parcel, 3, zzyVar == null ? null : zzyVar.asBinder(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zze, i, false);
        zzv zzvVar = this.zzd;
        SafeParcelWriter.writeIBinder(parcel, 5, zzvVar == null ? null : zzvVar.asBinder(), false);
        zzq zzqVar = this.zzf;
        SafeParcelWriter.writeIBinder(parcel, 6, zzqVar != null ? zzqVar.asBinder() : null, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
