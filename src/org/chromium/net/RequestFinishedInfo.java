package org.chromium.net;

import java.util.concurrent.Executor;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class RequestFinishedInfo {

    public static abstract class Metrics {
    }

    public static abstract class Listener {
        private final Executor mExecutor;

        public abstract Executor getExecutor();

        public abstract void onRequestFinished(RequestFinishedInfo requestFinishedInfo);

        public Listener(Executor executor) {
            if (executor == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Executor must not be null");
                throw null;
            }
            this.mExecutor = executor;
        }
    }
}
