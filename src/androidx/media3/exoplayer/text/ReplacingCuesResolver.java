package androidx.media3.exoplayer.text;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
final class ReplacingCuesResolver implements CuesResolver {
    private final ArrayList<CuesWithTiming> cuesWithTimingList = new ArrayList<>();

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean addCues(CuesWithTiming cuesWithTiming, long j) {
        boolean z;
        Assertions.checkArgument(cuesWithTiming.startTimeUs != -9223372036854775807L);
        if (cuesWithTiming.startTimeUs <= j) {
            long j2 = cuesWithTiming.endTimeUs;
            z = j2 == -9223372036854775807L || j < j2;
        }
        for (int size = this.cuesWithTimingList.size() - 1; size >= 0; size--) {
            long j3 = cuesWithTiming.startTimeUs;
            long j4 = this.cuesWithTimingList.get(size).startTimeUs;
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (j3 >= j4) {
                arrayList.add(size + 1, cuesWithTiming);
                return z;
            }
            if (arrayList.get(size).startTimeUs <= j) {
                z = false;
            }
        }
        this.cuesWithTimingList.add(0, cuesWithTiming);
        return z;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public ImmutableList<Cue> getCuesAtTimeUs(long j) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j);
        if (indexOfCuesStartingAfter == 0) {
            return ImmutableList.of();
        }
        CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1);
        long j2 = cuesWithTiming.endTimeUs;
        if (j2 == -9223372036854775807L || j < j2) {
            return cuesWithTiming.cues;
        }
        return ImmutableList.of();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void discardCuesBeforeTimeUs(long j) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j);
        if (indexOfCuesStartingAfter == 0) {
            return;
        }
        long j2 = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1).endTimeUs;
        if (j2 == -9223372036854775807L || j2 >= j) {
            indexOfCuesStartingAfter--;
        }
        this.cuesWithTimingList.subList(0, indexOfCuesStartingAfter).clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getPreviousCueChangeTimeUs(long j) {
        if (this.cuesWithTimingList.isEmpty() || j < this.cuesWithTimingList.get(0).startTimeUs) {
            return -9223372036854775807L;
        }
        int i = 1;
        while (true) {
            int size = this.cuesWithTimingList.size();
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (i < size) {
                long j2 = arrayList.get(i).startTimeUs;
                if (j == j2) {
                    return j2;
                }
                if (j < j2) {
                    CuesWithTiming cuesWithTiming = this.cuesWithTimingList.get(i - 1);
                    long j3 = cuesWithTiming.endTimeUs;
                    return (j3 == -9223372036854775807L || j3 > j) ? cuesWithTiming.startTimeUs : j3;
                }
                i++;
            } else {
                CuesWithTiming cuesWithTiming2 = (CuesWithTiming) Iterables.getLast(arrayList);
                long j4 = cuesWithTiming2.endTimeUs;
                return (j4 == -9223372036854775807L || j < j4) ? cuesWithTiming2.startTimeUs : j4;
            }
        }
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getNextCueChangeTimeUs(long j) {
        if (this.cuesWithTimingList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j < this.cuesWithTimingList.get(0).startTimeUs) {
            return this.cuesWithTimingList.get(0).startTimeUs;
        }
        int i = 1;
        while (true) {
            int size = this.cuesWithTimingList.size();
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (i < size) {
                CuesWithTiming cuesWithTiming = arrayList.get(i);
                if (j < cuesWithTiming.startTimeUs) {
                    long j2 = this.cuesWithTimingList.get(i - 1).endTimeUs;
                    return (j2 == -9223372036854775807L || j2 <= j || j2 >= cuesWithTiming.startTimeUs) ? cuesWithTiming.startTimeUs : j2;
                }
                i++;
            } else {
                long j3 = ((CuesWithTiming) Iterables.getLast(arrayList)).endTimeUs;
                if (j3 == -9223372036854775807L || j >= j3) {
                    return Long.MIN_VALUE;
                }
                return j3;
            }
        }
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void clear() {
        this.cuesWithTimingList.clear();
    }

    private int getIndexOfCuesStartingAfter(long j) {
        int i = 0;
        while (true) {
            int size = this.cuesWithTimingList.size();
            ArrayList<CuesWithTiming> arrayList = this.cuesWithTimingList;
            if (i >= size) {
                return arrayList.size();
            }
            if (j < arrayList.get(i).startTimeUs) {
                return i;
            }
            i++;
        }
    }
}
