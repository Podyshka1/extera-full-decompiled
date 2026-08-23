package io.noties.markwon.inlineparser;

import java.util.regex.Pattern;
import org.commonmark.internal.Bracket;
import org.commonmark.internal.util.Escaping;
import org.commonmark.node.Image;
import org.commonmark.node.Link;
import org.commonmark.node.LinkReferenceDefinition;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
public class CloseBracketInlineProcessor extends InlineProcessor {
    private static final Pattern WHITESPACE = MarkwonInlineParser.WHITESPACE;

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public char specialCharacter() {
        return ']';
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00aa  */
    @Override // io.noties.markwon.inlineparser.InlineProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Node parse() {
        boolean z;
        String destination;
        String title;
        boolean z2 = true;
        int i = this.index + 1;
        this.index = i;
        Bracket bracketLastBracket = lastBracket();
        if (bracketLastBracket == null) {
            return text("]");
        }
        if (!bracketLastBracket.allowed) {
            removeLastBracket();
            return text("]");
        }
        String strSubstring = null;
        if (peek() == '(') {
            this.index++;
            spnl();
            destination = parseLinkDestination();
            if (destination != null) {
                spnl();
                Pattern pattern = WHITESPACE;
                String str = this.input;
                int i2 = this.index;
                if (pattern.matcher(str.substring(i2 - 1, i2)).matches()) {
                    title = parseLinkTitle();
                    spnl();
                } else {
                    title = null;
                }
                if (peek() == ')') {
                    this.index++;
                    z = true;
                } else {
                    this.index = i;
                    z = false;
                }
            } else {
                z = false;
                title = null;
            }
        } else {
            z = false;
            destination = null;
            title = null;
        }
        if (!z) {
            int i3 = this.index;
            parseLinkLabel();
            int i4 = this.index - i3;
            if (i4 > 2) {
                strSubstring = this.input.substring(i3, i4 + i3);
            } else if (!bracketLastBracket.bracketAfter) {
                strSubstring = this.input.substring(bracketLastBracket.index, i);
            }
            if (strSubstring != null) {
                LinkReferenceDefinition linkReferenceDefinition = this.context.getLinkReferenceDefinition(Escaping.normalizeReference(strSubstring));
                if (linkReferenceDefinition != null) {
                    destination = linkReferenceDefinition.getDestination();
                    title = linkReferenceDefinition.getTitle();
                } else {
                    z2 = z;
                }
            }
        }
        if (z2) {
            Node image = bracketLastBracket.image ? new Image(destination, title) : new Link(destination, title);
            Node next = bracketLastBracket.node.getNext();
            while (next != null) {
                Node next2 = next.getNext();
                image.appendChild(next);
                next = next2;
            }
            processDelimiters(bracketLastBracket.previousDelimiter);
            InlineParserUtils.mergeChildTextNodes(image);
            bracketLastBracket.node.unlink();
            removeLastBracket();
            if (!bracketLastBracket.image) {
                for (Bracket bracketLastBracket2 = lastBracket(); bracketLastBracket2 != null; bracketLastBracket2 = bracketLastBracket2.previous) {
                    if (!bracketLastBracket2.image) {
                        bracketLastBracket2.allowed = false;
                    }
                }
            }
            return image;
        }
        this.index = i;
        removeLastBracket();
        return text("]");
    }
}
