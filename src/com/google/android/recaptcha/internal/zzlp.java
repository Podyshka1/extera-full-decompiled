package com.google.android.recaptcha.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class zzlp implements Iterator {
    final Iterator zza;
    final /* synthetic */ zzlq zzb;

    zzlp(zzlq zzlqVar) {
        this.zzb = zzlqVar;
        this.zza = zzlqVar.zza.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
