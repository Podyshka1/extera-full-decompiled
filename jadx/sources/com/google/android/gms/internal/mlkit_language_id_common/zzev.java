package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes.dex */
final class zzev implements ObjectEncoder {
    static final zzev zza = new zzev();
    private static final FieldDescriptor zzb;
    private static final FieldDescriptor zzc;

    static {
        FieldDescriptor.Builder builder = FieldDescriptor.builder("detectorOptions");
        zzai zzaiVar = new zzai();
        zzaiVar.zza(1);
        zzb = builder.withProperty(zzaiVar.zzb()).build();
        FieldDescriptor.Builder builder2 = FieldDescriptor.builder("errorCode");
        zzai zzaiVar2 = new zzai();
        zzaiVar2.zza(2);
        zzc = builder2.withProperty(zzaiVar2.zzb()).build();
    }

    private zzev() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
