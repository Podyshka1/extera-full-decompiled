package okhttp3.internal.connection;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.url._UrlKt;
import okio.Options$Companion$$ExternalSyntheticBUOutline0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \"2\u00020\u0001:\u0002!\"B)\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0016\u001a\u00020\tH\u0086\u0002J\t\u0010\u0017\u001a\u00020\u0018H\u0086\u0002J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u001e\u001a\u00020\tH\u0002J\b\u0010\u001f\u001a\u00020\u000eH\u0002J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lokhttp3/internal/connection/RouteSelector;", _UrlKt.FRAGMENT_ENCODE_SET, "address", "Lokhttp3/Address;", "routeDatabase", "Lokhttp3/internal/connection/RouteDatabase;", "call", "Lokhttp3/internal/connection/RealCall;", "fastFallback", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Z)V", "proxies", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/net/Proxy;", "nextProxyIndex", _UrlKt.FRAGMENT_ENCODE_SET, "inetSocketAddresses", "Ljava/net/InetSocketAddress;", "postponedRoutes", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/Route;", "hasNext", "next", "Lokhttp3/internal/connection/RouteSelector$Selection;", "resetNextProxy", _UrlKt.FRAGMENT_ENCODE_SET, "url", "Lokhttp3/HttpUrl;", "proxy", "hasNextProxy", "nextProxy", "resetNextInetSocketAddress", "Selection", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class RouteSelector {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Address address;
    private final RealCall call;
    private final boolean fastFallback;
    private int nextProxyIndex;
    private final RouteDatabase routeDatabase;
    private List<? extends Proxy> proxies = CollectionsKt.emptyList();
    private List<? extends InetSocketAddress> inetSocketAddresses = CollectionsKt.emptyList();
    private final List<Route> postponedRoutes = new ArrayList();

    public RouteSelector(Address address, RouteDatabase routeDatabase, RealCall realCall, boolean z) {
        this.address = address;
        this.routeDatabase = routeDatabase;
        this.call = realCall;
        this.fastFallback = z;
        resetNextProxy(address.url(), address.proxy());
    }

    public final boolean hasNext() {
        return hasNextProxy() || !this.postponedRoutes.isEmpty();
    }

    public final Selection next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (hasNextProxy()) {
            Proxy proxyNextProxy = nextProxy();
            Iterator<? extends InetSocketAddress> it = this.inetSocketAddresses.iterator();
            while (it.hasNext()) {
                Route route = new Route(this.address, proxyNextProxy, it.next());
                if (this.routeDatabase.shouldPostpone(route)) {
                    this.postponedRoutes.add(route);
                } else {
                    arrayList.add(route);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            CollectionsKt.addAll(arrayList, this.postponedRoutes);
            this.postponedRoutes.clear();
        }
        return new Selection(arrayList);
    }

    private static final List<Proxy> resetNextProxy$selectProxies(Proxy proxy, HttpUrl httpUrl, RouteSelector routeSelector) {
        if (proxy != null) {
            return CollectionsKt.listOf(proxy);
        }
        URI uri = httpUrl.uri();
        if (uri.getHost() == null) {
            return _UtilJvmKt.immutableListOf(Proxy.NO_PROXY);
        }
        List<Proxy> listSelect = routeSelector.address.proxySelector().select(uri);
        List<Proxy> list = listSelect;
        if (list == null || list.isEmpty()) {
            return _UtilJvmKt.immutableListOf(Proxy.NO_PROXY);
        }
        return _UtilJvmKt.toImmutableList(listSelect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void resetNextProxy(HttpUrl url, Proxy proxy) {
        this.call.getEventListener().proxySelectStart(this.call, url);
        this.proxies = resetNextProxy$selectProxies(proxy, url, this);
        this.nextProxyIndex = 0;
        this.call.getEventListener().proxySelectEnd(this.call, url, this.proxies);
    }

    private final boolean hasNextProxy() {
        return this.nextProxyIndex < this.proxies.size();
    }

    private final Proxy nextProxy() throws SocketException, UnknownHostException {
        if (!hasNextProxy()) {
            throw new SocketException("No route to " + this.address.url().host() + "; exhausted proxy configurations: " + this.proxies);
        }
        List<? extends Proxy> list = this.proxies;
        int i = this.nextProxyIndex;
        this.nextProxyIndex = i + 1;
        Proxy proxy = list.get(i);
        resetNextInetSocketAddress(proxy);
        return proxy;
    }

    private final void resetNextInetSocketAddress(Proxy proxy) throws SocketException, UnknownHostException {
        String strHost;
        int iPort;
        List<InetAddress> listLookup;
        ArrayList arrayList = new ArrayList();
        this.inetSocketAddresses = arrayList;
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strHost = this.address.url().host();
            iPort = this.address.url().port();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                Options$Companion$$ExternalSyntheticBUOutline0.m923m("Proxy.address() is not an InetSocketAddress: ", socketAddressAddress.getClass());
                return;
            } else {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                strHost = INSTANCE.getSocketHost(inetSocketAddress);
                iPort = inetSocketAddress.getPort();
            }
        }
        if (1 > iPort || iPort >= 65536) {
            throw new SocketException("No route to " + strHost + ':' + iPort + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            arrayList.add(InetSocketAddress.createUnresolved(strHost, iPort));
            return;
        }
        if (_HostnamesCommonKt.canParseAsIpAddress(strHost)) {
            listLookup = CollectionsKt.listOf(InetAddress.getByName(strHost));
        } else {
            this.call.getEventListener().dnsStart(this.call, strHost);
            listLookup = this.address.dns().lookup(strHost);
            if (listLookup.isEmpty()) {
                throw new UnknownHostException(this.address.dns() + " returned no addresses for " + strHost);
            }
            this.call.getEventListener().dnsEnd(this.call, strHost, listLookup);
        }
        if (this.fastFallback) {
            listLookup = InetAddressOrderKt.reorderForHappyEyeballs(listLookup);
        }
        Iterator<InetAddress> it = listLookup.iterator();
        while (it.hasNext()) {
            arrayList.add(new InetSocketAddress(it.next(), iPort));
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u000b\u001a\u00020\fH\u0086\u0002J\t\u0010\r\u001a\u00020\u0004H\u0086\u0002R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Selection;", _UrlKt.FRAGMENT_ENCODE_SET, "routes", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/Route;", "<init>", "(Ljava/util/List;)V", "getRoutes", "()Ljava/util/List;", "nextRouteIndex", _UrlKt.FRAGMENT_ENCODE_SET, "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Selection {
        private int nextRouteIndex;
        private final List<Route> routes;

        public Selection(List<Route> list) {
            this.routes = list;
        }

        public final List<Route> getRoutes() {
            return this.routes;
        }

        public final boolean hasNext() {
            return this.nextRouteIndex < this.routes.size();
        }

        public final Route next() {
            if (!hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return null;
            }
            List<Route> list = this.routes;
            int i = this.nextRouteIndex;
            this.nextRouteIndex = i + 1;
            return list.get(i);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "socketHost", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/net/InetSocketAddress;", "getSocketHost", "(Ljava/net/InetSocketAddress;)Ljava/lang/String;", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getSocketHost(InetSocketAddress inetSocketAddress) {
            InetAddress address = inetSocketAddress.getAddress();
            return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
        }
    }
}
