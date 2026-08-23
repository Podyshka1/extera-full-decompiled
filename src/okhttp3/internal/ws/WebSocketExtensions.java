package okhttp3.internal.ws;

import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
@IgnoreJRERequirement
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            z = webSocketExtensions.perMessageDeflate;
        }
        if ((i & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        if ((i & 4) != 0) {
            z2 = webSocketExtensions.clientNoContextTakeover;
        }
        if ((i & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        if ((i & 16) != 0) {
            z3 = webSocketExtensions.serverNoContextTakeover;
        }
        if ((i & 32) != 0) {
            z4 = webSocketExtensions.unknownValues;
        }
        boolean z5 = z3;
        boolean z6 = z4;
        return webSocketExtensions.copy(z, num, z2, num2, z5, z6);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        return new WebSocketExtensions(z, num, z2, num2, z3, z4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && Intrinsics.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && Intrinsics.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    public int hashCode() {
        int iM10m = EvCompValue$$ExternalSyntheticBackport0.m10m(this.perMessageDeflate) * 31;
        Integer num = this.clientMaxWindowBits;
        int iHashCode = (((iM10m + (num == null ? 0 : num.hashCode())) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.clientNoContextTakeover)) * 31;
        Integer num2 = this.serverMaxWindowBits;
        return ((((iHashCode + (num2 != null ? num2.hashCode() : 0)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.serverNoContextTakeover)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.unknownValues);
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ')';
    }

    public WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4) {
        this.perMessageDeflate = z;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z2;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z3;
        this.unknownValues = z4;
    }

    public /* synthetic */ WebSocketExtensions(boolean z, Integer num, boolean z2, Integer num2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? false : z3, (i & 32) != 0 ? false : z4);
    }

    public final boolean noContextTakeover(boolean z) {
        if (z) {
            return this.clientNoContextTakeover;
        }
        return this.serverNoContextTakeover;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WebSocketExtensions parse(Headers responseHeaders) {
            Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z = false;
            Integer intOrNull = null;
            boolean z2 = false;
            Integer intOrNull2 = null;
            boolean z3 = false;
            boolean z4 = false;
            for (int i = 0; i < size; i++) {
                if (StringsKt.equals(responseHeaders.name(i), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true)) {
                    String strValue = responseHeaders.value(i);
                    int i2 = 0;
                    while (i2 < strValue.length()) {
                        int i3 = i2;
                        int iDelimiterOffset$default = _UtilCommonKt.delimiterOffset$default(strValue, ',', i3, 0, 4, (Object) null);
                        int iDelimiterOffset = _UtilCommonKt.delimiterOffset(strValue, ';', i3, iDelimiterOffset$default);
                        String strTrimSubstring = _UtilCommonKt.trimSubstring(strValue, i3, iDelimiterOffset);
                        int i4 = iDelimiterOffset + 1;
                        if (StringsKt.equals(strTrimSubstring, "permessage-deflate", true)) {
                            if (!z) {
                                z4 = true;
                                while (i4 < iDelimiterOffset$default) {
                                    int iDelimiterOffset2 = _UtilCommonKt.delimiterOffset(strValue, ';', i4, iDelimiterOffset$default);
                                    int iDelimiterOffset3 = _UtilCommonKt.delimiterOffset(strValue, SignatureVisitor.INSTANCEOF, i4, iDelimiterOffset2);
                                    String strTrimSubstring2 = _UtilCommonKt.trimSubstring(strValue, i4, iDelimiterOffset3);
                                    String strRemoveSurrounding = iDelimiterOffset3 < iDelimiterOffset2 ? StringsKt.removeSurrounding(_UtilCommonKt.trimSubstring(strValue, iDelimiterOffset3 + 1, iDelimiterOffset2), "\"") : null;
                                    int i5 = iDelimiterOffset2 + 1;
                                    if (StringsKt.equals(strTrimSubstring2, "client_max_window_bits", true)) {
                                        if (intOrNull != null) {
                                            z4 = true;
                                        }
                                        intOrNull = strRemoveSurrounding != null ? StringsKt.toIntOrNull(strRemoveSurrounding) : null;
                                        i4 = intOrNull == null ? i5 : i5;
                                    } else if (StringsKt.equals(strTrimSubstring2, "client_no_context_takeover", true)) {
                                        if (z2) {
                                            z4 = true;
                                        }
                                        if (strRemoveSurrounding != null) {
                                            z4 = true;
                                        }
                                        i4 = i5;
                                        z2 = true;
                                    } else if (StringsKt.equals(strTrimSubstring2, "server_max_window_bits", true)) {
                                        if (intOrNull2 != null) {
                                            z4 = true;
                                        }
                                        intOrNull2 = strRemoveSurrounding != null ? StringsKt.toIntOrNull(strRemoveSurrounding) : null;
                                        if (intOrNull2 == null) {
                                        }
                                    } else if (StringsKt.equals(strTrimSubstring2, "server_no_context_takeover", true)) {
                                        if (z3) {
                                            z4 = true;
                                        }
                                        if (strRemoveSurrounding != null) {
                                            z4 = true;
                                        }
                                        i4 = i5;
                                        z3 = true;
                                    }
                                }
                                i2 = i4;
                                z = true;
                            }
                            z4 = true;
                        } else {
                            i2 = i4;
                            z4 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z, intOrNull, z2, intOrNull2, z3, z4);
        }
    }
}
