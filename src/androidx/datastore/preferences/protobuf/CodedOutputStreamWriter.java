package androidx.datastore.preferences.protobuf;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.WireFormat;
import androidx.datastore.preferences.protobuf.Writer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class CodedOutputStreamWriter implements Writer {
    private final CodedOutputStream output;

    public static CodedOutputStreamWriter forCodedOutput(CodedOutputStream codedOutputStream) {
        CodedOutputStreamWriter codedOutputStreamWriter = codedOutputStream.wrapper;
        return codedOutputStreamWriter != null ? codedOutputStreamWriter : new CodedOutputStreamWriter(codedOutputStream);
    }

    private CodedOutputStreamWriter(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) Internal.checkNotNull(codedOutputStream, "output");
        this.output = codedOutputStream2;
        codedOutputStream2.wrapper = this;
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed32(int i, int i2) {
        this.output.writeSFixed32(i, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt64(int i, long j) {
        this.output.writeInt64(i, j);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed64(int i, long j) {
        this.output.writeSFixed64(i, j);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFloat(int i, float f) {
        this.output.writeFloat(i, f);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeDouble(int i, double d) {
        this.output.writeDouble(i, d);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEnum(int i, int i2) {
        this.output.writeEnum(i, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt64(int i, long j) {
        this.output.writeUInt64(i, j);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt32(int i, int i2) {
        this.output.writeInt32(i, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed64(int i, long j) {
        this.output.writeFixed64(i, j);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed32(int i, int i2) {
        this.output.writeFixed32(i, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBool(int i, boolean z) {
        this.output.writeBool(i, z);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeString(int i, String str) {
        this.output.writeString(i, str);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBytes(int i, ByteString byteString) {
        this.output.writeBytes(i, byteString);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt32(int i, int i2) {
        this.output.writeUInt32(i, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt32(int i, int i2) {
        this.output.writeSInt32(i, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt64(int i, long j) {
        this.output.writeSInt64(i, j);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeMessage(int i, Object obj, Schema schema) {
        this.output.writeMessage(i, (MessageLite) obj, schema);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeGroup(int i, Object obj, Schema schema) {
        this.output.writeGroup(i, (MessageLite) obj, schema);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeStartGroup(int i) {
        this.output.writeTag(i, 3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEndGroup(int i) {
        this.output.writeTag(i, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeMessageSetItem(int i, Object obj) {
        if (obj instanceof ByteString) {
            this.output.writeRawMessageSetExtension(i, (ByteString) obj);
        } else {
            this.output.writeMessageSetExtension(i, (MessageLite) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt32List(int i, List list, boolean z) {
        if (list instanceof IntArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeInt32ListInternal(i, (IntArrayList) null, z);
        } else {
            writeInt32ListInternal(i, list, z);
        }
    }

    private void writeInt32ListInternal(int i, IntArrayList intArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeInt32ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(((Integer) list.get(i3)).intValue());
            }
            this.output.writeUInt32NoTag(iComputeInt32SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeInt32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeInt32(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed32List(int i, List list, boolean z) {
        if (list instanceof IntArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeFixed32ListInternal(i, (IntArrayList) null, z);
        } else {
            writeFixed32ListInternal(i, list, z);
        }
    }

    private void writeFixed32ListInternal(int i, IntArrayList intArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeFixed32ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeFixed32SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeFixed32SizeNoTag += CodedOutputStream.computeFixed32SizeNoTag(((Integer) list.get(i3)).intValue());
            }
            this.output.writeUInt32NoTag(iComputeFixed32SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeFixed32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeFixed32(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt64List(int i, List list, boolean z) {
        if (list instanceof LongArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeInt64ListInternal(i, (LongArrayList) null, z);
        } else {
            writeInt64ListInternal(i, list, z);
        }
    }

    private void writeInt64ListInternal(int i, LongArrayList longArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeInt64ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeInt64SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(((Long) list.get(i3)).longValue());
            }
            this.output.writeUInt32NoTag(iComputeInt64SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeInt64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeInt64(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt64List(int i, List list, boolean z) {
        if (list instanceof LongArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeUInt64ListInternal(i, (LongArrayList) null, z);
        } else {
            writeUInt64ListInternal(i, list, z);
        }
    }

    private void writeUInt64ListInternal(int i, LongArrayList longArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeUInt64ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeUInt64SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(((Long) list.get(i3)).longValue());
            }
            this.output.writeUInt32NoTag(iComputeUInt64SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeUInt64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeUInt64(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed64List(int i, List list, boolean z) {
        if (list instanceof LongArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeFixed64ListInternal(i, (LongArrayList) null, z);
        } else {
            writeFixed64ListInternal(i, list, z);
        }
    }

    private void writeFixed64ListInternal(int i, LongArrayList longArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeFixed64ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeFixed64SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeFixed64SizeNoTag += CodedOutputStream.computeFixed64SizeNoTag(((Long) list.get(i3)).longValue());
            }
            this.output.writeUInt32NoTag(iComputeFixed64SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeFixed64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeFixed64(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFloatList(int i, List list, boolean z) {
        if (list instanceof FloatArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeFloatListInternal(i, (FloatArrayList) null, z);
        } else {
            writeFloatListInternal(i, list, z);
        }
    }

    private void writeFloatListInternal(int i, FloatArrayList floatArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeFloatListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeFloatSizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeFloatSizeNoTag += CodedOutputStream.computeFloatSizeNoTag(((Float) list.get(i3)).floatValue());
            }
            this.output.writeUInt32NoTag(iComputeFloatSizeNoTag);
            while (i2 < list.size()) {
                this.output.writeFloatNoTag(((Float) list.get(i2)).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeFloat(i, ((Float) list.get(i2)).floatValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeDoubleList(int i, List list, boolean z) {
        if (list instanceof DoubleArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeDoubleListInternal(i, (DoubleArrayList) null, z);
        } else {
            writeDoubleListInternal(i, list, z);
        }
    }

    private void writeDoubleListInternal(int i, DoubleArrayList doubleArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeDoubleListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeDoubleSizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeDoubleSizeNoTag += CodedOutputStream.computeDoubleSizeNoTag(((Double) list.get(i3)).doubleValue());
            }
            this.output.writeUInt32NoTag(iComputeDoubleSizeNoTag);
            while (i2 < list.size()) {
                this.output.writeDoubleNoTag(((Double) list.get(i2)).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeDouble(i, ((Double) list.get(i2)).doubleValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEnumList(int i, List list, boolean z) {
        if (list instanceof IntArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeEnumListInternal(i, (IntArrayList) null, z);
        } else {
            writeEnumListInternal(i, list, z);
        }
    }

    private void writeEnumListInternal(int i, IntArrayList intArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeEnumListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeEnumSizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(((Integer) list.get(i3)).intValue());
            }
            this.output.writeUInt32NoTag(iComputeEnumSizeNoTag);
            while (i2 < list.size()) {
                this.output.writeEnumNoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeEnum(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBoolList(int i, List list, boolean z) {
        if (list instanceof BooleanArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeBoolListInternal(i, (BooleanArrayList) null, z);
        } else {
            writeBoolListInternal(i, list, z);
        }
    }

    private void writeBoolListInternal(int i, BooleanArrayList booleanArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeBoolListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeBoolSizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeBoolSizeNoTag += CodedOutputStream.computeBoolSizeNoTag(((Boolean) list.get(i3)).booleanValue());
            }
            this.output.writeUInt32NoTag(iComputeBoolSizeNoTag);
            while (i2 < list.size()) {
                this.output.writeBoolNoTag(((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeBool(i, ((Boolean) list.get(i2)).booleanValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeStringList(int i, List list) {
        int i2 = 0;
        if (list instanceof LazyStringList) {
            LazyStringList lazyStringList = (LazyStringList) list;
            while (i2 < list.size()) {
                writeLazyString(i, lazyStringList.getRaw(i2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeString(i, (String) list.get(i2));
            i2++;
        }
    }

    private void writeLazyString(int i, Object obj) {
        if (obj instanceof String) {
            this.output.writeString(i, (String) obj);
        } else {
            this.output.writeBytes(i, (ByteString) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBytesList(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.output.writeBytes(i, (ByteString) list.get(i2));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt32List(int i, List list, boolean z) {
        if (list instanceof IntArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeUInt32ListInternal(i, (IntArrayList) null, z);
        } else {
            writeUInt32ListInternal(i, list, z);
        }
    }

    private void writeUInt32ListInternal(int i, IntArrayList intArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    public void writeUInt32ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeUInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(((Integer) list.get(i3)).intValue());
            }
            this.output.writeUInt32NoTag(iComputeUInt32SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeUInt32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeUInt32(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed32List(int i, List list, boolean z) {
        if (list instanceof IntArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeSFixed32ListInternal(i, (IntArrayList) null, z);
        } else {
            writeSFixed32ListInternal(i, list, z);
        }
    }

    private void writeSFixed32ListInternal(int i, IntArrayList intArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeSFixed32ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeSFixed32SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeSFixed32SizeNoTag += CodedOutputStream.computeSFixed32SizeNoTag(((Integer) list.get(i3)).intValue());
            }
            this.output.writeUInt32NoTag(iComputeSFixed32SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeSFixed32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeSFixed32(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed64List(int i, List list, boolean z) {
        if (list instanceof LongArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeSFixed64ListInternal(i, (LongArrayList) null, z);
        } else {
            writeSFixed64ListInternal(i, list, z);
        }
    }

    private void writeSFixed64ListInternal(int i, LongArrayList longArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeSFixed64ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeSFixed64SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeSFixed64SizeNoTag += CodedOutputStream.computeSFixed64SizeNoTag(((Long) list.get(i3)).longValue());
            }
            this.output.writeUInt32NoTag(iComputeSFixed64SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeSFixed64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeSFixed64(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt32List(int i, List list, boolean z) {
        if (list instanceof IntArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeSInt32ListInternal(i, (IntArrayList) null, z);
        } else {
            writeSInt32ListInternal(i, list, z);
        }
    }

    private void writeSInt32ListInternal(int i, IntArrayList intArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    public void writeSInt32ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeSInt32SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(((Integer) list.get(i3)).intValue());
            }
            this.output.writeUInt32NoTag(iComputeSInt32SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeSInt32NoTag(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeSInt32(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt64List(int i, List list, boolean z) {
        if (list instanceof LongArrayList) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(list);
            writeSInt64ListInternal(i, (LongArrayList) null, z);
        } else {
            writeSInt64ListInternal(i, list, z);
        }
    }

    private void writeSInt64ListInternal(int i, LongArrayList longArrayList, boolean z) {
        if (z) {
            this.output.writeTag(i, 2);
            throw null;
        }
        throw null;
    }

    private void writeSInt64ListInternal(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.output.writeTag(i, 2);
            int iComputeSInt64SizeNoTag = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(((Long) list.get(i3)).longValue());
            }
            this.output.writeUInt32NoTag(iComputeSInt64SizeNoTag);
            while (i2 < list.size()) {
                this.output.writeSInt64NoTag(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.output.writeSInt64(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeMessageList(int i, List list, Schema schema) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeMessage(i, list.get(i2), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeGroupList(int i, List list, Schema schema) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeGroup(i, list.get(i2), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeMap(int i, MapEntryLite.Metadata metadata, Map map) {
        if (this.output.isSerializationDeterministic()) {
            writeDeterministicMap(i, metadata, map);
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, entry.getKey(), entry.getValue()));
            MapEntryLite.writeTo(this.output, metadata, entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.CodedOutputStreamWriter$1 */
    static /* synthetic */ class C05481 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private void writeDeterministicMap(int i, MapEntryLite.Metadata metadata, Map map) {
        switch (C05481.$SwitchMap$com$google$protobuf$WireFormat$FieldType[metadata.keyType.ordinal()]) {
            case 1:
                Object obj = map.get(Boolean.FALSE);
                if (obj != null) {
                    writeDeterministicBooleanMapEntry(i, false, obj, metadata);
                }
                Object obj2 = map.get(Boolean.TRUE);
                if (obj2 != null) {
                    writeDeterministicBooleanMapEntry(i, true, obj2, metadata);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                writeDeterministicIntegerMap(i, metadata, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                writeDeterministicLongMap(i, metadata, map);
                return;
            case 12:
                writeDeterministicStringMap(i, metadata, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + metadata.keyType);
        }
    }

    private void writeDeterministicBooleanMapEntry(int i, boolean z, Object obj, MapEntryLite.Metadata metadata) {
        this.output.writeTag(i, 2);
        this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, Boolean.valueOf(z), obj));
        MapEntryLite.writeTo(this.output, metadata, Boolean.valueOf(z), obj);
    }

    private void writeDeterministicIntegerMap(int i, MapEntryLite.Metadata metadata, Map map) {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = ((Integer) it.next()).intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            Object obj = map.get(Integer.valueOf(i4));
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, Integer.valueOf(i4), obj));
            MapEntryLite.writeTo(this.output, metadata, Integer.valueOf(i4), obj);
        }
    }

    private void writeDeterministicLongMap(int i, MapEntryLite.Metadata metadata, Map map) {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            jArr[i2] = ((Long) it.next()).longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            Object obj = map.get(Long.valueOf(j));
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, Long.valueOf(j), obj));
            MapEntryLite.writeTo(this.output, metadata, Long.valueOf(j), obj);
        }
    }

    private void writeDeterministicStringMap(int i, MapEntryLite.Metadata metadata, Map map) {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = (String) it.next();
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str = strArr[i3];
            Object obj = map.get(str);
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, str, obj));
            MapEntryLite.writeTo(this.output, metadata, str, obj);
        }
    }
}
