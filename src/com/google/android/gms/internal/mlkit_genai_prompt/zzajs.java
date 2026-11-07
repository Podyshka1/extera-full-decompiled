package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes5.dex */
final class zzajs implements ObjectEncoder {
    static final zzajs zza = new zzajs();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("options");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("sapiInferenceCommonEvent");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzc = builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("totalTokens");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        zzd = builder3.withProperty(zzprVar3.zzb()).build();
    }

    private zzajs() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzarf zzarfVar = (zzarf) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzarfVar.zza());
        objectEncoderContext.add(zzc, zzarfVar.zzb());
        objectEncoderContext.add(zzd, zzarfVar.zzc());
    }
}
