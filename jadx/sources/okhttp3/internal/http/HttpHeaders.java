package okhttp3.internal.http;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: loaded from: classes.dex */
public final class HttpHeaders {
    private static final ByteString QUOTED_STRING_DELIMITERS;
    private static final ByteString TOKEN_DELIMITERS;

    static {
        ByteString.Companion companion = ByteString.Companion;
        QUOTED_STRING_DELIMITERS = companion.encodeUtf8("\"\\");
        TOKEN_DELIMITERS = companion.encodeUtf8("\t ,=");
    }

    public static final List<Challenge> parseChallenges(Headers headers, String headerName) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        Intrinsics.checkNotNullParameter(headerName, "headerName");
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            if (StringsKt.equals(headerName, headers.name(i), true)) {
                try {
                    readChallengeHeader(new Buffer().writeUtf8(headers.value(i)), arrayList);
                } catch (EOFException e) {
                    Platform.Companion.get().log("Unable to parse challenge", 5, e);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00bd, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00bd, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void readChallengeHeader(Buffer buffer, List<Challenge> list) throws EOFException {
        String token;
        int iSkipAll;
        LinkedHashMap linkedHashMap;
        while (true) {
            String token2 = null;
            while (true) {
                if (token2 == null) {
                    skipCommasAndWhitespace(buffer);
                    token2 = readToken(buffer);
                    if (token2 == null) {
                        return;
                    }
                }
                boolean zSkipCommasAndWhitespace = skipCommasAndWhitespace(buffer);
                token = readToken(buffer);
                if (token == null) {
                    if (buffer.exhausted()) {
                        list.add(new Challenge(token2, (Map<String, String>) MapsKt.emptyMap()));
                        return;
                    }
                    return;
                }
                iSkipAll = _UtilCommonKt.skipAll(buffer, (byte) 61);
                boolean zSkipCommasAndWhitespace2 = skipCommasAndWhitespace(buffer);
                if (zSkipCommasAndWhitespace || (!zSkipCommasAndWhitespace2 && !buffer.exhausted())) {
                    linkedHashMap = new LinkedHashMap();
                    int iSkipAll2 = iSkipAll + _UtilCommonKt.skipAll(buffer, (byte) 61);
                    while (true) {
                        if (token == null) {
                            token = readToken(buffer);
                            if (!skipCommasAndWhitespace(buffer)) {
                                iSkipAll2 = _UtilCommonKt.skipAll(buffer, (byte) 61);
                                if (iSkipAll2 == 0) {
                                    if (iSkipAll2 > 1 || skipCommasAndWhitespace(buffer)) {
                                        return;
                                    }
                                    String quotedString = startsWith(buffer, (byte) 34) ? readQuotedString(buffer) : readToken(buffer);
                                    if (quotedString == null || ((String) linkedHashMap.put(token, quotedString)) != null) {
                                        return;
                                    }
                                    if (!skipCommasAndWhitespace(buffer) && !buffer.exhausted()) {
                                        return;
                                    } else {
                                        token = null;
                                    }
                                }
                            }
                        } else if (iSkipAll2 == 0) {
                            break;
                        }
                    }
                }
                list.add(new Challenge(token2, linkedHashMap));
                token2 = token;
            }
            Map mapSingletonMap = Collections.singletonMap(null, token + StringsKt.repeat("=", iSkipAll));
            Intrinsics.checkNotNullExpressionValue(mapSingletonMap, "singletonMap(...)");
            list.add(new Challenge(token2, (Map<String, String>) mapSingletonMap));
        }
    }

    private static final boolean skipCommasAndWhitespace(Buffer buffer) throws EOFException {
        boolean z = false;
        while (!buffer.exhausted()) {
            byte b = buffer.getByte(0L);
            if (b != 44) {
                if (b != 32 && b != 9) {
                    break;
                }
                buffer.readByte();
            } else {
                buffer.readByte();
                z = true;
            }
        }
        return z;
    }

    private static final boolean startsWith(Buffer buffer, byte b) {
        return !buffer.exhausted() && buffer.getByte(0L) == b;
    }

    private static final String readQuotedString(Buffer buffer) throws EOFException {
        if (buffer.readByte() != 34) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Buffer buffer2 = new Buffer();
        while (true) {
            long jIndexOfElement = buffer.indexOfElement(QUOTED_STRING_DELIMITERS);
            if (jIndexOfElement == -1) {
                return null;
            }
            if (buffer.getByte(jIndexOfElement) == 34) {
                buffer2.write(buffer, jIndexOfElement);
                buffer.readByte();
                return buffer2.readUtf8();
            }
            if (buffer.size() == jIndexOfElement + 1) {
                return null;
            }
            buffer2.write(buffer, jIndexOfElement);
            buffer.readByte();
            buffer2.write(buffer, 1L);
        }
    }

    private static final String readToken(Buffer buffer) {
        long jIndexOfElement = buffer.indexOfElement(TOKEN_DELIMITERS);
        if (jIndexOfElement == -1) {
            jIndexOfElement = buffer.size();
        }
        if (jIndexOfElement != 0) {
            return buffer.readUtf8(jIndexOfElement);
        }
        return null;
    }

    public static final void receiveHeaders(CookieJar cookieJar, HttpUrl url, Headers headers) {
        Intrinsics.checkNotNullParameter(cookieJar, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.Companion.parseAll(url, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(url, all);
    }

    public static final boolean promisesBody(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        if (Intrinsics.areEqual(response.request().method(), "HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && _UtilJvmKt.headersContentLength(response) == -1 && !StringsKt.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true)) ? false : true;
    }

    public static final boolean hasBody(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return promisesBody(response);
    }
}
