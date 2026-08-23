package io.noties.markwon;

import io.noties.markwon.MarkwonVisitor;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.commonmark.node.BlockQuote;
import org.commonmark.node.BulletList;
import org.commonmark.node.Code;
import org.commonmark.node.CustomBlock;
import org.commonmark.node.CustomNode;
import org.commonmark.node.Document;
import org.commonmark.node.Emphasis;
import org.commonmark.node.FencedCodeBlock;
import org.commonmark.node.HardLineBreak;
import org.commonmark.node.Heading;
import org.commonmark.node.HtmlBlock;
import org.commonmark.node.HtmlInline;
import org.commonmark.node.Image;
import org.commonmark.node.IndentedCodeBlock;
import org.commonmark.node.Link;
import org.commonmark.node.LinkReferenceDefinition;
import org.commonmark.node.ListItem;
import org.commonmark.node.Node;
import org.commonmark.node.OrderedList;
import org.commonmark.node.Paragraph;
import org.commonmark.node.SoftLineBreak;
import org.commonmark.node.StrongEmphasis;
import org.commonmark.node.Text;
import org.commonmark.node.ThematicBreak;

/* JADX INFO: loaded from: classes5.dex */
class MarkwonVisitorImpl implements MarkwonVisitor {
    private final MarkwonVisitor.BlockHandler blockHandler;
    private final SpannableBuilder builder;
    private final MarkwonConfiguration configuration;
    private final Map<Class<? extends Node>, MarkwonVisitor.NodeVisitor<? extends Node>> nodes;
    private final RenderProps renderProps;

    public MarkwonVisitorImpl(MarkwonConfiguration markwonConfiguration, RenderProps renderProps, SpannableBuilder spannableBuilder, Map<Class<? extends Node>, MarkwonVisitor.NodeVisitor<? extends Node>> map, MarkwonVisitor.BlockHandler blockHandler) {
        this.configuration = markwonConfiguration;
        this.renderProps = renderProps;
        this.builder = spannableBuilder;
        this.nodes = map;
        this.blockHandler = blockHandler;
    }

    @Override // org.commonmark.node.Visitor
    public void visit(BlockQuote blockQuote) {
        visit((Node) blockQuote);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(BulletList bulletList) {
        visit((Node) bulletList);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Code code) {
        visit((Node) code);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Document document) {
        visit((Node) document);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Emphasis emphasis) {
        visit((Node) emphasis);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(FencedCodeBlock fencedCodeBlock) {
        visit((Node) fencedCodeBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(HardLineBreak hardLineBreak) {
        visit((Node) hardLineBreak);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Heading heading) {
        visit((Node) heading);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(ThematicBreak thematicBreak) {
        visit((Node) thematicBreak);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(HtmlInline htmlInline) {
        visit((Node) htmlInline);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(HtmlBlock htmlBlock) {
        visit((Node) htmlBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Image image) {
        visit((Node) image);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(IndentedCodeBlock indentedCodeBlock) {
        visit((Node) indentedCodeBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Link link) {
        visit((Node) link);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(ListItem listItem) {
        visit((Node) listItem);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(OrderedList orderedList) {
        visit((Node) orderedList);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Paragraph paragraph) {
        visit((Node) paragraph);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(SoftLineBreak softLineBreak) {
        visit((Node) softLineBreak);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(StrongEmphasis strongEmphasis) {
        visit((Node) strongEmphasis);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Text text) {
        visit((Node) text);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(LinkReferenceDefinition linkReferenceDefinition) {
        visit((Node) linkReferenceDefinition);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(CustomBlock customBlock) {
        visit((Node) customBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(CustomNode customNode) {
        visit((Node) customNode);
    }

    private void visit(Node node) {
        MarkwonVisitor.NodeVisitor<? extends Node> nodeVisitor = this.nodes.get(node.getClass());
        if (nodeVisitor != null) {
            nodeVisitor.visit(this, node);
        } else {
            visitChildren(node);
        }
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public MarkwonConfiguration configuration() {
        return this.configuration;
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public RenderProps renderProps() {
        return this.renderProps;
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public SpannableBuilder builder() {
        return this.builder;
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public void visitChildren(Node node) {
        Node firstChild = node.getFirstChild();
        while (firstChild != null) {
            Node next = firstChild.getNext();
            firstChild.accept(this);
            firstChild = next;
        }
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public boolean hasNext(Node node) {
        return node.getNext() != null;
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public void ensureNewLine() {
        if (this.builder.length() <= 0 || '\n' == this.builder.lastChar()) {
            return;
        }
        this.builder.append('\n');
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public void forceNewLine() {
        this.builder.append('\n');
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public int length() {
        return this.builder.length();
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public void setSpans(int i, Object obj) {
        SpannableBuilder spannableBuilder = this.builder;
        SpannableBuilder.setSpans(spannableBuilder, obj, i, spannableBuilder.length());
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public <N extends Node> void setSpansForNodeOptional(N n, int i) {
        setSpansForNodeOptional(n.getClass(), i);
    }

    public <N extends Node> void setSpansForNodeOptional(Class<N> cls, int i) {
        SpanFactory spanFactory = this.configuration.spansFactory().get(cls);
        if (spanFactory != null) {
            setSpans(i, spanFactory.getSpans(this.configuration, this.renderProps));
        }
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public void blockStart(Node node) {
        this.blockHandler.blockStart(this, node);
    }

    @Override // io.noties.markwon.MarkwonVisitor
    public void blockEnd(Node node) {
        this.blockHandler.blockEnd(this, node);
    }

    public static class BuilderImpl implements MarkwonVisitor.Builder {
        private MarkwonVisitor.BlockHandler blockHandler;
        private final Map<Class<? extends Node>, MarkwonVisitor.NodeVisitor<? extends Node>> nodes = new HashMap();

        @Override // io.noties.markwon.MarkwonVisitor.Builder
        public <N extends Node> MarkwonVisitor.Builder on(Class<N> cls, MarkwonVisitor.NodeVisitor<? super N> nodeVisitor) {
            Map<Class<? extends Node>, MarkwonVisitor.NodeVisitor<? extends Node>> map = this.nodes;
            if (nodeVisitor == null) {
                map.remove(cls);
                return this;
            }
            map.put(cls, nodeVisitor);
            return this;
        }

        @Override // io.noties.markwon.MarkwonVisitor.Builder
        public MarkwonVisitor build(MarkwonConfiguration markwonConfiguration, RenderProps renderProps) {
            MarkwonVisitor.BlockHandler blockHandlerDef = this.blockHandler;
            if (blockHandlerDef == null) {
                blockHandlerDef = new BlockHandlerDef();
            }
            return new MarkwonVisitorImpl(markwonConfiguration, renderProps, new SpannableBuilder(), Collections.unmodifiableMap(this.nodes), blockHandlerDef);
        }
    }
}
