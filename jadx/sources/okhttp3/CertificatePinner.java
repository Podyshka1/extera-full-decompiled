package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;

/* JADX INFO: loaded from: classes.dex */
public final class CertificatePinner {
    public static final Companion Companion = new Companion(null);
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final String pin(Certificate certificate) {
        return Companion.pin(certificate);
    }

    public static final ByteString sha1Hash(X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    public static final ByteString sha256Hash(X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public CertificatePinner(Set<Pin> pins, CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(pins, "pins");
        this.pins = pins;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i & 2) != 0 ? null : certificateChainCleaner);
    }

    public final Set<Pin> getPins() {
        return this.pins;
    }

    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    public final void check(final String hostname, final List<? extends Certificate> peerCertificates) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
        check$okhttp(hostname, new Function0() { // from class: okhttp3.CertificatePinner$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CertificatePinner.check$lambda$0(this.f$0, peerCertificates, hostname);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List check$lambda$0(CertificatePinner certificatePinner, List list, String str) {
        List<Certificate> listClean;
        CertificateChainCleaner certificateChainCleaner = certificatePinner.certificateChainCleaner;
        if (certificateChainCleaner != null && (listClean = certificateChainCleaner.clean(list, str)) != null) {
            list = listClean;
        }
        List<Certificate> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (Certificate certificate : list2) {
            Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }

    public final void check$okhttp(String hostname, Function0<? extends List<? extends X509Certificate>> cleanedPeerCertificatesFn) throws SSLPeerUnverifiedException {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Pin> listFindMatchingPins = findMatchingPins(hostname);
        if (listFindMatchingPins.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> listInvoke = cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : listInvoke) {
            ByteString byteStringSha256Hash = null;
            ByteString byteStringSha1Hash = null;
            for (Pin pin : listFindMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                if (Intrinsics.areEqual(hashAlgorithm, "sha256")) {
                    if (byteStringSha256Hash == null) {
                        byteStringSha256Hash = Companion.sha256Hash(x509Certificate);
                    }
                    if (Intrinsics.areEqual(pin.getHash(), byteStringSha256Hash)) {
                        return;
                    }
                } else if (Intrinsics.areEqual(hashAlgorithm, "sha1")) {
                    if (byteStringSha1Hash == null) {
                        byteStringSha1Hash = Companion.sha1Hash(x509Certificate);
                    }
                    if (Intrinsics.areEqual(pin.getHash(), byteStringSha1Hash)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + pin.getHashAlgorithm());
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : listInvoke) {
            sb.append("\n    ");
            sb.append(Companion.pin(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(hostname);
        sb.append(":");
        for (Pin pin2 : listFindMatchingPins) {
            sb.append("\n    ");
            sb.append(pin2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public final void check(String hostname, Certificate... peerCertificates) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
        check(hostname, ArraysKt.toList(peerCertificates));
    }

    public final List<Pin> findMatchingPins(String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Set<Pin> set = this.pins;
        List<Pin> listEmptyList = CollectionsKt.emptyList();
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(hostname)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                Intrinsics.checkNotNull(listEmptyList, "null cannot be cast to non-null type kotlin.collections.MutableList<T of okhttp3.internal._UtilCommonKt.filterList>");
                TypeIntrinsics.asMutableList(listEmptyList).add(obj);
            }
        }
        return listEmptyList;
    }

    public final CertificatePinner withCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(certificateChainCleaner, "certificateChainCleaner");
        return Intrinsics.areEqual(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CertificatePinner)) {
            return false;
        }
        CertificatePinner certificatePinner = (CertificatePinner) obj;
        return Intrinsics.areEqual(certificatePinner.pins, this.pins) && Intrinsics.areEqual(certificatePinner.certificateChainCleaner, this.certificateChainCleaner);
    }

    public int hashCode() {
        int iHashCode = (1517 + this.pins.hashCode()) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Pin {
        private final ByteString hash;
        private final String hashAlgorithm;
        private final String pattern;

        /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Pin(String pattern, String pin) {
            String str;
            String canonicalHost;
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            Intrinsics.checkNotNullParameter(pin, "pin");
            if (StringsKt.startsWith$default(pattern, "*.", false, 2, (Object) null)) {
                str = pattern;
                if (StringsKt.indexOf$default((CharSequence) str, "*", 1, false, 4, (Object) null) != -1) {
                }
                canonicalHost = _HostnamesCommonKt.toCanonicalHost(str);
                if (canonicalHost == null) {
                    this.pattern = canonicalHost;
                    if (StringsKt.startsWith$default(pin, "sha1/", false, 2, (Object) null)) {
                        this.hashAlgorithm = "sha1";
                        ByteString.Companion companion = ByteString.Companion;
                        String strSubstring = pin.substring(5);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        ByteString byteStringDecodeBase64 = companion.decodeBase64(strSubstring);
                        if (byteStringDecodeBase64 != null) {
                            this.hash = byteStringDecodeBase64;
                            return;
                        }
                        throw new IllegalArgumentException("Invalid pin hash: " + pin);
                    }
                    if (StringsKt.startsWith$default(pin, "sha256/", false, 2, (Object) null)) {
                        this.hashAlgorithm = "sha256";
                        ByteString.Companion companion2 = ByteString.Companion;
                        String strSubstring2 = pin.substring(7);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        ByteString byteStringDecodeBase642 = companion2.decodeBase64(strSubstring2);
                        if (byteStringDecodeBase642 != null) {
                            this.hash = byteStringDecodeBase642;
                            return;
                        }
                        throw new IllegalArgumentException("Invalid pin hash: " + pin);
                    }
                    throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + pin);
                }
                throw new IllegalArgumentException("Invalid pattern: " + str);
            }
            str = pattern;
            if ((!StringsKt.startsWith$default(str, "**.", false, 2, (Object) null) || StringsKt.indexOf$default((CharSequence) str, "*", 2, false, 4, (Object) null) != -1) && StringsKt.indexOf$default((CharSequence) str, "*", 0, false, 6, (Object) null) != -1) {
                throw new IllegalArgumentException(("Unexpected pattern: " + str).toString());
            }
            canonicalHost = _HostnamesCommonKt.toCanonicalHost(str);
            if (canonicalHost == null) {
            }
        }

        public final String getPattern() {
            return this.pattern;
        }

        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        public final ByteString getHash() {
            return this.hash;
        }

        public final boolean matchesHostname(String hostname) {
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            if (StringsKt.startsWith$default(this.pattern, "**.", false, 2, (Object) null)) {
                int length = this.pattern.length() - 3;
                int length2 = hostname.length() - length;
                return StringsKt.regionMatches$default(hostname, hostname.length() - length, this.pattern, 3, length, false, 16, null) && (length2 == 0 || hostname.charAt(length2 - 1) == '.');
            }
            if (StringsKt.startsWith$default(this.pattern, "*.", false, 2, (Object) null)) {
                int length3 = this.pattern.length() - 1;
                return StringsKt.regionMatches$default(hostname, hostname.length() - length3, this.pattern, 1, length3, false, 16, null) && StringsKt.lastIndexOf$default((CharSequence) hostname, '.', (hostname.length() - length3) + (-1), false, 4, (Object) null) == -1;
            }
            return Intrinsics.areEqual(hostname, this.pattern);
        }

        public final boolean matchesCertificate(X509Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            String str = this.hashAlgorithm;
            if (Intrinsics.areEqual(str, "sha256")) {
                return Intrinsics.areEqual(this.hash, CertificatePinner.Companion.sha256Hash(certificate));
            }
            if (Intrinsics.areEqual(str, "sha1")) {
                return Intrinsics.areEqual(this.hash, CertificatePinner.Companion.sha1Hash(certificate));
            }
            return false;
        }

        public String toString() {
            return this.hashAlgorithm + '/' + this.hash.base64();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return Intrinsics.areEqual(this.pattern, pin.pattern) && Intrinsics.areEqual(this.hashAlgorithm, pin.hashAlgorithm) && Intrinsics.areEqual(this.hash, pin.hash);
        }

        public int hashCode() {
            return (((this.pattern.hashCode() * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }
    }

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final List<Pin> getPins() {
            return this.pins;
        }

        public final Builder add(String pattern, String... pins) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            Intrinsics.checkNotNullParameter(pins, "pins");
            for (String str : pins) {
                this.pins.add(new Pin(pattern, str));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final CertificatePinner build() {
            return new CertificatePinner(CollectionsKt.toSet(this.pins), null, 2, 0 == true ? 1 : 0);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ByteString sha1Hash(X509Certificate x509Certificate) {
            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "getEncoded(...)");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha1();
        }

        public final ByteString sha256Hash(X509Certificate x509Certificate) {
            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.Companion;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "getEncoded(...)");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha256();
        }

        public final String pin(Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            if (!(certificate instanceof X509Certificate)) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
            }
            return "sha256/" + sha256Hash((X509Certificate) certificate).base64();
        }
    }
}
