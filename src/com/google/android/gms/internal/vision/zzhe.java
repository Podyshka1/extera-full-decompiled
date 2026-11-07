package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzhe;
import com.google.android.gms.internal.vision.zzhf;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzhe<MessageType extends zzhf<MessageType, BuilderType>, BuilderType extends zzhe<MessageType, BuilderType>> implements zzkn {
    public abstract BuilderType zza(MessageType messagetype);

    public abstract BuilderType zza(byte[] bArr, int i, int i2, zzio zzioVar);

    @Override // com.google.android.gms.internal.vision.zzkn
    public final /* synthetic */ zzkn zza(zzkk zzkkVar) {
        if (!zzr().getClass().isInstance(zzkkVar)) {
            f$$ExternalSyntheticBUOutline1.m215m("mergeFrom(MessageLite) can only merge messages of the same type.");
            return null;
        }
        return zza((zzhf) zzkkVar);
    }
}
