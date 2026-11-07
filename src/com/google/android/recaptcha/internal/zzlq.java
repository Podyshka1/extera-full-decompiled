package com.google.android.recaptcha.internal;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlq {
    private final zzln zza;

    public /* synthetic */ zzlq(Context context, zzln zzlnVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        zzlm zzlmVar = null;
        try {
            zzlm zzlmVar2 = zzlm.zzd;
            zzlmVar2 = zzlmVar2 == null ? new zzlm(context, null) : zzlmVar2;
            zzlm.zzd = zzlmVar2;
            zzlmVar = zzlmVar2;
        } catch (Exception unused) {
        }
        this.zza = zzlmVar;
    }

    public final void zza(List list) {
        synchronized (zzlm.class) {
            try {
                try {
                    zzln zzlnVar = this.zza;
                    if (zzlnVar != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            zzlnVar.zza((zzlo) it.next());
                        }
                        int iZzb = zzlnVar.zzb() - 500;
                        if (iZzb > 0) {
                            zzlnVar.zzd(CollectionsKt.take(zzlnVar.zzc(), iZzb));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception unused) {
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void zzb(zzamk zzamkVar) {
        byte[] bArrZzw = zzamkVar.zzw();
        zza(CollectionsKt.listOf(new zzlo(zzrv.zzi().zzg(bArrZzw, 0, bArrZzw.length), System.currentTimeMillis(), 0)));
    }

    public final List zzc() {
        List listEmptyList;
        synchronized (zzlm.class) {
            try {
                try {
                    zzln zzlnVar = this.zza;
                    if (zzlnVar == null || (listEmptyList = zzlnVar.zzc()) == null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                } catch (Exception unused) {
                    listEmptyList = CollectionsKt.emptyList();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return listEmptyList;
    }

    public final void zzd(List list) {
        synchronized (zzlm.class) {
            try {
                zzln zzlnVar = this.zza;
                if (zzlnVar != null) {
                    zzlnVar.zzd(list);
                }
            } catch (Exception unused) {
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}
