package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes4.dex */
final class zzhf extends zzhu {
    private final zzml zza;
    private final ParcelFileDescriptor zzb;

    public /* synthetic */ zzhf(zzml zzmlVar, ParcelFileDescriptor parcelFileDescriptor, byte[] bArr) {
        this.zza = zzmlVar;
        this.zzb = parcelFileDescriptor;
    }

    public final boolean equals(Object obj) {
        ParcelFileDescriptor parcelFileDescriptor;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhu) {
            zzhu zzhuVar = (zzhu) obj;
            if (this.zza.equals(zzhuVar.zza()) && ((parcelFileDescriptor = this.zzb) != null ? parcelFileDescriptor.equals(zzhuVar.zzb()) : zzhuVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        ParcelFileDescriptor parcelFileDescriptor = this.zzb;
        return (parcelFileDescriptor == null ? 0 : parcelFileDescriptor.hashCode()) ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(length + 46 + strValueOf.length() + 1);
        sb.append("LlmPrefixParam{promptPrefix=");
        sb.append(string);
        sb.append(", cacheFileToRead=");
        sb.append(strValueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhu
    public final zzml zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhu
    public final ParcelFileDescriptor zzb() {
        return this.zzb;
    }
}
