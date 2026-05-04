package okhttp3;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._HostnamesCommonKt;

/* JADX INFO: loaded from: classes.dex */
public final class Route {
    private final Address address;
    private final Proxy proxy;
    private final InetSocketAddress socketAddress;

    public Route(Address address, Proxy proxy, InetSocketAddress socketAddress) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(socketAddress, "socketAddress");
        this.address = address;
        this.proxy = proxy;
        this.socketAddress = socketAddress;
    }

    public final Address address() {
        return this.address;
    }

    public final Proxy proxy() {
        return this.proxy;
    }

    public final InetSocketAddress socketAddress() {
        return this.socketAddress;
    }

    /* JADX INFO: renamed from: -deprecated_address, reason: not valid java name */
    public final Address m3875deprecated_address() {
        return this.address;
    }

    /* JADX INFO: renamed from: -deprecated_proxy, reason: not valid java name */
    public final Proxy m3876deprecated_proxy() {
        return this.proxy;
    }

    /* JADX INFO: renamed from: -deprecated_socketAddress, reason: not valid java name */
    public final InetSocketAddress m3877deprecated_socketAddress() {
        return this.socketAddress;
    }

    public final boolean requiresTunnel() {
        if (this.proxy.type() != Proxy.Type.HTTP) {
            return false;
        }
        return this.address.sslSocketFactory() != null || this.address.protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Route)) {
            return false;
        }
        Route route = (Route) obj;
        return Intrinsics.areEqual(route.address, this.address) && Intrinsics.areEqual(route.proxy, this.proxy) && Intrinsics.areEqual(route.socketAddress, this.socketAddress);
    }

    public int hashCode() {
        return ((((527 + this.address.hashCode()) * 31) + this.proxy.hashCode()) * 31) + this.socketAddress.hashCode();
    }

    public String toString() {
        String hostAddress;
        StringBuilder sb = new StringBuilder();
        String strHost = this.address.url().host();
        InetAddress address = this.socketAddress.getAddress();
        String canonicalHost = (address == null || (hostAddress = address.getHostAddress()) == null) ? null : _HostnamesCommonKt.toCanonicalHost(hostAddress);
        if (StringsKt.contains$default((CharSequence) strHost, ':', false, 2, (Object) null)) {
            sb.append("[");
            sb.append(strHost);
            sb.append("]");
        } else {
            sb.append(strHost);
        }
        if (this.address.url().port() != this.socketAddress.getPort() || Intrinsics.areEqual(strHost, canonicalHost)) {
            sb.append(":");
            sb.append(this.address.url().port());
        }
        if (!Intrinsics.areEqual(strHost, canonicalHost)) {
            if (Intrinsics.areEqual(this.proxy, Proxy.NO_PROXY)) {
                sb.append(" at ");
            } else {
                sb.append(" via proxy ");
            }
            if (canonicalHost == null) {
                sb.append("<unresolved>");
            } else if (StringsKt.contains$default((CharSequence) canonicalHost, ':', false, 2, (Object) null)) {
                sb.append("[");
                sb.append(canonicalHost);
                sb.append("]");
            } else {
                sb.append(canonicalHost);
            }
            sb.append(":");
            sb.append(this.socketAddress.getPort());
        }
        return sb.toString();
    }
}
