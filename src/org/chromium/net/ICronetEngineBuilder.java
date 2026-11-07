package org.chromium.net;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ICronetEngineBuilder {
    public abstract ExperimentalCronetEngine build();

    public long getLogCronetInitializationRef() {
        return 0L;
    }

    public abstract ICronetEngineBuilder setExperimentalOptions(String str);
}
