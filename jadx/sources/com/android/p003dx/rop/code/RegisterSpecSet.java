package com.android.p003dx.rop.code;

import com.android.p003dx.util.MutabilityControl;

/* JADX INFO: loaded from: classes4.dex */
public final class RegisterSpecSet extends MutabilityControl {
    public static final RegisterSpecSet EMPTY = new RegisterSpecSet(0);
    private int size;
    private final RegisterSpec[] specs;

    public RegisterSpecSet(int i) {
        super(i != 0);
        this.specs = new RegisterSpec[i];
        this.size = 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RegisterSpecSet)) {
            return false;
        }
        RegisterSpecSet registerSpecSet = (RegisterSpecSet) obj;
        RegisterSpec[] registerSpecArr = registerSpecSet.specs;
        int length = this.specs.length;
        if (length != registerSpecArr.length || size() != registerSpecSet.size()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            RegisterSpec registerSpec = this.specs[i];
            Object obj2 = registerSpecArr[i];
            if (registerSpec != obj2 && (registerSpec == null || !registerSpec.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int length = this.specs.length;
        int iHashCode = 0;
        for (int i = 0; i < length; i++) {
            RegisterSpec registerSpec = this.specs[i];
            iHashCode = (iHashCode * 31) + (registerSpec == null ? 0 : registerSpec.hashCode());
        }
        return iHashCode;
    }

    public String toString() {
        int length = this.specs.length;
        StringBuilder sb = new StringBuilder(length * 25);
        sb.append('{');
        boolean z = false;
        for (int i = 0; i < length; i++) {
            RegisterSpec registerSpec = this.specs[i];
            if (registerSpec != null) {
                if (z) {
                    sb.append(", ");
                } else {
                    z = true;
                }
                sb.append(registerSpec);
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public int getMaxSize() {
        return this.specs.length;
    }

    public int size() {
        int i = this.size;
        if (i >= 0) {
            return i;
        }
        int length = this.specs.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (this.specs[i3] != null) {
                i2++;
            }
        }
        this.size = i2;
        return i2;
    }

    public RegisterSpec get(int i) {
        try {
            return this.specs[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public RegisterSpec get(RegisterSpec registerSpec) {
        return get(registerSpec.getReg());
    }

    public RegisterSpec findMatchingLocal(RegisterSpec registerSpec) {
        int length = this.specs.length;
        for (int i = 0; i < length; i++) {
            RegisterSpec registerSpec2 = this.specs[i];
            if (registerSpec2 != null && registerSpec.matchesVariable(registerSpec2)) {
                return registerSpec2;
            }
        }
        return null;
    }

    public RegisterSpec localItemToSpec(LocalItem localItem) {
        int length = this.specs.length;
        for (int i = 0; i < length; i++) {
            RegisterSpec registerSpec = this.specs[i];
            if (registerSpec != null && localItem.equals(registerSpec.getLocalItem())) {
                return registerSpec;
            }
        }
        return null;
    }

    public void remove(RegisterSpec registerSpec) {
        try {
            this.specs[registerSpec.getReg()] = null;
            this.size = -1;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public void put(RegisterSpec registerSpec) {
        int i;
        RegisterSpec registerSpec2;
        throwIfImmutable();
        if (registerSpec == null) {
            throw new NullPointerException("spec == null");
        }
        this.size = -1;
        try {
            int reg = registerSpec.getReg();
            RegisterSpec[] registerSpecArr = this.specs;
            registerSpecArr[reg] = registerSpec;
            if (reg > 0 && (registerSpec2 = registerSpecArr[reg - 1]) != null && registerSpec2.getCategory() == 2) {
                this.specs[i] = null;
            }
            if (registerSpec.getCategory() == 2) {
                this.specs[reg + 1] = null;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("spec.getReg() out of range");
        }
    }

    public void putAll(RegisterSpecSet registerSpecSet) {
        int maxSize = registerSpecSet.getMaxSize();
        for (int i = 0; i < maxSize; i++) {
            RegisterSpec registerSpec = registerSpecSet.get(i);
            if (registerSpec != null) {
                put(registerSpec);
            }
        }
    }

    public void intersect(RegisterSpecSet registerSpecSet, boolean z) {
        RegisterSpec registerSpecIntersect;
        throwIfImmutable();
        RegisterSpec[] registerSpecArr = registerSpecSet.specs;
        int length = this.specs.length;
        int iMin = Math.min(length, registerSpecArr.length);
        this.size = -1;
        for (int i = 0; i < iMin; i++) {
            RegisterSpec registerSpec = this.specs[i];
            if (registerSpec != null && (registerSpecIntersect = registerSpec.intersect(registerSpecArr[i], z)) != registerSpec) {
                this.specs[i] = registerSpecIntersect;
            }
        }
        while (iMin < length) {
            this.specs[iMin] = null;
            iMin++;
        }
    }

    public RegisterSpecSet withOffset(int i) {
        int length = this.specs.length;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(length + i);
        for (int i2 = 0; i2 < length; i2++) {
            RegisterSpec registerSpec = this.specs[i2];
            if (registerSpec != null) {
                registerSpecSet.put(registerSpec.withOffset(i));
            }
        }
        registerSpecSet.size = this.size;
        if (isImmutable()) {
            registerSpecSet.setImmutable();
        }
        return registerSpecSet;
    }

    public RegisterSpecSet mutableCopy() {
        int length = this.specs.length;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(length);
        for (int i = 0; i < length; i++) {
            RegisterSpec registerSpec = this.specs[i];
            if (registerSpec != null) {
                registerSpecSet.put(registerSpec);
            }
        }
        registerSpecSet.size = this.size;
        return registerSpecSet;
    }
}
