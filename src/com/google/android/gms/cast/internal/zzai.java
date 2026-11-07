package com.google.android.gms.cast.internal;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzai extends com.google.android.gms.internal.cast.zzb implements zzaj {
    public zzai() {
        super("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                int i3 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzb(i3);
                return true;
            case 2:
                ApplicationMetadata applicationMetadata = (ApplicationMetadata) com.google.android.gms.internal.cast.zzc.zzb(parcel, ApplicationMetadata.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcel);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zze(applicationMetadata, string, string2, zZza);
                return true;
            case 3:
                int i4 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzf(i4);
                return true;
            case 4:
                String string3 = parcel.readString();
                double d = parcel.readDouble();
                boolean zZza2 = com.google.android.gms.internal.cast.zzc.zza(parcel);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzj(string3, d, zZza2);
                return true;
            case 5:
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzm(string4, string5);
                return true;
            case 6:
                String string6 = parcel.readString();
                byte[] bArrCreateByteArray = parcel.createByteArray();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzn(string6, bArrCreateByteArray);
                return true;
            case 7:
                int i5 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzh(i5);
                return true;
            case 8:
                int i6 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzg(i6);
                return true;
            case 9:
                int i7 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzi(i7);
                return true;
            case 10:
                String string7 = parcel.readString();
                long j = parcel.readLong();
                int i8 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzo(string7, j, i8);
                return true;
            case 11:
                String string8 = parcel.readString();
                long j2 = parcel.readLong();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzp(string8, j2);
                return true;
            case 12:
                zza zzaVar = (zza) com.google.android.gms.internal.cast.zzc.zzb(parcel, zza.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzl(zzaVar);
                return true;
            case 13:
                zzac zzacVar = (zzac) com.google.android.gms.internal.cast.zzc.zzb(parcel, zzac.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzk(zzacVar);
                return true;
            case 14:
                int i9 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzc(i9);
                return true;
            case 15:
                int i10 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzd(i10);
                return true;
            default:
                return false;
        }
    }
}
