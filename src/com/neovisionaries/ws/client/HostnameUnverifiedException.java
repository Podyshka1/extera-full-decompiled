package com.neovisionaries.ws.client;

import javax.net.ssl.SSLSocket;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class HostnameUnverifiedException extends WebSocketException {
    private final String mHostname;
    private final SSLSocket mSSLSocket;

    public HostnameUnverifiedException(SSLSocket sSLSocket, String str) {
        super(WebSocketError.HOSTNAME_UNVERIFIED, String.format("The certificate of the peer%s does not match the expected hostname (%s)", stringifyPrincipal(sSLSocket), str));
        this.mSSLSocket = sSLSocket;
        this.mHostname = str;
    }

    private static String stringifyPrincipal(SSLSocket sSLSocket) {
        try {
            return String.format(" (%s)", sSLSocket.getSession().getPeerPrincipal().toString());
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
