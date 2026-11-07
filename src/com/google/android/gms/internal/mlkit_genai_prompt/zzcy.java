package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcy extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzcy> CREATOR;
    public static final zzcp zza;
    private static final zzcp zzb;
    private final int zzc;
    private final String zzd;
    private final boolean zze;
    private final int zzf;
    private final double zzg;
    private final zzml zzh;
    private final long zzi;

    static {
        zzco zzcoVarZzu = zzcp.zzu();
        zzco zzcoVarZzu2 = zzcp.zzu();
        zzcoVarZzu2.zza(1);
        zzcp zzcpVarZzp = zzcoVarZzu2.zzp();
        zzco zzcoVarZzu3 = zzcp.zzu();
        zzcoVarZzu3.zza(2);
        zzcp zzcpVarZzp2 = zzcoVarZzu3.zzp();
        zzco zzcoVarZzu4 = zzcp.zzu();
        zzcoVarZzu4.zza(3);
        zzcp zzcpVarZzp3 = zzcoVarZzu4.zzp();
        zzco zzcoVarZzu5 = zzcp.zzu();
        zzcoVarZzu5.zza(4);
        zzcoVarZzu.zzl(zzml.zzo(zzcpVarZzp, zzcpVarZzp2, zzcpVarZzp3, zzcoVarZzu5.zzp()));
        zzcp zzcpVarZzp4 = zzcoVarZzu.zzp();
        zzb = zzcpVarZzp4;
        zzco zzcoVarZzu6 = zzcp.zzu();
        zzco zzcoVarZzu7 = zzcp.zzu();
        zzcoVarZzu7.zza(1);
        zzcp zzcpVarZzp5 = zzcoVarZzu7.zzp();
        zzco zzcoVarZzu8 = zzcp.zzu();
        zzcoVarZzu8.zza(2);
        zzcp zzcpVarZzp6 = zzcoVarZzu8.zzp();
        zzco zzcoVarZzu9 = zzcp.zzu();
        zzcoVarZzu9.zza(3);
        zzcp zzcpVarZzp7 = zzcoVarZzu9.zzp();
        zzco zzcoVarZzu10 = zzcp.zzu();
        zzcoVarZzu10.zza(4);
        zzcp zzcpVarZzp8 = zzcoVarZzu10.zzp();
        zzco zzcoVarZzu11 = zzcp.zzu();
        zzcoVarZzu11.zza(5);
        zzcoVarZzu11.zzf(zzcpVarZzp4);
        zzcoVarZzu6.zzl(zzml.zzp(zzcpVarZzp5, zzcpVarZzp6, zzcpVarZzp7, zzcpVarZzp8, zzcoVarZzu11.zzp()));
        zzcoVarZzu6.zzc("The actual value of the argument");
        zza = zzcoVarZzu6.zzp();
        CREATOR = new zzcz();
    }

    public zzcy(int i, String str, boolean z, int i2, double d, List list, long j) {
        this.zzc = i;
        this.zzd = str;
        this.zze = z;
        this.zzf = i2;
        this.zzg = d;
        this.zzh = zzml.zzq(list);
        this.zzi = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzc);
        SafeParcelWriter.writeString(parcel, 2, this.zzd, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zze);
        SafeParcelWriter.writeInt(parcel, 4, this.zzf);
        SafeParcelWriter.writeDouble(parcel, 5, this.zzg);
        SafeParcelWriter.writeTypedList(parcel, 6, this.zzh, false);
        SafeParcelWriter.writeLong(parcel, 7, this.zzi);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zzf;
    }

    public final double zze() {
        return this.zzg;
    }

    public final zzml zzf() {
        return this.zzh;
    }

    public final long zzg() {
        return this.zzi;
    }

    public final String toString() {
        int i = this.zzc;
        if (i == 0) {
            return this.zzd;
        }
        if (i == 1) {
            return String.valueOf(this.zze);
        }
        if (i == 2) {
            return String.valueOf(this.zzf);
        }
        if (i == 3) {
            return String.valueOf(this.zzg);
        }
        if (i == 4) {
            return this.zzh.toString();
        }
        if (i == 5) {
            return String.valueOf(this.zzi);
        }
        zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i).length() + 18, "Unsupported kind: ", i);
        return null;
    }
}
