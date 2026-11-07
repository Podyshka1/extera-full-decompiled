package com.google.android.gms.internal.mlkit_genai_prompt;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class zzly extends zzmb {
    private static final zzly zzb = new zzly();

    private zzly() {
        super(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return zzc((zzmb) obj);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmb
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "+∞";
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmb
    public final void zza(StringBuilder sb) {
        throw new AssertionError();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmb
    public final void zzb(StringBuilder sb) {
        sb.append("+∞)");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmb
    public final int zzc(zzmb zzmbVar) {
        return zzmbVar == this ? 0 : 1;
    }
}
