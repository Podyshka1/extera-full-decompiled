package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzof {
    static final ImmutableList zza = ImmutableList.m488of("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");

    static String zza(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, _UrlKt.FRAGMENT_ENCODE_SET);
        } catch (ClassCastException unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    static int zzb(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    static final boolean zzc(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        int i6;
        int i7;
        ImmutableSet immutableSet2;
        String str4;
        zzoe zzoeVar;
        char c;
        int iZze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true);
        if (iZze > 0) {
            i7 = i3;
            if (i7 == 1) {
                i6 = i2;
                if (i6 != 1) {
                    i7 = 1;
                } else {
                    i6 = 1;
                    i7 = 1;
                }
            } else {
                i6 = i2;
            }
            cArr[iZze] = '2';
        } else {
            i6 = i2;
            i7 = i3;
        }
        if (zzi(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i5, str, str2, str3, z, z2, true) == com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_NOT_ALLOWED) {
            c = '3';
        } else {
            int i8 = i5;
            if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
                immutableSet2 = immutableSet;
                str4 = str;
                if (i8 == 1) {
                    if (immutableSet2.contains(str4)) {
                        if (iZze > 0 && cArr[iZze] != '2') {
                            cArr[iZze] = '1';
                        }
                        return true;
                    }
                    i8 = 1;
                }
            } else {
                immutableSet2 = immutableSet;
                str4 = str;
            }
            if (immutableMap.containsKey(zzkpVar) && (zzoeVar = (zzoe) immutableMap.get(zzkpVar)) != null) {
                int iOrdinal = zzoeVar.ordinal();
                if (iOrdinal != 0) {
                    if (iOrdinal != 1) {
                        if (iOrdinal == 2) {
                            return zzi(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true) == com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST ? zzh(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true) : zzg(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true);
                        }
                        if (iOrdinal == 3) {
                            return zzi(zzkpVar, immutableMap, immutableMap2, immutableSet2, cArr, i, i6, i7, i4, i8, str4, str2, str3, z, z2, true) == com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_CONSENT ? zzg(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true) : zzh(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true);
                        }
                        c = '0';
                    } else if (zzi(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true) != com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_CONSENT) {
                        return zzh(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true);
                    }
                } else if (zzi(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true) != com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST) {
                    return zzg(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i6, i7, i4, i8, str, str2, str3, z, z2, true);
                }
                c = '8';
            } else {
                c = '0';
            }
        }
        if (iZze <= 0 || cArr[iZze] == '2') {
            return false;
        }
        cArr[iZze] = c;
        return false;
    }

    public static final Map zzd(ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        if (!z3) {
            return ImmutableMap.m489of();
        }
        com.google.android.gms.internal.measurement.zzkp zzkpVar = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar);
        com.google.android.gms.internal.measurement.zzkp zzkpVar2 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar2 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar2);
        com.google.android.gms.internal.measurement.zzkp zzkpVar3 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        com.google.android.gms.internal.measurement.zzkq zzkqVar3 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar3);
        com.google.android.gms.internal.measurement.zzkp zzkpVar4 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar4 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar4);
        return ImmutableMap.builder().put("Version", "2").put("VendorConsent", true != z ? MVEL.VERSION_SUB : "1").put("VendorLegitimateInterest", true != z2 ? MVEL.VERSION_SUB : "1").put("gdprApplies", i3 != 1 ? MVEL.VERSION_SUB : "1").put("EnableAdvertiserConsentMode", i2 != 1 ? MVEL.VERSION_SUB : "1").put("PolicyVersion", String.valueOf(i4)).put("CmpSdkID", String.valueOf(i)).put("PurposeOneTreatment", i5 != 1 ? MVEL.VERSION_SUB : "1").put("PublisherCC", str).put("PublisherRestrictions1", String.valueOf(zzkqVar != null ? zzkqVar.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).put("PublisherRestrictions3", String.valueOf(zzkqVar2 != null ? zzkqVar2.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).put("PublisherRestrictions4", String.valueOf(zzkqVar3 != null ? zzkqVar3.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).put("PublisherRestrictions7", String.valueOf(zzkqVar4 != null ? zzkqVar4.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).putAll(ImmutableMap.m490of((Object) "Purpose1", (Object) zzf(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true), (Object) "Purpose3", (Object) zzf(zzkpVar2, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true), (Object) "Purpose4", (Object) zzf(zzkpVar3, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true), (Object) "Purpose7", (Object) zzf(zzkpVar4, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true))).putAll(ImmutableMap.m491of((Object) "AuthorizePurpose1", true != zzc(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? MVEL.VERSION_SUB : "1", (Object) "AuthorizePurpose3", true != zzc(zzkpVar2, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? MVEL.VERSION_SUB : "1", (Object) "AuthorizePurpose4", true != zzc(zzkpVar3, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? MVEL.VERSION_SUB : "1", (Object) "AuthorizePurpose7", (Object) (true != zzc(zzkpVar4, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? MVEL.VERSION_SUB : "1"), (Object) "PurposeDiagnostics", (Object) new String(cArr))).buildOrThrow();
    }

    private static final int zze(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        return zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE ? 4 : -1;
    }

    private static final String zzf(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        String strValueOf = MVEL.VERSION_SUB;
        String strValueOf2 = (zIsEmpty || str2.length() < zzkpVar.zza()) ? MVEL.VERSION_SUB : String.valueOf(str2.charAt(zzkpVar.zza() - 1));
        if (!TextUtils.isEmpty(str3) && str3.length() >= zzkpVar.zza()) {
            strValueOf = String.valueOf(str3.charAt(zzkpVar.zza() - 1));
        }
        return String.valueOf(strValueOf2).concat(String.valueOf(strValueOf));
    }

    private static final boolean zzg(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        char c;
        int iZze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true);
        if (!z) {
            c = '4';
        } else {
            if (str2.length() >= zzkpVar.zza()) {
                char cCharAt = str2.charAt(zzkpVar.zza() - 1);
                boolean z4 = cCharAt == '1';
                if (iZze > 0 && cArr[iZze] != '2') {
                    cArr[iZze] = cCharAt != '1' ? '6' : '1';
                }
                return z4;
            }
            c = '0';
        }
        if (iZze > 0 && cArr[iZze] != '2') {
            cArr[iZze] = c;
        }
        return false;
    }

    private static final boolean zzh(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        char c;
        int iZze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true);
        if (!z2) {
            c = '5';
        } else {
            if (str3.length() >= zzkpVar.zza()) {
                char cCharAt = str3.charAt(zzkpVar.zza() - 1);
                boolean z4 = cCharAt == '1';
                if (iZze > 0 && cArr[iZze] != '2') {
                    cArr[iZze] = cCharAt != '1' ? '7' : '1';
                }
                return z4;
            }
            c = '0';
        }
        if (iZze > 0 && cArr[iZze] != '2') {
            cArr[iZze] = c;
        }
        return false;
    }

    private static final com.google.android.gms.internal.measurement.zzkq zzi(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        return (com.google.android.gms.internal.measurement.zzkq) immutableMap2.getOrDefault(zzkpVar, com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED);
    }
}
