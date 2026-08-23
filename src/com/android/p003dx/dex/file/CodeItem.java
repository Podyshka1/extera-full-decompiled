package com.android.p003dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.dex.code.DalvCode;
import com.android.p003dx.dex.code.DalvInsnList;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.type.StdTypeList;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeList;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;
import java.io.PrintWriter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class CodeItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int HEADER_SIZE = 16;
    private CatchStructs catches;
    private final DalvCode code;
    private DebugInfoItem debugInfo;
    private final boolean isStatic;
    private final CstMethodRef ref;
    private final TypeList throwsList;

    public CodeItem(CstMethodRef cstMethodRef, DalvCode dalvCode, boolean z, TypeList typeList) {
        super(4, -1);
        if (cstMethodRef == null) {
            throw new NullPointerException("ref == null");
        }
        if (dalvCode == null) {
            throw new NullPointerException("code == null");
        }
        if (typeList == null) {
            throw new NullPointerException("throwsList == null");
        }
        this.ref = cstMethodRef;
        this.code = dalvCode;
        this.isStatic = z;
        this.throwsList = typeList;
        this.catches = null;
        this.debugInfo = null;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CODE_ITEM;
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        MixedItemSection byteData = dexFile.getByteData();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        if (this.code.hasPositions() || this.code.hasLocals()) {
            DebugInfoItem debugInfoItem = new DebugInfoItem(this.code, this.isStatic, this.ref);
            this.debugInfo = debugInfoItem;
            byteData.add(debugInfoItem);
        }
        if (this.code.hasAnyCatches()) {
            Iterator<Type> it = this.code.getCatchTypes().iterator();
            while (it.hasNext()) {
                typeIds.intern(it.next());
            }
            this.catches = new CatchStructs(this.code);
        }
        Iterator<Constant> it2 = this.code.getInsnConstants().iterator();
        while (it2.hasNext()) {
            dexFile.internIfAppropriate(it2.next());
        }
    }

    public String toString() {
        return "CodeItem{" + toHuman() + "}";
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.ref.toHuman();
    }

    public CstMethodRef getRef() {
        return this.ref;
    }

    public void debugPrint(PrintWriter printWriter, String str, boolean z) {
        printWriter.println(this.ref.toHuman() + ":");
        DalvInsnList insns = this.code.getInsns();
        printWriter.println("regs: " + Hex.m212u2(getRegistersSize()) + "; ins: " + Hex.m212u2(getInsSize()) + "; outs: " + Hex.m212u2(getOutsSize()));
        insns.debugPrint(printWriter, str, z);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("  ");
        String string = sb.toString();
        if (this.catches != null) {
            printWriter.print(str);
            printWriter.println("catches");
            this.catches.debugPrint(printWriter, string);
        }
        if (this.debugInfo != null) {
            printWriter.print(str);
            printWriter.println("debug info");
            this.debugInfo.debugPrint(printWriter, string);
        }
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void place0(Section section, int i) {
        int iWriteSize;
        final DexFile file = section.getFile();
        this.code.assignIndices(new DalvCode.AssignIndicesCallback() { // from class: com.android.dx.dex.file.CodeItem.1
            @Override // com.android.dx.dex.code.DalvCode.AssignIndicesCallback
            public int getIndex(Constant constant) {
                IndexedItem indexedItemFindItemOrNull = file.findItemOrNull(constant);
                if (indexedItemFindItemOrNull == null) {
                    return -1;
                }
                return indexedItemFindItemOrNull.getIndex();
            }
        });
        CatchStructs catchStructs = this.catches;
        if (catchStructs != null) {
            catchStructs.encode(file);
            iWriteSize = this.catches.writeSize();
        } else {
            iWriteSize = 0;
        }
        int iCodeSize = this.code.getInsns().codeSize();
        if ((iCodeSize & 1) != 0) {
            iCodeSize++;
        }
        setWriteSize((iCodeSize * 2) + 16 + iWriteSize);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean zAnnotates = annotatedOutput.annotates();
        int registersSize = getRegistersSize();
        int outsSize = getOutsSize();
        int insSize = getInsSize();
        int iCodeSize = this.code.getInsns().codeSize();
        boolean z = (iCodeSize & 1) != 0;
        CatchStructs catchStructs = this.catches;
        int iTriesSize = catchStructs == null ? 0 : catchStructs.triesSize();
        DebugInfoItem debugInfoItem = this.debugInfo;
        int absoluteOffset = debugInfoItem == null ? 0 : debugInfoItem.getAbsoluteOffset();
        if (zAnnotates) {
            annotatedOutput.annotate(0, offsetString() + ' ' + this.ref.toHuman());
            StringBuilder sb = new StringBuilder();
            sb.append("  registers_size: ");
            sb.append(Hex.m212u2(registersSize));
            annotatedOutput.annotate(2, sb.toString());
            annotatedOutput.annotate(2, "  ins_size:       " + Hex.m212u2(insSize));
            annotatedOutput.annotate(2, "  outs_size:      " + Hex.m212u2(outsSize));
            annotatedOutput.annotate(2, "  tries_size:     " + Hex.m212u2(iTriesSize));
            annotatedOutput.annotate(4, "  debug_off:      " + Hex.m214u4(absoluteOffset));
            annotatedOutput.annotate(4, "  insns_size:     " + Hex.m214u4(iCodeSize));
            if (this.throwsList.size() != 0) {
                annotatedOutput.annotate(0, "  throws " + StdTypeList.toHuman(this.throwsList));
            }
        }
        annotatedOutput.writeShort(registersSize);
        annotatedOutput.writeShort(insSize);
        annotatedOutput.writeShort(outsSize);
        annotatedOutput.writeShort(iTriesSize);
        annotatedOutput.writeInt(absoluteOffset);
        annotatedOutput.writeInt(iCodeSize);
        writeCodes(dexFile, annotatedOutput);
        if (this.catches != null) {
            if (z) {
                if (zAnnotates) {
                    annotatedOutput.annotate(2, "  padding: 0");
                }
                annotatedOutput.writeShort(0);
            }
            this.catches.writeTo(dexFile, annotatedOutput);
        }
        if (!zAnnotates || this.debugInfo == null) {
            return;
        }
        annotatedOutput.annotate(0, "  debug info");
        this.debugInfo.annotateTo(dexFile, annotatedOutput, "    ");
    }

    private void writeCodes(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        try {
            this.code.getInsns().writeTo(annotatedOutput);
        } catch (RuntimeException e) {
            throw ExceptionWithContext.withContext(e, "...while writing instructions for " + this.ref.toHuman());
        }
    }

    private int getInsSize() {
        return this.ref.getParameterWordCount(this.isStatic);
    }

    private int getOutsSize() {
        return this.code.getInsns().getOutsSize();
    }

    private int getRegistersSize() {
        return this.code.getInsns().getRegistersSize();
    }
}
