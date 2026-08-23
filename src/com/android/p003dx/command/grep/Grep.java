package com.android.p003dx.command.grep;

import com.android.dex.ClassData;
import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.EncodedValueReader;
import com.android.dex.MethodId;
import com.android.p003dx.p006io.CodeReader;
import com.android.p003dx.p006io.instructions.DecodedInstruction;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class Grep {
    private final CodeReader codeReader;
    private int count;
    private ClassDef currentClass;
    private ClassData.Method currentMethod;
    private final Dex dex;
    private final PrintWriter out;
    private final Set<Integer> stringIds;

    public Grep(Dex dex, Pattern pattern, PrintWriter printWriter) {
        CodeReader codeReader = new CodeReader();
        this.codeReader = codeReader;
        this.count = 0;
        this.dex = dex;
        this.out = printWriter;
        this.stringIds = getStringIds(dex, pattern);
        codeReader.setStringVisitor(new CodeReader.Visitor() { // from class: com.android.dx.command.grep.Grep.1
            @Override // com.android.dx.io.CodeReader.Visitor
            public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
                Grep.this.encounterString(decodedInstruction.getIndex());
            }
        });
    }

    private void readArray(EncodedValueReader encodedValueReader) {
        int array = encodedValueReader.readArray();
        for (int i = 0; i < array; i++) {
            int iPeek = encodedValueReader.peek();
            if (iPeek == 23) {
                encounterString(encodedValueReader.readString());
            } else if (iPeek == 28) {
                readArray(encodedValueReader);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void encounterString(int i) {
        if (this.stringIds.contains(Integer.valueOf(i))) {
            this.out.println(location() + " " + ((String) this.dex.strings().get(i)));
            this.count = this.count + 1;
        }
    }

    private String location() {
        String str = (String) this.dex.typeNames().get(this.currentClass.getTypeIndex());
        if (this.currentMethod == null) {
            return str;
        }
        return str + "." + ((String) this.dex.strings().get(((MethodId) this.dex.methodIds().get(this.currentMethod.getMethodIndex())).getNameIndex()));
    }

    public int grep() {
        for (ClassDef classDef : this.dex.classDefs()) {
            this.currentClass = classDef;
            this.currentMethod = null;
            if (classDef.getClassDataOffset() != 0) {
                ClassData classData = this.dex.readClassData(classDef);
                int staticValuesOffset = classDef.getStaticValuesOffset();
                if (staticValuesOffset != 0) {
                    readArray(new EncodedValueReader(this.dex.open(staticValuesOffset)));
                }
                for (ClassData.Method method : classData.allMethods()) {
                    this.currentMethod = method;
                    if (method.getCodeOffset() != 0) {
                        this.codeReader.visitAll(this.dex.readCode(method).getInstructions());
                    }
                }
            }
        }
        this.currentClass = null;
        this.currentMethod = null;
        return this.count;
    }

    private Set<Integer> getStringIds(Dex dex, Pattern pattern) {
        HashSet hashSet = new HashSet();
        Iterator it = dex.strings().iterator();
        int i = 0;
        while (it.hasNext()) {
            if (pattern.matcher((String) it.next()).find()) {
                hashSet.add(Integer.valueOf(i));
            }
            i++;
        }
        return hashSet;
    }
}
