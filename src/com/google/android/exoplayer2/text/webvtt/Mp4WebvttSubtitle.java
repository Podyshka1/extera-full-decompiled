package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import java.util.Collections;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
final class Mp4WebvttSubtitle implements Subtitle {
    private final List cues;

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }

    public Mp4WebvttSubtitle(List list) {
        this.cues = DesugarCollections.unmodifiableList(list);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i == 0);
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List getCues(long j) {
        return j >= 0 ? this.cues : Collections.EMPTY_LIST;
    }
}
