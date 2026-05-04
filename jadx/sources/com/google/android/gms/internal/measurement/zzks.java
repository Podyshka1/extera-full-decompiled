package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzks implements zznm {
    protected int zza = 0;

    protected static void zzce(Iterable iterable, List list) {
        zzkr.zzaU(iterable, list);
    }

    public final byte[] zzcc() {
        try {
            int iZzcn = zzcn();
            byte[] bArr = new byte[iZzcn];
            int i = zzlm.$r8$clinit;
            zzlk zzlkVar = new zzlk(bArr, 0, iZzcn);
            zzcB(zzlkVar);
            zzlkVar.zzE();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    abstract int zzcd(zznx zznxVar);
}
