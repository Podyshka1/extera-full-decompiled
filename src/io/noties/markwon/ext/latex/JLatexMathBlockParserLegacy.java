package io.noties.markwon.ext.latex;

import okhttp3.internal.url._UrlKt;
import org.commonmark.node.Block;
import org.commonmark.parser.block.AbstractBlockParser;
import org.commonmark.parser.block.AbstractBlockParserFactory;
import org.commonmark.parser.block.BlockContinue;
import org.commonmark.parser.block.BlockStart;
import org.commonmark.parser.block.MatchedBlockParser;
import org.commonmark.parser.block.ParserState;

/* JADX INFO: loaded from: classes5.dex */
class JLatexMathBlockParserLegacy extends AbstractBlockParser {
    private final JLatexMathBlock block = new JLatexMathBlock();
    private final StringBuilder builder = new StringBuilder();
    private boolean isClosed;

    @Override // org.commonmark.parser.block.BlockParser
    public Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public BlockContinue tryContinue(ParserState parserState) {
        if (this.isClosed) {
            return BlockContinue.finished();
        }
        return BlockContinue.atIndex(parserState.getIndex());
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void addLine(CharSequence charSequence) {
        if (this.builder.length() > 0) {
            this.builder.append('\n');
        }
        this.builder.append(charSequence);
        int length = this.builder.length();
        if (length > 1) {
            boolean z = '$' == this.builder.charAt(length + (-1)) && '$' == this.builder.charAt(length + (-2));
            this.isClosed = z;
            if (z) {
                this.builder.replace(length - 2, length, _UrlKt.FRAGMENT_ENCODE_SET);
            }
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void closeBlock() {
        this.block.latex(this.builder.toString());
    }

    public static class Factory extends AbstractBlockParserFactory {
        @Override // org.commonmark.parser.block.BlockParserFactory
        public BlockStart tryStart(ParserState parserState, MatchedBlockParser matchedBlockParser) {
            CharSequence line = parserState.getLine();
            if ((line != null ? line.length() : 0) > 1 && '$' == line.charAt(0) && '$' == line.charAt(1)) {
                return BlockStart.of(new JLatexMathBlockParserLegacy()).atIndex(parserState.getIndex() + 2);
            }
            return BlockStart.none();
        }
    }
}
