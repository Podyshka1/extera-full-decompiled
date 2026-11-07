package com.exteragram.messenger.player.motion;

import com.exteragram.messenger.player.TrackQuery;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes4.dex */
abstract class MotionCoverMatcher {
    private static final String[] MOTION_KEYS = {"motionDetailSquare", "motionSquareVideo1x1"};
    private static final String[] VERSION_TAGS = {"remix", "live", "acoustic", "sped up", "speed up", "slowed", "reverb", "instrumental", "karaoke", "cover", "demo", "extended", "nightcore", "mixed", "acapella", "a cappella", "radio edit", "unplugged", "8d"};
    private static final Pattern ARTIST_SEPARATOR = Pattern.compile("\\s*(?:,|&|/|\\bfeat\\.?|\\bft\\.?|\\bx\\b|\\band\\b)\\s*", 2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.CharSequence, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    public static ArrayList<JSONObject> bestSongs(JSONArray jSONArray, String str, String str2, int i) {
        int i2;
        ?? r11;
        String str3;
        long jAbs;
        ArrayList<JSONObject> arrayList = new ArrayList<>();
        String strNormalize = TrackQuery.normalize(str2);
        String strNormalize2 = TrackQuery.normalize(str);
        if (jSONArray != null && !strNormalize.isEmpty()) {
            HashSet<String> hashSetVersionTags = versionTags(str2);
            HashSet hashSet = new HashSet();
            int i3 = 0;
            int i4 = 0;
            ?? r3 = strNormalize;
            while (i3 < jSONArray.length()) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i3);
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject("attributes") : null;
                if (jSONObjectOptJSONObject2 == null) {
                    r11 = r3;
                    str3 = strNormalize2;
                } else {
                    String strOptString = jSONObjectOptJSONObject2.optString("name");
                    ?? Normalize = TrackQuery.normalize(strOptString);
                    if (!Normalize.equals(r3)) {
                        i2 = (!Normalize.isEmpty() && (Normalize.contains(r3) || r3.contains(Normalize)) && versionTags(strOptString).equals(hashSetVersionTags)) ? 20 : 40;
                        r11 = r3;
                        str3 = strNormalize2;
                    }
                    if (!strNormalize2.isEmpty()) {
                        if (artistMatches(jSONObjectOptJSONObject2.optString("artistName"), str)) {
                            i2 += 40;
                        }
                        r11 = r3;
                        str3 = strNormalize2;
                    }
                    long jOptLong = jSONObjectOptJSONObject2.optLong("durationInMillis");
                    if (i <= 0 || jOptLong <= 0) {
                        r11 = r3;
                        str3 = strNormalize2;
                        jAbs = -1;
                    } else {
                        r11 = r3;
                        str3 = strNormalize2;
                        jAbs = Math.abs(Math.round(jOptLong / 1000.0d) - ((long) i));
                    }
                    if (jAbs <= 10 && (!str3.isEmpty() || (jAbs >= 0 && jAbs <= 3))) {
                        if (jAbs >= 0 && jAbs <= 3) {
                            i2 += 30;
                        }
                        if (i2 > i4) {
                            arrayList.clear();
                            hashSet.clear();
                            i4 = i2;
                        }
                        if (i2 == i4 && arrayList.size() < 3 && hashSet.add(jSONObjectOptJSONObject2.optString("isrc"))) {
                            arrayList.add(jSONObjectOptJSONObject2);
                        }
                    }
                }
                i3++;
                r3 = r11;
                strNormalize2 = str3;
            }
        }
        return arrayList;
    }

    public static String pickVideo(JSONArray jSONArray, String str, String str2, String str3) {
        if (jSONArray == null) {
            return null;
        }
        String strAlbumKey = albumKey(str);
        String strAlbumKey2 = albumKey(str2);
        String str4 = null;
        String str5 = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONObject("relationships") : null;
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject("albums") : null;
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject3 != null ? jSONObjectOptJSONObject3.optJSONArray("data") : null;
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray.optJSONObject(i2);
                    JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.optJSONObject("attributes") : null;
                    String strMotionUrl = jSONObjectOptJSONObject5 != null ? motionUrl(jSONObjectOptJSONObject5.optJSONObject("editorialVideo")) : null;
                    if (strMotionUrl != null) {
                        String strAlbumKey3 = albumKey(jSONObjectOptJSONObject5.optString("name"));
                        if (TrackQuery.normalize(strAlbumKey3).contains("djmix")) {
                            continue;
                        } else {
                            if (!strAlbumKey.isEmpty() && !strAlbumKey3.isEmpty() && strAlbumKey3.equals(strAlbumKey)) {
                                return strMotionUrl;
                            }
                            if (str4 == null && !strAlbumKey3.isEmpty() && strAlbumKey3.equals(strAlbumKey2)) {
                                str4 = strMotionUrl;
                            }
                            if (str5 == null && isOwnRelease(jSONObjectOptJSONObject5, str3)) {
                                str5 = strMotionUrl;
                            }
                        }
                    }
                }
            }
        }
        return str4 != null ? str4 : str5;
    }

    private static String motionUrl(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        for (String str : MOTION_KEYS) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str);
            String strOptString = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString(MediaStreamTrack.VIDEO_TRACK_KIND) : _UrlKt.FRAGMENT_ENCODE_SET;
            if (strOptString.startsWith("https://")) {
                return strOptString;
            }
        }
        return null;
    }

    private static String albumKey(String str) {
        String strNormalize = TrackQuery.normalize(str);
        return (!strNormalize.isEmpty() || str == null) ? strNormalize : str.trim().toLowerCase(Locale.ROOT);
    }

    private static HashSet<String> versionTags(String str) {
        HashSet<String> hashSet = new HashSet<>();
        if (str != null) {
            String str2 = " " + TrackQuery.NOT_WORD.matcher(str.toLowerCase(Locale.ROOT)).replaceAll(" ").trim() + " ";
            for (String str3 : VERSION_TAGS) {
                if (str2.contains(" " + str3 + " ")) {
                    hashSet.add(str3);
                }
            }
        }
        return hashSet;
    }

    private static boolean isOwnRelease(JSONObject jSONObject, String str) {
        return (jSONObject.optBoolean("isCompilation") || TrackQuery.normalize(jSONObject.optString("artistName")).equals("variousartists") || !artistMatches(jSONObject.optString("artistName"), str)) ? false : true;
    }

    private static boolean artistMatches(String str, String str2) {
        String strNormalize = TrackQuery.normalize(str);
        String strNormalize2 = TrackQuery.normalize(str2);
        if (strNormalize.isEmpty() || strNormalize2.isEmpty()) {
            return false;
        }
        if (strNormalize.contains(strNormalize2) || strNormalize2.contains(strNormalize)) {
            return true;
        }
        for (String str3 : ARTIST_SEPARATOR.split(str2)) {
            String strNormalize3 = TrackQuery.normalize(str3);
            if (strNormalize3.length() >= 2 && strNormalize.contains(strNormalize3)) {
                return true;
            }
        }
        return false;
    }
}
