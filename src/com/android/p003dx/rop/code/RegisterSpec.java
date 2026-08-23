package com.android.p003dx.rop.code;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.rop.type.TypeBearer;
import com.android.p003dx.util.ToHuman;
import de.robv.android.xposed.callbacks.XCallback;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class RegisterSpec implements TypeBearer, ToHuman, Comparable<RegisterSpec> {
    public static final String PREFIX = "v";
    private final LocalItem local;
    private final int reg;
    private final TypeBearer type;
    private static final ConcurrentHashMap<Object, RegisterSpec> theInterns = new ConcurrentHashMap<>(XCallback.PRIORITY_HIGHEST, 0.75f);
    private static final ThreadLocal<ForComparison> theInterningItem = new ThreadLocal<ForComparison>() { // from class: com.android.dx.rop.code.RegisterSpec.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public ForComparison initialValue() {
            return new ForComparison();
        }
    };

    @Override // com.android.p003dx.rop.type.TypeBearer
    public final boolean isConstant() {
        return false;
    }

    private static RegisterSpec intern(int i, TypeBearer typeBearer, LocalItem localItem) {
        RegisterSpec registerSpecPutIfAbsent;
        ForComparison forComparison = theInterningItem.get();
        forComparison.set(i, typeBearer, localItem);
        ConcurrentHashMap<Object, RegisterSpec> concurrentHashMap = theInterns;
        RegisterSpec registerSpec = concurrentHashMap.get(forComparison);
        return (registerSpec != null || (registerSpecPutIfAbsent = concurrentHashMap.putIfAbsent((registerSpec = forComparison.toRegisterSpec()), registerSpec)) == null) ? registerSpec : registerSpecPutIfAbsent;
    }

    public static RegisterSpec make(int i, TypeBearer typeBearer) {
        return intern(i, typeBearer, null);
    }

    public static RegisterSpec make(int i, TypeBearer typeBearer, LocalItem localItem) {
        if (localItem == null) {
            throw new NullPointerException("local  == null");
        }
        return intern(i, typeBearer, localItem);
    }

    public static RegisterSpec makeLocalOptional(int i, TypeBearer typeBearer, LocalItem localItem) {
        return intern(i, typeBearer, localItem);
    }

    public static String regString(int i) {
        return PREFIX + i;
    }

    private RegisterSpec(int i, TypeBearer typeBearer, LocalItem localItem) {
        if (i < 0) {
            throw new IllegalArgumentException("reg < 0");
        }
        if (typeBearer == null) {
            throw new NullPointerException("type == null");
        }
        this.reg = i;
        this.type = typeBearer;
        this.local = localItem;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterSpec)) {
            if (!(obj instanceof ForComparison)) {
                return false;
            }
            ForComparison forComparison = (ForComparison) obj;
            return equals(forComparison.reg, forComparison.type, forComparison.local);
        }
        RegisterSpec registerSpec = (RegisterSpec) obj;
        return equals(registerSpec.reg, registerSpec.type, registerSpec.local);
    }

    public boolean equalsUsingSimpleType(RegisterSpec registerSpec) {
        return matchesVariable(registerSpec) && this.reg == registerSpec.reg;
    }

    public boolean matchesVariable(RegisterSpec registerSpec) {
        if (registerSpec != null && this.type.getType().equals(registerSpec.type.getType())) {
            LocalItem localItem = this.local;
            LocalItem localItem2 = registerSpec.local;
            if (localItem == localItem2) {
                return true;
            }
            if (localItem != null && localItem.equals(localItem2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean equals(int i, TypeBearer typeBearer, LocalItem localItem) {
        if (this.reg != i || !this.type.equals(typeBearer)) {
            return false;
        }
        LocalItem localItem2 = this.local;
        if (localItem2 != localItem) {
            return localItem2 != null && localItem2.equals(localItem);
        }
        return true;
    }

    @Override // java.lang.Comparable
    public int compareTo(RegisterSpec registerSpec) {
        int i = this.reg;
        int i2 = registerSpec.reg;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        if (this == registerSpec) {
            return 0;
        }
        int iCompareTo = this.type.getType().compareTo(registerSpec.type.getType());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        LocalItem localItem = this.local;
        if (localItem == null) {
            return registerSpec.local == null ? 0 : -1;
        }
        LocalItem localItem2 = registerSpec.local;
        if (localItem2 == null) {
            return 1;
        }
        return localItem.compareTo(localItem2);
    }

    public int hashCode() {
        return hashCodeOf(this.reg, this.type, this.local);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int hashCodeOf(int i, TypeBearer typeBearer, LocalItem localItem) {
        return ((((localItem != null ? localItem.hashCode() : 0) * 31) + typeBearer.hashCode()) * 31) + i;
    }

    public String toString() {
        return toString0(false);
    }

    @Override // com.android.p003dx.util.ToHuman
    public String toHuman() {
        return toString0(true);
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public Type getType() {
        return this.type.getType();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public TypeBearer getFrameType() {
        return this.type.getFrameType();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public final int getBasicType() {
        return this.type.getBasicType();
    }

    @Override // com.android.p003dx.rop.type.TypeBearer
    public final int getBasicFrameType() {
        return this.type.getBasicFrameType();
    }

    public int getReg() {
        return this.reg;
    }

    public TypeBearer getTypeBearer() {
        return this.type;
    }

    public LocalItem getLocalItem() {
        return this.local;
    }

    public int getNextReg() {
        return this.reg + getCategory();
    }

    public int getCategory() {
        return this.type.getType().getCategory();
    }

    public boolean isCategory1() {
        return this.type.getType().isCategory1();
    }

    public boolean isCategory2() {
        return this.type.getType().isCategory2();
    }

    public String regString() {
        return regString(this.reg);
    }

    public RegisterSpec intersect(RegisterSpec registerSpec, boolean z) {
        TypeBearer type;
        if (this != registerSpec) {
            if (registerSpec == null || this.reg != registerSpec.getReg()) {
                return null;
            }
            LocalItem localItem = this.local;
            LocalItem localItem2 = (localItem == null || !localItem.equals(registerSpec.getLocalItem())) ? null : this.local;
            boolean z2 = localItem2 == this.local;
            if ((z && !z2) || (type = getType()) != registerSpec.getType()) {
                return null;
            }
            if (this.type.equals(registerSpec.getTypeBearer())) {
                type = this.type;
            }
            if (type != this.type || !z2) {
                int i = this.reg;
                return localItem2 == null ? make(i, type) : make(i, type, localItem2);
            }
        }
        return this;
    }

    public RegisterSpec withReg(int i) {
        return this.reg == i ? this : makeLocalOptional(i, this.type, this.local);
    }

    public RegisterSpec withType(TypeBearer typeBearer) {
        return makeLocalOptional(this.reg, typeBearer, this.local);
    }

    public RegisterSpec withOffset(int i) {
        return i == 0 ? this : withReg(this.reg + i);
    }

    public RegisterSpec withSimpleType() {
        Type type;
        TypeBearer typeBearer = this.type;
        if (typeBearer instanceof Type) {
            type = (Type) typeBearer;
        } else {
            type = typeBearer.getType();
        }
        if (type.isUninitialized()) {
            type = type.getInitializedType();
        }
        return type == typeBearer ? this : makeLocalOptional(this.reg, type, this.local);
    }

    public RegisterSpec withLocalItem(LocalItem localItem) {
        LocalItem localItem2 = this.local;
        return (localItem2 == localItem || (localItem2 != null && localItem2.equals(localItem))) ? this : makeLocalOptional(this.reg, this.type, localItem);
    }

    public boolean isEvenRegister() {
        return (getReg() & 1) == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String toString0(boolean z) {
        StringBuilder sb = new StringBuilder(40);
        sb.append(regString());
        sb.append(":");
        LocalItem localItem = this.local;
        if (localItem != null) {
            sb.append(localItem.toString());
        }
        Type type = this.type.getType();
        sb.append(type);
        if (type != this.type) {
            sb.append("=");
            if (z) {
                TypeBearer typeBearer = this.type;
                if (typeBearer instanceof CstString) {
                    sb.append(((CstString) typeBearer).toQuoted());
                } else if (z) {
                    TypeBearer typeBearer2 = this.type;
                    if (typeBearer2 instanceof Constant) {
                        sb.append(typeBearer2.toHuman());
                    } else {
                        sb.append(this.type);
                    }
                }
            }
        }
        return sb.toString();
    }

    public static void clearInternTable() {
        theInterns.clear();
    }

    private static class ForComparison {
        private LocalItem local;
        private int reg;
        private TypeBearer type;

        private ForComparison() {
        }

        public void set(int i, TypeBearer typeBearer, LocalItem localItem) {
            this.reg = i;
            this.type = typeBearer;
            this.local = localItem;
        }

        public RegisterSpec toRegisterSpec() {
            return new RegisterSpec(this.reg, this.type, this.local);
        }

        public boolean equals(Object obj) {
            if (obj instanceof RegisterSpec) {
                return ((RegisterSpec) obj).equals(this.reg, this.type, this.local);
            }
            return false;
        }

        public int hashCode() {
            return RegisterSpec.hashCodeOf(this.reg, this.type, this.local);
        }
    }
}
