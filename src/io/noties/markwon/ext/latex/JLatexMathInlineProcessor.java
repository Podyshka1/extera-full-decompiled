package io.noties.markwon.ext.latex;

import io.noties.markwon.inlineparser.InlineProcessor;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
class JLatexMathInlineProcessor extends InlineProcessor {
    private static final Pattern RE = Pattern.compile("(\\${2})([\\s\\S]+?)\\1");

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public char specialCharacter() {
        return Typography.dollar;
    }

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public Node parse() {
        String strMatch = match(RE);
        if (strMatch == null) {
            return null;
        }
        JLatexMathNode jLatexMathNode = new JLatexMathNode();
        jLatexMathNode.latex(strMatch.substring(2, strMatch.length() - 2));
        return jLatexMathNode;
    }
}
