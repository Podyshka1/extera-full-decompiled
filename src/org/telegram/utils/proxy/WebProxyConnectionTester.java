package org.telegram.utils.proxy;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayDeque;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.RequestTimeDelegate;
import org.telegram.utils.proxy.ProxySettings;
import org.telegram.utils.proxy.WebProxyTransport;

/* JADX INFO: loaded from: classes8.dex */
public final class WebProxyConnectionTester {
    private static volatile WebProxyConnectionTester instance;
    private Request currentRequest;
    private Runnable nativeCheckTimeoutRunnable;
    private final ArrayDeque<Request> queue = new ArrayDeque<>();
    private Runnable readyTimeoutRunnable;

    public interface TestImplementation {
        void doCheck(ProxySettings proxySettings, int i, RequestTimeDelegate requestTimeDelegate);
    }

    public static WebProxyConnectionTester getInstance() {
        WebProxyConnectionTester webProxyConnectionTester;
        WebProxyConnectionTester webProxyConnectionTester2 = instance;
        if (webProxyConnectionTester2 != null) {
            return webProxyConnectionTester2;
        }
        synchronized (WebProxyConnectionTester.class) {
            try {
                webProxyConnectionTester = instance;
                if (webProxyConnectionTester == null) {
                    webProxyConnectionTester = new WebProxyConnectionTester();
                    instance = webProxyConnectionTester;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return webProxyConnectionTester;
    }

    public static final class Request {
        final RequestTimeDelegate delegate;
        int port;
        final ProxySettings settings;
        final TestImplementation testImplementation;

        public Request(TestImplementation testImplementation, ProxySettings proxySettings, RequestTimeDelegate requestTimeDelegate) {
            this.testImplementation = testImplementation;
            this.settings = proxySettings;
            this.delegate = requestTimeDelegate;
        }
    }

    private WebProxyConnectionTester() {
    }

    public void checkProxy(final ProxySettings proxySettings, final RequestTimeDelegate requestTimeDelegate, final TestImplementation testImplementation) {
        if (testImplementation != null && proxySettings != null && proxySettings.getType() == ProxySettings.Type.WEB && proxySettings.isValid() && requestTimeDelegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkProxy$0(testImplementation, proxySettings, requestTimeDelegate);
                }
            });
        } else if (requestTimeDelegate != null) {
            requestTimeDelegate.run(-1L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkProxy$0(TestImplementation testImplementation, ProxySettings proxySettings, RequestTimeDelegate requestTimeDelegate) {
        this.queue.addLast(new Request(testImplementation, proxySettings, requestTimeDelegate));
        processNext();
    }

    private void processNext() {
        if (this.currentRequest != null) {
            return;
        }
        final Request requestPollFirst = this.queue.pollFirst();
        this.currentRequest = requestPollFirst;
        if (requestPollFirst == null) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processNext$1(requestPollFirst);
            }
        };
        this.readyTimeoutRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        int iStartConnectionCheck = WebProxyTransport.startConnectionCheck(requestPollFirst.settings.getAddress(), requestPollFirst.settings.getSecret(), new WebProxyTransport.ReadyCallback() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda2
            @Override // org.telegram.utils.proxy.WebProxyTransport.ReadyCallback
            public final void onReady() {
                this.f$0.lambda$processNext$2(requestPollFirst);
            }
        });
        requestPollFirst.port = iStartConnectionCheck;
        if (iStartConnectionCheck == 0) {
            failCurrent(requestPollFirst);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNext$1(Request request) {
        if (this.currentRequest != request) {
            return;
        }
        this.readyTimeoutRunnable = null;
        failCurrent(request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onTransportReady, reason: merged with bridge method [inline-methods] */
    public void lambda$processNext$2(final Request request) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTransportReady$6(request);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTransportReady$6(final Request request) {
        if (this.currentRequest != request) {
            return;
        }
        cancelReadyTimeout();
        int i = request.port;
        if (i == 0) {
            failCurrent(request);
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTransportReady$3(request);
            }
        };
        this.nativeCheckTimeoutRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable, 20000L);
        request.testImplementation.doCheck(request.settings, i, new RequestTimeDelegate() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestTimeDelegate
            public final void run(long j) {
                this.f$0.lambda$onTransportReady$5(request, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTransportReady$3(Request request) {
        if (this.currentRequest != request) {
            return;
        }
        this.nativeCheckTimeoutRunnable = null;
        failCurrent(request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTransportReady$5(final Request request, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyConnectionTester$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTransportReady$4(request, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onNativeCheckFinished, reason: merged with bridge method [inline-methods] */
    public void lambda$onTransportReady$4(Request request, long j) {
        if (this.currentRequest != request) {
            return;
        }
        cancelNativeCheckTimeout();
        WebProxyTransport.stopConnectionCheck();
        this.currentRequest = null;
        request.delegate.run(j);
        processNext();
    }

    private void failCurrent(Request request) {
        if (this.currentRequest != request) {
            return;
        }
        cancelReadyTimeout();
        cancelNativeCheckTimeout();
        WebProxyTransport.stopConnectionCheck();
        this.currentRequest = null;
        request.delegate.run(-1L);
        processNext();
    }

    private void cancelReadyTimeout() {
        Runnable runnable = this.readyTimeoutRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.readyTimeoutRunnable = null;
        }
    }

    private void cancelNativeCheckTimeout() {
        Runnable runnable = this.nativeCheckTimeoutRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.nativeCheckTimeoutRunnable = null;
        }
    }
}
