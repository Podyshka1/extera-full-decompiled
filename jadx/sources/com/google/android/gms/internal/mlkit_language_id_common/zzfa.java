package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes.dex */
final class zzfa implements ObjectEncoder {
    static final zzfa zza = new zzfa();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("confidence");
        zzai zzaiVar = new zzai();
        zzaiVar.zza(1);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("languageCode");
        zzai zzaiVar2 = new zzai();
        zzaiVar2.zza(2);
        zzc = builder2.withProperty(zzaiVar2.zzb()).build();
    }

    private zzfa() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzix zzixVar = (zzix) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzixVar.zza());
        objectEncoderContext.add(zzc, zzixVar.zzb());
    }
}
