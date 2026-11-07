package io.noties.markwon.html;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaTrack;
import io.noties.markwon.html.HtmlTag;
import io.noties.markwon.html.HtmlTagImpl;
import io.noties.markwon.html.MarkwonHtmlParser;
import io.noties.markwon.html.jsoup.nodes.Attribute;
import io.noties.markwon.html.jsoup.nodes.Attributes;
import io.noties.markwon.html.jsoup.parser.CharacterReader;
import io.noties.markwon.html.jsoup.parser.ParseErrorList;
import io.noties.markwon.html.jsoup.parser.Token;
import io.noties.markwon.html.jsoup.parser.Tokeniser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes5.dex */
public class MarkwonHtmlParserImpl extends MarkwonHtmlParser {
    private final HtmlEmptyTagReplacement emptyTagReplacement;
    private boolean isInsidePreTag;
    private boolean previousIsBlock;
    private final TrimmingAppender trimmingAppender;
    static final Set<String> INLINE_TAGS = Collections.unmodifiableSet(new HashSet(Arrays.asList("a", "abbr", "acronym", "b", "bdo", "big", "br", "button", "cite", "code", "dfn", "em", "i", "img", PluginsConstants.Settings.TYPE_INPUT, "kbd", "label", "map", "object", "q", "samp", "script", "select", "small", "span", "strong", "sub", "sup", "textarea", "time", "tt", "var")));
    private static final Set<String> VOID_TAGS = Collections.unmodifiableSet(new HashSet(Arrays.asList("area", "base", "br", "col", "embed", "hr", "img", PluginsConstants.Settings.TYPE_INPUT, "keygen", "link", "meta", "param", "source", "track", "wbr")));
    private static final Set<String> BLOCK_TAGS = Collections.unmodifiableSet(new HashSet(Arrays.asList("address", "article", "aside", "blockquote", "canvas", "dd", "div", "dl", "dt", "fieldset", "figcaption", "figure", "footer", "form", "h1", "h2", "h3", "h4", "h5", "h6", PluginsConstants.Settings.TYPE_HEADER, "hgroup", "hr", "li", MediaTrack.ROLE_MAIN, "nav", "noscript", "ol", "output", "p", "pre", "section", "table", "tfoot", "ul", MediaStreamTrack.VIDEO_TRACK_KIND)));
    private final List<HtmlTagImpl.InlineImpl> inlineTags = new ArrayList(0);
    private HtmlTagImpl.BlockImpl currentBlock = HtmlTagImpl.BlockImpl.root();

    public static MarkwonHtmlParserImpl create() {
        return create(HtmlEmptyTagReplacement.create());
    }

    public static MarkwonHtmlParserImpl create(HtmlEmptyTagReplacement htmlEmptyTagReplacement) {
        return new MarkwonHtmlParserImpl(htmlEmptyTagReplacement, TrimmingAppender.create());
    }

    public MarkwonHtmlParserImpl(HtmlEmptyTagReplacement htmlEmptyTagReplacement, TrimmingAppender trimmingAppender) {
        this.emptyTagReplacement = htmlEmptyTagReplacement;
        this.trimmingAppender = trimmingAppender;
    }

    @Override // io.noties.markwon.html.MarkwonHtmlParser
    public <T extends Appendable & CharSequence> void processFragment(T t, String str) {
        Tokeniser tokeniser = new Tokeniser(new CharacterReader(str), ParseErrorList.noTracking());
        while (true) {
            Token token = tokeniser.read();
            Token.TokenType tokenType = token.type;
            if (Token.TokenType.EOF == tokenType) {
                return;
            }
            int i = C20891.$SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType[tokenType.ordinal()];
            if (i == 1) {
                Token.StartTag startTag = (Token.StartTag) token;
                if (isInlineTag(startTag.normalName)) {
                    processInlineTagStart(t, startTag);
                } else {
                    processBlockTagStart(t, startTag);
                }
            } else if (i == 2) {
                Token.EndTag endTag = (Token.EndTag) token;
                if (isInlineTag(endTag.normalName)) {
                    processInlineTagEnd(t, endTag);
                } else {
                    processBlockTagEnd(t, endTag);
                }
            } else if (i == 3) {
                processCharacter(t, (Token.Character) token);
            }
            token.reset();
        }
    }

    /* JADX INFO: renamed from: io.noties.markwon.html.MarkwonHtmlParserImpl$1 */
    public static /* synthetic */ class C20891 {
        static final /* synthetic */ int[] $SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // io.noties.markwon.html.MarkwonHtmlParser
    public void flushInlineTags(int i, MarkwonHtmlParser.FlushAction<Object> flushAction) {
        if (this.inlineTags.size() > 0) {
            if (i > -1) {
                Iterator<HtmlTagImpl.InlineImpl> it = this.inlineTags.iterator();
                while (it.hasNext()) {
                    it.next().closeAt(i);
                }
            }
            flushAction.apply(Collections.unmodifiableList(this.inlineTags));
            this.inlineTags.clear();
            return;
        }
        flushAction.apply(Collections.EMPTY_LIST);
    }

    @Override // io.noties.markwon.html.MarkwonHtmlParser
    public void flushBlockTags(int i, MarkwonHtmlParser.FlushAction<HtmlTag.Block> flushAction) {
        HtmlTagImpl.BlockImpl blockImpl = this.currentBlock;
        while (true) {
            HtmlTagImpl.BlockImpl blockImpl2 = blockImpl.parent;
            if (blockImpl2 == null) {
                break;
            } else {
                blockImpl = blockImpl2;
            }
        }
        if (i > -1) {
            blockImpl.closeAt(i);
        }
        List<HtmlTag.Block> listChildren = blockImpl.children();
        if (listChildren.size() > 0) {
            flushAction.apply(listChildren);
        } else {
            flushAction.apply(Collections.EMPTY_LIST);
        }
        this.currentBlock = HtmlTagImpl.BlockImpl.root();
    }

    public <T extends Appendable & CharSequence> void processInlineTagStart(T t, Token.StartTag startTag) {
        String str = startTag.normalName;
        T t2 = t;
        HtmlTagImpl.InlineImpl inlineImpl = new HtmlTagImpl.InlineImpl(str, t2.length(), extractAttributes(startTag));
        ensureNewLineIfPreviousWasBlock(t);
        if (isVoidTag(str) || startTag.selfClosing) {
            String strReplace = this.emptyTagReplacement.replace(inlineImpl);
            if (strReplace != null && strReplace.length() > 0) {
                AppendableUtils.appendQuietly(t, strReplace);
            }
            inlineImpl.closeAt(t2.length());
        }
        this.inlineTags.add(inlineImpl);
    }

    public <T extends Appendable & CharSequence> void processInlineTagEnd(T t, Token.EndTag endTag) {
        HtmlTagImpl.InlineImpl inlineImplFindOpenInlineTag = findOpenInlineTag(endTag.normalName);
        if (inlineImplFindOpenInlineTag != null) {
            if (isEmpty(t, inlineImplFindOpenInlineTag)) {
                appendEmptyTagReplacement(t, inlineImplFindOpenInlineTag);
            }
            inlineImplFindOpenInlineTag.closeAt(t.length());
        }
    }

    public <T extends Appendable & CharSequence> void processBlockTagStart(T t, Token.StartTag startTag) {
        String str = startTag.normalName;
        if ("p".equals(this.currentBlock.name)) {
            this.currentBlock.closeAt(t.length());
            AppendableUtils.appendQuietly((Appendable) t, '\n');
            this.currentBlock = this.currentBlock.parent;
        } else if ("li".equals(str) && "li".equals(this.currentBlock.name)) {
            this.currentBlock.closeAt(t.length());
            this.currentBlock = this.currentBlock.parent;
        }
        if (isBlockTag(str)) {
            this.isInsidePreTag = "pre".equals(str);
            ensureNewLine(t);
        } else {
            ensureNewLineIfPreviousWasBlock(t);
        }
        T t2 = t;
        HtmlTagImpl.BlockImpl blockImplCreate = HtmlTagImpl.BlockImpl.create(str, t2.length(), extractAttributes(startTag), this.currentBlock);
        boolean z = isVoidTag(str) || startTag.selfClosing;
        if (z) {
            String strReplace = this.emptyTagReplacement.replace(blockImplCreate);
            if (strReplace != null && strReplace.length() > 0) {
                AppendableUtils.appendQuietly(t, strReplace);
            }
            blockImplCreate.closeAt(t2.length());
        }
        appendBlockChild(blockImplCreate.parent, blockImplCreate);
        if (z) {
            return;
        }
        this.currentBlock = blockImplCreate;
    }

    public <T extends Appendable & CharSequence> void processBlockTagEnd(T t, Token.EndTag endTag) {
        String str = endTag.normalName;
        HtmlTagImpl.BlockImpl blockImplFindOpenBlockTag = findOpenBlockTag(str);
        if (blockImplFindOpenBlockTag != null) {
            if ("pre".equals(str)) {
                this.isInsidePreTag = false;
            }
            if (isEmpty(t, blockImplFindOpenBlockTag)) {
                appendEmptyTagReplacement(t, blockImplFindOpenBlockTag);
            }
            blockImplFindOpenBlockTag.closeAt(t.length());
            if (!blockImplFindOpenBlockTag.isEmpty()) {
                this.previousIsBlock = isBlockTag(blockImplFindOpenBlockTag.name);
            }
            if ("p".equals(str)) {
                AppendableUtils.appendQuietly((Appendable) t, '\n');
            }
            this.currentBlock = blockImplFindOpenBlockTag.parent;
        }
    }

    public <T extends Appendable & CharSequence> void processCharacter(T t, Token.Character character) {
        if (this.isInsidePreTag) {
            AppendableUtils.appendQuietly(t, character.getData());
        } else {
            ensureNewLineIfPreviousWasBlock(t);
            this.trimmingAppender.append(t, character.getData());
        }
    }

    public void appendBlockChild(HtmlTagImpl.BlockImpl blockImpl, HtmlTagImpl.BlockImpl blockImpl2) {
        List arrayList = blockImpl.children;
        if (arrayList == null) {
            arrayList = new ArrayList(2);
            blockImpl.children = arrayList;
        }
        arrayList.add(blockImpl2);
    }

    public HtmlTagImpl.InlineImpl findOpenInlineTag(String str) {
        int size = this.inlineTags.size();
        while (true) {
            size--;
            if (size <= -1) {
                return null;
            }
            HtmlTagImpl.InlineImpl inlineImpl = this.inlineTags.get(size);
            if (str.equals(inlineImpl.name) && inlineImpl.end < 0) {
                return inlineImpl;
            }
        }
    }

    public HtmlTagImpl.BlockImpl findOpenBlockTag(String str) {
        HtmlTagImpl.BlockImpl blockImpl = this.currentBlock;
        while (blockImpl != null && !str.equals(blockImpl.name) && !blockImpl.isClosed()) {
            blockImpl = blockImpl.parent;
        }
        return blockImpl;
    }

    public <T extends Appendable & CharSequence> void ensureNewLineIfPreviousWasBlock(T t) {
        if (this.previousIsBlock) {
            ensureNewLine(t);
            this.previousIsBlock = false;
        }
    }

    public static boolean isInlineTag(String str) {
        return INLINE_TAGS.contains(str);
    }

    public static boolean isVoidTag(String str) {
        return VOID_TAGS.contains(str);
    }

    public static boolean isBlockTag(String str) {
        return BLOCK_TAGS.contains(str);
    }

    public static <T extends Appendable & CharSequence> void ensureNewLine(T t) {
        T t2 = t;
        int length = t2.length();
        if (length <= 0 || '\n' == t2.charAt(length - 1)) {
            return;
        }
        AppendableUtils.appendQuietly((Appendable) t, '\n');
    }

    public static Map<String, String> extractAttributes(Token.StartTag startTag) {
        Attributes attributes = startTag.attributes;
        int size = attributes.size();
        if (size > 0) {
            HashMap map = new HashMap(size);
            for (Attribute attribute : attributes) {
                map.put(attribute.getKey().toLowerCase(Locale.US), attribute.getValue());
            }
            return Collections.unmodifiableMap(map);
        }
        return Collections.EMPTY_MAP;
    }

    public static <T extends Appendable & CharSequence> boolean isEmpty(T t, HtmlTagImpl htmlTagImpl) {
        return htmlTagImpl.start == t.length();
    }

    public <T extends Appendable & CharSequence> void appendEmptyTagReplacement(T t, HtmlTagImpl htmlTagImpl) {
        String strReplace = this.emptyTagReplacement.replace(htmlTagImpl);
        if (strReplace != null) {
            AppendableUtils.appendQuietly(t, strReplace);
        }
    }
}
