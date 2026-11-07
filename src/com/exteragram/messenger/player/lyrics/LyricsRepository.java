package com.exteragram.messenger.player.lyrics;

import android.text.TextUtils;
import android.util.LruCache;
import com.android.dx.rop.code.RegisterSpec;
import com.exteragram.messenger.player.PlayerCache;
import com.exteragram.messenger.player.PlayerCovers;
import com.exteragram.messenger.player.TrackQuery;
import com.exteragram.messenger.player.lyrics.Lyrics;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LyricsRepository {
    private static final Pattern PROMO = Pattern.compile("https?://|www\\.|t\\.me/|\\b[\\w-]+\\.(?:com|net|org|ru|su|ua|by|kz|io|me|to|fm|cc|co|lc|ly|gg|tv|info|biz|xyz|club|top|site|online|pro|app|link|music)\\b|(?:^|\\s)@\\w{3,}", 2);
    private static final LruCache<String, Lyrics> memory = new LruCache<>(24);
    private static final LruCache<String, Boolean> missing = new LruCache<>(64);

    public interface Callback {
        void onResult(Lyrics lyrics, int i);
    }

    public static Lyrics fromTags(MessageObject messageObject) {
        Lyrics lyrics;
        AudioInfo playingAudioInfo = PlayerCovers.getPlayingAudioInfo(messageObject);
        if (playingAudioInfo == null || (lyrics = Lyrics.parse(stripPromo(playingAudioInfo.getLyrics()), 0)) == null || (!lyrics.synced && textLines(lyrics) < 4)) {
            return null;
        }
        return lyrics;
    }

    private static String stripPromo(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (String str2 : str.split("\r\n|\r|\n", -1)) {
            if (!PROMO.matcher(str2).find()) {
                sb.append(str2);
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    private static int textLines(Lyrics lyrics) {
        ArrayList<Lyrics.Line> arrayList = lyrics.lines;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Lyrics.Line line = arrayList.get(i2);
            i2++;
            if (!line.text.isEmpty()) {
                i++;
            }
        }
        return i;
    }

    public static Lyrics getCached(TrackQuery trackQuery) {
        if (trackQuery == null) {
            return null;
        }
        return memory.get(trackQuery.key());
    }

    public static boolean isKnownMissing(TrackQuery trackQuery) {
        return (trackQuery == null || missing.get(trackQuery.key()) == null) ? false : true;
    }

    public static void loadCached(TrackQuery trackQuery, final Callback callback) {
        final String strKey = trackQuery.key();
        Lyrics lyrics = memory.get(strKey);
        if (lyrics != null) {
            callback.onResult(lyrics, 0);
        } else {
            Utilities.externalNetworkQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.lyrics.LyricsRepository$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LyricsRepository.m2906$r8$lambda$THaAn9GoH_trq56KdVX0Tfou1E(strKey, callback);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$THaAn9GoH_trq-56KdVX0Tfou1E, reason: not valid java name */
    public static /* synthetic */ void m2906$r8$lambda$THaAn9GoH_trq56KdVX0Tfou1E(final String str, final Callback callback) {
        final Lyrics disk = readDisk(str);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.lyrics.LyricsRepository$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LyricsRepository.$r8$lambda$IZAzn1zyheq1WFRkTgzLkJ99JOs(disk, str, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$IZAzn1zyheq1WFRkTgzLkJ99JOs(Lyrics lyrics, String str, Callback callback) {
        if (lyrics != null) {
            memory.put(str, lyrics);
        }
        callback.onResult(lyrics, lyrics != null ? 0 : 1);
    }

    public static void fetch(final TrackQuery trackQuery, final Callback callback) {
        final String strKey = trackQuery.key();
        Lyrics lyrics = memory.get(strKey);
        if (lyrics != null) {
            callback.onResult(lyrics, 0);
        } else {
            Utilities.externalNetworkQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.lyrics.LyricsRepository$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LyricsRepository.$r8$lambda$UMIuYVQwRciJh9Clg31H4oHqeEM(strKey, trackQuery, callback);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001f A[PHI: r5
  0x001f: PHI (r5v5 boolean) = (r5v3 boolean), (r5v1 boolean), (r5v1 boolean) binds: [B:28:0x003f, B:11:0x0019, B:13:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$UMIuYVQwRciJh9Clg31H4oHqeEM(final String str, TrackQuery trackQuery, final Callback callback) {
        Lyrics lyricsRequestLrclib;
        boolean z;
        Lyrics lyricsPunctuate;
        final Lyrics disk = readDisk(str);
        final int i = 0;
        if (disk == null) {
            Lyrics lyricsRequestLrcmux = null;
            try {
                lyricsRequestLrclib = requestLrclib(trackQuery);
                z = false;
            } catch (Throwable th) {
                FileLog.m1040e(th);
                lyricsRequestLrclib = null;
                z = true;
            }
            if (lyricsRequestLrclib == null || (!lyricsRequestLrclib.synced && !lyricsRequestLrclib.instrumental)) {
                try {
                    lyricsRequestLrcmux = requestLrcmux(trackQuery);
                } catch (Throwable th2) {
                    FileLog.m1040e(th2);
                    z = true;
                }
                if (lyricsRequestLrcmux != null && (lyricsRequestLrcmux.synced || lyricsRequestLrclib == null)) {
                    disk = (lyricsRequestLrclib == null || (lyricsPunctuate = punctuate(lyricsRequestLrcmux, lyricsRequestLrclib)) == null) ? lyricsRequestLrcmux : lyricsPunctuate;
                } else if (lyricsRequestLrclib != null) {
                    disk = lyricsRequestLrclib;
                }
                if (disk == null) {
                    i = z ? 2 : 1;
                } else if (!z) {
                    writeDisk(str, disk);
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.lyrics.LyricsRepository$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LyricsRepository.$r8$lambda$h3hg8XQzNE_VaLXrdRUIgr1AiR0(disk, str, i, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$h3hg8XQzNE_VaLXrdRUIgr1AiR0(Lyrics lyrics, String str, int i, Callback callback) {
        if (lyrics != null) {
            memory.put(str, lyrics);
            missing.remove(str);
        } else if (i == 1) {
            missing.put(str, Boolean.TRUE);
        }
        callback.onResult(lyrics, i);
    }

    private static Lyrics requestLrclib(TrackQuery trackQuery) throws Exception {
        Exception e;
        if (TextUtils.isEmpty(trackQuery.artist())) {
            e = null;
        } else {
            HttpUrl.Builder builderAddQueryParameter = HttpUrl.get("https://lrclib.net/api/get").newBuilder().addQueryParameter("artist_name", trackQuery.artist()).addQueryParameter("track_name", trackQuery.title());
            if (!TextUtils.isEmpty(trackQuery.album())) {
                builderAddQueryParameter.addQueryParameter("album_name", trackQuery.album());
            }
            if (trackQuery.duration() > 0) {
                builderAddQueryParameter.addQueryParameter("duration", String.valueOf(trackQuery.duration()));
            }
            try {
                String str = get(builderAddQueryParameter.build(), 3);
                if (str != null) {
                    Lyrics lyricsFromLrclib = fromLrclib(new JSONObject(str));
                    if (lyricsFromLrclib != null) {
                        return lyricsFromLrclib;
                    }
                }
                e = null;
            } catch (Exception e2) {
                e = e2;
                FileLog.m1040e(e);
            }
        }
        Lyrics lyricsSearchLrclib = searchLrclib(trackQuery);
        if (lyricsSearchLrclib != null || e == null) {
            return lyricsSearchLrclib;
        }
        throw e;
    }

    private static Lyrics searchLrclib(TrackQuery trackQuery) throws InterruptedException {
        HttpUrl.Builder builderAddQueryParameter = HttpUrl.get("https://lrclib.net/api/search").newBuilder().addQueryParameter("track_name", trackQuery.title());
        if (!TextUtils.isEmpty(trackQuery.artist())) {
            builderAddQueryParameter.addQueryParameter("artist_name", trackQuery.artist());
        }
        String str = get(builderAddQueryParameter.build(), 3);
        if (str == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray(str);
        int i = Integer.MIN_VALUE;
        Lyrics lyrics = null;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            Lyrics lyricsFromLrclib = jSONObjectOptJSONObject == null ? null : fromLrclib(jSONObjectOptJSONObject);
            if (lyricsFromLrclib != null) {
                int i3 = lyricsFromLrclib.synced ? 40 : 0;
                if (trackQuery.duration() > 0 && jSONObjectOptJSONObject.has("duration")) {
                    int iAbs = (int) Math.abs(Math.round(jSONObjectOptJSONObject.optDouble("duration", 0.0d)) - ((long) trackQuery.duration()));
                    if (iAbs > 3) {
                        iAbs = Math.min(iAbs, 60) + 20;
                    }
                    i3 -= iAbs;
                }
                if (i3 > i) {
                    lyrics = lyricsFromLrclib;
                    i = i3;
                }
            }
        }
        return lyrics;
    }

    private static String optString(JSONObject jSONObject, String str) {
        if (jSONObject == null || jSONObject.isNull(str)) {
            return null;
        }
        String strOptString = jSONObject.optString(str, null);
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    private static Lyrics fromLrclib(JSONObject jSONObject) {
        Lyrics lyrics;
        if (jSONObject.optBoolean("instrumental", false)) {
            return Lyrics.instrumental(1, "LRCLIB");
        }
        Lyrics lyrics2 = Lyrics.parse(optString(jSONObject, "syncedLyrics"), 1, "LRCLIB");
        return ((lyrics2 == null || !lyrics2.synced) && (lyrics = Lyrics.parse(optString(jSONObject, "plainLyrics"), 1, "LRCLIB")) != null) ? lyrics : lyrics2;
    }

    private static Lyrics requestLrcmux(TrackQuery trackQuery) {
        int iOptInt;
        HttpUrl.Builder builderAddQueryParameter = HttpUrl.get("https://api.lrcmux.dev/get").newBuilder().addQueryParameter("title", trackQuery.title()).addQueryParameter("level", "line").addQueryParameter("format", "json");
        if (!TextUtils.isEmpty(trackQuery.artist())) {
            builderAddQueryParameter.addQueryParameter("artist", trackQuery.artist());
        }
        if (!TextUtils.isEmpty(trackQuery.album())) {
            builderAddQueryParameter.addQueryParameter("album", trackQuery.album());
        }
        if (trackQuery.duration() > 0) {
            builderAddQueryParameter.addQueryParameter("duration", String.valueOf(trackQuery.duration()));
        }
        String str = get(builderAddQueryParameter.build());
        if (str == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("track");
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("meta");
        int i = 0;
        if (trackQuery.duration() > 0 && jSONObjectOptJSONObject != null && (iOptInt = jSONObjectOptJSONObject.optInt("duration", 0)) > 0 && Math.abs(iOptInt - trackQuery.duration()) > 5) {
            return null;
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject("source") : null;
        String strOptString = jSONObjectOptJSONObject3 != null ? optString(jSONObjectOptJSONObject3, "name") : null;
        String strConcat = strOptString != null ? "lrcmux · ".concat(strOptString) : "lrcmux";
        if (jSONObjectOptJSONObject2 != null && jSONObjectOptJSONObject2.optBoolean("instrumental", false)) {
            return Lyrics.instrumental(1, strConcat);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("lines");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
            return null;
        }
        if (jSONObjectOptJSONObject2 == null || "none".equals(jSONObjectOptJSONObject2.optString("level"))) {
            StringBuilder sb = new StringBuilder();
            while (i < jSONArrayOptJSONArray.length()) {
                JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject4 != null) {
                    sb.append(jSONObjectOptJSONObject4.optString("text", _UrlKt.FRAGMENT_ENCODE_SET));
                    sb.append('\n');
                }
                i++;
            }
            return Lyrics.parse(sb.toString(), 1, strConcat);
        }
        ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
        while (i < jSONArrayOptJSONArray.length()) {
            JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject5 != null) {
                arrayList.add(new Lyrics.Line(Math.max(0L, jSONObjectOptJSONObject5.optLong("start", 0L)), jSONObjectOptJSONObject5.optString("text", _UrlKt.FRAGMENT_ENCODE_SET).trim()));
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return Lyrics.fromTimedLines(arrayList, 1, strConcat);
    }

    private static int firstLetter(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (Character.isLetter(str.charAt(i))) {
                return i;
            }
        }
        return -1;
    }

    private static String withCase(String str, String str2) {
        int iFirstLetter = firstLetter(str);
        int iFirstLetter2 = firstLetter(str2);
        if (iFirstLetter < 0 || iFirstLetter2 < 0) {
            return str;
        }
        boolean zIsUpperCase = Character.isUpperCase(str2.charAt(iFirstLetter2));
        char cCharAt = str.charAt(iFirstLetter);
        if (Character.isUpperCase(cCharAt) == zIsUpperCase) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, iFirstLetter));
        sb.append(zIsUpperCase ? Character.toUpperCase(cCharAt) : Character.toLowerCase(cCharAt));
        sb.append(str.substring(iFirstLetter + 1));
        return sb.toString();
    }

    private static void appendWord(StringBuilder sb, String str) {
        if (str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(str);
    }

    private static Lyrics punctuate(Lyrics lyrics, Lyrics lyrics2) {
        String str;
        ArrayList<Lyrics.Line> arrayList;
        String str2;
        ArrayList arrayList2;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList<Lyrics.Line> arrayList5 = lyrics2.lines;
        int size = arrayList5.size();
        int i = 0;
        while (true) {
            str = "\\s+";
            if (i >= size) {
                break;
            }
            Lyrics.Line line = arrayList5.get(i);
            i++;
            for (String str3 : line.text.split("\\s+")) {
                String strNormalize = TrackQuery.normalize(str3);
                if (!strNormalize.isEmpty()) {
                    arrayList3.add(str3);
                    arrayList4.add(strNormalize);
                }
            }
        }
        Lyrics lyrics3 = null;
        if (arrayList4.isEmpty()) {
            return null;
        }
        ArrayList arrayList6 = new ArrayList(lyrics.lines.size());
        ArrayList<Lyrics.Line> arrayList7 = lyrics.lines;
        int size2 = arrayList7.size();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < size2) {
            Lyrics.Line line2 = arrayList7.get(i5);
            i5++;
            Lyrics.Line line3 = line2;
            StringBuilder sb = new StringBuilder();
            String[] strArrSplit = line3.text.split(str);
            Lyrics lyrics4 = lyrics3;
            int length = strArrSplit.length;
            int i6 = 0;
            while (i6 < length) {
                int i7 = length;
                String str4 = strArrSplit[i6];
                int i8 = i6;
                String strNormalize2 = TrackQuery.normalize(str4);
                if (strNormalize2.isEmpty()) {
                    appendWord(sb, str4);
                    arrayList2 = arrayList4;
                    arrayList = arrayList7;
                    str2 = str;
                } else {
                    i2++;
                    arrayList = arrayList7;
                    str2 = str;
                    int iMin = Math.min(i4 + 4, arrayList4.size());
                    int i9 = i4;
                    while (true) {
                        if (i9 >= iMin) {
                            arrayList2 = arrayList4;
                            i9 = -1;
                            break;
                        }
                        arrayList2 = arrayList4;
                        if (((String) arrayList4.get(i9)).equals(strNormalize2)) {
                            break;
                        }
                        i9++;
                        arrayList4 = arrayList2;
                    }
                    if (i9 < 0) {
                        appendWord(sb, str4);
                    } else {
                        i3++;
                        appendWord(sb, withCase((String) arrayList3.get(i9), str4));
                        i4 = i9 + 1;
                    }
                }
                i6 = i8 + 1;
                length = i7;
                arrayList7 = arrayList;
                str = str2;
                arrayList4 = arrayList2;
            }
            arrayList6.add(new Lyrics.Line(line3.time, sb.toString()));
            lyrics3 = lyrics4;
            arrayList7 = arrayList7;
            arrayList4 = arrayList4;
        }
        Lyrics lyrics5 = lyrics3;
        if (i2 == 0 || i3 < i2 * 0.9f) {
            return lyrics5;
        }
        return Lyrics.synced(arrayList6, lyrics.source, lyrics.provider + " + LRCLIB");
    }

    private static String get(HttpUrl httpUrl) {
        return get(httpUrl, 1);
    }

    private static String get(HttpUrl httpUrl, int i) throws InterruptedException {
        int iCode;
        Request requestBuild = new Request.Builder().url(httpUrl).header("User-Agent", "exteraGram/" + BuildVars.BUILD_VERSION_STRING + " (https://github.com/exteraGram/exteraGram)").header("Accept", "application/json").build();
        int i2 = 1;
        while (true) {
            Response responseExecute = ExteraHttpClient.INSTANCE.getClient().newCall(requestBuild).execute();
            try {
                iCode = responseExecute.code();
                if (iCode == 404) {
                    responseExecute.close();
                    return null;
                }
                if (iCode >= 200 && iCode < 300) {
                    String strString = responseExecute.body().string();
                    responseExecute.close();
                    return strString;
                }
                if ((iCode != 429 && iCode != 503) || i2 >= i) {
                    break;
                }
                long jRetryDelay = retryDelay(responseExecute.header("Retry-After"), i2);
                responseExecute.close();
                Thread.sleep(jRetryDelay);
                i2++;
            } catch (Throwable th) {
                if (responseExecute != null) {
                    try {
                        responseExecute.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        throw new IllegalStateException("lyrics http " + iCode);
    }

    private static long retryDelay(String str, int i) {
        if (str != null) {
            try {
                return Math.min(Long.parseLong(str.trim()) * 1000, 2000L);
            } catch (NumberFormatException unused) {
            }
        }
        return Math.min(500 << (i - 1), 2000L);
    }

    private static File cacheFile(String str) {
        File fileDirectory = PlayerCache.directory("lyrics");
        if (fileDirectory == null) {
            return null;
        }
        return new File(fileDirectory, Utilities.MD5(str) + ".json");
    }

    private static Lyrics readDisk(String str) {
        String res;
        try {
            File fileCacheFile = cacheFile(str);
            if (fileCacheFile == null || !fileCacheFile.exists() || (res = AndroidUtilities.readRes(fileCacheFile)) == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(res);
            if (jSONObject.optInt(RegisterSpec.PREFIX, 0) != 1) {
                return null;
            }
            String strOptString = optString(jSONObject, "provider");
            if (strOptString == null) {
                strOptString = "LRCLIB";
            }
            if (jSONObject.optBoolean("instrumental", false)) {
                return Lyrics.instrumental(1, strOptString);
            }
            return Lyrics.parse(optString(jSONObject, "text"), 1, strOptString);
        } catch (Throwable th) {
            FileLog.m1040e(th);
            return null;
        }
    }

    private static void writeDisk(String str, Lyrics lyrics) {
        try {
            File fileCacheFile = cacheFile(str);
            if (fileCacheFile == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(RegisterSpec.PREFIX, 1);
            jSONObject.put("provider", lyrics.provider);
            jSONObject.put("instrumental", lyrics.instrumental);
            jSONObject.put("text", lyrics.toText());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCacheFile);
            try {
                fileOutputStream.write(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
                fileOutputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
    }
}
