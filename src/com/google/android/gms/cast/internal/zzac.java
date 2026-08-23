package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new zzad();
    private double zza;
    private boolean zzb;
    private int zzc;
    private ApplicationMetadata zzd;
    private int zze;
    private com.google.android.gms.cast.zzao zzf;
    private double zzg;

    public zzac() {
        this(Double.NaN, false, -1, null, -1, null, Double.NaN);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzac)) {
            return false;
        }
        zzac zzacVar = (zzac) obj;
        if (this.zza == zzacVar.zza && this.zzb == zzacVar.zzb && this.zzc == zzacVar.zzc && CastUtils.zza(this.zzd, zzacVar.zzd) && this.zze == zzacVar.zze) {
            com.google.android.gms.cast.zzao zzaoVar = this.zzf;
            if (CastUtils.zza(zzaoVar, zzaoVar) && this.zzg == zzacVar.zzg) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Double.valueOf(this.zza), Boolean.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd, Integer.valueOf(this.zze), this.zzf, Double.valueOf(this.zzg));
    }

    public final String toString() {
        return String.format(Locale.ROOT, "volume=%f", Double.valueOf(this.zza));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 2, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zze);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeDouble(parcel, 8, this.zzg);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final double zza() {
        return this.zza;
    }

    public final boolean zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zzc;
    }

    public final int zzd() {
        return this.zze;
    }

    public final ApplicationMetadata zze() {
        return this.zzd;
    }

    public final com.google.android.gms.cast.zzao zzf() {
        return this.zzf;
    }

    public final double zzg() {
        return this.zzg;
    }

    public zzac(double d, boolean z, int i, ApplicationMetadata applicationMetadata, int i2, com.google.android.gms.cast.zzao zzaoVar, double d2) {
        this.zza = d;
        this.zzb = z;
        this.zzc = i;
        this.zzd = applicationMetadata;
        this.zze = i2;
        this.zzf = zzaoVar;
        this.zzg = d2;
    }
}
