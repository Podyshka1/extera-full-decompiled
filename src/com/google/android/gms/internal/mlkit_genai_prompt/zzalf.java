package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes5.dex */
final class zzalf implements ObjectEncoder {
    static final zzalf zza = new zzalf();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;
    private static final FieldDescriptor zze;
    private static final FieldDescriptor zzf;
    private static final FieldDescriptor zzg;
    private static final FieldDescriptor zzh;
    private static final FieldDescriptor zzi;
    private static final FieldDescriptor zzj;
    private static final FieldDescriptor zzk;
    private static final FieldDescriptor zzl;
    private static final FieldDescriptor zzm;
    private static final FieldDescriptor zzn;
    private static final FieldDescriptor zzo;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("appId");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        zzb = builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("appVersion");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        zzc = builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("firebaseProjectId");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        zzd = builder3.withProperty(zzprVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("mlSdkVersion");
        zzpr zzprVar4 = new zzpr();
        zzprVar4.zza(4);
        zze = builder4.withProperty(zzprVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("tfliteSchemaVersion");
        zzpr zzprVar5 = new zzpr();
        zzprVar5.zza(5);
        zzf = builder5.withProperty(zzprVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("gcmSenderId");
        zzpr zzprVar6 = new zzpr();
        zzprVar6.zza(6);
        zzg = builder6.withProperty(zzprVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("apiKey");
        zzpr zzprVar7 = new zzpr();
        zzprVar7.zza(7);
        zzh = builder7.withProperty(zzprVar7.zzb()).build();
        FieldDescriptor.Builder builder8 = FieldDescriptor.builder("languages");
        zzpr zzprVar8 = new zzpr();
        zzprVar8.zza(8);
        zzi = builder8.withProperty(zzprVar8.zzb()).build();
        FieldDescriptor.Builder builder9 = FieldDescriptor.builder("mlSdkInstanceId");
        zzpr zzprVar9 = new zzpr();
        zzprVar9.zza(9);
        zzj = builder9.withProperty(zzprVar9.zzb()).build();
        FieldDescriptor.Builder builder10 = FieldDescriptor.builder("isClearcutClient");
        zzpr zzprVar10 = new zzpr();
        zzprVar10.zza(10);
        zzk = builder10.withProperty(zzprVar10.zzb()).build();
        FieldDescriptor.Builder builder11 = FieldDescriptor.builder("isStandaloneMlkit");
        zzpr zzprVar11 = new zzpr();
        zzprVar11.zza(11);
        zzl = builder11.withProperty(zzprVar11.zzb()).build();
        FieldDescriptor.Builder builder12 = FieldDescriptor.builder("isJsonLogging");
        zzpr zzprVar12 = new zzpr();
        zzprVar12.zza(12);
        zzm = builder12.withProperty(zzprVar12.zzb()).build();
        FieldDescriptor.Builder builder13 = FieldDescriptor.builder("buildLevel");
        zzpr zzprVar13 = new zzpr();
        zzprVar13.zza(13);
        zzn = builder13.withProperty(zzprVar13.zzb()).build();
        FieldDescriptor.Builder builder14 = FieldDescriptor.builder("optionalModuleVersion");
        zzpr zzprVar14 = new zzpr();
        zzprVar14.zza(14);
        zzo = builder14.withProperty(zzprVar14.zzb()).build();
    }

    private zzalf() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzata zzataVar = (zzata) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzataVar.zza());
        objectEncoderContext.add(zzc, zzataVar.zzb());
        objectEncoderContext.add(zzd, (Object) null);
        objectEncoderContext.add(zze, zzataVar.zzc());
        objectEncoderContext.add(zzf, zzataVar.zzd());
        objectEncoderContext.add(zzg, (Object) null);
        objectEncoderContext.add(zzh, (Object) null);
        objectEncoderContext.add(zzi, zzataVar.zze());
        objectEncoderContext.add(zzj, zzataVar.zzf());
        objectEncoderContext.add(zzk, zzataVar.zzg());
        objectEncoderContext.add(zzl, zzataVar.zzh());
        objectEncoderContext.add(zzm, zzataVar.zzi());
        objectEncoderContext.add(zzn, zzataVar.zzj());
        objectEncoderContext.add(zzo, zzataVar.zzk());
    }
}
