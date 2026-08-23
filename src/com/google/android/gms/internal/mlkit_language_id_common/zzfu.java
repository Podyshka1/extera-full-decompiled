package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes.dex */
final class zzfu implements ObjectEncoder {
    static final zzfu zza = new zzfu();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;
    private static final FieldDescriptor zze;
    private static final FieldDescriptor zzf;
    private static final FieldDescriptor zzg;
    private static final FieldDescriptor zzh;
    private static final FieldDescriptor zzi;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("inferenceCommonLogEvent");
        zzai zzaiVar = new zzai();
        zzaiVar.zza(1);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("options");
        zzai zzaiVar2 = new zzai();
        zzaiVar2.zza(2);
        zzc = builder2.withProperty(zzaiVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("inputLength");
        zzai zzaiVar3 = new zzai();
        zzaiVar3.zza(3);
        zzd = builder3.withProperty(zzaiVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("outputLength");
        zzai zzaiVar4 = new zzai();
        zzaiVar4.zza(4);
        zze = builder4.withProperty(zzaiVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("loadDictionaryErrorCode");
        zzai zzaiVar5 = new zzai();
        zzaiVar5.zza(5);
        zzf = builder5.withProperty(zzaiVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("translateResultStatusCode");
        zzai zzaiVar6 = new zzai();
        zzaiVar6.zza(6);
        zzg = builder6.withProperty(zzaiVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("status");
        zzai zzaiVar7 = new zzai();
        zzaiVar7.zza(7);
        zzh = builder7.withProperty(zzaiVar7.zzb()).build();
        FieldDescriptor.Builder builder8 = FieldDescriptor.builder("downloadHttpResponseCode");
        zzai zzaiVar8 = new zzai();
        zzaiVar8.zza(8);
        zzi = builder8.withProperty(zzaiVar8.zzb()).build();
    }

    private zzfu() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
