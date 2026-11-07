package org.chromium.net.impl;

import java.util.concurrent.Executor;
import org.chromium.net.RequestFinishedInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeCallbacks$RequestFinishedInfoListener extends RequestFinishedInfo.Listener {
    private final RequestFinishedInfo.Listener mWrappedListener;

    public VersionSafeCallbacks$RequestFinishedInfoListener(RequestFinishedInfo.Listener listener) {
        super(listener.getExecutor());
        this.mWrappedListener = listener;
    }

    @Override // org.chromium.net.RequestFinishedInfo.Listener
    public void onRequestFinished(RequestFinishedInfo requestFinishedInfo) {
        this.mWrappedListener.onRequestFinished(requestFinishedInfo);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Listener
    public Executor getExecutor() {
        return this.mWrappedListener.getExecutor();
    }
}
