package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzwn {
    int zza;
    final int zzb;
    zzwn zzc;
    final Map zzd = new HashMap(0);

    public zzwn(int i, int i2, zzwn zzwnVar) {
        if (i > i2) {
            Segment$$ExternalSyntheticBUOutline0.m847m();
            throw null;
        }
        this.zza = i;
        this.zzb = i2;
        this.zzc = null;
    }

    public final String toString() {
        int iIdentityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(iIdentityHashCode).length() + 4);
        sb.append("Node");
        sb.append(iIdentityHashCode);
        return sb.toString();
    }
}
