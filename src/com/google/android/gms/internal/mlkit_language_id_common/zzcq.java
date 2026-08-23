package com.google.android.gms.internal.mlkit_language_id_common;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes4.dex */
final class zzcq implements ObjectEncoder {
    static final zzcq zza = new zzcq();
    private static final FieldDescriptor zzb;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("errorCode");
        zzai zzaiVar = new zzai();
        zzaiVar.zza(1);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
    }

    private zzcq() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
