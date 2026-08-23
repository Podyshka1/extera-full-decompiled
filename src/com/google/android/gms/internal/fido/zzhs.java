package com.google.android.gms.internal.fido;

import com.android.dex.EncodedValueReader$$ExternalSyntheticBUOutline0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import okio.Buffer$$ExternalSyntheticBUOutline1;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhs implements Closeable {
    private final InputStream zza;
    private zzhr zzb;
    private final byte[] zzc = new byte[8];
    private final zzht zzd = zzht.zza();

    public zzhs(InputStream inputStream) {
        this.zza = inputStream;
    }

    private final long zzh() throws IOException {
        byte bZza = this.zzb.zza();
        zzhr zzhrVar = this.zzb;
        if (bZza < 24) {
            long jZza = zzhrVar.zza();
            this.zzb = null;
            return jZza;
        }
        if (zzhrVar.zza() == 24) {
            int i = this.zza.read();
            if (i != -1) {
                this.zzb = null;
                return ((long) i) & 255;
            }
            Buffer$$ExternalSyntheticBUOutline1.m834m();
            return 0L;
        }
        if (this.zzb.zza() == 25) {
            zzk(this.zzc, 2);
            byte[] bArr = this.zzc;
            return ((((long) bArr[0]) & 255) << 8) | (((long) bArr[1]) & 255);
        }
        if (this.zzb.zza() == 26) {
            zzk(this.zzc, 4);
            byte[] bArr2 = this.zzc;
            return ((((long) bArr2[0]) & 255) << 24) | ((((long) bArr2[1]) & 255) << 16) | ((((long) bArr2[2]) & 255) << 8) | (((long) bArr2[3]) & 255);
        }
        if (this.zzb.zza() != 27) {
            throw new IOException(String.format("invalid additional information %s for major type %s", Byte.valueOf(this.zzb.zza()), Integer.valueOf(this.zzb.zzc())));
        }
        zzk(this.zzc, 8);
        byte[] bArr3 = this.zzc;
        return ((bArr3[0] & 255) << 56) | ((bArr3[1] & 255) << 48) | ((bArr3[2] & 255) << 40) | ((bArr3[3] & 255) << 32) | ((bArr3[4] & 255) << 24) | ((bArr3[5] & 255) << 16) | ((bArr3[6] & 255) << 8) | (bArr3[7] & 255);
    }

    private final void zzi() {
        zzd();
        if (this.zzb.zza() != 31) {
            return;
        }
        EncodedValueReader$$ExternalSyntheticBUOutline0.m184m("expected definite length but found %s", new Object[]{Byte.valueOf(this.zzb.zza())});
    }

    private final void zzj(byte b2) {
        zzd();
        if (this.zzb.zzb() == b2) {
            return;
        }
        EncodedValueReader$$ExternalSyntheticBUOutline0.m184m("expected major type %s but found %s", new Object[]{Integer.valueOf((b2 >> 5) & 7), Integer.valueOf(this.zzb.zzc())});
    }

    private final void zzk(byte[] bArr, int i) throws IOException {
        int i2 = 0;
        while (i2 != i) {
            int i3 = this.zza.read(bArr, i2, i - i2);
            if (i3 == -1) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return;
            }
            i2 += i3;
        }
        this.zzb = null;
    }

    private final byte[] zzl() throws IOException {
        zzi();
        long jZzh = zzh();
        if (jZzh < 0 || jZzh > 2147483647L) {
            throw new UnsupportedOperationException(String.format("the maximum supported byte/text string length is %s bytes", Integer.MAX_VALUE));
        }
        if (this.zza.available() < jZzh) {
            Buffer$$ExternalSyntheticBUOutline1.m834m();
            return null;
        }
        int i = (int) jZzh;
        byte[] bArr = new byte[i];
        zzk(bArr, i);
        return bArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zza.close();
        this.zzd.zzb();
    }

    public final long zza() {
        zzj(ByteCompanionObject.MIN_VALUE);
        zzi();
        long jZzh = zzh();
        if (jZzh < 0) {
            throw new UnsupportedOperationException(String.format("the maximum supported array length is %s", Long.valueOf(LongCompanionObject.MAX_VALUE)));
        }
        if (jZzh > 0) {
            this.zzd.zzg(jZzh);
        }
        return jZzh;
    }

    public final long zzb() {
        boolean z;
        zzd();
        if (this.zzb.zzb() == 0) {
            z = true;
        } else {
            if (this.zzb.zzb() != 32) {
                EncodedValueReader$$ExternalSyntheticBUOutline0.m184m("expected major type 0 or 1 but found %s", new Object[]{Integer.valueOf(this.zzb.zzc())});
                return 0L;
            }
            z = false;
        }
        long jZzh = zzh();
        if (jZzh >= 0) {
            return z ? jZzh : ~jZzh;
        }
        throw new UnsupportedOperationException(String.format("the maximum supported unsigned/negative integer is %s", Long.valueOf(LongCompanionObject.MAX_VALUE)));
    }

    public final long zzc() {
        zzj((byte) -96);
        zzi();
        long jZzh = zzh();
        if (jZzh < 0 || jZzh > DurationKt.MAX_MILLIS) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("the maximum supported map length is 4611686018427387903L");
            return 0L;
        }
        if (jZzh > 0) {
            this.zzd.zzg(jZzh + jZzh);
        }
        return jZzh;
    }

    public final zzhr zzd() {
        if (this.zzb == null) {
            int i = this.zza.read();
            if (i == -1) {
                this.zzd.zzb();
                return null;
            }
            zzhr zzhrVar = new zzhr(i);
            this.zzb = zzhrVar;
            byte bZzb = zzhrVar.zzb();
            if (bZzb == -128 || bZzb == -96 || bZzb == -64) {
                this.zzd.zzd();
                this.zzd.zzf();
            } else {
                if (bZzb != -32) {
                    if (bZzb != 0 && bZzb != 32) {
                        if (bZzb == 64) {
                            this.zzd.zze(-1L);
                        } else {
                            if (bZzb != 96) {
                                EncodedValueReader$$ExternalSyntheticBUOutline0.m184m("invalid major type: %s", new Object[]{Integer.valueOf(this.zzb.zzc())});
                                return null;
                            }
                            this.zzd.zze(-2L);
                        }
                    }
                    this.zzd.zzf();
                } else if (this.zzb.zza() == 31) {
                    this.zzd.zzc();
                }
                this.zzd.zzd();
                this.zzd.zzf();
            }
        }
        return this.zzb;
    }

    public final String zze() {
        zzj((byte) 96);
        return new String(zzl(), StandardCharsets.UTF_8);
    }

    public final boolean zzf() {
        zzj((byte) -32);
        if (this.zzb.zza() > 24) {
            Segment$$ExternalSyntheticBUOutline1.m848m("expected simple value");
            return false;
        }
        int iZzh = (int) zzh();
        if (iZzh == 20) {
            return false;
        }
        if (iZzh == 21) {
            return true;
        }
        EncodedValueReader$$ExternalSyntheticBUOutline0.m184m("expected FALSE or TRUE", new Object[0]);
        return false;
    }

    public final byte[] zzg() {
        zzj((byte) 64);
        return zzl();
    }
}
