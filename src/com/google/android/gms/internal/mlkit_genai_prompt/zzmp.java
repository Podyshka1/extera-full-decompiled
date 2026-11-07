package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Typography;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmp {
    private final List zza = new ArrayList();

    public final zzmp zza(zzne zzneVar) {
        if (zzneVar.zzb()) {
            f$$ExternalSyntheticBUOutline1.m215m(zzlb.zzd("range must not be empty, but was %s", zzneVar));
            return null;
        }
        this.zza.add(zzneVar);
        return this;
    }

    public final zzmp zzb(zzmp zzmpVar) {
        Iterator it = zzmpVar.zza.iterator();
        while (it.hasNext()) {
            zza((zzne) it.next());
        }
        return this;
    }

    public final zzmq zzc() {
        List list = this.zza;
        zzmh zzmhVar = new zzmh(list.size());
        int i = zzne.$r8$clinit;
        Collections.sort(list, zznd.zza);
        Iterator it = list.iterator();
        zzmv zzmvVar = it instanceof zzmv ? (zzmv) it : new zzmv(it);
        while (zzmvVar.hasNext()) {
            zzne zzneVarZzd = (zzne) zzmvVar.next();
            while (zzmvVar.hasNext()) {
                zzne zzneVar = (zzne) zzmvVar.zza();
                if (zzneVarZzd.zza.zzc(zzneVar.zzb) > 0 || zzneVar.zza.zzc(zzneVarZzd.zzb) > 0) {
                    break;
                }
                zzla.zzb(zzneVarZzd.zzc(zzneVar).zzb(), "Overlapping ranges not permitted but found %s overlapping %s", zzneVarZzd, zzneVar);
                zzneVarZzd = zzneVarZzd.zzd((zzne) zzmvVar.next());
            }
            zzmhVar.zzd(zzneVarZzd);
        }
        zzml zzmlVarZze = zzmhVar.zze();
        if (zzmlVarZze.isEmpty()) {
            return zzmq.zza();
        }
        if (zzmlVarZze.size() == 1) {
            zznt zzntVarListIterator = zzmlVarZze.listIterator(0);
            Object next = zzntVarListIterator.next();
            if (zzntVarListIterator.hasNext()) {
                StringBuilder sb = new StringBuilder("expected one element but was: <");
                sb.append(next);
                for (int i2 = 0; i2 < 4 && zzntVarListIterator.hasNext(); i2++) {
                    sb.append(", ");
                    sb.append(zzntVarListIterator.next());
                }
                if (zzntVarListIterator.hasNext()) {
                    sb.append(", ...");
                }
                sb.append(Typography.greater);
                throw new IllegalArgumentException(sb.toString());
            }
            if (((zzne) next).equals(zzne.zza())) {
                return zzmq.zzb();
            }
        }
        return new zzmq(zzmlVarZze);
    }
}
