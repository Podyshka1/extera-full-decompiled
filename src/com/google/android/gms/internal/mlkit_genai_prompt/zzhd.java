package com.google.android.gms.internal.mlkit_genai_prompt;

import android.graphics.Bitmap;
import android.net.Uri;

/* JADX INFO: loaded from: classes5.dex */
final class zzhd extends zzhs {
    private final int zza;
    private final String zzb;
    private final Bitmap zzc;
    private final int zzd;

    public zzhd(int i, String str, Bitmap bitmap, Uri uri, Uri uri2, zzhq zzhqVar, zzhr zzhrVar, int i2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = bitmap;
        this.zzd = i2;
    }

    public final boolean equals(Object obj) {
        String str;
        Bitmap bitmap;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhs) {
            zzhs zzhsVar = (zzhs) obj;
            if (this.zza == zzhsVar.zza() && ((str = this.zzb) != null ? str.equals(zzhsVar.zzb()) : zzhsVar.zzb() == null) && ((bitmap = this.zzc) != null ? bitmap.equals(zzhsVar.zzc()) : zzhsVar.zzc() == null)) {
                zzhsVar.zzd();
                zzhsVar.zze();
                zzhsVar.zzf();
                zzhsVar.zzg();
                if (this.zzd == zzhsVar.zzh()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zzc);
        int i = this.zza;
        int length = String.valueOf(i).length();
        String str = this.zzb;
        int length2 = String.valueOf(str).length();
        int length3 = strValueOf.length();
        int i2 = this.zzd;
        StringBuilder sb = new StringBuilder(length + 26 + length2 + 9 + length3 + 68 + String.valueOf(i2).length() + 1);
        sb.append("LlmMessage{role=");
        sb.append(i);
        sb.append(", message=");
        sb.append(str);
        sb.append(", bitmap=");
        sb.append(strValueOf);
        sb.append(", imageEmbedding=null, uriToWrite=null, audio=null, blob=null, type=");
        sb.append(i2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final Bitmap zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final Uri zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final Uri zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final zzhq zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final zzhr zzg() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhs
    public final int zzh() {
        return this.zzd;
    }

    public final int hashCode() {
        String str = this.zzb;
        int iHashCode = str == null ? 0 : str.hashCode();
        int i = this.zza;
        Bitmap bitmap = this.zzc;
        return this.zzd ^ ((((iHashCode ^ ((i ^ 1000003) * 1000003)) * 1000003) ^ (bitmap != null ? bitmap.hashCode() : 0)) * (-429739981));
    }
}
