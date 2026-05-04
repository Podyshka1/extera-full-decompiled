package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzjz implements ObjectEncoder {
    static final zzjz zza = new zzjz();
    private static final FieldDescriptor zzb;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("identifiedLanguage");
        zzbz zzbzVar = new zzbz();
        zzbzVar.zza(1);
        zzb = builder.withProperty(zzbzVar.zzb()).build();
    }

    private zzjz() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
