package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.Iterator;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbd {
    private final String zza = ",\n  ";

    private zzbd(String str) {
    }

    public static zzbd zza(String str) {
        return new zzbd(",\n  ");
    }

    static final CharSequence zzd(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final StringBuilder zzc(StringBuilder sb, Iterator it) {
        try {
            if (it.hasNext()) {
                sb.append(zzd(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) this.zza);
                    sb.append(zzd(it.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
