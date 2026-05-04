package okhttp3;

import java.io.IOException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class Protocol {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Protocol[] $VALUES;
    public static final Companion Companion;
    private final String protocol;
    public static final Protocol HTTP_1_0 = new Protocol("HTTP_1_0", 0, "http/1.0");
    public static final Protocol HTTP_1_1 = new Protocol("HTTP_1_1", 1, "http/1.1");
    public static final Protocol SPDY_3 = new Protocol("SPDY_3", 2, "spdy/3.1");
    public static final Protocol HTTP_2 = new Protocol("HTTP_2", 3, "h2");
    public static final Protocol H2_PRIOR_KNOWLEDGE = new Protocol("H2_PRIOR_KNOWLEDGE", 4, "h2_prior_knowledge");
    public static final Protocol QUIC = new Protocol("QUIC", 5, "quic");
    public static final Protocol HTTP_3 = new Protocol("HTTP_3", 6, "h3");

    private static final /* synthetic */ Protocol[] $values() {
        return new Protocol[]{HTTP_1_0, HTTP_1_1, SPDY_3, HTTP_2, H2_PRIOR_KNOWLEDGE, QUIC, HTTP_3};
    }

    public static final Protocol get(String str) {
        return Companion.get(str);
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Protocol valueOf(String str) {
        return (Protocol) Enum.valueOf(Protocol.class, str);
    }

    public static Protocol[] values() {
        return (Protocol[]) $VALUES.clone();
    }

    private Protocol(String str, int i, String str2) {
        this.protocol = str2;
    }

    static {
        Protocol[] protocolArr$values = $values();
        $VALUES = protocolArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(protocolArr$values);
        Companion = new Companion(null);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Protocol get(String protocol) throws IOException {
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Protocol protocol2 = Protocol.HTTP_1_0;
            if (Intrinsics.areEqual(protocol, protocol2.protocol)) {
                return protocol2;
            }
            Protocol protocol3 = Protocol.HTTP_1_1;
            if (Intrinsics.areEqual(protocol, protocol3.protocol)) {
                return protocol3;
            }
            Protocol protocol4 = Protocol.H2_PRIOR_KNOWLEDGE;
            if (Intrinsics.areEqual(protocol, protocol4.protocol)) {
                return protocol4;
            }
            Protocol protocol5 = Protocol.HTTP_2;
            if (Intrinsics.areEqual(protocol, protocol5.protocol)) {
                return protocol5;
            }
            Protocol protocol6 = Protocol.SPDY_3;
            if (Intrinsics.areEqual(protocol, protocol6.protocol)) {
                return protocol6;
            }
            Protocol protocol7 = Protocol.QUIC;
            if (Intrinsics.areEqual(protocol, protocol7.protocol)) {
                return protocol7;
            }
            Protocol protocol8 = Protocol.HTTP_3;
            if (StringsKt.startsWith$default(protocol, protocol8.protocol, false, 2, (Object) null)) {
                return protocol8;
            }
            throw new IOException("Unexpected protocol: " + protocol);
        }
    }
}
