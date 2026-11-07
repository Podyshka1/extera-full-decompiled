package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzvj implements Iterable {
    final /* synthetic */ List zza;
    final /* synthetic */ List zzb;

    public zzvj(zzvm zzvmVar, List list, List list2) {
        this.zza = list;
        this.zzb = list2;
        Objects.requireNonNull(zzvmVar);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzvl(this.zza.iterator(), this.zzb.iterator(), null);
    }
}
