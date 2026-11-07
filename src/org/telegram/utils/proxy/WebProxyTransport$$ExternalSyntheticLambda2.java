package org.telegram.utils.proxy;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class WebProxyTransport$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ WebProxyTransport f$0;

    public /* synthetic */ WebProxyTransport$$ExternalSyntheticLambda2(WebProxyTransport webProxyTransport) {
        this.f$0 = webProxyTransport;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.createWebView();
    }
}
