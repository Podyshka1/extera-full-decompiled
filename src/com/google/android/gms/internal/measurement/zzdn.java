package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzdn extends zzeo {
    final /* synthetic */ zzez zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdn(zzez zzezVar) {
        super(zzezVar, true);
        Objects.requireNonNull(zzezVar);
        this.zza = zzezVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeo
    public final void zza() {
        zzez zzezVar = this.zza;
        if (zzezVar.zzP()) {
            ((zzcp) Preconditions.checkNotNull(zzezVar.zzS())).resetAnalyticsDataWithElapsedTime(this.zzi, this.zzj);
        } else {
            ((zzcp) Preconditions.checkNotNull(zzezVar.zzS())).resetAnalyticsData(this.zzi);
        }
    }
}
