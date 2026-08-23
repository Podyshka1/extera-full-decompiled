package com.google.android.gms.cast.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzd extends zzp {
    private final List zzb;

    public zzd(String str, String str2, String str3) {
        super(str, "MediaControlChannel", null);
        this.zzb = DesugarCollections.synchronizedList(new ArrayList());
    }

    protected final List zza() {
        return this.zzb;
    }

    protected final void zzb() {
        synchronized (this.zzb) {
            try {
                Iterator it = this.zzb.iterator();
                while (it.hasNext()) {
                    ((zzau) it.next()).zzc(2002);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final void zzc(zzau zzauVar) {
        this.zzb.add(zzauVar);
    }
}
