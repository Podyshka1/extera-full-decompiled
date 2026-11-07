package org.mvel2.asm;

import com.android.dx.cf.attrib.AttDeprecated;
import com.android.dx.cf.attrib.AttSignature;
import com.android.dx.cf.attrib.AttSynthetic;

/* JADX INFO: loaded from: classes5.dex */
public class Attribute {
    private byte[] content;
    Attribute nextAttribute;
    public final String type;

    public boolean isCodeAttribute() {
        return false;
    }

    public boolean isUnknown() {
        return true;
    }

    public Attribute(String str) {
        this.type = str;
    }

    public Label[] getLabels() {
        return new Label[0];
    }

    public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
        Attribute attribute = new Attribute(this.type);
        byte[] bArr = new byte[i2];
        attribute.content = bArr;
        System.arraycopy(classReader.classFileBuffer, i, bArr, 0, i2);
        return attribute;
    }

    public ByteVector write(ClassWriter classWriter, byte[] bArr, int i, int i2, int i3) {
        return new ByteVector(this.content);
    }

    public final int getAttributeCount() {
        int i = 0;
        while (this != null) {
            i++;
            this = this.nextAttribute;
        }
        return i;
    }

    public final int computeAttributesSize(SymbolTable symbolTable) {
        return computeAttributesSize(symbolTable, null, 0, -1, -1);
    }

    public final int computeAttributesSize(SymbolTable symbolTable, byte[] bArr, int i, int i2, int i3) {
        ClassWriter classWriter = symbolTable.classWriter;
        Attribute attribute = this;
        int i4 = 0;
        while (attribute != null) {
            symbolTable.addConstantUtf8(attribute.type);
            byte[] bArr2 = bArr;
            i4 += attribute.write(classWriter, bArr2, i, i2, i3).length + 6;
            attribute = attribute.nextAttribute;
            bArr = bArr2;
        }
        return i4;
    }

    public static int computeAttributesSize(SymbolTable symbolTable, int i, int i2) {
        int i3;
        if ((i & 4096) == 0 || symbolTable.getMajorVersion() >= 49) {
            i3 = 0;
        } else {
            symbolTable.addConstantUtf8(AttSynthetic.ATTRIBUTE_NAME);
            i3 = 6;
        }
        if (i2 != 0) {
            symbolTable.addConstantUtf8(AttSignature.ATTRIBUTE_NAME);
            i3 += 8;
        }
        if ((i & 131072) == 0) {
            return i3;
        }
        symbolTable.addConstantUtf8(AttDeprecated.ATTRIBUTE_NAME);
        return i3 + 6;
    }

    public final void putAttributes(SymbolTable symbolTable, ByteVector byteVector) {
        putAttributes(symbolTable, null, 0, -1, -1, byteVector);
    }

    public final void putAttributes(SymbolTable symbolTable, byte[] bArr, int i, int i2, int i3, ByteVector byteVector) {
        ClassWriter classWriter = symbolTable.classWriter;
        Attribute attribute = this;
        while (attribute != null) {
            byte[] bArr2 = bArr;
            int i4 = i;
            ByteVector byteVectorWrite = attribute.write(classWriter, bArr2, i4, i2, i3);
            byteVector.putShort(symbolTable.addConstantUtf8(attribute.type)).putInt(byteVectorWrite.length);
            byteVector.putByteArray(byteVectorWrite.data, 0, byteVectorWrite.length);
            attribute = attribute.nextAttribute;
            bArr = bArr2;
            i = i4;
        }
    }

    public static void putAttributes(SymbolTable symbolTable, int i, int i2, ByteVector byteVector) {
        if ((i & 4096) != 0 && symbolTable.getMajorVersion() < 49) {
            byteVector.putShort(symbolTable.addConstantUtf8(AttSynthetic.ATTRIBUTE_NAME)).putInt(0);
        }
        if (i2 != 0) {
            byteVector.putShort(symbolTable.addConstantUtf8(AttSignature.ATTRIBUTE_NAME)).putInt(2).putShort(i2);
        }
        if ((i & 131072) != 0) {
            byteVector.putShort(symbolTable.addConstantUtf8(AttDeprecated.ATTRIBUTE_NAME)).putInt(0);
        }
    }

    public static final class Set {
        private static final int SIZE_INCREMENT = 6;
        private Attribute[] data = new Attribute[6];
        private int size;

        public void addAttributes(Attribute attribute) {
            while (attribute != null) {
                if (!contains(attribute)) {
                    add(attribute);
                }
                attribute = attribute.nextAttribute;
            }
        }

        public Attribute[] toArray() {
            int i = this.size;
            Attribute[] attributeArr = new Attribute[i];
            System.arraycopy(this.data, 0, attributeArr, 0, i);
            return attributeArr;
        }

        private boolean contains(Attribute attribute) {
            for (int i = 0; i < this.size; i++) {
                if (this.data[i].type.equals(attribute.type)) {
                    return true;
                }
            }
            return false;
        }

        private void add(Attribute attribute) {
            int i = this.size;
            Attribute[] attributeArr = this.data;
            if (i >= attributeArr.length) {
                Attribute[] attributeArr2 = new Attribute[attributeArr.length + 6];
                System.arraycopy(attributeArr, 0, attributeArr2, 0, i);
                this.data = attributeArr2;
            }
            Attribute[] attributeArr3 = this.data;
            int i2 = this.size;
            this.size = i2 + 1;
            attributeArr3[i2] = attribute;
        }
    }
}
