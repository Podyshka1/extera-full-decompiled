package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class zzah$$ExternalSyntheticBackportWithForwarding0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ BigDecimal m355m(BigDecimal bigDecimal) {
        return bigDecimal.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimal.stripTrailingZeros();
    }
}
