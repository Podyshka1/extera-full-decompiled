package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzfu;
import com.google.android.gms.internal.play_billing.zzfv;
import com.google.android.recaptcha.internal.zzgf$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzfv<MessageType extends zzfv<MessageType, BuilderType>, BuilderType extends zzfu<MessageType, BuilderType>> implements zzim {
    protected int zza = 0;

    public static void zzg(Iterable iterable, List list) {
        zzfu.zzc(iterable, list);
    }

    public abstract int zze(zzix zzixVar);

    public final byte[] zzh() {
        try {
            int iZzk = zzk();
            byte[] bArr = new byte[iZzk];
            zzgo zzgoVar = new zzgo(bArr, 0, iZzk);
            zzJ(zzgoVar);
            zzgoVar.zzB();
            return bArr;
        } catch (IOException e) {
            zzgf$$ExternalSyntheticBUOutline0.m441m("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen).", e);
            return null;
        }
    }
}
