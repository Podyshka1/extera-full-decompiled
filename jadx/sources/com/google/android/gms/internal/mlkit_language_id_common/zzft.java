package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes.dex */
final class zzft implements ObjectEncoder {
    static final zzft zza = new zzft();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;
    private static final FieldDescriptor zzd;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("languageOption");
        zzai zzaiVar = new zzai();
        zzaiVar.zza(3);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("isUsingLegacyApi");
        zzai zzaiVar2 = new zzai();
        zzaiVar2.zza(4);
        zzc = builder2.withProperty(zzaiVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("sdkVersion");
        zzai zzaiVar3 = new zzai();
        zzaiVar3.zza(5);
        zzd = builder3.withProperty(zzaiVar3.zzb()).build();
    }

    private zzft() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
