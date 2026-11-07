package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzahd implements ObjectEncoder {
    static final zzahd zza = new zzahd();

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("errorCode");
        zzpr zzprVar = new zzpr();
        zzprVar.zza(1);
        builder.withProperty(zzprVar.zzb()).build();
    }

    private zzahd() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
