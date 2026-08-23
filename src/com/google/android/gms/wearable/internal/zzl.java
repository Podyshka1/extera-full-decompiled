package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.wearable.zzb;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzl extends AbstractSafeParcelable implements zzb {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    private final int zza;
    private final String zzb;

    @Nullable
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;

    @Nullable
    private final String zzg;
    private final byte zzh;
    private final byte zzi;
    private final byte zzj;
    private final byte zzk;

    @Nullable
    private final String zzl;

    public zzl(int i, String str, @Nullable String str2, String str3, String str4, String str5, @Nullable String str6, byte b2, byte b3, byte b4, byte b5, @Nullable String str7) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = str5;
        this.zzg = str6;
        this.zzh = b2;
        this.zzi = b3;
        this.zzj = b4;
        this.zzk = b5;
        this.zzl = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzl.class != obj.getClass()) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        if (this.zza != zzlVar.zza || this.zzh != zzlVar.zzh || this.zzi != zzlVar.zzi || this.zzj != zzlVar.zzj || this.zzk != zzlVar.zzk || !this.zzb.equals(zzlVar.zzb)) {
            return false;
        }
        String str = this.zzc;
        String str2 = zzlVar.zzc;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        if (!this.zzd.equals(zzlVar.zzd) || !this.zze.equals(zzlVar.zze) || !this.zzf.equals(zzlVar.zzf)) {
            return false;
        }
        String str3 = this.zzg;
        String str4 = zzlVar.zzg;
        if (str3 == null ? str4 != null : !str3.equals(str4)) {
            return false;
        }
        String str5 = this.zzl;
        String str6 = zzlVar.zzl;
        return str5 != null ? str5.equals(str6) : str6 == null;
    }

    public final int hashCode() {
        int iHashCode = (((this.zza + 31) * 31) + this.zzb.hashCode()) * 31;
        String str = this.zzc;
        int iHashCode2 = (((((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.zzd.hashCode()) * 31) + this.zze.hashCode()) * 31) + this.zzf.hashCode()) * 31;
        String str2 = this.zzg;
        int iHashCode3 = (((((((((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.zzh) * 31) + this.zzi) * 31) + this.zzj) * 31) + this.zzk) * 31;
        String str3 = this.zzl;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        byte b2 = this.zzh;
        byte b3 = this.zzi;
        byte b4 = this.zzj;
        byte b5 = this.zzk;
        return "AncsNotificationParcelable{, id=" + i + ", appId='" + str + "', dateTime='" + str2 + "', eventId=" + ((int) b2) + ", eventFlags=" + ((int) b3) + ", categoryId=" + ((int) b4) + ", categoryCount=" + ((int) b5) + ", packageName='" + this.zzl + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        String str = this.zzg;
        if (str == null) {
            str = this.zzb;
        }
        SafeParcelWriter.writeString(parcel, 8, str, false);
        SafeParcelWriter.writeByte(parcel, 9, this.zzh);
        SafeParcelWriter.writeByte(parcel, 10, this.zzi);
        SafeParcelWriter.writeByte(parcel, 11, this.zzj);
        SafeParcelWriter.writeByte(parcel, 12, this.zzk);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
