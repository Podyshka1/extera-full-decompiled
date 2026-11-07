package androidx.datastore.preferences.protobuf;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.WireFormat;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
final class CodedInputStreamReader implements Reader {
    private int endGroupTag;
    private final CodedInputStream input;
    private int nextTag = 0;
    private int tag;

    public static CodedInputStreamReader forCodedInput(CodedInputStream codedInputStream) {
        CodedInputStreamReader codedInputStreamReader = codedInputStream.wrapper;
        return codedInputStreamReader != null ? codedInputStreamReader : new CodedInputStreamReader(codedInputStream);
    }

    private CodedInputStreamReader(CodedInputStream codedInputStream) {
        CodedInputStream codedInputStream2 = (CodedInputStream) Internal.checkNotNull(codedInputStream, PluginsConstants.Settings.TYPE_INPUT);
        this.input = codedInputStream2;
        codedInputStream2.wrapper = this;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int getFieldNumber() {
        int i = this.nextTag;
        if (i != 0) {
            this.tag = i;
            this.nextTag = 0;
        } else {
            this.tag = this.input.readTag();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.endGroupTag) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.getTagFieldNumber(i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int getTag() {
        return this.tag;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public boolean skipField() {
        int i;
        if (this.input.isAtEnd() || (i = this.tag) == this.endGroupTag) {
            return false;
        }
        return this.input.skipField(i);
    }

    private void requireWireType(int i) throws InvalidProtocolBufferException.InvalidWireTypeException {
        if (WireFormat.getTagWireType(this.tag) != i) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public double readDouble() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(1);
        return this.input.readDouble();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public float readFloat() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(5);
        return this.input.readFloat();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readUInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readUInt64();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readInt64();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readInt32();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readFixed64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(1);
        return this.input.readFixed64();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readFixed32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(5);
        return this.input.readFixed32();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public boolean readBool() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readBool();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public String readString() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(2);
        return this.input.readString();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public String readStringRequireUtf8() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(2);
        return this.input.readStringRequireUtf8();
    }

    public <T> T readMessage(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(2);
        return (T) readMessage(Protobuf.getInstance().schemaFor((Class) cls), extensionRegistryLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> void mergeMessageField(T t, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        requireWireType(2);
        mergeMessageFieldInternal(t, schema, extensionRegistryLite);
    }

    private <T> void mergeMessageFieldInternal(T t, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        int uInt32 = this.input.readUInt32();
        CodedInputStream codedInputStream = this.input;
        if (codedInputStream.recursionDepth >= codedInputStream.recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int iPushLimit = codedInputStream.pushLimit(uInt32);
        this.input.recursionDepth++;
        schema.mergeFrom(t, this, extensionRegistryLite);
        this.input.checkLastTagWas(0);
        r4.recursionDepth--;
        this.input.popLimit(iPushLimit);
    }

    private <T> T readMessage(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        T tNewInstance = schema.newInstance();
        mergeMessageFieldInternal(tNewInstance, schema, extensionRegistryLite);
        schema.makeImmutable(tNewInstance);
        return tNewInstance;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> void mergeGroupField(T t, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(3);
        mergeGroupFieldInternal(t, schema, extensionRegistryLite);
    }

    private <T> void mergeGroupFieldInternal(T t, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) {
        int i = this.endGroupTag;
        this.endGroupTag = WireFormat.makeTag(WireFormat.getTagFieldNumber(this.tag), 4);
        try {
            schema.mergeFrom(t, this, extensionRegistryLite);
            if (this.tag == this.endGroupTag) {
            } else {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } finally {
            this.endGroupTag = i;
        }
    }

    private <T> T readGroup(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) {
        T tNewInstance = schema.newInstance();
        mergeGroupFieldInternal(tNewInstance, schema, extensionRegistryLite);
        schema.makeImmutable(tNewInstance);
        return tNewInstance;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public ByteString readBytes() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(2);
        return this.input.readBytes();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readUInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readUInt32();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readEnum() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readEnum();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readSFixed32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(5);
        return this.input.readSFixed32();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readSFixed64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(1);
        return this.input.readSFixed64();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readSInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readSInt32();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readSInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(0);
        return this.input.readSInt64();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readDoubleList(List<Double> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof DoubleArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 1) {
                this.input.readDouble();
                throw null;
            }
            if (tagWireType == 2) {
                verifyPackedFixed64Length(this.input.readUInt32());
                this.input.getTotalBytesRead();
                this.input.readDouble();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 1) {
            do {
                list.add(Double.valueOf(this.input.readDouble()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int uInt32 = this.input.readUInt32();
            verifyPackedFixed64Length(uInt32);
            int totalBytesRead = this.input.getTotalBytesRead() + uInt32;
            do {
                list.add(Double.valueOf(this.input.readDouble()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readFloatList(List<Float> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof FloatArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType != 2) {
                if (tagWireType == 5) {
                    this.input.readFloat();
                    throw null;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            verifyPackedFixed32Length(this.input.readUInt32());
            this.input.getTotalBytesRead();
            this.input.readFloat();
            throw null;
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 2) {
            int uInt32 = this.input.readUInt32();
            verifyPackedFixed32Length(uInt32);
            int totalBytesRead = this.input.getTotalBytesRead() + uInt32;
            do {
                list.add(Float.valueOf(this.input.readFloat()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (tagWireType2 == 5) {
            do {
                list.add(Float.valueOf(this.input.readFloat()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readUInt64List(List<Long> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof LongArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readUInt64();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readUInt64();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Long.valueOf(this.input.readUInt64()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Long.valueOf(this.input.readUInt64()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readInt64List(List<Long> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof LongArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readInt64();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readInt64();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Long.valueOf(this.input.readInt64()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Long.valueOf(this.input.readInt64()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readInt32List(List<Integer> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof IntArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readInt32();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readInt32();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(this.input.readInt32()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Integer.valueOf(this.input.readInt32()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readFixed64List(List<Long> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof LongArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 1) {
                this.input.readFixed64();
                throw null;
            }
            if (tagWireType == 2) {
                verifyPackedFixed64Length(this.input.readUInt32());
                this.input.getTotalBytesRead();
                this.input.readFixed64();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 1) {
            do {
                list.add(Long.valueOf(this.input.readFixed64()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int uInt32 = this.input.readUInt32();
            verifyPackedFixed64Length(uInt32);
            int totalBytesRead = this.input.getTotalBytesRead() + uInt32;
            do {
                list.add(Long.valueOf(this.input.readFixed64()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readFixed32List(List<Integer> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof IntArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType != 2) {
                if (tagWireType == 5) {
                    this.input.readFixed32();
                    throw null;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            verifyPackedFixed32Length(this.input.readUInt32());
            this.input.getTotalBytesRead();
            this.input.readFixed32();
            throw null;
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 2) {
            int uInt32 = this.input.readUInt32();
            verifyPackedFixed32Length(uInt32);
            int totalBytesRead = this.input.getTotalBytesRead() + uInt32;
            do {
                list.add(Integer.valueOf(this.input.readFixed32()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (tagWireType2 == 5) {
            do {
                list.add(Integer.valueOf(this.input.readFixed32()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readBoolList(List<Boolean> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof BooleanArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readBool();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readBool();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Boolean.valueOf(this.input.readBool()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Boolean.valueOf(this.input.readBool()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readStringList(List<String> list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        readStringListInternal(list, false);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readStringListRequireUtf8(List<String> list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        readStringListInternal(list, true);
    }

    public void readStringListInternal(List<String> list, boolean z) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int tag;
        int tag2;
        if (WireFormat.getTagWireType(this.tag) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        if ((list instanceof LazyStringList) && !z) {
            LazyStringList lazyStringList = (LazyStringList) list;
            do {
                lazyStringList.add(readBytes());
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag2 = this.input.readTag();
                }
            } while (tag2 == this.tag);
            this.nextTag = tag2;
            return;
        }
        do {
            list.add(z ? readStringRequireUtf8() : readString());
            if (this.input.isAtEnd()) {
                return;
            } else {
                tag = this.input.readTag();
            }
        } while (tag == this.tag);
        this.nextTag = tag;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> void readMessageList(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int tag;
        if (WireFormat.getTagWireType(this.tag) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i = this.tag;
        do {
            list.add(readMessage(schema, extensionRegistryLite));
            if (this.input.isAtEnd() || this.nextTag != 0) {
                return;
            } else {
                tag = this.input.readTag();
            }
        } while (tag == i);
        this.nextTag = tag;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Reader
    @Deprecated
    public <T> void readGroupList(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int tag;
        if (WireFormat.getTagWireType(this.tag) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i = this.tag;
        do {
            list.add(readGroup(schema, extensionRegistryLite));
            if (this.input.isAtEnd() || this.nextTag != 0) {
                return;
            } else {
                tag = this.input.readTag();
            }
        } while (tag == i);
        this.nextTag = tag;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readBytesList(List<ByteString> list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int tag;
        if (WireFormat.getTagWireType(this.tag) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(readBytes());
            if (this.input.isAtEnd()) {
                return;
            } else {
                tag = this.input.readTag();
            }
        } while (tag == this.tag);
        this.nextTag = tag;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readUInt32List(List<Integer> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof IntArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readUInt32();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readUInt32();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(this.input.readUInt32()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Integer.valueOf(this.input.readUInt32()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readEnumList(List<Integer> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof IntArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readEnum();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readEnum();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(this.input.readEnum()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Integer.valueOf(this.input.readEnum()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSFixed32List(List<Integer> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof IntArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType != 2) {
                if (tagWireType == 5) {
                    this.input.readSFixed32();
                    throw null;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
            verifyPackedFixed32Length(this.input.readUInt32());
            this.input.getTotalBytesRead();
            this.input.readSFixed32();
            throw null;
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 2) {
            int uInt32 = this.input.readUInt32();
            verifyPackedFixed32Length(uInt32);
            int totalBytesRead = this.input.getTotalBytesRead() + uInt32;
            do {
                list.add(Integer.valueOf(this.input.readSFixed32()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (tagWireType2 == 5) {
            do {
                list.add(Integer.valueOf(this.input.readSFixed32()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSFixed64List(List<Long> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof LongArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 1) {
                this.input.readSFixed64();
                throw null;
            }
            if (tagWireType == 2) {
                verifyPackedFixed64Length(this.input.readUInt32());
                this.input.getTotalBytesRead();
                this.input.readSFixed64();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 1) {
            do {
                list.add(Long.valueOf(this.input.readSFixed64()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int uInt32 = this.input.readUInt32();
            verifyPackedFixed64Length(uInt32);
            int totalBytesRead = this.input.getTotalBytesRead() + uInt32;
            do {
                list.add(Long.valueOf(this.input.readSFixed64()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSInt32List(List<Integer> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof IntArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readSInt32();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readSInt32();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Integer.valueOf(this.input.readSInt32()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Integer.valueOf(this.input.readSInt32()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSInt64List(List<Long> list) throws InvalidProtocolBufferException {
        int tag;
        if (list instanceof LongArrayList) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            int tagWireType = WireFormat.getTagWireType(this.tag);
            if (tagWireType == 0) {
                this.input.readSInt64();
                throw null;
            }
            if (tagWireType == 2) {
                this.input.readUInt32();
                this.input.getTotalBytesRead();
                this.input.readSInt64();
                throw null;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int tagWireType2 = WireFormat.getTagWireType(this.tag);
        if (tagWireType2 == 0) {
            do {
                list.add(Long.valueOf(this.input.readSInt64()));
                if (this.input.isAtEnd()) {
                    return;
                } else {
                    tag = this.input.readTag();
                }
            } while (tag == this.tag);
            this.nextTag = tag;
            return;
        }
        if (tagWireType2 == 2) {
            int totalBytesRead = this.input.getTotalBytesRead() + this.input.readUInt32();
            do {
                list.add(Long.valueOf(this.input.readSInt64()));
            } while (this.input.getTotalBytesRead() < totalBytesRead);
            requirePosition(totalBytesRead);
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    private void verifyPackedFixed64Length(int i) throws InvalidProtocolBufferException {
        if ((i & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r7.input.popLimit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <K, V> void readMap(Map<K, V> map, MapEntryLite.Metadata<K, V> metadata, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException.InvalidWireTypeException {
        requireWireType(2);
        int iPushLimit = this.input.pushLimit(this.input.readUInt32());
        Object field = metadata.defaultKey;
        Object field2 = metadata.defaultValue;
        while (true) {
            try {
                int fieldNumber = getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || this.input.isAtEnd()) {
                    break;
                }
                if (fieldNumber == 1) {
                    field = readField(metadata.keyType, null, null);
                } else if (fieldNumber == 2) {
                    field2 = readField(metadata.valueType, metadata.defaultValue.getClass(), extensionRegistryLite);
                } else {
                    try {
                        if (!skipField()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!skipField()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                }
            } catch (Throwable th) {
                this.input.popLimit(iPushLimit);
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.CodedInputStreamReader$1 */
    public static /* synthetic */ class C05461 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private Object readField(WireFormat.FieldType fieldType, Class<?> cls, ExtensionRegistryLite extensionRegistryLite) {
        switch (C05461.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(readBool());
            case 2:
                return readBytes();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(readEnum());
            case 5:
                return Integer.valueOf(readFixed32());
            case 6:
                return Long.valueOf(readFixed64());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(readInt32());
            case 9:
                return Long.valueOf(readInt64());
            case 10:
                return readMessage(cls, extensionRegistryLite);
            case 11:
                return Integer.valueOf(readSFixed32());
            case 12:
                return Long.valueOf(readSFixed64());
            case 13:
                return Integer.valueOf(readSInt32());
            case 14:
                return Long.valueOf(readSInt64());
            case 15:
                return readStringRequireUtf8();
            case 16:
                return Integer.valueOf(readUInt32());
            case 17:
                return Long.valueOf(readUInt64());
            default:
                f$$ExternalSyntheticBUOutline1.m212m("unsupported field type.");
                return null;
        }
    }

    private void verifyPackedFixed32Length(int i) throws InvalidProtocolBufferException {
        if ((i & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    private void requirePosition(int i) throws InvalidProtocolBufferException {
        if (this.input.getTotalBytesRead() != i) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }
}
