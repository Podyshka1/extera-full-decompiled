package com.google.android.gms.internal.mlkit_genai_prompt;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes4.dex */
final class zzaju implements ObjectEncoder {
    static final zzaju zza = new zzaju();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("options");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder(PluginsConstants.REQUEST);
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzc = builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("sapiInferenceCommonEvent");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        zzd = builder3.withProperty(zzprVar3.zzb()).build();
    }

    private zzaju() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzarj zzarjVar = (zzarj) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzarjVar.zza());
        objectEncoderContext.add(zzc, zzarjVar.zzb());
        objectEncoderContext.add(zzd, zzarjVar.zzc());
    }
}
