package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SimpleMetadataDecoder implements MetadataDecoder {
    public abstract Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer);

    @Override // androidx.media3.extractor.metadata.MetadataDecoder
    public final Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Preconditions.checkNotNull(metadataInputBuffer.data);
        Preconditions.checkArgument(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        return decode(metadataInputBuffer, byteBuffer);
    }
}
