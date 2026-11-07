package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdf extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzdf> CREATOR = new zzdg();
    private final zzml zza;

    public zzdf(List list) {
        this.zza = list == null ? zzml.zzk() : zzml.zzq(list);
    }

    public final String toString() {
        zzml zzmlVar = this.zza;
        zzku zzkuVarZza = zzku.zza(",");
        Iterator it = zzmlVar.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            zzkuVarZza.zzb(sb, it);
            return sb.toString();
        } catch (IOException e) {
            Buffer$$ExternalSyntheticBUOutline2.m917m(e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzml zzmlVar = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, zzmlVar, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
