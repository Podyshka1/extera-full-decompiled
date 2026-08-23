package com.android.dex;

import com.android.dex.ClassData;
import com.android.dex.Code;
import com.android.dex.MethodHandle;
import com.android.dex.util.ByteInput;
import com.android.dex.util.ByteOutput;
import com.android.dex.util.FileUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UTFDataFormatException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.zip.Adler32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes4.dex */
public final class Dex {
    static final short[] EMPTY_SHORT_ARRAY = new short[0];
    private ByteBuffer data;
    private final FieldIdTable fieldIds;
    private final MethodIdTable methodIds;
    private int nextSectionStart;
    private final ProtoIdTable protoIds;
    private final StringTable strings;
    private final TableOfContents tableOfContents;
    private final TypeIndexToDescriptorIndexTable typeIds;
    private final TypeIndexToDescriptorTable typeNames;

    public Dex(byte[] bArr) {
        this(ByteBuffer.wrap(bArr));
    }

    private Dex(ByteBuffer byteBuffer) {
        TableOfContents tableOfContents = new TableOfContents();
        this.tableOfContents = tableOfContents;
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        this.data = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        tableOfContents.readFrom(this);
    }

    public Dex(int i) {
        this.tableOfContents = new TableOfContents();
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[i]);
        this.data = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public Dex(File file) throws IOException {
        this.tableOfContents = new TableOfContents();
        this.nextSectionStart = 0;
        this.strings = new StringTable();
        this.typeIds = new TypeIndexToDescriptorIndexTable();
        this.typeNames = new TypeIndexToDescriptorTable();
        this.protoIds = new ProtoIdTable();
        this.fieldIds = new FieldIdTable();
        this.methodIds = new MethodIdTable();
        if (FileUtils.hasArchiveSuffix(file.getName())) {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry("classes.dex");
            if (entry != null) {
                InputStream inputStream = zipFile.getInputStream(entry);
                try {
                    loadFrom(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    zipFile.close();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
            throw new DexException("Expected classes.dex in " + file);
        }
        if (file.getName().endsWith(".dex")) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                loadFrom(fileInputStream);
                fileInputStream.close();
                return;
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        }
        throw new DexException("unknown output extension: " + file);
    }

    private void loadFrom(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
                this.data = byteBufferWrap;
                byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                this.tableOfContents.readFrom(this);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkBounds(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index:" + i + ", length=" + i2);
        }
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.clear();
        while (byteBufferDuplicate.hasRemaining()) {
            int iMin = Math.min(8192, byteBufferDuplicate.remaining());
            byteBufferDuplicate.get(bArr, 0, iMin);
            outputStream.write(bArr, 0, iMin);
        }
    }

    public void writeTo(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            writeTo(fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public TableOfContents getTableOfContents() {
        return this.tableOfContents;
    }

    public Section open(int i) {
        if (i < 0 || i >= this.data.capacity()) {
            throw new IllegalArgumentException("position=" + i + " length=" + this.data.capacity());
        }
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(this.data.capacity());
        return new Section("section", byteBufferDuplicate);
    }

    public Section appendSection(int i, String str) {
        if ((i & 3) != 0) {
            throw new IllegalStateException("Not four byte aligned!");
        }
        int i2 = this.nextSectionStart + i;
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferDuplicate.position(this.nextSectionStart);
        byteBufferDuplicate.limit(i2);
        Section section = new Section(str, byteBufferDuplicate);
        this.nextSectionStart = i2;
        return section;
    }

    public int getLength() {
        return this.data.capacity();
    }

    public int getNextSectionStart() {
        return this.nextSectionStart;
    }

    public byte[] getBytes() {
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byte[] bArr = new byte[byteBufferDuplicate.capacity()];
        byteBufferDuplicate.position(0);
        byteBufferDuplicate.get(bArr);
        return bArr;
    }

    public List strings() {
        return this.strings;
    }

    public List typeIds() {
        return this.typeIds;
    }

    public List typeNames() {
        return this.typeNames;
    }

    public List protoIds() {
        return this.protoIds;
    }

    public List fieldIds() {
        return this.fieldIds;
    }

    public List methodIds() {
        return this.methodIds;
    }

    public Iterable classDefs() {
        return new ClassDefIterable();
    }

    public TypeList readTypeList(int i) {
        if (i == 0) {
            return TypeList.EMPTY;
        }
        return open(i).readTypeList();
    }

    public ClassData readClassData(ClassDef classDef) {
        int classDataOffset = classDef.getClassDataOffset();
        if (classDataOffset == 0) {
            throw new IllegalArgumentException("offset == 0");
        }
        return open(classDataOffset).readClassData();
    }

    public Code readCode(ClassData.Method method) {
        int codeOffset = method.getCodeOffset();
        if (codeOffset == 0) {
            throw new IllegalArgumentException("offset == 0");
        }
        return open(codeOffset).readCode();
    }

    public byte[] computeSignature() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[8192];
            ByteBuffer byteBufferDuplicate = this.data.duplicate();
            byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
            byteBufferDuplicate.position(32);
            while (byteBufferDuplicate.hasRemaining()) {
                int iMin = Math.min(8192, byteBufferDuplicate.remaining());
                byteBufferDuplicate.get(bArr, 0, iMin);
                messageDigest.update(bArr, 0, iMin);
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public int computeChecksum() {
        Adler32 adler32 = new Adler32();
        byte[] bArr = new byte[8192];
        ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
        byteBufferDuplicate.position(12);
        while (byteBufferDuplicate.hasRemaining()) {
            int iMin = Math.min(8192, byteBufferDuplicate.remaining());
            byteBufferDuplicate.get(bArr, 0, iMin);
            adler32.update(bArr, 0, iMin);
        }
        return (int) adler32.getValue();
    }

    public void writeHashes() {
        open(12).write(computeSignature());
        open(8).writeInt(computeChecksum());
    }

    public int descriptorIndexFromTypeIndex(int i) {
        checkBounds(i, this.tableOfContents.typeIds.size);
        return this.data.getInt(this.tableOfContents.typeIds.off + (i * 4));
    }

    public final class Section implements ByteInput, ByteOutput {
        private final ByteBuffer data;
        private final int initialPosition;
        private final String name;

        private Section(String str, ByteBuffer byteBuffer) {
            this.name = str;
            this.data = byteBuffer;
            this.initialPosition = byteBuffer.position();
        }

        public int getPosition() {
            return this.data.position();
        }

        public int readInt() {
            return this.data.getInt();
        }

        public short readShort() {
            return this.data.getShort();
        }

        public int readUnsignedShort() {
            return readShort() & 65535;
        }

        @Override // com.android.dex.util.ByteInput
        public byte readByte() {
            return this.data.get();
        }

        public byte[] readByteArray(int i) {
            byte[] bArr = new byte[i];
            this.data.get(bArr);
            return bArr;
        }

        public short[] readShortArray(int i) {
            if (i == 0) {
                return Dex.EMPTY_SHORT_ARRAY;
            }
            short[] sArr = new short[i];
            for (int i2 = 0; i2 < i; i2++) {
                sArr[i2] = readShort();
            }
            return sArr;
        }

        public int readUleb128() {
            return Leb128.readUnsignedLeb128(this);
        }

        public int readUleb128p1() {
            return Leb128.readUnsignedLeb128(this) - 1;
        }

        public int readSleb128() {
            return Leb128.readSignedLeb128(this);
        }

        public void writeUleb128p1(int i) {
            writeUleb128(i + 1);
        }

        public TypeList readTypeList() {
            short[] shortArray = readShortArray(readInt());
            alignToFourBytes();
            return new TypeList(Dex.this, shortArray);
        }

        public String readString() {
            int i = readInt();
            int iPosition = this.data.position();
            int iLimit = this.data.limit();
            this.data.position(i);
            ByteBuffer byteBuffer = this.data;
            byteBuffer.limit(byteBuffer.capacity());
            try {
                try {
                    int uleb128 = readUleb128();
                    String strDecode = Mutf8.decode(this, new char[uleb128]);
                    if (strDecode.length() == uleb128) {
                        return strDecode;
                    }
                    throw new DexException("Declared length " + uleb128 + " doesn't match decoded length of " + strDecode.length());
                } catch (UTFDataFormatException e) {
                    throw new DexException(e);
                }
            } finally {
                this.data.position(iPosition);
                this.data.limit(iLimit);
            }
            this.data.position(iPosition);
            this.data.limit(iLimit);
        }

        public FieldId readFieldId() {
            return new FieldId(Dex.this, readUnsignedShort(), readUnsignedShort(), readInt());
        }

        public MethodId readMethodId() {
            return new MethodId(Dex.this, readUnsignedShort(), readUnsignedShort(), readInt());
        }

        public ProtoId readProtoId() {
            return new ProtoId(Dex.this, readInt(), readInt(), readInt());
        }

        public CallSiteId readCallSiteId() {
            return new CallSiteId(Dex.this, readInt());
        }

        public MethodHandle readMethodHandle() {
            return new MethodHandle(Dex.this, MethodHandle.MethodHandleType.fromValue(readUnsignedShort()), readUnsignedShort(), readUnsignedShort(), readUnsignedShort());
        }

        public ClassDef readClassDef() {
            return new ClassDef(Dex.this, getPosition(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Code readCode() {
            Code.Try[] tries;
            Code.CatchHandler[] catchHandlers;
            int unsignedShort = readUnsignedShort();
            int unsignedShort2 = readUnsignedShort();
            int unsignedShort3 = readUnsignedShort();
            int unsignedShort4 = readUnsignedShort();
            int i = readInt();
            short[] shortArray = readShortArray(readInt());
            if (unsignedShort4 > 0) {
                if (shortArray.length % 2 == 1) {
                    readShort();
                }
                Section sectionOpen = Dex.this.open(this.data.position());
                skip(unsignedShort4 * 8);
                catchHandlers = readCatchHandlers();
                tries = sectionOpen.readTries(unsignedShort4, catchHandlers);
            } else {
                tries = new Code.Try[0];
                catchHandlers = new Code.CatchHandler[0];
            }
            return new Code(unsignedShort, unsignedShort2, unsignedShort3, i, shortArray, tries, catchHandlers);
        }

        private Code.CatchHandler[] readCatchHandlers() {
            int iPosition = this.data.position();
            int uleb128 = readUleb128();
            Code.CatchHandler[] catchHandlerArr = new Code.CatchHandler[uleb128];
            for (int i = 0; i < uleb128; i++) {
                catchHandlerArr[i] = readCatchHandler(this.data.position() - iPosition);
            }
            return catchHandlerArr;
        }

        private Code.Try[] readTries(int i, Code.CatchHandler[] catchHandlerArr) {
            Code.Try[] tryArr = new Code.Try[i];
            for (int i2 = 0; i2 < i; i2++) {
                tryArr[i2] = new Code.Try(readInt(), readUnsignedShort(), findCatchHandlerIndex(catchHandlerArr, readUnsignedShort()));
            }
            return tryArr;
        }

        private int findCatchHandlerIndex(Code.CatchHandler[] catchHandlerArr, int i) {
            for (int i2 = 0; i2 < catchHandlerArr.length; i2++) {
                if (catchHandlerArr[i2].getOffset() == i) {
                    return i2;
                }
            }
            throw new IllegalArgumentException();
        }

        private Code.CatchHandler readCatchHandler(int i) {
            int sleb128 = readSleb128();
            int iAbs = Math.abs(sleb128);
            int[] iArr = new int[iAbs];
            int[] iArr2 = new int[iAbs];
            for (int i2 = 0; i2 < iAbs; i2++) {
                iArr[i2] = readUleb128();
                iArr2[i2] = readUleb128();
            }
            return new Code.CatchHandler(iArr, iArr2, sleb128 <= 0 ? readUleb128() : -1, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ClassData readClassData() {
            return new ClassData(readFields(readUleb128()), readFields(readUleb128()), readMethods(readUleb128()), readMethods(readUleb128()));
        }

        private ClassData.Field[] readFields(int i) {
            ClassData.Field[] fieldArr = new ClassData.Field[i];
            int uleb128 = 0;
            for (int i2 = 0; i2 < i; i2++) {
                uleb128 += readUleb128();
                fieldArr[i2] = new ClassData.Field(uleb128, readUleb128());
            }
            return fieldArr;
        }

        private ClassData.Method[] readMethods(int i) {
            ClassData.Method[] methodArr = new ClassData.Method[i];
            int uleb128 = 0;
            for (int i2 = 0; i2 < i; i2++) {
                uleb128 += readUleb128();
                methodArr[i2] = new ClassData.Method(uleb128, readUleb128(), readUleb128());
            }
            return methodArr;
        }

        private byte[] getBytesFrom(int i) {
            byte[] bArr = new byte[this.data.position() - i];
            this.data.position(i);
            this.data.get(bArr);
            return bArr;
        }

        public Annotation readAnnotation() {
            byte b = readByte();
            int iPosition = this.data.position();
            new EncodedValueReader(this, 29).skipValue();
            return new Annotation(Dex.this, b, new EncodedValue(getBytesFrom(iPosition)));
        }

        public EncodedValue readEncodedArray() {
            int iPosition = this.data.position();
            new EncodedValueReader(this, 28).skipValue();
            return new EncodedValue(getBytesFrom(iPosition));
        }

        public void skip(int i) {
            if (i < 0) {
                throw new IllegalArgumentException();
            }
            ByteBuffer byteBuffer = this.data;
            byteBuffer.position(byteBuffer.position() + i);
        }

        public void alignToFourBytes() {
            ByteBuffer byteBuffer = this.data;
            byteBuffer.position((byteBuffer.position() + 3) & (-4));
        }

        public void alignToFourBytesWithZeroFill() {
            while ((this.data.position() & 3) != 0) {
                this.data.put((byte) 0);
            }
        }

        public void assertFourByteAligned() {
            if ((this.data.position() & 3) != 0) {
                throw new IllegalStateException("Not four byte aligned!");
            }
        }

        public void write(byte[] bArr) {
            this.data.put(bArr);
        }

        @Override // com.android.dex.util.ByteOutput
        public void writeByte(int i) {
            this.data.put((byte) i);
        }

        public void writeShort(short s) {
            this.data.putShort(s);
        }

        public void writeUnsignedShort(int i) {
            short s = (short) i;
            if (i != (65535 & s)) {
                throw new IllegalArgumentException("Expected an unsigned short: " + i);
            }
            writeShort(s);
        }

        public void write(short[] sArr) {
            for (short s : sArr) {
                writeShort(s);
            }
        }

        public void writeInt(int i) {
            this.data.putInt(i);
        }

        public void writeUleb128(int i) {
            try {
                Leb128.writeUnsignedLeb128(this, i);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new DexException("Section limit " + this.data.limit() + " exceeded by " + this.name);
            }
        }

        public void writeSleb128(int i) {
            try {
                Leb128.writeSignedLeb128(this, i);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new DexException("Section limit " + this.data.limit() + " exceeded by " + this.name);
            }
        }

        public void writeStringData(String str) {
            try {
                writeUleb128(str.length());
                write(Mutf8.encode(str));
                writeByte(0);
            } catch (UTFDataFormatException unused) {
                throw new AssertionError();
            }
        }

        public void writeTypeList(TypeList typeList) {
            short[] types = typeList.getTypes();
            writeInt(types.length);
            for (short s : types) {
                writeShort(s);
            }
            alignToFourBytesWithZeroFill();
        }

        public int used() {
            return this.data.position() - this.initialPosition;
        }
    }

    private final class StringTable extends AbstractList implements RandomAccess {
        private StringTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public String get(int i) {
            Dex.checkBounds(i, Dex.this.tableOfContents.stringIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.stringIds.off + (i * 4)).readString();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.stringIds.size;
        }
    }

    private final class TypeIndexToDescriptorIndexTable extends AbstractList implements RandomAccess {
        private TypeIndexToDescriptorIndexTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i) {
            return Integer.valueOf(Dex.this.descriptorIndexFromTypeIndex(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.typeIds.size;
        }
    }

    private final class TypeIndexToDescriptorTable extends AbstractList implements RandomAccess {
        private TypeIndexToDescriptorTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public String get(int i) {
            return Dex.this.strings.get(Dex.this.descriptorIndexFromTypeIndex(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.typeIds.size;
        }
    }

    private final class ProtoIdTable extends AbstractList implements RandomAccess {
        private ProtoIdTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public ProtoId get(int i) {
            Dex.checkBounds(i, Dex.this.tableOfContents.protoIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.protoIds.off + (i * 12)).readProtoId();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.protoIds.size;
        }
    }

    private final class FieldIdTable extends AbstractList implements RandomAccess {
        private FieldIdTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public FieldId get(int i) {
            Dex.checkBounds(i, Dex.this.tableOfContents.fieldIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.fieldIds.off + (i * 8)).readFieldId();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.fieldIds.size;
        }
    }

    private final class MethodIdTable extends AbstractList implements RandomAccess {
        private MethodIdTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public MethodId get(int i) {
            Dex.checkBounds(i, Dex.this.tableOfContents.methodIds.size);
            Dex dex = Dex.this;
            return dex.open(dex.tableOfContents.methodIds.off + (i * 8)).readMethodId();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Dex.this.tableOfContents.methodIds.size;
        }
    }

    private final class ClassDefIterator implements Iterator {
        private int count;

        /* JADX INFO: renamed from: in */
        private final Section f78in;

        private ClassDefIterator() {
            this.f78in = Dex.this.open(Dex.this.tableOfContents.classDefs.off);
            this.count = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.count < Dex.this.tableOfContents.classDefs.size;
        }

        @Override // java.util.Iterator
        public ClassDef next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.count++;
            return this.f78in.readClassDef();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private final class ClassDefIterable implements Iterable {
        private ClassDefIterable() {
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return !Dex.this.tableOfContents.classDefs.exists() ? Collections.EMPTY_SET.iterator() : new ClassDefIterator();
        }
    }
}
