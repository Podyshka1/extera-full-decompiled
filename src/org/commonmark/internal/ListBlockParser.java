package org.commonmark.internal;

import org.commonmark.internal.util.Parsing;
import org.commonmark.node.Block;
import org.commonmark.node.BulletList;
import org.commonmark.node.ListBlock;
import org.commonmark.node.ListItem;
import org.commonmark.node.OrderedList;
import org.commonmark.parser.block.AbstractBlockParser;
import org.commonmark.parser.block.AbstractBlockParserFactory;
import org.commonmark.parser.block.BlockContinue;
import org.commonmark.parser.block.BlockParser;
import org.commonmark.parser.block.BlockStart;
import org.commonmark.parser.block.MatchedBlockParser;
import org.commonmark.parser.block.ParserState;

/* JADX INFO: loaded from: classes5.dex */
public class ListBlockParser extends AbstractBlockParser {
    private final ListBlock block;
    private boolean hadBlankLine;
    private int linesAfterBlank;

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public boolean isContainer() {
        return true;
    }

    public ListBlockParser(ListBlock listBlock) {
        this.block = listBlock;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public boolean canContain(Block block) {
        if (!(block instanceof ListItem)) {
            return false;
        }
        if (this.hadBlankLine && this.linesAfterBlank == 1) {
            this.block.setTight(false);
            this.hadBlankLine = false;
        }
        return true;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public BlockContinue tryContinue(ParserState parserState) {
        if (parserState.isBlank()) {
            this.hadBlankLine = true;
            this.linesAfterBlank = 0;
        } else if (this.hadBlankLine) {
            this.linesAfterBlank++;
        }
        return BlockContinue.atIndex(parserState.getIndex());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ListData parseList(CharSequence charSequence, int i, int i2, boolean z) {
        boolean z2;
        ListMarkerData listMarker = parseListMarker(charSequence, i);
        if (listMarker == null) {
            return null;
        }
        ListBlock listBlock = listMarker.listBlock;
        int i3 = listMarker.indexAfterMarker;
        int i4 = i2 + (i3 - i);
        int length = charSequence.length();
        int iColumnsToNextTabStop = i4;
        while (true) {
            if (i3 >= length) {
                z2 = false;
                break;
            }
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt != '\t') {
                if (cCharAt != ' ') {
                    z2 = true;
                    break;
                }
                iColumnsToNextTabStop++;
            } else {
                iColumnsToNextTabStop += Parsing.columnsToNextTabStop(iColumnsToNextTabStop);
            }
            i3++;
        }
        if (z && (((listBlock instanceof OrderedList) && ((OrderedList) listBlock).getStartNumber() != 1) || !z2)) {
            return null;
        }
        if (!z2 || iColumnsToNextTabStop - i4 > Parsing.CODE_BLOCK_INDENT) {
            iColumnsToNextTabStop = i4 + 1;
        }
        return new ListData(listBlock, iColumnsToNextTabStop);
    }

    private static ListMarkerData parseListMarker(CharSequence charSequence, int i) {
        char cCharAt = charSequence.charAt(i);
        if (cCharAt == '*' || cCharAt == '+' || cCharAt == '-') {
            int i2 = i + 1;
            if (!isSpaceTabOrEnd(charSequence, i2)) {
                return null;
            }
            BulletList bulletList = new BulletList();
            bulletList.setBulletMarker(cCharAt);
            return new ListMarkerData(bulletList, i2);
        }
        return parseOrderedList(charSequence, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0009  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ListMarkerData parseOrderedList(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        for (int i3 = i; i3 < length; i3++) {
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt == ')' || cCharAt == '.') {
                if (i2 >= 1) {
                    int i4 = i3 + 1;
                    if (isSpaceTabOrEnd(charSequence, i4)) {
                        String string = charSequence.subSequence(i, i3).toString();
                        OrderedList orderedList = new OrderedList();
                        orderedList.setStartNumber(Integer.parseInt(string));
                        orderedList.setDelimiter(cCharAt);
                        return new ListMarkerData(orderedList, i4);
                    }
                }
                return null;
            }
            switch (cCharAt) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i2++;
                    if (i2 > 9) {
                        return null;
                    }
                    break;
                    break;
                default:
                    return null;
            }
            while (i3 < length) {
            }
        }
        return null;
    }

    private static boolean isSpaceTabOrEnd(CharSequence charSequence, int i) {
        char cCharAt;
        return i >= charSequence.length() || (cCharAt = charSequence.charAt(i)) == '\t' || cCharAt == ' ';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean listsMatch(ListBlock listBlock, ListBlock listBlock2) {
        if ((listBlock instanceof BulletList) && (listBlock2 instanceof BulletList)) {
            return equals(Character.valueOf(((BulletList) listBlock).getBulletMarker()), Character.valueOf(((BulletList) listBlock2).getBulletMarker()));
        }
        if ((listBlock instanceof OrderedList) && (listBlock2 instanceof OrderedList)) {
            return equals(Character.valueOf(((OrderedList) listBlock).getDelimiter()), Character.valueOf(((OrderedList) listBlock2).getDelimiter()));
        }
        return false;
    }

    private static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static class Factory extends AbstractBlockParserFactory {
        @Override // org.commonmark.parser.block.BlockParserFactory
        public BlockStart tryStart(ParserState parserState, MatchedBlockParser matchedBlockParser) {
            BlockParser matchedBlockParser2 = matchedBlockParser.getMatchedBlockParser();
            if (parserState.getIndent() < Parsing.CODE_BLOCK_INDENT) {
                ListData list = ListBlockParser.parseList(parserState.getLine(), parserState.getNextNonSpaceIndex(), parserState.getColumn() + parserState.getIndent(), matchedBlockParser.getParagraphContent() != null);
                if (list == null) {
                    return BlockStart.none();
                }
                int i = list.contentColumn;
                ListItemParser listItemParser = new ListItemParser(i - parserState.getColumn());
                if ((matchedBlockParser2 instanceof ListBlockParser) && ListBlockParser.listsMatch((ListBlock) matchedBlockParser2.getBlock(), list.listBlock)) {
                    return BlockStart.of(listItemParser).atColumn(i);
                }
                ListBlockParser listBlockParser = new ListBlockParser(list.listBlock);
                list.listBlock.setTight(true);
                return BlockStart.of(listBlockParser, listItemParser).atColumn(i);
            }
            return BlockStart.none();
        }
    }

    public static class ListData {
        final int contentColumn;
        final ListBlock listBlock;

        public ListData(ListBlock listBlock, int i) {
            this.listBlock = listBlock;
            this.contentColumn = i;
        }
    }

    public static class ListMarkerData {
        final int indexAfterMarker;
        final ListBlock listBlock;

        public ListMarkerData(ListBlock listBlock, int i) {
            this.listBlock = listBlock;
            this.indexAfterMarker = i;
        }
    }
}
