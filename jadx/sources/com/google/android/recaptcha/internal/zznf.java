package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zznf extends zzit implements zzkf {
    private static final zznf zzb;
    private int zzd;
    private Object zzf;
    private int zzg;
    private long zzl;
    private zzib zzm;
    private int zzn;
    private zzmr zzo;
    private zznr zzp;
    private zzlj zzr;
    private zzib zzs;
    private int zze = 0;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzk = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzq = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zznf zznfVar = new zznf();
        zzb = zznfVar;
        zzit.zzD(zznf.class, zznfVar);
    }

    private zznf() {
    }

    public static zznf zzH() {
        return zzb;
    }

    public static zznf zzI(byte[] bArr) {
        return (zznf) zzit.zzu(zzb, bArr);
    }

    static /* synthetic */ void zzL(zznf zznfVar, String str) {
        str.getClass();
        zznfVar.zzj = str;
    }

    static /* synthetic */ void zzN(zznf zznfVar, zzmr zzmrVar) {
        zznfVar.zzo = zzmrVar;
        zznfVar.zzd |= 2;
    }

    static /* synthetic */ void zzO(zznf zznfVar, zznr zznrVar) {
        zznrVar.getClass();
        zznfVar.zzp = zznrVar;
        zznfVar.zzd |= 4;
    }

    static /* synthetic */ void zzR(zznf zznfVar, String str) {
        str.getClass();
        zznfVar.zzh = str;
    }

    static /* synthetic */ void zzS(zznf zznfVar, String str) {
        str.getClass();
        zznfVar.zzi = str;
    }

    public static zznc zzi() {
        return (zznc) zzb.zzp();
    }

    public final String zzJ() {
        return this.zzi;
    }

    public final String zzK() {
        return this.zzj;
    }

    public final boolean zzT() {
        return (this.zzd & 2) != 0;
    }

    public final int zzU() {
        int i = this.zzn;
        int i2 = i != 0 ? i != 1 ? i != 2 ? 0 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    @Deprecated
    public final long zzf() {
        return this.zzl;
    }

    public final zzmr zzg() {
        zzmr zzmrVar = this.zzo;
        return zzmrVar == null ? zzmr.zzj() : zzmrVar;
    }

    @Override // com.google.android.recaptcha.internal.zzit
    protected final Object zzh(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzit.zzA(zzb, "\u0000\u000e\u0001\u0001\u0001\u000f\u000e\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003\u0003\u0004\f\u0005ဉ\u0001\u0006ဉ\u0002\u0007Ȉ\bȈ\tȈ\nဉ\u0000\u000bဉ\u0003\rဉ\u0004\u000eȈ\u000f<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", "zzi", "zzl", "zzn", "zzo", "zzp", "zzq", "zzj", "zzk", "zzm", "zzr", "zzs", "zzh", zzml.class});
        }
        if (i2 == 3) {
            return new zznf();
        }
        zznb zznbVar = null;
        if (i2 == 4) {
            return new zznc(zznbVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final zzne zzj() {
        zzne zzneVar;
        int i = this.zzg;
        zzne zzneVar2 = zzne.UNKNOWN;
        switch (i) {
            case 0:
                zzneVar = zzne.UNKNOWN;
                break;
            case 1:
                zzneVar = zzne.INIT_NATIVE;
                break;
            case 2:
                zzneVar = zzne.INIT_NETWORK;
                break;
            case 3:
                zzneVar = zzne.INIT_JS;
                break;
            case 4:
                zzneVar = zzne.INIT_TOTAL;
                break;
            case 5:
                zzneVar = zzne.EXECUTE_NATIVE;
                break;
            case 6:
                zzneVar = zzne.EXECUTE_JS;
                break;
            case 7:
                zzneVar = zzne.EXECUTE_TOTAL;
                break;
            case 8:
                zzneVar = zzne.CHALLENGE_ACCOUNT_NATIVE;
                break;
            case 9:
                zzneVar = zzne.CHALLENGE_ACCOUNT_JS;
                break;
            case 10:
                zzneVar = zzne.CHALLENGE_ACCOUNT_TOTAL;
                break;
            case 11:
                zzneVar = zzne.VERIFY_PIN_NATIVE;
                break;
            case 12:
                zzneVar = zzne.VERIFY_PIN_JS;
                break;
            case 13:
                zzneVar = zzne.VERIFY_PIN_TOTAL;
                break;
            case 14:
                zzneVar = zzne.RUN_PROGRAM;
                break;
            case 15:
                zzneVar = zzne.FETCH_ALLOWLIST;
                break;
            case 16:
                zzneVar = zzne.JS_LOAD;
                break;
            case 17:
                zzneVar = zzne.WEB_VIEW_RELOAD_JS;
                break;
            case 18:
                zzneVar = zzne.INIT_NETWORK_MRI_ACTION;
                break;
            case 19:
                zzneVar = zzne.INIT_DOWNLOAD_JS;
                break;
            case 20:
                zzneVar = zzne.VALIDATE_INPUT;
                break;
            case 21:
                zzneVar = zzne.DOWNLOAD_JS;
                break;
            case 22:
                zzneVar = zzne.SAVE_CACHE_JS;
                break;
            case 23:
                zzneVar = zzne.LOAD_CACHE_JS;
                break;
            case 24:
                zzneVar = zzne.LOAD_WEBVIEW;
                break;
            case 25:
                zzneVar = zzne.COLLECT_SIGNALS;
                break;
            case 26:
                zzneVar = zzne.FETCH_TOKEN;
                break;
            case 27:
                zzneVar = zzne.POST_EXECUTE;
                break;
            default:
                zzneVar = null;
                break;
        }
        return zzneVar == null ? zzne.UNRECOGNIZED : zzneVar;
    }
}
