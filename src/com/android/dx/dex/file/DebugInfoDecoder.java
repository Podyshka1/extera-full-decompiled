package com.android.dx.dex.file;

import com.android.dex.Leb128;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;
import com.android.dex.util.ExceptionWithContext;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.DalvInsnList;
import com.android.dx.dex.code.DalvInsnList$$ExternalSyntheticBUOutline0;
import com.android.dx.dex.code.LocalList;
import com.android.dx.dex.code.PositionList;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;
import org.mvel2.math.MathProcessor$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public class DebugInfoDecoder {
    private final int codesize;
    private final Prototype desc;
    private final byte[] encoded;
    private final DexFile file;
    private final boolean isStatic;
    private final LocalEntry[] lastEntryForReg;
    private final ArrayList<LocalEntry> locals;
    private final ArrayList<PositionEntry> positions;
    private final int regSize;
    private final int thisStringIdx;
    private int line = 1;
    private int address = 0;

    public DebugInfoDecoder(byte[] bArr, int i, int i2, boolean z, CstMethodRef cstMethodRef, DexFile dexFile) {
        int iIndexOf;
        if (bArr == null) {
            f$$ExternalSyntheticBUOutline2.m213m("encoded == null");
            throw null;
        }
        this.encoded = bArr;
        this.isStatic = z;
        this.desc = cstMethodRef.getPrototype();
        this.file = dexFile;
        this.regSize = i2;
        this.positions = new ArrayList<>();
        this.locals = new ArrayList<>();
        this.codesize = i;
        this.lastEntryForReg = new LocalEntry[i2];
        try {
            iIndexOf = dexFile.getStringIds().indexOf(new CstString("this"));
        } catch (IllegalArgumentException unused) {
            iIndexOf = -1;
        }
        this.thisStringIdx = iIndexOf;
    }

    public static class PositionEntry {
        public int address;
        public int line;

        public PositionEntry(int i, int i2) {
            this.address = i;
            this.line = i2;
        }
    }

    public static class LocalEntry {
        public int address;
        public boolean isStart;
        public int nameIndex;
        public int reg;
        public int signatureIndex;
        public int typeIndex;

        public LocalEntry(int i, boolean z, int i2, int i3, int i4, int i5) {
            this.address = i;
            this.isStart = z;
            this.reg = i2;
            this.nameIndex = i3;
            this.typeIndex = i4;
            this.signatureIndex = i5;
        }

        public String toString() {
            return String.format("[%x %s v%d %04x %04x %04x]", Integer.valueOf(this.address), this.isStart ? "start" : "end", Integer.valueOf(this.reg), Integer.valueOf(this.nameIndex), Integer.valueOf(this.typeIndex), Integer.valueOf(this.signatureIndex));
        }
    }

    public List<PositionEntry> getPositionList() {
        return this.positions;
    }

    public List<LocalEntry> getLocals() {
        return this.locals;
    }

    public void decode() {
        try {
            decode0();
        } catch (Exception e) {
            throw ExceptionWithContext.withContext(e, "...while decoding debug info");
        }
    }

    private int readStringIndex(ByteInput byteInput) {
        return Leb128.readUnsignedLeb128(byteInput) - 1;
    }

    private int getParamBase() {
        return (this.regSize - this.desc.getParameterTypes().getWordCount()) - (!this.isStatic ? 1 : 0);
    }

    private void decode0() {
        LocalEntry localEntry;
        ByteArrayByteInput byteArrayByteInput = new ByteArrayByteInput(this.encoded);
        this.line = Leb128.readUnsignedLeb128(byteArrayByteInput);
        int unsignedLeb128 = Leb128.readUnsignedLeb128(byteArrayByteInput);
        StdTypeList parameterTypes = this.desc.getParameterTypes();
        int paramBase = getParamBase();
        if (unsignedLeb128 != parameterTypes.size()) {
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Mismatch between parameters_size and prototype");
            return;
        }
        if (!this.isStatic) {
            LocalEntry localEntry2 = new LocalEntry(0, true, paramBase, this.thisStringIdx, 0, 0);
            this.locals.add(localEntry2);
            this.lastEntryForReg[paramBase] = localEntry2;
            paramBase++;
        }
        int category = paramBase;
        for (int i = 0; i < unsignedLeb128; i++) {
            Type type = parameterTypes.getType(i);
            int stringIndex = readStringIndex(byteArrayByteInput);
            if (stringIndex == -1) {
                localEntry = new LocalEntry(0, true, category, -1, 0, 0);
            } else {
                localEntry = new LocalEntry(0, true, category, stringIndex, 0, 0);
            }
            this.locals.add(localEntry);
            this.lastEntryForReg[category] = localEntry;
            category += type.getCategory();
        }
        while (true) {
            int i2 = byteArrayByteInput.readByte() & UByte.MAX_VALUE;
            switch (i2) {
                case 0:
                    return;
                case 1:
                    this.address += Leb128.readUnsignedLeb128(byteArrayByteInput);
                    break;
                case 2:
                    this.line += Leb128.readSignedLeb128(byteArrayByteInput);
                    break;
                case 3:
                    int unsignedLeb1282 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    LocalEntry localEntry3 = new LocalEntry(this.address, true, unsignedLeb1282, readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput), 0);
                    this.locals.add(localEntry3);
                    this.lastEntryForReg[unsignedLeb1282] = localEntry3;
                    break;
                case 4:
                    int unsignedLeb1283 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    LocalEntry localEntry4 = new LocalEntry(this.address, true, unsignedLeb1283, readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput));
                    this.locals.add(localEntry4);
                    this.lastEntryForReg[unsignedLeb1283] = localEntry4;
                    break;
                case 5:
                    int unsignedLeb1284 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    try {
                        LocalEntry localEntry5 = this.lastEntryForReg[unsignedLeb1284];
                        if (!localEntry5.isStart) {
                            throw new RuntimeException("nonsensical END_LOCAL on dead register v" + unsignedLeb1284);
                        }
                        LocalEntry localEntry6 = new LocalEntry(this.address, false, unsignedLeb1284, localEntry5.nameIndex, localEntry5.typeIndex, localEntry5.signatureIndex);
                        this.locals.add(localEntry6);
                        this.lastEntryForReg[unsignedLeb1284] = localEntry6;
                    } catch (NullPointerException unused) {
                        MathProcessor$$ExternalSyntheticBUOutline0.m967m("Encountered END_LOCAL on new v", unsignedLeb1284);
                        return;
                    }
                    break;
                case 6:
                    int unsignedLeb1285 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    try {
                        LocalEntry localEntry7 = this.lastEntryForReg[unsignedLeb1285];
                        if (localEntry7.isStart) {
                            throw new RuntimeException("nonsensical RESTART_LOCAL on live register v" + unsignedLeb1285);
                        }
                        LocalEntry localEntry8 = new LocalEntry(this.address, true, unsignedLeb1285, localEntry7.nameIndex, localEntry7.typeIndex, 0);
                        this.locals.add(localEntry8);
                        this.lastEntryForReg[unsignedLeb1285] = localEntry8;
                    } catch (NullPointerException unused2) {
                        MathProcessor$$ExternalSyntheticBUOutline0.m967m("Encountered RESTART_LOCAL on new v", unsignedLeb1285);
                        return;
                    }
                    break;
                case 7:
                case 8:
                case 9:
                    break;
                default:
                    if (i2 < 10) {
                        MathProcessor$$ExternalSyntheticBUOutline0.m967m("Invalid extended opcode encountered ", i2);
                        return;
                    }
                    int i3 = this.address + ((i2 - 10) / 15);
                    this.address = i3;
                    int i4 = this.line + ((r1 % 15) - 4);
                    this.line = i4;
                    this.positions.add(new PositionEntry(i3, i4));
                    break;
                    break;
            }
        }
    }

    public static void validateEncode(byte[] bArr, DexFile dexFile, CstMethodRef cstMethodRef, DalvCode dalvCode, boolean z) {
        PositionList positions = dalvCode.getPositions();
        LocalList locals = dalvCode.getLocals();
        DalvInsnList insns = dalvCode.getInsns();
        try {
            validateEncode0(bArr, insns.codeSize(), insns.getRegistersSize(), z, cstMethodRef, dexFile, positions, locals);
        } catch (RuntimeException e) {
            System.err.println("instructions:");
            insns.debugPrint((OutputStream) System.err, "  ", true);
            System.err.println("local list:");
            locals.debugPrint(System.err, "  ");
            throw ExceptionWithContext.withContext(e, "while processing " + cstMethodRef.toHuman());
        }
    }

    private static void validateEncode0(byte[] bArr, int i, int i2, boolean z, CstMethodRef cstMethodRef, DexFile dexFile, PositionList positionList, LocalList localList) {
        LocalEntry localEntry;
        DebugInfoDecoder debugInfoDecoder = new DebugInfoDecoder(bArr, i, i2, z, cstMethodRef, dexFile);
        debugInfoDecoder.decode();
        List<PositionEntry> positionList2 = debugInfoDecoder.getPositionList();
        if (positionList2.size() != positionList.size()) {
            DalvInsnList$$ExternalSyntheticBUOutline0.m223m("Decoded positions table not same size was ", positionList2.size(), " expected ", positionList.size());
            return;
        }
        for (PositionEntry positionEntry : positionList2) {
            for (int size = positionList.size() - 1; size >= 0; size--) {
                PositionList.Entry entry = positionList.get(size);
                if (positionEntry.line != entry.getPosition().getLine() || positionEntry.address != entry.getAddress()) {
                }
            }
            DalvInsnList$$ExternalSyntheticBUOutline0.m223m("Could not match position entry: ", positionEntry.address, ", ", positionEntry.line);
            return;
        }
        List<LocalEntry> locals = debugInfoDecoder.getLocals();
        int i3 = debugInfoDecoder.thisStringIdx;
        int size2 = locals.size();
        int paramBase = debugInfoDecoder.getParamBase();
        for (int i4 = 0; i4 < size2; i4++) {
            LocalEntry localEntry2 = locals.get(i4);
            int i5 = localEntry2.nameIndex;
            if (i5 < 0 || i5 == i3) {
                int i6 = i4 + 1;
                while (true) {
                    if (i6 < size2) {
                        LocalEntry localEntry3 = locals.get(i6);
                        if (localEntry3.address == 0) {
                            if (localEntry2.reg == localEntry3.reg && localEntry3.isStart) {
                                locals.set(i4, localEntry3);
                                locals.remove(i6);
                                size2--;
                                break;
                            }
                            i6++;
                        }
                    }
                }
            }
        }
        int size3 = localList.size();
        int i7 = 0;
        for (int i8 = 0; i8 < size3; i8++) {
            LocalList.Entry entry2 = localList.get(i8);
            if (entry2.getDisposition() != LocalList.Disposition.END_REPLACED) {
                do {
                    localEntry = locals.get(i7);
                    if (localEntry.nameIndex >= 0) {
                        break;
                    } else {
                        i7++;
                    }
                } while (i7 < size2);
                int i9 = localEntry.address;
                if (localEntry.reg != entry2.getRegister()) {
                    System.err.println("local register mismatch at orig " + i8 + " / decoded " + i7);
                } else if (localEntry.isStart != entry2.isStart()) {
                    System.err.println("local start/end mismatch at orig " + i8 + " / decoded " + i7);
                } else if (i9 == entry2.getAddress() || (i9 == 0 && localEntry.reg >= paramBase)) {
                    i7++;
                } else {
                    System.err.println("local address mismatch at orig " + i8 + " / decoded " + i7);
                }
                System.err.println("decoded locals:");
                for (LocalEntry localEntry4 : locals) {
                    System.err.println("  " + localEntry4);
                }
                GlShader$$ExternalSyntheticBUOutline1.m1056m("local table problem");
                return;
            }
        }
    }
}
