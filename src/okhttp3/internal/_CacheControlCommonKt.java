package okhttp3.internal;

import kotlin.Metadata;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0000\u001a\f\u0010\u0006\u001a\u00020\u0002*\u00020\u0007H\u0000\u001a\f\u0010\b\u001a\u00020\u0002*\u00020\u0007H\u0000\u001a\f\u0010\t\u001a\u00020\u0002*\u00020\nH\u0000\u001a\f\u0010\u000b\u001a\u00020\n*\u00020\nH\u0000\u001a\f\u0010\f\u001a\u00020\n*\u00020\nH\u0000\u001a\f\u0010\r\u001a\u00020\n*\u00020\nH\u0000\u001a\f\u0010\u000e\u001a\u00020\n*\u00020\nH\u0000\u001a\f\u0010\u000f\u001a\u00020\n*\u00020\nH\u0000\u001a\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a\u001e\u0010\u0013\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00012\b\b\u0002\u0010\u0015\u001a\u00020\u0004H\u0002¨\u0006\u0016"}, d2 = {"commonToString", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/CacheControl;", "commonClampToInt", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "commonForceNetwork", "Lokhttp3/CacheControl$Companion;", "commonForceCache", "commonBuild", "Lokhttp3/CacheControl$Builder;", "commonNoCache", "commonNoStore", "commonOnlyIfCached", "commonNoTransform", "commonImmutable", "commonParse", "headers", "Lokhttp3/Headers;", "indexOfElement", "characters", "startIndex", "okhttp"}, m754k = 2, mv = {2, 2, 0}, xi = 48)
public final class _CacheControlCommonKt {
    public static final int commonClampToInt(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    public static final String commonToString(CacheControl cacheControl) {
        String headerValue = cacheControl.getHeaderValue();
        if (headerValue != null) {
            return headerValue;
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
        if (cacheControl.getIsPrivate()) {
            sb.append("private, ");
        }
        if (cacheControl.getIsPublic()) {
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
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        cacheControl.setHeaderValue$okhttp(string);
        return string;
    }

    public static final CacheControl commonForceNetwork(CacheControl.Companion companion) {
        return new CacheControl.Builder().noCache().build();
    }

    public static final CacheControl commonForceCache(CacheControl.Companion companion) {
        CacheControl.Builder builderOnlyIfCached = new CacheControl.Builder().onlyIfCached();
        Duration.Companion companion2 = Duration.INSTANCE;
        return builderOnlyIfCached.m4894maxStaleLRDsOJo(DurationKt.toDuration(Integer.MAX_VALUE, DurationUnit.SECONDS)).build();
    }

    public static final CacheControl commonBuild(CacheControl.Builder builder) {
        return new CacheControl(builder.getNoCache(), builder.getNoStore(), builder.getMaxAgeSeconds(), -1, false, false, false, builder.getMaxStaleSeconds(), builder.getMinFreshSeconds(), builder.getOnlyIfCached(), builder.getNoTransform(), builder.getImmutable(), null);
    }

    public static final CacheControl.Builder commonNoCache(CacheControl.Builder builder) {
        builder.setNoCache$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonNoStore(CacheControl.Builder builder) {
        builder.setNoStore$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonOnlyIfCached(CacheControl.Builder builder) {
        builder.setOnlyIfCached$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonNoTransform(CacheControl.Builder builder) {
        builder.setNoTransform$okhttp(true);
        return builder;
    }

    public static final CacheControl.Builder commonImmutable(CacheControl.Builder builder) {
        builder.setImmutable$okhttp(true);
        return builder;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final CacheControl commonParse(CacheControl.Companion companion, Headers headers) {
        int i;
        String str;
        int iIndexOfElement;
        String string;
        Headers headers2 = headers;
        int size = headers2.size();
        boolean z = true;
        boolean z2 = true;
        int i2 = 0;
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
        while (i2 < size) {
            String strName = headers2.name(i2);
            String strValue = headers2.value(i2);
            if (!StringsKt.equals(strName, "Cache-Control", z)) {
                if (!StringsKt.equals(strName, "Pragma", z)) {
                    i2++;
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
                    String string2 = StringsKt.trim((CharSequence) strValue.substring(i, iIndexOfElement2)).toString();
                    boolean z11 = z;
                    if (iIndexOfElement2 == strValue.length() || strValue.charAt(iIndexOfElement2) == ',' || strValue.charAt(iIndexOfElement2) == ';') {
                        str = strValue;
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string = null;
                    } else {
                        int iIndexOfNonWhitespace = _UtilCommonKt.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                        if (iIndexOfNonWhitespace < strValue.length() && strValue.charAt(iIndexOfNonWhitespace) == '\"') {
                            int i3 = iIndexOfNonWhitespace + 1;
                            String str3 = strValue;
                            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str3, Typography.quote, i3, false, 4, (Object) null);
                            str = str3;
                            iIndexOfElement = iIndexOf$default + 1;
                            string = str.substring(i3, iIndexOf$default);
                        } else {
                            str = strValue;
                            iIndexOfElement = indexOfElement(str, ",;", iIndexOfNonWhitespace);
                            string = StringsKt.trim((CharSequence) str.substring(iIndexOfNonWhitespace, iIndexOfElement)).toString();
                        }
                    }
                    int i4 = size;
                    if (StringsKt.equals("no-cache", string2, z11)) {
                        z3 = z11;
                        i = iIndexOfElement;
                        strValue = str;
                        z = z3;
                    } else if (StringsKt.equals("no-store", string2, z11)) {
                        z4 = z11;
                        i = iIndexOfElement;
                        strValue = str;
                        z = z4;
                    } else {
                        if (StringsKt.equals("max-age", string2, z11)) {
                            nonNegativeInt = _UtilCommonKt.toNonNegativeInt(string, -1);
                        } else if (StringsKt.equals("s-maxage", string2, z11)) {
                            nonNegativeInt2 = _UtilCommonKt.toNonNegativeInt(string, -1);
                        } else if (StringsKt.equals("private", string2, z11)) {
                            z5 = z11;
                            i = iIndexOfElement;
                            strValue = str;
                            z = z5;
                        } else if (StringsKt.equals("public", string2, z11)) {
                            z6 = z11;
                            i = iIndexOfElement;
                            strValue = str;
                            z = z6;
                        } else if (StringsKt.equals("must-revalidate", string2, z11)) {
                            z7 = z11;
                            i = iIndexOfElement;
                            strValue = str;
                            z = z7;
                        } else if (StringsKt.equals("max-stale", string2, z11)) {
                            nonNegativeInt3 = _UtilCommonKt.toNonNegativeInt(string, Integer.MAX_VALUE);
                        } else if (StringsKt.equals("min-fresh", string2, z11)) {
                            nonNegativeInt4 = _UtilCommonKt.toNonNegativeInt(string, -1);
                        } else if (StringsKt.equals("only-if-cached", string2, z11)) {
                            z8 = z11;
                            i = iIndexOfElement;
                            strValue = str;
                            z = z8;
                        } else if (StringsKt.equals("no-transform", string2, z11)) {
                            z9 = z11;
                            i = iIndexOfElement;
                            strValue = str;
                            z = z9;
                        } else if (StringsKt.equals("immutable", string2, z11)) {
                            z10 = z11;
                            i = iIndexOfElement;
                            strValue = str;
                            z = z10;
                        }
                        i = iIndexOfElement;
                        strValue = str;
                        z = z11;
                    }
                    size = i4;
                }
                i2++;
                headers2 = headers;
                z = z;
                size = size;
            }
            z2 = false;
            i = 0;
            while (i < strValue.length()) {
            }
            i2++;
            headers2 = headers;
            z = z;
            size = size;
        }
        return new CacheControl(z3, z4, nonNegativeInt, nonNegativeInt2, z5, z6, z7, nonNegativeInt3, nonNegativeInt4, z8, z9, z10, !z2 ? null : str2);
    }

    public static /* synthetic */ int indexOfElement$default(String str, String str2, int i, int i2, Object obj) {
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
