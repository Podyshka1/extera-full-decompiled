package org.commonmark.internal;

import java.util.List;
import org.commonmark.node.Block;
import org.commonmark.node.LinkReferenceDefinition;
import org.commonmark.node.Paragraph;
import org.commonmark.parser.InlineParser;
import org.commonmark.parser.block.AbstractBlockParser;
import org.commonmark.parser.block.BlockContinue;
import org.commonmark.parser.block.ParserState;

/* JADX INFO: loaded from: classes5.dex */
public class ParagraphParser extends AbstractBlockParser {
    private final Paragraph block = new Paragraph();
    private LinkReferenceDefinitionParser linkReferenceDefinitionParser = new LinkReferenceDefinitionParser();

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public boolean canHaveLazyContinuationLines() {
        return true;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public BlockContinue tryContinue(ParserState parserState) {
        if (!parserState.isBlank()) {
            return BlockContinue.atIndex(parserState.getIndex());
        }
        return BlockContinue.none();
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void addLine(CharSequence charSequence) {
        this.linkReferenceDefinitionParser.parse(charSequence);
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void closeBlock() {
        if (this.linkReferenceDefinitionParser.getParagraphContent().length() == 0) {
            this.block.unlink();
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void parseInlines(InlineParser inlineParser) {
        CharSequence paragraphContent = this.linkReferenceDefinitionParser.getParagraphContent();
        if (paragraphContent.length() > 0) {
            inlineParser.parse(paragraphContent.toString(), this.block);
        }
    }

    public CharSequence getContentString() {
        return this.linkReferenceDefinitionParser.getParagraphContent();
    }

    public List<LinkReferenceDefinition> getDefinitions() {
        return this.linkReferenceDefinitionParser.getDefinitions();
    }
}
