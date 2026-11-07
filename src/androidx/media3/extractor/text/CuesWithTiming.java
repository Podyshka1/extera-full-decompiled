package androidx.media3.extractor.text;

import androidx.media3.common.text.Cue;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CuesWithTiming {
    public final ImmutableList<Cue> cues;
    public final long durationUs;
    public final long endTimeUs;
    public final long startTimeUs;

    public CuesWithTiming(List<Cue> list, long j, long j2) {
        this.cues = ImmutableList.copyOf((Collection) list);
        this.startTimeUs = j;
        this.durationUs = j2;
        long j3 = -9223372036854775807L;
        if (j != -9223372036854775807L && j2 != -9223372036854775807L) {
            j3 = j + j2;
        }
        this.endTimeUs = j3;
    }
}
