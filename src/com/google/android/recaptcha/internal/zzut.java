package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes5.dex */
public final class zzut {
    private static final zzut zzb = new zzut();
    private final ConcurrentMap zza = new ConcurrentHashMap();

    public static zzut zza() {
        return zzb;
    }

    public final void zzb(zzus zzusVar, Class cls) throws GeneralSecurityException {
        zzus zzusVar2 = (zzus) this.zza.putIfAbsent(cls, zzusVar);
        if (zzusVar2 == null || zzusVar2.equals(zzusVar)) {
            return;
        }
        zzsj$$ExternalSyntheticBUOutline1.m456m("Different key creator for parameters class already inserted");
    }
}
