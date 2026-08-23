package com.google.firebase.crashlytics.internal.concurrency;

import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes5.dex */
/* synthetic */ class CrashlyticsWorkers$Companion$checkBlockingThread$1 extends FunctionReferenceImpl implements Function0 {
    CrashlyticsWorkers$Companion$checkBlockingThread$1(Object obj) {
        super(0, obj, CrashlyticsWorkers.Companion.class, "isBlockingThread", "isBlockingThread()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Boolean invoke() {
        return Boolean.valueOf(((CrashlyticsWorkers.Companion) this.receiver).isBlockingThread());
    }
}
