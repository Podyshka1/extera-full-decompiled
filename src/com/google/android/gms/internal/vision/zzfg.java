package com.google.android.gms.internal.vision;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzfg {
    private final ConcurrentHashMap zza = new ConcurrentHashMap(16, 0.75f, 10);
    private final ReferenceQueue zzb = new ReferenceQueue();

    zzfg() {
    }

    public final List zza(Throwable th, boolean z) {
        Reference referencePoll = this.zzb.poll();
        while (referencePoll != null) {
            this.zza.remove(referencePoll);
            referencePoll = this.zzb.poll();
        }
        List list = (List) this.zza.get(new zzff(th, null));
        if (!z || list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List list2 = (List) this.zza.putIfAbsent(new zzff(th, this.zzb), vector);
        return list2 == null ? vector : list2;
    }
}
