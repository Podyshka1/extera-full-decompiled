package com.google.android.recaptcha.internal;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class zzago {
    public static final List zza(Object obj, long j) {
        zzage zzageVar = (zzage) zzaig.zzl(obj, j);
        if (zzageVar.zza()) {
            return zzageVar;
        }
        int size = zzageVar.size();
        zzage zzageVarZzg = zzageVar.zzg(size == 0 ? 10 : size + size);
        zzaig.zzm(obj, j, zzageVarZzg);
        return zzageVarZzg;
    }
}
