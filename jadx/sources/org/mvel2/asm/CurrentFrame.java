package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
final class CurrentFrame extends Frame {
    CurrentFrame(Label label) {
        super(label);
    }

    @Override // org.mvel2.asm.Frame
    void execute(int i, int i2, Symbol symbol, SymbolTable symbolTable) {
        super.execute(i, i2, symbol, symbolTable);
        Frame frame = new Frame(null);
        merge(symbolTable, frame, 0);
        copyFrom(frame);
    }
}
