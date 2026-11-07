package io.noties.markwon.inlineparser;

import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.commonmark.internal.util.Html5Entities;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
public class EntityInlineProcessor extends InlineProcessor {
    private static final Pattern ENTITY_HERE = Pattern.compile("^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public char specialCharacter() {
        return Typography.amp;
    }

    @Override // io.noties.markwon.inlineparser.InlineProcessor
    public Node parse() {
        String strMatch = match(ENTITY_HERE);
        if (strMatch != null) {
            return text(Html5Entities.entityToString(strMatch));
        }
        return null;
    }
}
