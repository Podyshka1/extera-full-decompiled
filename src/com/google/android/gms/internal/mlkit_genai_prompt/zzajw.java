package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes5.dex */
final class zzajw implements ObjectEncoder {
    static final zzajw zza = new zzajw();
    private static final FieldDescriptor zzb;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("generationMode");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
    }

    private zzajw() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        ((ObjectEncoderContext) obj2).add(zzb, ((zzaro) obj).zza());
    }
}
