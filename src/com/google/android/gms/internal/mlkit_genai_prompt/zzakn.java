package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
final class zzakn implements ObjectEncoder {
    static final zzakn zza = new zzakn();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("totalCharLength");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("prefixCharLength");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzc = builder2.withProperty(zzprVar2.zzb()).build();
    }

    private zzakn() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzash zzashVar = (zzash) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzashVar.zza());
        objectEncoderContext.add(zzc, zzashVar.zzb());
    }
}
