package okhttp3.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class _CacheControlCommonKt {
    public static final int commonClampToInt(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    public static final String commonToString(CacheControl cacheControl) {
        Intrinsics.checkNotNullParameter(cacheControl, "<this>");
        String headerValue$okhttp = cacheControl.getHeaderValue$okhttp();
        if (headerValue$okhttp != null) {
            return headerValue$okhttp;
        }
        StringBuilder sb = new StringBuilder();
        if (cacheControl.noCache()) {
            sb.append("no-cache, ");
        }
        if (cacheControl.noStore()) {
            sb.append("no-store, ");
        }
        if (cacheControl.maxAgeSeconds() != -1) {
            sb.append("max-age=");
            sb.append(cacheControl.maxAgeSeconds());
            sb.append(", ");
        }
        if (cacheControl.sMaxAgeSeconds() != -1) {
            sb.append("s-maxage=");
            sb.append(cacheControl.sMaxAgeSeconds());
            sb.append(", ");
        }
        if (cacheControl.isPrivate()) {
            sb.append("private, ");
        }
        if (cacheControl.isPublic()) {
            sb.append("public, ");
        }
        if (cacheControl.mustRevalidate()) {
            sb.append("must-revalidate, ");
        }
        if (cacheControl.maxStaleSeconds() != -1) {
            sb.append("max-stale=");
            sb.append(cacheControl.maxStaleSeconds());
            sb.append(", ");
        }
        if (cacheControl.minFreshSeconds() != -1) {
            sb.append("min-fresh=");
            sb.append(cacheControl.minFreshSeconds());
            sb.append(", ");
        }
        if (cacheControl.onlyIfCached()) {
            sb.append("only-if-cached, ");
        }
        if (cacheControl.noTransform()) {
            sb.append("no-transform, ");
        }
        if (cacheControl.immutable()) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        Intrinsics.checkNotNullExpressionValue(sb.delete(sb.length() - 2, sb.length()), "delete(...)");
        String string = sb.toString();
        cacheControl.setHeaderValue$okhttp(string);
        return string;
    }

    public static final CacheControl commonForceNetwork(CacheControl.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return new CacheControl.Builder().noCache().build();
    }

    public static final CacheControl commonForceCache(CacheControl.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        CacheControl.Builder builderOnlyIfCached = new CacheControl.Builder().onlyIfCached();
        Duration.Companion companion2 = Duration.Companion;
        return builderOnlyIfCached.m3758maxStaleLRDsOJo(DurationKt.toDuration(Integer.MAX_VALUE, DurationUnit.SECONDS)).build();
    }

    public static final CacheControl commonBuild(CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new CacheControl(builder.getNoCache$okhttp(), builder.getNoStore$okhttp(), builder.getMaxAgeSeconds$okhttp(), -1, false, false, false, builder.getMaxStaleSeconds$okhttp(), builder.getMinFreshSeconds$okhttp(), builder.getOnlyIfCached$okhttp(), builder.getNoTransform$okhttp(), builder.getImmutable$okhttp(), null);
    }

    public static final CacheControl.Builder commonNoCache(CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setNoCache$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonNoStore(CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setNoStore$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonOnlyIfCached(CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setOnlyIfCached$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonNoTransform(CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setNoTransform$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonImmutable(CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setImmutable$okhttp(true);
        return builder;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final CacheControl commonParse(CacheControl.Companion companion, Headers headers) {
        int i;
        int i2;
        String str;
        int iIndexOfElement;
        String string;
        Headers headers2 = headers;
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(headers2, "headers");
        int size = headers2.size();
        boolean z = true;
        boolean z2 = true;
        int i3 = 0;
        String str2 = null;
        boolean z3 = false;
        boolean z4 = false;
        int nonNegativeInt = -1;
        int nonNegativeInt2 = -1;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int nonNegativeInt3 = -1;
        int nonNegativeInt4 = -1;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (i3 < size) {
            String strName = headers2.name(i3);
            String strValue = headers2.value(i3);
            if (!StringsKt.equals(strName, "Cache-Control", z)) {
                if (!StringsKt.equals(strName, "Pragma", z)) {
                    i3++;
                    headers2 = headers;
                    z = z;
                    size = size;
                }
            } else {
                if (str2 == null) {
                    str2 = strValue;
                }
                i = 0;
                while (i < strValue.length()) {
                    int iIndexOfElement2 = indexOfElement(strValue, "=,;", i);
                    String strSubstring = strValue.substring(i, iIndexOfElement2);
                    boolean z11 = z;
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    String string2 = StringsKt.trim(strSubstring).toString();
                    if (iIndexOfElement2 != strValue.length()) {
                        i2 = size;
                        if (strValue.charAt(iIndexOfElement2) != ',' && strValue.charAt(iIndexOfElement2) != ';') {
                            int iIndexOfNonWhitespace = _UtilCommonKt.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                            if (iIndexOfNonWhitespace < strValue.length() && strValue.charAt(iIndexOfNonWhitespace) == '\"') {
                                int i4 = iIndexOfNonWhitespace + 1;
                                String str3 = strValue;
                                int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str3, '\"', i4, false, 4, (Object) null);
                                str = str3;
                                String strSubstring2 = str.substring(i4, iIndexOf$default);
                                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                                iIndexOfElement = iIndexOf$default + 1;
                                string = strSubstring2;
                            } else {
                                str = strValue;
                                iIndexOfElement = indexOfElement(str, ",;", iIndexOfNonWhitespace);
                                String strSubstring3 = str.substring(iIndexOfNonWhitespace, iIndexOfElement);
                                Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                                string = StringsKt.trim(strSubstring3).toString();
                            }
                        }
                        if (!StringsKt.equals("no-cache", string2, z11)) {
                            i = iIndexOfElement;
                            z = z11;
                            z3 = z;
                        } else if (StringsKt.equals("no-store", string2, z11)) {
                            i = iIndexOfElement;
                            z = z11;
                            z4 = z;
                        } else {
                            if (StringsKt.equals("max-age", string2, z11)) {
                                nonNegativeInt = _UtilCommonKt.toNonNegativeInt(string, -1);
                            } else if (StringsKt.equals("s-maxage", string2, z11)) {
                                nonNegativeInt2 = _UtilCommonKt.toNonNegativeInt(string, -1);
                            } else if (StringsKt.equals("private", string2, z11)) {
                                i = iIndexOfElement;
                                z = z11;
                                z5 = z;
                            } else if (StringsKt.equals("public", string2, z11)) {
                                i = iIndexOfElement;
                                z = z11;
                                z6 = z;
                            } else if (StringsKt.equals("must-revalidate", string2, z11)) {
                                i = iIndexOfElement;
                                z = z11;
                                z7 = z;
                            } else if (StringsKt.equals("max-stale", string2, z11)) {
                                nonNegativeInt3 = _UtilCommonKt.toNonNegativeInt(string, Integer.MAX_VALUE);
                            } else if (StringsKt.equals("min-fresh", string2, z11)) {
                                nonNegativeInt4 = _UtilCommonKt.toNonNegativeInt(string, -1);
                            } else if (StringsKt.equals("only-if-cached", string2, z11)) {
                                i = iIndexOfElement;
                                z = z11;
                                z8 = z;
                            } else if (StringsKt.equals("no-transform", string2, z11)) {
                                i = iIndexOfElement;
                                z = z11;
                                z9 = z;
                            } else if (StringsKt.equals("immutable", string2, z11)) {
                                i = iIndexOfElement;
                                z = z11;
                                z10 = z;
                            }
                            i = iIndexOfElement;
                            z = z11;
                        }
                        strValue = str;
                        size = i2;
                    } else {
                        i2 = size;
                    }
                    str = strValue;
                    iIndexOfElement = iIndexOfElement2 + 1;
                    string = null;
                    if (!StringsKt.equals("no-cache", string2, z11)) {
                    }
                    strValue = str;
                    size = i2;
                }
                i3++;
                headers2 = headers;
                z = z;
                size = size;
            }
            z2 = false;
            i = 0;
            while (i < strValue.length()) {
            }
            i3++;
            headers2 = headers;
            z = z;
            size = size;
        }
        return new CacheControl(z3, z4, nonNegativeInt, nonNegativeInt2, z5, z6, z7, nonNegativeInt3, nonNegativeInt4, z8, z9, z10, !z2 ? null : str2);
    }

    static /* synthetic */ int indexOfElement$default(String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return indexOfElement(str, str2, i);
    }

    private static final int indexOfElement(String str, String str2, int i) {
        int length = str.length();
        while (i < length) {
            if (StringsKt.contains$default((CharSequence) str2, str.charAt(i), false, 2, (Object) null)) {
                return i;
            }
            i++;
        }
        return str.length();
    }
}
