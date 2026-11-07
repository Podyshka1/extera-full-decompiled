package org.telegram.messenger.utils;

import android.graphics.Paint;
import android.text.Editable;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaDataController;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.utils.code.highlight.CodeHighlighting;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CopyUtilities {
    public static Spannable fromHTML(String str) {
        try {
            Spanned spannedFromHtml = Html.fromHtml("<inject>" + str + "</inject>", 63, null, new HTMLTagAttributesHandler(new HTMLTagHandler()));
            if (spannedFromHtml == null) {
                return null;
            }
            Object[] spans = spannedFromHtml.getSpans(0, spannedFromHtml.length(), Object.class);
            ArrayList arrayList = new ArrayList(spans.length);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : spans) {
                int spanStart = spannedFromHtml.getSpanStart(obj);
                int spanEnd = spannedFromHtml.getSpanEnd(obj);
                if (obj instanceof StyleSpan) {
                    int style = ((StyleSpan) obj).getStyle();
                    if ((style & 1) > 0) {
                        arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityBold(), spanStart, spanEnd));
                    }
                    if ((style & 2) > 0) {
                        arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityItalic(), spanStart, spanEnd));
                    }
                } else if (obj instanceof UnderlineSpan) {
                    arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityUnderline(), spanStart, spanEnd));
                } else if (obj instanceof StrikethroughSpan) {
                    arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityStrike(), spanStart, spanEnd));
                } else if (obj instanceof ParsedSpan) {
                    ParsedSpan parsedSpan = (ParsedSpan) obj;
                    int i = parsedSpan.type;
                    if (i == 0) {
                        arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntitySpoiler(), spanStart, spanEnd));
                    } else if (i == 1) {
                        if (!TextUtils.isEmpty(parsedSpan.lng)) {
                            arrayList2.add(parsedSpan);
                        } else {
                            arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityPre(), spanStart, spanEnd));
                        }
                    } else if (i == 4) {
                        arrayList.add(setEntityStartEnd(new TLRPC.TL_messageEntityCode(), spanStart, spanEnd));
                    } else if (i == 2 || i == 3) {
                        arrayList3.add(parsedSpan);
                    }
                } else if (obj instanceof AnimatedEmojiSpan) {
                    TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = new TLRPC.TL_messageEntityCustomEmoji();
                    AnimatedEmojiSpan animatedEmojiSpan = (AnimatedEmojiSpan) obj;
                    tL_messageEntityCustomEmoji.document_id = animatedEmojiSpan.documentId;
                    tL_messageEntityCustomEmoji.document = animatedEmojiSpan.document;
                    tL_messageEntityCustomEmoji.local = animatedEmojiSpan.local;
                    arrayList.add(setEntityStartEnd(tL_messageEntityCustomEmoji, spanStart, spanEnd));
                }
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannedFromHtml.toString());
            MediaDataController.addTextStyleRuns((ArrayList<TLRPC.MessageEntity>) arrayList, spannableStringBuilder, spannableStringBuilder);
            for (Object obj2 : spans) {
                if (obj2 instanceof URLSpan) {
                    int spanStart2 = spannedFromHtml.getSpanStart(obj2);
                    int spanEnd2 = spannedFromHtml.getSpanEnd(obj2);
                    String string = spannedFromHtml.subSequence(spanStart2, spanEnd2).toString();
                    String url = ((URLSpan) obj2).getURL();
                    if (string.equals(url)) {
                        spannableStringBuilder.setSpan(new URLSpan(url), spanStart2, spanEnd2, 33);
                    } else {
                        spannableStringBuilder.setSpan(new URLSpanReplacement(url), spanStart2, spanEnd2, 33);
                    }
                }
            }
            MediaDataController.addAnimatedEmojiSpans(arrayList, spannableStringBuilder, null);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                ParsedSpan parsedSpan2 = (ParsedSpan) arrayList2.get(i2);
                int spanStart3 = spannedFromHtml.getSpanStart(parsedSpan2);
                int spanEnd3 = spannedFromHtml.getSpanEnd(parsedSpan2);
                spannableStringBuilder.setSpan(new CodeHighlighting.Span(true, 0, null, parsedSpan2.lng, spannableStringBuilder.subSequence(spanStart3, spanEnd3).toString()), spanStart3, spanEnd3, 33);
            }
            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                ParsedSpan parsedSpan3 = (ParsedSpan) arrayList3.get(i3);
                QuoteSpan.putQuoteToEditable(spannableStringBuilder, spannedFromHtml.getSpanStart(parsedSpan3), spannedFromHtml.getSpanEnd(parsedSpan3), parsedSpan3.type == 3);
            }
            return spannableStringBuilder;
        } catch (Exception e) {
            FileLog.m1039e("Html.fromHtml", e);
            return null;
        }
    }

    private static TLRPC.MessageEntity setEntityStartEnd(TLRPC.MessageEntity messageEntity, int i, int i2) {
        messageEntity.offset = i;
        messageEntity.length = i2 - i;
        return messageEntity;
    }

    public static class HTMLTagAttributesHandler implements Html.TagHandler, ContentHandler {
        private final TagHandler handler;
        private ArrayDeque<Boolean> tagStatus;
        private Editable text;
        private ContentHandler wrapped;

        public interface TagHandler {
            boolean handleTag(boolean z, String str, Editable editable, Attributes attributes);
        }

        public static String getValue(Attributes attributes, String str) {
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                if (str.equals(attributes.getLocalName(i))) {
                    return attributes.getValue(i);
                }
            }
            return null;
        }

        private HTMLTagAttributesHandler(TagHandler tagHandler) {
            this.tagStatus = new ArrayDeque<>();
            this.handler = tagHandler;
        }

        @Override // android.text.Html.TagHandler
        public void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
            if (this.wrapped == null) {
                this.text = editable;
                this.wrapped = xMLReader.getContentHandler();
                xMLReader.setContentHandler(this);
                this.tagStatus.addLast(Boolean.FALSE);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            boolean zHandleTag = this.handler.handleTag(true, str2, this.text, attributes);
            this.tagStatus.addLast(Boolean.valueOf(zHandleTag));
            if (zHandleTag) {
                return;
            }
            this.wrapped.startElement(str, str2, str3, attributes);
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            if (!this.tagStatus.removeLast().booleanValue()) {
                this.wrapped.endElement(str, str2, str3);
            }
            this.handler.handleTag(false, str2, this.text, null);
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
            this.wrapped.setDocumentLocator(locator);
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            this.wrapped.startDocument();
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
            this.wrapped.endDocument();
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) throws SAXException {
            this.wrapped.startPrefixMapping(str, str2);
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) throws SAXException {
            this.wrapped.endPrefixMapping(str);
        }

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) throws SAXException {
            this.wrapped.characters(cArr, i, i2);
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
            this.wrapped.ignorableWhitespace(cArr, i, i2);
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) throws SAXException {
            this.wrapped.processingInstruction(str, str2);
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) throws SAXException {
            this.wrapped.skippedEntity(str);
        }
    }

    public static class HTMLTagHandler implements HTMLTagAttributesHandler.TagHandler {
        private HTMLTagHandler() {
        }

        @Override // org.telegram.messenger.utils.CopyUtilities.HTMLTagAttributesHandler.TagHandler
        public boolean handleTag(boolean z, String str, Editable editable, Attributes attributes) {
            String value;
            int i = 0;
            if (str.startsWith("animated-emoji")) {
                if (z) {
                    String value2 = HTMLTagAttributesHandler.getValue(attributes, "data-document-id");
                    if (value2 != null) {
                        editable.setSpan(new AnimatedEmojiSpan(Long.parseLong(value2), (Paint.FontMetricsInt) null), editable.length(), editable.length(), 17);
                        return true;
                    }
                } else {
                    AnimatedEmojiSpan animatedEmojiSpan = (AnimatedEmojiSpan) getLast(editable, AnimatedEmojiSpan.class);
                    if (animatedEmojiSpan != null) {
                        int spanStart = editable.getSpanStart(animatedEmojiSpan);
                        editable.removeSpan(animatedEmojiSpan);
                        if (spanStart != editable.length()) {
                            editable.setSpan(animatedEmojiSpan, spanStart, editable.length(), 33);
                        }
                        return true;
                    }
                }
            } else if (str.equals("spoiler")) {
                if (z) {
                    editable.setSpan(new ParsedSpan(i), editable.length(), editable.length(), 17);
                    return true;
                }
                ParsedSpan last = getLast(editable, ParsedSpan.class, 0);
                if (last != null) {
                    int spanStart2 = editable.getSpanStart(last);
                    editable.removeSpan(last);
                    if (spanStart2 != editable.length()) {
                        editable.setSpan(last, spanStart2, editable.length(), 33);
                    }
                    return true;
                }
            } else if (str.equals("pre") || str.equals("code") || str.equals("tt")) {
                boolean zEquals = str.equals("pre");
                if (!zEquals && getLast(editable, ParsedSpan.class, 1) != null) {
                    return false;
                }
                int i2 = zEquals ? 1 : 4;
                if (z) {
                    if (zEquals) {
                        value = HTMLTagAttributesHandler.getValue(attributes, "language");
                        if (value == null) {
                            value = HTMLTagAttributesHandler.getValue(attributes, "lang");
                        }
                        if (value == null) {
                            value = HTMLTagAttributesHandler.getValue(attributes, "lng");
                        }
                    } else {
                        value = null;
                    }
                    editable.setSpan(new ParsedSpan(i2, value), editable.length(), editable.length(), 17);
                    return true;
                }
                ParsedSpan last2 = getLast(editable, ParsedSpan.class, i2);
                if (last2 != null) {
                    int spanStart3 = editable.getSpanStart(last2);
                    editable.removeSpan(last2);
                    if (spanStart3 != editable.length()) {
                        editable.setSpan(last2, spanStart3, editable.length(), 33);
                    }
                    return true;
                }
            } else {
                if (str.equals("blockquote")) {
                    if (z) {
                        String value3 = HTMLTagAttributesHandler.getValue(attributes, "class");
                        if (HTMLTagAttributesHandler.getValue(attributes, "data-collapsed") != null || (value3 != null && value3.contains("telegram-collapsed-quote"))) {
                            i = 1;
                        }
                        editable.setSpan(new ParsedSpan(i == 0 ? 2 : 3), editable.length(), editable.length(), 17);
                        return true;
                    }
                    ParsedSpan lastQuote = getLastQuote(editable);
                    if (lastQuote != null) {
                        int spanStart4 = editable.getSpanStart(lastQuote);
                        editable.removeSpan(lastQuote);
                        if (spanStart4 != editable.length()) {
                            editable.setSpan(lastQuote, spanStart4, editable.length(), 33);
                        }
                        return true;
                    }
                } else if (str.equals("details")) {
                    if (z) {
                        editable.setSpan(new ParsedSpan(i), editable.length(), editable.length(), 17);
                        return true;
                    }
                    ParsedSpan last3 = getLast(editable, ParsedSpan.class, 3);
                    if (last3 != null) {
                        int spanStart5 = editable.getSpanStart(last3);
                        editable.removeSpan(last3);
                        if (spanStart5 != editable.length()) {
                            editable.setSpan(last3, spanStart5, editable.length(), 33);
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        private ParsedSpan getLastQuote(Editable editable) {
            int i;
            ParsedSpan[] parsedSpanArr = (ParsedSpan[]) editable.getSpans(0, editable.length(), ParsedSpan.class);
            for (int length = parsedSpanArr.length - 1; length >= 0; length--) {
                ParsedSpan parsedSpan = parsedSpanArr[length];
                if (editable.getSpanFlags(parsedSpan) == 17 && ((i = parsedSpan.type) == 2 || i == 3)) {
                    return parsedSpan;
                }
            }
            return null;
        }

        private <T> T getLast(Editable editable, Class<T> cls) {
            Object[] spans = editable.getSpans(0, editable.length(), cls);
            if (spans.length == 0) {
                return null;
            }
            for (int length = spans.length; length > 0; length--) {
                int i = length - 1;
                if (editable.getSpanFlags(spans[i]) == 17) {
                    return (T) spans[i];
                }
            }
            return null;
        }

        private <T extends ParsedSpan> T getLast(Editable editable, Class<T> cls, int i) {
            ParsedSpan[] parsedSpanArr = (ParsedSpan[]) editable.getSpans(0, editable.length(), cls);
            if (parsedSpanArr.length == 0) {
                return null;
            }
            for (int length = parsedSpanArr.length; length > 0; length--) {
                int i2 = length - 1;
                if (editable.getSpanFlags(parsedSpanArr[i2]) == 17) {
                    T t = (T) parsedSpanArr[i2];
                    if (t.type == i) {
                        return t;
                    }
                }
            }
            return null;
        }
    }

    public static class ParsedSpan {
        final String lng;
        final int type;

        private ParsedSpan(int i) {
            this.type = i;
            this.lng = null;
        }

        private ParsedSpan(int i, String str) {
            this.type = i;
            this.lng = str;
        }
    }
}
