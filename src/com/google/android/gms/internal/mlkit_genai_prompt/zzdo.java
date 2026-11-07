package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.cast.MediaError;
import j$.time.Duration;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdo extends Exception {
    private final int zza;
    private final zzbq zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    private zzdo(int i, int i2, String str, Throwable th, zzbq zzbqVar) {
        Integer numValueOf = Integer.valueOf(i);
        String str2 = "UNKNOWN";
        String str3 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 7 ? "UNKNOWN" : "METADATA_ERROR" : "CONNECTION_ERROR" : "PREPARATION_ERROR" : "INFERENCE_ERROR" : "DOWNLOAD_ERROR";
        Integer numValueOf2 = Integer.valueOf(i2);
        if (i2 == 18 || i2 == 20) {
            str2 = "INTERNAL_ERROR";
        } else if (i2 == 501) {
            str2 = "NOT_ENOUGH_DISK_SPACE";
        } else if (i2 == 29) {
            str2 = "INTERNAL_ERROR";
        } else if (i2 != 30) {
            switch (i2) {
                case 2:
                    str2 = "BAD_DATA";
                    break;
                case 3:
                    str2 = "BAD_REQUEST";
                    break;
                case 4:
                    str2 = "REQUEST_PROCESSING_ERROR";
                    break;
                case 5:
                    str2 = "COMPUTE_ERROR";
                    break;
                case 6:
                    str2 = "IPC_ERROR";
                    break;
                case 7:
                    str2 = "CANCELLED";
                    break;
                case 8:
                    str2 = "NOT_AVAILABLE";
                    break;
                case 9:
                    str2 = "BUSY";
                    break;
                case 10:
                    str2 = "SERVICE_PROCESSING_ERROR";
                    break;
                case 11:
                    str2 = "RESPONSE_PROCESSING_ERROR";
                    break;
                case 12:
                    str2 = "REQUEST_TOO_LARGE";
                    break;
                default:
                    switch (i2) {
                        case 14:
                            str2 = "INTERNAL_ERROR";
                            break;
                        case 15:
                            str2 = "RESPONSE_GENERATION_ERROR";
                            break;
                        case 16:
                            str2 = MediaError.ERROR_REASON_NOT_SUPPORTED;
                            break;
                        default:
                            switch (i2) {
                                case 601:
                                    str2 = "BINDING_FAILURE";
                                    break;
                                case 602:
                                    str2 = "SERVICE_DISCONNECTED";
                                    break;
                                case 603:
                                    str2 = "BINDING_DIED";
                                    break;
                                case 604:
                                    str2 = "NEEDS_SYSTEM_UPDATE";
                                    break;
                                case 605:
                                    str2 = "NULL_BINDING";
                                    break;
                                case 606:
                                    str2 = "FEATURE_NOT_FOUND";
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            str2 = "BACKGROUND_USE_BLOCKED";
        }
        super(String.format("AICore failed with error type %s-%s and error code %s-%s: %s", numValueOf, str3, numValueOf2, str2, str), th);
        this.zza = i2;
        this.zzb = zzbqVar;
    }

    public static zzdo zza(int i, String str, Throwable th) {
        return new zzdo(1, i, str, th, null);
    }

    public static zzdo zzb(int i, String str, Throwable th) {
        return new zzdo(2, i, str, th, null);
    }

    public static zzdo zzc(int i, String str, Throwable th) {
        return new zzdo(3, i, str, th, null);
    }

    public static zzdo zzd(int i, String str, Throwable th) {
        return new zzdo(5, i, str, th, null);
    }

    public static zzdo zze(int i, String str, Throwable th) {
        return new zzdo(4, i, str, th, null);
    }

    public static zzdo zzf(String str) {
        return new zzdo(3, 606, str, null, null);
    }

    public static zzdo zzi(zzq zzqVar) {
        return new zzdo(zzqVar.zza(), zzqVar.zzb(), zzqVar.getMessage(), null, zzqVar.zzc());
    }

    public final int zzg() {
        return this.zza;
    }

    public final Duration zzh() {
        zzcm zzcmVarZza;
        zzbq zzbqVar = this.zzb;
        return (zzbqVar == null || (zzcmVarZza = zzbqVar.zza()) == null) ? Duration.ZERO : zznz.zza(zzcmVarZza.zza());
    }
}
