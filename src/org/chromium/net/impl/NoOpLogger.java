package org.chromium.net.impl;

import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class NoOpLogger extends CronetLogger {
    @Override // org.chromium.net.impl.CronetLogger
    public long generateId() {
        return 0L;
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineBuilderInitializedInfo(CronetLogger.CronetEngineBuilderInitializedInfo cronetEngineBuilderInitializedInfo) {
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineCreation(long j, CronetLogger.CronetEngineBuilderInfo cronetEngineBuilderInfo, CronetLogger.CronetVersion cronetVersion, CronetLogger.CronetSource cronetSource) {
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetTrafficInfo(long j, CronetLogger.CronetTrafficInfo cronetTrafficInfo) {
    }
}
