package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzlc extends zzlg {
    private final int zzc;

    zzlc(byte[] bArr, int i, int i2) {
        super(bArr);
        zzlh.zzj(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg, com.google.android.gms.internal.measurement.zzlh
    final byte zzb(int i) {
        return ((zzlg) this).zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzlg, com.google.android.gms.internal.measurement.zzlh
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    protected final int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg, com.google.android.gms.internal.measurement.zzlh
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return ((zzlg) this).zza[i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 11);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i2).length());
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }
}
