package kotlin.text;

import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Utf8$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "2.2")
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0004\u0012\u0013\u0014\u0015B!\b@\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\n\u0010\u0010\u001a\u00020\u0011H\u0096\u0080\u0004R\u0015\u0010\u0002\u001a\u00020\u0003X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0004\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0006\u001a\u00020\u0007X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, d2 = {"Lkotlin/text/HexFormat;", _UrlKt.FRAGMENT_ENCODE_SET, "upperCase", _UrlKt.FRAGMENT_ENCODE_SET, "bytes", "Lkotlin/text/HexFormat$BytesHexFormat;", "number", "Lkotlin/text/HexFormat$NumberHexFormat;", "<init>", "(ZLkotlin/text/HexFormat$BytesHexFormat;Lkotlin/text/HexFormat$NumberHexFormat;)V", "getUpperCase", "()Z", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "BytesHexFormat", "NumberHexFormat", "Builder", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalStdlibApi.class})
public final class HexFormat {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final HexFormat Default;
    private static final HexFormat UpperCase;
    private final BytesHexFormat bytes;
    private final NumberHexFormat number;
    private final boolean upperCase;

    public HexFormat(boolean z, BytesHexFormat bytesHexFormat, NumberHexFormat numberHexFormat) {
        this.upperCase = z;
        this.bytes = bytesHexFormat;
        this.number = numberHexFormat;
    }

    public final boolean getUpperCase() {
        return this.upperCase;
    }

    public final BytesHexFormat getBytes() {
        return this.bytes;
    }

    public final NumberHexFormat getNumber() {
        return this.number;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("HexFormat(\n    upperCase = ");
        sb.append(this.upperCase);
        sb.append(",\n    bytes = BytesHexFormat(\n");
        this.bytes.appendOptionsTo$kotlin_stdlib(sb, "        ").append('\n');
        sb.append("    ),");
        sb.append('\n');
        sb.append("    number = NumberHexFormat(");
        sb.append('\n');
        this.number.appendOptionsTo$kotlin_stdlib(sb, "        ").append('\n');
        sb.append("    )");
        sb.append('\n');
        sb.append(")");
        return sb.toString();
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 %2\u00020\u0001:\u0002$%B9\b@\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\n\u0010\u001c\u001a\u00020\u0006H\u0096\u0080\u0004J)\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\n\u0010 \u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010!\u001a\u00020\u0006H\u0080\u0080\u0004¢\u0006\u0004\b\"\u0010#R\u0015\u0010\u0002\u001a\u00020\u0003X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0004\u001a\u00020\u0003X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0015\u0010\u0005\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0007\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0015\u0010\b\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0015\u0010\t\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0015\u0010\u0014\u001a\u00020\u0015X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0015\u0010\u0018\u001a\u00020\u0015X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0015\u0010\u001a\u001a\u00020\u0015X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017¨\u0006&"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat;", _UrlKt.FRAGMENT_ENCODE_SET, "bytesPerLine", _UrlKt.FRAGMENT_ENCODE_SET, "bytesPerGroup", "groupSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "byteSeparator", "bytePrefix", "byteSuffix", "<init>", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBytesPerLine", "()I", "getBytesPerGroup", "getGroupSeparator", "()Ljava/lang/String;", "getByteSeparator", "getBytePrefix", "getByteSuffix", "noLineAndGroupSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "getNoLineAndGroupSeparator$kotlin_stdlib", "()Z", "shortByteSeparatorNoPrefixAndSuffix", "getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib", "ignoreCase", "getIgnoreCase$kotlin_stdlib", "toString", "appendOptionsTo", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;", "Builder", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class BytesHexFormat {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final BytesHexFormat Default = new BytesHexFormat(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
        private final String bytePrefix;
        private final String byteSeparator;
        private final String byteSuffix;
        private final int bytesPerGroup;
        private final int bytesPerLine;
        private final String groupSeparator;
        private final boolean ignoreCase;
        private final boolean noLineAndGroupSeparator;
        private final boolean shortByteSeparatorNoPrefixAndSuffix;

        public BytesHexFormat(int i, int i2, String str, String str2, String str3, String str4) {
            this.bytesPerLine = i;
            this.bytesPerGroup = i2;
            this.groupSeparator = str;
            this.byteSeparator = str2;
            this.bytePrefix = str3;
            this.byteSuffix = str4;
            this.noLineAndGroupSeparator = i == Integer.MAX_VALUE && i2 == Integer.MAX_VALUE;
            this.shortByteSeparatorNoPrefixAndSuffix = str3.length() == 0 && str4.length() == 0 && str2.length() <= 1;
            this.ignoreCase = HexFormatKt.isCaseSensitive(str) || HexFormatKt.isCaseSensitive(str2) || HexFormatKt.isCaseSensitive(str3) || HexFormatKt.isCaseSensitive(str4);
        }

        public final int getBytesPerLine() {
            return this.bytesPerLine;
        }

        public final int getBytesPerGroup() {
            return this.bytesPerGroup;
        }

        public final String getGroupSeparator() {
            return this.groupSeparator;
        }

        public final String getByteSeparator() {
            return this.byteSeparator;
        }

        public final String getBytePrefix() {
            return this.bytePrefix;
        }

        public final String getByteSuffix() {
            return this.byteSuffix;
        }

        /* JADX INFO: renamed from: getNoLineAndGroupSeparator$kotlin_stdlib, reason: from getter */
        public final boolean getNoLineAndGroupSeparator() {
            return this.noLineAndGroupSeparator;
        }

        /* JADX INFO: renamed from: getShortByteSeparatorNoPrefixAndSuffix$kotlin_stdlib, reason: from getter */
        public final boolean getShortByteSeparatorNoPrefixAndSuffix() {
            return this.shortByteSeparatorNoPrefixAndSuffix;
        }

        /* JADX INFO: renamed from: getIgnoreCase$kotlin_stdlib, reason: from getter */
        public final boolean getIgnoreCase() {
            return this.ignoreCase;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("BytesHexFormat(\n");
            appendOptionsTo$kotlin_stdlib(sb, "    ").append('\n');
            sb.append(")");
            return sb.toString();
        }

        public final StringBuilder appendOptionsTo$kotlin_stdlib(StringBuilder sb, String indent) {
            sb.append(indent);
            sb.append("bytesPerLine = ");
            sb.append(this.bytesPerLine);
            sb.append(",");
            sb.append('\n');
            sb.append(indent);
            sb.append("bytesPerGroup = ");
            sb.append(this.bytesPerGroup);
            sb.append(",");
            sb.append('\n');
            sb.append(indent);
            sb.append("groupSeparator = \"");
            sb.append(this.groupSeparator);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("byteSeparator = \"");
            sb.append(this.byteSeparator);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("bytePrefix = \"");
            sb.append(this.bytePrefix);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("byteSuffix = \"");
            sb.append(this.byteSuffix);
            sb.append("\"");
            return sb;
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\t\b@¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u001eH\u0080\u0080\u0004¢\u0006\u0002\b\u001fR%\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR%\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001b\u0010\u000e\u001a\u00020\u000fX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R%\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R%\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R%\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u000f@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013¨\u0006 "}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "value", _UrlKt.FRAGMENT_ENCODE_SET, "bytesPerLine", "getBytesPerLine", "()I", "setBytesPerLine", "(I)V", "bytesPerGroup", "getBytesPerGroup", "setBytesPerGroup", "groupSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "getGroupSeparator", "()Ljava/lang/String;", "setGroupSeparator", "(Ljava/lang/String;)V", "byteSeparator", "getByteSeparator", "setByteSeparator", "bytePrefix", "getBytePrefix", "setBytePrefix", "byteSuffix", "getByteSuffix", "setByteSuffix", "build", "Lkotlin/text/HexFormat$BytesHexFormat;", "build$kotlin_stdlib", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Builder {
            private String bytePrefix;
            private String byteSeparator;
            private String byteSuffix;
            private int bytesPerGroup;
            private int bytesPerLine;
            private String groupSeparator;

            public Builder() {
                Companion companion = BytesHexFormat.INSTANCE;
                this.bytesPerLine = companion.getDefault$kotlin_stdlib().getBytesPerLine();
                this.bytesPerGroup = companion.getDefault$kotlin_stdlib().getBytesPerGroup();
                this.groupSeparator = companion.getDefault$kotlin_stdlib().getGroupSeparator();
                this.byteSeparator = companion.getDefault$kotlin_stdlib().getByteSeparator();
                this.bytePrefix = companion.getDefault$kotlin_stdlib().getBytePrefix();
                this.byteSuffix = companion.getDefault$kotlin_stdlib().getByteSuffix();
            }

            public final int getBytesPerLine() {
                return this.bytesPerLine;
            }

            public final void setBytesPerLine(int i) {
                if (i <= 0) {
                    CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Non-positive values are prohibited for bytesPerLine, but was ", i);
                } else {
                    this.bytesPerLine = i;
                }
            }

            public final int getBytesPerGroup() {
                return this.bytesPerGroup;
            }

            public final void setBytesPerGroup(int i) {
                if (i <= 0) {
                    CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Non-positive values are prohibited for bytesPerGroup, but was ", i);
                } else {
                    this.bytesPerGroup = i;
                }
            }

            public final String getGroupSeparator() {
                return this.groupSeparator;
            }

            public final void setGroupSeparator(String str) {
                this.groupSeparator = str;
            }

            public final String getByteSeparator() {
                return this.byteSeparator;
            }

            public final void setByteSeparator(String str) {
                if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
                    Native$$ExternalSyntheticBUOutline5.m470m("LF and CR characters are prohibited in byteSeparator, but was ", str);
                } else {
                    this.byteSeparator = str;
                }
            }

            public final String getBytePrefix() {
                return this.bytePrefix;
            }

            public final void setBytePrefix(String str) {
                if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
                    Native$$ExternalSyntheticBUOutline5.m470m("LF and CR characters are prohibited in bytePrefix, but was ", str);
                } else {
                    this.bytePrefix = str;
                }
            }

            public final String getByteSuffix() {
                return this.byteSuffix;
            }

            public final void setByteSuffix(String str) {
                if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
                    Native$$ExternalSyntheticBUOutline5.m470m("LF and CR characters are prohibited in byteSuffix, but was ", str);
                } else {
                    this.byteSuffix = str;
                }
            }

            public final BytesHexFormat build$kotlin_stdlib() {
                return new BytesHexFormat(this.bytesPerLine, this.bytesPerGroup, this.groupSeparator, this.byteSeparator, this.bytePrefix, this.byteSuffix);
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\u0004\u001a\u00020\u0005X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/HexFormat$BytesHexFormat$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Default", "Lkotlin/text/HexFormat$BytesHexFormat;", "getDefault$kotlin_stdlib", "()Lkotlin/text/HexFormat$BytesHexFormat;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final BytesHexFormat getDefault$kotlin_stdlib() {
                return BytesHexFormat.Default;
            }
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 #2\u00020\u0001:\u0002\"#B)\b@\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\n\u0010\u001a\u001a\u00020\u0003H\u0096\u0080\u0004J)\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d2\n\u0010\u001e\u001a\u00060\u001cj\u0002`\u001d2\u0006\u0010\u001f\u001a\u00020\u0003H\u0080\u0080\u0004¢\u0006\u0004\b \u0010!R\u0015\u0010\u0002\u001a\u00020\u0003X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u00020\u0003X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0015\u0010\u0005\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0084\b¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\u0014\u001a\u00020\u0006X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0015\u0010\u0016\u001a\u00020\u0006X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0015\u0010\u0018\u001a\u00020\u0006X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000f¨\u0006$"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat;", _UrlKt.FRAGMENT_ENCODE_SET, "prefix", _UrlKt.FRAGMENT_ENCODE_SET, "suffix", "removeLeadingZeros", _UrlKt.FRAGMENT_ENCODE_SET, "minLength", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "getPrefix", "()Ljava/lang/String;", "getSuffix", "getRemoveLeadingZeros", "()Z", "getMinLength$annotations", "()V", "getMinLength", "()I", "isDigitsOnly", "isDigitsOnly$kotlin_stdlib", "isDigitsOnlyAndNoPadding", "isDigitsOnlyAndNoPadding$kotlin_stdlib", "ignoreCase", "getIgnoreCase$kotlin_stdlib", "toString", "appendOptionsTo", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "indent", "appendOptionsTo$kotlin_stdlib", "(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;", "Builder", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NumberHexFormat {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final NumberHexFormat Default = new NumberHexFormat(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, false, 1);
        private final boolean ignoreCase;
        private final boolean isDigitsOnly;
        private final boolean isDigitsOnlyAndNoPadding;
        private final int minLength;
        private final String prefix;
        private final boolean removeLeadingZeros;
        private final String suffix;

        @SinceKotlin(version = "2.0")
        public static /* synthetic */ void getMinLength$annotations() {
        }

        public NumberHexFormat(String str, String str2, boolean z, int i) {
            this.prefix = str;
            this.suffix = str2;
            this.removeLeadingZeros = z;
            this.minLength = i;
            boolean z2 = str.length() == 0 && str2.length() == 0;
            this.isDigitsOnly = z2;
            this.isDigitsOnlyAndNoPadding = z2 && i == 1;
            this.ignoreCase = HexFormatKt.isCaseSensitive(str) || HexFormatKt.isCaseSensitive(str2);
        }

        public final String getPrefix() {
            return this.prefix;
        }

        public final String getSuffix() {
            return this.suffix;
        }

        public final boolean getRemoveLeadingZeros() {
            return this.removeLeadingZeros;
        }

        public final int getMinLength() {
            return this.minLength;
        }

        /* JADX INFO: renamed from: isDigitsOnly$kotlin_stdlib, reason: from getter */
        public final boolean getIsDigitsOnly() {
            return this.isDigitsOnly;
        }

        /* JADX INFO: renamed from: isDigitsOnlyAndNoPadding$kotlin_stdlib, reason: from getter */
        public final boolean getIsDigitsOnlyAndNoPadding() {
            return this.isDigitsOnlyAndNoPadding;
        }

        /* JADX INFO: renamed from: getIgnoreCase$kotlin_stdlib, reason: from getter */
        public final boolean getIgnoreCase() {
            return this.ignoreCase;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("NumberHexFormat(\n");
            appendOptionsTo$kotlin_stdlib(sb, "    ").append('\n');
            sb.append(")");
            return sb.toString();
        }

        public final StringBuilder appendOptionsTo$kotlin_stdlib(StringBuilder sb, String indent) {
            sb.append(indent);
            sb.append("prefix = \"");
            sb.append(this.prefix);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("suffix = \"");
            sb.append(this.suffix);
            sb.append("\",");
            sb.append('\n');
            sb.append(indent);
            sb.append("removeLeadingZeros = ");
            sb.append(this.removeLeadingZeros);
            sb.append(',');
            sb.append('\n');
            sb.append(indent);
            sb.append("minLength = ");
            sb.append(this.minLength);
            return sb;
        }

        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\t\b@¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u001cH\u0080\u0080\u0004¢\u0006\u0002\b\u001dR%\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR%\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001b\u0010\u000e\u001a\u00020\u000fX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R-\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0004\u001a\u00020\u00148\u0006@FX\u0087\u008e\b¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u0003\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "value", _UrlKt.FRAGMENT_ENCODE_SET, "prefix", "getPrefix", "()Ljava/lang/String;", "setPrefix", "(Ljava/lang/String;)V", "suffix", "getSuffix", "setSuffix", "removeLeadingZeros", _UrlKt.FRAGMENT_ENCODE_SET, "getRemoveLeadingZeros", "()Z", "setRemoveLeadingZeros", "(Z)V", _UrlKt.FRAGMENT_ENCODE_SET, "minLength", "getMinLength$annotations", "getMinLength", "()I", "setMinLength", "(I)V", "build", "Lkotlin/text/HexFormat$NumberHexFormat;", "build$kotlin_stdlib", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nHexFormat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexFormat.kt\nkotlin/text/HexFormat$NumberHexFormat$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,845:1\n1#2:846\n*E\n"})
        public static final class Builder {
            private int minLength;
            private String prefix;
            private boolean removeLeadingZeros;
            private String suffix;

            @SinceKotlin(version = "2.0")
            public static /* synthetic */ void getMinLength$annotations() {
            }

            public Builder() {
                Companion companion = NumberHexFormat.INSTANCE;
                this.prefix = companion.getDefault$kotlin_stdlib().getPrefix();
                this.suffix = companion.getDefault$kotlin_stdlib().getSuffix();
                this.removeLeadingZeros = companion.getDefault$kotlin_stdlib().getRemoveLeadingZeros();
                this.minLength = companion.getDefault$kotlin_stdlib().getMinLength();
            }

            public final String getPrefix() {
                return this.prefix;
            }

            public final void setPrefix(String str) {
                if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
                    Native$$ExternalSyntheticBUOutline5.m470m("LF and CR characters are prohibited in prefix, but was ", str);
                } else {
                    this.prefix = str;
                }
            }

            public final String getSuffix() {
                return this.suffix;
            }

            public final void setSuffix(String str) {
                if (StringsKt__StringsKt.contains$default((CharSequence) str, '\n', false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) str, '\r', false, 2, (Object) null)) {
                    Native$$ExternalSyntheticBUOutline5.m470m("LF and CR characters are prohibited in suffix, but was ", str);
                } else {
                    this.suffix = str;
                }
            }

            public final boolean getRemoveLeadingZeros() {
                return this.removeLeadingZeros;
            }

            public final void setRemoveLeadingZeros(boolean z) {
                this.removeLeadingZeros = z;
            }

            public final int getMinLength() {
                return this.minLength;
            }

            public final void setMinLength(int i) {
                if (i <= 0) {
                    Utf8$$ExternalSyntheticBUOutline1.m851m("Non-positive values are prohibited for minLength, but was ", i);
                } else {
                    this.minLength = i;
                }
            }

            public final NumberHexFormat build$kotlin_stdlib() {
                return new NumberHexFormat(this.prefix, this.suffix, this.removeLeadingZeros, this.minLength);
            }
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\u0004\u001a\u00020\u0005X\u0080\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/HexFormat$NumberHexFormat$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Default", "Lkotlin/text/HexFormat$NumberHexFormat;", "getDefault$kotlin_stdlib", "()Lkotlin/text/HexFormat$NumberHexFormat;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final NumberHexFormat getDefault$kotlin_stdlib() {
                return NumberHexFormat.Default;
            }
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\t\bA¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\n\u001a\u00020\u00142\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00140\u0016¢\u0006\u0002\b\u0017H\u0087\u0088\u0004ø\u0001\u0000J&\u0010\u000f\u001a\u00020\u00142\u0017\u0010\u0015\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00140\u0016¢\u0006\u0002\b\u0017H\u0087\u0088\u0004ø\u0001\u0000J\n\u0010\u0018\u001a\u00020\u0019H\u0081\u0080\u0004R\u001b\u0010\u0004\u001a\u00020\u0005X\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0015\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u0004\u0018\u00010\u000bX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u0015\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u008e\b¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, d2 = {"Lkotlin/text/HexFormat$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "upperCase", _UrlKt.FRAGMENT_ENCODE_SET, "getUpperCase", "()Z", "setUpperCase", "(Z)V", "bytes", "Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "getBytes", "()Lkotlin/text/HexFormat$BytesHexFormat$Builder;", "_bytes", "number", "Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "getNumber", "()Lkotlin/text/HexFormat$NumberHexFormat$Builder;", "_number", _UrlKt.FRAGMENT_ENCODE_SET, "builderAction", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "build", "Lkotlin/text/HexFormat;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Builder {
        private BytesHexFormat.Builder _bytes;
        private NumberHexFormat.Builder _number;
        private boolean upperCase = HexFormat.INSTANCE.getDefault().getUpperCase();

        @PublishedApi
        public Builder() {
        }

        public final boolean getUpperCase() {
            return this.upperCase;
        }

        public final void setUpperCase(boolean z) {
            this.upperCase = z;
        }

        public final BytesHexFormat.Builder getBytes() {
            if (this._bytes == null) {
                this._bytes = new BytesHexFormat.Builder();
            }
            return this._bytes;
        }

        public final NumberHexFormat.Builder getNumber() {
            if (this._number == null) {
                this._number = new NumberHexFormat.Builder();
            }
            return this._number;
        }

        @InlineOnly
        private final void bytes(Function1<? super BytesHexFormat.Builder, Unit> builderAction) {
            builderAction.invoke(getBytes());
        }

        @InlineOnly
        private final void number(Function1<? super NumberHexFormat.Builder, Unit> builderAction) {
            builderAction.invoke(getNumber());
        }

        @PublishedApi
        public final HexFormat build() {
            BytesHexFormat default$kotlin_stdlib;
            NumberHexFormat default$kotlin_stdlib2;
            boolean z = this.upperCase;
            BytesHexFormat.Builder builder = this._bytes;
            if (builder == null || (default$kotlin_stdlib = builder.build$kotlin_stdlib()) == null) {
                default$kotlin_stdlib = BytesHexFormat.INSTANCE.getDefault$kotlin_stdlib();
            }
            NumberHexFormat.Builder builder2 = this._number;
            if (builder2 == null || (default$kotlin_stdlib2 = builder2.build$kotlin_stdlib()) == null) {
                default$kotlin_stdlib2 = NumberHexFormat.INSTANCE.getDefault$kotlin_stdlib();
            }
            return new HexFormat(z, default$kotlin_stdlib, default$kotlin_stdlib2);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\u0004\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0015\u0010\b\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/text/HexFormat$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Default", "Lkotlin/text/HexFormat;", "getDefault", "()Lkotlin/text/HexFormat;", "UpperCase", "getUpperCase", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HexFormat getDefault() {
            return HexFormat.Default;
        }

        public final HexFormat getUpperCase() {
            return HexFormat.UpperCase;
        }
    }

    static {
        BytesHexFormat.Companion companion = BytesHexFormat.INSTANCE;
        BytesHexFormat default$kotlin_stdlib = companion.getDefault$kotlin_stdlib();
        NumberHexFormat.Companion companion2 = NumberHexFormat.INSTANCE;
        Default = new HexFormat(false, default$kotlin_stdlib, companion2.getDefault$kotlin_stdlib());
        UpperCase = new HexFormat(true, companion.getDefault$kotlin_stdlib(), companion2.getDefault$kotlin_stdlib());
    }
}
