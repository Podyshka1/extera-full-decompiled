package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzku {
    private final String zza;

    private zzku(String str) {
        this.zza = str;
    }

    public static zzku zza(String str) {
        return new zzku(str);
    }

    public static final CharSequence zzd(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final Appendable zzb(Appendable appendable, Iterator it) throws IOException {
        if (it.hasNext()) {
            appendable.append(zzd(it.next()));
            while (it.hasNext()) {
                appendable.append(this.zza);
                appendable.append(zzd(it.next()));
            }
        }
        return appendable;
    }

    public final /* synthetic */ String zzc() {
        return this.zza;
    }
}
