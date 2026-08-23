package com.android.p003dx.merge;

import com.android.dex.DexIndexOverflowException;
import com.android.p003dx.p006io.CodeReader;
import com.android.p003dx.p006io.instructions.DecodedInstruction;
import com.android.p003dx.p006io.instructions.ShortArrayCodeOutput;

/* JADX INFO: loaded from: classes4.dex */
final class InstructionTransformer {
    private IndexMap indexMap;
    private int mappedAt;
    private DecodedInstruction[] mappedInstructions;
    private final CodeReader reader;

    static /* synthetic */ int access$808(InstructionTransformer instructionTransformer) {
        int i = instructionTransformer.mappedAt;
        instructionTransformer.mappedAt = i + 1;
        return i;
    }

    public InstructionTransformer() {
        CodeReader codeReader = new CodeReader();
        this.reader = codeReader;
        codeReader.setAllVisitors(new GenericVisitor());
        codeReader.setStringVisitor(new StringVisitor());
        codeReader.setTypeVisitor(new TypeVisitor());
        codeReader.setFieldVisitor(new FieldVisitor());
        codeReader.setMethodVisitor(new MethodVisitor());
        codeReader.setMethodAndProtoVisitor(new MethodAndProtoVisitor());
        codeReader.setCallSiteVisitor(new CallSiteVisitor());
    }

    public short[] transform(IndexMap indexMap, short[] sArr) {
        DecodedInstruction[] decodedInstructionArrDecodeAll = DecodedInstruction.decodeAll(sArr);
        int length = decodedInstructionArrDecodeAll.length;
        this.indexMap = indexMap;
        this.mappedInstructions = new DecodedInstruction[length];
        this.mappedAt = 0;
        this.reader.visitAll(decodedInstructionArrDecodeAll);
        ShortArrayCodeOutput shortArrayCodeOutput = new ShortArrayCodeOutput(length);
        for (DecodedInstruction decodedInstruction : this.mappedInstructions) {
            if (decodedInstruction != null) {
                decodedInstruction.encode(shortArrayCodeOutput);
            }
        }
        this.indexMap = null;
        return shortArrayCodeOutput.getArray();
    }

    private class GenericVisitor implements CodeReader.Visitor {
        private GenericVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction;
        }
    }

    private class StringVisitor implements CodeReader.Visitor {
        private StringVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int iAdjustString = InstructionTransformer.this.indexMap.adjustString(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, iAdjustString);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction.withIndex(iAdjustString);
        }
    }

    private class FieldVisitor implements CodeReader.Visitor {
        private FieldVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int iAdjustField = InstructionTransformer.this.indexMap.adjustField(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, iAdjustField);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction.withIndex(iAdjustField);
        }
    }

    private class TypeVisitor implements CodeReader.Visitor {
        private TypeVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int iAdjustType = InstructionTransformer.this.indexMap.adjustType(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, iAdjustType);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction.withIndex(iAdjustType);
        }
    }

    private class MethodVisitor implements CodeReader.Visitor {
        private MethodVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            int iAdjustMethod = InstructionTransformer.this.indexMap.adjustMethod(decodedInstruction.getIndex());
            InstructionTransformer.jumboCheck(decodedInstruction.getOpcode() == 27, iAdjustMethod);
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction.withIndex(iAdjustMethod);
        }
    }

    private class MethodAndProtoVisitor implements CodeReader.Visitor {
        private MethodAndProtoVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction.withProtoIndex(InstructionTransformer.this.indexMap.adjustMethod(decodedInstruction.getIndex()), InstructionTransformer.this.indexMap.adjustProto(decodedInstruction.getProtoIndex()));
        }
    }

    private class CallSiteVisitor implements CodeReader.Visitor {
        private CallSiteVisitor() {
        }

        @Override // com.android.dx.io.CodeReader.Visitor
        public void visit(DecodedInstruction[] decodedInstructionArr, DecodedInstruction decodedInstruction) {
            InstructionTransformer.this.mappedInstructions[InstructionTransformer.access$808(InstructionTransformer.this)] = decodedInstruction.withIndex(InstructionTransformer.this.indexMap.adjustCallSite(decodedInstruction.getIndex()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jumboCheck(boolean z, int i) {
        if (z || i <= 65535) {
            return;
        }
        throw new DexIndexOverflowException("Cannot merge new index " + i + " into a non-jumbo instruction!");
    }
}
