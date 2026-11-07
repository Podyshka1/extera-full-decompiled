package com.neovisionaries.ws.client;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class OpeningHandshakeException extends WebSocketException {
    private final byte[] mBody;
    private final Map<String, List<String>> mHeaders;
    private final StatusLine mStatusLine;

    public OpeningHandshakeException(WebSocketError webSocketError, String str, StatusLine statusLine, Map<String, List<String>> map) {
        this(webSocketError, str, statusLine, map, null);
    }

    public OpeningHandshakeException(WebSocketError webSocketError, String str, StatusLine statusLine, Map<String, List<String>> map, byte[] bArr) {
        super(webSocketError, str);
        this.mStatusLine = statusLine;
        this.mHeaders = map;
        this.mBody = bArr;
    }

    public StatusLine getStatusLine() {
        return this.mStatusLine;
    }
}
