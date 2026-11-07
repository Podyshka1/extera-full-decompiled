package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    public final String zza;
    public final String zzb;
    public final zziv zzc;
    public final String zzd;
    public final String zze;
    public final Float zzf;
    public final zzs zzg;

    public zzo(String str, String str2, zziv zzivVar, String str3, String str4, Float f, zzs zzsVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzivVar;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = f;
        this.zzg = zzsVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzo.class == obj.getClass()) {
            zzo zzoVar = (zzo) obj;
            if (zzn.zza(this.zza, zzoVar.zza) && zzn.zza(this.zzb, zzoVar.zzb) && zzn.zza(this.zzc, zzoVar.zzc) && zzn.zza(this.zzd, zzoVar.zzd) && zzn.zza(this.zze, zzoVar.zze) && zzn.zza(this.zzf, zzoVar.zzf) && zzn.zza(this.zzg, zzoVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg});
    }

    public final String toString() {
        return "AppParcelable{title='" + this.zzb + "', developerName='" + this.zzd + "', formattedPrice='" + this.zze + "', starRating=" + this.zzf + ", wearDetails=" + String.valueOf(this.zzg) + ", deepLinkUri='" + this.zza + "', icon=" + String.valueOf(this.zzc) + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeFloatObject(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzg, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
