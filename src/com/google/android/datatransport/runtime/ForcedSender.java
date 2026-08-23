package com.google.android.datatransport.runtime;

import android.annotation.SuppressLint;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.runtime.logging.Logging;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ForcedSender {
    @SuppressLint({"DiscouragedApi"})
    public static void sendBlocking(Transport<?> transport, Priority priority) {
        if (transport instanceof TransportImpl) {
            TransportRuntime.getInstance().getUploader().logAndUpdateState(((TransportImpl) transport).getTransportContext().withPriority(priority), 1);
        } else {
            Logging.m249w("ForcedSender", "Expected instance of `TransportImpl`, got `%s`.", transport);
        }
    }
}
