package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 '2\u00020\u0001:\u0002&'B9\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0007¢\u0006\u0002\b\u0013J\u0015\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010H\u0007¢\u0006\u0002\b\u0016J\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0017J\u001d\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0000¢\u0006\u0002\b\u001dJ\u0018\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002J\u000e\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001bJ\u0013\u0010!\u001a\u00020\u00032\b\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0007H\u0016R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u000bR\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000bR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0012R\u0019\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00108G¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012¨\u0006("}, d2 = {"Lokhttp3/ConnectionSpec;", _UrlKt.FRAGMENT_ENCODE_SET, "isTls", _UrlKt.FRAGMENT_ENCODE_SET, "supportsTlsExtensions", "cipherSuitesAsString", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "tlsVersionsAsString", "<init>", "(ZZ[Ljava/lang/String;[Ljava/lang/String;)V", "()Z", "getCipherSuitesAsString$okhttp", "()[Ljava/lang/String;", "[Ljava/lang/String;", "cipherSuites", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/CipherSuite;", "()Ljava/util/List;", "-deprecated_cipherSuites", "tlsVersions", "Lokhttp3/TlsVersion;", "-deprecated_tlsVersions", "-deprecated_supportsTlsExtensions", "apply", _UrlKt.FRAGMENT_ENCODE_SET, "sslSocket", "Ljavax/net/ssl/SSLSocket;", "isFallback", "apply$okhttp", "supportedSpec", "isCompatible", "socket", "equals", "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "Builder", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,384:1\n11561#2:385\n11896#2,3:386\n11561#2:389\n11896#2,3:390\n37#3,2:393\n37#3,2:395\n37#3,2:397\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n*L\n60#1:385\n60#1:386,3\n78#1:389\n78#1:390,3\n349#1:393,2\n361#1:395,2\n374#1:397,2\n*E\n"})
public final class ConnectionSpec {
    private static final List<CipherSuite> APPROVED_CIPHER_SUITES;

    @JvmField
    public static final ConnectionSpec CLEARTEXT;

    @JvmField
    public static final ConnectionSpec COMPATIBLE_TLS;

    @JvmField
    public static final ConnectionSpec MODERN_TLS;
    private static final List<CipherSuite> RESTRICTED_CIPHER_SUITES;

    @JvmField
    public static final ConnectionSpec RESTRICTED_TLS;
    private final String[] cipherSuitesAsString;
    private final boolean isTls;
    private final boolean supportsTlsExtensions;
    private final String[] tlsVersionsAsString;

    public ConnectionSpec(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.isTls = z;
        this.supportsTlsExtensions = z2;
        this.cipherSuitesAsString = strArr;
        this.tlsVersionsAsString = strArr2;
    }

    @JvmName(name = "isTls")
    /* JADX INFO: renamed from: isTls, reason: from getter */
    public final boolean getIsTls() {
        return this.isTls;
    }

    @JvmName(name = "supportsTlsExtensions")
    public final boolean supportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    /* JADX INFO: renamed from: getCipherSuitesAsString$okhttp, reason: from getter */
    public final String[] getCipherSuitesAsString() {
        return this.cipherSuitesAsString;
    }

    @JvmName(name = "cipherSuites")
    public final List<CipherSuite> cipherSuites() {
        String[] strArr = this.cipherSuitesAsString;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(CipherSuite.INSTANCE.forJavaName(str));
        }
        return arrayList;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "cipherSuites", imports = {}))
    @JvmName(name = "-deprecated_cipherSuites")
    /* JADX INFO: renamed from: -deprecated_cipherSuites, reason: not valid java name */
    public final List<CipherSuite> m4698deprecated_cipherSuites() {
        return cipherSuites();
    }

    @JvmName(name = "tlsVersions")
    public final List<TlsVersion> tlsVersions() {
        String[] strArr = this.tlsVersionsAsString;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(TlsVersion.INSTANCE.forJavaName(str));
        }
        return arrayList;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "tlsVersions", imports = {}))
    @JvmName(name = "-deprecated_tlsVersions")
    /* JADX INFO: renamed from: -deprecated_tlsVersions, reason: not valid java name */
    public final List<TlsVersion> m4700deprecated_tlsVersions() {
        return tlsVersions();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "supportsTlsExtensions", imports = {}))
    @JvmName(name = "-deprecated_supportsTlsExtensions")
    /* JADX INFO: renamed from: -deprecated_supportsTlsExtensions, reason: not valid java name and from getter */
    public final boolean getSupportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    public final void apply$okhttp(SSLSocket sslSocket, boolean isFallback) {
        ConnectionSpec connectionSpecSupportedSpec = supportedSpec(sslSocket, isFallback);
        if (connectionSpecSupportedSpec.tlsVersions() != null) {
            sslSocket.setEnabledProtocols(connectionSpecSupportedSpec.tlsVersionsAsString);
        }
        if (connectionSpecSupportedSpec.cipherSuites() != null) {
            sslSocket.setEnabledCipherSuites(connectionSpecSupportedSpec.cipherSuitesAsString);
        }
    }

    private final ConnectionSpec supportedSpec(SSLSocket sslSocket, boolean isFallback) {
        String[] enabledProtocols;
        String[] strArrEffectiveCipherSuites = Internal.effectiveCipherSuites(this, sslSocket.getEnabledCipherSuites());
        if (this.tlsVersionsAsString != null) {
            enabledProtocols = _UtilCommonKt.intersect(sslSocket.getEnabledProtocols(), this.tlsVersionsAsString, ComparisonsKt.naturalOrder());
        } else {
            enabledProtocols = sslSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sslSocket.getSupportedCipherSuites();
        int iIndexOf = _UtilCommonKt.indexOf(supportedCipherSuites, "TLS_FALLBACK_SCSV", CipherSuite.INSTANCE.getORDER_BY_NAME$okhttp());
        if (isFallback && iIndexOf != -1) {
            strArrEffectiveCipherSuites = _UtilCommonKt.concat(strArrEffectiveCipherSuites, supportedCipherSuites[iIndexOf]);
        }
        return new Builder(this).cipherSuites((String[]) Arrays.copyOf(strArrEffectiveCipherSuites, strArrEffectiveCipherSuites.length)).tlsVersions((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length)).build();
    }

    public final boolean isCompatible(SSLSocket socket) {
        if (!this.isTls) {
            return false;
        }
        String[] strArr = this.tlsVersionsAsString;
        if (strArr != null && !_UtilCommonKt.hasIntersection(strArr, socket.getEnabledProtocols(), ComparisonsKt.naturalOrder())) {
            return false;
        }
        String[] strArr2 = this.cipherSuitesAsString;
        return strArr2 == null || _UtilCommonKt.hasIntersection(strArr2, socket.getEnabledCipherSuites(), CipherSuite.INSTANCE.getORDER_BY_NAME$okhttp());
    }

    public boolean equals(Object other) {
        if (!(other instanceof ConnectionSpec)) {
            return false;
        }
        if (other == this) {
            return true;
        }
        boolean z = this.isTls;
        ConnectionSpec connectionSpec = (ConnectionSpec) other;
        if (z != connectionSpec.isTls) {
            return false;
        }
        return !z || (Arrays.equals(this.cipherSuitesAsString, connectionSpec.cipherSuitesAsString) && Arrays.equals(this.tlsVersionsAsString, connectionSpec.tlsVersionsAsString) && this.supportsTlsExtensions == connectionSpec.supportsTlsExtensions);
    }

    public int hashCode() {
        if (!this.isTls) {
            return 17;
        }
        String[] strArr = this.cipherSuitesAsString;
        int iHashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.tlsVersionsAsString;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.supportsTlsExtensions ? 1 : 0);
    }

    public String toString() {
        if (!this.isTls) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(cipherSuites(), "[all enabled]") + ", tlsVersions=" + Objects.toString(tlsVersions(), "[all enabled]") + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ')';
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0006\u0010\u001a\u001a\u00020\u0000J\u001f\u0010\f\u001a\u00020\u00002\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001b0\r\"\u00020\u001b¢\u0006\u0002\u0010\u001cJ\u001f\u0010\f\u001a\u00020\u00002\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r\"\u00020\u000e¢\u0006\u0002\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\u0000J\u001f\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001f0\r\"\u00020\u001f¢\u0006\u0002\u0010 J\u001f\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r\"\u00020\u000e¢\u0006\u0002\u0010\u001dJ\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0003H\u0007J\u0006\u0010!\u001a\u00020\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\u0005R$\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0080\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\u001a\u0010\u0017\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\n\"\u0004\b\u0019\u0010\u0005¨\u0006\""}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "tls", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Z)V", "connectionSpec", "Lokhttp3/ConnectionSpec;", "(Lokhttp3/ConnectionSpec;)V", "getTls$okhttp", "()Z", "setTls$okhttp", "cipherSuites", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getCipherSuites$okhttp", "()[Ljava/lang/String;", "setCipherSuites$okhttp", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "tlsVersions", "getTlsVersions$okhttp", "setTlsVersions$okhttp", "supportsTlsExtensions", "getSupportsTlsExtensions$okhttp", "setSupportsTlsExtensions$okhttp", "allEnabledCipherSuites", "Lokhttp3/CipherSuite;", "([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;", "([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;", "allEnabledTlsVersions", "Lokhttp3/TlsVersion;", "([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;", "build", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,384:1\n1#2:385\n11561#3:386\n11896#3,3:387\n11561#3:392\n11896#3,3:393\n37#4,2:390\n37#4,2:396\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n*L\n247#1:386\n247#1:387,3\n269#1:392\n269#1:393,3\n247#1:390,2\n269#1:396,2\n*E\n"})
    public static final class Builder {
        private String[] cipherSuites;
        private boolean supportsTlsExtensions;
        private boolean tls;
        private String[] tlsVersions;

        /* JADX INFO: renamed from: getTls$okhttp, reason: from getter */
        public final boolean getTls() {
            return this.tls;
        }

        public final void setTls$okhttp(boolean z) {
            this.tls = z;
        }

        /* JADX INFO: renamed from: getCipherSuites$okhttp, reason: from getter */
        public final String[] getCipherSuites() {
            return this.cipherSuites;
        }

        public final void setCipherSuites$okhttp(String[] strArr) {
            this.cipherSuites = strArr;
        }

        /* JADX INFO: renamed from: getTlsVersions$okhttp, reason: from getter */
        public final String[] getTlsVersions() {
            return this.tlsVersions;
        }

        public final void setTlsVersions$okhttp(String[] strArr) {
            this.tlsVersions = strArr;
        }

        /* JADX INFO: renamed from: getSupportsTlsExtensions$okhttp, reason: from getter */
        public final boolean getSupportsTlsExtensions() {
            return this.supportsTlsExtensions;
        }

        public final void setSupportsTlsExtensions$okhttp(boolean z) {
            this.supportsTlsExtensions = z;
        }

        public Builder(boolean z) {
            this.tls = z;
        }

        public Builder(ConnectionSpec connectionSpec) {
            this.tls = connectionSpec.getIsTls();
            this.cipherSuites = connectionSpec.getCipherSuitesAsString();
            this.tlsVersions = connectionSpec.tlsVersionsAsString;
            this.supportsTlsExtensions = connectionSpec.supportsTlsExtensions();
        }

        public final Builder allEnabledCipherSuites() {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no cipher suites for cleartext connections");
                return null;
            }
            this.cipherSuites = null;
            return this;
        }

        public final Builder cipherSuites(CipherSuite... cipherSuites) {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no cipher suites for cleartext connections");
                return null;
            }
            ArrayList arrayList = new ArrayList(cipherSuites.length);
            for (CipherSuite cipherSuite : cipherSuites) {
                arrayList.add(cipherSuite.javaName());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            return cipherSuites((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final Builder cipherSuites(String... cipherSuites) {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no cipher suites for cleartext connections");
                return null;
            }
            if (cipherSuites.length == 0) {
                f$$ExternalSyntheticBUOutline1.m212m("At least one cipher suite is required");
                return null;
            }
            this.cipherSuites = (String[]) Arrays.copyOf(cipherSuites, cipherSuites.length);
            return this;
        }

        public final Builder allEnabledTlsVersions() {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no TLS versions for cleartext connections");
                return null;
            }
            this.tlsVersions = null;
            return this;
        }

        public final Builder tlsVersions(TlsVersion... tlsVersions) {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no TLS versions for cleartext connections");
                return null;
            }
            ArrayList arrayList = new ArrayList(tlsVersions.length);
            for (TlsVersion tlsVersion : tlsVersions) {
                arrayList.add(tlsVersion.javaName());
            }
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            return tlsVersions((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final Builder tlsVersions(String... tlsVersions) {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no TLS versions for cleartext connections");
                return null;
            }
            if (tlsVersions.length == 0) {
                f$$ExternalSyntheticBUOutline1.m212m("At least one TLS version is required");
                return null;
            }
            this.tlsVersions = (String[]) Arrays.copyOf(tlsVersions, tlsVersions.length);
            return this;
        }

        @Deprecated(message = "since OkHttp 3.13 all TLS-connections are expected to support TLS extensions.\nIn a future release setting this to true will be unnecessary and setting it to false\nwill have no effect.")
        public final Builder supportsTlsExtensions(boolean supportsTlsExtensions) {
            if (!this.tls) {
                f$$ExternalSyntheticBUOutline1.m212m("no TLS extensions for cleartext connections");
                return null;
            }
            this.supportsTlsExtensions = supportsTlsExtensions;
            return this;
        }

        public final ConnectionSpec build() {
            return new ConnectionSpec(this.tls, this.supportsTlsExtensions, this.cipherSuites, this.tlsVersions);
        }
    }

    static {
        CipherSuite cipherSuite = CipherSuite.TLS_AES_128_GCM_SHA256;
        CipherSuite cipherSuite2 = CipherSuite.TLS_AES_256_GCM_SHA384;
        CipherSuite cipherSuite3 = CipherSuite.TLS_CHACHA20_POLY1305_SHA256;
        CipherSuite cipherSuite4 = CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
        CipherSuite cipherSuite5 = CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
        CipherSuite cipherSuite6 = CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384;
        CipherSuite cipherSuite7 = CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384;
        CipherSuite cipherSuite8 = CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256;
        CipherSuite cipherSuite9 = CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256;
        List<CipherSuite> listListOf = CollectionsKt.listOf((Object[]) new CipherSuite[]{cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9});
        RESTRICTED_CIPHER_SUITES = listListOf;
        List<CipherSuite> listListOf2 = CollectionsKt.listOf((Object[]) new CipherSuite[]{cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA});
        APPROVED_CIPHER_SUITES = listListOf2;
        Builder builder = new Builder(true);
        CipherSuite[] cipherSuiteArr = (CipherSuite[]) listListOf.toArray(new CipherSuite[0]);
        Builder builderCipherSuites = builder.cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length));
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        RESTRICTED_TLS = builderCipherSuites.tlsVersions(tlsVersion, tlsVersion2).supportsTlsExtensions(true).build();
        Builder builder2 = new Builder(true);
        CipherSuite[] cipherSuiteArr2 = (CipherSuite[]) listListOf2.toArray(new CipherSuite[0]);
        MODERN_TLS = builder2.cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).tlsVersions(tlsVersion, tlsVersion2).supportsTlsExtensions(true).build();
        Builder builder3 = new Builder(true);
        CipherSuite[] cipherSuiteArr3 = (CipherSuite[]) listListOf2.toArray(new CipherSuite[0]);
        COMPATIBLE_TLS = builder3.cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr3, cipherSuiteArr3.length)).tlsVersions(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).supportsTlsExtensions(true).build();
        CLEARTEXT = new Builder(false).build();
    }
}
