package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes.dex */
final class zzfh implements ObjectEncoder {
    static final zzfh zza = new zzfh();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;
    private static final FieldDescriptor zze;
    private static final FieldDescriptor zzf;
    private static final FieldDescriptor zzg;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("inferenceCommonLogEvent");
        zzai zzaiVar = new zzai();
        zzaiVar.zza(1);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("imageInfo");
        zzai zzaiVar2 = new zzai();
        zzaiVar2.zza(2);
        zzc = builder2.withProperty(zzaiVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("detectorOptions");
        zzai zzaiVar3 = new zzai();
        zzaiVar3.zza(3);
        zzd = builder3.withProperty(zzaiVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("loadDurationMs");
        zzai zzaiVar4 = new zzai();
        zzaiVar4.zza(4);
        zze = builder4.withProperty(zzaiVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("sessionDurationMs");
        zzai zzaiVar5 = new zzai();
        zzaiVar5.zza(5);
        zzf = builder5.withProperty(zzaiVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("sessionTotalInferenceDurationMs");
        zzai zzaiVar6 = new zzai();
        zzaiVar6.zza(6);
        zzg = builder6.withProperty(zzaiVar6.zzb()).build();
    }

    private zzfh() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
