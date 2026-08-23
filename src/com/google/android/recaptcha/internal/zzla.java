package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzla implements Iterator {
    final /* synthetic */ zzle zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    public /* synthetic */ zzla(zzle zzleVar, zzkz zzkzVar) {
        this.zza = zzleVar;
    }

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzc.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb + 1 >= this.zza.zzb.size()) {
            return !this.zza.zzc.isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.zzc = true;
        int i = this.zzb + 1;
        this.zzb = i;
        return i < this.zza.zzb.size() ? (Map.Entry) this.zza.zzb.get(this.zzb) : (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzc) {
            Segment$$ExternalSyntheticBUOutline1.m848m("remove() was called before next()");
            return;
        }
        this.zzc = false;
        this.zza.zzn();
        if (this.zzb >= this.zza.zzb.size()) {
            zza().remove();
            return;
        }
        zzle zzleVar = this.zza;
        int i = this.zzb;
        this.zzb = i - 1;
        zzleVar.zzl(i);
    }
}
