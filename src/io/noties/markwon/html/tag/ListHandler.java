package io.noties.markwon.html.tag;

import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpanFactory;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.core.CoreProps;
import io.noties.markwon.html.HtmlTag;
import io.noties.markwon.html.MarkwonHtmlRenderer;
import io.noties.markwon.html.TagHandler;
import java.util.Arrays;
import java.util.Collection;
import org.commonmark.node.ListItem;

/* JADX INFO: loaded from: classes5.dex */
public class ListHandler extends TagHandler {
    @Override // io.noties.markwon.html.TagHandler
    public void handle(MarkwonVisitor markwonVisitor, MarkwonHtmlRenderer markwonHtmlRenderer, HtmlTag htmlTag) {
        if (htmlTag.isBlock()) {
            HtmlTag.Block asBlock = htmlTag.getAsBlock();
            boolean zEquals = "ol".equals(asBlock.name());
            boolean zEquals2 = "ul".equals(asBlock.name());
            if (zEquals || zEquals2) {
                MarkwonConfiguration markwonConfigurationConfiguration = markwonVisitor.configuration();
                RenderProps renderProps = markwonVisitor.renderProps();
                SpanFactory spanFactory = markwonConfigurationConfiguration.spansFactory().get(ListItem.class);
                int iCurrentBulletListLevel = currentBulletListLevel(asBlock);
                int i = 1;
                for (HtmlTag.Block block : asBlock.children()) {
                    TagHandler.visitChildren(markwonVisitor, markwonHtmlRenderer, block);
                    if (spanFactory != null && "li".equals(block.name())) {
                        if (zEquals) {
                            CoreProps.LIST_ITEM_TYPE.set(renderProps, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderProps, Integer.valueOf(i));
                            i++;
                        } else {
                            CoreProps.LIST_ITEM_TYPE.set(renderProps, CoreProps.ListItemType.BULLET);
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderProps, Integer.valueOf(iCurrentBulletListLevel));
                        }
                        SpannableBuilder.setSpans(markwonVisitor.builder(), spanFactory.getSpans(markwonConfigurationConfiguration, renderProps), block.start(), block.end());
                    }
                }
            }
        }
    }

    @Override // io.noties.markwon.html.TagHandler
    public Collection<String> supportedTags() {
        return Arrays.asList("ol", "ul");
    }

    private static int currentBulletListLevel(HtmlTag.Block block) {
        int i = 0;
        while (true) {
            block = block.parent();
            if (block == null) {
                return i;
            }
            if ("ul".equals(block.name()) || "ol".equals(block.name())) {
                i++;
            }
        }
    }
}
