package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstCallSite;
import com.android.p003dx.rop.cst.CstCallSiteRef;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class CallSiteIdItem extends IndexedItem implements Comparable {
    private static final int ITEM_SIZE = 4;
    CallSiteItem data = null;
    final CstCallSiteRef invokeDynamicRef;

    @Override // com.android.p003dx.dex.file.Item
    public int writeSize() {
        return 4;
    }

    public CallSiteIdItem(CstCallSiteRef cstCallSiteRef) {
        this.invokeDynamicRef = cstCallSiteRef;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CALL_SITE_ID_ITEM;
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        CstCallSite callSite = this.invokeDynamicRef.getCallSite();
        CallSiteIdsSection callSiteIds = dexFile.getCallSiteIds();
        CallSiteItem callSiteItem = callSiteIds.getCallSiteItem(callSite);
        if (callSiteItem == null) {
            MixedItemSection byteData = dexFile.getByteData();
            callSiteItem = new CallSiteItem(callSite);
            byteData.add(callSiteItem);
            callSiteIds.addCallSiteItem(callSite, callSiteItem);
        }
        this.data = callSiteItem;
    }

    @Override // com.android.p003dx.dex.file.Item
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int absoluteOffset = this.data.getAbsoluteOffset();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, indexString() + ' ' + this.invokeDynamicRef.toString());
            StringBuilder sb = new StringBuilder();
            sb.append("call_site_off: ");
            sb.append(Hex.m214u4(absoluteOffset));
            annotatedOutput.annotate(4, sb.toString());
        }
        annotatedOutput.writeInt(absoluteOffset);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.invokeDynamicRef.compareTo((Constant) ((CallSiteIdItem) obj).invokeDynamicRef);
    }
}
