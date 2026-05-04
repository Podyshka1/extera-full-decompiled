package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.clearcut.zzgw$zza;
import com.google.android.gms.phenotype.Phenotype;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp implements ClearcutLogger.zza {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final zzao zzaq;
    private static final zzao zzar;
    private static final ConcurrentHashMap zzas;
    private static final HashMap zzat;
    private static Boolean zzau;
    private static Long zzav;
    private static final zzae zzaw;
    private final Context zzh;

    static {
        zzao zzaoVarZzd = new zzao(Phenotype.getContentProviderUri("com.google.android.gms.clearcut.public")).zzc("gms:playlog:service:samplingrules_").zzd("LogSamplingRules__");
        zzaq = zzaoVarZzd;
        zzar = new zzao(Phenotype.getContentProviderUri("com.google.android.gms.clearcut.public")).zzc("gms:playlog:service:sampling_").zzd("LogSampling__");
        zzas = new ConcurrentHashMap();
        zzat = new HashMap();
        zzau = null;
        zzav = null;
        zzaw = zzaoVarZzd.zzc("enable_log_sampling_rules", false);
    }

    public zzp(Context context) {
        this.zzh = context;
        if (context != null) {
            zzae.maybeInit(context);
        }
    }

    private static long zza(String str, long j) {
        if (str == null || str.isEmpty()) {
            return zzk.zza(ByteBuffer.allocate(8).putLong(j).array());
        }
        byte[] bytes = str.getBytes(UTF_8);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.putLong(j);
        return zzk.zza(byteBufferAllocate.array());
    }

    private static zzgw$zza.zzb zza(String str) {
        String strSubstring;
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(44);
        int i = 0;
        if (iIndexOf >= 0) {
            i = iIndexOf + 1;
            strSubstring = str.substring(0, iIndexOf);
        } else {
            strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        int iIndexOf2 = str.indexOf(47, i);
        if (iIndexOf2 <= 0) {
            Log.e("LogSamplerImpl", str.length() != 0 ? "Failed to parse the rule: ".concat(str) : new String("Failed to parse the rule: "));
            return null;
        }
        try {
            long j = Long.parseLong(str.substring(i, iIndexOf2));
            long j2 = Long.parseLong(str.substring(iIndexOf2 + 1));
            if (j >= 0 && j2 >= 0) {
                return (zzgw$zza.zzb) zzgw$zza.zzb.zzfz().zzn(strSubstring).zzr(j).zzs(j2).zzbh();
            }
            StringBuilder sb = new StringBuilder(72);
            sb.append("negative values not supported: ");
            sb.append(j);
            sb.append("/");
            sb.append(j2);
            Log.e("LogSamplerImpl", sb.toString());
            return null;
        } catch (NumberFormatException e) {
            Log.e("LogSamplerImpl", str.length() != 0 ? "parseLong() failed while parsing: ".concat(str) : new String("parseLong() failed while parsing: "), e);
            return null;
        }
    }

    private static boolean zzb(long j, long j2, long j3) {
        if (j2 < 0 || j3 <= 0) {
            return true;
        }
        return ((j > 0L ? 1 : (j == 0L ? 0 : -1)) >= 0 ? j % j3 : (((Long.MAX_VALUE % j3) + 1) + ((j & Long.MAX_VALUE) % j3)) % j3) < j2;
    }

    private static boolean zzc(Context context) {
        if (zzau == null) {
            zzau = Boolean.valueOf(Wrappers.packageManager(context).checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return zzau.booleanValue();
    }

    private static long zzd(Context context) {
        if (zzav == null) {
            if (context == null) {
                return 0L;
            }
            zzav = Long.valueOf(zzc(context) ? zzy.getLong(context.getContentResolver(), "android_id", 0L) : 0L);
        }
        return zzav.longValue();
    }

    @Override // com.google.android.gms.clearcut.ClearcutLogger.zza
    public final boolean zza(com.google.android.gms.clearcut.zze zzeVar) {
        List<zzgw$zza.zzb> listZzfs;
        zzr zzrVar = zzeVar.zzag;
        String strValueOf = zzrVar.zzj;
        int i = zzrVar.zzk;
        zzha zzhaVar = zzeVar.zzaa;
        int i2 = zzhaVar != null ? zzhaVar.zzbji : 0;
        String str = null;
        if (!((Boolean) zzaw.get()).booleanValue()) {
            if (strValueOf == null || strValueOf.isEmpty()) {
                strValueOf = i >= 0 ? String.valueOf(i) : null;
            }
            if (strValueOf == null) {
                return true;
            }
            Context context = this.zzh;
            if (context != null && zzc(context)) {
                HashMap map = zzat;
                zzae zzaeVarZza = (zzae) map.get(strValueOf);
                if (zzaeVarZza == null) {
                    zzaeVarZza = zzar.zza(strValueOf, null);
                    map.put(strValueOf, zzaeVarZza);
                }
                str = (String) zzaeVarZza.get();
            }
            zzgw$zza.zzb zzbVarZza = zza(str);
            if (zzbVarZza != null) {
                return zzb(zza(zzbVarZza.zzfw(), zzd(this.zzh)), zzbVarZza.zzfx(), zzbVarZza.zzfy());
            }
            return true;
        }
        if (strValueOf == null || strValueOf.isEmpty()) {
            strValueOf = i >= 0 ? String.valueOf(i) : null;
        }
        if (strValueOf == null) {
            return true;
        }
        if (this.zzh == null) {
            listZzfs = Collections.EMPTY_LIST;
        } else {
            ConcurrentHashMap concurrentHashMap = zzas;
            zzae zzaeVarZza2 = (zzae) concurrentHashMap.get(strValueOf);
            if (zzaeVarZza2 == null) {
                zzaeVarZza2 = zzaq.zza(strValueOf, zzgw$zza.zzft(), zzq.zzax);
                zzae zzaeVar = (zzae) concurrentHashMap.putIfAbsent(strValueOf, zzaeVarZza2);
                if (zzaeVar != null) {
                    zzaeVarZza2 = zzaeVar;
                }
            }
            listZzfs = ((zzgw$zza) zzaeVarZza2.get()).zzfs();
        }
        for (zzgw$zza.zzb zzbVar : listZzfs) {
            if (!zzbVar.zzfv() || zzbVar.getEventCode() == 0 || zzbVar.getEventCode() == i2) {
                if (!zzb(zza(zzbVar.zzfw(), zzd(this.zzh)), zzbVar.zzfx(), zzbVar.zzfy())) {
                    return false;
                }
            }
        }
        return true;
    }
}
