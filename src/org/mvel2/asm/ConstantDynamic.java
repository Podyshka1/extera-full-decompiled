package org.mvel2.asm;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class ConstantDynamic {
    private final Handle bootstrapMethod;
    private final Object[] bootstrapMethodArguments;
    private final String descriptor;
    private final String name;

    public ConstantDynamic(String str, String str2, Handle handle, Object... objArr) {
        this.name = str;
        this.descriptor = str2;
        this.bootstrapMethod = handle;
        this.bootstrapMethodArguments = objArr;
    }

    public String getName() {
        return this.name;
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    public Handle getBootstrapMethod() {
        return this.bootstrapMethod;
    }

    public int getBootstrapMethodArgumentCount() {
        return this.bootstrapMethodArguments.length;
    }

    public Object getBootstrapMethodArgument(int i) {
        return this.bootstrapMethodArguments[i];
    }

    public Object[] getBootstrapMethodArgumentsUnsafe() {
        return this.bootstrapMethodArguments;
    }

    public int getSize() {
        char cCharAt = this.descriptor.charAt(0);
        return (cCharAt == 'J' || cCharAt == 'D') ? 2 : 1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConstantDynamic)) {
            return false;
        }
        ConstantDynamic constantDynamic = (ConstantDynamic) obj;
        return this.name.equals(constantDynamic.name) && this.descriptor.equals(constantDynamic.descriptor) && this.bootstrapMethod.equals(constantDynamic.bootstrapMethod) && Arrays.equals(this.bootstrapMethodArguments, constantDynamic.bootstrapMethodArguments);
    }

    public int hashCode() {
        return Integer.rotateLeft(Arrays.hashCode(this.bootstrapMethodArguments), 24) ^ ((this.name.hashCode() ^ Integer.rotateLeft(this.descriptor.hashCode(), 8)) ^ Integer.rotateLeft(this.bootstrapMethod.hashCode(), 16));
    }

    public String toString() {
        return this.name + " : " + this.descriptor + ' ' + this.bootstrapMethod + ' ' + Arrays.toString(this.bootstrapMethodArguments);
    }
}
