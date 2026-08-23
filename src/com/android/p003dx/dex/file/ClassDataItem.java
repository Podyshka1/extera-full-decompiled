package com.android.p003dx.dex.file;

import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstArray;
import com.android.p003dx.rop.cst.CstLiteralBits;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.cst.Zeroes;
import com.android.p003dx.util.AnnotatedOutput;
import com.android.p003dx.util.ByteArrayAnnotatedOutput;
import com.android.p003dx.util.Writers;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassDataItem extends OffsettedItem {
    private final ArrayList<EncodedMethod> directMethods;
    private byte[] encodedForm;
    private final ArrayList<EncodedField> instanceFields;
    private final ArrayList<EncodedField> staticFields;
    private final HashMap<EncodedField, Constant> staticValues;
    private CstArray staticValuesConstant;
    private final CstType thisClass;
    private final ArrayList<EncodedMethod> virtualMethods;

    public ClassDataItem(CstType cstType) {
        super(1, -1);
        if (cstType == null) {
            throw new NullPointerException("thisClass == null");
        }
        this.thisClass = cstType;
        this.staticFields = new ArrayList<>(20);
        this.staticValues = new HashMap<>(40);
        this.instanceFields = new ArrayList<>(20);
        this.directMethods = new ArrayList<>(20);
        this.virtualMethods = new ArrayList<>(20);
        this.staticValuesConstant = null;
    }

    @Override // com.android.p003dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CLASS_DATA_ITEM;
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public String toHuman() {
        return toString();
    }

    public boolean isEmpty() {
        return this.staticFields.isEmpty() && this.instanceFields.isEmpty() && this.directMethods.isEmpty() && this.virtualMethods.isEmpty();
    }

    public void addStaticField(EncodedField encodedField, Constant constant) {
        if (encodedField == null) {
            throw new NullPointerException("field == null");
        }
        if (this.staticValuesConstant != null) {
            throw new UnsupportedOperationException("static fields already sorted");
        }
        this.staticFields.add(encodedField);
        this.staticValues.put(encodedField, constant);
    }

    public void addInstanceField(EncodedField encodedField) {
        if (encodedField == null) {
            throw new NullPointerException("field == null");
        }
        this.instanceFields.add(encodedField);
    }

    public void addDirectMethod(EncodedMethod encodedMethod) {
        if (encodedMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.directMethods.add(encodedMethod);
    }

    public void addVirtualMethod(EncodedMethod encodedMethod) {
        if (encodedMethod == null) {
            throw new NullPointerException("method == null");
        }
        this.virtualMethods.add(encodedMethod);
    }

    public ArrayList<EncodedMethod> getMethods() {
        ArrayList<EncodedMethod> arrayList = new ArrayList<>(this.directMethods.size() + this.virtualMethods.size());
        arrayList.addAll(this.directMethods);
        arrayList.addAll(this.virtualMethods);
        return arrayList;
    }

    public void debugPrint(Writer writer, boolean z) {
        PrintWriter printWriterPrintWriterFor = Writers.printWriterFor(writer);
        int size = this.staticFields.size();
        for (int i = 0; i < size; i++) {
            printWriterPrintWriterFor.println("  sfields[" + i + "]: " + this.staticFields.get(i));
        }
        int size2 = this.instanceFields.size();
        for (int i2 = 0; i2 < size2; i2++) {
            printWriterPrintWriterFor.println("  ifields[" + i2 + "]: " + this.instanceFields.get(i2));
        }
        int size3 = this.directMethods.size();
        for (int i3 = 0; i3 < size3; i3++) {
            printWriterPrintWriterFor.println("  dmeths[" + i3 + "]:");
            this.directMethods.get(i3).debugPrint(printWriterPrintWriterFor, z);
        }
        int size4 = this.virtualMethods.size();
        for (int i4 = 0; i4 < size4; i4++) {
            printWriterPrintWriterFor.println("  vmeths[" + i4 + "]:");
            this.virtualMethods.get(i4).debugPrint(printWriterPrintWriterFor, z);
        }
    }

    @Override // com.android.p003dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        int i = 0;
        if (!this.staticFields.isEmpty()) {
            getStaticValuesConstant();
            ArrayList<EncodedField> arrayList = this.staticFields;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                EncodedField encodedField = arrayList.get(i2);
                i2++;
                encodedField.addContents(dexFile);
            }
        }
        if (!this.instanceFields.isEmpty()) {
            Collections.sort(this.instanceFields);
            ArrayList<EncodedField> arrayList2 = this.instanceFields;
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                EncodedField encodedField2 = arrayList2.get(i3);
                i3++;
                encodedField2.addContents(dexFile);
            }
        }
        if (!this.directMethods.isEmpty()) {
            Collections.sort(this.directMethods);
            ArrayList<EncodedMethod> arrayList3 = this.directMethods;
            int size3 = arrayList3.size();
            int i4 = 0;
            while (i4 < size3) {
                EncodedMethod encodedMethod = arrayList3.get(i4);
                i4++;
                encodedMethod.addContents(dexFile);
            }
        }
        if (this.virtualMethods.isEmpty()) {
            return;
        }
        Collections.sort(this.virtualMethods);
        ArrayList<EncodedMethod> arrayList4 = this.virtualMethods;
        int size4 = arrayList4.size();
        while (i < size4) {
            EncodedMethod encodedMethod2 = arrayList4.get(i);
            i++;
            encodedMethod2.addContents(dexFile);
        }
    }

    public CstArray getStaticValuesConstant() {
        if (this.staticValuesConstant == null && this.staticFields.size() != 0) {
            this.staticValuesConstant = makeStaticValuesConstant();
        }
        return this.staticValuesConstant;
    }

    private CstArray makeStaticValuesConstant() {
        Collections.sort(this.staticFields);
        int size = this.staticFields.size();
        while (size > 0) {
            Constant constant = this.staticValues.get(this.staticFields.get(size - 1));
            if (constant instanceof CstLiteralBits) {
                if (((CstLiteralBits) constant).getLongBits() != 0) {
                    break;
                }
                size--;
            } else {
                if (constant != null) {
                    break;
                }
                size--;
            }
        }
        if (size == 0) {
            return null;
        }
        CstArray.List list = new CstArray.List(size);
        for (int i = 0; i < size; i++) {
            EncodedField encodedField = this.staticFields.get(i);
            Constant constantZeroFor = this.staticValues.get(encodedField);
            if (constantZeroFor == null) {
                constantZeroFor = Zeroes.zeroFor(encodedField.getRef().getType());
            }
            list.set(i, constantZeroFor);
        }
        list.setImmutable();
        return new CstArray(list);
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    protected void place0(Section section, int i) {
        ByteArrayAnnotatedOutput byteArrayAnnotatedOutput = new ByteArrayAnnotatedOutput();
        encodeOutput(section.getFile(), byteArrayAnnotatedOutput);
        byte[] byteArray = byteArrayAnnotatedOutput.toByteArray();
        this.encodedForm = byteArray;
        setWriteSize(byteArray.length);
    }

    private void encodeOutput(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        boolean zAnnotates = annotatedOutput.annotates();
        if (zAnnotates) {
            annotatedOutput.annotate(0, offsetString() + " class data for " + this.thisClass.toHuman());
        }
        encodeSize(dexFile, annotatedOutput, "static_fields", this.staticFields.size());
        encodeSize(dexFile, annotatedOutput, "instance_fields", this.instanceFields.size());
        encodeSize(dexFile, annotatedOutput, "direct_methods", this.directMethods.size());
        encodeSize(dexFile, annotatedOutput, "virtual_methods", this.virtualMethods.size());
        encodeList(dexFile, annotatedOutput, "static_fields", this.staticFields);
        encodeList(dexFile, annotatedOutput, "instance_fields", this.instanceFields);
        encodeList(dexFile, annotatedOutput, "direct_methods", this.directMethods);
        encodeList(dexFile, annotatedOutput, "virtual_methods", this.virtualMethods);
        if (zAnnotates) {
            annotatedOutput.endAnnotation();
        }
    }

    private static void encodeSize(DexFile dexFile, AnnotatedOutput annotatedOutput, String str, int i) {
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(String.format("  %-21s %08x", str + "_size:", Integer.valueOf(i)));
        }
        annotatedOutput.writeUleb128(i);
    }

    private static void encodeList(DexFile dexFile, AnnotatedOutput annotatedOutput, String str, ArrayList<? extends EncodedMember> arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, "  " + str + ":");
        }
        int iEncode = 0;
        for (int i = 0; i < size; i++) {
            iEncode = arrayList.get(i).encode(dexFile, annotatedOutput, iEncode, i);
        }
    }

    @Override // com.android.p003dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        if (annotatedOutput.annotates()) {
            encodeOutput(dexFile, annotatedOutput);
        } else {
            annotatedOutput.write(this.encodedForm);
        }
    }
}
