package io.noties.markwon.inlineparser;

import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.commonmark.node.Link;
import org.commonmark.node.Node;
import org.commonmark.node.Text;

/* JADX INFO: loaded from: classes5.dex */
public class AutolinkInlineProcessor extends InlineProcessor {
    private static final Pattern EMAIL_AUTOLINK = Pattern.compile("^<([a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>");
    private static final Pattern AUTOLINK = Pattern.compile("^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>");

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public char specialCharacter() {
        return Typography.less;
    }

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public Node parse() {
        String strMatch = match(EMAIL_AUTOLINK);
        if (strMatch != null) {
            String strSubstring = strMatch.substring(1, strMatch.length() - 1);
            Link link = new Link("mailto:".concat(strSubstring), null);
            link.appendChild(new Text(strSubstring));
            return link;
        }
        String strMatch2 = match(AUTOLINK);
        if (strMatch2 == null) {
            return null;
        }
        String strSubstring2 = strMatch2.substring(1, strMatch2.length() - 1);
        Link link2 = new Link(strSubstring2, null);
        link2.appendChild(new Text(strSubstring2));
        return link2;
    }
}
