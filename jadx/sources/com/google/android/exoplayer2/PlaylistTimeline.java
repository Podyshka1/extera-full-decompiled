package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class PlaylistTimeline extends AbstractConcatenatedTimeline {
    private final HashMap childIndexByUid;
    private final int[] firstPeriodInChildIndices;
    private final int[] firstWindowInChildIndices;
    private final int periodCount;
    private final Timeline[] timelines;
    private final Object[] uids;
    private final int windowCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaylistTimeline(Collection collection, ShuffleOrder shuffleOrder) {
        super(false, shuffleOrder);
        int windowCount = 0;
        int size = collection.size();
        this.firstPeriodInChildIndices = new int[size];
        this.firstWindowInChildIndices = new int[size];
        this.timelines = new Timeline[size];
        this.uids = new Object[size];
        this.childIndexByUid = new HashMap();
        Iterator it = collection.iterator();
        int periodCount = 0;
        int i = 0;
        while (it.hasNext()) {
            MediaSourceInfoHolder mediaSourceInfoHolder = (MediaSourceInfoHolder) it.next();
            this.timelines[i] = mediaSourceInfoHolder.getTimeline();
            this.firstWindowInChildIndices[i] = windowCount;
            this.firstPeriodInChildIndices[i] = periodCount;
            windowCount += this.timelines[i].getWindowCount();
            periodCount += this.timelines[i].getPeriodCount();
            this.uids[i] = mediaSourceInfoHolder.getUid();
            this.childIndexByUid.put(this.uids[i], Integer.valueOf(i));
            i++;
        }
        this.windowCount = windowCount;
        this.periodCount = periodCount;
    }

    List getChildTimelines() {
        return Arrays.asList(this.timelines);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getChildIndexByPeriodIndex(int i) {
        return Util.binarySearchFloor(this.firstPeriodInChildIndices, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getChildIndexByWindowIndex(int i) {
        return Util.binarySearchFloor(this.firstWindowInChildIndices, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getChildIndexByChildUid(Object obj) {
        Integer num = (Integer) this.childIndexByUid.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected Timeline getTimelineByChildIndex(int i) {
        return this.timelines[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getFirstPeriodIndexByChildIndex(int i) {
        return this.firstPeriodInChildIndices[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getFirstWindowIndexByChildIndex(int i) {
        return this.firstWindowInChildIndices[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected Object getChildUidByChildIndex(int i) {
        return this.uids[i];
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getWindowCount() {
        return this.windowCount;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getPeriodCount() {
        return this.periodCount;
    }
}
