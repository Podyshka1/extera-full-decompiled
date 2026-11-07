package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzafe implements ObjectEncoder {
    static final zzafe zza = new zzafe();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("screenName");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("sessionId");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("timestampMs");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        builder3.withProperty(zzprVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("options");
        zzpr zzprVar4 = new zzpr();
        zzprVar4.zza(4);
        builder4.withProperty(zzprVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("elementName");
        zzpr zzprVar5 = new zzpr();
        zzprVar5.zza(5);
        builder5.withProperty(zzprVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("isAutoCaptureMode");
        zzpr zzprVar6 = new zzpr();
        zzprVar6.zza(6);
        builder6.withProperty(zzprVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("pageIndex");
        zzpr zzprVar7 = new zzpr();
        zzprVar7.zza(7);
        builder7.withProperty(zzprVar7.zzb()).build();
        FieldDescriptor.Builder builder8 = FieldDescriptor.builder("appliedToAllPages");
        zzpr zzprVar8 = new zzpr();
        zzprVar8.zza(8);
        builder8.withProperty(zzprVar8.zzb()).build();
        FieldDescriptor.Builder builder9 = FieldDescriptor.builder("errorCode");
        zzpr zzprVar9 = new zzpr();
        zzprVar9.zza(9);
        builder9.withProperty(zzprVar9.zzb()).build();
        FieldDescriptor.Builder builder10 = FieldDescriptor.builder("callerAppId");
        zzpr zzprVar10 = new zzpr();
        zzprVar10.zza(10);
        builder10.withProperty(zzprVar10.zzb()).build();
        FieldDescriptor.Builder builder11 = FieldDescriptor.builder("cleanUpStrokeSize");
        zzpr zzprVar11 = new zzpr();
        zzprVar11.zza(11);
        builder11.withProperty(zzprVar11.zzb()).build();
        FieldDescriptor.Builder builder12 = FieldDescriptor.builder("mediapipeErrorCalculatorId");
        zzpr zzprVar12 = new zzpr();
        zzprVar12.zza(12);
        builder12.withProperty(zzprVar12.zzb()).build();
    }

    private zzafe() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
