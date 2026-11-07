package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class zzty {
    private static final Logger zza = Logger.getLogger(zzty.class.getName());
    private static final zzty zzd = new zzty();
    private final ConcurrentMap zzb = new ConcurrentHashMap();
    private final ConcurrentMap zzc = new ConcurrentHashMap();

    public static zzty zza() {
        return zzd;
    }

    private final synchronized void zzd(zzsf zzsfVar, boolean z, boolean z2) {
        try {
            String strZza = zzsfVar.zza();
            if (z2) {
                ConcurrentMap concurrentMap = this.zzc;
                if (concurrentMap.containsKey(strZza) && !((Boolean) concurrentMap.get(strZza)).booleanValue()) {
                    throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(strZza));
                }
            }
            ConcurrentMap concurrentMap2 = this.zzb;
            zzsf zzsfVar2 = (zzsf) concurrentMap2.get(strZza);
            if (zzsfVar2 != null && !zzsfVar2.getClass().equals(zzsfVar.getClass())) {
                zza.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(strZza));
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", strZza, zzsfVar2.getClass().getName(), zzsfVar.getClass().getName()));
            }
            concurrentMap2.putIfAbsent(strZza, zzsfVar);
            this.zzc.put(strZza, Boolean.valueOf(z2));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb(zzsf zzsfVar, boolean z) {
        zzc(zzsfVar, 1, z);
    }

    public final synchronized void zzc(zzsf zzsfVar, int i, boolean z) {
        if (!zzte.zza(i)) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        zzd(zzsfVar, false, z);
    }
}
