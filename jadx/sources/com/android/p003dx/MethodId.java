package com.android.p003dx;

import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.type.Prototype;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class MethodId<D, R> {
    final CstMethodRef constant;
    final TypeId<D> declaringType;
    final String name;
    final CstNat nat;
    final TypeList parameters;
    final TypeId<R> returnType;

    MethodId(TypeId<D> typeId, TypeId<R> typeId2, String str, TypeList typeList) {
        if (typeId == null || typeId2 == null || str == null || typeList == null) {
            throw null;
        }
        this.declaringType = typeId;
        this.returnType = typeId2;
        this.name = str;
        this.parameters = typeList;
        CstNat cstNat = new CstNat(new CstString(str), new CstString(descriptor(false)));
        this.nat = cstNat;
        this.constant = new CstMethodRef(typeId.constant, cstNat);
    }

    public TypeId<D> getDeclaringType() {
        return this.declaringType;
    }

    public TypeId<R> getReturnType() {
        return this.returnType;
    }

    public boolean isConstructor() {
        return this.name.equals("<init>");
    }

    public boolean isStaticInitializer() {
        return this.name.equals("<clinit>");
    }

    public String getName() {
        return this.name;
    }

    public List<TypeId<?>> getParameters() {
        return this.parameters.asList();
    }

    String descriptor(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        if (z) {
            sb.append(this.declaringType.name);
        }
        for (TypeId<?> typeId : this.parameters.types) {
            sb.append(typeId.name);
        }
        sb.append(")");
        sb.append(this.returnType.name);
        return sb.toString();
    }

    Prototype prototype(boolean z) {
        return Prototype.intern(descriptor(z));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MethodId)) {
            return false;
        }
        MethodId methodId = (MethodId) obj;
        return methodId.declaringType.equals(this.declaringType) && methodId.name.equals(this.name) && methodId.parameters.equals(this.parameters) && methodId.returnType.equals(this.returnType);
    }

    public int hashCode() {
        return ((((((527 + this.declaringType.hashCode()) * 31) + this.name.hashCode()) * 31) + this.parameters.hashCode()) * 31) + this.returnType.hashCode();
    }

    public String toString() {
        return this.declaringType + "." + this.name + "(" + this.parameters + ")";
    }
}
