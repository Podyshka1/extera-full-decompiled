package io.noties.markwon.inlineparser;

import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.commonmark.node.HtmlInline;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
public class HtmlInlineProcessor extends InlineProcessor {
    private static final Pattern HTML_TAG = Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)", 2);

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public char specialCharacter() {
        return Typography.less;
    }

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public Node parse() {
        String strMatch = match(HTML_TAG);
        if (strMatch == null) {
            return null;
        }
        HtmlInline htmlInline = new HtmlInline();
        htmlInline.setLiteral(strMatch);
        return htmlInline;
    }
}
