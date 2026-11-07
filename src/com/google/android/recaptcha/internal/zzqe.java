package com.google.android.recaptcha.internal;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public class zzqe<K, V> extends zzpz<K, V> implements zzqi<K, V> {
    private final transient zzqb<V> emptySet;
    private transient zzqb zza;

    public zzqe(zzpw zzpwVar, int i, Comparator comparator) {
        super(zzpwVar, i);
        this.emptySet = zzqr.zza;
    }

    public final zzqb zzb() {
        zzqb zzqbVar = this.zza;
        if (zzqbVar != null) {
            return zzqbVar;
        }
        zzqd zzqdVar = new zzqd(this);
        this.zza = zzqdVar;
        return zzqdVar;
    }
}
