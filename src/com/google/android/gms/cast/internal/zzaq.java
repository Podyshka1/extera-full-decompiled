package com.google.android.gms.cast.internal;

import android.os.SystemClock;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaq extends zzd {
    public static final String zzb;
    final zzau zzc;
    final zzau zzd;
    final zzau zze;
    final zzau zzf;
    final zzau zzg;
    final zzau zzh;
    final zzau zzi;
    final zzau zzj;
    final zzau zzk;
    final zzau zzl;
    final zzau zzm;
    final zzau zzn;
    final zzau zzo;
    final zzau zzp;
    final zzau zzq;
    final zzau zzr;
    final zzau zzs;
    final zzau zzt;
    final zzau zzu;
    private long zzv;
    private MediaStatus zzw;
    private Long zzx;
    private zzan zzy;
    private int zzz;

    static {
        int i = CastUtils.$r8$clinit;
        zzb = "urn:x-cast:com.google.cast.media";
    }

    public zzaq(String str) {
        super(zzb, "MediaControlChannel", null);
        this.zzz = -1;
        zzau zzauVar = new zzau(86400000L, "load");
        this.zzc = zzauVar;
        zzau zzauVar2 = new zzau(86400000L, "pause");
        this.zzd = zzauVar2;
        zzau zzauVar3 = new zzau(86400000L, "play");
        this.zze = zzauVar3;
        zzau zzauVar4 = new zzau(86400000L, "stop");
        this.zzf = zzauVar4;
        zzau zzauVar5 = new zzau(10000L, "seek");
        this.zzg = zzauVar5;
        zzau zzauVar6 = new zzau(86400000L, "volume");
        this.zzh = zzauVar6;
        zzau zzauVar7 = new zzau(86400000L, "mute");
        this.zzi = zzauVar7;
        zzau zzauVar8 = new zzau(86400000L, "status");
        this.zzj = zzauVar8;
        zzau zzauVar9 = new zzau(86400000L, "activeTracks");
        this.zzk = zzauVar9;
        zzau zzauVar10 = new zzau(86400000L, "trackStyle");
        this.zzl = zzauVar10;
        zzau zzauVar11 = new zzau(86400000L, "queueInsert");
        this.zzm = zzauVar11;
        zzau zzauVar12 = new zzau(86400000L, "queueUpdate");
        this.zzn = zzauVar12;
        zzau zzauVar13 = new zzau(86400000L, "queueRemove");
        this.zzo = zzauVar13;
        zzau zzauVar14 = new zzau(86400000L, "queueReorder");
        this.zzp = zzauVar14;
        zzau zzauVar15 = new zzau(86400000L, "queueFetchItemIds");
        this.zzq = zzauVar15;
        zzau zzauVar16 = new zzau(86400000L, "queueFetchItemRange");
        this.zzs = zzauVar16;
        this.zzr = new zzau(86400000L, "queueFetchItems");
        zzau zzauVar17 = new zzau(86400000L, "setPlaybackRate");
        this.zzt = zzauVar17;
        zzau zzauVar18 = new zzau(86400000L, "skipAd");
        this.zzu = zzauVar18;
        zzc(zzauVar);
        zzc(zzauVar2);
        zzc(zzauVar3);
        zzc(zzauVar4);
        zzc(zzauVar5);
        zzc(zzauVar6);
        zzc(zzauVar7);
        zzc(zzauVar8);
        zzc(zzauVar9);
        zzc(zzauVar10);
        zzc(zzauVar11);
        zzc(zzauVar12);
        zzc(zzauVar13);
        zzc(zzauVar14);
        zzc(zzauVar15);
        zzc(zzauVar16);
        zzc(zzauVar16);
        zzc(zzauVar17);
        zzc(zzauVar18);
        zzT();
    }

    private final long zzR(double d, long j, long j2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.zzv;
        if (jElapsedRealtime < 0) {
            jElapsedRealtime = 0;
        }
        if (jElapsedRealtime == 0) {
            return j;
        }
        long j3 = j + ((long) (jElapsedRealtime * d));
        if (j2 > 0 && j3 > j2) {
            return j2;
        }
        if (j3 >= 0) {
            return j3;
        }
        return 0L;
    }

    private static zzap zzS(JSONObject jSONObject) {
        MediaError mediaErrorZza = MediaError.zza(jSONObject);
        zzap zzapVar = new zzap();
        int i = CastUtils.$r8$clinit;
        zzapVar.zza = jSONObject.has("customData") ? jSONObject.optJSONObject("customData") : null;
        zzapVar.zzb = mediaErrorZza;
        return zzapVar;
    }

    private final void zzT() {
        this.zzv = 0L;
        this.zzw = null;
        Iterator it = zza().iterator();
        while (it.hasNext()) {
            ((zzau) it.next()).zzc(2002);
        }
    }

    private final void zzU(JSONObject jSONObject, String str) {
        if (jSONObject.has("sequenceNumber")) {
            this.zzz = jSONObject.optInt("sequenceNumber", -1);
        } else {
            this.zza.m341w(str.concat(" message is missing a sequence number."), new Object[0]);
        }
    }

    private final void zzV() {
        zzan zzanVar = this.zzy;
        if (zzanVar != null) {
            zzanVar.zzc();
        }
    }

    private final void zzW() {
        zzan zzanVar = this.zzy;
        if (zzanVar != null) {
            zzanVar.zzd();
        }
    }

    private final void zzX() {
        zzan zzanVar = this.zzy;
        if (zzanVar != null) {
            zzanVar.zzk();
        }
    }

    private final void zzY() {
        zzan zzanVar = this.zzy;
        if (zzanVar != null) {
            zzanVar.zzm();
        }
    }

    private final boolean zzZ() {
        return this.zzz != -1;
    }

    private static int[] zzaa(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            iArr[i] = jSONArray.getInt(i);
        }
        return iArr;
    }

    public final long zzB(zzas zzasVar) {
        JSONObject jSONObject = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject.put("requestId", jZzd);
            jSONObject.put("type", "GET_STATUS");
            MediaStatus mediaStatus = this.zzw;
            if (mediaStatus != null) {
                jSONObject.put("mediaSessionId", mediaStatus.zzb());
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), jZzd, null);
        this.zzj.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzC(zzas zzasVar, MediaSeekOptions mediaSeekOptions) {
        JSONObject jSONObject = new JSONObject();
        long jZzd = zzd();
        long position = mediaSeekOptions.isSeekToInfinite() ? 4294967296000L : mediaSeekOptions.getPosition();
        try {
            jSONObject.put("requestId", jZzd);
            jSONObject.put("type", "SEEK");
            jSONObject.put("mediaSessionId", zzn());
            jSONObject.put("currentTime", CastUtils.millisecToSec(position));
            if (mediaSeekOptions.getResumeState() == 1) {
                jSONObject.put("resumeState", "PLAYBACK_START");
            } else if (mediaSeekOptions.getResumeState() == 2) {
                jSONObject.put("resumeState", "PLAYBACK_PAUSE");
            }
            if (mediaSeekOptions.getCustomData() != null) {
                jSONObject.put("customData", mediaSeekOptions.getCustomData());
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), jZzd, null);
        this.zzx = Long.valueOf(position);
        this.zzg.zzb(jZzd, new zzal(this, zzasVar));
        return jZzd;
    }

    public final long zzE(zzas zzasVar, double d, JSONObject jSONObject) throws zzao {
        if (this.zzw == null) {
            throw new zzao();
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject2.put("requestId", jZzd);
            jSONObject2.put("type", "SET_PLAYBACK_RATE");
            jSONObject2.put("playbackRate", d);
            Preconditions.checkNotNull(this.zzw, "mediaStatus should not be null");
            jSONObject2.put("mediaSessionId", this.zzw.zzb());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), jZzd, null);
        this.zzt.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzG(zzas zzasVar, double d, JSONObject jSONObject) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Volume cannot be " + d);
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject2.put("requestId", jZzd);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzn());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("level", d);
            jSONObject2.put("volume", jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), jZzd, null);
        this.zzh.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final MediaInfo zzK() {
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getMediaInfo();
    }

    public final MediaStatus zzL() {
        return this.zzw;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a6 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b9 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d6 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e0 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e7 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ee A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f5 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0106 A[Catch: JSONException -> 0x0054, TryCatch #0 {JSONException -> 0x0054, blocks: (B:3:0x000f, B:9:0x0038, B:11:0x0044, B:13:0x004e, B:19:0x005f, B:21:0x006b, B:23:0x007d, B:34:0x009c, B:37:0x00a1, B:39:0x00b5, B:41:0x00b9, B:42:0x00c5, B:44:0x00c9, B:45:0x00d2, B:47:0x00d6, B:48:0x00dc, B:50:0x00e0, B:51:0x00e3, B:53:0x00e7, B:54:0x00ea, B:56:0x00ee, B:57:0x00f1, B:59:0x00f5, B:61:0x00ff, B:62:0x0102, B:64:0x0106, B:66:0x011e, B:67:0x0126, B:69:0x012c, B:38:0x00a6, B:27:0x0088, B:29:0x0090, B:65:0x0110, B:73:0x013e, B:74:0x014f, B:76:0x0155, B:80:0x016b, B:82:0x0177, B:84:0x018b, B:89:0x019b, B:93:0x01a9, B:95:0x01be, B:97:0x01da, B:101:0x01e8, B:105:0x01f6, B:109:0x0204, B:110:0x020c, B:112:0x0212, B:113:0x0220, B:116:0x0226, B:120:0x0238, B:124:0x024a, B:125:0x025b, B:127:0x0261, B:131:0x0279, B:133:0x0285, B:134:0x0292, B:136:0x0298, B:137:0x02aa, B:141:0x02b8), top: B:145:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzO(String str) {
        int i;
        int iZza;
        MediaStatus mediaStatus;
        int[] iArrZzaa;
        this.zza.m336d("message received: %s", str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            long jOptLong = jSONObject.optLong("requestId", -1L);
            switch (string.hashCode()) {
                case -1830647528:
                    if (string.equals("LOAD_CANCELLED")) {
                        this.zzc.zzd(jOptLong, 2101, zzS(jSONObject));
                    }
                    break;
                case -1790231854:
                    if (string.equals("QUEUE_ITEMS")) {
                        this.zzr.zzd(jOptLong, 0, null);
                        zzU(jSONObject, "QUEUE_ITEMS");
                        if (this.zzy != null) {
                            JSONArray jSONArray = jSONObject.getJSONArray("items");
                            MediaQueueItem[] mediaQueueItemArr = new MediaQueueItem[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                mediaQueueItemArr[i2] = new MediaQueueItem.Builder(jSONArray.getJSONObject(i2)).build();
                            }
                            this.zzy.zzg(mediaQueueItemArr);
                        }
                    }
                    break;
                case -1125000185:
                    if (string.equals("INVALID_REQUEST")) {
                        this.zza.m341w("received unexpected error: Invalid Request.", new Object[0]);
                        Iterator it = zza().iterator();
                        while (it.hasNext()) {
                            ((zzau) it.next()).zzd(jOptLong, 2001, zzS(jSONObject));
                        }
                    }
                    break;
                case -262628938:
                    if (string.equals("LOAD_FAILED")) {
                        this.zzc.zzd(jOptLong, 2100, zzS(jSONObject));
                    }
                    break;
                case 66247144:
                    if (string.equals("ERROR")) {
                        Iterator it2 = zza().iterator();
                        while (it2.hasNext()) {
                            ((zzau) it2.next()).zzd(jOptLong, 2100, zzS(jSONObject));
                        }
                        if (this.zzy != null) {
                            this.zzy.zzb(MediaError.zza(jSONObject));
                        }
                    }
                    break;
                case 154411710:
                    if (string.equals("QUEUE_CHANGE")) {
                        this.zzs.zzd(jOptLong, 0, null);
                        zzU(jSONObject, "QUEUE_CHANGE");
                        if (this.zzy != null) {
                            String string2 = jSONObject.getString("changeType");
                            int[] iArrZzaa2 = zzaa(jSONObject.getJSONArray("itemIds"));
                            int iOptInt = jSONObject.optInt("insertBefore", 0);
                            if (iArrZzaa2 != null) {
                                switch (string2.hashCode()) {
                                    case -2130463047:
                                        if (string2.equals("INSERT")) {
                                            this.zzy.zzf(iArrZzaa2, iOptInt);
                                        }
                                        break;
                                    case -1881281404:
                                        if (string2.equals("REMOVE")) {
                                            this.zzy.zzh(iArrZzaa2);
                                        }
                                        break;
                                    case -1785516855:
                                        if (string2.equals("UPDATE")) {
                                            int[] iArrZzaa3 = zzaa(jSONObject.getJSONArray("itemIds"));
                                            Preconditions.checkNotNull(iArrZzaa3, "A list of item IDs is expected in a QUEUE UPDATE message.");
                                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("reorderItemIds");
                                            if (jSONArrayOptJSONArray != null) {
                                                this.zzy.zzi(CastUtils.zzd(iArrZzaa3), CastUtils.zzd((int[]) Preconditions.checkNotNull(zzaa(jSONArrayOptJSONArray))), jSONObject.optInt("insertBefore", 0));
                                            } else {
                                                this.zzy.zze(iArrZzaa3);
                                            }
                                        }
                                        break;
                                    case 1122976047:
                                        if (string2.equals("ITEMS_CHANGE")) {
                                            this.zzy.zzj(iArrZzaa2);
                                        }
                                        break;
                                }
                            }
                        }
                    }
                    break;
                case 431600379:
                    if (string.equals("INVALID_PLAYER_STATE")) {
                        this.zza.m341w("received unexpected error: Invalid Player State.", new Object[0]);
                        Iterator it3 = zza().iterator();
                        while (it3.hasNext()) {
                            ((zzau) it3.next()).zzd(jOptLong, 2100, zzS(jSONObject));
                        }
                    }
                    break;
                case 823510221:
                    if (string.equals("MEDIA_STATUS")) {
                        JSONArray jSONArray2 = jSONObject.getJSONArray("status");
                        if (jSONArray2.length() > 0) {
                            JSONObject jSONObject2 = jSONArray2.getJSONObject(0);
                            boolean zZze = this.zzc.zze(jOptLong);
                            if (this.zzh.zzf() && !this.zzh.zze(jOptLong)) {
                                i = 1;
                                if (zZze) {
                                }
                            } else if (!this.zzi.zzf() || this.zzi.zze(jOptLong)) {
                                i = 0;
                                if (zZze || (mediaStatus = this.zzw) == null) {
                                    this.zzw = new MediaStatus(jSONObject2);
                                    this.zzv = SystemClock.elapsedRealtime();
                                    iZza = 127;
                                } else {
                                    iZza = mediaStatus.zza(jSONObject2, i);
                                }
                                if ((iZza & 1) != 0) {
                                    this.zzv = SystemClock.elapsedRealtime();
                                    this.zzz = -1;
                                    zzY();
                                }
                                if ((iZza & 2) != 0) {
                                    this.zzv = SystemClock.elapsedRealtime();
                                    zzY();
                                }
                                if ((iZza & 128) != 0) {
                                    this.zzv = SystemClock.elapsedRealtime();
                                }
                                if ((iZza & 4) != 0) {
                                    zzV();
                                }
                                if ((iZza & 8) != 0) {
                                    zzX();
                                }
                                if ((iZza & 16) != 0) {
                                    zzW();
                                }
                                if ((iZza & 32) != 0) {
                                    this.zzv = SystemClock.elapsedRealtime();
                                    zzan zzanVar = this.zzy;
                                    if (zzanVar != null) {
                                        zzanVar.zza();
                                    }
                                }
                                if ((iZza & 64) != 0) {
                                    this.zzv = SystemClock.elapsedRealtime();
                                    zzY();
                                }
                            } else {
                                i = 1;
                                if (zZze) {
                                    this.zzw = new MediaStatus(jSONObject2);
                                    this.zzv = SystemClock.elapsedRealtime();
                                    iZza = 127;
                                    if ((iZza & 1) != 0) {
                                    }
                                    if ((iZza & 2) != 0) {
                                    }
                                    if ((iZza & 128) != 0) {
                                    }
                                    if ((iZza & 4) != 0) {
                                    }
                                    if ((iZza & 8) != 0) {
                                    }
                                    if ((iZza & 16) != 0) {
                                    }
                                    if ((iZza & 32) != 0) {
                                    }
                                    if ((iZza & 64) != 0) {
                                    }
                                }
                            }
                        } else {
                            this.zzw = null;
                            zzY();
                            zzV();
                            zzX();
                            zzW();
                        }
                        Iterator it4 = zza().iterator();
                        while (it4.hasNext()) {
                            ((zzau) it4.next()).zzd(jOptLong, 0, null);
                        }
                    }
                    break;
                case 2107149050:
                    if (string.equals("QUEUE_ITEM_IDS")) {
                        this.zzq.zzd(jOptLong, 0, null);
                        zzU(jSONObject, "QUEUE_ITEM_IDS");
                        if (this.zzy != null && (iArrZzaa = zzaa(jSONObject.getJSONArray("itemIds"))) != null) {
                            this.zzy.zze(iArrZzaa);
                            break;
                        }
                    }
                    break;
            }
        } catch (JSONException e) {
            this.zza.m341w("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    public final void zzP(long j, int i) {
        Iterator it = zza().iterator();
        while (it.hasNext()) {
            ((zzau) it.next()).zzd(j, i, null);
        }
    }

    public final void zzQ(zzan zzanVar) {
        this.zzy = zzanVar;
    }

    @Override // com.google.android.gms.cast.internal.zzp
    public final void zzf() {
        zzb();
        zzT();
    }

    public final long zzk() {
        MediaLiveSeekableRange liveSeekableRange;
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus == null || (liveSeekableRange = mediaStatus.getLiveSeekableRange()) == null) {
            return 0L;
        }
        long endTime = liveSeekableRange.getEndTime();
        return !liveSeekableRange.isLiveDone() ? zzR(1.0d, endTime, -1L) : endTime;
    }

    public final long zzm() {
        MediaStatus mediaStatus;
        MediaInfo mediaInfoZzK = zzK();
        if (mediaInfoZzK == null || (mediaStatus = this.zzw) == null) {
            return 0L;
        }
        Long l = this.zzx;
        if (l == null) {
            if (this.zzv == 0) {
                return 0L;
            }
            double playbackRate = mediaStatus.getPlaybackRate();
            long streamPosition = mediaStatus.getStreamPosition();
            return (playbackRate == 0.0d || mediaStatus.getPlayerState() != 2) ? streamPosition : zzR(playbackRate, streamPosition, mediaInfoZzK.getStreamDuration());
        }
        if (l.equals(4294967296000L)) {
            if (this.zzw.getLiveSeekableRange() != null) {
                return Math.min(l.longValue(), zzk());
            }
            if (zzo() >= 0) {
                return Math.min(l.longValue(), zzo());
            }
        }
        return l.longValue();
    }

    public final long zzn() throws zzao {
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus != null) {
            return mediaStatus.zzb();
        }
        throw new zzao();
    }

    public final long zzo() {
        MediaInfo mediaInfoZzK = zzK();
        if (mediaInfoZzK != null) {
            return mediaInfoZzK.getStreamDuration();
        }
        return 0L;
    }

    public final long zzp(zzas zzasVar, MediaLoadRequestData mediaLoadRequestData) {
        if (mediaLoadRequestData.getMediaInfo() == null && mediaLoadRequestData.getQueueData() == null) {
            throw new IllegalArgumentException("MediaInfo and MediaQueueData should not be both null");
        }
        JSONObject json = mediaLoadRequestData.toJson();
        if (json == null) {
            throw new IllegalArgumentException("Failed to jsonify the load request due to malformed request");
        }
        long jZzd = zzd();
        try {
            json.put("requestId", jZzd);
            json.put("type", "LOAD");
        } catch (JSONException unused) {
        }
        zzg(json.toString(), jZzd, null);
        this.zzc.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzq(zzas zzasVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject2.put("requestId", jZzd);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzn());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), jZzd, null);
        this.zzd.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzr(zzas zzasVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject2.put("requestId", jZzd);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzn());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), jZzd, null);
        this.zze.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzu(zzas zzasVar) {
        JSONObject jSONObject = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject.put("requestId", jZzd);
            jSONObject.put("type", "QUEUE_GET_ITEM_IDS");
            jSONObject.put("mediaSessionId", zzn());
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), jZzd, null);
        this.zzq.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzv(zzas zzasVar, int[] iArr) {
        JSONObject jSONObject = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject.put("requestId", jZzd);
            jSONObject.put("type", "QUEUE_GET_ITEMS");
            jSONObject.put("mediaSessionId", zzn());
            JSONArray jSONArray = new JSONArray();
            for (int i : iArr) {
                jSONArray.put(i);
            }
            jSONObject.put("itemIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), jZzd, null);
        this.zzr.zzb(jZzd, zzasVar);
        return jZzd;
    }

    public final long zzA(zzas zzasVar, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Boolean bool, Integer num, JSONObject jSONObject) {
        if (j != -1 && j < 0) {
            throw new IllegalArgumentException("playPosition cannot be negative: " + j);
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzd = zzd();
        try {
            jSONObject2.put("requestId", jZzd);
            jSONObject2.put("type", "QUEUE_UPDATE");
            jSONObject2.put("mediaSessionId", zzn());
            if (i != 0) {
                jSONObject2.put("currentItemId", i);
            }
            if (i2 != 0) {
                jSONObject2.put("jump", i2);
            }
            if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                    jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                }
                jSONObject2.put("items", jSONArray);
            }
            if (bool != null) {
                jSONObject2.put("shuffle", bool);
            }
            String strZza = MediaCommon.zza(num);
            if (strZza != null) {
                jSONObject2.put("repeatMode", strZza);
            }
            if (j != -1) {
                jSONObject2.put("currentTime", CastUtils.millisecToSec(j));
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
            if (zzZ()) {
                jSONObject2.put("sequenceNumber", this.zzz);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), jZzd, null);
        this.zzn.zzb(jZzd, new zzam(this, zzasVar));
        return jZzd;
    }
}
