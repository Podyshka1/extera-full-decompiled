package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes5.dex */
final class zzafl implements ObjectEncoder {
    static final zzafl zza = new zzafl();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("source");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        builder.withProperty(zzprVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("appliedFilter");
        zzpr zzprVar2 = new zzpr();
        zzprVar2.zza(2);
        builder2.withProperty(zzprVar2.zzb()).build();
        FieldDescriptor.Builder builder3 = FieldDescriptor.builder("isAutoCaptureManuallyTriggered");
        zzpr zzprVar3 = new zzpr();
        zzprVar3.zza(3);
        builder3.withProperty(zzprVar3.zzb()).build();
        FieldDescriptor.Builder builder4 = FieldDescriptor.builder("isRotated");
        zzpr zzprVar4 = new zzpr();
        zzprVar4.zza(4);
        builder4.withProperty(zzprVar4.zzb()).build();
        FieldDescriptor.Builder builder5 = FieldDescriptor.builder("hasLowConfidenceProposedCorners");
        zzpr zzprVar5 = new zzpr();
        zzprVar5.zza(5);
        builder5.withProperty(zzprVar5.zzb()).build();
        FieldDescriptor.Builder builder6 = FieldDescriptor.builder("autoCaptureTriggerLatencyMs");
        zzpr zzprVar6 = new zzpr();
        zzprVar6.zza(6);
        builder6.withProperty(zzprVar6.zzb()).build();
        FieldDescriptor.Builder builder7 = FieldDescriptor.builder("galleryImportProcessingMs");
        zzpr zzprVar7 = new zzpr();
        zzprVar7.zza(7);
        builder7.withProperty(zzprVar7.zzb()).build();
        FieldDescriptor.Builder builder8 = FieldDescriptor.builder("imageWidth");
        zzpr zzprVar8 = new zzpr();
        zzprVar8.zza(8);
        builder8.withProperty(zzprVar8.zzb()).build();
        FieldDescriptor.Builder builder9 = FieldDescriptor.builder("imageHeight");
        zzpr zzprVar9 = new zzpr();
        zzprVar9.zza(9);
        builder9.withProperty(zzprVar9.zzb()).build();
        FieldDescriptor.Builder builder10 = FieldDescriptor.builder("proposedCorners");
        zzpr zzprVar10 = new zzpr();
        zzprVar10.zza(10);
        builder10.withProperty(zzprVar10.zzb()).build();
        FieldDescriptor.Builder builder11 = FieldDescriptor.builder("adjustedCorners");
        zzpr zzprVar11 = new zzpr();
        zzprVar11.zza(11);
        builder11.withProperty(zzprVar11.zzb()).build();
        FieldDescriptor.Builder builder12 = FieldDescriptor.builder("isShadowRemoved");
        zzpr zzprVar12 = new zzpr();
        zzprVar12.zza(12);
        builder12.withProperty(zzprVar12.zzb()).build();
        FieldDescriptor.Builder builder13 = FieldDescriptor.builder("numOfAppliedCleanUpStrokes");
        zzpr zzprVar13 = new zzpr();
        zzprVar13.zza(13);
        builder13.withProperty(zzprVar13.zzb()).build();
        FieldDescriptor.Builder builder14 = FieldDescriptor.builder("numOfAttemptedCleanUpStrokes");
        zzpr zzprVar14 = new zzpr();
        zzprVar14.zza(14);
        builder14.withProperty(zzprVar14.zzb()).build();
        FieldDescriptor.Builder builder15 = FieldDescriptor.builder("finalAutoFilterState");
        zzpr zzprVar15 = new zzpr();
        zzprVar15.zza(15);
        builder15.withProperty(zzprVar15.zzb()).build();
        FieldDescriptor.Builder builder16 = FieldDescriptor.builder("isMultiPageDetection");
        zzpr zzprVar16 = new zzpr();
        zzprVar16.zza(16);
        builder16.withProperty(zzprVar16.zzb()).build();
        FieldDescriptor.Builder builder17 = FieldDescriptor.builder("isAutoCaptureManuallyTriggeredForDuplicateDocument");
        zzpr zzprVar17 = new zzpr();
        zzprVar17.zza(17);
        builder17.withProperty(zzprVar17.zzb()).build();
    }

    private zzafl() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
