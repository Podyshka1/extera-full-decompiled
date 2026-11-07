package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzhe extends zzht {
    private zzml zza;
    private ParcelFileDescriptor zzb;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzht
    public final zzht zza(List list) {
        this.zza = zzml.zzq(list);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzht
    public final zzht zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzb = parcelFileDescriptor;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzht
    public final zzhu zzc() {
        zzml zzmlVar = this.zza;
        byte[] bArr = null;
        if (zzmlVar != null) {
            return new zzhf(zzmlVar, this.zzb, bArr);
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties: promptPrefix");
        return null;
    }
}
