package com.google.android.gms.internal.measurement;

import androidx.media3.exoplayer.mediacodec.AbstractC0748xa830b2f;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
final class zzvk extends AbstractFuture {
    private zzvm zza;
    private final int zzb;

    public /* synthetic */ zzvk(zzvm zzvmVar, int i, byte[] bArr) {
        this.zza = zzvmVar;
        this.zzb = i;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        zzvl zzvlVar;
        zzvm zzvmVar = this.zza;
        this.zza = null;
        if (zzvmVar != null && zzvmVar.zze()) {
            do {
                zzvlVar = (zzvl) zzvmVar.zzg().get();
                if (zzvlVar == null) {
                    return;
                }
                if (zzvlVar.zza() > this.zzb) {
                    return;
                } else {
                    zzvlVar.cancel(true);
                }
            } while (!AbstractC0748xa830b2f.m184m(zzvmVar.zzg(), zzvlVar, null));
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        AsyncCallable asyncCallableZza;
        zzvm zzvmVar = this.zza;
        if (zzvmVar == null || (asyncCallableZza = zzvmVar.zzf().zza()) == null) {
            return null;
        }
        String string = asyncCallableZza.toString();
        StringBuilder sb = new StringBuilder(string.length() + 11);
        sb.append("callable=[");
        sb.append(string);
        sb.append("]");
        String string2 = sb.toString();
        zzvl zzvlVar = (zzvl) this.zza.zzg().get();
        if (zzvlVar == null) {
            return string2;
        }
        int length = string2.length();
        String string3 = zzvlVar.toString();
        StringBuilder sb2 = new StringBuilder(length + 9 + string3.length() + 1);
        sb2.append(string2);
        sb2.append(", trial=[");
        sb2.append(string3);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final boolean setFuture(ListenableFuture listenableFuture) {
        return super.setFuture(listenableFuture);
    }
}
