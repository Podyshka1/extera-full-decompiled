package io.noties.markwon.html;

import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.html.MarkwonHtmlRendererImpl;
import io.noties.markwon.html.tag.BlockquoteHandler;
import io.noties.markwon.html.tag.EmphasisHandler;
import io.noties.markwon.html.tag.HeadingHandler;
import io.noties.markwon.html.tag.ImageHandler;
import io.noties.markwon.html.tag.LinkHandler;
import io.noties.markwon.html.tag.ListHandler;
import io.noties.markwon.html.tag.StrikeHandler;
import io.noties.markwon.html.tag.StrongEmphasisHandler;
import io.noties.markwon.html.tag.SubScriptHandler;
import io.noties.markwon.html.tag.SuperScriptHandler;
import io.noties.markwon.html.tag.UnderlineHandler;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.commonmark.node.HtmlBlock;
import org.commonmark.node.HtmlInline;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
public class HtmlPlugin extends AbstractMarkwonPlugin {
    private MarkwonHtmlParser htmlParser;
    private MarkwonHtmlRenderer htmlRenderer;
    private HtmlEmptyTagReplacement emptyTagReplacement = new HtmlEmptyTagReplacement();
    private final MarkwonHtmlRendererImpl.Builder builder = new MarkwonHtmlRendererImpl.Builder();

    public static HtmlPlugin create() {
        return new HtmlPlugin();
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureConfiguration(MarkwonConfiguration.Builder builder) {
        MarkwonHtmlRendererImpl.Builder builder2 = this.builder;
        if (!builder2.excludeDefaults()) {
            builder2.addDefaultTagHandler(ImageHandler.create());
            builder2.addDefaultTagHandler(new LinkHandler());
            builder2.addDefaultTagHandler(new BlockquoteHandler());
            builder2.addDefaultTagHandler(new SubScriptHandler());
            builder2.addDefaultTagHandler(new SuperScriptHandler());
            builder2.addDefaultTagHandler(new StrongEmphasisHandler());
            builder2.addDefaultTagHandler(new StrikeHandler());
            builder2.addDefaultTagHandler(new UnderlineHandler());
            builder2.addDefaultTagHandler(new ListHandler());
            builder2.addDefaultTagHandler(new EmphasisHandler());
            builder2.addDefaultTagHandler(new HeadingHandler());
        }
        this.htmlParser = MarkwonHtmlParserImpl.create(this.emptyTagReplacement);
        this.htmlRenderer = builder2.build();
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void afterRender(Node node, MarkwonVisitor markwonVisitor) {
        MarkwonHtmlRenderer markwonHtmlRenderer = this.htmlRenderer;
        if (markwonHtmlRenderer != null) {
            markwonHtmlRenderer.render(markwonVisitor, this.htmlParser);
        } else {
            Segment$$ExternalSyntheticBUOutline1.m848m("Unexpected state, html-renderer is not defined");
        }
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureVisitor(MarkwonVisitor.Builder builder) {
        builder.on(HtmlBlock.class, new MarkwonVisitor.NodeVisitor<HtmlBlock>() { // from class: io.noties.markwon.html.HtmlPlugin.2
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, HtmlBlock htmlBlock) {
                HtmlPlugin.this.visitHtml(markwonVisitor, htmlBlock.getLiteral());
            }
        }).on(HtmlInline.class, new MarkwonVisitor.NodeVisitor<HtmlInline>() { // from class: io.noties.markwon.html.HtmlPlugin.1
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, HtmlInline htmlInline) {
                HtmlPlugin.this.visitHtml(markwonVisitor, htmlInline.getLiteral());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void visitHtml(MarkwonVisitor markwonVisitor, String str) {
        if (str != null) {
            this.htmlParser.processFragment(markwonVisitor.builder(), str);
        }
    }
}
