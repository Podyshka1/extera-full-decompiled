package io.noties.markwon.ext.latex;

import kotlin.text.Typography;
import org.commonmark.internal.util.Parsing;
import org.commonmark.node.Block;
import org.commonmark.parser.block.AbstractBlockParser;
import org.commonmark.parser.block.AbstractBlockParserFactory;
import org.commonmark.parser.block.BlockContinue;
import org.commonmark.parser.block.BlockStart;
import org.commonmark.parser.block.MatchedBlockParser;
import org.commonmark.parser.block.ParserState;

/* JADX INFO: loaded from: classes5.dex */
class JLatexMathBlockParser extends AbstractBlockParser {
    private final JLatexMathBlock block = new JLatexMathBlock();
    private final StringBuilder builder = new StringBuilder();
    private final int signs;

    public JLatexMathBlockParser(int i) {
        this.signs = i;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public BlockContinue tryContinue(ParserState parserState) {
        int nextNonSpaceIndex = parserState.getNextNonSpaceIndex();
        CharSequence line = parserState.getLine();
        int length = line.length();
        if (parserState.getIndent() < Parsing.CODE_BLOCK_INDENT) {
            int iConsume = consume(Typography.dollar, line, nextNonSpaceIndex, length);
            int i = this.signs;
            if (iConsume == i && Parsing.skip(' ', line, nextNonSpaceIndex + i, length) == length) {
                return BlockContinue.finished();
            }
        }
        return BlockContinue.atIndex(parserState.getIndex());
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void addLine(CharSequence charSequence) {
        this.builder.append(charSequence);
        this.builder.append('\n');
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void closeBlock() {
        this.block.latex(this.builder.toString());
    }

    public static class Factory extends AbstractBlockParserFactory {
        @Override // org.commonmark.parser.block.BlockParserFactory
        public BlockStart tryStart(ParserState parserState, MatchedBlockParser matchedBlockParser) {
            if (parserState.getIndent() >= Parsing.CODE_BLOCK_INDENT) {
                return BlockStart.none();
            }
            int nextNonSpaceIndex = parserState.getNextNonSpaceIndex();
            CharSequence line = parserState.getLine();
            int length = line.length();
            int iConsume = JLatexMathBlockParser.consume(Typography.dollar, line, nextNonSpaceIndex, length);
            if (iConsume < 2) {
                return BlockStart.none();
            }
            if (Parsing.skip(' ', line, nextNonSpaceIndex + iConsume, length) != length) {
                return BlockStart.none();
            }
            return BlockStart.of(new JLatexMathBlockParser(iConsume)).atIndex(length + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int consume(char c2, CharSequence charSequence, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (c2 != charSequence.charAt(i3)) {
                return i3 - i;
            }
        }
        return i2 - i;
    }
}
