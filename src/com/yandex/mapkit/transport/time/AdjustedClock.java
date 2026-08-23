package com.yandex.mapkit.transport.time;

/* JADX INFO: loaded from: classes5.dex */
public interface AdjustedClock {
    boolean isValid();

    long now();

    void pause();

    void resume();
}
