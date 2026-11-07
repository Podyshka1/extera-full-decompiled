package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaal {
    private final String zza;
    private final ParcelFileDescriptor zzb;
    private final ParcelFileDescriptor zzc;

    public /* synthetic */ zzaal(String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = str;
        this.zzb = (i & 2) != 0 ? null : parcelFileDescriptor;
        this.zzc = (i & 4) != 0 ? null : parcelFileDescriptor2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaal)) {
            return false;
        }
        zzaal zzaalVar = (zzaal) obj;
        return Intrinsics.areEqual(this.zza, zzaalVar.zza) && Intrinsics.areEqual(this.zzb, zzaalVar.zzb) && Intrinsics.areEqual(this.zzc, zzaalVar.zzc);
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() * 31;
        ParcelFileDescriptor parcelFileDescriptor = this.zzb;
        int iHashCode2 = (iHashCode + (parcelFileDescriptor == null ? 0 : parcelFileDescriptor.hashCode())) * 31;
        ParcelFileDescriptor parcelFileDescriptor2 = this.zzc;
        return iHashCode2 + (parcelFileDescriptor2 != null ? parcelFileDescriptor2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.zza;
        int length = String.valueOf(str).length();
        ParcelFileDescriptor parcelFileDescriptor = this.zzb;
        int length2 = String.valueOf(parcelFileDescriptor).length();
        ParcelFileDescriptor parcelFileDescriptor2 = this.zzc;
        StringBuilder sb = new StringBuilder(length + 54 + length2 + 23 + String.valueOf(parcelFileDescriptor2).length() + 1);
        sb.append("PrefixParameters(promptPrefix=");
        sb.append(str);
        sb.append(", fileDescriptorToWrite=");
        sb.append(parcelFileDescriptor);
        sb.append(", fileDescriptorToRead=");
        sb.append(parcelFileDescriptor2);
        sb.append(")");
        return sb.toString();
    }

    public final String zza() {
        return this.zza;
    }

    public final ParcelFileDescriptor zzb() {
        return this.zzb;
    }

    public final ParcelFileDescriptor zzc() {
        return this.zzc;
    }
}
