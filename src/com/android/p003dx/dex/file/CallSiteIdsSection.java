package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstCallSite;
import com.android.p003dx.rop.cst.CstCallSiteRef;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class CallSiteIdsSection extends UniformItemSection {
    private final TreeMap<CstCallSiteRef, CallSiteIdItem> callSiteIds;
    private final TreeMap<CstCallSite, CallSiteItem> callSites;

    public CallSiteIdsSection(DexFile dexFile) {
        super("call_site_ids", dexFile, 4);
        this.callSiteIds = new TreeMap<>();
        this.callSites = new TreeMap<>();
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    public IndexedItem get(Constant constant) {
        if (constant == null) {
            throw new NullPointerException("cst == null");
        }
        throwIfNotPrepared();
        CallSiteIdItem callSiteIdItem = this.callSiteIds.get((CstCallSiteRef) constant);
        if (callSiteIdItem != null) {
            return callSiteIdItem;
        }
        throw new IllegalArgumentException("not found");
    }

    @Override // com.android.p003dx.dex.file.UniformItemSection
    protected void orderItems() {
        Iterator<CallSiteIdItem> it = this.callSiteIds.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().setIndex(i);
            i++;
        }
    }

    @Override // com.android.p003dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.callSiteIds.values();
    }

    public synchronized void intern(CstCallSiteRef cstCallSiteRef) {
        if (cstCallSiteRef == null) {
            throw new NullPointerException("cstRef");
        }
        throwIfPrepared();
        if (this.callSiteIds.get(cstCallSiteRef) == null) {
            this.callSiteIds.put(cstCallSiteRef, new CallSiteIdItem(cstCallSiteRef));
        }
    }

    void addCallSiteItem(CstCallSite cstCallSite, CallSiteItem callSiteItem) {
        if (cstCallSite == null) {
            throw new NullPointerException("callSite == null");
        }
        if (callSiteItem == null) {
            throw new NullPointerException("callSiteItem == null");
        }
        this.callSites.put(cstCallSite, callSiteItem);
    }

    CallSiteItem getCallSiteItem(CstCallSite cstCallSite) {
        if (cstCallSite == null) {
            throw new NullPointerException("callSite == null");
        }
        return this.callSites.get(cstCallSite);
    }
}
