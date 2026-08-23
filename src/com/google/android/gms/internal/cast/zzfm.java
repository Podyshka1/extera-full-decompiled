package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfm> CREATOR = new zzfl();
    private final String zza;
    private final byte[] zzb;
    private final List zzc;

    public zzfm(String str, byte[] bArr, List list) {
        this.zza = str;
        this.zzb = bArr;
        this.zzc = list == null ? new ArrayList(0) : new ArrayList(list);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfm)) {
            return false;
        }
        zzfm zzfmVar = (zzfm) obj;
        return Objects.equal(this.zza, zzfmVar.zza) && Objects.equal(this.zzb, zzfmVar.zzb) && Objects.equal(this.zzc, zzfmVar.zzc);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeIntegerList(parcel, 3, new ArrayList(this.zzc), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
