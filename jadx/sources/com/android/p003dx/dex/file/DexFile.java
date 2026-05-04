package com.android.p003dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.dex.DexOptions;
import com.android.p003dx.dex.file.MixedItemSection;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstBaseMethodRef;
import com.android.p003dx.rop.cst.CstCallSiteRef;
import com.android.p003dx.rop.cst.CstEnumRef;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.ByteArrayAnnotatedOutput;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Adler32;

/* JADX INFO: loaded from: classes4.dex */
public final class DexFile {
    private final MixedItemSection byteData;
    private final CallSiteIdsSection callSiteIds;
    private final MixedItemSection classData;
    private final ClassDefsSection classDefs;
    private final DexOptions dexOptions;
    private int dumpWidth;
    private final FieldIdsSection fieldIds;
    private int fileSize;
    private final HeaderSection header;
    private final MixedItemSection map;
    private final MethodHandlesSection methodHandles;
    private final MethodIdsSection methodIds;
    private final ProtoIdsSection protoIds;
    private final Section[] sections;
    private final MixedItemSection stringData;
    private final StringIdsSection stringIds;
    private final TypeIdsSection typeIds;
    private final MixedItemSection typeLists;
    private final MixedItemSection wordData;

    public DexFile(DexOptions dexOptions) {
        this.dexOptions = dexOptions;
        HeaderSection headerSection = new HeaderSection(this);
        this.header = headerSection;
        MixedItemSection.SortType sortType = MixedItemSection.SortType.NONE;
        MixedItemSection mixedItemSection = new MixedItemSection(null, this, 4, sortType);
        this.typeLists = mixedItemSection;
        MixedItemSection.SortType sortType2 = MixedItemSection.SortType.TYPE;
        MixedItemSection mixedItemSection2 = new MixedItemSection("word_data", this, 4, sortType2);
        this.wordData = mixedItemSection2;
        MixedItemSection mixedItemSection3 = new MixedItemSection("string_data", this, 1, MixedItemSection.SortType.INSTANCE);
        this.stringData = mixedItemSection3;
        MixedItemSection mixedItemSection4 = new MixedItemSection(null, this, 1, sortType);
        this.classData = mixedItemSection4;
        MixedItemSection mixedItemSection5 = new MixedItemSection("byte_data", this, 1, sortType2);
        this.byteData = mixedItemSection5;
        StringIdsSection stringIdsSection = new StringIdsSection(this);
        this.stringIds = stringIdsSection;
        TypeIdsSection typeIdsSection = new TypeIdsSection(this);
        this.typeIds = typeIdsSection;
        ProtoIdsSection protoIdsSection = new ProtoIdsSection(this);
        this.protoIds = protoIdsSection;
        FieldIdsSection fieldIdsSection = new FieldIdsSection(this);
        this.fieldIds = fieldIdsSection;
        MethodIdsSection methodIdsSection = new MethodIdsSection(this);
        this.methodIds = methodIdsSection;
        ClassDefsSection classDefsSection = new ClassDefsSection(this);
        this.classDefs = classDefsSection;
        MixedItemSection mixedItemSection6 = new MixedItemSection("map", this, 4, sortType);
        this.map = mixedItemSection6;
        if (dexOptions.apiIsSupported(26)) {
            CallSiteIdsSection callSiteIdsSection = new CallSiteIdsSection(this);
            this.callSiteIds = callSiteIdsSection;
            MethodHandlesSection methodHandlesSection = new MethodHandlesSection(this);
            this.methodHandles = methodHandlesSection;
            this.sections = new Section[]{headerSection, stringIdsSection, typeIdsSection, protoIdsSection, fieldIdsSection, methodIdsSection, classDefsSection, callSiteIdsSection, methodHandlesSection, mixedItemSection2, mixedItemSection, mixedItemSection3, mixedItemSection5, mixedItemSection4, mixedItemSection6};
        } else {
            this.callSiteIds = null;
            this.methodHandles = null;
            this.sections = new Section[]{headerSection, stringIdsSection, typeIdsSection, protoIdsSection, fieldIdsSection, methodIdsSection, classDefsSection, mixedItemSection2, mixedItemSection, mixedItemSection3, mixedItemSection5, mixedItemSection4, mixedItemSection6};
        }
        this.fileSize = -1;
        this.dumpWidth = 79;
    }

    public boolean isEmpty() {
        return this.classDefs.items().isEmpty();
    }

    public DexOptions getDexOptions() {
        return this.dexOptions;
    }

    public void add(ClassDefItem classDefItem) {
        this.classDefs.add(classDefItem);
    }

    public ClassDefItem getClassOrNull(String str) {
        try {
            return (ClassDefItem) this.classDefs.get(new CstType(Type.internClassName(str)));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public void writeTo(OutputStream outputStream, Writer writer, boolean z) throws IOException {
        writeTo(outputStream, null, writer, z);
    }

    public void writeTo(OutputStream outputStream, Storage storage, Writer writer, boolean z) throws IOException {
        boolean z2 = writer != null;
        ByteArrayAnnotatedOutput dex0 = toDex0(z2, z, storage);
        if (outputStream != null) {
            outputStream.write(dex0.getArray());
        }
        if (z2) {
            dex0.writeAnnotationsTo(writer);
        }
    }

    public ByteArrayAnnotatedOutput writeTo(Storage storage) {
        return toDex0(false, false, storage);
    }

    public byte[] toDex(Writer writer, boolean z) {
        boolean z2 = writer != null;
        ByteArrayAnnotatedOutput dex0 = toDex0(z2, z, null);
        if (z2) {
            dex0.writeAnnotationsTo(writer);
        }
        return dex0.getArray();
    }

    public void setDumpWidth(int i) {
        if (i < 40) {
            throw new IllegalArgumentException("dumpWidth < 40");
        }
        this.dumpWidth = i;
    }

    public int getFileSize() {
        int i = this.fileSize;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("file size not yet known");
    }

    MixedItemSection getStringData() {
        return this.stringData;
    }

    MixedItemSection getWordData() {
        return this.wordData;
    }

    MixedItemSection getTypeLists() {
        return this.typeLists;
    }

    MixedItemSection getMap() {
        return this.map;
    }

    StringIdsSection getStringIds() {
        return this.stringIds;
    }

    public ClassDefsSection getClassDefs() {
        return this.classDefs;
    }

    MixedItemSection getClassData() {
        return this.classData;
    }

    public TypeIdsSection getTypeIds() {
        return this.typeIds;
    }

    ProtoIdsSection getProtoIds() {
        return this.protoIds;
    }

    public FieldIdsSection getFieldIds() {
        return this.fieldIds;
    }

    public MethodIdsSection getMethodIds() {
        return this.methodIds;
    }

    public MethodHandlesSection getMethodHandles() {
        return this.methodHandles;
    }

    public CallSiteIdsSection getCallSiteIds() {
        return this.callSiteIds;
    }

    MixedItemSection getByteData() {
        return this.byteData;
    }

    Section getFirstDataSection() {
        return this.wordData;
    }

    Section getLastDataSection() {
        return this.map;
    }

    void internIfAppropriate(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        if (constant instanceof CstString) {
            this.stringIds.intern((CstString) constant);
            return;
        }
        if (constant instanceof CstType) {
            this.typeIds.intern((CstType) constant);
            return;
        }
        if (constant instanceof CstBaseMethodRef) {
            this.methodIds.intern((CstBaseMethodRef) constant);
            return;
        }
        if (constant instanceof CstFieldRef) {
            this.fieldIds.intern((CstFieldRef) constant);
            return;
        }
        if (constant instanceof CstEnumRef) {
            this.fieldIds.intern(((CstEnumRef) constant).getFieldRef());
        } else if (constant instanceof CstProtoRef) {
            this.protoIds.intern(((CstProtoRef) constant).getPrototype());
        } else if (constant instanceof CstMethodHandle) {
            this.methodHandles.intern((CstMethodHandle) constant);
        }
    }

    IndexedItem findItemOrNull(Constant constant) {
        if (constant instanceof CstString) {
            return this.stringIds.get(constant);
        }
        if (constant instanceof CstType) {
            return this.typeIds.get(constant);
        }
        if (constant instanceof CstBaseMethodRef) {
            return this.methodIds.get(constant);
        }
        if (constant instanceof CstFieldRef) {
            return this.fieldIds.get(constant);
        }
        if (constant instanceof CstEnumRef) {
            return this.fieldIds.intern(((CstEnumRef) constant).getFieldRef());
        }
        if (constant instanceof CstProtoRef) {
            return this.protoIds.get(constant);
        }
        if (constant instanceof CstMethodHandle) {
            return this.methodHandles.get(constant);
        }
        if (constant instanceof CstCallSiteRef) {
            return this.callSiteIds.get(constant);
        }
        return null;
    }

    public static final class Storage {
        byte[] storage;

        public Storage(byte[] bArr) {
            this.storage = bArr;
        }

        public byte[] getStorage(int i) {
            if (this.storage.length < i) {
                Logger.getAnonymousLogger().log(Level.FINER, "DexFile storage too small  " + this.storage.length + " vs " + i);
                this.storage = new byte[i];
            }
            return this.storage;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0100 A[Catch: RuntimeException -> 0x00f3, TryCatch #0 {RuntimeException -> 0x00f3, blocks: (B:43:0x00e6, B:45:0x00ee, B:53:0x0100, B:55:0x010b, B:56:0x0111, B:57:0x0114, B:58:0x012b, B:50:0x00f5), top: B:73:0x00e6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ByteArrayAnnotatedOutput toDex0(boolean z, boolean z2, Storage storage) {
        ExceptionWithContext exceptionWithContext;
        this.classDefs.prepare();
        this.classData.prepare();
        this.wordData.prepare();
        if (this.dexOptions.apiIsSupported(26)) {
            this.callSiteIds.prepare();
        }
        this.byteData.prepare();
        if (this.dexOptions.apiIsSupported(26)) {
            this.methodHandles.prepare();
        }
        this.methodIds.prepare();
        this.fieldIds.prepare();
        this.protoIds.prepare();
        this.typeLists.prepare();
        this.typeIds.prepare();
        this.stringIds.prepare();
        this.stringData.prepare();
        this.header.prepare();
        int length = this.sections.length;
        int iWriteSize = 0;
        for (int i = 0; i < length; i++) {
            Section section = this.sections[i];
            if ((section != this.callSiteIds && section != this.methodHandles) || !section.items().isEmpty()) {
                int fileOffset = section.setFileOffset(iWriteSize);
                if (fileOffset < iWriteSize) {
                    throw new RuntimeException("bogus placement for section " + i);
                }
                try {
                    MixedItemSection mixedItemSection = this.map;
                    if (section == mixedItemSection) {
                        MapItem.addMap(this.sections, mixedItemSection);
                        this.map.prepare();
                    }
                    if (section instanceof MixedItemSection) {
                        ((MixedItemSection) section).placeItems();
                    }
                    iWriteSize = section.writeSize() + fileOffset;
                } catch (RuntimeException e) {
                    throw ExceptionWithContext.withContext(e, "...while writing section " + i);
                }
            }
        }
        this.fileSize = iWriteSize;
        byte[] storage2 = storage == null ? new byte[iWriteSize] : storage.getStorage(iWriteSize);
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput(storage2);
        if (z) {
            byteArrayAnnotatedOutput.enableAnnotations(this.dumpWidth, z2);
        }
        for (int i2 = 0; i2 < length; i2++) {
            try {
                Section section2 = this.sections[i2];
                if (section2 == this.callSiteIds || section2 == this.methodHandles) {
                    if (!section2.items().isEmpty()) {
                        int fileOffset2 = section2.getFileOffset() - byteArrayAnnotatedOutput.getCursor();
                        if (fileOffset2 < 0) {
                            throw new ExceptionWithContext("excess write of " + (-fileOffset2));
                        }
                        byteArrayAnnotatedOutput.writeZeroes(fileOffset2);
                        section2.writeTo(byteArrayAnnotatedOutput);
                    }
                }
            } catch (RuntimeException e2) {
                if (e2 instanceof ExceptionWithContext) {
                    exceptionWithContext = (ExceptionWithContext) e2;
                } else {
                    exceptionWithContext = new ExceptionWithContext(e2);
                }
                exceptionWithContext.addContext("...while writing section " + i2);
                throw exceptionWithContext;
            }
        }
        if (byteArrayAnnotatedOutput.getCursor() != this.fileSize) {
            throw new RuntimeException("foreshortened write");
        }
        calcSignature(storage2, byteArrayAnnotatedOutput.getCursor());
        calcChecksum(storage2, byteArrayAnnotatedOutput.getCursor());
        if (z) {
            this.wordData.writeIndexAnnotation(byteArrayAnnotatedOutput, ItemType.TYPE_CODE_ITEM, "\nmethod code index:\n\n");
            getStatistics().writeAnnotation(byteArrayAnnotatedOutput);
            byteArrayAnnotatedOutput.finishAnnotating();
        }
        return byteArrayAnnotatedOutput;
    }

    public Statistics getStatistics() {
        Statistics statistics = new Statistics();
        for (Section section : this.sections) {
            statistics.addAll(section);
        }
        return statistics;
    }

    private static void calcSignature(byte[] bArr, int i) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr, 32, i - 32);
            try {
                int iDigest = messageDigest.digest(bArr, 12, 20);
                if (iDigest == 20) {
                    return;
                }
                throw new RuntimeException("unexpected digest write: " + iDigest + " bytes");
            } catch (DigestException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void calcChecksum(byte[] bArr, int i) {
        Adler32 adler32 = new Adler32();
        adler32.update(bArr, 12, i - 12);
        int value = (int) adler32.getValue();
        bArr[8] = (byte) value;
        bArr[9] = (byte) (value >> 8);
        bArr[10] = (byte) (value >> 16);
        bArr[11] = (byte) (value >> 24);
    }
}
