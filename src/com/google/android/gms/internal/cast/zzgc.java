package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgc> CREATOR = new zzgd();
    private final int zza;
    private final boolean zzb;
    private final List zzc;
    private final int zzd;
    private final String zze;
    private final boolean zzf;

    public zzgc(int i, boolean z, List list, int i2, String str, boolean z2) {
        ArrayList arrayList = new ArrayList();
        this.zzc = arrayList;
        this.zza = i;
        this.zzb = z;
        if (list != null) {
            arrayList.addAll(list);
        }
        this.zzd = i2;
        this.zze = str;
        this.zzf = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzb);
        SafeParcelWriter.writeStringList(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zzd);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzf);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.zza;
    }
}
