package androidx.media3.extractor;

import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ChunkIndexMerger {
    private final Map<Long, ChunkIndex> chunkMap = new LinkedHashMap();

    public void add(ChunkIndex chunkIndex) {
        long[] jArr = chunkIndex.timesUs;
        if (jArr.length <= 0 || this.chunkMap.containsKey(Long.valueOf(jArr[0]))) {
            return;
        }
        this.chunkMap.put(Long.valueOf(chunkIndex.timesUs[0]), chunkIndex);
    }

    public ChunkIndex merge() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (ChunkIndex chunkIndex : this.chunkMap.values()) {
            arrayList.add(chunkIndex.sizes);
            arrayList2.add(chunkIndex.offsets);
            arrayList3.add(chunkIndex.durationsUs);
            arrayList4.add(chunkIndex.timesUs);
        }
        return new ChunkIndex(Ints.concat((int[][]) arrayList.toArray(new int[arrayList.size()][])), Longs.concat((long[][]) arrayList2.toArray(new long[arrayList2.size()][])), Longs.concat((long[][]) arrayList3.toArray(new long[arrayList3.size()][])), Longs.concat((long[][]) arrayList4.toArray(new long[arrayList4.size()][])));
    }

    public int size() {
        return this.chunkMap.size();
    }
}
