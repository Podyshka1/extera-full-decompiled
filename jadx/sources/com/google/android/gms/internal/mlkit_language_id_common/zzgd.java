package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;

/* JADX INFO: loaded from: classes.dex */
final class zzgd implements ObjectEncoder {
    static final zzgd zza = new zzgd();
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
        zzai zzaiVar = new zzai();
        zzaiVar.zza(1);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("appVersion");
        zzai zzaiVar2 = new zzai();
        zzaiVar2.zza(2);
        zzc = builder2.withProperty(zzaiVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("firebaseProjectId");
        zzai zzaiVar3 = new zzai();
        zzaiVar3.zza(3);
        zzd = builder3.withProperty(zzaiVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("mlSdkVersion");
        zzai zzaiVar4 = new zzai();
        zzaiVar4.zza(4);
        zze = builder4.withProperty(zzaiVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("tfliteSchemaVersion");
        zzai zzaiVar5 = new zzai();
        zzaiVar5.zza(5);
        zzf = builder5.withProperty(zzaiVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("gcmSenderId");
        zzai zzaiVar6 = new zzai();
        zzaiVar6.zza(6);
        zzg = builder6.withProperty(zzaiVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("apiKey");
        zzai zzaiVar7 = new zzai();
        zzaiVar7.zza(7);
        zzh = builder7.withProperty(zzaiVar7.zzb()).build();
        FieldDescriptor.Builder builder8 = FieldDescriptor.builder("languages");
        zzai zzaiVar8 = new zzai();
        zzaiVar8.zza(8);
        zzi = builder8.withProperty(zzaiVar8.zzb()).build();
        FieldDescriptor.Builder builder9 = FieldDescriptor.builder("mlSdkInstanceId");
        zzai zzaiVar9 = new zzai();
        zzaiVar9.zza(9);
        zzj = builder9.withProperty(zzaiVar9.zzb()).build();
        FieldDescriptor.Builder builder10 = FieldDescriptor.builder("isClearcutClient");
        zzai zzaiVar10 = new zzai();
        zzaiVar10.zza(10);
        zzk = builder10.withProperty(zzaiVar10.zzb()).build();
        FieldDescriptor.Builder builder11 = FieldDescriptor.builder("isStandaloneMlkit");
        zzai zzaiVar11 = new zzai();
        zzaiVar11.zza(11);
        zzl = builder11.withProperty(zzaiVar11.zzb()).build();
        FieldDescriptor.Builder builder12 = FieldDescriptor.builder("isJsonLogging");
        zzai zzaiVar12 = new zzai();
        zzaiVar12.zza(12);
        zzm = builder12.withProperty(zzaiVar12.zzb()).build();
        FieldDescriptor.Builder builder13 = FieldDescriptor.builder("buildLevel");
        zzai zzaiVar13 = new zzai();
        zzaiVar13.zza(13);
        zzn = builder13.withProperty(zzaiVar13.zzb()).build();
        FieldDescriptor.Builder builder14 = FieldDescriptor.builder("optionalModuleVersion");
        zzai zzaiVar14 = new zzai();
        zzaiVar14.zza(14);
        zzo = builder14.withProperty(zzaiVar14.zzb()).build();
    }

    private zzgd() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        zzke zzkeVar = (zzke) obj;
        ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
        objectEncoderContext.add(zzb, zzkeVar.zzg());
        objectEncoderContext.add(zzc, zzkeVar.zzh());
        objectEncoderContext.add(zzd, (Object) null);
        objectEncoderContext.add(zze, zzkeVar.zzj());
        objectEncoderContext.add(zzf, zzkeVar.zzk());
        objectEncoderContext.add(zzg, (Object) null);
        objectEncoderContext.add(zzh, (Object) null);
        objectEncoderContext.add(zzi, zzkeVar.zza());
        objectEncoderContext.add(zzj, zzkeVar.zzi());
        objectEncoderContext.add(zzk, zzkeVar.zzb());
        objectEncoderContext.add(zzl, zzkeVar.zzd());
        objectEncoderContext.add(zzm, zzkeVar.zzc());
        objectEncoderContext.add(zzn, zzkeVar.zze());
        objectEncoderContext.add(zzo, zzkeVar.zzf());
    }
}
