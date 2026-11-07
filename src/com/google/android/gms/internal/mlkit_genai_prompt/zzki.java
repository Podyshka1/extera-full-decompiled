package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzki {
    private static final zzkh zza = new zzkh("engine", zzke.zza, zzjf.zza, zzkg.zza, zzkf.zza, null);
    private static final zzkh zzb = new zzkh("model", zzjq.zza, zzjw.zza, zzjx.zza, zzjy.zza, null);
    private static final zzkh zzc = new zzkh("lora", zzjz.zza, zzka.zza, zzkb.zza, zzkc.zza, null);
    private static final zzkh zzd = new zzkh("drafter", zzkd.zza, zzjg.zza, zzjh.zza, zzji.zza, null);
    private static final zzkh zze = new zzkh("image_encoder", zzjj.zza, zzjk.zza, zzjl.zza, zzjm.zza, null);
    private static final zzkh zzf = new zzkh("audio_encoder", zzjn.zza, zzjo.zza, zzjp.zza, zzjr.zza, null);
    private static final zzkh zzg = new zzkh("kv_cache", zzjs.zza, zzjt.zza, zzju.zza, zzjv.zza, null);

    public static String zza(zzd zzdVar) {
        int i;
        zzkh zzkhVar;
        if (zzdVar == null) {
            return "{}";
        }
        zzc zzcVar = (zzc) zzdVar.zzK();
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        int i2 = 1;
        while (true) {
            switch (i2) {
                case 0:
                    i = 1;
                    break;
                case 1:
                    i = 2;
                    break;
                case 2:
                    i = 3;
                    break;
                case 3:
                    i = 4;
                    break;
                case 4:
                    i = 5;
                    break;
                case 5:
                    i = 6;
                    break;
                case 6:
                    i = 7;
                    break;
                case 7:
                    i = 8;
                    break;
                default:
                    i = 0;
                    break;
            }
            if (i == 0) {
                if (sb.length() > 1) {
                    sb.setLength(sb.length() - 2);
                }
                sb.append("}");
                return sb.toString();
            }
            switch (i - 1) {
                case 1:
                    zzkhVar = zza;
                    break;
                case 2:
                    zzkhVar = zzb;
                    break;
                case 3:
                    zzkhVar = zze;
                    break;
                case 4:
                    zzkhVar = zzf;
                    break;
                case 5:
                    zzkhVar = zzd;
                    break;
                case 6:
                    zzkhVar = zzc;
                    break;
                case 7:
                    zzkhVar = zzg;
                    break;
                default:
                    zzkhVar = null;
                    break;
            }
            if (zzkhVar != null) {
                long jLongValue = ((Long) zzkhVar.zzb().apply(zzcVar)).longValue();
                int iIntValue = ((Integer) zzkhVar.zzc().apply(zzcVar)).intValue();
                if (jLongValue > 0 || iIntValue > 0) {
                    sb.append(zzkhVar.zza());
                    sb.append(": (");
                    sb.append(jLongValue);
                    sb.append(" ms, count: ");
                    sb.append(iIntValue);
                    sb.append("), ");
                }
            }
            i2++;
        }
    }
}
