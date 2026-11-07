package com.google.android.gms.cast.internal;

import android.os.SystemClock;
import androidx.mediarouter.media.MediaRouteProviderProtocol;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.AdBreakStatus;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.time.DurationKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzar extends zzd {
    public static final String zzb;
    final zzav zzc;
    final zzav zzd;
    final zzav zze;
    final zzav zzf;
    final zzav zzg;
    final zzav zzh;
    final zzav zzi;
    final zzav zzj;
    final zzav zzk;
    final zzav zzl;
    final zzav zzm;
    final zzav zzn;
    final zzav zzo;
    final zzav zzp;
    final zzav zzq;
    final zzav zzr;
    final zzav zzs;
    final zzav zzt;
    final zzav zzu;
    private long zzv;
    private MediaStatus zzw;
    private Long zzx;
    private zzao zzy;
    private int zzz;

    static {
        int i = CastUtils.zza;
        zzb = "urn:x-cast:com.google.cast.media";
    }

    public zzar(String str) {
        super(zzb, "MediaControlChannel", null);
        this.zzz = -1;
        zzav zzavVar = new zzav(DurationKt.MILLIS_IN_DAY, "load");
        this.zzc = zzavVar;
        zzav zzavVar2 = new zzav(DurationKt.MILLIS_IN_DAY, "pause");
        this.zzd = zzavVar2;
        zzav zzavVar3 = new zzav(DurationKt.MILLIS_IN_DAY, "play");
        this.zze = zzavVar3;
        zzav zzavVar4 = new zzav(DurationKt.MILLIS_IN_DAY, "stop");
        this.zzf = zzavVar4;
        zzav zzavVar5 = new zzav(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, "seek");
        this.zzg = zzavVar5;
        zzav zzavVar6 = new zzav(DurationKt.MILLIS_IN_DAY, MediaRouteProviderProtocol.CLIENT_DATA_VOLUME);
        this.zzh = zzavVar6;
        zzav zzavVar7 = new zzav(DurationKt.MILLIS_IN_DAY, "mute");
        this.zzi = zzavVar7;
        zzav zzavVar8 = new zzav(DurationKt.MILLIS_IN_DAY, "status");
        this.zzj = zzavVar8;
        zzav zzavVar9 = new zzav(DurationKt.MILLIS_IN_DAY, "activeTracks");
        this.zzk = zzavVar9;
        zzav zzavVar10 = new zzav(DurationKt.MILLIS_IN_DAY, "trackStyle");
        this.zzl = zzavVar10;
        zzav zzavVar11 = new zzav(DurationKt.MILLIS_IN_DAY, "queueInsert");
        this.zzm = zzavVar11;
        zzav zzavVar12 = new zzav(DurationKt.MILLIS_IN_DAY, "queueUpdate");
        this.zzn = zzavVar12;
        zzav zzavVar13 = new zzav(DurationKt.MILLIS_IN_DAY, "queueRemove");
        this.zzo = zzavVar13;
        zzav zzavVar14 = new zzav(DurationKt.MILLIS_IN_DAY, "queueReorder");
        this.zzp = zzavVar14;
        zzav zzavVar15 = new zzav(DurationKt.MILLIS_IN_DAY, "queueFetchItemIds");
        this.zzq = zzavVar15;
        zzav zzavVar16 = new zzav(DurationKt.MILLIS_IN_DAY, "queueFetchItemRange");
        this.zzs = zzavVar16;
        this.zzr = new zzav(DurationKt.MILLIS_IN_DAY, "queueFetchItems");
        zzav zzavVar17 = new zzav(DurationKt.MILLIS_IN_DAY, "setPlaybackRate");
        this.zzt = zzavVar17;
        zzav zzavVar18 = new zzav(DurationKt.MILLIS_IN_DAY, "skipAd");
        this.zzu = zzavVar18;
        zzc(zzavVar);
        zzc(zzavVar2);
        zzc(zzavVar3);
        zzc(zzavVar4);
        zzc(zzavVar5);
        zzc(zzavVar6);
        zzc(zzavVar7);
        zzc(zzavVar8);
        zzc(zzavVar9);
        zzc(zzavVar10);
        zzc(zzavVar11);
        zzc(zzavVar12);
        zzc(zzavVar13);
        zzc(zzavVar14);
        zzc(zzavVar15);
        zzc(zzavVar16);
        zzc(zzavVar16);
        zzc(zzavVar17);
        zzc(zzavVar18);
        zzZ();
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

    private final boolean zzS() {
        return this.zzz != -1;
    }

    private final void zzT(JSONObject jSONObject, String str) {
        if (jSONObject.has("sequenceNumber")) {
            this.zzz = jSONObject.optInt("sequenceNumber", -1);
        } else {
            this.zza.m318w(str.concat(" message is missing a sequence number."), new Object[0]);
        }
    }

    private static int[] zzU(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            iArr[i] = jSONArray.getInt(i);
        }
        return iArr;
    }

    private final void zzV() {
        zzao zzaoVar = this.zzy;
        if (zzaoVar != null) {
            zzaoVar.zza();
        }
    }

    private final void zzW() {
        zzao zzaoVar = this.zzy;
        if (zzaoVar != null) {
            zzaoVar.zzb();
        }
    }

    private final void zzX() {
        zzao zzaoVar = this.zzy;
        if (zzaoVar != null) {
            zzaoVar.zzc();
        }
    }

    private final void zzY() {
        zzao zzaoVar = this.zzy;
        if (zzaoVar != null) {
            zzaoVar.zzd();
        }
    }

    private final void zzZ() {
        this.zzv = 0L;
        this.zzw = null;
        Iterator it = zzb().iterator();
        while (it.hasNext()) {
            ((zzav) it.next()).zze(CastStatusCodes.CANCELED);
        }
    }

    private static zzaq zzaa(JSONObject jSONObject) {
        MediaError mediaErrorZza = MediaError.zza(jSONObject);
        zzaq zzaqVar = new zzaq();
        int i = CastUtils.zza;
        zzaqVar.zza = jSONObject.has("customData") ? jSONObject.optJSONObject("customData") : null;
        zzaqVar.zzb = mediaErrorZza;
        return zzaqVar;
    }

    public final MediaStatus zzA() {
        return this.zzw;
    }

    public final MediaInfo zzB() {
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getMediaInfo();
    }

    public final long zzH(zzat zzatVar) {
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "QUEUE_GET_ITEM_IDS");
            jSONObject.put("mediaSessionId", zzM());
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzq.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzI(zzat zzatVar, int i, int i2, int i3) {
        if (i2 > 0 && i3 == 0) {
            i3 = 0;
        } else if (i2 != 0 || i3 <= 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Exactly one of nextCount and prevCount must be positive and the other must be zero");
            return 0L;
        }
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "QUEUE_GET_ITEM_RANGE");
            jSONObject.put("mediaSessionId", zzM());
            jSONObject.put("itemId", i);
            if (i2 > 0) {
                jSONObject.put("nextCount", i2);
            }
            if (i3 > 0) {
                jSONObject.put("prevCount", i3);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzs.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzJ(zzat zzatVar, int[] iArr) {
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "QUEUE_GET_ITEMS");
            jSONObject.put("mediaSessionId", zzM());
            JSONArray jSONArray = new JSONArray();
            for (int i : iArr) {
                jSONArray.put(i);
            }
            jSONObject.put("itemIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzr.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzK(String str, List list) {
        long jZzg = zzg();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "PRECACHE");
            jSONObject.put("precacheData", str);
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        return jZzg;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0098 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b5 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d1 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00db A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e2 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f0 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0101 A[Catch: JSONException -> 0x0053, TryCatch #0 {JSONException -> 0x0053, blocks: (B:3:0x000d, B:9:0x0037, B:11:0x0043, B:13:0x004d, B:19:0x005e, B:21:0x006a, B:23:0x007d, B:34:0x0098, B:37:0x009d, B:39:0x00b1, B:41:0x00b5, B:43:0x00c1, B:45:0x00c5, B:47:0x00cd, B:49:0x00d1, B:50:0x00d7, B:52:0x00db, B:53:0x00de, B:55:0x00e2, B:56:0x00e5, B:58:0x00e9, B:59:0x00ec, B:61:0x00f0, B:63:0x00fa, B:64:0x00fd, B:66:0x0101, B:68:0x010a, B:70:0x011c, B:71:0x0124, B:73:0x012a, B:38:0x00a2, B:27:0x0086, B:29:0x008e, B:69:0x010e, B:77:0x013c, B:78:0x014b, B:80:0x0151, B:84:0x0167, B:86:0x0173, B:88:0x0187, B:93:0x0197, B:97:0x01a5, B:99:0x01ba, B:101:0x01d6, B:105:0x01e4, B:109:0x01f2, B:113:0x0200, B:114:0x0208, B:116:0x020e, B:117:0x021c, B:119:0x0220, B:123:0x0232, B:127:0x0244, B:128:0x0253, B:130:0x0259, B:134:0x0271, B:137:0x027e, B:138:0x028a, B:140:0x0290, B:141:0x02a2, B:145:0x02b0), top: B:149:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzL(String str) {
        int i;
        int iZzb;
        boolean z;
        MediaStatus mediaStatus;
        int[] iArrZzU;
        Logger logger = this.zza;
        logger.m311d("message received: %s", str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            long jOptLong = jSONObject.optLong("requestId", -1L);
            switch (string.hashCode()) {
                case -1830647528:
                    if (string.equals(MediaError.ERROR_TYPE_LOAD_CANCELLED)) {
                        this.zzc.zzd(jOptLong, RemoteMediaPlayer.STATUS_CANCELED, zzaa(jSONObject));
                    }
                    break;
                case -1790231854:
                    if (string.equals("QUEUE_ITEMS")) {
                        this.zzr.zzd(jOptLong, 0, null);
                        zzT(jSONObject, "QUEUE_ITEMS");
                        if (this.zzy != null) {
                            JSONArray jSONArray = jSONObject.getJSONArray(PluginsConstants.Settings.ITEMS);
                            MediaQueueItem[] mediaQueueItemArr = new MediaQueueItem[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                mediaQueueItemArr[i2] = new MediaQueueItem.Builder(jSONArray.getJSONObject(i2)).build();
                            }
                            this.zzy.zzk(mediaQueueItemArr);
                            break;
                        }
                    }
                    break;
                case -1125000185:
                    if (string.equals("INVALID_REQUEST")) {
                        logger.m318w("received unexpected error: Invalid Request.", new Object[0]);
                        Iterator it = zzb().iterator();
                        while (it.hasNext()) {
                            ((zzav) it.next()).zzd(jOptLong, CastStatusCodes.INVALID_REQUEST, zzaa(jSONObject));
                        }
                    }
                    break;
                case -262628938:
                    if (string.equals(MediaError.ERROR_TYPE_LOAD_FAILED)) {
                        this.zzc.zzd(jOptLong, 2100, zzaa(jSONObject));
                    }
                    break;
                case 66247144:
                    if (string.equals(MediaError.ERROR_TYPE_ERROR)) {
                        Iterator it2 = zzb().iterator();
                        while (it2.hasNext()) {
                            ((zzav) it2.next()).zzd(jOptLong, 2100, zzaa(jSONObject));
                        }
                        if (this.zzy != null) {
                            this.zzy.zzf(MediaError.zza(jSONObject));
                        }
                    }
                    break;
                case 154411710:
                    if (string.equals("QUEUE_CHANGE")) {
                        this.zzs.zzd(jOptLong, 0, null);
                        zzT(jSONObject, "QUEUE_CHANGE");
                        if (this.zzy != null) {
                            String string2 = jSONObject.getString("changeType");
                            int[] iArrZzU2 = zzU(jSONObject.getJSONArray("itemIds"));
                            int iOptInt = jSONObject.optInt("insertBefore", 0);
                            if (iArrZzU2 != null) {
                                switch (string2.hashCode()) {
                                    case -2130463047:
                                        if (string2.equals("INSERT")) {
                                            this.zzy.zzh(iArrZzU2, iOptInt);
                                        }
                                        break;
                                    case -1881281404:
                                        if (string2.equals("REMOVE")) {
                                            this.zzy.zzj(iArrZzU2);
                                        }
                                        break;
                                    case -1785516855:
                                        if (string2.equals("UPDATE")) {
                                            int[] iArrZzU3 = zzU(jSONObject.getJSONArray("itemIds"));
                                            Preconditions.checkNotNull(iArrZzU3, "A list of item IDs is expected in a QUEUE UPDATE message.");
                                            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("reorderItemIds");
                                            if (jSONArrayOptJSONArray != null) {
                                                this.zzy.zzl(CastUtils.zzf(iArrZzU3), CastUtils.zzf((int[]) Preconditions.checkNotNull(zzU(jSONArrayOptJSONArray))), jSONObject.optInt("insertBefore", 0));
                                            } else {
                                                this.zzy.zzg(iArrZzU3);
                                            }
                                        }
                                        break;
                                    case 1122976047:
                                        if (string2.equals("ITEMS_CHANGE")) {
                                            this.zzy.zzi(iArrZzU2);
                                        }
                                        break;
                                }
                            }
                        }
                    }
                    break;
                case 431600379:
                    if (string.equals(MediaError.ERROR_TYPE_INVALID_PLAYER_STATE)) {
                        logger.m318w("received unexpected error: Invalid Player State.", new Object[0]);
                        Iterator it3 = zzb().iterator();
                        while (it3.hasNext()) {
                            ((zzav) it3.next()).zzd(jOptLong, 2100, zzaa(jSONObject));
                        }
                    }
                    break;
                case 823510221:
                    if (string.equals("MEDIA_STATUS")) {
                        JSONArray jSONArray2 = jSONObject.getJSONArray("status");
                        if (jSONArray2.length() > 0) {
                            JSONObject jSONObject2 = jSONArray2.getJSONObject(0);
                            boolean zZzc = this.zzc.zzc(jOptLong);
                            zzav zzavVar = this.zzh;
                            boolean z2 = true;
                            if (!zzavVar.zzb() || zzavVar.zzc(jOptLong)) {
                                zzav zzavVar2 = this.zzi;
                                if (!zzavVar2.zzb() || zzavVar2.zzc(jOptLong)) {
                                    i = 0;
                                    if (zZzc || (mediaStatus = this.zzw) == null) {
                                        this.zzw = new MediaStatus(jSONObject2);
                                        this.zzv = SystemClock.elapsedRealtime();
                                        iZzb = 127;
                                    } else {
                                        iZzb = mediaStatus.zzb(jSONObject2, i);
                                    }
                                    if ((iZzb & 1) == 0) {
                                        this.zzv = SystemClock.elapsedRealtime();
                                        this.zzz = -1;
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if ((iZzb & 2) == 0) {
                                        this.zzv = SystemClock.elapsedRealtime();
                                    } else {
                                        z2 = z;
                                    }
                                    if ((iZzb & 128) != 0) {
                                        this.zzv = SystemClock.elapsedRealtime();
                                    }
                                    if ((iZzb & 4) != 0) {
                                        zzW();
                                    }
                                    if ((iZzb & 8) != 0) {
                                        zzX();
                                    }
                                    if ((iZzb & 16) != 0) {
                                        zzY();
                                    }
                                    if ((iZzb & 32) != 0) {
                                        this.zzv = SystemClock.elapsedRealtime();
                                        zzao zzaoVar = this.zzy;
                                        if (zzaoVar != null) {
                                            zzaoVar.zze();
                                        }
                                    }
                                    if ((iZzb & 64) == 0) {
                                        this.zzv = SystemClock.elapsedRealtime();
                                    } else if (z2) {
                                    }
                                    zzV();
                                } else {
                                    i = 1;
                                    if (zZzc) {
                                        this.zzw = new MediaStatus(jSONObject2);
                                        this.zzv = SystemClock.elapsedRealtime();
                                        iZzb = 127;
                                        if ((iZzb & 1) == 0) {
                                        }
                                        if ((iZzb & 2) == 0) {
                                        }
                                        if ((iZzb & 128) != 0) {
                                        }
                                        if ((iZzb & 4) != 0) {
                                        }
                                        if ((iZzb & 8) != 0) {
                                        }
                                        if ((iZzb & 16) != 0) {
                                        }
                                        if ((iZzb & 32) != 0) {
                                        }
                                        if ((iZzb & 64) == 0) {
                                        }
                                        zzV();
                                    }
                                }
                            } else {
                                i = 1;
                                if (zZzc) {
                                }
                            }
                        } else {
                            this.zzw = null;
                            zzV();
                            zzW();
                            zzX();
                            zzY();
                        }
                        Iterator it4 = zzb().iterator();
                        while (it4.hasNext()) {
                            ((zzav) it4.next()).zzd(jOptLong, 0, null);
                        }
                    }
                    break;
                case 2107149050:
                    if (string.equals("QUEUE_ITEM_IDS")) {
                        this.zzq.zzd(jOptLong, 0, null);
                        zzT(jSONObject, "QUEUE_ITEM_IDS");
                        if (this.zzy != null && (iArrZzU = zzU(jSONObject.getJSONArray("itemIds"))) != null) {
                            this.zzy.zzg(iArrZzU);
                            break;
                        }
                    }
                    break;
            }
        } catch (JSONException e) {
            this.zza.m318w("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    public final long zzM() throws zzap {
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus != null) {
            return mediaStatus.zza();
        }
        throw new zzap();
    }

    public final void zzN(long j, int i) {
        Iterator it = zzb().iterator();
        while (it.hasNext()) {
            ((zzav) it.next()).zzd(j, i, null);
        }
    }

    public final /* synthetic */ void zzO(Long l) {
        this.zzx = null;
    }

    public final /* synthetic */ zzao zzP() {
        return this.zzy;
    }

    public final /* synthetic */ int zzQ() {
        return this.zzz;
    }

    @Override // com.google.android.gms.cast.internal.zzq
    public final void zzh() {
        zza();
        zzZ();
    }

    public final void zzi(zzao zzaoVar) {
        this.zzy = zzaoVar;
    }

    public final long zzj(zzat zzatVar, MediaLoadRequestData mediaLoadRequestData) {
        if (mediaLoadRequestData.getMediaInfo() == null && mediaLoadRequestData.getQueueData() == null) {
            f$$ExternalSyntheticBUOutline1.m215m("MediaInfo and MediaQueueData should not be both null");
            return 0L;
        }
        JSONObject json = mediaLoadRequestData.toJson();
        if (json == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Failed to jsonify the load request due to malformed request");
            return 0L;
        }
        long jZzg = zzg();
        try {
            json.put("requestId", jZzg);
            json.put("type", "LOAD");
        } catch (JSONException unused) {
        }
        zzf(json.toString(), jZzg, null);
        this.zzc.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzk(zzat zzatVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzM());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzd.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzl(zzat zzatVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "STOP");
            jSONObject2.put("mediaSessionId", zzM());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzf.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzm(zzat zzatVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzM());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zze.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzn(zzat zzatVar, MediaSeekOptions mediaSeekOptions) {
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        long position = mediaSeekOptions.isSeekToInfinite() ? 4294967296000L : mediaSeekOptions.getPosition();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "SEEK");
            jSONObject.put("mediaSessionId", zzM());
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
        zzf(jSONObject.toString(), jZzg, null);
        this.zzx = Long.valueOf(position);
        this.zzg.zza(jZzg, new zzam(this, zzatVar));
        return jZzg;
    }

    public final long zzo(zzat zzatVar) {
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "SKIP_AD");
            jSONObject.put("mediaSessionId", zzM());
        } catch (JSONException e) {
            this.zza.m318w(String.format(Locale.ROOT, "Error creating SkipAd message: %s", e.getMessage()), new Object[0]);
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzu.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzp(zzat zzatVar, double d, JSONObject jSONObject) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 17);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzM());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("level", d);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzh.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzq(zzat zzatVar, boolean z, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzM());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("muted", z);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzi.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzr(zzat zzatVar, double d, JSONObject jSONObject) throws zzap {
        if (this.zzw == null) {
            throw new zzap();
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "SET_PLAYBACK_RATE");
            jSONObject2.put("playbackRate", d);
            Preconditions.checkNotNull(this.zzw, "mediaStatus should not be null");
            jSONObject2.put("mediaSessionId", this.zzw.zza());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzt.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzs(zzat zzatVar) {
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "GET_STATUS");
            MediaStatus mediaStatus = this.zzw;
            if (mediaStatus != null) {
                jSONObject.put("mediaSessionId", mediaStatus.zza());
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzj.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzv() {
        MediaStatus mediaStatus;
        MediaInfo mediaInfoZzB = zzB();
        if (mediaInfoZzB == null || (mediaStatus = this.zzw) == null) {
            return 0L;
        }
        Long l = this.zzx;
        if (l == null) {
            if (this.zzv == 0) {
                return 0L;
            }
            double playbackRate = mediaStatus.getPlaybackRate();
            long streamPosition = mediaStatus.getStreamPosition();
            return (playbackRate == 0.0d || mediaStatus.getPlayerState() != 2) ? streamPosition : zzR(playbackRate, streamPosition, mediaInfoZzB.getStreamDuration());
        }
        if (l.equals(4294967296000L)) {
            if (this.zzw.getLiveSeekableRange() != null) {
                return Math.min(l.longValue(), zzx());
            }
            if (zzz() >= 0) {
                return Math.min(l.longValue(), zzz());
            }
        }
        return l.longValue();
    }

    public final long zzw() {
        MediaLiveSeekableRange liveSeekableRange;
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus == null || (liveSeekableRange = mediaStatus.getLiveSeekableRange()) == null) {
            return 0L;
        }
        long startTime = liveSeekableRange.getStartTime();
        if (liveSeekableRange.isMovingWindow()) {
            startTime = zzR(1.0d, startTime, -1L);
        }
        return liveSeekableRange.isLiveDone() ? Math.min(startTime, liveSeekableRange.getEndTime()) : startTime;
    }

    public final long zzx() {
        MediaLiveSeekableRange liveSeekableRange;
        MediaStatus mediaStatus = this.zzw;
        if (mediaStatus == null || (liveSeekableRange = mediaStatus.getLiveSeekableRange()) == null) {
            return 0L;
        }
        long endTime = liveSeekableRange.getEndTime();
        return !liveSeekableRange.isLiveDone() ? zzR(1.0d, endTime, -1L) : endTime;
    }

    public final long zzy() {
        MediaStatus mediaStatus;
        AdBreakStatus adBreakStatus;
        if (this.zzv == 0 || (mediaStatus = this.zzw) == null || (adBreakStatus = mediaStatus.getAdBreakStatus()) == null) {
            return 0L;
        }
        double playbackRate = mediaStatus.getPlaybackRate();
        if (playbackRate == 0.0d) {
            playbackRate = 1.0d;
        }
        return zzR(mediaStatus.getPlayerState() != 2 ? 0.0d : playbackRate, adBreakStatus.getCurrentBreakClipTimeInMs(), 0L);
    }

    public final long zzz() {
        MediaInfo mediaInfoZzB = zzB();
        if (mediaInfoZzB != null) {
            return mediaInfoZzB.getStreamDuration();
        }
        return 0L;
    }

    public final long zzF(zzat zzatVar, int[] iArr, JSONObject jSONObject) {
        if (iArr == null || iArr.length == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("itemIdsToRemove must not be null or empty.");
            return 0L;
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "QUEUE_REMOVE");
            jSONObject2.put("mediaSessionId", zzM());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < iArr.length; i++) {
                jSONArray.put(i, iArr[i]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
            if (zzS()) {
                jSONObject2.put("sequenceNumber", this.zzz);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzo.zza(jZzg, new zzan(this, zzatVar));
        return jZzg;
    }

    public final long zzG(zzat zzatVar, int[] iArr, int i, JSONObject jSONObject) {
        if (iArr == null || iArr.length == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("itemIdsToReorder must not be null or empty.");
            return 0L;
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "QUEUE_REORDER");
            jSONObject2.put("mediaSessionId", zzM());
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jSONArray.put(i2, iArr[i2]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
            if (zzS()) {
                jSONObject2.put("sequenceNumber", this.zzz);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzp.zza(jZzg, new zzan(this, zzatVar));
        return jZzg;
    }

    public final long zzt(zzat zzatVar, long[] jArr) {
        if (jArr == null) {
            f$$ExternalSyntheticBUOutline1.m215m("trackIds cannot be null");
            return 0L;
        }
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzM());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzk.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzu(zzat zzatVar, TextTrackStyle textTrackStyle) {
        if (textTrackStyle == null) {
            f$$ExternalSyntheticBUOutline1.m215m("trackStyle cannot be null");
            return 0L;
        }
        JSONObject jSONObject = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject.put("requestId", jZzg);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("textTrackStyle", textTrackStyle.zza());
            jSONObject.put("mediaSessionId", zzM());
        } catch (JSONException unused) {
        }
        zzf(jSONObject.toString(), jZzg, null);
        this.zzl.zza(jZzg, zzatVar);
        return jZzg;
    }

    public final long zzD(zzat zzatVar, MediaQueueItem[] mediaQueueItemArr, int i, int i2, int i3, long j, JSONObject jSONObject) {
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("itemsToInsert must not be null or empty.");
            return 0L;
        }
        if (j != -1 && j < 0) {
            zzar$$ExternalSyntheticBUOutline0.m320m(String.valueOf(j).length() + 34, "playPosition can not be negative: ", j);
            return 0L;
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "QUEUE_INSERT");
            jSONObject2.put("mediaSessionId", zzM());
            JSONArray jSONArray = new JSONArray();
            for (int i4 = 0; i4 < mediaQueueItemArr.length; i4++) {
                jSONArray.put(i4, mediaQueueItemArr[i4].toJson());
            }
            jSONObject2.put(PluginsConstants.Settings.ITEMS, jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (i3 != -1) {
                jSONObject2.put("currentItemIndex", 0);
            }
            if (j != -1) {
                jSONObject2.put("currentTime", CastUtils.millisecToSec(j));
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
            if (zzS()) {
                jSONObject2.put("sequenceNumber", this.zzz);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzm.zza(jZzg, new zzan(this, zzatVar));
        return jZzg;
    }

    public final long zzC(zzat zzatVar, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) {
        int length;
        String strZza;
        if (mediaQueueItemArr == null || (length = mediaQueueItemArr.length) == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("items must not be null or empty.");
            return 0L;
        }
        if (i < 0 || i >= length) {
            zzar$$ExternalSyntheticBUOutline1.m321m(String.valueOf(i).length() + 20, "Invalid startIndex: ", i);
            return 0L;
        }
        if (j != -1 && j < 0) {
            zzar$$ExternalSyntheticBUOutline0.m320m(String.valueOf(j).length() + 34, "playPosition can not be negative: ", j);
            return 0L;
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        this.zzc.zza(jZzg, zzatVar);
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "QUEUE_LOAD");
            JSONArray jSONArray = new JSONArray();
            for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
            }
            jSONObject2.put(PluginsConstants.Settings.ITEMS, jSONArray);
            strZza = MediaCommon.zza(Integer.valueOf(i2));
        } catch (JSONException unused) {
        }
        if (strZza == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 21);
            sb.append("Invalid repeat mode: ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }
        jSONObject2.put("repeatMode", strZza);
        jSONObject2.put("startIndex", i);
        if (j != -1) {
            jSONObject2.put("currentTime", CastUtils.millisecToSec(j));
        }
        if (jSONObject != null) {
            jSONObject2.put("customData", jSONObject);
        }
        if (zzS()) {
            jSONObject2.put("sequenceNumber", this.zzz);
        }
        zzf(jSONObject2.toString(), jZzg, null);
        return jZzg;
    }

    public final long zzE(zzat zzatVar, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Boolean bool, Integer num, JSONObject jSONObject) {
        if (j != -1 && j < 0) {
            zzar$$ExternalSyntheticBUOutline0.m320m(String.valueOf(j).length() + 33, "playPosition cannot be negative: ", j);
            return 0L;
        }
        JSONObject jSONObject2 = new JSONObject();
        long jZzg = zzg();
        try {
            jSONObject2.put("requestId", jZzg);
            jSONObject2.put("type", "QUEUE_UPDATE");
            jSONObject2.put("mediaSessionId", zzM());
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
                jSONObject2.put(PluginsConstants.Settings.ITEMS, jSONArray);
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
            if (zzS()) {
                jSONObject2.put("sequenceNumber", this.zzz);
            }
        } catch (JSONException unused) {
        }
        zzf(jSONObject2.toString(), jZzg, null);
        this.zzn.zza(jZzg, new zzan(this, zzatVar));
        return jZzg;
    }
}
