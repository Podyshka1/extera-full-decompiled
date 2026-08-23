package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzk extends AbstractSafeParcelable {
    private static final zzs zzf;
    public final String zzb;
    final zzs zzc;
    public final int zzd;
    public final byte[] zze;
    public static final int zza = Integer.parseInt("-1");
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();

    static {
        zzr zzrVar = new zzr("SsbContext");
        zzrVar.zzb(true);
        zzrVar.zza("blob");
        zzf = zzrVar.zze();
    }

    zzk(String str, zzs zzsVar, int i, byte[] bArr) {
        String string;
        int i2 = zza;
        boolean z = true;
        if (i != i2 && zzq.zza(i) == null) {
            z = false;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append("Invalid section type ");
        sb.append(i);
        Preconditions.checkArgument(z, sb.toString());
        this.zzb = str;
        this.zzc = zzsVar;
        this.zzd = i;
        this.zze = bArr;
        if (i == i2 || zzq.zza(i) != null) {
            string = (str == null || bArr == null) ? null : "Both content and blobContent set";
        } else {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid section type ");
            sb2.append(i);
            string = sb2.toString();
        }
        if (string != null) {
            throw new IllegalArgumentException(string);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeByteArray(parcel, 5, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
