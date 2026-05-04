package com.google.android.gms.internal.clearcut;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzfc implements Iterator {
    private final /* synthetic */ zzfa zzpe;
    private Iterator zzpf;

    zzfc(zzfa zzfaVar) {
        this.zzpe = zzfaVar;
        this.zzpf = zzfaVar.zzpb.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzpf.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.zzpf.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
