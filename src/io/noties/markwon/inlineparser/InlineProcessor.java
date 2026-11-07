package io.noties.markwon.inlineparser;

import java.util.regex.Pattern;
import org.commonmark.internal.Bracket;
import org.commonmark.internal.Delimiter;
import org.commonmark.node.Node;
import org.commonmark.node.Text;

/* JADX INFO: loaded from: classes5.dex */
public abstract class InlineProcessor {
    protected Node block;
    protected MarkwonInlineParserContext context;
    protected int index;
    protected String input;

    public abstract Node parse();

    public abstract char specialCharacter();

    public Node parse(MarkwonInlineParserContext markwonInlineParserContext) {
        this.context = markwonInlineParserContext;
        this.block = markwonInlineParserContext.block();
        this.input = markwonInlineParserContext.input();
        this.index = markwonInlineParserContext.index();
        Node node = parse();
        markwonInlineParserContext.setIndex(this.index);
        return node;
    }

    public Bracket lastBracket() {
        return this.context.lastBracket();
    }

    public Delimiter lastDelimiter() {
        return this.context.lastDelimiter();
    }

    public void addBracket(Bracket bracket) {
        this.context.addBracket(bracket);
    }

    public void removeLastBracket() {
        this.context.removeLastBracket();
    }

    public void spnl() {
        this.context.setIndex(this.index);
        this.context.spnl();
        this.index = this.context.index();
    }

    public String match(Pattern pattern) {
        this.context.setIndex(this.index);
        String strMatch = this.context.match(pattern);
        this.index = this.context.index();
        return strMatch;
    }

    public String parseLinkDestination() {
        this.context.setIndex(this.index);
        String linkDestination = this.context.parseLinkDestination();
        this.index = this.context.index();
        return linkDestination;
    }

    public String parseLinkTitle() {
        this.context.setIndex(this.index);
        String linkTitle = this.context.parseLinkTitle();
        this.index = this.context.index();
        return linkTitle;
    }

    public int parseLinkLabel() {
        this.context.setIndex(this.index);
        int linkLabel = this.context.parseLinkLabel();
        this.index = this.context.index();
        return linkLabel;
    }

    public void processDelimiters(Delimiter delimiter) {
        this.context.setIndex(this.index);
        this.context.processDelimiters(delimiter);
        this.index = this.context.index();
    }

    public Text text(String str) {
        return this.context.text(str);
    }

    public Text text(String str, int i, int i2) {
        return this.context.text(str, i, i2);
    }

    public char peek() {
        this.context.setIndex(this.index);
        return this.context.peek();
    }
}
