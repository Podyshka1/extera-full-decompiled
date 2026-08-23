package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataList extends Table {
    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer) {
        return getRootAsMetadataList(byteBuffer, new MetadataList());
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer, MetadataList metadataList) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataList.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public MetadataList __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public int version() {
        int i__offset = __offset(4);
        if (i__offset != 0) {
            return this.f54bb.getInt(i__offset + this.bb_pos);
        }
        return 0;
    }

    public MetadataItem list(MetadataItem metadataItem, int i) {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return metadataItem.__assign(__indirect(__vector(i__offset) + (i * 4)), this.f54bb);
        }
        return null;
    }

    public int listLength() {
        int i__offset = __offset(6);
        if (i__offset != 0) {
            return __vector_len(i__offset);
        }
        return 0;
    }
}
