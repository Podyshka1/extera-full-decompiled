package okhttp3;

import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: loaded from: classes.dex */
public final class Handshake {
    public static final Companion Companion = new Companion(null);
    private final CipherSuite cipherSuite;
    private final List<Certificate> localCertificates;
    private final Lazy peerCertificates$delegate;
    private final TlsVersion tlsVersion;

    public static final Handshake get(SSLSession sSLSession) {
        return Companion.get(sSLSession);
    }

    public static final Handshake get(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, List<? extends Certificate> list2) {
        return Companion.get(tlsVersion, cipherSuite, list, list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> localCertificates, final Function0<? extends List<? extends Certificate>> peerCertificatesFn) {
        Intrinsics.checkNotNullParameter(tlsVersion, "tlsVersion");
        Intrinsics.checkNotNullParameter(cipherSuite, "cipherSuite");
        Intrinsics.checkNotNullParameter(localCertificates, "localCertificates");
        Intrinsics.checkNotNullParameter(peerCertificatesFn, "peerCertificatesFn");
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = localCertificates;
        this.peerCertificates$delegate = LazyKt.lazy(new Function0() { // from class: okhttp3.Handshake$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Handshake.peerCertificates_delegate$lambda$0(peerCertificatesFn);
            }
        });
    }

    public final TlsVersion tlsVersion() {
        return this.tlsVersion;
    }

    public final CipherSuite cipherSuite() {
        return this.cipherSuite;
    }

    public final List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    public final List<Certificate> peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List peerCertificates_delegate$lambda$0(Function0 function0) {
        try {
            return (List) function0.invoke();
        } catch (SSLPeerUnverifiedException unused) {
            return CollectionsKt.emptyList();
        }
    }

    /* JADX INFO: renamed from: -deprecated_tlsVersion, reason: not valid java name */
    public final TlsVersion m3784deprecated_tlsVersion() {
        return this.tlsVersion;
    }

    /* JADX INFO: renamed from: -deprecated_cipherSuite, reason: not valid java name */
    public final CipherSuite m3779deprecated_cipherSuite() {
        return this.cipherSuite;
    }

    /* JADX INFO: renamed from: -deprecated_peerCertificates, reason: not valid java name */
    public final List<Certificate> m3782deprecated_peerCertificates() {
        return peerCertificates();
    }

    public final Principal peerPrincipal() {
        Object objFirstOrNull = CollectionsKt.firstOrNull((List) peerCertificates());
        X509Certificate x509Certificate = objFirstOrNull instanceof X509Certificate ? (X509Certificate) objFirstOrNull : null;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    /* JADX INFO: renamed from: -deprecated_peerPrincipal, reason: not valid java name */
    public final Principal m3783deprecated_peerPrincipal() {
        return peerPrincipal();
    }

    /* JADX INFO: renamed from: -deprecated_localCertificates, reason: not valid java name */
    public final List<Certificate> m3780deprecated_localCertificates() {
        return this.localCertificates;
    }

    public final Principal localPrincipal() {
        Object objFirstOrNull = CollectionsKt.firstOrNull((List) this.localCertificates);
        X509Certificate x509Certificate = objFirstOrNull instanceof X509Certificate ? (X509Certificate) objFirstOrNull : null;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    /* JADX INFO: renamed from: -deprecated_localPrincipal, reason: not valid java name */
    public final Principal m3781deprecated_localPrincipal() {
        return localPrincipal();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake handshake = (Handshake) obj;
        return handshake.tlsVersion == this.tlsVersion && Intrinsics.areEqual(handshake.cipherSuite, this.cipherSuite) && Intrinsics.areEqual(handshake.peerCertificates(), peerCertificates()) && Intrinsics.areEqual(handshake.localCertificates, this.localCertificates);
    }

    public int hashCode() {
        return ((((((527 + this.tlsVersion.hashCode()) * 31) + this.cipherSuite.hashCode()) * 31) + peerCertificates().hashCode()) * 31) + this.localCertificates.hashCode();
    }

    public String toString() {
        List<Certificate> listPeerCertificates = peerCertificates();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPeerCertificates, 10));
        Iterator<T> it = listPeerCertificates.iterator();
        while (it.hasNext()) {
            arrayList.add(getName((Certificate) it.next()));
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Handshake{tlsVersion=");
        sb.append(this.tlsVersion);
        sb.append(" cipherSuite=");
        sb.append(this.cipherSuite);
        sb.append(" peerCertificates=");
        sb.append(string);
        sb.append(" localCertificates=");
        List<Certificate> list = this.localCertificates;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(getName((Certificate) it2.next()));
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }

    private final String getName(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
        return type;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List get$lambda$0(List list) {
            return list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List handshake$lambda$2(List list) {
            return list;
        }

        private Companion() {
        }

        public final Handshake get(SSLSession sSLSession) throws IOException {
            final List listEmptyList;
            Intrinsics.checkNotNullParameter(sSLSession, "<this>");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null");
            }
            if (Intrinsics.areEqual(cipherSuite, "TLS_NULL_WITH_NULL_NULL") || Intrinsics.areEqual(cipherSuite, "SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException("cipherSuite == " + cipherSuite);
            }
            CipherSuite cipherSuiteForJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            }
            if (Intrinsics.areEqual("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            TlsVersion tlsVersionForJavaName = TlsVersion.Companion.forJavaName(protocol);
            try {
                listEmptyList = _UtilJvmKt.toImmutableList(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                listEmptyList = CollectionsKt.emptyList();
            }
            return new Handshake(tlsVersionForJavaName, cipherSuiteForJavaName, _UtilJvmKt.toImmutableList(sSLSession.getLocalCertificates()), new Function0() { // from class: okhttp3.Handshake$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Handshake.Companion.handshake$lambda$2(listEmptyList);
                }
            });
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final Handshake m3786deprecated_get(SSLSession sslSession) {
            Intrinsics.checkNotNullParameter(sslSession, "sslSession");
            return get(sslSession);
        }

        public final Handshake get(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> peerCertificates, List<? extends Certificate> localCertificates) {
            Intrinsics.checkNotNullParameter(tlsVersion, "tlsVersion");
            Intrinsics.checkNotNullParameter(cipherSuite, "cipherSuite");
            Intrinsics.checkNotNullParameter(peerCertificates, "peerCertificates");
            Intrinsics.checkNotNullParameter(localCertificates, "localCertificates");
            final List immutableList = _UtilJvmKt.toImmutableList(peerCertificates);
            return new Handshake(tlsVersion, cipherSuite, _UtilJvmKt.toImmutableList(localCertificates), new Function0() { // from class: okhttp3.Handshake$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Handshake.Companion.get$lambda$0(immutableList);
                }
            });
        }
    }
}
