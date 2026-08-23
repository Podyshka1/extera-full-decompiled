package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class UnknownFieldSchema<T, B> {
    private static volatile int recursionLimit = 100;

    public abstract void addFixed32(B b2, int i, int i2);

    public abstract void addFixed64(B b2, int i, long j);

    public abstract void addGroup(B b2, int i, T t);

    public abstract void addLengthDelimited(B b2, int i, ByteString byteString);

    public abstract void addVarint(B b2, int i, long j);

    public abstract B getBuilderFromMessage(Object obj);

    public abstract T getFromMessage(Object obj);

    public abstract int getSerializedSize(T t);

    public abstract int getSerializedSizeAsMessageSet(T t);

    public abstract void makeImmutable(Object obj);

    public abstract T merge(T t, T t2);

    public abstract B newBuilder();

    public abstract void setBuilderToMessage(Object obj, B b2);

    public abstract void setToMessage(Object obj, T t);

    public abstract boolean shouldDiscardUnknownFields(Reader reader);

    public abstract T toImmutable(B b2);

    public abstract void writeAsMessageSetTo(T t, Writer writer);

    public abstract void writeTo(T t, Writer writer);

    public final boolean mergeOneFieldFrom(B b2, Reader reader, int i) throws InvalidProtocolBufferException {
        int tag = reader.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            addVarint(b2, tagFieldNumber, reader.readInt64());
            return true;
        }
        if (tagWireType == 1) {
            addFixed64(b2, tagFieldNumber, reader.readFixed64());
            return true;
        }
        if (tagWireType == 2) {
            addLengthDelimited(b2, tagFieldNumber, reader.readBytes());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                addFixed32(b2, tagFieldNumber, reader.readFixed32());
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        B bNewBuilder = newBuilder();
        int iMakeTag = WireFormat.makeTag(tagFieldNumber, 4);
        int i2 = i + 1;
        if (i2 >= recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        mergeFrom(bNewBuilder, reader, i2);
        if (iMakeTag != reader.getTag()) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        addGroup(b2, tagFieldNumber, toImmutable(bNewBuilder));
        return true;
    }

    private final void mergeFrom(B b2, Reader reader, int i) {
        while (reader.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b2, reader, i)) {
        }
    }
}
