package com.android.p003dx.p006io;

import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.FieldId;
import com.android.dex.MethodId;
import com.android.dex.ProtoId;
import com.android.dex.TableOfContents;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public final class DexIndexPrinter {
    private final Dex dex;
    private final TableOfContents tableOfContents;

    public DexIndexPrinter(File file) {
        Dex dex = new Dex(file);
        this.dex = dex;
        this.tableOfContents = dex.getTableOfContents();
    }

    private void printMap() {
        for (TableOfContents.Section section : this.tableOfContents.sections) {
            if (section.off != -1) {
                System.out.println("section " + Integer.toHexString(section.type) + " off=" + Integer.toHexString(section.off) + " size=" + Integer.toHexString(section.size) + " byteCount=" + Integer.toHexString(section.byteCount));
            }
        }
    }

    private void printStrings() {
        int i = 0;
        for (String str : this.dex.strings()) {
            System.out.println("string " + i + ": " + str);
            i++;
        }
    }

    private void printTypeIds() {
        int i = 0;
        for (Integer num : this.dex.typeIds()) {
            System.out.println("type " + i + ": " + ((String) this.dex.strings().get(num.intValue())));
            i++;
        }
    }

    private void printProtoIds() {
        int i = 0;
        for (ProtoId protoId : this.dex.protoIds()) {
            System.out.println("proto " + i + ": " + protoId);
            i++;
        }
    }

    private void printFieldIds() {
        int i = 0;
        for (FieldId fieldId : this.dex.fieldIds()) {
            System.out.println("field " + i + ": " + fieldId);
            i++;
        }
    }

    private void printMethodIds() {
        int i = 0;
        for (MethodId methodId : this.dex.methodIds()) {
            System.out.println("methodId " + i + ": " + methodId);
            i++;
        }
    }

    private void printTypeLists() {
        int i = this.tableOfContents.typeLists.off;
        if (i == -1) {
            System.out.println("No type lists");
            return;
        }
        Dex.Section sectionOpen = this.dex.open(i);
        for (int i2 = 0; i2 < this.tableOfContents.typeLists.size; i2++) {
            int i3 = sectionOpen.readInt();
            System.out.print("Type list i=" + i2 + ", size=" + i3 + ", elements=");
            for (int i4 = 0; i4 < i3; i4++) {
                System.out.print(" " + ((String) this.dex.typeNames().get(sectionOpen.readShort())));
            }
            if (i3 % 2 == 1) {
                sectionOpen.readShort();
            }
            System.out.println();
        }
    }

    private void printClassDefs() {
        int i = 0;
        for (ClassDef classDef : this.dex.classDefs()) {
            System.out.println("class def " + i + ": " + classDef);
            i++;
        }
    }

    public static void main(String[] strArr) {
        DexIndexPrinter dexIndexPrinter = new DexIndexPrinter(new File(strArr[0]));
        dexIndexPrinter.printMap();
        dexIndexPrinter.printStrings();
        dexIndexPrinter.printTypeIds();
        dexIndexPrinter.printProtoIds();
        dexIndexPrinter.printFieldIds();
        dexIndexPrinter.printMethodIds();
        dexIndexPrinter.printTypeLists();
        dexIndexPrinter.printClassDefs();
    }
}
