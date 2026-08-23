package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
final class ModuleWriter extends ModuleVisitor {
    private final ByteVector exports;
    private int exportsCount;
    private int mainClassIndex;
    private final int moduleFlags;
    private final int moduleNameIndex;
    private final int moduleVersionIndex;
    private final ByteVector opens;
    private int opensCount;
    private int packageCount;
    private final ByteVector packageIndex;
    private final ByteVector provides;
    private int providesCount;
    private final ByteVector requires;
    private int requiresCount;
    private final SymbolTable symbolTable;
    private int usesCount;
    private final ByteVector usesIndex;

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitEnd() {
    }

    ModuleWriter(SymbolTable symbolTable, int i, int i2, int i3) {
        super(Opcodes.ASM9);
        this.symbolTable = symbolTable;
        this.moduleNameIndex = i;
        this.moduleFlags = i2;
        this.moduleVersionIndex = i3;
        this.requires = new ByteVector();
        this.exports = new ByteVector();
        this.opens = new ByteVector();
        this.usesIndex = new ByteVector();
        this.provides = new ByteVector();
        this.packageIndex = new ByteVector();
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitMainClass(String str) {
        this.mainClassIndex = this.symbolTable.addConstantClass(str).index;
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitPackage(String str) {
        this.packageIndex.putShort(this.symbolTable.addConstantPackage(str).index);
        this.packageCount++;
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitRequire(String str, int i, String str2) {
        this.requires.putShort(this.symbolTable.addConstantModule(str).index).putShort(i).putShort(str2 == null ? 0 : this.symbolTable.addConstantUtf8(str2));
        this.requiresCount++;
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitExport(String str, int i, String... strArr) {
        this.exports.putShort(this.symbolTable.addConstantPackage(str).index).putShort(i);
        if (strArr == null) {
            this.exports.putShort(0);
        } else {
            this.exports.putShort(strArr.length);
            for (String str2 : strArr) {
                this.exports.putShort(this.symbolTable.addConstantModule(str2).index);
            }
        }
        this.exportsCount++;
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitOpen(String str, int i, String... strArr) {
        this.opens.putShort(this.symbolTable.addConstantPackage(str).index).putShort(i);
        if (strArr == null) {
            this.opens.putShort(0);
        } else {
            this.opens.putShort(strArr.length);
            for (String str2 : strArr) {
                this.opens.putShort(this.symbolTable.addConstantModule(str2).index);
            }
        }
        this.opensCount++;
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitUse(String str) {
        this.usesIndex.putShort(this.symbolTable.addConstantClass(str).index);
        this.usesCount++;
    }

    @Override // org.mvel2.asm.ModuleVisitor
    public void visitProvide(String str, String... strArr) {
        this.provides.putShort(this.symbolTable.addConstantClass(str).index);
        this.provides.putShort(strArr.length);
        for (String str2 : strArr) {
            this.provides.putShort(this.symbolTable.addConstantClass(str2).index);
        }
        this.providesCount++;
    }

    int getAttributeCount() {
        return (this.packageCount > 0 ? 1 : 0) + 1 + (this.mainClassIndex > 0 ? 1 : 0);
    }

    int computeAttributesSize() {
        this.symbolTable.addConstantUtf8("Module");
        int i = this.requires.length + 22 + this.exports.length + this.opens.length + this.usesIndex.length + this.provides.length;
        if (this.packageCount > 0) {
            this.symbolTable.addConstantUtf8("ModulePackages");
            i += this.packageIndex.length + 8;
        }
        if (this.mainClassIndex <= 0) {
            return i;
        }
        this.symbolTable.addConstantUtf8("ModuleMainClass");
        return i + 8;
    }

    void putAttributes(ByteVector byteVector) {
        ByteVector byteVectorPutShort = byteVector.putShort(this.symbolTable.addConstantUtf8("Module")).putInt(this.requires.length + 16 + this.exports.length + this.opens.length + this.usesIndex.length + this.provides.length).putShort(this.moduleNameIndex).putShort(this.moduleFlags).putShort(this.moduleVersionIndex).putShort(this.requiresCount);
        ByteVector byteVector2 = this.requires;
        ByteVector byteVectorPutShort2 = byteVectorPutShort.putByteArray(byteVector2.data, 0, byteVector2.length).putShort(this.exportsCount);
        ByteVector byteVector3 = this.exports;
        ByteVector byteVectorPutShort3 = byteVectorPutShort2.putByteArray(byteVector3.data, 0, byteVector3.length).putShort(this.opensCount);
        ByteVector byteVector4 = this.opens;
        ByteVector byteVectorPutShort4 = byteVectorPutShort3.putByteArray(byteVector4.data, 0, byteVector4.length).putShort(this.usesCount);
        ByteVector byteVector5 = this.usesIndex;
        ByteVector byteVectorPutShort5 = byteVectorPutShort4.putByteArray(byteVector5.data, 0, byteVector5.length).putShort(this.providesCount);
        ByteVector byteVector6 = this.provides;
        byteVectorPutShort5.putByteArray(byteVector6.data, 0, byteVector6.length);
        if (this.packageCount > 0) {
            ByteVector byteVectorPutShort6 = byteVector.putShort(this.symbolTable.addConstantUtf8("ModulePackages")).putInt(this.packageIndex.length + 2).putShort(this.packageCount);
            ByteVector byteVector7 = this.packageIndex;
            byteVectorPutShort6.putByteArray(byteVector7.data, 0, byteVector7.length);
        }
        if (this.mainClassIndex > 0) {
            byteVector.putShort(this.symbolTable.addConstantUtf8("ModuleMainClass")).putInt(2).putShort(this.mainClassIndex);
        }
    }
}
