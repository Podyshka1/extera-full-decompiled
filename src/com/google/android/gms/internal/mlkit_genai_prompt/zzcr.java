package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcr> CREATOR = new zzcs();
    private final int zza;

    public zzcr(int i) {
        this.zza = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzcr) && this.zza == ((zzcr) obj).zza;
    }

    public final int hashCode() {
        return Integer.hashCode(this.zza);
    }

    public final String toString() {
        int i = this.zza;
        String str = i != 0 ? i != 1 ? i != 2 ? "Unknown" : "NOT_RETRYABLE" : "RETRYABLE" : "UNSPECIFIED";
        StringBuilder sb = new StringBuilder(str.length() + 33);
        sb.append("RetryDetails { retryGuidance = ");
        sb.append(str);
        sb.append(" }");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
