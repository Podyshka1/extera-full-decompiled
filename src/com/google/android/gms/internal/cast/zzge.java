package com.google.android.gms.internal.cast;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzge extends zzb implements zzgf {
    public zzge() {
        super("com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                Status status = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzgc zzgcVar = (zzgc) zzc.zzb(parcel, zzgc.CREATOR);
                zzc.zzf(parcel);
                zzb(status, zzgcVar);
                return true;
            case 3:
                Status status2 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzc.zzf(parcel);
                zzc(status2);
                return true;
            case 4:
                Status status3 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzc.zzf(parcel);
                zzd(status3);
                return true;
            case 5:
                Status status4 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzc.zzf(parcel);
                zze(status4);
                return true;
            case 6:
                Status status5 = (Status) zzc.zzb(parcel, Status.CREATOR);
                ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                zzc.zzf(parcel);
                zzf(status5, arrayListCreateStringArrayList);
                return true;
            case 7:
                Status status6 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzc.zzf(parcel);
                zzg(status6);
                return true;
            case 8:
                Status status7 = (Status) zzc.zzb(parcel, Status.CREATOR);
                boolean zZza = zzc.zza(parcel);
                zzfn zzfnVar = (zzfn) zzc.zzb(parcel, zzfn.CREATOR);
                zzc.zzf(parcel);
                zzh(status7, zZza, zzfnVar);
                return true;
            case 9:
                Status status8 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzfn zzfnVar2 = (zzfn) zzc.zzb(parcel, zzfn.CREATOR);
                zzc.zzf(parcel);
                zzi(status8, zzfnVar2);
                return true;
            case 10:
                PendingIntent pendingIntent = (PendingIntent) zzc.zzb(parcel, PendingIntent.CREATOR);
                zzc.zzf(parcel);
                zzj(pendingIntent);
                return true;
            case 11:
                Status status9 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzc.zzf(parcel);
                zzk(status9);
                return true;
            case 12:
                Status status10 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzfp zzfpVar = (zzfp) zzc.zzb(parcel, zzfp.CREATOR);
                zzc.zzf(parcel);
                zzl(status10, zzfpVar);
                return true;
            case 13:
                Status status11 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzc.zzf(parcel);
                zzm(status11);
                return true;
            case 14:
                Status status12 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzfw zzfwVar = (zzfw) zzc.zzb(parcel, zzfw.CREATOR);
                zzc.zzf(parcel);
                zzn(status12, zzfwVar);
                return true;
            case 15:
                Status status13 = (Status) zzc.zzb(parcel, Status.CREATOR);
                zzfn zzfnVar3 = (zzfn) zzc.zzb(parcel, zzfn.CREATOR);
                zzc.zzf(parcel);
                zzo(status13, zzfnVar3);
                return true;
            default:
                return false;
        }
    }
}
