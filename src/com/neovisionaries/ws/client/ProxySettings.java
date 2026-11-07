package com.neovisionaries.ws.client;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public class ProxySettings {
    private String mHost;
    private String mId;
    private String mPassword;
    private int mPort;
    private boolean mSecure;
    private String[] mServerNames;
    private final WebSocketFactory mWebSocketFactory;
    private final Map<String, List<String>> mHeaders = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    private final SocketFactorySettings mSocketFactorySettings = new SocketFactorySettings();

    public ProxySettings(WebSocketFactory webSocketFactory) {
        this.mWebSocketFactory = webSocketFactory;
        reset();
    }

    public ProxySettings reset() {
        this.mSecure = false;
        this.mHost = null;
        this.mPort = -1;
        this.mId = null;
        this.mPassword = null;
        this.mHeaders.clear();
        this.mServerNames = null;
        return this;
    }

    public boolean isSecure() {
        return this.mSecure;
    }

    public String getHost() {
        return this.mHost;
    }

    public int getPort() {
        return this.mPort;
    }

    public String getId() {
        return this.mId;
    }

    public String getPassword() {
        return this.mPassword;
    }

    public Map<String, List<String>> getHeaders() {
        return this.mHeaders;
    }

    public SocketFactory selectSocketFactory() {
        return this.mSocketFactorySettings.selectSocketFactory(this.mSecure);
    }

    public String[] getServerNames() {
        return this.mServerNames;
    }
}
