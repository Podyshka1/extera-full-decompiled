package com.neovisionaries.ws.client;

import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
class SocketFactorySettings {
    private SSLContext mSSLContext;
    private SSLSocketFactory mSSLSocketFactory;
    private SocketFactory mSocketFactory;

    public SocketFactory selectSocketFactory(boolean z) {
        if (z) {
            SSLContext sSLContext = this.mSSLContext;
            if (sSLContext != null) {
                return sSLContext.getSocketFactory();
            }
            SSLSocketFactory sSLSocketFactory = this.mSSLSocketFactory;
            return sSLSocketFactory != null ? sSLSocketFactory : SSLSocketFactory.getDefault();
        }
        SocketFactory socketFactory = this.mSocketFactory;
        return socketFactory != null ? socketFactory : SocketFactory.getDefault();
    }
}
