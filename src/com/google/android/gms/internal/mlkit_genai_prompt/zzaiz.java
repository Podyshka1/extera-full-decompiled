package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzaiz implements ObjectEncoder {
    static final zzaiz zza = new zzaiz();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("confidence");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        builder.withProperty(zzprVar.zzb()).build();
    }

    private zzaiz() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
