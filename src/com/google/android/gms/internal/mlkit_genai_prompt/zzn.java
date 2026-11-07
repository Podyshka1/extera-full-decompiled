package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    private final String zza;
    private final String zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final String zzh;

    public zzn(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = str3;
    }

    public static zzn zza(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3) {
        return new zzn(str, str2, i, i2, i3, i4, i5, str3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzn)) {
            return false;
        }
        zzn zznVar = (zzn) obj;
        return this.zzc == zznVar.zzc && this.zzd == zznVar.zzd && Objects.equals(this.zza, zznVar.zza) && this.zze == zznVar.zze && this.zzf == zznVar.zzf;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), Integer.valueOf(this.zze), Integer.valueOf(this.zzf));
    }

    public final String toString() {
        zzkx zzkxVarZza = zzky.zza(this);
        zzkxVarZza.zza("name", this.zza);
        zzkxVarZza.zza("modelName", this.zzb);
        zzkxVarZza.zzb("type", this.zzc);
        zzkxVarZza.zzb("variant", this.zzd);
        zzkxVarZza.zzb("id", this.zze);
        zzkxVarZza.zzb("version", this.zzf);
        return zzkxVarZza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeInt(parcel, 6, this.zzf);
        SafeParcelWriter.writeInt(parcel, 7, this.zzg);
        SafeParcelWriter.writeString(parcel, 8, this.zzh, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzb;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final int zze() {
        return this.zzd;
    }

    public final int zzf() {
        return this.zze;
    }

    public final int zzg() {
        return this.zzf;
    }

    public final int zzh() {
        return this.zzg;
    }

    public final String zzi() {
        return this.zzh;
    }
}
