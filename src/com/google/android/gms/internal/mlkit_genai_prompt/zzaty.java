package com.google.android.gms.internal.mlkit_genai_prompt;

import android.annotation.SuppressLint;
import j$.time.Duration;

/* JADX INFO: loaded from: classes4.dex */
public interface zzaty {
    @SuppressLint({"NonSdkVisibleApi"})
    static zzant zzk(int i) {
        if (i == 27) {
            return zzant.SAPI_PER_APP_BATTERY_USE_QUOTA_EXCEEDED;
        }
        if (i == 28) {
            return zzant.SAPI_PER_DEVICE_BATTERY_USE_QUOTA_EXCEEDED;
        }
        if (i == 30) {
            return zzant.SAPI_BACKGROUND_USE_BLOCKED;
        }
        if (i == 501) {
            return zzant.SAPI_NOT_ENOUGH_DISK_SPACE;
        }
        switch (i) {
            case -102:
                return zzant.SAPI_INVALID_INPUT_IMAGE;
            case -101:
                return zzant.SAPI_AICORE_INCOMPATIBLE;
            case -100:
                return zzant.SAPI_REQUEST_TOO_SMALL;
            default:
                switch (i) {
                    case 2:
                        return zzant.SAPI_BAD_DATA;
                    case 3:
                        return zzant.SAPI_BAD_REQUEST;
                    case 4:
                        return zzant.SAPI_REQUEST_PROCESSING_ERROR;
                    case 5:
                        return zzant.SAPI_COMPUTE_ERROR;
                    case 6:
                        return zzant.SAPI_IPC_ERROR;
                    case 7:
                        return zzant.SAPI_CANCELLED;
                    case 8:
                        return zzant.SAPI_NOT_AVAILABLE;
                    case 9:
                        return zzant.SAPI_BUSY;
                    case 10:
                        return zzant.SAPI_SERVICE_PROCESSING_ERROR;
                    case 11:
                        return zzant.SAPI_RESPONSE_PROCESSING_ERROR;
                    case 12:
                        return zzant.SAPI_REQUEST_TOO_LARGE;
                    case 13:
                        return zzant.SAPI_SUSPENDED;
                    case 14:
                        return zzant.SAPI_INTERNAL_ERROR;
                    case 15:
                        return zzant.SAPI_RESPONSE_GENERATION_ERROR;
                    case 16:
                        return zzant.SAPI_NOT_SUPPORTED;
                    case 17:
                        return zzant.SAPI_SUSPENDED_STATELESS;
                    case 18:
                        return zzant.SAPI_INTERNAL_ERROR_DOUBLE_MODEL_LOAD_ATTEMPT;
                    default:
                        switch (i) {
                            case 601:
                                return zzant.SAPI_BINDING_FAILURE;
                            case 602:
                                return zzant.SAPI_SERVICE_DISCONNECTED;
                            case 603:
                                return zzant.SAPI_BINDING_DIED;
                            case 604:
                                return zzant.SAPI_NEEDS_SYSTEM_UPDATE;
                            case 605:
                                return zzant.SAPI_NULL_BINDING;
                            case 606:
                                return zzant.SAPI_FEATURE_NOT_FOUND;
                            case 607:
                                return zzant.SAPI_APK_SERVING_GROUP_MISMATCH;
                            default:
                                return zzant.UNKNOWN_ERROR;
                        }
                }
        }
    }

    void zza();

    void zzb(int i, int i2);

    void zzc();

    void zzd(zzars zzarsVar, Object obj, Object obj2);

    default void zzg(int i, int i2) {
        throw new UnsupportedOperationException("Count tokens not supported for this logger");
    }

    default void zzh(Object obj, int i, int i2) {
        zzb(i, i2);
    }

    default void zzi(zzars zzarsVar, Object obj, int i, Duration duration) {
        throw new UnsupportedOperationException("Count tokens not supported for this logger");
    }

    default void zzj(Object obj, int i, int i2) {
        zzg(i, i2);
    }
}
