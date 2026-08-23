package com.google.android.gms.cast.internal;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzah extends com.google.android.gms.internal.cast.zzb implements zzai {
    public zzah() {
        super("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                int i3 = parcel.readInt();
                zzc.zzb(parcel);
                zzk(i3);
                return true;
            case 2:
                ApplicationMetadata applicationMetadata = (ApplicationMetadata) zzc.zza(parcel, ApplicationMetadata.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                boolean zZzf = zzc.zzf(parcel);
                zzc.zzb(parcel);
                zzb(applicationMetadata, string, string2, zZzf);
                return true;
            case 3:
                int i4 = parcel.readInt();
                zzc.zzb(parcel);
                zzc(i4);
                return true;
            case 4:
                String string3 = parcel.readString();
                double d = parcel.readDouble();
                boolean zZzf2 = zzc.zzf(parcel);
                zzc.zzb(parcel);
                zzn(string3, d, zZzf2);
                return true;
            case 5:
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                zzc.zzb(parcel);
                zzp(string4, string5);
                return true;
            case 6:
                String string6 = parcel.readString();
                byte[] bArrCreateByteArray = parcel.createByteArray();
                zzc.zzb(parcel);
                zzh(string6, bArrCreateByteArray);
                return true;
            case 7:
                int i5 = parcel.readInt();
                zzc.zzb(parcel);
                zze(i5);
                return true;
            case 8:
                int i6 = parcel.readInt();
                zzc.zzb(parcel);
                zzg(i6);
                return true;
            case 9:
                int i7 = parcel.readInt();
                zzc.zzb(parcel);
                zzd(i7);
                return true;
            case 10:
                String string7 = parcel.readString();
                long j = parcel.readLong();
                int i8 = parcel.readInt();
                zzc.zzb(parcel);
                zzm(string7, j, i8);
                return true;
            case 11:
                String string8 = parcel.readString();
                long j2 = parcel.readLong();
                zzc.zzb(parcel);
                zzl(string8, j2);
                return true;
            case 12:
                zza zzaVar = (zza) zzc.zza(parcel, zza.CREATOR);
                zzc.zzb(parcel);
                zzf(zzaVar);
                return true;
            case 13:
                zzab zzabVar = (zzab) zzc.zza(parcel, zzab.CREATOR);
                zzc.zzb(parcel);
                zzj(zzabVar);
                return true;
            case 14:
                int i9 = parcel.readInt();
                zzc.zzb(parcel);
                zzi(i9);
                return true;
            case 15:
                int i10 = parcel.readInt();
                zzc.zzb(parcel);
                zzo(i10);
                return true;
            default:
                return false;
        }
    }
}
