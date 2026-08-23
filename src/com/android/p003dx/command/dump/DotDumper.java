package com.android.p003dx.command.dump;

import com.android.p003dx.dex.DexOptions;
import com.android.p003dx.p004cf.code.ConcreteMethod;
import com.android.p003dx.p004cf.code.Ropper;
import com.android.p003dx.p004cf.direct.DirectClassFile;
import com.android.p003dx.p004cf.direct.StdAttributeFactory;
import com.android.p003dx.p004cf.iface.Member;
import com.android.p003dx.p004cf.iface.Method;
import com.android.p003dx.p004cf.iface.ParseObserver;
import com.android.p003dx.rop.code.AccessFlags;
import com.android.p003dx.rop.code.BasicBlock;
import com.android.p003dx.rop.code.BasicBlockList;
import com.android.p003dx.rop.code.DexTranslationAdvice;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.ssa.Optimizer;
import com.android.p003dx.util.ByteArray;
import com.android.p003dx.util.Hex;
import com.android.p003dx.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class DotDumper implements ParseObserver {
    private final Args args;
    private final byte[] bytes;
    private DirectClassFile classFile;
    private final DexOptions dexOptions = new DexOptions();
    private final String filePath;
    private final boolean optimize;
    private final boolean strictParse;

    @Override // com.android.p003dx.p004cf.iface.ParseObserver
    public void changeIndent(int i) {
    }

    @Override // com.android.p003dx.p004cf.iface.ParseObserver
    public void parsed(ByteArray byteArray, int i, int i2, String str) {
    }

    @Override // com.android.p003dx.p004cf.iface.ParseObserver
    public void startParsingMember(ByteArray byteArray, int i, String str, String str2) {
    }

    static void dump(byte[] bArr, String str, Args args) {
        new DotDumper(bArr, str, args).run();
    }

    DotDumper(byte[] bArr, String str, Args args) {
        this.bytes = bArr;
        this.filePath = str;
        this.strictParse = args.strictParse;
        this.optimize = args.optimize;
        this.args = args;
    }

    private void run() {
        ByteArray byteArray = new ByteArray(this.bytes);
        DirectClassFile directClassFile = new DirectClassFile(byteArray, this.filePath, this.strictParse);
        this.classFile = directClassFile;
        StdAttributeFactory stdAttributeFactory = StdAttributeFactory.THE_ONE;
        directClassFile.setAttributeFactory(stdAttributeFactory);
        this.classFile.getMagic();
        DirectClassFile directClassFile2 = new DirectClassFile(byteArray, this.filePath, this.strictParse);
        directClassFile2.setAttributeFactory(stdAttributeFactory);
        directClassFile2.setObserver(this);
        directClassFile2.getMagic();
    }

    protected boolean shouldDumpMethod(String str) {
        String str2 = this.args.method;
        return str2 == null || str2.equals(str);
    }

    @Override // com.android.p003dx.p004cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i, String str, String str2, Member member) {
        if ((member instanceof Method) && shouldDumpMethod(str)) {
            ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, this.classFile, true, true);
            DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
            RopMethod ropMethodConvert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
            if (this.optimize) {
                boolean zIsStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
                ropMethodConvert = Optimizer.optimize(ropMethodConvert, BaseDumper.computeParamWidth(concreteMethod, zIsStatic), zIsStatic, true, dexTranslationAdvice);
            }
            System.out.println("digraph " + str + "{");
            System.out.println("\tfirst -> n" + Hex.m212u2(ropMethodConvert.getFirstLabel()) + ";");
            BasicBlockList blocks = ropMethodConvert.getBlocks();
            int size = blocks.size();
            int i2 = 0;
            int i3 = 0;
            while (i3 < size) {
                BasicBlock basicBlock = blocks.get(i3);
                int label = basicBlock.getLabel();
                IntList successors = basicBlock.getSuccessors();
                if (successors.size() == 0) {
                    System.out.println("\tn" + Hex.m212u2(label) + " -> returns;");
                } else if (successors.size() == 1) {
                    System.out.println("\tn" + Hex.m212u2(label) + " -> n" + Hex.m212u2(successors.get(i2)) + ";");
                } else {
                    System.out.print("\tn" + Hex.m212u2(label) + " -> {");
                    for (int i4 = i2; i4 < successors.size(); i4++) {
                        int i5 = successors.get(i4);
                        if (i5 != basicBlock.getPrimarySuccessor()) {
                            System.out.print(" n" + Hex.m212u2(i5) + " ");
                        }
                    }
                    System.out.println("};");
                    System.out.println("\tn" + Hex.m212u2(label) + " -> n" + Hex.m212u2(basicBlock.getPrimarySuccessor()) + " [label=\"primary\"];");
                }
                i3++;
                i2 = 0;
            }
            System.out.println("}");
        }
    }
}
