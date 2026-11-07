package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzmv implements zznc {
    private final Iterator zza;
    private boolean zzb;
    private Object zzc;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb || this.zza.hasNext();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zznc, java.util.Iterator
    public final Object next() {
        if (!this.zzb) {
            return this.zza.next();
        }
        Object obj = this.zzc;
        this.zzb = false;
        this.zzc = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzla.zzc(!this.zzb, "Can't remove after you've peeked at next");
        this.zza.remove();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zznc
    public final Object zza() {
        if (!this.zzb) {
            this.zzc = this.zza.next();
            this.zzb = true;
        }
        return this.zzc;
    }

    public zzmv(Iterator it) {
        it.getClass();
        this.zza = it;
    }
}
