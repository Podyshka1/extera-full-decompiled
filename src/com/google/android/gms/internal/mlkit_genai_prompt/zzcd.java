package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcd> CREATOR = new zzce();
    public final int zza;
    final Bundle zzb;
    private final String zzc;

    @Deprecated
    private final float zzd;
    private final float zze;
    private final zzw zzf;
    private final List zzg;

    public zzcd(String str, float f, int i, float f2, Bundle bundle, zzw zzwVar, List list) {
        this.zzc = str;
        this.zzd = f;
        this.zza = i;
        this.zze = f2;
        this.zzb = bundle;
        this.zzf = zzwVar;
        this.zzg = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zzc;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeFloat(parcel, 2, this.zzd);
        SafeParcelWriter.writeInt(parcel, 3, this.zza);
        SafeParcelWriter.writeFloat(parcel, 4, this.zze);
        SafeParcelWriter.writeBundle(parcel, 5, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.writeTypedList(parcel, 7, this.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zza() {
        return this.zzc;
    }

    public final float zzb() {
        return this.zze;
    }

    public final zzw zzc() {
        return this.zzf;
    }

    public final List zzd() {
        return this.zzg;
    }
}
