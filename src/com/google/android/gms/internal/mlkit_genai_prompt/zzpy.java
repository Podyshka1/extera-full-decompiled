package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzpy implements ObjectEncoder {
    static final /* synthetic */ zzpy zza = new zzpy();

    private /* synthetic */ zzpy() {
    }

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final /* synthetic */ void encode(Object obj, Object obj2) {
        int i = zzpz.$r8$clinit;
        throw new EncodingException("Couldn't find encoder for type ".concat(String.valueOf(obj.getClass().getCanonicalName())));
    }
}
