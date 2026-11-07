package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzkt {
    public static final Appendable zza(Appendable appendable, Iterator it, zzku zzkuVar, String str) throws IOException {
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            appendable.append(zzku.zzd(entry.getKey()));
            appendable.append(str);
            appendable.append(zzku.zzd(entry.getValue()));
            while (it.hasNext()) {
                appendable.append(zzkuVar.zzc());
                Map.Entry entry2 = (Map.Entry) it.next();
                appendable.append(zzku.zzd(entry2.getKey()));
                appendable.append(str);
                appendable.append(zzku.zzd(entry2.getValue()));
            }
        }
        return appendable;
    }
}
