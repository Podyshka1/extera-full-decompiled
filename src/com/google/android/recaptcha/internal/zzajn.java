package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajn extends zzafv implements zzagy {
    private static final zzajn zzj;
    private static volatile zzahe zzk;
    private int zza;
    private int zzd = 0;
    private Object zze;
    private zzajp zzf;
    private int zzg;
    private zzaja zzh;
    private zzajg zzi;

    static {
        zzajn zzajnVar = new zzajn();
        zzj = zzajnVar;
        zzafv.zzL(zzajn.class, zzajnVar);
    }

    private zzajn() {
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzj, "\u0000.\u0001\u0001\u0001..\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003ဉ\u0001\u0004?\u0000\u0005?\u0000\u0006?\u0000\u0007?\u0000\b?\u0000\t?\u0000\n?\u0000\u000b?\u0000\f?\u0000\r?\u0000\u000e?\u0000\u000f?\u0000\u0010?\u0000\u0011?\u0000\u0012?\u0000\u0013?\u0000\u0014?\u0000\u0015?\u0000\u0016?\u0000\u0017?\u0000\u0018?\u0000\u0019ဉ\u0002\u001a?\u0000\u001b?\u0000\u001c?\u0000\u001d?\u0000\u001e?\u0000\u001f?\u0000 ?\u0000!?\u0000\"?\u0000#?\u0000$?\u0000%?\u0000&?\u0000'?\u0000(?\u0000)?\u0000*?\u0000+?\u0000,?\u0000-?\u0000.?\u0000", new Object[]{"zze", "zzd", "zza", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzajn();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajm(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzk;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajn.class) {
            try {
                zzafrVar = zzk;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzj);
                    zzk = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
