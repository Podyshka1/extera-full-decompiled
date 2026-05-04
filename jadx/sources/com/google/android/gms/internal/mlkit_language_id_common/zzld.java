package com.google.android.gms.internal.mlkit_language_id_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzld implements zzlh {
    final List zza;

    public zzld(Context context, zzlc zzlcVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzlcVar.zzc()) {
            arrayList.add(new zzlq(context, zzlcVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzlh
    public final void zza(zzla zzlaVar) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzlh) it.next()).zza(zzlaVar);
        }
    }
}
