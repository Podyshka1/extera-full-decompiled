package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;

/* JADX INFO: loaded from: classes5.dex */
public class BlockNode extends ASTNode {
    protected int blockOffset;
    protected int blockStart;
    protected ExecutableStatement compiledBlock;

    public BlockNode(ParserContext parserContext) {
        super(parserContext);
    }

    public ExecutableStatement getCompiledBlock() {
        return this.compiledBlock;
    }

    public int getBlockStart() {
        return this.blockStart;
    }

    public int getBlockOffset() {
        return this.blockOffset;
    }
}
