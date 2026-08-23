package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzmb extends zzkr {
    protected zzmf zza;
    private final zzmf zzb;

    protected zzmb(zzmf zzmfVar) {
        this.zzb = zzmfVar;
        if (zzmfVar.zzcf()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = zzmfVar.zzch();
    }

    private static void zza(Object obj, Object obj2) {
        zznu.zza().zzb(obj.getClass()).zzd(obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final /* bridge */ /* synthetic */ zzkr zzaS(byte[] bArr, int i, int i2) throws zzmr {
        zzlr zzlrVar = zzlr.zza;
        int i3 = zznu.$r8$clinit;
        zzbe(bArr, 0, i2, zzlr.zza);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final /* bridge */ /* synthetic */ zzkr zzaT(byte[] bArr, int i, int i2, zzlr zzlrVar) throws zzmr {
        zzbe(bArr, 0, i2, zzlrVar);
        return this;
    }

    protected final void zzaX() {
        if (this.zza.zzcf()) {
            return;
        }
        zzaY();
    }

    protected void zzaY() {
        zzmf zzmfVarZzch = this.zzb.zzch();
        zza(zzmfVarZzch, this.zza);
        this.zza = zzmfVarZzch;
    }

    /* JADX INFO: renamed from: zzba, reason: merged with bridge method [inline-methods] */
    public final zzmb clone() {
        zzmb zzmbVar = (zzmb) this.zzb.zzl(5, null, null);
        zzmbVar.zza = zzbf();
        return zzmbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zznl
    /* JADX INFO: renamed from: zzbb, reason: merged with bridge method [inline-methods] */
    public zzmf zzbf() {
        if (!this.zza.zzcf()) {
            return this.zza;
        }
        this.zza.zzcj();
        return this.zza;
    }

    public final zzmf zzbc() {
        zzmf zzmfVarZzbf = zzbf();
        if (zzmfVarZzbf.zzcD()) {
            return zzmfVarZzbf;
        }
        throw new zzoh(zzmfVarZzbf);
    }

    public final zzmb zzbd(zzmf zzmfVar) {
        if (!this.zzb.equals(zzmfVar)) {
            if (!this.zza.zzcf()) {
                zzaY();
            }
            zza(this.zza, zzmfVar);
        }
        return this;
    }

    public final zzmb zzbe(byte[] bArr, int i, int i2, zzlr zzlrVar) throws zzmr {
        if (!this.zza.zzcf()) {
            zzaY();
        }
        try {
            zznu.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, 0, i2, new zzkw(zzlrVar));
            return this;
        } catch (zzmr e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }
}
