package androidx.media3.extractor;

import com.google.common.collect.ImmutableList;
import java.util.List;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public interface Extractor {
    @SideEffectFree
    default Extractor getUnderlyingImplementation() {
        return this;
    }

    void init(ExtractorOutput extractorOutput);

    int read(ExtractorInput extractorInput, PositionHolder positionHolder);

    void release();

    void seek(long j, long j2);

    boolean sniff(ExtractorInput extractorInput);

    default List<SniffFailure> getSniffFailureDetails() {
        return ImmutableList.of();
    }
}
