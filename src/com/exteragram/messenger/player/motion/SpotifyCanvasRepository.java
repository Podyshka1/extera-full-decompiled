package com.exteragram.messenger.player.motion;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.feed.ads.FeedAdInjector$AnchorSlot$$ExternalSyntheticRecord0;
import com.exteragram.messenger.player.PlayerCache;
import com.exteragram.messenger.player.TrackQuery;
import com.exteragram.messenger.player.motion.MotionCoverRepository;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.gson.JsonArray$$ExternalSyntheticBUOutline0;
import com.google.protobuf.MessageSchema$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.time.DurationKt;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.ui.WearAuthSheet$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpotifyCanvasRepository {
    private static String searchHash;
    private static long searchHashRetryAt;
    private static volatile int session;
    private static volatile String token;
    private static volatile long tokenExpiresAt;
    private static final MediaType PROTOBUF = MediaType.get("application/x-protobuf");
    private static final MediaType JSON = MediaType.get("application/json; charset=utf-8");
    private static final Pattern BUNDLE = Pattern.compile("/web-player/(web-player\\.[0-9a-f]+\\.js)");
    private static final Pattern CHUNK_ID = Pattern.compile("(\\d+):\"xpui-routes-search\"");
    private static final Pattern SEARCH_HASH = Pattern.compile("\"searchTracks\",\"query\",\"([0-9a-f]{64})\"");
    private static final Object[] locks = new Object[16];
    private static final Object stateLock = new Object();
    private static final Object refreshLock = new Object();
    private static final Object hashLock = new Object();
    private static volatile Set<String> wantedKeys = Collections.EMPTY_SET;

    public interface Callback {
        void onResult(String str);
    }

    public static final class Queues {
        static final DispatchQueue load = new DispatchQueue("playerSpotifyCanvas");
        static final DispatchQueue prefetch = new DispatchQueue("playerSpotifyCanvasPrefetch");
    }

    public static final class Reply extends RecordTag {
        private final byte[] body;
        private final int code;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof Reply)) {
                return false;
            }
            Reply reply = (Reply) obj;
            return this.code == reply.code && Objects.equals(this.body, reply.body);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{Integer.valueOf(this.code), this.body};
        }

        private Reply(int i, byte[] bArr) {
            this.code = i;
            this.body = bArr;
        }

        public byte[] body() {
            return this.body;
        }

        public int code() {
            return this.code;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return FeedAdInjector$AnchorSlot$$ExternalSyntheticRecord0.m259m(this.code, this.body);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), Reply.class, "code;body");
        }

        public String text() {
            return new String(this.body, StandardCharsets.UTF_8);
        }
    }

    static {
        int i = 0;
        while (true) {
            Object[] objArr = locks;
            if (i >= objArr.length) {
                return;
            }
            objArr[i] = new Object();
            i++;
        }
    }

    public static boolean isLoggedIn() {
        return !TextUtils.isEmpty(prefs().getString("refreshToken", null));
    }

    public static boolean isSupported() {
        return !AndroidUtilities.isTablet();
    }

    public static void logout() {
        synchronized (stateLock) {
            clearSession();
        }
    }

    private static void clearSession() {
        session++;
        token = null;
        prefs().edit().remove("refreshToken").apply();
    }

    public static void exchangeCode(final String str, final String str2, final Utilities.Callback<Boolean> callback) {
        final int i = session;
        Queues.load.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                SpotifyCanvasRepository.$r8$lambda$YM0XgjBWHOwpA7fTmzf3z_jrbdI(i, str, str2, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$YM0XgjBWHOwpA7fTmzf3z_jrbdI(int i, String str, String str2, final Utilities.Callback callback) {
        final boolean zSaveTokens;
        try {
            zSaveTokens = saveTokens(i, requestTokens(new FormBody.Builder().add("grant_type", "authorization_code").add("code", str).add("redirect_uri", "http://127.0.0.1:8898/login").add("client_id", "65b708073fc0480ea92a077233ca87bd").add("code_verifier", str2).build()));
        } catch (Exception e) {
            FileLog.m1040e(e);
            zSaveTokens = false;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(Boolean.valueOf(zSaveTokens));
            }
        });
    }

    public static void setWantedKeys(Collection<String> collection) {
        wantedKeys = new HashSet(collection);
    }

    public static void fetch(final TrackQuery trackQuery, final boolean z, final Callback callback) {
        final String strKey = trackQuery.key();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SpotifyCanvasRepository.$r8$lambda$xQMk_fP0SMjkPmcM1jXVz9iFy30(strKey, callback, z, trackQuery);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$xQMk_fP0SMjkPmcM1jXVz9iFy30(final String str, final Callback callback, boolean z, final TrackQuery trackQuery) {
        if (wantedKeys.contains(str)) {
            final File fileDirectory = PlayerCache.directory("spotify_canvas");
            if (fileDirectory == null || !isLoggedIn()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.onResult(null);
                    }
                });
                return;
            }
            final String strMD5 = Utilities.MD5(str + "\u00011");
            final String strCached = cached(fileDirectory, strMD5);
            if (strCached != null) {
                if (!strCached.isEmpty()) {
                    final File file = new File(getThumbPath(strCached));
                    if (!file.exists()) {
                        Queues.prefetch.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                SpotifyCanvasRepository.createThumb(strCached, file);
                            }
                        });
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpotifyCanvasRepository.m2937$r8$lambda$vgNFnBC62MJilsWEzz1FARl368(callback, strCached);
                    }
                });
                return;
            }
            (z ? Queues.load : Queues.prefetch).postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    SpotifyCanvasRepository.$r8$lambda$41YER59uWaKRJ6FF9j7J_9cPM44(str, strMD5, trackQuery, fileDirectory, callback);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$vgNFnBC62MJil-sWEzz1FARl368, reason: not valid java name */
    public static /* synthetic */ void m2937$r8$lambda$vgNFnBC62MJilsWEzz1FARl368(Callback callback, String str) {
        if (str.isEmpty()) {
            str = null;
        }
        callback.onResult(str);
    }

    public static /* synthetic */ void $r8$lambda$41YER59uWaKRJ6FF9j7J_9cPM44(String str, String str2, TrackQuery trackQuery, File file, final Callback callback) {
        if (wantedKeys.contains(str)) {
            final String strLoad = null;
            try {
                synchronized (locks[(str2.hashCode() & Integer.MAX_VALUE) % 16]) {
                    strLoad = load(trackQuery, file, str2);
                }
            } catch (Throwable th) {
                FileLog.m1040e(th);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.motion.SpotifyCanvasRepository$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    callback.onResult(strLoad);
                }
            });
        }
    }

    public static String getThumbPath(String str) {
        return str.substring(0, str.length() - 4).concat(".jpg");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void createThumb(String str, File file) {
        Bitmap bitmapCreateVideoThumbnail = SendMessagesHelper.createVideoThumbnail(str, 2);
        if (bitmapCreateVideoThumbnail == null) {
            return;
        }
        File file2 = new File(file.getPath() + ".tmp");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                bitmapCreateVideoThumbnail.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
                fileOutputStream.close();
                if (!file2.renameTo(file)) {
                    MotionCoverRepository.delete(file2);
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
            MotionCoverRepository.delete(file2);
        } finally {
            bitmapCreateVideoThumbnail.recycle();
        }
    }

    private static String cached(File file, String str) {
        File file2 = new File(file, str + ".mp4");
        if (file2.length() > 0) {
            if (!file2.setLastModified(System.currentTimeMillis())) {
                FileLog.m1037d("spotify canvas: can't touch " + file2);
            }
            return file2.getAbsolutePath();
        }
        if (System.currentTimeMillis() - new File(file, str + ".none").lastModified() < 259200000) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return null;
    }

    private static String load(TrackQuery trackQuery, File file, String str) throws Exception {
        String strCached = cached(file, str);
        if (strCached != null) {
            if (strCached.isEmpty()) {
                return null;
            }
            return strCached;
        }
        String str2 = token();
        if (str2 == null) {
            return null;
        }
        File file2 = new File(file, str + ".mp4");
        File file3 = new File(file, str + ".none");
        String strFindCanvas = findCanvas(trackQuery, str2);
        if (strFindCanvas == null) {
            new FileOutputStream(file3).close();
        } else {
            download(strFindCanvas, file2);
            createThumb(file2.getAbsolutePath(), new File(getThumbPath(file2.getAbsolutePath())));
        }
        MotionCoverRepository.trim(file);
        if (strFindCanvas != null) {
            return file2.getAbsolutePath();
        }
        return null;
    }

    private static String findCanvas(TrackQuery trackQuery, String str) {
        ArrayList<JSONObject> arrayListBestSongs = MotionCoverMatcher.bestSongs(searchTracks(trackQuery, str), trackQuery.artist(), trackQuery.title(), trackQuery.duration());
        if (arrayListBestSongs.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int size = arrayListBestSongs.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            JSONObject jSONObject = arrayListBestSongs.get(i2);
            i2++;
            arrayList.add(jSONObject.optString("isrc"));
        }
        HashMap<String, String> mapCanvases = canvases(arrayList, str);
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj = arrayList.get(i);
            i++;
            String str2 = mapCanvases.get((String) obj);
            if (str2 != null) {
                return str2;
            }
        }
        return null;
    }

    private static JSONArray searchTracks(TrackQuery trackQuery, String str) throws JSONException {
        String strSearchHash;
        String strTitle = TextUtils.isEmpty(trackQuery.artist()) ? trackQuery.title() : trackQuery.artist() + " " + trackQuery.title();
        String strSearchHash2 = searchHash(false);
        JSONObject jSONObjectSearch = strSearchHash2 != null ? search(strTitle, str, strSearchHash2) : null;
        if ((jSONObjectSearch == null || jSONObjectSearch.optJSONObject("data") == null) && (strSearchHash = searchHash(true)) != null && !strSearchHash.equals(strSearchHash2)) {
            jSONObjectSearch = search(strTitle, str, strSearchHash);
        }
        if (jSONObjectSearch == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("spotify search unavailable");
            return null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectSearch.optJSONObject("data");
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject("searchV2") : null;
        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject("tracksV2") : null;
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optJSONArray(PluginsConstants.Settings.ITEMS) : null;
        JSONArray jSONArray = new JSONArray();
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray.optJSONObject(i);
                JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.optJSONObject(PluginsConstants.Settings.ITEM) : null;
                JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5 != null ? jSONObjectOptJSONObject5.optJSONObject("data") : null;
                String strOptString = jSONObjectOptJSONObject6 != null ? jSONObjectOptJSONObject6.optString("uri") : _UrlKt.FRAGMENT_ENCODE_SET;
                if (strOptString.startsWith("spotify:track:")) {
                    JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject6.optJSONObject("duration");
                    jSONArray.put(new JSONObject().put("attributes", new JSONObject().put("name", jSONObjectOptJSONObject6.optString("name")).put("artistName", artistNames(jSONObjectOptJSONObject6.optJSONObject("artists"))).put("durationInMillis", jSONObjectOptJSONObject7 != null ? jSONObjectOptJSONObject7.optLong("totalMilliseconds") : 0L).put("isrc", strOptString)));
                }
            }
        }
        return jSONArray;
    }

    private static JSONObject search(String str, String str2, String str3) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("variables", new JSONObject().put("searchTerm", str).put("offset", 0).put("limit", 10).put("numberOfTopResults", 5).put("includeAudiobooks", false).put("includePreReleases", false).put("includeAuthors", false)).put("operationName", "searchTracks").put("extensions", new JSONObject().put("persistedQuery", new JSONObject().put("version", 1).put("sha256Hash", str3)));
        Reply replyExecute = execute(new Request.Builder().url("https://api-partner.spotify.com/pathfinder/v2/query").header("Authorization", "Bearer " + str2).header("App-Platform", "WebPlayer").header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36").post(RequestBody.create(jSONObjectPut.toString(), JSON)).build());
        int iCode = replyExecute.code();
        if (iCode >= 400 && iCode < 500 && iCode != 401 && iCode != 429) {
            return null;
        }
        if (iCode < 200 || iCode >= 300) {
            if (iCode == 401) {
                invalidateToken(str2);
            }
            JsonArray$$ExternalSyntheticBUOutline0.m498m("spotify search http ", iCode);
            return null;
        }
        return new JSONObject(replyExecute.text());
    }

    private static String artistNames(JSONObject jSONObject) {
        String strOptString;
        JSONArray jSONArrayOptJSONArray = jSONObject != null ? jSONObject.optJSONArray(PluginsConstants.Settings.ITEMS) : null;
        if (jSONArrayOptJSONArray == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject("profile") : null;
            if (jSONObjectOptJSONObject2 == null) {
                strOptString = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                strOptString = jSONObjectOptJSONObject2.optString("name");
            }
            if (!strOptString.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(strOptString);
            }
        }
        return sb.toString();
    }

    private static HashMap<String, String> canvases(ArrayList<String> arrayList, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str2 = arrayList.get(i);
            i++;
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            writeField(byteArrayOutputStream2, 1, str2.getBytes(StandardCharsets.UTF_8));
            writeField(byteArrayOutputStream, 1, byteArrayOutputStream2.toByteArray());
        }
        Reply replyExecute = execute(new Request.Builder().url("https://spclient.wg.spotify.com/canvaz-cache/v0/canvases").header("Authorization", "Bearer " + str).header("Accept", "application/protobuf").header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36").post(RequestBody.create(byteArrayOutputStream.toByteArray(), PROTOBUF)).build());
        if (replyExecute.code() < 200 || replyExecute.code() >= 300) {
            if (replyExecute.code() == 401) {
                invalidateToken(str);
            }
            WearAuthSheet$$ExternalSyntheticBUOutline0.m1104m("spotify canvas http ", replyExecute.code());
            return null;
        }
        HashMap<String, String> map = new HashMap<>();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(replyExecute.body());
        while (byteBufferWrap.hasRemaining()) {
            long varint = readVarint(byteBufferWrap);
            byte[] value = readValue(byteBufferWrap, (int) (varint & 7));
            if ((varint >> 3) == 1 && value != null) {
                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(value);
                String str3 = null;
                String str4 = null;
                while (byteBufferWrap2.hasRemaining()) {
                    long varint2 = readVarint(byteBufferWrap2);
                    byte[] value2 = readValue(byteBufferWrap2, (int) (varint2 & 7));
                    if (value2 != null) {
                        long j = varint2 >> 3;
                        if (j == 2) {
                            str4 = new String(value2, StandardCharsets.UTF_8);
                        } else if (j == 5) {
                            str3 = new String(value2, StandardCharsets.UTF_8);
                        }
                    }
                }
                if (str3 != null && str4 != null && str4.startsWith("https://") && str4.endsWith(".mp4")) {
                    map.put(str3, str4);
                }
            }
        }
        return map;
    }

    private static void writeField(ByteArrayOutputStream byteArrayOutputStream, int i, byte[] bArr) {
        writeVarint(byteArrayOutputStream, (((long) i) << 3) | 2);
        writeVarint(byteArrayOutputStream, bArr.length);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private static void writeVarint(ByteArrayOutputStream byteArrayOutputStream, long j) {
        while (((-128) & j) != 0) {
            byteArrayOutputStream.write(((int) (127 & j)) | 128);
            j >>>= 7;
        }
        byteArrayOutputStream.write((int) j);
    }

    private static long readVarint(ByteBuffer byteBuffer) {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte b2 = byteBuffer.get();
            j |= ((long) (b2 & ByteCompanionObject.MAX_VALUE)) << i;
            if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("malformed varint");
        return 0L;
    }

    private static byte[] readValue(ByteBuffer byteBuffer, int i) {
        if (i == 0) {
            readVarint(byteBuffer);
            return null;
        }
        if (i == 1) {
            byteBuffer.position(byteBuffer.position() + 8);
            return null;
        }
        if (i == 2) {
            byte[] bArr = new byte[(int) readVarint(byteBuffer)];
            byteBuffer.get(bArr);
            return bArr;
        }
        if (i == 5) {
            byteBuffer.position(byteBuffer.position() + 4);
            return null;
        }
        JsonArray$$ExternalSyntheticBUOutline0.m498m("unsupported wire type ", i);
        return null;
    }

    private static void download(String str, File file) throws Exception {
        File file2 = new File(file.getPath() + ".tmp");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                MotionCoverRepository.copy(new MotionCoverRepository.Part(str, 0L, -1L), fileOutputStream, 0L);
                fileOutputStream.close();
                if (file2.renameTo(file)) {
                    return;
                }
                throw new IllegalStateException("can't move " + file2);
            } finally {
            }
        } catch (Exception e) {
            MotionCoverRepository.delete(file2);
            throw e;
        }
    }

    private static String token() {
        synchronized (refreshLock) {
            try {
                int i = session;
                String str = token;
                if (str != null && System.currentTimeMillis() < tokenExpiresAt - 60000) {
                    return str;
                }
                String string = prefs().getString("refreshToken", null);
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                Reply replyRequestTokens = requestTokens(new FormBody.Builder().add("grant_type", "refresh_token").add("refresh_token", string).add("client_id", "65b708073fc0480ea92a077233ca87bd").build());
                if (replyRequestTokens.code() != 400 && replyRequestTokens.code() != 401) {
                    boolean zSaveTokens = saveTokens(i, replyRequestTokens);
                    if (session != i) {
                        return null;
                    }
                    if (!zSaveTokens) {
                        throw new IllegalStateException("spotify token http " + replyRequestTokens.code());
                    }
                    return token;
                }
                FileLog.m1037d("spotify canvas: refresh token rejected");
                synchronized (stateLock) {
                    try {
                        if (session == i) {
                            clearSession();
                        }
                    } finally {
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void invalidateToken(String str) {
        synchronized (stateLock) {
            try {
                if (str.equals(token)) {
                    token = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Reply requestTokens(FormBody formBody) {
        return execute(new Request.Builder().url("https://accounts.spotify.com/api/token").header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36").post(formBody).build());
    }

    private static boolean saveTokens(int i, Reply reply) {
        if (reply.code() != 200) {
            return false;
        }
        JSONObject jSONObject = new JSONObject(reply.text());
        String strOptString = jSONObject.optString("access_token");
        if (strOptString.isEmpty()) {
            return false;
        }
        String strOptString2 = jSONObject.optString("refresh_token");
        synchronized (stateLock) {
            try {
                if (session != i) {
                    return false;
                }
                if (!strOptString2.isEmpty()) {
                    prefs().edit().putString("refreshToken", strOptString2).apply();
                }
                tokenExpiresAt = System.currentTimeMillis() + (jSONObject.optLong("expires_in") * 1000);
                token = strOptString;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static String searchHash(boolean z) {
        String str;
        synchronized (hashLock) {
            try {
                if (searchHash == null) {
                    searchHash = prefs().getString("searchHash", null);
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if ((z || searchHash == null) && jCurrentTimeMillis >= searchHashRetryAt) {
                    searchHashRetryAt = jCurrentTimeMillis + DurationKt.MILLIS_IN_HOUR;
                    String strScrapeSearchHash = scrapeSearchHash();
                    if (strScrapeSearchHash != null) {
                        searchHash = strScrapeSearchHash;
                        prefs().edit().putString("searchHash", strScrapeSearchHash).apply();
                    }
                }
                str = searchHash;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private static String scrapeSearchHash() {
        Matcher matcher = BUNDLE.matcher(getText("https://open.spotify.com/"));
        if (!matcher.find()) {
            Segment$$ExternalSyntheticBUOutline1.m973m("spotify web player bundle not found");
            return null;
        }
        String text = getText("https://open.spotifycdn.com/cdn/build/web-player/" + matcher.group(1));
        Pattern pattern = SEARCH_HASH;
        Matcher matcher2 = pattern.matcher(text);
        if (matcher2.find()) {
            return matcher2.group(1);
        }
        Matcher matcher3 = CHUNK_ID.matcher(text);
        if (!matcher3.find()) {
            return null;
        }
        Matcher matcher4 = Pattern.compile("[\\{,]" + matcher3.group(1) + ":\"([0-9a-f]{8})\"").matcher(text);
        if (!matcher4.find()) {
            return null;
        }
        Matcher matcher5 = pattern.matcher(getText("https://open.spotifycdn.com/cdn/build/web-player/xpui-routes-search." + matcher4.group(1) + ".js"));
        if (matcher5.find()) {
            return matcher5.group(1);
        }
        return null;
    }

    private static String getText(String str) {
        Reply replyExecute = execute(new Request.Builder().url(str).header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36").build());
        if (replyExecute.code() < 200 || replyExecute.code() >= 300) {
            MessageSchema$$ExternalSyntheticBUOutline0.m506m("http ", replyExecute.code(), " for ", str);
            return null;
        }
        return replyExecute.text();
    }

    private static Reply execute(Request request) {
        Response responseExecute = MotionCoverRepository.client().newCall(request).execute();
        try {
            Reply reply = new Reply(responseExecute.code(), responseExecute.body().bytes());
            responseExecute.close();
            return reply;
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

    private static SharedPreferences prefs() {
        return ApplicationLoader.applicationContext.getSharedPreferences("spotify", 0);
    }
}
