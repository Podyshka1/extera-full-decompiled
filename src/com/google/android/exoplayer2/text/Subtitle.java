package com.google.android.exoplayer2.text;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface Subtitle {
    List getCues(long j);

    long getEventTime(int i);

    int getEventTimeCount();

    int getNextEventTimeIndex(long j);
}
