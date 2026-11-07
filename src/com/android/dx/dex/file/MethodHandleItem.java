package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstBaseMethodRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodHandleItem extends IndexedItem {
    private final int ITEM_SIZE = 8;
    private final CstMethodHandle methodHandle;

    @Override // com.android.dx.dex.file.Item
    public int writeSize() {
        return 8;
    }

    public MethodHandleItem(CstMethodHandle cstMethodHandle) {
        this.methodHandle = cstMethodHandle;
    }

    @Override // com.android.dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_METHOD_HANDLE_ITEM;
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        dexFile.getMethodHandles().intern(this.methodHandle);
    }

    @Override // com.android.dx.dex.file.Item
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int targetIndex = getTargetIndex(dexFile);
        int methodHandleType = this.methodHandle.getMethodHandleType();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, indexString() + ' ' + this.methodHandle.toString());
            annotatedOutput.annotate(2, "type:     " + Hex.u2(methodHandleType) + (" // " + CstMethodHandle.getMethodHandleTypeName(methodHandleType)));
            annotatedOutput.annotate(2, "reserved: " + Hex.u2(0));
            String str = " // " + this.methodHandle.getRef().toString();
            if (this.methodHandle.isAccessor()) {
                annotatedOutput.annotate(2, "fieldId:  " + Hex.u2(targetIndex) + str);
            } else {
                annotatedOutput.annotate(2, "methodId: " + Hex.u2(targetIndex) + str);
            }
            annotatedOutput.annotate(2, "reserved: " + Hex.u2(0));
        }
        annotatedOutput.writeShort(methodHandleType);
        annotatedOutput.writeShort(0);
        annotatedOutput.writeShort(getTargetIndex(dexFile));
        annotatedOutput.writeShort(0);
    }

    private int getTargetIndex(DexFile dexFile) {
        Constant ref = this.methodHandle.getRef();
        if (this.methodHandle.isAccessor()) {
            return dexFile.getFieldIds().indexOf((CstFieldRef) ref);
        }
        if (this.methodHandle.isInvocation()) {
            if (ref instanceof CstInterfaceMethodRef) {
                ref = ((CstInterfaceMethodRef) ref).toMethodRef();
            }
            return dexFile.getMethodIds().indexOf((CstBaseMethodRef) ref);
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Unhandled invocation type");
        return 0;
    }
}
