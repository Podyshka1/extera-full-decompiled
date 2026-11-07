package com.google.android.gms.internal.play_billing;

import com.google.protobuf.ByteString$$ExternalSyntheticBUOutline0;
import com.google.protobuf.ByteString$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzec extends zzeg {
    private final int zzc;

    public zzec(byte[] bArr, int i, int i2) {
        super(bArr);
        zzei.zzh(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzei
    public final byte zzb(int i) {
        return ((zzeg) this).zza[i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzei
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg, com.google.android.gms.internal.play_billing.zzei
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return ((zzeg) this).zza[i];
        }
        if (i < 0) {
            ByteString$$ExternalSyntheticBUOutline0.m502m(i);
            return (byte) 0;
        }
        ByteString$$ExternalSyntheticBUOutline1.m503m(i, i2);
        return (byte) 0;
    }
}
