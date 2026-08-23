package com.google.android.gms.internal.vision;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzmb implements Iterator {
    private Iterator zza;
    private final /* synthetic */ zzlz zzb;

    zzmb(zzlz zzlzVar) {
        this.zzb = zzlzVar;
        this.zza = zzlzVar.zza.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.zza.next();
    }
}
