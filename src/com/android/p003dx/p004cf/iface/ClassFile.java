package com.android.p003dx.p004cf.iface;

import com.android.p003dx.p004cf.code.BootstrapMethodsList;
import com.android.p003dx.rop.cst.ConstantPool;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.type.TypeList;

/* JADX INFO: loaded from: classes4.dex */
public interface ClassFile extends HasAttribute {
    int getAccessFlags();

    @Override // com.android.p003dx.p004cf.iface.HasAttribute
    AttributeList getAttributes();

    BootstrapMethodsList getBootstrapMethods();

    ConstantPool getConstantPool();

    FieldList getFields();

    TypeList getInterfaces();

    int getMagic();

    int getMajorVersion();

    MethodList getMethods();

    int getMinorVersion();

    CstString getSourceFile();

    CstType getSuperclass();

    CstType getThisClass();
}
