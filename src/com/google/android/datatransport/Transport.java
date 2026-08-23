package com.google.android.datatransport;

/* JADX INFO: loaded from: classes.dex */
public interface Transport {
    void schedule(Event event, TransportScheduleCallback transportScheduleCallback);

    void send(Event event);
}
