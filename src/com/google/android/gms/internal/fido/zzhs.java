package com.google.android.gms.internal.fido;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

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
        if (this.zzb.zza() < 24) {
            long jZza = this.zzb.zza();
            this.zzb = null;
            return jZza;
        }
        if (this.zzb.zza() == 24) {
            int i = this.zza.read();
            if (i == -1) {
                throw new EOFException();
            }
            this.zzb = null;
            return ((long) i) & 255;
        }
        if (this.zzb.zza() == 25) {
            zzk(this.zzc, 2);
            byte[] bArr = this.zzc;
            return ((((long) bArr[0]) & 255) << 8) | (255 & ((long) bArr[1]));
        }
        if (this.zzb.zza() == 26) {
            zzk(this.zzc, 4);
            byte[] bArr2 = this.zzc;
            long j = bArr2[0];
            return (((long) bArr2[3]) & 255) | ((bArr2[1] & 255) << 16) | ((j & 255) << 24) | ((((long) bArr2[2]) & 255) << 8);
        }
        if (this.zzb.zza() != 27) {
            throw new IOException(String.format("invalid additional information %s for major type %s", Byte.valueOf(this.zzb.zza()), Integer.valueOf(this.zzb.zzc())));
        }
        zzk(this.zzc, 8);
        byte[] bArr3 = this.zzc;
        long j2 = bArr3[0];
        long j3 = bArr3[1];
        return (((long) bArr3[7]) & 255) | ((bArr3[2] & 255) << 40) | ((j2 & 255) << 56) | ((j3 & 255) << 48) | ((bArr3[3] & 255) << 32) | ((((long) bArr3[4]) & 255) << 24) | ((((long) bArr3[5]) & 255) << 16) | ((((long) bArr3[6]) & 255) << 8);
    }

    private final void zzi() throws IOException {
        zzd();
        if (this.zzb.zza() == 31) {
            throw new IllegalStateException(String.format("expected definite length but found %s", Byte.valueOf(this.zzb.zza())));
        }
    }

    private final void zzj(byte b) throws IOException {
        zzd();
        if (this.zzb.zzb() != b) {
            throw new IllegalStateException(String.format("expected major type %s but found %s", Integer.valueOf((b >> 5) & 7), Integer.valueOf(this.zzb.zzc())));
        }
    }

    private final void zzk(byte[] bArr, int i) throws IOException {
        int i2 = 0;
        while (i2 != i) {
            int i3 = this.zza.read(bArr, i2, i - i2);
            if (i3 == -1) {
                throw new EOFException();
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
            throw new EOFException();
        }
        int i = (int) jZzh;
        byte[] bArr = new byte[i];
        zzk(bArr, i);
        return bArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza.close();
        this.zzd.zzb();
    }

    public final long zza() throws IOException {
        zzj((byte) -128);
        zzi();
        long jZzh = zzh();
        if (jZzh < 0) {
            throw new UnsupportedOperationException(String.format("the maximum supported array length is %s", Long.MAX_VALUE));
        }
        if (jZzh > 0) {
            this.zzd.zzg(jZzh);
        }
        return jZzh;
    }

    public final long zzb() throws IOException {
        boolean z;
        zzd();
        if (this.zzb.zzb() == 0) {
            z = true;
        } else {
            if (this.zzb.zzb() != 32) {
                throw new IllegalStateException(String.format("expected major type 0 or 1 but found %s", Integer.valueOf(this.zzb.zzc())));
            }
            z = false;
        }
        long jZzh = zzh();
        if (jZzh >= 0) {
            return z ? jZzh : ~jZzh;
        }
        throw new UnsupportedOperationException(String.format("the maximum supported unsigned/negative integer is %s", Long.MAX_VALUE));
    }

    public final long zzc() throws IOException {
        zzj((byte) -96);
        zzi();
        long jZzh = zzh();
        if (jZzh < 0 || jZzh > 4611686018427387903L) {
            throw new UnsupportedOperationException("the maximum supported map length is 4611686018427387903L");
        }
        if (jZzh > 0) {
            this.zzd.zzg(jZzh + jZzh);
        }
        return jZzh;
    }

    public final zzhr zzd() throws IOException {
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
                                throw new IllegalStateException(String.format("invalid major type: %s", Integer.valueOf(this.zzb.zzc())));
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

    public final String zze() throws IOException {
        zzj((byte) 96);
        return new String(zzl(), StandardCharsets.UTF_8);
    }

    public final boolean zzf() throws IOException {
        zzj((byte) -32);
        if (this.zzb.zza() > 24) {
            throw new IllegalStateException("expected simple value");
        }
        int iZzh = (int) zzh();
        if (iZzh == 20) {
            return false;
        }
        if (iZzh == 21) {
            return true;
        }
        throw new IllegalStateException(String.format("expected FALSE or TRUE", new Object[0]));
    }

    public final byte[] zzg() throws IOException {
        zzj((byte) 64);
        return zzl();
    }
}
