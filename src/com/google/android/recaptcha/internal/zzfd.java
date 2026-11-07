package com.google.android.recaptcha.internal;

import com.google.android.play.core.integrity.StandardIntegrityException;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfd implements zzev {
    private final zzfp zza;
    private boolean zzb = true;
    private final zzhr zzc;

    public zzfd(zzhu zzhuVar, StandardIntegrityManager standardIntegrityManager, zzhr zzhrVar, zzfp zzfpVar) {
        this.zzc = zzhrVar;
        this.zza = zzfpVar;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final boolean zzb() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzfb(zzakaVar, this, null));
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzd(Exception exc, Continuation continuation) {
        int i;
        Throwable cause = exc.getCause();
        if (cause != null) {
            exc = cause;
        }
        if (exc instanceof StandardIntegrityException) {
            int errorCode = ((StandardIntegrityException) exc).getErrorCode();
            if (errorCode == -100) {
                i = 44;
            } else if (errorCode == -12) {
                i = 39;
            } else if (errorCode == -3) {
                i = 30;
            } else if (errorCode == -2) {
                i = 29;
            } else if (errorCode != -1) {
                switch (errorCode) {
                    case -19:
                        i = 54;
                        break;
                    case -18:
                        i = 53;
                        break;
                    case -17:
                        i = 52;
                        break;
                    case -16:
                        i = 43;
                        break;
                    case -15:
                        i = 42;
                        break;
                    case -14:
                        i = 41;
                        break;
                    default:
                        switch (errorCode) {
                            case -9:
                                i = 36;
                                break;
                            case -8:
                                i = 35;
                                break;
                            case -7:
                                i = 34;
                                break;
                            case -6:
                                i = 33;
                                break;
                            case -5:
                                i = 32;
                                break;
                            default:
                                i = 2;
                                break;
                        }
                        break;
                }
            } else {
                i = 28;
            }
        } else {
            i = 45;
        }
        zzalw zzalwVarZza = zzalx.zza();
        zzalwVarZza.zzc(i);
        zzalwVarZza.zzb(15);
        return zzew.zzb(this, (zzalx) zzalwVarZza.zzp());
    }

    public final void zze(boolean z) {
        this.zzb = false;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzk(zzakk zzakkVar, Continuation continuation) {
        return new zzmc(new zzfc(this, zzakkVar, null));
    }
}
