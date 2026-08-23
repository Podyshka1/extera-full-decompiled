package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbc {
    public static final Appendable zza(Appendable appendable, Iterator it, zzbd zzbdVar, String str) throws IOException {
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            appendable.append(zzbd.zzd(entry.getKey()));
            appendable.append(" : ");
            appendable.append(zzbd.zzd(entry.getValue()));
            while (it.hasNext()) {
                appendable.append(zzbdVar.zza);
                Map.Entry entry2 = (Map.Entry) it.next();
                appendable.append(zzbd.zzd(entry2.getKey()));
                appendable.append(" : ");
                appendable.append(zzbd.zzd(entry2.getValue()));
            }
        }
        return appendable;
    }
}
