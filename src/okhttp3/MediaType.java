package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private final String mediaType;
    private final String[] parameterNamesAndValues;
    private final String subtype;
    private final String type;
    public static final Companion Companion = new Companion(null);
    private static final Regex TYPE_SUBTYPE = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Regex PARAMETER = new Regex(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final MediaType get(String str) {
        return Companion.get(str);
    }

    public static final MediaType parse(String str) {
        return Companion.parse(str);
    }

    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    public MediaType(String mediaType, String type, String subtype, String[] parameterNamesAndValues) {
        Intrinsics.checkNotNullParameter(mediaType, "mediaType");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(subtype, "subtype");
        Intrinsics.checkNotNullParameter(parameterNamesAndValues, "parameterNamesAndValues");
        this.mediaType = mediaType;
        this.type = type;
        this.subtype = subtype;
        this.parameterNamesAndValues = parameterNamesAndValues;
    }

    public final String getMediaType$okhttp() {
        return this.mediaType;
    }

    public final String type() {
        return this.type;
    }

    public final String subtype() {
        return this.subtype;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    public final Charset charset(Charset charset) {
        String strParameter = parameter("charset");
        if (strParameter == null) {
            return charset;
        }
        try {
            return Charset.forName(strParameter);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public final String parameter(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, this.parameterNamesAndValues.length - 1, 2);
        if (progressionLastElement < 0) {
            return null;
        }
        while (!StringsKt.equals(this.parameterNamesAndValues[i], name, true)) {
            if (i == progressionLastElement) {
                return null;
            }
            i += 2;
        }
        return this.parameterNamesAndValues[i + 1];
    }

    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name */
    public final String m3814deprecated_type() {
        return this.type;
    }

    /* JADX INFO: renamed from: -deprecated_subtype, reason: not valid java name */
    public final String m3813deprecated_subtype() {
        return this.subtype;
    }

    public String toString() {
        return this.mediaType;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MediaType get(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            MatchResult matchResultMatchAt = MediaType.TYPE_SUBTYPE.matchAt(str, 0);
            if (matchResultMatchAt == null) {
                throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
            }
            String str2 = (String) matchResultMatchAt.getGroupValues().get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = ((String) matchResultMatchAt.getGroupValues().get(2)).toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            ArrayList arrayList = new ArrayList();
            int last = matchResultMatchAt.getRange().getLast();
            while (true) {
                int i = last + 1;
                if (i < str.length()) {
                    MatchResult matchResultMatchAt2 = MediaType.PARAMETER.matchAt(str, i);
                    if (matchResultMatchAt2 == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Parameter is not formatted correctly: \"");
                        String strSubstring = str.substring(i);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        sb.append(strSubstring);
                        sb.append("\" for: \"");
                        sb.append(str);
                        sb.append('\"');
                        throw new IllegalArgumentException(sb.toString().toString());
                    }
                    MatchGroup matchGroup = matchResultMatchAt2.getGroups().get(1);
                    String value = matchGroup != null ? matchGroup.getValue() : null;
                    if (value == null) {
                        last = matchResultMatchAt2.getRange().getLast();
                    } else {
                        MatchGroup matchGroup2 = matchResultMatchAt2.getGroups().get(2);
                        String value2 = matchGroup2 != null ? matchGroup2.getValue() : null;
                        if (value2 == null) {
                            MatchGroup matchGroup3 = matchResultMatchAt2.getGroups().get(3);
                            Intrinsics.checkNotNull(matchGroup3);
                            value2 = matchGroup3.getValue();
                        } else if (StringsKt.startsWith$default((CharSequence) value2, '\'', false, 2, (Object) null) && StringsKt.endsWith$default((CharSequence) value2, '\'', false, 2, (Object) null) && value2.length() > 2) {
                            value2 = value2.substring(1, value2.length() - 1);
                            Intrinsics.checkNotNullExpressionValue(value2, "substring(...)");
                        }
                        arrayList.add(value);
                        arrayList.add(value2);
                        last = matchResultMatchAt2.getRange().getLast();
                    }
                } else {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                }
            }
        }

        public final MediaType parse(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final MediaType m3815deprecated_get(String mediaType) {
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            return get(mediaType);
        }

        /* JADX INFO: renamed from: -deprecated_parse, reason: not valid java name */
        public final MediaType m3816deprecated_parse(String mediaType) {
            Intrinsics.checkNotNullParameter(mediaType, "mediaType");
            return parse(mediaType);
        }
    }
}
