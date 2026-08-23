package org.telegram.ui.iv;

import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.URLSpanReplacement;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes7.dex */
public abstract class RichHtml {
    private static boolean isWs(char c2) {
        return c2 == ' ' || c2 == '\n' || c2 == '\t' || c2 == '\r';
    }

    public static String serialize(List<BlockRow> list, int i, int i2, int i3, int i4, Map<Long, TL_iv.RichText> map) {
        StringBuilder sb = new StringBuilder();
        ListState listState = new ListState();
        serializeRange(sb, list, new int[]{i}, i2, i, i2, i3, i4, listState, false, 0, map);
        listState.closeAll(sb);
        return sb.toString();
    }

    public static class ListState {
        final ArrayList<Boolean> stack;

        private ListState() {
            this.stack = new ArrayList<>();
        }

        public void sync(StringBuilder sb, int i, boolean z) {
            while (this.stack.size() > i) {
                close(sb);
            }
            while (this.stack.size() < i) {
                open(sb, z);
            }
            if (this.stack.isEmpty()) {
                return;
            }
            if (this.stack.get(this.stack.size() - 1).booleanValue() != z) {
                close(sb);
                open(sb, z);
            }
        }

        private void open(StringBuilder sb, boolean z) {
            sb.append(z ? "<ol>" : "<ul>");
            this.stack.add(Boolean.valueOf(z));
        }

        private void close(StringBuilder sb) {
            ArrayList<Boolean> arrayList = this.stack;
            sb.append(arrayList.remove(arrayList.size() + (-1)).booleanValue() ? "</ol>" : "</ul>");
        }

        public void closeAll(StringBuilder sb) {
            while (!this.stack.isEmpty()) {
                close(sb);
            }
        }
    }

    private static void serializeRange(StringBuilder sb, List<BlockRow> list, int[] iArr, int i, int i2, int i3, int i4, int i5, ListState listState, boolean z, int i6, Map<Long, TL_iv.RichText> map) {
        StringBuilder sb2 = sb;
        while (true) {
            int i7 = iArr[0];
            if (i7 > i) {
                return;
            }
            BlockRow blockRow = list.get(i7);
            if (blockRow.detailsEnd) {
                if (z) {
                    return;
                } else {
                    iArr[0] = iArr[0] + 1;
                }
            } else if (blockRow.quoteIds.size() > i6) {
                listState.closeAll(sb2);
                serializeQuote(sb2, list, iArr, i, i2, i3, i4, i5, z, i6, map);
            } else if (RichEditorListView.isDetailsHeader(blockRow)) {
                listState.closeAll(sb2);
                serializeDetails(sb2, list, iArr, i, i2, i3, i4, i5, i6, map);
            } else if (blockRow.level > 0 && isTextBlock(blockRow.block)) {
                listState.sync(sb2, blockRow.level, blockRow.num > 0);
                sb2.append("<li>");
                appendInline(sb2, slicedStyled(blockRow, iArr[0], i2, i3, i4, i5));
                sb2.append("</li>");
                iArr[0] = iArr[0] + 1;
            } else {
                listState.closeAll(sb2);
                serializeLeaf(sb2, blockRow, iArr[0], i2, i3, i4, i5);
                iArr[0] = iArr[0] + 1;
                sb2 = sb;
            }
        }
    }

    private static void serializeDetails(StringBuilder sb, List<BlockRow> list, int[] iArr, int i, int i2, int i3, int i4, int i5, int i6, Map<Long, TL_iv.RichText> map) {
        BlockRow blockRow = list.get(iArr[0]);
        sb.append(((TL_iv.pageBlockDetails) blockRow.block).open ? "<details open>" : "<details>");
        sb.append("<summary>");
        appendInline(sb, slicedStyled(blockRow, iArr[0], i2, i3, i4, i5));
        sb.append("</summary>");
        iArr[0] = iArr[0] + 1;
        ListState listState = new ListState();
        serializeRange(sb, list, iArr, i, i2, i3, i4, i5, listState, true, i6, map);
        listState.closeAll(sb);
        int i7 = iArr[0];
        if (i7 <= i && i7 < list.size() && list.get(iArr[0]).detailsEnd) {
            iArr[0] = iArr[0] + 1;
        }
        sb.append("</details>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void serializeQuote(StringBuilder sb, List<BlockRow> list, int[] iArr, int i, int i2, int i3, int i4, int i5, boolean z, int i6, Map<Long, TL_iv.RichText> map) {
        Long l = list.get(iArr[0]).quoteIds.get(i6);
        long jLongValue = l.longValue();
        int i7 = iArr[0];
        while (true) {
            int i8 = i7 + 1;
            if (i8 > i) {
                break;
            }
            BlockRow blockRow = list.get(i8);
            if (blockRow.quoteIds.size() <= i6 || blockRow.quoteIds.get(i6).longValue() != jLongValue) {
                break;
            } else {
                i7 = i8;
            }
        }
        sb.append("<blockquote>");
        ListState listState = new ListState();
        serializeRange(sb, list, iArr, i7, i2, i3, i4, i5, listState, z, i6 + 1, map);
        listState.closeAll(sb);
        appendAuthorCite(sb, map != null ? authorText(map.get(l)) : null);
        sb.append("</blockquote>");
    }

    private static CharSequence authorText(TL_iv.RichText richText) {
        CharSequence spannable;
        if (richText == null || (richText instanceof TL_iv.textEmpty) || (spannable = RichTextStyle.toSpannable(richText)) == null || spannable.length() <= 0) {
            return null;
        }
        return spannable;
    }

    private static void appendAuthorCite(StringBuilder sb, CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        sb.append("<cite>");
        appendInline(sb, charSequence);
        sb.append("</cite>");
    }

    private static void serializeLeaf(StringBuilder sb, BlockRow blockRow, int i, int i2, int i3, int i4, int i5) {
        TL_iv.PageBlock pageBlock = blockRow.block;
        if (pageBlock instanceof TL_iv.pageBlockDivider) {
            sb.append("<hr>");
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            serializeTable(sb, (TL_iv.pageBlockTable) pageBlock);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockPhoto) {
            serializeSingleMedia(sb, "img", ((TL_iv.pageBlockPhoto) pageBlock).photo_id, blockRow.media, pageBlock);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockVideo) {
            serializeSingleMedia(sb, MediaStreamTrack.VIDEO_TRACK_KIND, ((TL_iv.pageBlockVideo) pageBlock).video_id, blockRow.media, pageBlock);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockAudio) {
            serializeSingleMedia(sb, MediaStreamTrack.AUDIO_TRACK_KIND, ((TL_iv.pageBlockAudio) pageBlock).audio_id, blockRow.media, pageBlock);
            return;
        }
        if (RichEditorListView.isGallery(pageBlock)) {
            serializeGallery(sb, pageBlock, blockRow);
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockMap) {
            serializeMap(sb, (TL_iv.pageBlockMap) pageBlock);
            return;
        }
        String strBlockTag = blockTag(pageBlock);
        if (strBlockTag == null) {
            CharSequence charSequenceCaptionOf = captionOf(pageBlock);
            if (charSequenceCaptionOf == null || charSequenceCaptionOf.length() <= 0) {
                return;
            }
            sb.append("<p>");
            appendInline(sb, charSequenceCaptionOf);
            sb.append("</p>");
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockPreformatted) {
            String str = ((TL_iv.pageBlockPreformatted) pageBlock).language;
            if (!TextUtils.isEmpty(str)) {
                sb.append("<pre language=\"");
                sb.append(escapeAttr(str));
                sb.append("\">");
            } else {
                sb.append("<pre>");
            }
            appendInline(sb, slicedStyled(blockRow, i, i2, i3, i4, i5));
            sb.append("</pre>");
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockPullquote) {
            sb.append("<blockquote class=\"pull\">");
            appendInline(sb, slicedStyled(blockRow, i, i2, i3, i4, i5));
            appendAuthorCite(sb, authorText(((TL_iv.pageBlockPullquote) pageBlock).caption));
            sb.append("</blockquote>");
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockBlockquote) {
            sb.append("<blockquote>");
            appendInline(sb, slicedStyled(blockRow, i, i2, i3, i4, i5));
            appendAuthorCite(sb, authorText(((TL_iv.pageBlockBlockquote) pageBlock).caption));
            sb.append("</blockquote>");
            return;
        }
        sb.append(Typography.less);
        sb.append(strBlockTag);
        sb.append(Typography.greater);
        appendInline(sb, slicedStyled(blockRow, i, i2, i3, i4, i5));
        sb.append("</");
        sb.append(strBlockTag);
        sb.append(Typography.greater);
    }

    private static CharSequence slicedStyled(BlockRow blockRow, int i, int i2, int i3, int i4, int i5) {
        CharSequence styledText;
        if (RichEditorListView.isDetailsHeader(blockRow)) {
            styledText = RichTextStyle.toSpannable(((TL_iv.pageBlockDetails) blockRow.block).title);
        } else {
            styledText = RichTextCell.readStyledText(blockRow.block);
        }
        if (styledText == null) {
            styledText = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        int length = styledText.length();
        int iMax = i == i2 ? Math.max(0, Math.min(i4, length)) : 0;
        int iMax2 = i == i3 ? Math.max(0, Math.min(i5, length)) : length;
        if (iMax > iMax2) {
            int i6 = iMax;
            iMax = iMax2;
            iMax2 = i6;
        }
        return (iMax == 0 && iMax2 == length) ? styledText : styledText.subSequence(iMax, iMax2);
    }

    private static boolean isTextBlock(TL_iv.PageBlock pageBlock) {
        return blockTag(pageBlock) != null;
    }

    private static String blockTag(TL_iv.PageBlock pageBlock) {
        if (pageBlock instanceof TL_iv.pageBlockHeading1) {
            return "h1";
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading2) {
            return "h2";
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading3) {
            return "h3";
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading4) {
            return "h4";
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading5) {
            return "h5";
        }
        if (pageBlock instanceof TL_iv.pageBlockHeading6) {
            return "h6";
        }
        if ((pageBlock instanceof TL_iv.pageBlockBlockquote) || (pageBlock instanceof TL_iv.pageBlockPullquote)) {
            return "blockquote";
        }
        if (pageBlock instanceof TL_iv.pageBlockPreformatted) {
            return "pre";
        }
        if (pageBlock instanceof TL_iv.pageBlockFooter) {
            return "footer";
        }
        if (pageBlock instanceof TL_iv.pageBlockParagraph) {
            return "p";
        }
        return null;
    }

    private static CharSequence captionOf(TL_iv.PageBlock pageBlock) {
        TL_iv.PageCaption pageCaption;
        TL_iv.RichText richText;
        CharSequence spannable;
        if (pageBlock == null || (pageCaption = pageBlock.caption) == null || (richText = pageCaption.text) == null || (spannable = RichTextStyle.toSpannable(richText)) == null || spannable.length() <= 0) {
            return null;
        }
        return spannable;
    }

    private static void serializeTable(StringBuilder sb, TL_iv.pageBlockTable pageblocktable) {
        ArrayList<TL_iv.pageTableCell> arrayList;
        sb.append("<table");
        if (pageblocktable.bordered) {
            sb.append(" border=\"1\"");
        }
        if (pageblocktable.striped) {
            sb.append(" class=\"striped\"");
        }
        sb.append(Typography.greater);
        TL_iv.RichText richText = pageblocktable.title;
        CharSequence spannable = richText != null ? RichTextStyle.toSpannable(richText) : null;
        if (spannable != null && spannable.length() > 0) {
            sb.append("<caption>");
            appendInline(sb, spannable);
            sb.append("</caption>");
        }
        ArrayList<TL_iv.pageTableRow> arrayList2 = pageblocktable.rows;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                TL_iv.pageTableRow pagetablerow = arrayList2.get(i);
                i++;
                TL_iv.pageTableRow pagetablerow2 = pagetablerow;
                sb.append("<tr>");
                if (pagetablerow2 != null && (arrayList = pagetablerow2.cells) != null) {
                    int size2 = arrayList.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        TL_iv.pageTableCell pagetablecell = arrayList.get(i2);
                        i2++;
                        TL_iv.pageTableCell pagetablecell2 = pagetablecell;
                        if (pagetablecell2 != null) {
                            String str = pagetablecell2.header ? "th" : "td";
                            sb.append(Typography.less);
                            sb.append(str);
                            int i3 = pagetablecell2.colspan;
                            if (i3 <= 1) {
                                i3 = 0;
                            }
                            if (i3 > 0) {
                                sb.append(" colspan=\"");
                                sb.append(i3);
                                sb.append(Typography.quote);
                            }
                            int i4 = pagetablecell2.rowspan;
                            if (i4 <= 1) {
                                i4 = 0;
                            }
                            if (i4 > 0) {
                                sb.append(" rowspan=\"");
                                sb.append(i4);
                                sb.append(Typography.quote);
                            }
                            String str2 = pagetablecell2.align_right ? "right" : pagetablecell2.align_center ? "center" : null;
                            if (str2 != null) {
                                sb.append(" align=\"");
                                sb.append(str2);
                                sb.append(Typography.quote);
                            }
                            String str3 = pagetablecell2.valign_bottom ? "bottom" : pagetablecell2.valign_middle ? "middle" : null;
                            if (str3 != null) {
                                sb.append(" valign=\"");
                                sb.append(str3);
                                sb.append(Typography.quote);
                            }
                            sb.append(Typography.greater);
                            appendInline(sb, TableModel.readStyledText(pagetablecell2));
                            sb.append("</");
                            sb.append(str);
                            sb.append(Typography.greater);
                        }
                    }
                }
                sb.append("</tr>");
            }
        }
        sb.append("</table>");
    }

    private static void serializeSingleMedia(StringBuilder sb, String str, long j, MediaUploadState mediaUploadState, TL_iv.PageBlock pageBlock) {
        if (j == 0) {
            return;
        }
        CharSequence charSequenceCaptionOf = captionOf(pageBlock);
        boolean z = charSequenceCaptionOf != null && charSequenceCaptionOf.length() > 0;
        if (z) {
            sb.append("<figure>");
        }
        appendMediaTag(sb, str, j, mediaUploadState, pageBlock);
        if (z) {
            sb.append("<figcaption>");
            appendInline(sb, charSequenceCaptionOf);
            sb.append("</figcaption></figure>");
        }
    }

    private static void appendMediaTag(StringBuilder sb, String str, long j, MediaUploadState mediaUploadState, TL_iv.PageBlock pageBlock) {
        sb.append(Typography.less);
        sb.append(str);
        sb.append(" src=\"");
        sb.append(j);
        sb.append(Typography.quote);
        if (mediaUploadState != null) {
            if (mediaUploadState.width > 0) {
                sb.append(" width=\"");
                sb.append(mediaUploadState.width);
                sb.append(Typography.quote);
            }
            if (mediaUploadState.height > 0) {
                sb.append(" height=\"");
                sb.append(mediaUploadState.height);
                sb.append(Typography.quote);
            }
        }
        if ((pageBlock instanceof TL_iv.pageBlockPhoto) && ((TL_iv.pageBlockPhoto) pageBlock).spoiler) {
            sb.append(" data-spoiler=\"1\"");
        }
        if ((pageBlock instanceof TL_iv.pageBlockVideo) && ((TL_iv.pageBlockVideo) pageBlock).spoiler) {
            sb.append(" data-spoiler=\"1\"");
        }
        sb.append(" />");
    }

    private static void serializeGallery(StringBuilder sb, TL_iv.PageBlock pageBlock, BlockRow blockRow) {
        StringBuilder sb2;
        String str = pageBlock instanceof TL_iv.pageBlockSlideshow ? "slideshow" : "collage";
        sb.append("<div class=\"");
        sb.append(str);
        sb.append("\">");
        ArrayList<TL_iv.PageBlock> arrayListGalleryItems = RichEditorListView.galleryItems(pageBlock);
        if (arrayListGalleryItems != null) {
            int i = 0;
            while (i < arrayListGalleryItems.size()) {
                TL_iv.PageBlock pageBlock2 = arrayListGalleryItems.get(i);
                ArrayList<MediaUploadState> arrayList = blockRow.medias;
                MediaUploadState mediaUploadState = (arrayList == null || i >= arrayList.size()) ? null : blockRow.medias.get(i);
                if (pageBlock2 instanceof TL_iv.pageBlockVideo) {
                    long j = ((TL_iv.pageBlockVideo) pageBlock2).video_id;
                    if (j != 0) {
                        appendMediaTag(sb, MediaStreamTrack.VIDEO_TRACK_KIND, j, mediaUploadState, pageBlock2);
                    }
                } else {
                    if (pageBlock2 instanceof TL_iv.pageBlockPhoto) {
                        long j2 = ((TL_iv.pageBlockPhoto) pageBlock2).photo_id;
                        if (j2 != 0) {
                            sb2 = sb;
                            appendMediaTag(sb2, "img", j2, mediaUploadState, pageBlock2);
                        }
                    }
                    i++;
                    sb = sb2;
                }
                sb2 = sb;
                i++;
                sb = sb2;
            }
        }
        StringBuilder sb3 = sb;
        CharSequence charSequenceCaptionOf = captionOf(pageBlock);
        if (charSequenceCaptionOf != null && charSequenceCaptionOf.length() > 0) {
            sb3.append("<figcaption>");
            appendInline(sb3, charSequenceCaptionOf);
            sb3.append("</figcaption>");
        }
        sb3.append("</div>");
    }

    private static void serializeMap(StringBuilder sb, TL_iv.pageBlockMap pageblockmap) {
        CharSequence charSequenceCaptionOf = captionOf(pageblockmap);
        boolean z = charSequenceCaptionOf != null && charSequenceCaptionOf.length() > 0;
        if (z) {
            sb.append("<figure>");
        }
        sb.append("<location");
        if (pageblockmap.geo != null) {
            sb.append(" lat=\"");
            sb.append(pageblockmap.geo.lat);
            sb.append(Typography.quote);
            sb.append(" long=\"");
            sb.append(pageblockmap.geo._long);
            sb.append(Typography.quote);
            if (pageblockmap.geo.access_hash != 0) {
                sb.append(" access=\"");
                sb.append(pageblockmap.geo.access_hash);
                sb.append(Typography.quote);
            }
        }
        if (pageblockmap.zoom != 0) {
            sb.append(" zoom=\"");
            sb.append(pageblockmap.zoom);
            sb.append(Typography.quote);
        }
        if (pageblockmap.f890w != 0) {
            sb.append(" w=\"");
            sb.append(pageblockmap.f890w);
            sb.append(Typography.quote);
        }
        if (pageblockmap.f889h != 0) {
            sb.append(" h=\"");
            sb.append(pageblockmap.f889h);
            sb.append(Typography.quote);
        }
        sb.append(" />");
        if (z) {
            sb.append("<figcaption>");
            appendInline(sb, charSequenceCaptionOf);
            sb.append("</figcaption></figure>");
        }
    }

    public static String inlineToHtml(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder();
        appendInline(sb, charSequence);
        return sb.toString();
    }

    public static String preToHtml(CharSequence charSequence, String str) {
        String strInlineToHtml = inlineToHtml(charSequence);
        if (strInlineToHtml.isEmpty()) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append("<pre language=\"");
            sb.append(escapeAttr(str));
            sb.append("\">");
        } else {
            sb.append("<pre>");
        }
        sb.append(strInlineToHtml);
        sb.append("</pre>");
        return sb.toString();
    }

    public static String tableToHtml(TL_iv.pageBlockTable pageblocktable) {
        if (pageblocktable == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        serializeTable(sb, pageblocktable);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void appendInline(StringBuilder sb, CharSequence charSequence) {
        long documentId;
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        if (!(charSequence instanceof Spanned)) {
            escape(sb, charSequence, 0, charSequence.length());
            return;
        }
        Spanned spanned = (Spanned) charSequence;
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iNextSpanTransition = spanned.nextSpanTransition(i, length, CharacterStyle.class);
            int i2 = 0;
            for (TextStyleSpan textStyleSpan : (TextStyleSpan[]) spanned.getSpans(i, iNextSpanTransition, TextStyleSpan.class)) {
                TextStyleSpan.TextStyleRun textStyleRun = textStyleSpan.getTextStyleRun();
                if (textStyleRun != null) {
                    i2 |= textStyleRun.flags;
                }
            }
            URLSpanReplacement[] uRLSpanReplacementArr = (URLSpanReplacement[]) spanned.getSpans(i, iNextSpanTransition, URLSpanReplacement.class);
            String url = uRLSpanReplacementArr.length > 0 ? uRLSpanReplacementArr[0].getURL() : null;
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spanned.getSpans(i, iNextSpanTransition, AnimatedEmojiSpan.class);
            if (animatedEmojiSpanArr.length > 0) {
                AnimatedEmojiSpan animatedEmojiSpan = animatedEmojiSpanArr[0];
                documentId = !animatedEmojiSpan.standard ? animatedEmojiSpan.getDocumentId() : 0L;
            }
            openInline(sb, i2, url, documentId);
            escape(sb, charSequence, i, iNextSpanTransition);
            closeInline(sb, i2, url, documentId);
            i = iNextSpanTransition;
        }
    }

    private static void openInline(StringBuilder sb, int i, String str, long j) {
        if ((i & 256) != 0) {
            sb.append("<spoiler>");
        }
        if ((i & 1) != 0) {
            sb.append("<b>");
        }
        if ((i & 2) != 0) {
            sb.append("<i>");
        }
        if ((i & 16) != 0) {
            sb.append("<u>");
        }
        if ((i & 8) != 0) {
            sb.append("<s>");
        }
        if ((i & 4) != 0) {
            sb.append("<code>");
        }
        if ((i & 16384) != 0) {
            sb.append("<sub>");
        }
        if ((32768 & i) != 0) {
            sb.append("<sup>");
        }
        if ((i & 65536) != 0) {
            sb.append("<mark>");
        }
        if (str != null) {
            sb.append("<a href=\"");
            sb.append(escapeAttr(str));
            sb.append("\">");
        }
        if (j != 0) {
            sb.append("<animated-emoji data-document-id=\"");
            sb.append(j);
            sb.append("\">");
        }
    }

    private static void closeInline(StringBuilder sb, int i, String str, long j) {
        if (j != 0) {
            sb.append("</animated-emoji>");
        }
        if (str != null) {
            sb.append("</a>");
        }
        if ((65536 & i) != 0) {
            sb.append("</mark>");
        }
        if ((32768 & i) != 0) {
            sb.append("</sup>");
        }
        if ((i & 16384) != 0) {
            sb.append("</sub>");
        }
        if ((i & 4) != 0) {
            sb.append("</code>");
        }
        if ((i & 8) != 0) {
            sb.append("</s>");
        }
        if ((i & 16) != 0) {
            sb.append("</u>");
        }
        if ((i & 2) != 0) {
            sb.append("</i>");
        }
        if ((i & 1) != 0) {
            sb.append("</b>");
        }
        if ((i & 256) != 0) {
            sb.append("</spoiler>");
        }
    }

    private static void escape(StringBuilder sb, CharSequence charSequence, int i, int i2) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == '\n') {
                sb.append("<br>");
            } else if (cCharAt == '<') {
                sb.append("&lt;");
            } else if (cCharAt == '>') {
                sb.append("&gt;");
            } else if (cCharAt == '&') {
                sb.append("&amp;");
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
    }

    private static String escapeAttr(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return str.replace("&", "&amp;").replace("\"", "&quot;").replace("<", "&lt;").replace(">", "&gt;");
    }

    public static List<BlockRow> parse(String str, Map<Long, TL_iv.RichText> map) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            parseBlocks(new Parser(str).parse(), arrayList, 0, map);
            if (arrayList.isEmpty()) {
                arrayList.add(new BlockRow(new TL_iv.pageBlockParagraph()));
            }
        }
        return arrayList;
    }

    private static void parseBlocks(List<Node> list, ArrayList<BlockRow> arrayList, int i, Map<Long, TL_iv.RichText> map) {
        SpannableStringBuilder spannableStringBuilder = null;
        for (Node node : list) {
            if (node.isText) {
                if (!isBlank(node.text)) {
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                    }
                    spannableStringBuilder.append((CharSequence) decode(node.text));
                }
            } else {
                String str = node.tag;
                if (isInlineTag(str)) {
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                    }
                    SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                    appendInlineNode(spannableStringBuilder2, node, 0, null, 0L);
                    spannableStringBuilder = spannableStringBuilder2;
                } else {
                    spannableStringBuilder = flushParagraph(arrayList, spannableStringBuilder, i);
                    str.getClass();
                    switch (str) {
                        case "summary":
                            addText(arrayList, new TL_iv.pageBlockParagraph(), node, i);
                            break;
                        case "figure":
                            parseFigure(node, arrayList, i);
                            break;
                        case "footer":
                            addText(arrayList, new TL_iv.pageBlockFooter(), node, i);
                            break;
                        case "p":
                            addText(arrayList, new TL_iv.pageBlockParagraph(), node, i);
                            break;
                        case "h1":
                            addText(arrayList, new TL_iv.pageBlockHeading1(), node, i);
                            break;
                        case "h2":
                            addText(arrayList, new TL_iv.pageBlockHeading2(), node, i);
                            break;
                        case "h3":
                            addText(arrayList, new TL_iv.pageBlockHeading3(), node, i);
                            break;
                        case "h4":
                            addText(arrayList, new TL_iv.pageBlockHeading4(), node, i);
                            break;
                        case "h5":
                            addText(arrayList, new TL_iv.pageBlockHeading5(), node, i);
                            break;
                        case "h6":
                            addText(arrayList, new TL_iv.pageBlockHeading6(), node, i);
                            break;
                        case "hr":
                            arrayList.add(new BlockRow(new TL_iv.pageBlockDivider()));
                            break;
                        case "ol":
                        case "ul":
                            parseList(node, arrayList, i, "ol".equals(str));
                            break;
                        case "td":
                        case "th":
                        case "tr":
                        case "tbody":
                        case "thead":
                            parseBlocks(node.children, arrayList, i, map);
                            break;
                        case "div":
                            String strAttr = node.attr("class");
                            String lowerCase = strAttr == null ? _UrlKt.FRAGMENT_ENCODE_SET : strAttr.toLowerCase();
                            if (lowerCase.contains("collage")) {
                                addRow(arrayList, parseGallery(node, false));
                                break;
                            } else {
                                if (lowerCase.contains("slideshow")) {
                                    addRow(arrayList, parseGallery(node, true));
                                } else {
                                    addText(arrayList, new TL_iv.pageBlockParagraph(), node, i);
                                }
                                break;
                            }
                            break;
                        case "img":
                            addRow(arrayList, buildMediaRow(node));
                            break;
                        case "pre":
                            TL_iv.pageBlockPreformatted pageblockpreformatted = new TL_iv.pageBlockPreformatted();
                            pageblockpreformatted.language = firstAttr(node, "language", "lang", "lng");
                            addText(arrayList, pageblockpreformatted, node, i);
                            break;
                        case "audio":
                            addRow(arrayList, buildMediaRow(node));
                            break;
                        case "table":
                            arrayList.add(parseTable(node));
                            break;
                        case "video":
                            addRow(arrayList, buildMediaRow(node));
                            break;
                        case "blockquote":
                            if (hasPullClass(node)) {
                                parsePullquote(node, arrayList, i);
                                break;
                            } else {
                                parseBlockquote(node, arrayList, i, map);
                                break;
                            }
                            break;
                        case "details":
                            parseDetails(node, arrayList, i, map);
                            break;
                        case "location":
                            addRow(arrayList, buildMediaRow(node));
                            break;
                        default:
                            if (!node.children.isEmpty()) {
                                parseBlocks(node.children, arrayList, i, map);
                                break;
                            } else {
                                break;
                            }
                            break;
                    }
                }
            }
        }
        flushParagraph(arrayList, spannableStringBuilder, i);
    }

    private static SpannableStringBuilder flushParagraph(ArrayList<BlockRow> arrayList, SpannableStringBuilder spannableStringBuilder, int i) {
        if (spannableStringBuilder == null || isBlank(spannableStringBuilder.toString())) {
            return null;
        }
        TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
        pageblockparagraph.text = RichTextStyle.fromSpannable(trim(spannableStringBuilder));
        arrayList.add(new BlockRow(pageblockparagraph, i, 0));
        return null;
    }

    private static void addText(ArrayList<BlockRow> arrayList, TL_iv.PageBlock pageBlock, Node node, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        appendChildrenInline(spannableStringBuilder, node, 0, null, 0L);
        RichTextCell.applyStyledTextToBlock(pageBlock, trim(spannableStringBuilder));
        arrayList.add(new BlockRow(pageBlock, i, 0));
    }

    private static void addRow(ArrayList<BlockRow> arrayList, BlockRow blockRow) {
        if (blockRow != null) {
            arrayList.add(blockRow);
        }
    }

    private static CharSequence inlineOf(Node node) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        appendChildrenInline(spannableStringBuilder, node, 0, null, 0L);
        return trim(spannableStringBuilder);
    }

    private static BlockRow parseTable(Node node) {
        TL_iv.pageBlockTable pageblocktable = new TL_iv.pageBlockTable();
        pageblocktable.title = new TL_iv.textEmpty();
        pageblocktable.rows = new ArrayList<>();
        pageblocktable.bordered = node.has("border");
        String strAttr = node.attr("class");
        pageblocktable.striped = strAttr != null && strAttr.toLowerCase().contains("striped");
        collectTableRows(node, pageblocktable);
        if (pageblocktable.rows.isEmpty()) {
            TL_iv.pageTableRow pagetablerow = new TL_iv.pageTableRow();
            ArrayList<TL_iv.pageTableCell> arrayList = new ArrayList<>();
            pagetablerow.cells = arrayList;
            arrayList.add(TableModel.newEmptyCell());
            pageblocktable.rows.add(pagetablerow);
        }
        return new BlockRow(pageblocktable);
    }

    private static void collectTableRows(Node node, TL_iv.pageBlockTable pageblocktable) {
        ArrayList<Node> arrayList = node.children;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Node node2 = arrayList.get(i);
            i++;
            Node node3 = node2;
            if (!node3.isText) {
                String str = node3.tag;
                str.getClass();
                switch (str) {
                    case "tr":
                        pageblocktable.rows.add(parseTableRow(node3));
                        break;
                    case "tbody":
                    case "tfoot":
                    case "thead":
                        collectTableRows(node3, pageblocktable);
                        break;
                    case "caption":
                        pageblocktable.title = RichTextStyle.fromSpannable(inlineOf(node3));
                        break;
                }
            }
        }
    }

    private static TL_iv.pageTableRow parseTableRow(Node node) {
        TL_iv.pageTableRow pagetablerow = new TL_iv.pageTableRow();
        pagetablerow.cells = new ArrayList<>();
        ArrayList<Node> arrayList = node.children;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Node node2 = arrayList.get(i);
            i++;
            Node node3 = node2;
            if (!node3.isText && ("td".equals(node3.tag) || "th".equals(node3.tag))) {
                TL_iv.pageTableCell pagetablecell = new TL_iv.pageTableCell();
                pagetablecell.colspan = parseIntAttr(node3.attr("colspan"), 0);
                pagetablecell.rowspan = parseIntAttr(node3.attr("rowspan"), 0);
                TableModel.applyStyledText(pagetablecell, inlineOf(node3));
                TableModel.setHeader(pagetablecell, "th".equals(node3.tag) || node3.has("header"));
                String strAttr = node3.attr("align");
                if (strAttr == null) {
                    strAttr = alignFromStyle(node3.attr("style"));
                }
                if ("center".equalsIgnoreCase(strAttr)) {
                    TableModel.setAlign(pagetablecell, 1);
                } else if ("right".equalsIgnoreCase(strAttr)) {
                    TableModel.setAlign(pagetablecell, 2);
                }
                String strAttr2 = node3.attr("valign");
                if ("middle".equalsIgnoreCase(strAttr2)) {
                    TableModel.setVAlign(pagetablecell, 1);
                } else if ("bottom".equalsIgnoreCase(strAttr2)) {
                    TableModel.setVAlign(pagetablecell, 2);
                }
                pagetablerow.cells.add(pagetablecell);
            }
        }
        if (pagetablerow.cells.isEmpty()) {
            pagetablerow.cells.add(TableModel.newEmptyCell());
        }
        return pagetablerow;
    }

    private static String alignFromStyle(String str) {
        String lowerCase;
        int iIndexOf;
        if (str == null || (iIndexOf = (lowerCase = str.toLowerCase()).indexOf("text-align")) < 0) {
            return null;
        }
        if (lowerCase.indexOf("center", iIndexOf) >= 0) {
            return "center";
        }
        if (lowerCase.indexOf("right", iIndexOf) >= 0) {
            return "right";
        }
        return null;
    }

    private static BlockRow buildMediaRow(Node node) {
        String str = node.tag;
        str.getClass();
        switch (str) {
            case "div":
                String strAttr = node.attr("class");
                String lowerCase = strAttr == null ? _UrlKt.FRAGMENT_ENCODE_SET : strAttr.toLowerCase();
                if (lowerCase.contains("slideshow")) {
                    return parseGallery(node, true);
                }
                if (lowerCase.contains("collage")) {
                    return parseGallery(node, false);
                }
                return null;
            case "img":
                return buildPhotoOrVideo(node, false);
            case "audio":
                return buildAudio(node);
            case "video":
                return buildPhotoOrVideo(node, true);
            case "location":
                return buildMap(node);
            default:
                return null;
        }
    }

    private static BlockRow buildPhotoOrVideo(Node node, boolean z) {
        long longAttr = parseLongAttr(node.attr("src"), 0L);
        if (longAttr <= 0) {
            return null;
        }
        TL_iv.PageBlock pageBlockNewMediaItemBlock = newMediaItemBlock(z, longAttr, node.has("data-spoiler"));
        setEmptyCaption(pageBlockNewMediaItemBlock);
        return new BlockRow(pageBlockNewMediaItemBlock);
    }

    private static BlockRow buildAudio(Node node) {
        long longAttr = parseLongAttr(node.attr("src"), 0L);
        if (longAttr <= 0) {
            return null;
        }
        TL_iv.pageBlockAudio pageblockaudio = new TL_iv.pageBlockAudio();
        pageblockaudio.audio_id = longAttr;
        setEmptyCaption(pageblockaudio);
        return new BlockRow(pageblockaudio);
    }

    private static BlockRow buildMap(Node node) {
        TL_iv.pageBlockMap pageblockmap = new TL_iv.pageBlockMap();
        TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
        tL_geoPoint.lat = parseDoubleAttr(node.attr("lat"), 0.0d);
        tL_geoPoint._long = parseDoubleAttr(node.attr("long"), 0.0d);
        tL_geoPoint.access_hash = parseLongAttr(node.attr("access"), 0L);
        pageblockmap.geo = tL_geoPoint;
        pageblockmap.zoom = parseIntAttr(node.attr("zoom"), 15);
        pageblockmap.f890w = parseIntAttr(node.attr("w"), MediaError.DetailedErrorCode.TEXT_UNKNOWN);
        pageblockmap.f889h = parseIntAttr(node.attr("h"), MediaError.DetailedErrorCode.MANIFEST_UNKNOWN);
        setEmptyCaption(pageblockmap);
        return new BlockRow(pageblockmap);
    }

    private static TL_iv.PageBlock newMediaItemBlock(boolean z, long j, boolean z2) {
        if (z) {
            TL_iv.pageBlockVideo pageblockvideo = new TL_iv.pageBlockVideo();
            if (j <= 0) {
                j = 0;
            }
            pageblockvideo.video_id = j;
            pageblockvideo.spoiler = z2;
            return pageblockvideo;
        }
        TL_iv.pageBlockPhoto pageblockphoto = new TL_iv.pageBlockPhoto();
        if (j <= 0) {
            j = 0;
        }
        pageblockphoto.photo_id = j;
        pageblockphoto.spoiler = z2;
        return pageblockphoto;
    }

    private static BlockRow parseGallery(Node node, boolean z) {
        TL_iv.PageBlock pageblockslideshow = z ? new TL_iv.pageBlockSlideshow() : new TL_iv.pageBlockCollage();
        ArrayList<TL_iv.PageBlock> arrayListGalleryItems = RichEditorListView.galleryItems(pageblockslideshow);
        ArrayList<Node> arrayList = node.children;
        int size = arrayList.size();
        int i = 0;
        CharSequence charSequenceInlineOf = null;
        while (i < size) {
            Node node2 = arrayList.get(i);
            i++;
            Node node3 = node2;
            if (!node3.isText) {
                if ("figcaption".equals(node3.tag)) {
                    charSequenceInlineOf = inlineOf(node3);
                } else {
                    boolean zEquals = MediaStreamTrack.VIDEO_TRACK_KIND.equals(node3.tag);
                    if (zEquals || "img".equals(node3.tag)) {
                        long longAttr = parseLongAttr(node3.attr("src"), 0L);
                        if (longAttr > 0) {
                            TL_iv.PageBlock pageBlockNewMediaItemBlock = newMediaItemBlock(zEquals, longAttr, node3.has("data-spoiler"));
                            setEmptyCaption(pageBlockNewMediaItemBlock);
                            arrayListGalleryItems.add(pageBlockNewMediaItemBlock);
                        }
                    }
                }
            }
        }
        if (arrayListGalleryItems.isEmpty()) {
            return null;
        }
        if (arrayListGalleryItems.size() == 1) {
            TL_iv.PageBlock pageBlock = arrayListGalleryItems.get(0);
            if (charSequenceInlineOf != null && charSequenceInlineOf.length() > 0) {
                setCaption(pageBlock, charSequenceInlineOf);
            }
            return new BlockRow(pageBlock);
        }
        setEmptyCaption(pageblockslideshow);
        if (charSequenceInlineOf != null && charSequenceInlineOf.length() > 0) {
            setCaption(pageblockslideshow, charSequenceInlineOf);
        }
        return new BlockRow(pageblockslideshow);
    }

    private static void parseFigure(Node node, ArrayList<BlockRow> arrayList, int i) {
        ArrayList<Node> arrayList2 = node.children;
        int size = arrayList2.size();
        BlockRow blockRowBuildMediaRow = null;
        CharSequence charSequenceInlineOf = null;
        int i2 = 0;
        while (i2 < size) {
            Node node2 = arrayList2.get(i2);
            i2++;
            Node node3 = node2;
            if (!node3.isText) {
                if ("figcaption".equals(node3.tag)) {
                    charSequenceInlineOf = inlineOf(node3);
                } else if (blockRowBuildMediaRow == null) {
                    blockRowBuildMediaRow = buildMediaRow(node3);
                }
            }
        }
        if (blockRowBuildMediaRow != null) {
            if (charSequenceInlineOf != null && charSequenceInlineOf.length() > 0) {
                setCaption(blockRowBuildMediaRow.block, charSequenceInlineOf);
            }
            arrayList.add(blockRowBuildMediaRow);
            return;
        }
        if (charSequenceInlineOf == null || charSequenceInlineOf.length() <= 0) {
            return;
        }
        TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
        pageblockparagraph.text = RichTextStyle.fromSpannable(charSequenceInlineOf);
        arrayList.add(new BlockRow(pageblockparagraph, i, 0));
    }

    private static void setCaption(TL_iv.PageBlock pageBlock, CharSequence charSequence) {
        TL_iv.PageCaption pageCaption = new TL_iv.PageCaption();
        pageCaption.text = RichTextStyle.fromSpannable(charSequence);
        pageCaption.credit = new TL_iv.textEmpty();
        pageBlock.caption = pageCaption;
    }

    private static void setEmptyCaption(TL_iv.PageBlock pageBlock) {
        TL_iv.PageCaption pageCaption = new TL_iv.PageCaption();
        pageCaption.text = new TL_iv.textEmpty();
        pageCaption.credit = new TL_iv.textEmpty();
        pageBlock.caption = pageCaption;
    }

    private static String firstAttr(Node node, String... strArr) {
        for (String str : strArr) {
            String strAttr = node.attr(str);
            if (strAttr != null) {
                return strAttr;
            }
        }
        return null;
    }

    private static long parseLongAttr(String str, long j) {
        if (str != null) {
            try {
                return Long.parseLong(str.trim());
            } catch (Exception unused) {
            }
        }
        return j;
    }

    private static int parseIntAttr(String str, int i) {
        if (str != null) {
            try {
                return Integer.parseInt(str.trim());
            } catch (Exception unused) {
            }
        }
        return i;
    }

    private static double parseDoubleAttr(String str, double d) {
        if (str != null) {
            try {
                return Double.parseDouble(str.trim());
            } catch (Exception unused) {
            }
        }
        return d;
    }

    private static void parseList(Node node, ArrayList<BlockRow> arrayList, int i, boolean z) {
        ArrayList<Node> arrayList2;
        int i2;
        int i3 = i + 1;
        ArrayList<Node> arrayList3 = node.children;
        int size = arrayList3.size();
        int i4 = 1;
        int i5 = 0;
        while (i5 < size) {
            Node node2 = arrayList3.get(i5);
            i5++;
            Node node3 = node2;
            if (!node3.isText && "li".equals(node3.tag)) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                ArrayList arrayList4 = new ArrayList();
                ArrayList<Node> arrayList5 = node3.children;
                int size2 = arrayList5.size();
                int i6 = 0;
                while (i6 < size2) {
                    int i7 = i6 + 1;
                    Node node4 = arrayList5.get(i6);
                    if (!node4.isText && ("ul".equals(node4.tag) || "ol".equals(node4.tag))) {
                        arrayList4.add(node4);
                    } else if (node4.isText) {
                        spannableStringBuilder.append((CharSequence) decode(node4.text));
                    } else {
                        arrayList2 = arrayList5;
                        i2 = size2;
                        appendInlineNode(spannableStringBuilder, node4, 0, null, 0L);
                        arrayList5 = arrayList2;
                        i6 = i7;
                        size2 = i2;
                    }
                    arrayList2 = arrayList5;
                    i2 = size2;
                    arrayList5 = arrayList2;
                    i6 = i7;
                    size2 = i2;
                }
                TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
                pageblockparagraph.text = RichTextStyle.fromSpannable(trim(spannableStringBuilder));
                BlockRow blockRow = new BlockRow(pageblockparagraph, i3, z ? i4 : 0);
                blockRow.checkbox = node3.has("data-checkbox") || hasCheckboxClass(node3);
                blockRow.checked = node3.has("data-checked");
                arrayList.add(blockRow);
                int size3 = arrayList4.size();
                int i8 = 0;
                while (i8 < size3) {
                    Object obj = arrayList4.get(i8);
                    i8++;
                    Node node5 = (Node) obj;
                    parseList(node5, arrayList, i3, "ol".equals(node5.tag));
                }
                i4++;
            }
        }
    }

    private static void parseDetails(Node node, ArrayList<BlockRow> arrayList, int i, Map<Long, TL_iv.RichText> map) {
        TL_iv.pageBlockDetails pageblockdetails = new TL_iv.pageBlockDetails();
        pageblockdetails.open = node.has("open");
        pageblockdetails.blocks = new ArrayList<>();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<Node> arrayList3 = node.children;
        int size = arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            Node node2 = arrayList3.get(i2);
            if (!node2.isText && "summary".equals(node2.tag)) {
                appendChildrenInline(spannableStringBuilder, node2, 0, null, 0L);
            } else {
                arrayList2.add(node2);
            }
            i2 = i3;
        }
        pageblockdetails.title = RichTextStyle.fromSpannable(trim(spannableStringBuilder));
        arrayList.add(new BlockRow(pageblockdetails));
        int size2 = arrayList.size();
        parseBlocks(arrayList2, arrayList, i, map);
        if (arrayList.size() == size2) {
            arrayList.add(new BlockRow(new TL_iv.pageBlockParagraph()));
        }
        BlockRow blockRow = new BlockRow(new TL_iv.pageBlockParagraph());
        blockRow.detailsEnd = true;
        arrayList.add(blockRow);
    }

    private static void parseBlockquote(Node node, ArrayList<BlockRow> arrayList, int i, Map<Long, TL_iv.RichText> map) {
        String str;
        ArrayList<Node> arrayList2 = node.children;
        int size = arrayList2.size();
        Node node2 = null;
        boolean z = false;
        int i2 = 0;
        while (i2 < size) {
            Node node3 = arrayList2.get(i2);
            i2++;
            Node node4 = node3;
            if (!node4.isText && (str = node4.tag) != null) {
                if ("cite".equals(str)) {
                    if (node2 == null) {
                        node2 = node4;
                    }
                } else if (!isInlineTag(node4.tag)) {
                    z = true;
                }
            }
        }
        TL_iv.RichText richTextCiteAuthor = citeAuthor(node2);
        if (!z) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            appendChildrenInlineExcept(spannableStringBuilder, node, "cite");
            TL_iv.pageBlockBlockquote pageblockblockquote = new TL_iv.pageBlockBlockquote();
            RichTextCell.applyStyledTextToBlock(pageblockblockquote, trim(spannableStringBuilder));
            if (richTextCiteAuthor != null) {
                pageblockblockquote.caption = richTextCiteAuthor;
            }
            arrayList.add(new BlockRow(pageblockblockquote, i, 0));
            return;
        }
        long jNewId = RichContainer.newId();
        int size2 = arrayList.size();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<Node> arrayList4 = node.children;
        int size3 = arrayList4.size();
        int i3 = 0;
        while (i3 < size3) {
            Node node5 = arrayList4.get(i3);
            i3++;
            Node node6 = node5;
            if (node6.isText || !"cite".equals(node6.tag)) {
                arrayList3.add(node6);
            }
        }
        parseBlocks(arrayList3, arrayList, i, map);
        if (arrayList.size() == size2) {
            arrayList.add(new BlockRow(new TL_iv.pageBlockParagraph(), i, 0));
        }
        while (size2 < arrayList.size()) {
            arrayList.get(size2).quoteIds.add(0, Long.valueOf(jNewId));
            size2++;
        }
        if (richTextCiteAuthor == null || map == null) {
            return;
        }
        map.put(Long.valueOf(jNewId), richTextCiteAuthor);
    }

    private static void parsePullquote(Node node, ArrayList<BlockRow> arrayList, int i) {
        Node node2;
        ArrayList<Node> arrayList2 = node.children;
        int size = arrayList2.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                node2 = null;
                break;
            }
            Node node3 = arrayList2.get(i2);
            i2++;
            node2 = node3;
            if (!node2.isText && "cite".equals(node2.tag)) {
                break;
            }
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        appendChildrenInlineExcept(spannableStringBuilder, node, "cite");
        TL_iv.pageBlockPullquote pageblockpullquote = new TL_iv.pageBlockPullquote();
        RichTextCell.applyStyledTextToBlock(pageblockpullquote, trim(spannableStringBuilder));
        TL_iv.RichText richTextCiteAuthor = citeAuthor(node2);
        if (richTextCiteAuthor != null) {
            pageblockpullquote.caption = richTextCiteAuthor;
        }
        arrayList.add(new BlockRow(pageblockpullquote, i, 0));
    }

    private static TL_iv.RichText citeAuthor(Node node) {
        CharSequence charSequenceInlineOf;
        if (node == null || (charSequenceInlineOf = inlineOf(node)) == null || charSequenceInlineOf.length() == 0) {
            return null;
        }
        return RichTextStyle.fromSpannable(charSequenceInlineOf);
    }

    private static void appendChildrenInlineExcept(SpannableStringBuilder spannableStringBuilder, Node node, String str) {
        SpannableStringBuilder spannableStringBuilder2;
        ArrayList<Node> arrayList = node.children;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Node node2 = arrayList.get(i);
            i++;
            Node node3 = node2;
            if (node3.isText) {
                spannableStringBuilder2 = spannableStringBuilder;
                appendStyled(spannableStringBuilder2, decode(node3.text), 0, null, 0L);
            } else {
                spannableStringBuilder2 = spannableStringBuilder;
                if (!str.equals(node3.tag)) {
                    appendInlineNode(spannableStringBuilder2, node3, 0, null, 0L);
                }
            }
            spannableStringBuilder = spannableStringBuilder2;
        }
    }

    private static boolean isInlineTag(String str) {
        str.getClass();
        switch (str) {
            case "spoiler":
            case "strike":
            case "strong":
            case "a":
            case "b":
            case "i":
            case "s":
            case "u":
            case "br":
            case "em":
            case "tt":
            case "del":
            case "sub":
            case "sup":
            case "code":
            case "font":
            case "span":
            case "animated-emoji":
                return true;
            default:
                return false;
        }
    }

    private static void appendChildrenInline(SpannableStringBuilder spannableStringBuilder, Node node, int i, String str, long j) {
        SpannableStringBuilder spannableStringBuilder2;
        int i2;
        String str2;
        long j2;
        ArrayList<Node> arrayList = node.children;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Node node2 = arrayList.get(i3);
            i3++;
            Node node3 = node2;
            if (node3.isText) {
                spannableStringBuilder2 = spannableStringBuilder;
                i2 = i;
                str2 = str;
                j2 = j;
                appendStyled(spannableStringBuilder2, decode(node3.text), i2, str2, j2);
            } else {
                spannableStringBuilder2 = spannableStringBuilder;
                i2 = i;
                str2 = str;
                j2 = j;
                appendInlineNode(spannableStringBuilder2, node3, i2, str2, j2);
            }
            spannableStringBuilder = spannableStringBuilder2;
            i = i2;
            str = str2;
            j = j2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void appendInlineNode(SpannableStringBuilder spannableStringBuilder, Node node, int i, String str, long j) {
        int i2;
        String str2;
        long j2;
        int i3;
        String str3 = node.tag;
        str3.getClass();
        switch (str3) {
            case "spoiler":
                i |= 256;
                if (node.children.isEmpty() || node.isText) {
                    appendChildrenInline(spannableStringBuilder, node, i, str, j);
                    break;
                }
                break;
            case "strike":
            case "s":
            case "del":
                i |= 8;
                if (node.children.isEmpty()) {
                    break;
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "strong":
            case "b":
                i |= 1;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "a":
                i2 = i;
                str2 = str;
                j2 = j;
                String strAttr = node.attr("href");
                if (strAttr != null) {
                    str = strAttr;
                    i = i2;
                } else {
                    i = i2;
                    str = str2;
                }
                j = j2;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "i":
            case "em":
                i |= 2;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "u":
                i |= 16;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "br":
                appendStyled(spannableStringBuilder, "\n", i, str, j);
                break;
            case "tt":
            case "code":
                i |= 4;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "sub":
                i |= 16384;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "sup":
                i3 = 32768;
                i |= i3;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "mark":
                i3 = 65536;
                i |= i3;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
            case "animated-emoji":
                String strAttr2 = node.attr("data-document-id");
                if (strAttr2 != null) {
                    try {
                        j = Long.parseLong(strAttr2.trim());
                        break;
                    } catch (Exception unused) {
                        i2 = i;
                        str2 = str;
                        j2 = j;
                        i = i2;
                        str = str2;
                        j = j2;
                    }
                    if (node.children.isEmpty()) {
                    }
                    appendChildrenInline(spannableStringBuilder, node, i, str, j);
                    break;
                }
            default:
                i2 = i;
                str2 = str;
                j2 = j;
                i = i2;
                str = str2;
                j = j2;
                if (node.children.isEmpty()) {
                }
                appendChildrenInline(spannableStringBuilder, node, i, str, j);
                break;
        }
    }

    private static void appendStyled(SpannableStringBuilder spannableStringBuilder, CharSequence charSequence, int i, String str, long j) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(charSequence);
        int length2 = spannableStringBuilder.length();
        if (j != 0) {
            spannableStringBuilder.setSpan(new AnimatedEmojiSpan(j, (Paint.FontMetricsInt) null), length, length2, 33);
        }
        if (i != 0) {
            TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
            textStyleRun.flags = i & 114975;
            spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun, AndroidUtilities.dp(SharedConfig.fontSize)), length, length2, 33);
        }
        if (str != null) {
            spannableStringBuilder.setSpan(new URLSpanReplacement(str), length, length2, 33);
        }
    }

    private static boolean hasPullClass(Node node) {
        String strAttr = node.attr("class");
        return strAttr != null && strAttr.toLowerCase().contains("pull");
    }

    private static boolean hasCheckboxClass(Node node) {
        String strAttr = node.attr("class");
        return strAttr != null && strAttr.toLowerCase().contains("checkbox");
    }

    private static boolean isBlank(String str) {
        if (str == null) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != 160) {
                return false;
            }
        }
        return true;
    }

    private static CharSequence trim(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length();
        int i = 0;
        while (i < length && isWs(spannableStringBuilder.charAt(i))) {
            i++;
        }
        while (length > i && isWs(spannableStringBuilder.charAt(length - 1))) {
            length--;
        }
        return (i == 0 && length == spannableStringBuilder.length()) ? spannableStringBuilder : spannableStringBuilder.subSequence(i, length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String decode(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (str.indexOf(38) < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '&') {
                sb.append(cCharAt);
            } else {
                int i2 = i + 1;
                int iIndexOf = str.indexOf(59, i2);
                if (iIndexOf < 0 || iIndexOf - i > 12) {
                    sb.append(cCharAt);
                } else {
                    String strEntity = entity(str.substring(i2, iIndexOf));
                    if (strEntity != null) {
                        sb.append(strEntity);
                        i = iIndexOf;
                    } else {
                        sb.append(cCharAt);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    private static String entity(String str) {
        int i;
        str.getClass();
        switch (str) {
            case "gt":
                return ">";
            case "lt":
                return "<";
            case "amp":
                return "&";
            case "apos":
                return "'";
            case "nbsp":
                return " ";
            case "quot":
                return "\"";
            default:
                if (str.length() > 1 && str.charAt(0) == '#') {
                    try {
                        if (str.charAt(1) == 'x' || str.charAt(1) == 'X') {
                            i = Integer.parseInt(str.substring(2), 16);
                        } else {
                            i = Integer.parseInt(str.substring(1));
                        }
                        return new String(Character.toChars(i));
                    } catch (Exception unused) {
                    }
                }
                return null;
        }
    }

    public static class Node {
        Map<String, String> attrs;
        final ArrayList<Node> children = new ArrayList<>();
        boolean isText;
        String tag;
        String text;

        private Node() {
        }

        public static Node text(String str) {
            Node node = new Node();
            node.isText = true;
            node.text = str;
            return node;
        }

        public static Node el(String str) {
            Node node = new Node();
            node.tag = str;
            return node;
        }

        public String attr(String str) {
            Map<String, String> map = this.attrs;
            if (map == null) {
                return null;
            }
            return map.get(str);
        }

        public boolean has(String str) {
            Map<String, String> map = this.attrs;
            return map != null && map.containsKey(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isVoid(String str) {
        str.getClass();
        switch (str) {
            case "br":
            case "hr":
            case "img":
            case "wbr":
            case "link":
            case "meta":
            case "input":
                return true;
            default:
                return false;
        }
    }

    public static class Parser {

        /* JADX INFO: renamed from: p */
        int f1088p;

        /* JADX INFO: renamed from: s */
        final String f1089s;

        private boolean isSpace(char c2) {
            return c2 == ' ' || c2 == '\t' || c2 == '\n' || c2 == '\r' || c2 == '\f';
        }

        public Parser(String str) {
            this.f1089s = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        }

        public List<Node> parse() {
            ArrayList<Node> arrayList = new ArrayList<>();
            ArrayList<Node> arrayList2 = new ArrayList<>();
            while (this.f1088p < this.f1089s.length()) {
                char cCharAt = this.f1089s.charAt(this.f1088p);
                String str = this.f1089s;
                if (cCharAt == '<') {
                    if (str.startsWith("<!--", this.f1088p)) {
                        int iIndexOf = this.f1089s.indexOf("-->", this.f1088p + 4);
                        this.f1088p = iIndexOf < 0 ? this.f1089s.length() : iIndexOf + 3;
                    } else if (this.f1088p + 1 < this.f1089s.length() && this.f1089s.charAt(this.f1088p + 1) == '!') {
                        int iIndexOf2 = this.f1089s.indexOf(62, this.f1088p);
                        this.f1088p = iIndexOf2 < 0 ? this.f1089s.length() : iIndexOf2 + 1;
                    } else if (this.f1088p + 1 < this.f1089s.length() && this.f1089s.charAt(this.f1088p + 1) == '/') {
                        int iIndexOf3 = this.f1089s.indexOf(62, this.f1088p);
                        String str2 = this.f1089s;
                        String lowerCase = str2.substring(this.f1088p + 2, iIndexOf3 < 0 ? str2.length() : iIndexOf3).trim().toLowerCase();
                        this.f1088p = iIndexOf3 < 0 ? this.f1089s.length() : iIndexOf3 + 1;
                        closeTag(arrayList2, lowerCase);
                    } else {
                        int iFindTagEnd = findTagEnd(this.f1088p);
                        String str3 = this.f1089s;
                        if (iFindTagEnd < 0) {
                            addText(arrayList2, arrayList, str3.substring(this.f1088p));
                            return arrayList;
                        }
                        String strSubstring = str3.substring(this.f1088p + 1, iFindTagEnd);
                        this.f1088p = iFindTagEnd + 1;
                        boolean zEndsWith = strSubstring.endsWith("/");
                        if (zEndsWith) {
                            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                        }
                        Node tag = parseTag(strSubstring);
                        if (tag != null) {
                            addChild(arrayList2, arrayList, tag);
                            if (!zEndsWith && !RichHtml.isVoid(tag.tag)) {
                                arrayList2.add(tag);
                            }
                        }
                    }
                } else {
                    int iIndexOf4 = str.indexOf(60, this.f1088p);
                    if (iIndexOf4 < 0) {
                        iIndexOf4 = this.f1089s.length();
                    }
                    addText(arrayList2, arrayList, this.f1089s.substring(this.f1088p, iIndexOf4));
                    this.f1088p = iIndexOf4;
                }
            }
            return arrayList;
        }

        private int findTagEnd(int i) {
            boolean z = false;
            char c2 = 0;
            for (int i2 = i + 1; i2 < this.f1089s.length(); i2++) {
                char cCharAt = this.f1089s.charAt(i2);
                if (z) {
                    if (cCharAt == c2) {
                        z = false;
                    }
                } else if (cCharAt == '\"' || cCharAt == '\'') {
                    z = true;
                    c2 = cCharAt;
                } else if (cCharAt == '>') {
                    return i2;
                }
            }
            return -1;
        }

        private void closeTag(ArrayList<Node> arrayList, String str) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size).tag.equals(str)) {
                    while (arrayList.size() > size) {
                        arrayList.remove(arrayList.size() - 1);
                    }
                    return;
                }
            }
        }

        private void addChild(ArrayList<Node> arrayList, ArrayList<Node> arrayList2, Node node) {
            if (arrayList.isEmpty()) {
                arrayList2.add(node);
            } else {
                arrayList.get(arrayList.size() - 1).children.add(node);
            }
        }

        private void addText(ArrayList<Node> arrayList, ArrayList<Node> arrayList2, String str) {
            if (str.isEmpty()) {
                return;
            }
            addChild(arrayList, arrayList2, Node.text(str));
        }

        private Node parseTag(String str) {
            int i;
            String strSubstring;
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return null;
            }
            int i2 = 0;
            while (i2 < strTrim.length() && !isSpace(strTrim.charAt(i2))) {
                i2++;
            }
            String lowerCase = strTrim.substring(0, i2).toLowerCase();
            if (lowerCase.isEmpty()) {
                return null;
            }
            Node nodeEl = Node.el(lowerCase);
            while (i2 < strTrim.length()) {
                while (i2 < strTrim.length() && isSpace(strTrim.charAt(i2))) {
                    i2++;
                }
                if (i2 >= strTrim.length()) {
                    break;
                }
                int i3 = i2;
                while (i3 < strTrim.length() && strTrim.charAt(i3) != '=' && !isSpace(strTrim.charAt(i3))) {
                    i3++;
                }
                String lowerCase2 = strTrim.substring(i2, i3).toLowerCase();
                while (i3 < strTrim.length() && isSpace(strTrim.charAt(i3))) {
                    i3++;
                }
                if (i3 < strTrim.length() && strTrim.charAt(i3) == '=') {
                    do {
                        i3++;
                        if (i3 >= strTrim.length()) {
                            break;
                        }
                    } while (isSpace(strTrim.charAt(i3)));
                    if (i3 < strTrim.length() && (strTrim.charAt(i3) == '\"' || strTrim.charAt(i3) == '\'')) {
                        char cCharAt = strTrim.charAt(i3);
                        int i4 = i3 + 1;
                        int i5 = i4;
                        while (i5 < strTrim.length() && strTrim.charAt(i5) != cCharAt) {
                            i5++;
                        }
                        strSubstring = strTrim.substring(i4, Math.min(i5, strTrim.length()));
                        if (i5 < strTrim.length()) {
                            i5++;
                        }
                        i = i5;
                    } else {
                        i = i3;
                        while (i < strTrim.length() && !isSpace(strTrim.charAt(i))) {
                            i++;
                        }
                        strSubstring = strTrim.substring(i3, i);
                    }
                } else {
                    i = i3;
                    strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                if (!lowerCase2.isEmpty()) {
                    if (nodeEl.attrs == null) {
                        nodeEl.attrs = new HashMap();
                    }
                    nodeEl.attrs.put(lowerCase2, RichHtml.decode(strSubstring));
                }
                i2 = i;
            }
            return nodeEl;
        }
    }
}
