package com.google.android.gms.internal.mlkit_genai_prompt;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaTrack;
import java.util.Collection;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzib {
    public static zzhz zzu() {
        return new zzhj();
    }

    public abstract String zza();

    public abstract String zzb();

    public abstract Boolean zzc();

    public abstract zzml zzd();

    public abstract zzib zze();

    public abstract Long zzf();

    public abstract Long zzg();

    public abstract zzml zzh();

    public abstract zzmo zzi();

    public abstract Long zzj();

    public abstract Long zzk();

    public abstract Double zzl();

    public abstract Double zzm();

    public abstract Long zzn();

    public abstract Long zzo();

    public abstract String zzp();

    public abstract zzml zzq();

    public abstract zzml zzr();

    public abstract String zzs();

    public abstract int zzt();

    public final JSONObject zzv() throws JSONException {
        String lowerCase;
        JSONObject jSONObject = new JSONObject();
        int iZzt = zzt();
        if (iZzt != 0) {
            switch (iZzt - 1) {
                case 1:
                    lowerCase = "string";
                    break;
                case 2:
                    lowerCase = "number";
                    break;
                case 3:
                    lowerCase = "integer";
                    break;
                case 4:
                    lowerCase = "boolean";
                    break;
                case 5:
                    lowerCase = "array";
                    break;
                case 6:
                    lowerCase = "object";
                    break;
                default:
                    lowerCase = zzia.zza(iZzt).toLowerCase(Locale.US);
                    break;
            }
            jSONObject.put("type", lowerCase);
        }
        jSONObject.putOpt(MediaTrack.ROLE_DESCRIPTION, zzb());
        jSONObject.putOpt("format", zza());
        jSONObject.putOpt("nullable", zzc());
        jSONObject.putOpt("title", null);
        zzml zzmlVarZzd = zzd();
        if (zzmlVarZzd != null && !zzmlVarZzd.isEmpty()) {
            jSONObject.put("enum", new JSONArray((Collection) zzmlVarZzd));
        }
        jSONObject.putOpt("maxItems", zzf());
        jSONObject.putOpt("minItems", zzg());
        zzib zzibVarZze = zze();
        if (zzibVarZze != null) {
            jSONObject.put(PluginsConstants.Settings.ITEMS, zzibVarZze.zzv());
        }
        zzml zzmlVarZzh = zzh();
        if (zzmlVarZzh != null && !zzmlVarZzh.isEmpty()) {
            jSONObject.put("required", new JSONArray((Collection) zzmlVarZzh));
        }
        jSONObject.putOpt("maxProperties", null);
        jSONObject.putOpt("minProperties", null);
        zzmo zzmoVarZzi = zzi();
        if (zzmoVarZzi != null) {
            JSONObject jSONObject2 = new JSONObject();
            zzns zznsVarZza = zzmoVarZzi.entrySet().zza();
            while (zznsVarZza.hasNext()) {
                Map.Entry entry = (Map.Entry) zznsVarZza.next();
                jSONObject2.put((String) entry.getKey(), ((zzib) entry.getValue()).zzv());
            }
            jSONObject.put("properties", jSONObject2);
        }
        jSONObject.putOpt("maximum", zzm());
        jSONObject.putOpt("minimum", zzl());
        jSONObject.putOpt("maxLength", null);
        jSONObject.putOpt("minLength", null);
        jSONObject.putOpt("pattern", null);
        return jSONObject;
    }

    public final zzcp zzw() {
        int i;
        zzco zzcoVarZzu = zzcp.zzu();
        int iZzt = zzt();
        if (iZzt != 0) {
            int i2 = iZzt - 1;
            if (i2 != 0) {
                i = 1;
                if (i2 != 1) {
                    i = 2;
                    if (i2 != 2) {
                        i = 3;
                        if (i2 != 3) {
                            i = 4;
                            if (i2 != 4) {
                                i = 5;
                                if (i2 != 5) {
                                    i = 6;
                                }
                            }
                        }
                    }
                }
            } else {
                i = 0;
            }
            zzcoVarZzu.zza(i);
        }
        String strZza = zza();
        if (strZza != null) {
            zzcoVarZzu.zzb(strZza);
        }
        String strZzb = zzb();
        if (strZzb != null) {
            zzcoVarZzu.zzc(strZzb);
        }
        Boolean boolZzc = zzc();
        if (boolZzc != null) {
            zzcoVarZzu.zzd(boolZzc.booleanValue());
        }
        zzml zzmlVarZzd = zzd();
        if (zzmlVarZzd != null) {
            zzcoVarZzu = zzcoVarZzu.zzq(zzmlVarZzd);
        }
        zzib zzibVarZze = zze();
        if (zzibVarZze != null) {
            zzcoVarZzu.zzf(zzibVarZze.zzw());
        }
        Long lZzf = zzf();
        if (lZzf != null) {
            zzcoVarZzu.zzg(lZzf.longValue());
        }
        Long lZzg = zzg();
        if (lZzg != null) {
            zzcoVarZzu.zzh(lZzg.longValue());
        }
        zzml zzmlVarZzh = zzh();
        if (zzmlVarZzh != null) {
            zzcoVarZzu.zzi(zzmlVarZzh);
        }
        zzmo zzmoVarZzi = zzi();
        if (zzmoVarZzi != null) {
            zzmn zzmnVar = new zzmn();
            zzns zznsVarZza = zzmoVarZzi.entrySet().zza();
            while (zznsVarZza.hasNext()) {
                Map.Entry entry = (Map.Entry) zznsVarZza.next();
                zzmnVar.zza((String) entry.getKey(), ((zzib) entry.getValue()).zzw());
            }
            zzcoVarZzu.zzo(zzmnVar.zzc());
        }
        Double dZzl = zzl();
        if (dZzl != null) {
            zzcoVarZzu.zzj(dZzl.doubleValue());
        }
        Double dZzm = zzm();
        if (dZzm != null) {
            zzcoVarZzu.zzk(dZzm.doubleValue());
        }
        return zzcoVarZzu.zzp();
    }
}
