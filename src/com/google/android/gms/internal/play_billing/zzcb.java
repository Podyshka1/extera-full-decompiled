package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class zzcb extends zzce {
    private static final zzcb zzb = new zzcb();

    private zzcb() {
        super(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return zza((zzce) obj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "+∞";
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    public final int zza(zzce zzceVar) {
        return zzceVar == this ? 0 : 1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    final void zzc(StringBuilder sb) {
        throw new AssertionError();
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    final void zzd(StringBuilder sb) {
        sb.append("+∞)");
    }
}
