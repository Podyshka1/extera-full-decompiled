package com.android.dx.cf.direct;

import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.StdMethod;
import com.android.dx.cf.iface.StdMethodList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;

/* JADX INFO: loaded from: classes4.dex */
final class MethodListParser extends MemberListParser {
    private final StdMethodList methods;

    @Override // com.android.dx.cf.direct.MemberListParser
    protected int getAttributeContext() {
        return 2;
    }

    public MethodListParser(DirectClassFile directClassFile, CstType cstType, int i, AttributeFactory attributeFactory) {
        super(directClassFile, cstType, i, attributeFactory);
        this.methods = new StdMethodList(getCount());
    }

    public StdMethodList getList() {
        parseIfNecessary();
        return this.methods;
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected String humanName() {
        return "method";
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected String humanAccessFlags(int i) {
        return AccessFlags.methodString(i);
    }

    @Override // com.android.dx.cf.direct.MemberListParser
    protected Member set(int i, int i2, CstNat cstNat, AttributeList attributeList) {
        StdMethod stdMethod = new StdMethod(getDefiner(), i2, cstNat, attributeList);
        this.methods.set(i, stdMethod);
        return stdMethod;
    }
}
