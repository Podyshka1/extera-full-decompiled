package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.zzav;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();
    private double zza;
    private boolean zzb;
    private int zzc;
    private ApplicationMetadata zzd;
    private int zze;
    private zzav zzf;
    private double zzg;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzab)) {
            return false;
        }
        zzab zzabVar = (zzab) obj;
        if (this.zza == zzabVar.zza && this.zzb == zzabVar.zzb && this.zzc == zzabVar.zzc && CastUtils.zze(this.zzd, zzabVar.zzd) && this.zze == zzabVar.zze) {
            zzav zzavVar = this.zzf;
            if (CastUtils.zze(zzavVar, zzavVar) && this.zzg == zzabVar.zzg) {
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
        return this.zzg;
    }

    public final double zzb() {
        return this.zza;
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

    public final zzav zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        return this.zzb;
    }

    zzab(double d, boolean z, int i, ApplicationMetadata applicationMetadata, int i2, zzav zzavVar, double d2) {
        this.zza = d;
        this.zzb = z;
        this.zzc = i;
        this.zzd = applicationMetadata;
        this.zze = i2;
        this.zzf = zzavVar;
        this.zzg = d2;
    }
}
