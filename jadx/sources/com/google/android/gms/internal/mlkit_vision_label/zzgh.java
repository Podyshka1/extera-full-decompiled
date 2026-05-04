package com.google.android.gms.internal.mlkit_vision_label;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzgh implements ObjectEncoder {
    static final zzgh zza = new zzgh();
    private static final FieldDescriptor zzb;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("api");
        zzci zzciVar = new zzci();
        zzciVar.zza(1);
        zzb = builder.withProperty(zzciVar.zzb()).build();
    }

    private zzgh() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
