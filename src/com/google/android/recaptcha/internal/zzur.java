package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzur {
    private static final zztx zzb = zzuq.zza;
    private static final zzur zzc = zzc();
    private final Map zza = new HashMap();

    public static zzur zza() {
        return zzc;
    }

    private static zzur zzc() {
        zzur zzurVar = new zzur();
        try {
            zzurVar.zzb(zzb, zzuj.class);
            return zzurVar;
        } catch (GeneralSecurityException e) {
            Constants$$ExternalSyntheticBUOutline0.m1006m("unexpected error.", e);
            return null;
        }
    }

    public final synchronized void zzb(zztx zztxVar, Class cls) {
        try {
            Map map = this.zza;
            zztx zztxVar2 = (zztx) map.get(cls);
            if (zztxVar2 != null && !zztxVar2.equals(zztxVar)) {
                String string = cls.toString();
                StringBuilder sb = new StringBuilder(string.length() + 60);
                sb.append("Different key creator for parameters class ");
                sb.append(string);
                sb.append(" already inserted");
                throw new GeneralSecurityException(sb.toString());
            }
            map.put(cls, zztxVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
