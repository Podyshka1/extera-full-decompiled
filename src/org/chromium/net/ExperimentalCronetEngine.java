package org.chromium.net;

import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public abstract class ExperimentalCronetEngine extends CronetEngine {

    public static class Builder extends CronetEngine.Builder {
        public Builder(ICronetEngineBuilder iCronetEngineBuilder) {
            super(iCronetEngineBuilder);
        }

        @Override // org.chromium.net.CronetEngine.Builder
        public ExperimentalCronetEngine build() {
            return buildExperimental();
        }
    }
}
