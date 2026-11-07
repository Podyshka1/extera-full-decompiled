package org.telegram.ui.iv;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.TextStyleSpan;

/* JADX INFO: loaded from: classes7.dex */
public abstract class RichMessageConvert {
    public static ArrayList<TL_iv.PageBlock> blocksFromCharSequence(CharSequence charSequence) {
        boolean z;
        Object objBlockSpan;
        ArrayList<TL_iv.PageBlock> arrayList = new ArrayList<>();
        if (charSequence == null) {
            arrayList.add(emptyParagraph());
            return arrayList;
        }
        Spanned spanned = charSequence instanceof Spanned ? (Spanned) charSequence : null;
        int[] iArrLineStarts = lineStarts(charSequence);
        int length = charSequence.length();
        int i = 0;
        while (i < iArrLineStarts.length) {
            int i2 = iArrLineStarts[i];
            i++;
            boolean z2 = true;
            int i3 = i < iArrLineStarts.length ? iArrLineStarts[i] - 1 : length;
            CodeHighlighting.Span span = spanned == null ? null : (CodeHighlighting.Span) blockSpan(spanned, i2, i3, CodeHighlighting.Span.class);
            QuoteSpan quoteSpan = (spanned == null || span != null) ? null : (QuoteSpan) blockSpan(spanned, i2, i3, QuoteSpan.class);
            if (span == null && quoteSpan == null) {
                arrayList.add(paragraph(charSequence.subSequence(i2, i3)));
            } else {
                Object obj = span != null ? span : quoteSpan;
                while (true) {
                    if (i >= iArrLineStarts.length) {
                        z = z2;
                        break;
                    }
                    int i4 = iArrLineStarts[i];
                    int i5 = i + 1;
                    z = z2;
                    int i6 = i5 < iArrLineStarts.length ? iArrLineStarts[i5] - 1 : length;
                    if (span != null) {
                        objBlockSpan = blockSpan(spanned, i4, i6, CodeHighlighting.Span.class);
                    } else {
                        objBlockSpan = blockSpan(spanned, i4, i6, QuoteSpan.class);
                    }
                    if (objBlockSpan != obj) {
                        break;
                    }
                    i = i5;
                    i3 = i6;
                    z2 = z;
                }
                CharSequence charSequenceSubSequence = charSequence.subSequence(i2, i3);
                if (span != null) {
                    TL_iv.pageBlockPreformatted pageblockpreformatted = new TL_iv.pageBlockPreformatted();
                    pageblockpreformatted.text = RichTextStyle.fromSpannable(charSequenceSubSequence);
                    String str = span.lng;
                    if (str == null) {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    pageblockpreformatted.language = str;
                    arrayList.add(pageblockpreformatted);
                } else {
                    TL_iv.pageBlockBlockquote pageblockblockquote = new TL_iv.pageBlockBlockquote();
                    pageblockblockquote.text = RichTextStyle.fromSpannable(charSequenceSubSequence);
                    pageblockblockquote.caption = new TL_iv.textEmpty();
                    pageblockblockquote.collapsed = (quoteSpan == null || !quoteSpan.isCollapsing) ? false : z;
                    arrayList.add(pageblockblockquote);
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(emptyParagraph());
        }
        return arrayList;
    }

    private static TL_iv.pageBlockParagraph paragraph(CharSequence charSequence) {
        TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
        pageblockparagraph.text = RichTextStyle.fromSpannable(charSequence);
        return pageblockparagraph;
    }

    private static TL_iv.pageBlockParagraph emptyParagraph() {
        TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
        pageblockparagraph.text = new TL_iv.textEmpty();
        return pageblockparagraph;
    }

    private static int[] lineStarts(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        for (int i = 0; i < charSequence.length(); i++) {
            if (charSequence.charAt(i) == '\n') {
                arrayList.add(Integer.valueOf(i + 1));
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr;
    }

    private static <T> T blockSpan(Spanned spanned, int i, int i2, Class<T> cls) {
        for (Object obj : spanned.getSpans(i, Math.max(i, i2), cls)) {
            T t = (T) obj;
            int spanStart = spanned.getSpanStart(t);
            int spanEnd = spanned.getSpanEnd(t);
            if (spanStart <= i && spanEnd >= i2) {
                return t;
            }
        }
        return null;
    }

    public static CharSequence toCharSequence(TL_iv.RichMessage richMessage) {
        return blocksToCharSequence(richMessage == null ? null : richMessage.blocks);
    }

    public static CharSequence blocksToCharSequence(List<TL_iv.PageBlock> list) {
        ArrayList arrayList = new ArrayList();
        collectBlocks(arrayList, list);
        return join(arrayList);
    }

    private static void collectBlocks(ArrayList<CharSequence> arrayList, List<TL_iv.PageBlock> list) {
        if (list == null) {
            return;
        }
        Iterator<TL_iv.PageBlock> it = list.iterator();
        while (it.hasNext()) {
            CharSequence charSequenceRenderBlock = renderBlock(it.next());
            if (charSequenceRenderBlock != null) {
                arrayList.add(charSequenceRenderBlock);
            }
        }
    }

    private static CharSequence renderBlock(TL_iv.PageBlock pageBlock) {
        TL_iv.RichText richText;
        if (pageBlock == null) {
            return null;
        }
        if (pageBlock instanceof TL_iv.pageBlockPreformatted) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(RichTextStyle.toSpannable(pageBlock.text, pageBlock));
            spannableStringBuilder.setSpan(new CodeHighlighting.Span(true, 0, null, ((TL_iv.pageBlockPreformatted) pageBlock).language, spannableStringBuilder.toString()), 0, spannableStringBuilder.length(), 33);
            return spannableStringBuilder;
        }
        boolean z = pageBlock instanceof TL_iv.pageBlockBlockquote;
        if (z || (pageBlock instanceof TL_iv.pageBlockPullquote)) {
            if (z) {
                richText = ((TL_iv.pageBlockBlockquote) pageBlock).caption;
            } else {
                richText = ((TL_iv.pageBlockPullquote) pageBlock).caption;
            }
            return quoted(RichTextStyle.toSpannable(pageBlock.text, pageBlock), richText);
        }
        if (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks) {
            TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks = (TL_iv.pageBlockBlockquoteBlocks) pageBlock;
            ArrayList arrayList = new ArrayList();
            collectBlocks(arrayList, pageblockblockquoteblocks.blocks);
            return quoted(join(arrayList), pageblockblockquoteblocks.caption);
        }
        if (pageBlock instanceof TL_iv.pageBlockDetails) {
            TL_iv.pageBlockDetails pageblockdetails = (TL_iv.pageBlockDetails) pageBlock;
            ArrayList arrayList2 = new ArrayList();
            CharSequence spannable = RichTextStyle.toSpannable(pageblockdetails.title);
            if (!TextUtils.isEmpty(spannable)) {
                arrayList2.add(spannable);
            }
            collectBlocks(arrayList2, pageblockdetails.blocks);
            if (arrayList2.isEmpty()) {
                return null;
            }
            return join(arrayList2);
        }
        if (pageBlock instanceof TL_iv.pageBlockList) {
            return renderList(((TL_iv.pageBlockList) pageBlock).items);
        }
        if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
            return renderOrderedList(((TL_iv.pageBlockOrderedList) pageBlock).items);
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            return renderTable((TL_iv.pageBlockTable) pageBlock);
        }
        if (pageBlock instanceof TL_iv.pageBlockMath) {
            String str = ((TL_iv.pageBlockMath) pageBlock).source;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return mono(new SpannableStringBuilder(str));
        }
        if (pageBlock instanceof TL_iv.pageBlockDivider) {
            return "——————————";
        }
        if (isHeading(pageBlock)) {
            CharSequence charSequenceBold = bold(RichTextStyle.toSpannable(pageBlock.text, pageBlock));
            if (TextUtils.isEmpty(charSequenceBold)) {
                return null;
            }
            return charSequenceBold;
        }
        if (pageBlock instanceof TL_iv.pageBlockAuthorDate) {
            return RichTextStyle.toSpannable(((TL_iv.pageBlockAuthorDate) pageBlock).author);
        }
        if ((pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockFooter) || (pageBlock instanceof TL_iv.pageBlockKicker) || (pageBlock instanceof TL_iv.pageBlockThinking)) {
            return RichTextStyle.toSpannable(pageBlock.text, pageBlock);
        }
        return captionText(pageBlock);
    }

    private static CharSequence renderList(ArrayList<TL_iv.PageListItem> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_iv.PageListItem pageListItem = arrayList.get(i);
            i++;
            TL_iv.PageListItem pageListItem2 = pageListItem;
            CharSequence charSequenceListItemText = listItemText(pageListItem2);
            if (charSequenceListItemText != null) {
                arrayList2.add(prefixed(pageListItem2.checkbox ? pageListItem2.checked ? "☑  " : "☐  " : "•  ", charSequenceListItemText));
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return join(arrayList2);
    }

    private static CharSequence renderOrderedList(ArrayList<TL_iv.PageListOrderedItem> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 1;
        int i2 = 0;
        while (i2 < size) {
            TL_iv.PageListOrderedItem pageListOrderedItem = arrayList.get(i2);
            i2++;
            TL_iv.PageListOrderedItem pageListOrderedItem2 = pageListOrderedItem;
            CharSequence charSequenceOrderedItemText = orderedItemText(pageListOrderedItem2);
            if (charSequenceOrderedItemText != null) {
                arrayList2.add(prefixed((!TextUtils.isEmpty(pageListOrderedItem2.num) ? pageListOrderedItem2.num : String.valueOf(i)) + ".  ", charSequenceOrderedItemText));
            }
            i++;
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return join(arrayList2);
    }

    private static CharSequence renderTable(TL_iv.pageBlockTable pageblocktable) {
        ArrayList arrayList = new ArrayList();
        CharSequence spannable = RichTextStyle.toSpannable(pageblocktable.title);
        if (!TextUtils.isEmpty(spannable)) {
            arrayList.add(spannable);
        }
        ArrayList<TL_iv.pageTableRow> arrayList2 = pageblocktable.rows;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                TL_iv.pageTableRow pagetablerow = arrayList2.get(i);
                i++;
                TL_iv.pageTableRow pagetablerow2 = pagetablerow;
                ArrayList<TL_iv.pageTableCell> arrayList3 = pagetablerow2.cells;
                if (arrayList3 != null && !arrayList3.isEmpty()) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    for (int i2 = 0; i2 < pagetablerow2.cells.size(); i2++) {
                        if (i2 > 0) {
                            spannableStringBuilder.append((CharSequence) "  |  ");
                        }
                        spannableStringBuilder.append(RichTextStyle.toSpannable(pagetablerow2.cells.get(i2).text));
                    }
                    arrayList.add(spannableStringBuilder);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return join(arrayList);
    }

    private static CharSequence listItemText(TL_iv.PageListItem pageListItem) {
        if (pageListItem instanceof TL_iv.TL_pageListItemText) {
            return RichTextStyle.toSpannable(((TL_iv.TL_pageListItemText) pageListItem).text);
        }
        if (pageListItem instanceof TL_iv.TL_pageListItemBlocks) {
            return blocksToCharSequence(((TL_iv.TL_pageListItemBlocks) pageListItem).blocks);
        }
        return null;
    }

    private static CharSequence orderedItemText(TL_iv.PageListOrderedItem pageListOrderedItem) {
        if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemText) {
            return RichTextStyle.toSpannable(((TL_iv.TL_pageListOrderedItemText) pageListOrderedItem).text);
        }
        if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemBlocks) {
            return blocksToCharSequence(((TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem).blocks);
        }
        return null;
    }

    private static CharSequence captionText(TL_iv.PageBlock pageBlock) {
        if (pageBlock.caption == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        CharSequence spannable = RichTextStyle.toSpannable(pageBlock.caption.text);
        if (!TextUtils.isEmpty(spannable)) {
            spannableStringBuilder.append(spannable);
        }
        CharSequence spannable2 = RichTextStyle.toSpannable(pageBlock.caption.credit);
        if (!TextUtils.isEmpty(spannable2)) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(spannable2);
        }
        if (spannableStringBuilder.length() > 0) {
            return spannableStringBuilder;
        }
        return null;
    }

    private static CharSequence quoted(CharSequence charSequence, TL_iv.RichText richText) {
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        CharSequence spannable = RichTextStyle.toSpannable(richText);
        if (!TextUtils.isEmpty(spannable)) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) "— ").append(spannable);
        }
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        QuoteSpan.putQuote(spannableStringBuilder, 0, spannableStringBuilder.length(), false);
        return spannableStringBuilder;
    }

    private static CharSequence prefixed(String str, CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private static CharSequence bold(CharSequence charSequence) {
        return styled(charSequence, 1);
    }

    private static CharSequence mono(CharSequence charSequence) {
        return styled(charSequence, 4);
    }

    private static CharSequence styled(CharSequence charSequence, int i) {
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
        textStyleRun.flags = i;
        spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), 0, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    private static CharSequence join(ArrayList<CharSequence> arrayList) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            if (i > 0) {
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(arrayList.get(i));
        }
        return spannableStringBuilder;
    }

    public static boolean isLossy(List<BlockRow> list) {
        return isLossy(list, null);
    }

    public static boolean isLossy(List<BlockRow> list, Map<Long, TL_iv.RichText> map) {
        if (list == null) {
            return false;
        }
        Iterator<BlockRow> it = list.iterator();
        while (it.hasNext()) {
            if (rowLossy(it.next(), map)) {
                return true;
            }
        }
        return false;
    }

    private static boolean rowLossy(BlockRow blockRow, Map<Long, TL_iv.RichText> map) {
        int i = 0;
        if (blockRow == null) {
            return false;
        }
        if (blockRow.detailsEnd || blockRow.level > 0) {
            return true;
        }
        TL_iv.PageBlock pageBlock = blockRow.block;
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            return true;
        }
        boolean z = pageBlock instanceof TL_iv.pageBlockBlockquote;
        if (blockRow.quoteIds.size() + (z ? 1 : 0) > 1) {
            return true;
        }
        if (z && hasText(captionOf(pageBlock))) {
            return true;
        }
        if (map != null && !blockRow.quoteIds.isEmpty()) {
            ArrayList<Long> arrayList = blockRow.quoteIds;
            int size = arrayList.size();
            while (i < size) {
                Long l = arrayList.get(i);
                i++;
                if (hasText(map.get(l))) {
                    return true;
                }
            }
        }
        if ((pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockPreformatted) || z) {
            return inlineLossy(pageBlock.text);
        }
        return true;
    }

    private static TL_iv.RichText captionOf(TL_iv.PageBlock pageBlock) {
        if (pageBlock instanceof TL_iv.pageBlockBlockquote) {
            return ((TL_iv.pageBlockBlockquote) pageBlock).caption;
        }
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            return ((TL_iv.pageBlockPullquote) pageBlock).caption;
        }
        return null;
    }

    private static boolean hasText(TL_iv.RichText richText) {
        return (richText == null || (richText instanceof TL_iv.textEmpty) || RichTextStyle.plainOf(richText).isEmpty()) ? false : true;
    }

    public static CharSequence rowsToCharSequence(List<BlockRow> list) {
        return rowsToCharSequence(list, false);
    }

    private static CharSequence rowsToCharSequence(List<BlockRow> list, boolean z) {
        CharSequence spannable;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (list != null && i < list.size()) {
            BlockRow blockRow = list.get(i);
            if (!blockRow.quoteIds.isEmpty()) {
                long jLongValue = blockRow.quoteIds.get(0).longValue();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                int i2 = i;
                while (i2 < list.size() && !list.get(i2).quoteIds.isEmpty() && list.get(i2).quoteIds.get(0).longValue() == jLongValue) {
                    if (i2 > i) {
                        spannableStringBuilder.append('\n');
                    }
                    spannableStringBuilder.append(renderLeaf(list.get(i2), z));
                    i2++;
                }
                if (spannableStringBuilder.length() > 0) {
                    QuoteSpan.putQuote(spannableStringBuilder, 0, spannableStringBuilder.length(), false);
                }
                arrayList.add(spannableStringBuilder);
                i = i2;
            } else {
                if (isQuoteLeaf(blockRow.block)) {
                    TL_iv.PageBlock pageBlock = blockRow.block;
                    if (z) {
                        spannable = RichTextStyle.toSimpleSpannable(pageBlock.text, pageBlock);
                    } else {
                        spannable = RichTextStyle.toSpannable(pageBlock.text, pageBlock);
                    }
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannable);
                    TL_iv.PageBlock pageBlock2 = blockRow.block;
                    boolean z2 = (pageBlock2 instanceof TL_iv.pageBlockBlockquote) && ((TL_iv.pageBlockBlockquote) pageBlock2).collapsed;
                    if (spannableStringBuilder2.length() > 0) {
                        QuoteSpan.putQuote(spannableStringBuilder2, 0, spannableStringBuilder2.length(), z2);
                    }
                    arrayList.add(spannableStringBuilder2);
                } else {
                    arrayList.add(renderLeaf(blockRow, z));
                }
                i++;
            }
        }
        return join(arrayList);
    }

    public static CharSequence rowsToSimpleMessage(List<BlockRow> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(rowsToCharSequence(list, true));
        int length = spannableStringBuilder.length();
        RichTextStyle.setStyle(spannableStringBuilder, 0, length, 65536, false);
        RichTextStyle.setStyle(spannableStringBuilder, 0, length, 16384, false);
        RichTextStyle.setStyle(spannableStringBuilder, 0, length, 32768, false);
        for (MathSpan mathSpan : (MathSpan[]) spannableStringBuilder.getSpans(0, length, MathSpan.class)) {
            spannableStringBuilder.removeSpan(mathSpan);
        }
        return spannableStringBuilder;
    }

    private static boolean inlineLossy(TL_iv.RichText richText) {
        if (richText == null || (richText instanceof TL_iv.textEmpty) || (richText instanceof TL_iv.textPlain) || (richText instanceof TL_iv.textCustomEmoji)) {
            return false;
        }
        if (richText instanceof TL_iv.textConcat) {
            ArrayList<TL_iv.RichText> arrayList = ((TL_iv.textConcat) richText).texts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_iv.RichText richText2 = arrayList.get(i);
                i++;
                if (inlineLossy(richText2)) {
                    return true;
                }
            }
            return false;
        }
        if ((richText instanceof TL_iv.textMarked) || (richText instanceof TL_iv.textSubscript) || (richText instanceof TL_iv.textSuperscript) || (richText instanceof TL_iv.textMath) || (richText instanceof TL_iv.textButton)) {
            return true;
        }
        return inlineLossy(richText.text);
    }

    private static boolean isQuoteLeaf(TL_iv.PageBlock pageBlock) {
        return (pageBlock instanceof TL_iv.pageBlockBlockquote) || (pageBlock instanceof TL_iv.pageBlockPullquote);
    }

    private static CharSequence renderLeaf(BlockRow blockRow, boolean z) {
        CharSequence spannable;
        if (z) {
            TL_iv.PageBlock pageBlock = blockRow.block;
            spannable = RichTextStyle.toSimpleSpannable(pageBlock != null ? pageBlock.text : null, pageBlock);
        } else {
            TL_iv.PageBlock pageBlock2 = blockRow.block;
            spannable = RichTextStyle.toSpannable(pageBlock2 != null ? pageBlock2.text : null, pageBlock2);
        }
        if (!(blockRow.block instanceof TL_iv.pageBlockPreformatted)) {
            return spannable;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannable);
        spannableStringBuilder.setSpan(new CodeHighlighting.Span(true, 0, null, ((TL_iv.pageBlockPreformatted) blockRow.block).language, spannableStringBuilder.toString()), 0, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    private static boolean isHeading(TL_iv.PageBlock pageBlock) {
        return (pageBlock instanceof TL_iv.pageBlockTitle) || (pageBlock instanceof TL_iv.pageBlockSubtitle) || (pageBlock instanceof TL_iv.pageBlockHeader) || (pageBlock instanceof TL_iv.pageBlockSubheader) || (pageBlock instanceof TL_iv.pageBlockHeading1) || (pageBlock instanceof TL_iv.pageBlockHeading2) || (pageBlock instanceof TL_iv.pageBlockHeading3) || (pageBlock instanceof TL_iv.pageBlockHeading4) || (pageBlock instanceof TL_iv.pageBlockHeading5) || (pageBlock instanceof TL_iv.pageBlockHeading6);
    }
}
