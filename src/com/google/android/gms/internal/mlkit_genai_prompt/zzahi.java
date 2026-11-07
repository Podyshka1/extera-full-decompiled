package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzahi implements ObjectEncoder {
    static final zzahi zza = new zzahi();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("inferenceCommonLogEvent");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("options");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("imageInfo");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        builder3.withProperty(zzprVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("documentPresenceConfidence");
        zzpr zzprVar4 = new zzpr();
        zzprVar4.zza(4);
        builder4.withProperty(zzprVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("documentCornerConfidence");
        zzpr zzprVar5 = new zzpr();
        zzprVar5.zza(5);
        builder5.withProperty(zzprVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("documentRotationSuggestionDegrees");
        zzpr zzprVar6 = new zzpr();
        zzprVar6.zza(6);
        builder6.withProperty(zzprVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("documentRotationSuggestionConfidence");
        zzpr zzprVar7 = new zzpr();
        zzprVar7.zza(7);
        builder7.withProperty(zzprVar7.zzb()).build();
    }

    private zzahi() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
