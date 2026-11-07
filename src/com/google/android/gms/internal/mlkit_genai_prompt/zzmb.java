package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.Serializable;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzmb implements Comparable, Serializable {
    final Comparable zza = _UrlKt.FRAGMENT_ENCODE_SET;

    public zzmb(Comparable comparable) {
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzmb) {
            try {
                if (zzc((zzmb) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public abstract int hashCode();

    public abstract void zza(StringBuilder sb);

    public abstract void zzb(StringBuilder sb);

    public abstract int zzc(zzmb zzmbVar);
}
