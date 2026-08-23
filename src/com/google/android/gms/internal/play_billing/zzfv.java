package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzfv implements zzim {
    protected int zza = 0;

    protected static void zzg(Iterable iterable, List list) {
        zzfu.zzc(iterable, list);
    }

    abstract int zze(zzix zzixVar);

    public final byte[] zzh() {
        try {
            int iZzk = zzk();
            byte[] bArr = new byte[iZzk];
            zzgo zzgoVar = new zzgo(bArr, 0, iZzk);
            zzJ(zzgoVar);
            zzgoVar.zzB();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }
}
