package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzauy implements zzauv {
    final List zza;

    public zzauy(Context context, zzaux zzauxVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzauxVar.zzb()) {
            arrayList.add(new zzavi(context, zzauxVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauv
    public final void zza(zzauu zzauuVar) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzauv) it.next()).zza(zzauuVar);
        }
    }
}
