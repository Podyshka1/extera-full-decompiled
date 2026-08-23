package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcg {
    private final zzfl zza;

    public zzcg() {
        this(1);
    }

    public final List zwk() {
        return zza();
    }

    public final List zza() {
        return CollectionsKt.toList(this.zza);
    }

    public final boolean zzb(List list) {
        this.zza.add(list);
        return true;
    }

    public zzcg(int i) {
        this.zza = zzfl.zza(i);
    }
}
