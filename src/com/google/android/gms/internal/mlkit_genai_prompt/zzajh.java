package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes5.dex */
final class zzajh implements ObjectEncoder {
    static final zzajh zza = new zzajh();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("languageOption");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(3);
        builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("isUsingLegacyApi");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(4);
        builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("sdkVersion");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(5);
        builder3.withProperty(zzprVar3.zzb()).build();
    }

    private zzajh() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
