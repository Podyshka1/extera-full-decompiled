package com.android.p003dx.command.findusages;

import com.android.dex.ClassData;
import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.FieldId;
import com.android.dex.MethodId;
import com.android.p003dx.p006io.CodeReader;
import com.android.p003dx.p006io.OpcodeInfo;
import com.android.p003dx.p006io.instructions.DecodedInstruction;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class FindUsages {
    private final CodeReader codeReader = new CodeReader();
    private ClassDef currentClass;
    private ClassData.Method currentMethod;
    private final Dex dex;
    private final Set<Integer> fieldIds;
    private final Set<Integer> methodIds;
    private final PrintWriter out;

    public FindUsages(final Dex dex, String str, String str2, final PrintWriter printWriter) {
        this.dex = dex;
        this.out = printWriter;
        HashSet<Integer> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Pattern patternCompile = Pattern.compile(str);
        Pattern patternCompile2 = Pattern.compile(str2);
        List listStrings = dex.strings();
        for (int i = 0; i < listStrings.size(); i++) {
            String str3 = (String) listStrings.get(i);
            if (patternCompile.matcher(str3).matches()) {
                hashSet.add(Integer.valueOf(i));
            }
            if (patternCompile2.matcher(str3).matches()) {
                hashSet2.add(Integer.valueOf(i));
            }
        }
        if (hashSet.isEmpty() || hashSet2.isEmpty()) {
            this.fieldIds = null;
            this.methodIds = null;
            return;
        }
        this.methodIds = new HashSet();
        this.fieldIds = new HashSet();
        for (Integer num : hashSet) {
            num.intValue();
            int iBinarySearch = Collections.binarySearch(dex.typeIds(), num);
            if (iBinarySearch >= 0) {
                this.methodIds.addAll(getMethodIds(dex, hashSet2, iBinarySearch));
                this.fieldIds.addAll(getFieldIds(dex, hashSet2, iBinarySearch));
            }
        }
        this.codeReader.setFieldVisitor(new CodeReader.Visitor() { // from class: com.android.dx.command.findusages.FindUsages.1
            @Override // com.android.dx.io.CodeReader.Visitor
            public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
                int index = decodedInstruction.getIndex();
                if (FindUsages.this.fieldIds.contains(Integer.valueOf(index))) {
                    printWriter.println(FindUsages.this.location() + ": field reference " + dex.fieldIds().get(index) + " (" + OpcodeInfo.getName(decodedInstruction.getOpcode()) + ")");
                }
            }
        });
        this.codeReader.setMethodVisitor(new CodeReader.Visitor() { // from class: com.android.dx.command.findusages.FindUsages.2
            @Override // com.android.dx.io.CodeReader.Visitor
            public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
                int index = decodedInstruction.getIndex();
                if (FindUsages.this.methodIds.contains(Integer.valueOf(index))) {
                    printWriter.println(FindUsages.this.location() + ": method reference " + dex.methodIds().get(index) + " (" + OpcodeInfo.getName(decodedInstruction.getOpcode()) + ")");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String location() {
        String str = (String) this.dex.typeNames().get(this.currentClass.getTypeIndex());
        if (this.currentMethod == null) {
            return str;
        }
        return str + "." + ((String) this.dex.strings().get(((MethodId) this.dex.methodIds().get(this.currentMethod.getMethodIndex())).getNameIndex()));
    }

    public void findUsages() {
        if (this.fieldIds == null || this.methodIds == null) {
            return;
        }
        for (ClassDef classDef : this.dex.classDefs()) {
            this.currentClass = classDef;
            this.currentMethod = null;
            if (classDef.getClassDataOffset() != 0) {
                ClassData classData = this.dex.readClassData(classDef);
                for (ClassData.Field field : classData.allFields()) {
                    int fieldIndex = field.getFieldIndex();
                    if (this.fieldIds.contains(Integer.valueOf(fieldIndex))) {
                        this.out.println(location() + " field declared " + this.dex.fieldIds().get(fieldIndex));
                    }
                }
                for (ClassData.Method method : classData.allMethods()) {
                    this.currentMethod = method;
                    int methodIndex = method.getMethodIndex();
                    if (this.methodIds.contains(Integer.valueOf(methodIndex))) {
                        this.out.println(location() + " method declared " + this.dex.methodIds().get(methodIndex));
                    }
                    if (method.getCodeOffset() != 0) {
                        this.codeReader.visitAll(this.dex.readCode(method).getInstructions());
                    }
                }
            }
        }
        this.currentClass = null;
        this.currentMethod = null;
    }

    private Set<Integer> getFieldIds(Dex dex, Set<Integer> set, int i) {
        HashSet hashSet = new HashSet();
        int i2 = 0;
        for (FieldId fieldId : dex.fieldIds()) {
            if (set.contains(Integer.valueOf(fieldId.getNameIndex())) && i == fieldId.getDeclaringClassIndex()) {
                hashSet.add(Integer.valueOf(i2));
            }
            i2++;
        }
        return hashSet;
    }

    private Set<Integer> getMethodIds(Dex dex, Set<Integer> set, int i) {
        Set<Integer> setFindAssignableTypes = findAssignableTypes(dex, i);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        for (MethodId methodId : dex.methodIds()) {
            if (set.contains(Integer.valueOf(methodId.getNameIndex())) && setFindAssignableTypes.contains(Integer.valueOf(methodId.getDeclaringClassIndex()))) {
                hashSet.add(Integer.valueOf(i2));
            }
            i2++;
        }
        return hashSet;
    }

    private Set<Integer> findAssignableTypes(Dex dex, int i) {
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(i));
        for (ClassDef classDef : dex.classDefs()) {
            if (hashSet.contains(Integer.valueOf(classDef.getSupertypeIndex()))) {
                hashSet.add(Integer.valueOf(classDef.getTypeIndex()));
            } else {
                short[] interfaces = classDef.getInterfaces();
                int length = interfaces.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (hashSet.contains(Integer.valueOf(interfaces[i2]))) {
                        hashSet.add(Integer.valueOf(classDef.getTypeIndex()));
                        break;
                    }
                    i2++;
                }
            }
        }
        return hashSet;
    }
}
