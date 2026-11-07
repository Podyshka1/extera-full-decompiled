package com.android.dex;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassData {
    private final Method[] directMethods;
    private final Field[] instanceFields;
    private final Field[] staticFields;
    private final Method[] virtualMethods;

    public ClassData(Field[] fieldArr, Field[] fieldArr2, Method[] methodArr, Method[] methodArr2) {
        this.staticFields = fieldArr;
        this.instanceFields = fieldArr2;
        this.directMethods = methodArr;
        this.virtualMethods = methodArr2;
    }

    public Field[] getStaticFields() {
        return this.staticFields;
    }

    public Field[] getInstanceFields() {
        return this.instanceFields;
    }

    public Method[] getDirectMethods() {
        return this.directMethods;
    }

    public Method[] getVirtualMethods() {
        return this.virtualMethods;
    }

    public Field[] allFields() {
        Field[] fieldArr = this.staticFields;
        Field[] fieldArr2 = new Field[fieldArr.length + this.instanceFields.length];
        System.arraycopy(fieldArr, 0, fieldArr2, 0, fieldArr.length);
        Field[] fieldArr3 = this.instanceFields;
        System.arraycopy(fieldArr3, 0, fieldArr2, this.staticFields.length, fieldArr3.length);
        return fieldArr2;
    }

    public Method[] allMethods() {
        Method[] methodArr = this.directMethods;
        Method[] methodArr2 = new Method[methodArr.length + this.virtualMethods.length];
        System.arraycopy(methodArr, 0, methodArr2, 0, methodArr.length);
        Method[] methodArr3 = this.virtualMethods;
        System.arraycopy(methodArr3, 0, methodArr2, this.directMethods.length, methodArr3.length);
        return methodArr2;
    }

    public static class Field {
        private final int accessFlags;
        private final int fieldIndex;

        public Field(int i, int i2) {
            this.fieldIndex = i;
            this.accessFlags = i2;
        }

        public int getFieldIndex() {
            return this.fieldIndex;
        }

        public int getAccessFlags() {
            return this.accessFlags;
        }
    }

    public static class Method {
        private final int accessFlags;
        private final int codeOffset;
        private final int methodIndex;

        public Method(int i, int i2, int i3) {
            this.methodIndex = i;
            this.accessFlags = i2;
            this.codeOffset = i3;
        }

        public int getMethodIndex() {
            return this.methodIndex;
        }

        public int getAccessFlags() {
            return this.accessFlags;
        }

        public int getCodeOffset() {
            return this.codeOffset;
        }
    }
}
