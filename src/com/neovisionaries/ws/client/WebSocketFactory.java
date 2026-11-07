package com.neovisionaries.ws.client;

import java.net.URI;
import javax.net.ssl.SSLSocketFactory;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketFactory {
    private int mConnectionTimeout;
    private String[] mServerNames;
    private int mSocketTimeout;
    private DualStackMode mDualStackMode = DualStackMode.BOTH;
    private int mDualStackFallbackDelay = 250;
    private boolean mVerifyHostname = true;
    private final SocketFactorySettings mSocketFactorySettings = new SocketFactorySettings();
    private final ProxySettings mProxySettings = new ProxySettings(this);

    private static int determinePort(int i, boolean z) {
        return i >= 0 ? i : z ? 443 : 80;
    }

    public int getConnectionTimeout() {
        return this.mConnectionTimeout;
    }

    public WebSocketFactory setConnectionTimeout(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("timeout value cannot be negative.");
            return null;
        }
        this.mConnectionTimeout = i;
        return this;
    }

    public WebSocket createSocket(String str) {
        return createSocket(str, getConnectionTimeout());
    }

    public WebSocket createSocket(String str, int i) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m215m("The given URI is null.");
            return null;
        }
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("The given timeout value is negative.");
            return null;
        }
        return createSocket(URI.create(str), i);
    }

    public WebSocket createSocket(URI uri, int i) {
        if (uri == null) {
            f$$ExternalSyntheticBUOutline1.m215m("The given URI is null.");
            return null;
        }
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("The given timeout value is negative.");
            return null;
        }
        return createSocket(uri.getScheme(), uri.getUserInfo(), Misc.extractHost(uri), uri.getPort(), uri.getRawPath(), uri.getRawQuery(), i);
    }

    private WebSocket createSocket(String str, String str2, String str3, int i, String str4, String str5, int i2) {
        boolean zIsSecureConnectionRequired = isSecureConnectionRequired(str);
        if (str3 == null || str3.length() == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("The host part is empty.");
            return null;
        }
        return createWebSocket(zIsSecureConnectionRequired, str2, str3, i, determinePath(str4), str5, createRawSocket(str3, i, zIsSecureConnectionRequired, i2));
    }

    private static boolean isSecureConnectionRequired(String str) {
        if (str == null || str.length() == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("The scheme part is empty.");
            return false;
        }
        if ("wss".equalsIgnoreCase(str) || "https".equalsIgnoreCase(str)) {
            return true;
        }
        if (!"ws".equalsIgnoreCase(str) && !"http".equalsIgnoreCase(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("Bad scheme: ".concat(str));
        }
        return false;
    }

    private static String determinePath(String str) {
        if (str == null || str.length() == 0) {
            return "/";
        }
        return str.startsWith("/") ? str : "/".concat(str);
    }

    private SocketConnector createRawSocket(String str, int i, boolean z, int i2) {
        int iDeterminePort = determinePort(i, z);
        if (this.mProxySettings.getHost() != null) {
            return createProxiedRawSocket(str, iDeterminePort, z, i2);
        }
        return createDirectRawSocket(str, iDeterminePort, z, i2);
    }

    private SocketConnector createProxiedRawSocket(String str, int i, boolean z, int i2) {
        return new SocketConnector(this.mProxySettings.selectSocketFactory(), new Address(this.mProxySettings.getHost(), determinePort(this.mProxySettings.getPort(), this.mProxySettings.isSecure())), i2, this.mSocketTimeout, this.mProxySettings.getServerNames(), new ProxyHandshaker(str, i, this.mProxySettings), z ? (SSLSocketFactory) this.mSocketFactorySettings.selectSocketFactory(z) : null, str, i).setDualStackSettings(this.mDualStackMode, this.mDualStackFallbackDelay).setVerifyHostname(this.mVerifyHostname);
    }

    private SocketConnector createDirectRawSocket(String str, int i, boolean z, int i2) {
        return new SocketConnector(this.mSocketFactorySettings.selectSocketFactory(z), new Address(str, i), i2, this.mServerNames, this.mSocketTimeout).setDualStackSettings(this.mDualStackMode, this.mDualStackFallbackDelay).setVerifyHostname(this.mVerifyHostname);
    }

    private WebSocket createWebSocket(boolean z, String str, String str2, int i, String str3, String str4, SocketConnector socketConnector) {
        if (i >= 0) {
            str2 = str2 + ":" + i;
        }
        String str5 = str2;
        if (str4 != null) {
            str3 = str3 + "?" + str4;
        }
        return new WebSocket(this, z, str, str5, str3, socketConnector);
    }
}
