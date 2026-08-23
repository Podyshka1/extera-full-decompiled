package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;

/* JADX INFO: loaded from: classes4.dex */
final class ListChunk implements AviChunk {
    public final ImmutableList children;
    private final int type;

    public static ListChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
        AviChunk aviChunkCreateBox;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int iLimit = parsableByteArray.limit();
        int trackType = -2;
        while (parsableByteArray.bytesLeft() > 8) {
            int littleEndianInt = parsableByteArray.readLittleEndianInt();
            int position = parsableByteArray.getPosition() + parsableByteArray.readLittleEndianInt();
            parsableByteArray.setLimit(position);
            if (littleEndianInt == 1414744396) {
                aviChunkCreateBox = parseFrom(parsableByteArray.readLittleEndianInt(), parsableByteArray);
            } else {
                aviChunkCreateBox = createBox(littleEndianInt, trackType, parsableByteArray);
            }
            if (aviChunkCreateBox != null) {
                if (aviChunkCreateBox.getType() == 1752331379) {
                    trackType = ((AviStreamHeaderChunk) aviChunkCreateBox).getTrackType();
                }
                builder.add((Object) aviChunkCreateBox);
            }
            parsableByteArray.setPosition(position);
            parsableByteArray.setLimit(iLimit);
        }
        return new ListChunk(i, builder.build());
    }

    private ListChunk(int i, ImmutableList immutableList) {
        this.type = i;
        this.children = immutableList;
    }

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return this.type;
    }

    public AviChunk getChild(Class cls) {
        UnmodifiableIterator it = this.children.iterator();
        while (it.hasNext()) {
            AviChunk aviChunk = (AviChunk) it.next();
            if (aviChunk.getClass() == cls) {
                return aviChunk;
            }
        }
        return null;
    }

    private static AviChunk createBox(int i, int i2, ParsableByteArray parsableByteArray) {
        switch (i) {
            case 1718776947:
                return StreamFormatChunk.parseFrom(i2, parsableByteArray);
            case 1751742049:
                return AviMainHeaderChunk.parseFrom(parsableByteArray);
            case 1752331379:
                return AviStreamHeaderChunk.parseFrom(parsableByteArray);
            case 1852994675:
                return StreamNameChunk.parseFrom(parsableByteArray);
            default:
                return null;
        }
    }
}
