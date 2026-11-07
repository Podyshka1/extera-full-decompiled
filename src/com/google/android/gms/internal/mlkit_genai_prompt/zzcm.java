package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcm> CREATOR = new zzcn();
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final float zzd;
    private final float zze;
    private final float zzf;

    public zzcm(int i, int i2, int i3, float f, float f2, float f3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = f;
        this.zze = f2;
        this.zzf = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcm) {
            zzcm zzcmVar = (zzcm) obj;
            if (this.zza == zzcmVar.zza && this.zzb == zzcmVar.zzb && this.zzc == zzcmVar.zzc && Float.compare(this.zzd, zzcmVar.zzd) == 0 && Float.compare(this.zze, zzcmVar.zze) == 0 && Float.compare(this.zzf, zzcmVar.zzf) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Float.valueOf(this.zzd), Float.valueOf(this.zze), Float.valueOf(this.zzf));
    }

    public final String toString() {
        int i = this.zza;
        int length = String.valueOf(i).length();
        int i2 = this.zzb;
        int length2 = String.valueOf(i2).length();
        int i3 = this.zzc;
        int length3 = String.valueOf(i3).length();
        float f = this.zzd;
        int length4 = String.valueOf(f).length();
        float f2 = this.zze;
        int length5 = String.valueOf(f2).length();
        float f3 = this.zzf;
        StringBuilder sb = new StringBuilder(length + 50 + length2 + 18 + length3 + 16 + length4 + 12 + length5 + 18 + String.valueOf(f3).length() + 1);
        sb.append("QuotaExceededErrorDetails {quotaType=");
        sb.append(i);
        sb.append(", quotaScope=");
        sb.append(i2);
        sb.append(", quotaCheckStage=");
        sb.append(i3);
        sb.append(", periodSeconds=");
        sb.append(f);
        sb.append(", costLimit=");
        sb.append(f2);
        sb.append(", tryAgainSeconds=");
        sb.append(f3);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeFloat(parcel, 4, this.zzd);
        SafeParcelWriter.writeFloat(parcel, 5, this.zze);
        SafeParcelWriter.writeFloat(parcel, 6, this.zzf);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final float zza() {
        return this.zzf;
    }
}
