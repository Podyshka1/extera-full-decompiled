package okhttp3;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response cachedResponse) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
    }

    public void cacheHit(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void cacheMiss(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void callEnd(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void callFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void callStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void canceled(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
    }

    public void connectionAcquired(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void connectionReleased(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void dispatcherQueueEnd(Call call, Dispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
    }

    public void dispatcherQueueStart(Call call, Dispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
    }

    public void dnsEnd(Call call, String domainName, List<InetAddress> inetAddressList) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
    }

    public void dnsStart(Call call, String domainName) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
    }

    public void followUpDecision(Call call, Response networkResponse, Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(networkResponse, "networkResponse");
    }

    public void proxySelectEnd(Call call, HttpUrl url, List<Proxy> proxies) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(proxies, "proxies");
    }

    public void proxySelectStart(Call call, HttpUrl url) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    public void requestBodyEnd(Call call, long j) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void requestBodyStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void requestHeadersEnd(Call call, Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
    }

    public void requestHeadersStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void responseBodyEnd(Call call, long j) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void responseBodyStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void responseHeadersEnd(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void responseHeadersStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void retryDecision(Call call, IOException exception, boolean z) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(exception, "exception");
    }

    public void satisfactionFailure(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void secureConnectStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public final EventListener plus(EventListener other) {
        Intrinsics.checkNotNullParameter(other, "other");
        EventListener eventListener = NONE;
        if (this == eventListener) {
            return other;
        }
        EventListener[] eventListeners = this instanceof AggregateEventListener ? ((AggregateEventListener) this).getEventListeners() : new EventListener[]{this};
        if (other == eventListener) {
            return this;
        }
        return new AggregateEventListener((EventListener[]) ArraysKt.plus(eventListeners, other instanceof AggregateEventListener ? ((AggregateEventListener) other).getEventListeners() : new EventListener[]{other}));
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static final class AggregateEventListener extends EventListener {
        private final EventListener[] eventListeners;

        public AggregateEventListener(EventListener[] eventListeners) {
            Intrinsics.checkNotNullParameter(eventListeners, "eventListeners");
            this.eventListeners = eventListeners;
        }

        public final EventListener[] getEventListeners() {
            return this.eventListeners;
        }

        @Override // okhttp3.EventListener
        public void callStart(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.callStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public void dispatcherQueueStart(Call call, Dispatcher dispatcher) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.dispatcherQueueStart(call, dispatcher);
            }
        }

        @Override // okhttp3.EventListener
        public void dispatcherQueueEnd(Call call, Dispatcher dispatcher) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.dispatcherQueueEnd(call, dispatcher);
            }
        }

        @Override // okhttp3.EventListener
        public void proxySelectStart(Call call, HttpUrl url) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(url, "url");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.proxySelectStart(call, url);
            }
        }

        @Override // okhttp3.EventListener
        public void proxySelectEnd(Call call, HttpUrl url, List<Proxy> proxies) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(proxies, "proxies");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.proxySelectEnd(call, url, proxies);
            }
        }

        @Override // okhttp3.EventListener
        public void dnsStart(Call call, String domainName) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(domainName, "domainName");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.dnsStart(call, domainName);
            }
        }

        @Override // okhttp3.EventListener
        public void dnsEnd(Call call, String domainName, List<InetAddress> inetAddressList) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(domainName, "domainName");
            Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.dnsEnd(call, domainName, inetAddressList);
            }
        }

        @Override // okhttp3.EventListener
        public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.connectStart(call, inetSocketAddress, proxy);
            }
        }

        @Override // okhttp3.EventListener
        public void secureConnectStart(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.secureConnectStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public void secureConnectEnd(Call call, Handshake handshake) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.secureConnectEnd(call, handshake);
            }
        }

        @Override // okhttp3.EventListener
        public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
            }
        }

        @Override // okhttp3.EventListener
        public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
            }
        }

        @Override // okhttp3.EventListener
        public void connectionAcquired(Call call, Connection connection) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(connection, "connection");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.connectionAcquired(call, connection);
            }
        }

        @Override // okhttp3.EventListener
        public void connectionReleased(Call call, Connection connection) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(connection, "connection");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.connectionReleased(call, connection);
            }
        }

        @Override // okhttp3.EventListener
        public void requestHeadersStart(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.requestHeadersStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public void requestHeadersEnd(Call call, Request request) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(request, "request");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.requestHeadersEnd(call, request);
            }
        }

        @Override // okhttp3.EventListener
        public void requestBodyStart(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.requestBodyStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public void requestBodyEnd(Call call, long j) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.requestBodyEnd(call, j);
            }
        }

        @Override // okhttp3.EventListener
        public void requestFailed(Call call, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.requestFailed(call, ioe);
            }
        }

        @Override // okhttp3.EventListener
        public void responseHeadersStart(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.responseHeadersStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public void responseHeadersEnd(Call call, Response response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.responseHeadersEnd(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public void responseBodyStart(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.responseBodyStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public void responseBodyEnd(Call call, long j) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.responseBodyEnd(call, j);
            }
        }

        @Override // okhttp3.EventListener
        public void responseFailed(Call call, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.responseFailed(call, ioe);
            }
        }

        @Override // okhttp3.EventListener
        public void callEnd(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.callEnd(call);
            }
        }

        @Override // okhttp3.EventListener
        public void callFailed(Call call, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.callFailed(call, ioe);
            }
        }

        @Override // okhttp3.EventListener
        public void canceled(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.canceled(call);
            }
        }

        @Override // okhttp3.EventListener
        public void satisfactionFailure(Call call, Response response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.satisfactionFailure(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public void cacheHit(Call call, Response response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.cacheHit(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public void cacheMiss(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.cacheMiss(call);
            }
        }

        @Override // okhttp3.EventListener
        public void cacheConditionalHit(Call call, Response cachedResponse) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.cacheConditionalHit(call, cachedResponse);
            }
        }

        @Override // okhttp3.EventListener
        public void retryDecision(Call call, IOException exception, boolean z) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(exception, "exception");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.retryDecision(call, exception, z);
            }
        }

        @Override // okhttp3.EventListener
        public void followUpDecision(Call call, Response networkResponse, Request request) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(networkResponse, "networkResponse");
            for (EventListener eventListener : this.eventListeners) {
                eventListener.followUpDecision(call, networkResponse, request);
            }
        }
    }
}
