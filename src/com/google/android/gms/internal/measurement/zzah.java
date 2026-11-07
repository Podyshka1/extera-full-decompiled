package com.google.android.gms.internal.measurement;

import com.exteragram.messenger.math.MathFormat$$ExternalSyntheticBackportWithForwarding0;
import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzah implements zzao {
    private final Double zza;

    public zzah(Double d) {
        if (d == null) {
            this.zza = Double.valueOf(Double.NaN);
        } else {
            this.zza = d;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzah) {
            return this.zza.equals(((zzah) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        Double d = this.zza;
        if (Double.isNaN(d.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d.doubleValue())) {
            return d.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalM257m = MathFormat$$ExternalSyntheticBackportWithForwarding0.m257m(BigDecimal.valueOf(d.doubleValue()));
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimalM257m.scale() > 0 ? bigDecimalM257m.precision() : bigDecimalM257m.scale()) - 1);
        String str = decimalFormat.format(bigDecimalM257m);
        int iIndexOf = str.indexOf("E");
        if (iIndexOf <= 0) {
            return str;
        }
        int i = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i >= 0 || i <= -7) && (i < 0 || i >= 21)) ? str.replace("E-", "e-").replace("E", "e+") : bigDecimalM257m.toPlainString();
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        Double d = this.zza;
        boolean z = false;
        if (!Double.isNaN(d.doubleValue()) && d.doubleValue() != 0.0d) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzah(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzcG(String str, zzg zzgVar, List list) {
        if ("toString".equals(str)) {
            return new zzas(zzc());
        }
        FieldSet$$ExternalSyntheticBUOutline0.m481m("%s.%s is not a function.", new Object[]{zzc(), str});
        return null;
    }
}
