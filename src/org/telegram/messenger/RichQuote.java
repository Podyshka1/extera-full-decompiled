package org.telegram.messenger;

import android.text.Layout;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.IdentityHashMap;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.iv.RichTextStyle;

/* JADX INFO: loaded from: classes6.dex */
public class RichQuote {
    public static final int MAX_FRAGMENTS = 32;
    public final ArrayList<TL_iv.RichText> fragments;
    public final int offset;

    private RichQuote(ArrayList<TL_iv.RichText> arrayList, int i) {
        this.fragments = arrayList;
        this.offset = i;
    }

    public static ArrayList<TL_iv.RichText> collectNodes(TL_iv.RichMessage richMessage) {
        ArrayList<TL_iv.RichText> arrayList = new ArrayList<>();
        if (richMessage != null) {
            collect(richMessage.blocks, arrayList);
        }
        return arrayList;
    }

    private static void collect(ArrayList<TL_iv.PageBlock> arrayList, ArrayList<TL_iv.RichText> arrayList2) {
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_iv.PageBlock pageBlock = arrayList.get(i);
            i++;
            collect(pageBlock, arrayList2);
        }
    }

    private static void collect(TL_iv.PageBlock pageBlock, ArrayList<TL_iv.RichText> arrayList) {
        if ((pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockHeading1) || (pageBlock instanceof TL_iv.pageBlockHeading2) || (pageBlock instanceof TL_iv.pageBlockHeading3) || (pageBlock instanceof TL_iv.pageBlockHeading4) || (pageBlock instanceof TL_iv.pageBlockHeading5) || (pageBlock instanceof TL_iv.pageBlockHeading6) || (pageBlock instanceof TL_iv.pageBlockFooter) || (pageBlock instanceof TL_iv.pageBlockThinking) || (pageBlock instanceof TL_iv.pageBlockPreformatted)) {
            add(pageBlock.text, arrayList);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockMath) {
            String str = ((TL_iv.pageBlockMath) pageBlock).source;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            TL_iv.textMath textmath = new TL_iv.textMath();
            textmath.source = str;
            arrayList.add(textmath);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockBlockquote) {
            add(pageBlock.text, arrayList);
            add(((TL_iv.pageBlockBlockquote) pageBlock).caption, arrayList);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks) {
            TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks = (TL_iv.pageBlockBlockquoteBlocks) pageBlock;
            collect(pageblockblockquoteblocks.blocks, arrayList);
            add(pageblockblockquoteblocks.caption, arrayList);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            add(pageBlock.text, arrayList);
            add(((TL_iv.pageBlockPullquote) pageBlock).caption, arrayList);
            return;
        }
        int i = 0;
        if (pageBlock instanceof TL_iv.pageBlockList) {
            ArrayList<TL_iv.PageListItem> arrayList2 = ((TL_iv.pageBlockList) pageBlock).items;
            int size = arrayList2.size();
            while (i < size) {
                TL_iv.PageListItem pageListItem = arrayList2.get(i);
                i++;
                TL_iv.PageListItem pageListItem2 = pageListItem;
                if (pageListItem2 instanceof TL_iv.TL_pageListItemText) {
                    add(((TL_iv.TL_pageListItemText) pageListItem2).text, arrayList);
                } else if (pageListItem2 instanceof TL_iv.TL_pageListItemBlocks) {
                    collect(((TL_iv.TL_pageListItemBlocks) pageListItem2).blocks, arrayList);
                }
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
            ArrayList<TL_iv.PageListOrderedItem> arrayList3 = ((TL_iv.pageBlockOrderedList) pageBlock).items;
            int size2 = arrayList3.size();
            while (i < size2) {
                TL_iv.PageListOrderedItem pageListOrderedItem = arrayList3.get(i);
                i++;
                TL_iv.PageListOrderedItem pageListOrderedItem2 = pageListOrderedItem;
                if (pageListOrderedItem2 instanceof TL_iv.TL_pageListOrderedItemText) {
                    add(((TL_iv.TL_pageListOrderedItemText) pageListOrderedItem2).text, arrayList);
                } else if (pageListOrderedItem2 instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                    collect(((TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem2).blocks, arrayList);
                }
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            TL_iv.pageBlockTable pageblocktable = (TL_iv.pageBlockTable) pageBlock;
            add(pageblocktable.title, arrayList);
            ArrayList<TL_iv.pageTableRow> arrayList4 = pageblocktable.rows;
            int size3 = arrayList4.size();
            int i2 = 0;
            while (i2 < size3) {
                TL_iv.pageTableRow pagetablerow = arrayList4.get(i2);
                i2++;
                ArrayList<TL_iv.pageTableCell> arrayList5 = pagetablerow.cells;
                int size4 = arrayList5.size();
                int i3 = 0;
                while (i3 < size4) {
                    TL_iv.pageTableCell pagetablecell = arrayList5.get(i3);
                    i3++;
                    add(pagetablecell.text, arrayList);
                }
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockDetails) {
            TL_iv.pageBlockDetails pageblockdetails = (TL_iv.pageBlockDetails) pageBlock;
            add(pageblockdetails.title, arrayList);
            collect(pageblockdetails.blocks, arrayList);
        } else {
            if ((pageBlock instanceof TL_iv.pageBlockPhoto) || (pageBlock instanceof TL_iv.pageBlockVideo) || (pageBlock instanceof TL_iv.pageBlockAudio) || (pageBlock instanceof TL_iv.pageBlockMap)) {
                addCaption(pageBlock.caption, arrayList);
                return;
            }
            if (pageBlock instanceof TL_iv.pageBlockCollage) {
                collect(((TL_iv.pageBlockCollage) pageBlock).items, arrayList);
                addCaption(pageBlock.caption, arrayList);
            } else if (pageBlock instanceof TL_iv.pageBlockSlideshow) {
                collect(((TL_iv.pageBlockSlideshow) pageBlock).items, arrayList);
                addCaption(pageBlock.caption, arrayList);
            }
        }
    }

    private static void addCaption(TL_iv.PageCaption pageCaption, ArrayList<TL_iv.RichText> arrayList) {
        if (pageCaption == null) {
            return;
        }
        add(pageCaption.text, arrayList);
        add(pageCaption.credit, arrayList);
    }

    private static void add(TL_iv.RichText richText, ArrayList<TL_iv.RichText> arrayList) {
        if (richText == null || flatLength(richText) <= 0) {
            return;
        }
        arrayList.add(richText);
    }

    public static String flatText(TL_iv.RichText richText) {
        StringBuilder sb = new StringBuilder();
        appendFlat(richText, sb, null);
        return sb.toString();
    }

    public static int flatLength(TL_iv.RichText richText) {
        return flatText(richText).length();
    }

    public static String flatText(ArrayList<TL_iv.RichText> arrayList, ArrayList<TLRPC.MessageEntity> arrayList2) {
        StringBuilder sb = new StringBuilder();
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (i > 0) {
                    sb.append('\n');
                }
                appendFlat(arrayList.get(i), sb, arrayList2);
            }
        }
        return sb.toString();
    }

    private static void appendFlat(TL_iv.RichText richText, StringBuilder sb, ArrayList<TLRPC.MessageEntity> arrayList) {
        TLRPC.MessageEntity tL_messageEntitySpoiler;
        if (richText == null || (richText instanceof TL_iv.textEmpty) || (richText instanceof TL_iv.textImage)) {
            return;
        }
        if (richText instanceof TL_iv.textPlain) {
            String str = ((TL_iv.textPlain) richText).text;
            if (str != null) {
                sb.append(str);
                return;
            }
            return;
        }
        if (richText instanceof TL_iv.textMath) {
            String str2 = ((TL_iv.textMath) richText).source;
            if (str2 != null) {
                sb.append(str2);
                return;
            }
            return;
        }
        int length = sb.length();
        if (richText instanceof TL_iv.textCustomEmoji) {
            TL_iv.textCustomEmoji textcustomemoji = (TL_iv.textCustomEmoji) richText;
            sb.append(TextUtils.isEmpty(textcustomemoji.alt) ? "😀" : textcustomemoji.alt);
            if (arrayList != null) {
                TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = new TLRPC.TL_messageEntityCustomEmoji();
                tL_messageEntityCustomEmoji.document_id = textcustomemoji.document_id;
                addEntity(arrayList, tL_messageEntityCustomEmoji, length, sb.length());
                return;
            }
            return;
        }
        if (richText instanceof TL_iv.textConcat) {
            ArrayList<TL_iv.RichText> arrayList2 = richText.texts;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                TL_iv.RichText richText2 = arrayList2.get(i);
                i++;
                appendFlat(richText2, sb, arrayList);
            }
            return;
        }
        if (richText instanceof TL_iv.textDiff) {
            TL_iv.textDiff textdiff = (TL_iv.textDiff) richText;
            appendFlat(RichTextStyle.isEmpty(textdiff.text) ? textdiff.old_text : textdiff.text, sb, arrayList);
            return;
        }
        appendFlat(richText.text, sb, arrayList);
        if (arrayList == null) {
            return;
        }
        if (richText instanceof TL_iv.textBold) {
            tL_messageEntitySpoiler = new TLRPC.TL_messageEntityBold();
        } else if (richText instanceof TL_iv.textItalic) {
            tL_messageEntitySpoiler = new TLRPC.TL_messageEntityItalic();
        } else if (richText instanceof TL_iv.textUnderline) {
            tL_messageEntitySpoiler = new TLRPC.TL_messageEntityUnderline();
        } else if (richText instanceof TL_iv.textStrike) {
            tL_messageEntitySpoiler = new TLRPC.TL_messageEntityStrike();
        } else if (richText instanceof TL_iv.textFixed) {
            tL_messageEntitySpoiler = new TLRPC.TL_messageEntityCode();
        } else if (richText instanceof TL_iv.textSpoiler) {
            tL_messageEntitySpoiler = new TLRPC.TL_messageEntitySpoiler();
        } else if (richText instanceof TL_iv.textUrl) {
            TLRPC.TL_messageEntityTextUrl tL_messageEntityTextUrl = new TLRPC.TL_messageEntityTextUrl();
            tL_messageEntityTextUrl.url = ((TL_iv.textUrl) richText).url;
            tL_messageEntitySpoiler = tL_messageEntityTextUrl;
        } else {
            tL_messageEntitySpoiler = null;
        }
        if (tL_messageEntitySpoiler != null) {
            addEntity(arrayList, tL_messageEntitySpoiler, length, sb.length());
        }
    }

    private static void addEntity(ArrayList<TLRPC.MessageEntity> arrayList, TLRPC.MessageEntity messageEntity, int i, int i2) {
        if (i2 <= i) {
            return;
        }
        messageEntity.offset = i;
        messageEntity.length = i2 - i;
        arrayList.add(messageEntity);
    }

    public static void fillFlat(TLRPC.MessageReplyHeader messageReplyHeader) {
        if (messageReplyHeader == null || messageReplyHeader.quote_rich == null || messageReplyHeader.quote_text != null || ApplicationLoader.isAndroidTestEnvironment()) {
            return;
        }
        ArrayList<TLRPC.MessageEntity> arrayList = new ArrayList<>();
        messageReplyHeader.quote_text = flatText(messageReplyHeader.quote_rich, arrayList);
        messageReplyHeader.flags |= 64;
        messageReplyHeader.quote_entities = arrayList;
        if (arrayList.isEmpty()) {
            return;
        }
        messageReplyHeader.flags |= 128;
    }

    public static class Position {
        final int offset;
        final RichMessageLayout.QuoteRootSpan root;
        final CharSequence text;
        final int textStart;

        public Position(RichMessageLayout.QuoteRootSpan quoteRootSpan, int i, CharSequence charSequence, int i2) {
            this.root = quoteRootSpan;
            this.offset = i;
            this.text = charSequence;
            this.textStart = i2;
        }
    }

    public static boolean canQuote(MessageObject messageObject) {
        TLRPC.Message message;
        TL_iv.RichMessage richMessage;
        RichMessageLayout richMessageLayout;
        return (messageObject == null || (message = messageObject.messageOwner) == null || (richMessage = message.rich_message) == null || (richMessageLayout = messageObject.richLayout) == null || richMessageLayout.richMessage != richMessage) ? false : true;
    }

    public static RichQuote fromSelection(MessageObject messageObject, int i, int i2) {
        int iIntValue;
        int iIntValue2;
        if (!canQuote(messageObject)) {
            return null;
        }
        RichMessageLayout richMessageLayout = messageObject.richLayout;
        int i3 = MessagesController.getInstance(messageObject.currentAccount).quoteLengthMax;
        ArrayList<TL_iv.RichText> arrayListCollectNodes = collectNodes(richMessageLayout.richMessage);
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (int i4 = 0; i4 < arrayListCollectNodes.size(); i4++) {
            identityHashMap.put(arrayListCollectNodes.get(i4), Integer.valueOf(i4));
        }
        Position positionResolve = resolve(richMessageLayout, Math.min(i, i2), true, identityHashMap);
        Position positionResolve2 = resolve(richMessageLayout, Math.max(i, i2), false, identityHashMap);
        if (positionResolve != null && positionResolve2 != null && (iIntValue = ((Integer) identityHashMap.get(positionResolve.root.text)).intValue()) <= (iIntValue2 = ((Integer) identityHashMap.get(positionResolve2.root.text)).intValue()) && (iIntValue != iIntValue2 || positionResolve.offset < positionResolve2.offset)) {
            Sliced slicedOf = Sliced.of(richMessageLayout, positionResolve);
            Sliced slicedOf2 = iIntValue == iIntValue2 ? slicedOf : Sliced.of(richMessageLayout, positionResolve2);
            if (slicedOf != null && slicedOf2 != null) {
                Range range = new Range(richMessageLayout, arrayListCollectNodes, iIntValue, positionResolve.offset, slicedOf, iIntValue2, positionResolve2.offset, slicedOf2);
                int i5 = range.toIndex;
                int i6 = range.fromIndex;
                if ((i5 - i6) + 1 > 32) {
                    range.setEnd(i6 + 31, Integer.MAX_VALUE);
                }
                loop1: for (int i7 = 0; i7 < 8; i7++) {
                    int i8 = range.toIndex;
                    int i9 = range.fromIndex;
                    if (i8 < i9) {
                        break;
                    }
                    int i10 = 0;
                    while (i9 <= range.toIndex) {
                        String strFlatText = flatText(range.fragment(i9));
                        int iCodePointCount = strFlatText.codePointCount(0, strFlatText.length()) + i10;
                        if (iCodePointCount > i3) {
                            int i11 = i3 - i10;
                            int i12 = i11 <= 0 ? -1 : range.formattedOffset(i9, strFlatText.offsetByCodePoints(0, i11));
                            if (i11 <= 0 || i12 <= range.startOffset(i9) || (i9 == range.toIndex && i12 >= range.toOffset)) {
                                range.setEnd(i9 - 1, Integer.MAX_VALUE);
                            } else {
                                range.setEnd(i9, i12);
                            }
                        } else {
                            i9++;
                            i10 = iCodePointCount;
                        }
                    }
                    break loop1;
                }
                if (range.toIndex < range.fromIndex) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (int i13 = range.fromIndex; i13 <= range.toIndex; i13++) {
                    TL_iv.RichText richTextWithoutButtons = withoutButtons(range.fragment(i13));
                    if (richTextWithoutButtons != null && flatLength(richTextWithoutButtons) > 0) {
                        arrayList.add(richTextWithoutButtons);
                    }
                }
                if (!arrayList.isEmpty() && arrayList.size() <= 32) {
                    int iFlatLength = 0;
                    for (int i14 = 0; i14 < iIntValue; i14++) {
                        iFlatLength += flatLength(arrayListCollectNodes.get(i14)) + 1;
                    }
                    TL_iv.RichText richTextSlice = slicedOf.slice(0, positionResolve.offset);
                    if (richTextSlice != null) {
                        iFlatLength += flatLength(richTextSlice);
                    }
                    return new RichQuote(arrayList, iFlatLength);
                }
            }
        }
        return null;
    }

    public static int[] findQuote(MessageObject messageObject, String str, int i) {
        if (messageObject != null && messageObject.richLayout != null && !TextUtils.isEmpty(str)) {
            RichMessageLayout richMessageLayout = messageObject.richLayout;
            ArrayList<TL_iv.RichText> arrayListCollectNodes = collectNodes(richMessageLayout.richMessage);
            if (arrayListCollectNodes.isEmpty()) {
                return null;
            }
            int[] iArr = new int[arrayListCollectNodes.size()];
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < arrayListCollectNodes.size(); i2++) {
                if (i2 > 0) {
                    sb.append('\n');
                }
                iArr[i2] = sb.length();
                appendFlat(arrayListCollectNodes.get(i2), sb, null);
            }
            int iFindQuoteStart = MessageObject.findQuoteStart(sb.toString(), str, i);
            if (iFindQuoteStart < 0) {
                return null;
            }
            int length = str.length() + iFindQuoteStart;
            IdentityHashMap<TL_iv.RichText, int[]> identityHashMapFindDisplayed = findDisplayed(richMessageLayout);
            int i3 = -1;
            int i4 = -1;
            for (int i5 = 0; i5 < arrayListCollectNodes.size(); i5++) {
                int iFlatLength = iArr[i5] + flatLength(arrayListCollectNodes.get(i5));
                if (i3 < 0 && iFindQuoteStart < iFlatLength && identityHashMapFindDisplayed.containsKey(arrayListCollectNodes.get(i5))) {
                    i3 = i5;
                }
                if (iArr[i5] < length && identityHashMapFindDisplayed.containsKey(arrayListCollectNodes.get(i5))) {
                    i4 = i5;
                }
            }
            if (i3 >= 0 && i4 >= 0 && i3 <= i4) {
                int[] iArr2 = identityHashMapFindDisplayed.get(arrayListCollectNodes.get(i3));
                int[] iArr3 = identityHashMapFindDisplayed.get(arrayListCollectNodes.get(i4));
                int iFlatToFormatted = flatToFormatted(richMessageLayout, arrayListCollectNodes.get(i3), iArr2[2], Math.max(0, iFindQuoteStart - iArr[i3]), false);
                int iFlatToFormatted2 = flatToFormatted(richMessageLayout, arrayListCollectNodes.get(i4), iArr3[2], Math.min(flatLength(arrayListCollectNodes.get(i4)), length - iArr[i4]), true);
                int i6 = iArr2[0];
                int iMin = i6 + Math.min(iFlatToFormatted, iArr2[1] - i6);
                int i7 = iArr3[0];
                int iMin2 = i7 + Math.min(iFlatToFormatted2, iArr3[1] - i7);
                if (iMin2 <= iMin) {
                    return null;
                }
                return new int[]{iMin, iMin2};
            }
        }
        return null;
    }

    public static boolean containsQuote(TL_iv.RichMessage richMessage, String str) {
        if (richMessage != null && !TextUtils.isEmpty(str)) {
            ArrayList<TL_iv.RichText> arrayListCollectNodes = collectNodes(richMessage);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < arrayListCollectNodes.size(); i++) {
                if (i > 0) {
                    sb.append('\n');
                }
                appendFlat(arrayListCollectNodes.get(i), sb, null);
            }
            if (sb.indexOf(str) >= 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [org.telegram.messenger.RichMessageLayout$RichBlock] */
    /* JADX WARN: Type inference failed for: r0v11, types: [org.telegram.messenger.RichMessageLayout$RichBlock] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, org.telegram.messenger.RichMessageLayout$RichDetailsBlock] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.ArrayList<org.telegram.messenger.RichMessageLayout$RichDetailsBlock>] */
    public static ArrayList<RichMessageLayout.RichDetailsBlock> findCollapsedDetails(MessageObject messageObject, String str, int i) {
        ?? r0;
        ArrayList<RichMessageLayout.RichBlock> arrayList;
        ?? arrayList2 = new ArrayList();
        if (messageObject != null && messageObject.richLayout != null && !TextUtils.isEmpty(str)) {
            RichMessageLayout richMessageLayout = messageObject.richLayout;
            ArrayList<TL_iv.RichText> arrayListCollectNodes = collectNodes(richMessageLayout.richMessage);
            int[] iArr = new int[arrayListCollectNodes.size()];
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            for (int i3 = 0; i3 < arrayListCollectNodes.size(); i3++) {
                if (i3 > 0) {
                    sb.append('\n');
                }
                iArr[i3] = sb.length();
                appendFlat(arrayListCollectNodes.get(i3), sb, null);
            }
            int iFindQuoteStart = MessageObject.findQuoteStart(sb.toString(), str, i);
            if (iFindQuoteStart >= 0) {
                int length = str.length() + iFindQuoteStart;
                IdentityHashMap identityHashMap = new IdentityHashMap();
                ArrayList<RichMessageLayout.RichBlock> arrayList3 = richMessageLayout.blocks;
                int size = arrayList3.size();
                int i4 = 0;
                while (i4 < size) {
                    RichMessageLayout.RichBlock richBlock = arrayList3.get(i4);
                    i4++;
                    RichMessageLayout.RichBlock richBlock2 = richBlock;
                    TextSelectionHelper.TextLayoutBlock[] text = richBlock2.getText();
                    if (text != null) {
                        int length2 = text.length;
                        int i5 = i2;
                        while (i5 < length2) {
                            CharSequence text2 = getText(text[i5]);
                            if (text2 instanceof Spanned) {
                                arrayList = arrayList3;
                                RichMessageLayout.QuoteRootSpan[] quoteRootSpanArr = (RichMessageLayout.QuoteRootSpan[]) ((Spanned) text2).getSpans(i2, text2.length(), RichMessageLayout.QuoteRootSpan.class);
                                int length3 = quoteRootSpanArr.length;
                                int i6 = i2;
                                while (i6 < length3) {
                                    RichMessageLayout.QuoteRootSpan quoteRootSpan = quoteRootSpanArr[i6];
                                    RichMessageLayout.QuoteRootSpan[] quoteRootSpanArr2 = quoteRootSpanArr;
                                    if (!identityHashMap.containsKey(quoteRootSpan.text)) {
                                        identityHashMap.put(quoteRootSpan.text, richBlock2);
                                    }
                                    i6++;
                                    quoteRootSpanArr = quoteRootSpanArr2;
                                }
                            } else {
                                arrayList = arrayList3;
                            }
                            i5++;
                            arrayList3 = arrayList;
                            i2 = 0;
                        }
                    }
                }
                for (int i7 = 0; i7 < arrayListCollectNodes.size(); i7++) {
                    if (iArr[i7] + flatLength(arrayListCollectNodes.get(i7)) > iFindQuoteStart && iArr[i7] < length && (r0 = (RichMessageLayout.RichBlock) identityHashMap.get(arrayListCollectNodes.get(i7))) != 0 && !r0.isVisible()) {
                        while (true) {
                            r0 = r0.parentDetails;
                            if (r0 != 0) {
                                if (!r0.isOpen() && !arrayList2.contains(r0)) {
                                    arrayList2.add(r0);
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList2;
    }

    private static IdentityHashMap<TL_iv.RichText, int[]> findDisplayed(RichMessageLayout richMessageLayout) {
        IdentityHashMap<TL_iv.RichText, int[]> identityHashMap = new IdentityHashMap<>();
        for (int i = 0; i < richMessageLayout.textBlocks.size(); i++) {
            CharSequence text = getText(richMessageLayout.textBlocks.get(i));
            if (text instanceof Spanned) {
                Spanned spanned = (Spanned) text;
                int iIntValue = richMessageLayout.textBlockCharOffsets.get(i).intValue();
                for (RichMessageLayout.QuoteRootSpan quoteRootSpan : (RichMessageLayout.QuoteRootSpan[]) spanned.getSpans(0, text.length(), RichMessageLayout.QuoteRootSpan.class)) {
                    if (!identityHashMap.containsKey(quoteRootSpan.text)) {
                        identityHashMap.put(quoteRootSpan.text, new int[]{spanned.getSpanStart(quoteRootSpan) + iIntValue, spanned.getSpanEnd(quoteRootSpan) + iIntValue, quoteRootSpan.flags});
                    }
                }
            }
        }
        return identityHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int flatToFormatted(RichMessageLayout richMessageLayout, TL_iv.RichText richText, int i, int i2, boolean z) {
        IdentityHashMap<TL_iv.RichText, int[]> identityHashMap = new IdentityHashMap<>();
        CharSequence textRecording = richMessageLayout.formatTextRecording(richText, i, identityHashMap);
        int iFlatToFormatted = flatToFormatted(richText, identityHashMap, i2, z, new int[]{0});
        return iFlatToFormatted < 0 ? textRecording.length() : iFlatToFormatted;
    }

    private static int flatToFormatted(TL_iv.RichText richText, IdentityHashMap<TL_iv.RichText, int[]> identityHashMap, int i, boolean z, int[] iArr) {
        if (richText != null && !(richText instanceof TL_iv.textEmpty) && !(richText instanceof TL_iv.textImage)) {
            int[] iArr2 = identityHashMap.get(richText);
            int i2 = 0;
            if (richText instanceof TL_iv.textConcat) {
                ArrayList<TL_iv.RichText> arrayList = richText.texts;
                int size = arrayList.size();
                while (i2 < size) {
                    TL_iv.RichText richText2 = arrayList.get(i2);
                    i2++;
                    int iFlatToFormatted = flatToFormatted(richText2, identityHashMap, i, z, iArr);
                    if (iFlatToFormatted >= 0) {
                        return iFlatToFormatted;
                    }
                }
                return -1;
            }
            if (richText instanceof TL_iv.textDiff) {
                TL_iv.textDiff textdiff = (TL_iv.textDiff) richText;
                return flatToFormatted(RichTextStyle.isEmpty(textdiff.text) ? textdiff.old_text : textdiff.text, identityHashMap, i, z, iArr);
            }
            boolean z2 = richText instanceof TL_iv.textPlain;
            if (!z2 && !(richText instanceof TL_iv.textMath) && !(richText instanceof TL_iv.textCustomEmoji) && !(richText instanceof TL_iv.textButton)) {
                return flatToFormatted(richText.text, identityHashMap, i, z, iArr);
            }
            int iFlatLength = flatLength(richText);
            int i3 = iArr[0];
            int i4 = i - i3;
            iArr[0] = i3 + iFlatLength;
            if (iArr2 != null && (!z ? i4 < iFlatLength : i4 <= iFlatLength)) {
                if (z2) {
                    int i5 = iArr2[1];
                    int i6 = iArr2[0];
                    if (i5 - i6 == iFlatLength) {
                        return i6 + Math.max(0, i4);
                    }
                }
                return (!z || i4 <= 0) ? iArr2[0] : iArr2[1];
            }
        }
        return -1;
    }

    public static class Range {
        final Sliced first;
        final int fromIndex;
        final int fromOffset;
        Sliced last;
        final RichMessageLayout layout;
        final ArrayList<TL_iv.RichText> nodes;
        int toIndex;
        int toOffset;

        public Range(RichMessageLayout richMessageLayout, ArrayList<TL_iv.RichText> arrayList, int i, int i2, Sliced sliced, int i3, int i4, Sliced sliced2) {
            this.layout = richMessageLayout;
            this.nodes = arrayList;
            this.fromIndex = i;
            this.fromOffset = i2;
            this.first = sliced;
            this.toIndex = i3;
            this.toOffset = i4;
            this.last = sliced2;
        }

        public void setEnd(int i, int i2) {
            if (i != this.toIndex) {
                this.last = null;
            }
            this.toIndex = i;
            this.toOffset = i2;
        }

        public int startOffset(int i) {
            if (i == this.fromIndex) {
                return this.fromOffset;
            }
            return 0;
        }

        public TL_iv.RichText fragment(int i) {
            int iStartOffset = startOffset(i);
            int i2 = i == this.toIndex ? this.toOffset : Integer.MAX_VALUE;
            if (iStartOffset == 0 && i2 == Integer.MAX_VALUE) {
                return this.nodes.get(i);
            }
            return slicer(i).slice(iStartOffset, i2);
        }

        public int formattedOffset(int i, int i2) {
            int i3;
            TL_iv.RichText richTextSlice;
            Sliced slicedSlicer = slicer(i);
            if (i == this.fromIndex && (i3 = this.fromOffset) > 0 && (richTextSlice = this.first.slice(0, i3)) != null) {
                i2 += RichQuote.flatLength(richTextSlice);
            }
            return RichQuote.flatToFormatted(this.layout, this.nodes.get(i), slicedSlicer.flags, i2, false);
        }

        public Sliced slicer(int i) {
            if (i == this.fromIndex) {
                return this.first;
            }
            if (i == this.toIndex) {
                if (this.last == null) {
                    this.last = Sliced.ofNode(this.layout, this.nodes.get(i));
                }
                return this.last;
            }
            return Sliced.ofNode(this.layout, this.nodes.get(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Position resolve(RichMessageLayout richMessageLayout, int i, final boolean z, IdentityHashMap<TL_iv.RichText, Integer> identityHashMap) {
        CharSequence text;
        int length;
        RichMessageLayout.QuoteRootSpan quoteRootSpan;
        int spanStart;
        int spanEnd;
        int size = richMessageLayout.textBlocks.size();
        boolean z2 = true;
        int i2 = z ? 1 : -1;
        int i3 = 0;
        int i4 = z ? 0 : size - 1;
        while (true) {
            if (!z) {
                if (i4 < 0) {
                    break;
                }
            } else {
                if (i4 >= size) {
                    break;
                }
                int iIntValue = richMessageLayout.textBlockCharOffsets.get(i4).intValue();
                CharSequence text2 = getText(richMessageLayout.textBlocks.get(i4));
                int length2 = (text2 == null ? 0 : text2.length()) + iIntValue;
                if (z) {
                    if (length2 > i) {
                        break;
                    }
                    i4 += i2;
                } else {
                    if (iIntValue < i) {
                        break;
                    }
                    i4 += i2;
                }
            }
        }
        loop1: while (true) {
            if (z) {
                if (i4 >= size) {
                    return null;
                }
            } else if (i4 < 0) {
                return null;
            }
            int iIntValue2 = richMessageLayout.textBlockCharOffsets.get(i4).intValue();
            text = getText(richMessageLayout.textBlocks.get(i4));
            if (text instanceof Spanned) {
                final Spanned spanned = (Spanned) text;
                if (z2) {
                    length = Math.max(i3, Math.min(text.length(), i - iIntValue2));
                } else {
                    length = z ? i3 : text.length();
                }
                RichMessageLayout.QuoteRootSpan[] quoteRootSpanArr = (RichMessageLayout.QuoteRootSpan[]) spanned.getSpans(i3, text.length(), RichMessageLayout.QuoteRootSpan.class);
                if (quoteRootSpanArr != null && quoteRootSpanArr.length != 0) {
                    Arrays.sort(quoteRootSpanArr, new Comparator() { // from class: org.telegram.messenger.RichQuote$$ExternalSyntheticLambda1
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return RichQuote.$r8$lambda$tlfbwrXfPhtunvj1c8zII69TKTs(z, spanned, (RichMessageLayout.QuoteRootSpan) obj, (RichMessageLayout.QuoteRootSpan) obj2);
                        }
                    });
                    int length3 = quoteRootSpanArr.length;
                    for (int i5 = i3; i5 < length3; i5++) {
                        quoteRootSpan = quoteRootSpanArr[i5];
                        if (identityHashMap.containsKey(quoteRootSpan.text)) {
                            spanStart = spanned.getSpanStart(quoteRootSpan);
                            spanEnd = spanned.getSpanEnd(quoteRootSpan);
                            if (!z) {
                                if (spanStart < length) {
                                    break loop1;
                                }
                            } else {
                                if (spanEnd > length) {
                                    break loop1;
                                }
                            }
                        }
                    }
                }
            }
            i4 += i2;
            z2 = false;
            i3 = 0;
        }
        return new Position(quoteRootSpan, (z ? Math.max(length, spanStart) : Math.min(length, spanEnd)) - spanStart, text, spanStart);
    }

    public static /* synthetic */ int $r8$lambda$tlfbwrXfPhtunvj1c8zII69TKTs(boolean z, Spanned spanned, RichMessageLayout.QuoteRootSpan quoteRootSpan, RichMessageLayout.QuoteRootSpan quoteRootSpan2) {
        int spanEnd;
        int spanEnd2;
        if (z) {
            spanEnd = spanned.getSpanStart(quoteRootSpan);
            spanEnd2 = spanned.getSpanStart(quoteRootSpan2);
        } else {
            spanEnd = spanned.getSpanEnd(quoteRootSpan2);
            spanEnd2 = spanned.getSpanEnd(quoteRootSpan);
        }
        return spanEnd - spanEnd2;
    }

    private static CharSequence getText(TextSelectionHelper.TextLayoutBlock textLayoutBlock) {
        Layout layout = textLayoutBlock == null ? null : textLayoutBlock.getLayout();
        if (layout == null) {
            return null;
        }
        return layout.getText();
    }

    public static class Sliced {
        final int flags;
        final int length;
        final IdentityHashMap<TL_iv.RichText, int[]> ranges;
        final TL_iv.RichText root;

        public Sliced(TL_iv.RichText richText, IdentityHashMap<TL_iv.RichText, int[]> identityHashMap, int i, int i2) {
            this.root = richText;
            this.ranges = identityHashMap;
            this.length = i;
            this.flags = i2;
        }

        public static Sliced of(RichMessageLayout richMessageLayout, Position position) {
            IdentityHashMap<TL_iv.RichText, int[]> identityHashMap = new IdentityHashMap<>();
            RichMessageLayout.QuoteRootSpan quoteRootSpan = position.root;
            CharSequence textRecording = richMessageLayout.formatTextRecording(quoteRootSpan.text, quoteRootSpan.flags, identityHashMap);
            int spanEnd = ((Spanned) position.text).getSpanEnd(position.root) - position.textStart;
            if (textRecording.length() != spanEnd || !TextUtils.regionMatches(textRecording, 0, position.text, position.textStart, spanEnd)) {
                FileLog.m1038e("RichQuote: laid out text doesn't match the formatted one");
                return null;
            }
            return new Sliced(position.root.text, identityHashMap, textRecording.length(), position.root.flags);
        }

        public static Sliced ofNode(RichMessageLayout richMessageLayout, TL_iv.RichText richText) {
            IdentityHashMap<TL_iv.RichText, int[]> identityHashMap = new IdentityHashMap<>();
            return new Sliced(richText, identityHashMap, richMessageLayout.formatTextRecording(richText, 0, identityHashMap).length(), 0);
        }

        public TL_iv.RichText slice(int i, int i2) {
            int iMax = Math.max(0, i);
            int iMin = Math.min(this.length, i2);
            if (iMax >= iMin) {
                return null;
            }
            return (iMax == 0 && iMin == this.length) ? this.root : slice(this.root, iMax, iMin);
        }

        private TL_iv.RichText slice(TL_iv.RichText richText, int i, int i2) {
            int[] iArr;
            int i3;
            int i4;
            if (richText == null || (iArr = this.ranges.get(richText)) == null || (i3 = iArr[0]) == (i4 = iArr[1]) || i4 <= i || i3 >= i2) {
                return null;
            }
            if (i > i3 || i4 > i2) {
                if (richText instanceof TL_iv.textPlain) {
                    String str = ((TL_iv.textPlain) richText).text;
                    if (str != null && str.length() == i4 - i3) {
                        int iMax = Math.max(i, i3) - i3;
                        int iMin = Math.min(i2, i4) - i3;
                        if (iMax > 0 && iMax < str.length() && Character.isLowSurrogate(str.charAt(iMax))) {
                            iMax--;
                        }
                        if (iMin > 0 && iMin < str.length() && Character.isLowSurrogate(str.charAt(iMin))) {
                            iMin++;
                        }
                        TL_iv.textPlain textplain = new TL_iv.textPlain();
                        textplain.text = str.substring(iMax, iMin);
                        return textplain;
                    }
                } else {
                    if (richText instanceof TL_iv.textConcat) {
                        ArrayList<TL_iv.RichText> arrayList = new ArrayList<>();
                        ArrayList<TL_iv.RichText> arrayList2 = richText.texts;
                        int size = arrayList2.size();
                        int i5 = 0;
                        while (i5 < size) {
                            TL_iv.RichText richText2 = arrayList2.get(i5);
                            i5++;
                            TL_iv.RichText richTextSlice = slice(richText2, i, i2);
                            if (richTextSlice != null) {
                                arrayList.add(richTextSlice);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            return null;
                        }
                        if (arrayList.size() == 1) {
                            return arrayList.get(0);
                        }
                        TL_iv.textConcat textconcat = new TL_iv.textConcat();
                        textconcat.texts = arrayList;
                        return textconcat;
                    }
                    if (!(richText instanceof TL_iv.textMath) && !(richText instanceof TL_iv.textCustomEmoji) && !(richText instanceof TL_iv.textDate) && !(richText instanceof TL_iv.textDiff) && !(richText instanceof TL_iv.textButton)) {
                        TL_iv.RichText richText3 = richText.text;
                        if (richText3 != null) {
                            TL_iv.RichText richTextSlice2 = slice(richText3, i, i2);
                            if (richTextSlice2 == null || (richText = RichQuote.copy(richText)) == null) {
                                return null;
                            }
                            richText.text = richTextSlice2;
                        }
                    }
                    return richText;
                }
            }
            return richText;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TL_iv.RichText copy(TL_iv.RichText richText) {
        try {
            return (TL_iv.RichText) TLObject.deepCopy(richText, new RichQuote$$ExternalSyntheticLambda0());
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    private static TL_iv.RichText withoutButtons(TL_iv.RichText richText) {
        if (richText == null || !hasButtons(richText)) {
            return richText;
        }
        if (richText instanceof TL_iv.textButton) {
            TL_iv.textPlain textplain = new TL_iv.textPlain();
            textplain.text = RichMessageLayout.getString(richText.text);
            return textplain;
        }
        if (richText instanceof TL_iv.textConcat) {
            TL_iv.textConcat textconcat = new TL_iv.textConcat();
            ArrayList<TL_iv.RichText> arrayList = richText.texts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_iv.RichText richText2 = arrayList.get(i);
                i++;
                textconcat.texts.add(withoutButtons(richText2));
            }
            return textconcat;
        }
        TL_iv.RichText richTextCopy = copy(richText);
        if (richTextCopy == null) {
            return null;
        }
        richTextCopy.text = withoutButtons(richText.text);
        return richTextCopy;
    }

    private static boolean hasButtons(TL_iv.RichText richText) {
        if (richText == null) {
            return false;
        }
        if (richText instanceof TL_iv.textButton) {
            return true;
        }
        if (richText instanceof TL_iv.textConcat) {
            ArrayList<TL_iv.RichText> arrayList = richText.texts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_iv.RichText richText2 = arrayList.get(i);
                i++;
                if (hasButtons(richText2)) {
                    return true;
                }
            }
            return false;
        }
        return hasButtons(richText.text);
    }

    public static ArrayList<TL_iv.RichText> copyList(ArrayList<TL_iv.RichText> arrayList) {
        if (arrayList == null) {
            return null;
        }
        return new ArrayList<>(arrayList);
    }

    public static boolean equals(ArrayList<TL_iv.RichText> arrayList, ArrayList<TL_iv.RichText> arrayList2) {
        if (arrayList == arrayList2) {
            return true;
        }
        if (arrayList == null || arrayList2 == null) {
            return false;
        }
        return TextUtils.equals(flatText(arrayList, null), flatText(arrayList2, null));
    }
}
