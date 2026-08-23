package io.noties.markwon.inlineparser;

import org.commonmark.internal.Bracket;
import org.commonmark.node.Node;
import org.commonmark.node.Text;

/* JADX INFO: loaded from: classes5.dex */
public class BangInlineProcessor extends InlineProcessor {
    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public char specialCharacter() {
        return '!';
    }

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public Node parse() {
        int i = this.index;
        this.index = i + 1;
        if (peek() != '[') {
            return null;
        }
        this.index++;
        Text text = text("![");
        addBracket(Bracket.image(text, i + 1, lastBracket(), lastDelimiter()));
        return text;
    }
}
