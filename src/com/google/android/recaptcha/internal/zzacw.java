package com.google.android.recaptcha.internal;

import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zzacw implements zzst {
    private final byte[] zza;
    private final byte[] zzb;
    private final byte[] zzc;

    public /* synthetic */ zzacw(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (!zzte.zza(1)) {
            UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(new GeneralSecurityException("Can not use Ed25519 in FIPS-mode."));
            throw null;
        }
        if (bArr.length != 32) {
            FieldSet$$ExternalSyntheticBUOutline0.m505m("Given public key's length is not %s.", new Object[]{32});
            throw null;
        }
        this.zza = (byte[]) bArr.clone();
        this.zzb = bArr2;
        this.zzc = bArr3;
        zztp.zzd();
    }

    private final void zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length != 64) {
            throw new GeneralSecurityException(String.format("The length of the signature is not %s.", 64));
        }
        if (zztp.zzc(bArr2, bArr, this.zza)) {
            return;
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("Signature check failed.");
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzb;
        int length = bArr3.length;
        if (length == 0 && this.zzc.length == 0) {
            zzb(bArr, bArr2);
            return;
        }
        if (!zzwc.zzc(bArr3, bArr)) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("Invalid signature (output prefix mismatch)");
            return;
        }
        byte[] bArr4 = this.zzc;
        if (bArr4.length != 0) {
            bArr2 = zzacu.zza(bArr2, bArr4);
        }
        zzb(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
    }
}
