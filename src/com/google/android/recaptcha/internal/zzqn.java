package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzqn extends zzqb {
    private final transient zzpw zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzqn(zzpw zzpwVar, Object[] objArr, int i, int i2) {
        this.zza = zzpwVar;
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.recaptcha.internal.zzpq, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzj().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzqb, com.google.android.recaptcha.internal.zzpq
    public final zzqu zza() {
        return zzj().listIterator(0);
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final int zzf(Object[] objArr, int i) {
        return zzj().zzf(objArr, 0);
    }

    @Override // com.google.android.recaptcha.internal.zzqb
    public final zzpt zzk() {
        return new zzqm(this);
    }

    public final /* synthetic */ Object[] zzn() {
        return this.zzb;
    }

    public final /* synthetic */ int zzo() {
        return this.zzc;
    }
}
