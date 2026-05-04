package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public abstract class HttpUtil {
    private static final Pattern CONTENT_RANGE_WITH_START_AND_END = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern CONTENT_RANGE_WITH_SIZE = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static String buildRangeRequestHeader(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("bytes=");
        sb.append(j);
        sb.append("-");
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }

    public static long getDocumentSize(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = CONTENT_RANGE_WITH_SIZE.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) Assertions.checkNotNull(matcher.group(1)));
        }
        return -1L;
    }

    public static long getContentLength(String str, String str2) {
        long j;
        if (TextUtils.isEmpty(str)) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                Log.m325e("HttpUtil", "Unexpected Content-Length [" + str + "]");
                j = -1;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j;
        }
        Matcher matcher = CONTENT_RANGE_WITH_START_AND_END.matcher(str2);
        if (!matcher.matches()) {
            return j;
        }
        try {
            long j2 = (Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))) - Long.parseLong((String) Assertions.checkNotNull(matcher.group(1)))) + 1;
            if (j < 0) {
                return j2;
            }
            if (j == j2) {
                return j;
            }
            Log.m329w("HttpUtil", "Inconsistent headers [" + str + "] [" + str2 + "]");
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            Log.m325e("HttpUtil", "Unexpected Content-Range [" + str2 + "]");
            return j;
        }
    }
}
