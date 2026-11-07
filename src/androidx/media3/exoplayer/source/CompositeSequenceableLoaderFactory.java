package androidx.media3.exoplayer.source;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface CompositeSequenceableLoaderFactory {
    SequenceableLoader create(List<? extends SequenceableLoader> list, List<List<Integer>> list2);

    SequenceableLoader empty();
}
