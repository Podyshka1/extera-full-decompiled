package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes5.dex */
final class zzajq implements ObjectEncoder {
    static final zzajq zza = new zzajq();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("modality");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("size");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzc = builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("textInfo");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        zzd = builder3.withProperty(zzprVar3.zzb()).build();
    }

    private zzajq() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzarb zzarbVar = (zzarb) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzarbVar.zza());
        objectEncoderContext.add(zzc, zzarbVar.zzb());
        objectEncoderContext.add(zzd, zzarbVar.zzc());
    }
}
