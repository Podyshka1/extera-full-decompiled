package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes5.dex */
final class zzaka implements ObjectEncoder {
    static final zzaka zza = new zzaka();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;
    private static final FieldDescriptor zze;
    private static final FieldDescriptor zzf;
    private static final FieldDescriptor zzg;
    private static final FieldDescriptor zzh;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("featureVersion");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("errorCode");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzc = builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("isColdCall");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        zzd = builder3.withProperty(zzprVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("inputSize");
        zzpr zzprVar4 = new zzpr();
        zzprVar4.zza(4);
        zze = builder4.withProperty(zzprVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("outputSize");
        zzpr zzprVar5 = new zzpr();
        zzprVar5.zza(5);
        zzf = builder5.withProperty(zzprVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("latencyMs");
        zzpr zzprVar6 = new zzpr();
        zzprVar6.zza(6);
        zzg = builder6.withProperty(zzprVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("firstTokenLatencyMs");
        zzpr zzprVar7 = new zzpr();
        zzprVar7.zza(7);
        zzh = builder7.withProperty(zzprVar7.zzb()).build();
    }

    private zzaka() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzart zzartVar = (zzart) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzartVar.zza());
        objectEncoderContext.add(zzc, zzartVar.zzb());
        objectEncoderContext.add(zzd, zzartVar.zzc());
        objectEncoderContext.add(zze, zzartVar.zzd());
        objectEncoderContext.add(zzf, zzartVar.zze());
        objectEncoderContext.add(zzg, zzartVar.zzf());
        objectEncoderContext.add(zzh, zzartVar.zzg());
    }
}
