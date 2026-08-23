package io.noties.markwon.core;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonSpansFactory;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpanFactory;
import io.noties.markwon.core.CoreProps;
import io.noties.markwon.core.factory.BlockQuoteSpanFactory;
import io.noties.markwon.core.factory.CodeBlockSpanFactory;
import io.noties.markwon.core.factory.CodeSpanFactory;
import io.noties.markwon.core.factory.EmphasisSpanFactory;
import io.noties.markwon.core.factory.HeadingSpanFactory;
import io.noties.markwon.core.factory.LinkSpanFactory;
import io.noties.markwon.core.factory.ListItemSpanFactory;
import io.noties.markwon.core.factory.StrongEmphasisSpanFactory;
import io.noties.markwon.core.factory.ThematicBreakSpanFactory;
import io.noties.markwon.core.spans.OrderedListItemSpan;
import io.noties.markwon.core.spans.TextViewSpan;
import io.noties.markwon.image.ImageProps;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Typography;
import org.commonmark.node.Block;
import org.commonmark.node.BlockQuote;
import org.commonmark.node.BulletList;
import org.commonmark.node.Code;
import org.commonmark.node.Emphasis;
import org.commonmark.node.FencedCodeBlock;
import org.commonmark.node.HardLineBreak;
import org.commonmark.node.Heading;
import org.commonmark.node.Image;
import org.commonmark.node.IndentedCodeBlock;
import org.commonmark.node.Link;
import org.commonmark.node.ListBlock;
import org.commonmark.node.ListItem;
import org.commonmark.node.Node;
import org.commonmark.node.OrderedList;
import org.commonmark.node.Paragraph;
import org.commonmark.node.SoftLineBreak;
import org.commonmark.node.StrongEmphasis;
import org.commonmark.node.Text;
import org.commonmark.node.ThematicBreak;

/* JADX INFO: loaded from: classes5.dex */
public class CorePlugin extends AbstractMarkwonPlugin {
    private boolean hasExplicitMovementMethod;
    private final List<Object> onTextAddedListeners = new ArrayList(0);

    public static CorePlugin create() {
        return new CorePlugin();
    }

    public CorePlugin hasExplicitMovementMethod(boolean z) {
        this.hasExplicitMovementMethod = z;
        return this;
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureVisitor(MarkwonVisitor.Builder builder) {
        text(builder);
        strongEmphasis(builder);
        emphasis(builder);
        blockQuote(builder);
        code(builder);
        fencedCodeBlock(builder);
        indentedCodeBlock(builder);
        image(builder);
        bulletList(builder);
        orderedList(builder);
        listItem(builder);
        thematicBreak(builder);
        heading(builder);
        softLineBreak(builder);
        hardLineBreak(builder);
        paragraph(builder);
        link(builder);
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureSpansFactory(MarkwonSpansFactory.Builder builder) {
        CodeBlockSpanFactory codeBlockSpanFactory = new CodeBlockSpanFactory();
        builder.setFactory(StrongEmphasis.class, new StrongEmphasisSpanFactory()).setFactory(Emphasis.class, new EmphasisSpanFactory()).setFactory(BlockQuote.class, new BlockQuoteSpanFactory()).setFactory(Code.class, new CodeSpanFactory()).setFactory(FencedCodeBlock.class, codeBlockSpanFactory).setFactory(IndentedCodeBlock.class, codeBlockSpanFactory).setFactory(ListItem.class, new ListItemSpanFactory()).setFactory(Heading.class, new HeadingSpanFactory()).setFactory(Link.class, new LinkSpanFactory()).setFactory(ThematicBreak.class, new ThematicBreakSpanFactory());
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void beforeSetText(TextView textView, Spanned spanned) {
        OrderedListItemSpan.measure(textView, spanned);
        if (spanned instanceof Spannable) {
            TextViewSpan.applyTo((Spannable) spanned, textView);
        }
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void afterSetText(TextView textView) {
        if (this.hasExplicitMovementMethod || textView.getMovementMethod() != null) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private void text(MarkwonVisitor.Builder builder) {
        builder.on(Text.class, new MarkwonVisitor.NodeVisitor<Text>() { // from class: io.noties.markwon.core.CorePlugin.1
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Text text) {
                String literal = text.getLiteral();
                markwonVisitor.builder().append(literal);
                if (CorePlugin.this.onTextAddedListeners.isEmpty()) {
                    return;
                }
                markwonVisitor.length();
                literal.length();
                Iterator it = CorePlugin.this.onTextAddedListeners.iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                }
            }
        });
    }

    private static void strongEmphasis(MarkwonVisitor.Builder builder) {
        builder.on(StrongEmphasis.class, new MarkwonVisitor.NodeVisitor<StrongEmphasis>() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, StrongEmphasis strongEmphasis) {
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(strongEmphasis);
                markwonVisitor.setSpansForNodeOptional(strongEmphasis, length);
            }
        });
    }

    private static void emphasis(MarkwonVisitor.Builder builder) {
        builder.on(Emphasis.class, new MarkwonVisitor.NodeVisitor<Emphasis>() { // from class: io.noties.markwon.core.CorePlugin.3
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Emphasis emphasis) {
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(emphasis);
                markwonVisitor.setSpansForNodeOptional(emphasis, length);
            }
        });
    }

    private static void blockQuote(MarkwonVisitor.Builder builder) {
        builder.on(BlockQuote.class, new MarkwonVisitor.NodeVisitor<BlockQuote>() { // from class: io.noties.markwon.core.CorePlugin.4
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, BlockQuote blockQuote) {
                markwonVisitor.blockStart(blockQuote);
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(blockQuote);
                markwonVisitor.setSpansForNodeOptional(blockQuote, length);
                markwonVisitor.blockEnd(blockQuote);
            }
        });
    }

    private static void code(MarkwonVisitor.Builder builder) {
        builder.on(Code.class, new MarkwonVisitor.NodeVisitor<Code>() { // from class: io.noties.markwon.core.CorePlugin.5
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Code code) {
                int length = markwonVisitor.length();
                markwonVisitor.builder().append(Typography.nbsp).append(code.getLiteral()).append(Typography.nbsp);
                markwonVisitor.setSpansForNodeOptional(code, length);
            }
        });
    }

    private static void fencedCodeBlock(MarkwonVisitor.Builder builder) {
        builder.on(FencedCodeBlock.class, new MarkwonVisitor.NodeVisitor<FencedCodeBlock>() { // from class: io.noties.markwon.core.CorePlugin.6
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, FencedCodeBlock fencedCodeBlock) {
                CorePlugin.visitCodeBlock(markwonVisitor, fencedCodeBlock.getInfo(), fencedCodeBlock.getLiteral(), fencedCodeBlock);
            }
        });
    }

    private static void indentedCodeBlock(MarkwonVisitor.Builder builder) {
        builder.on(IndentedCodeBlock.class, new MarkwonVisitor.NodeVisitor<IndentedCodeBlock>() { // from class: io.noties.markwon.core.CorePlugin.7
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, IndentedCodeBlock indentedCodeBlock) {
                CorePlugin.visitCodeBlock(markwonVisitor, null, indentedCodeBlock.getLiteral(), indentedCodeBlock);
            }
        });
    }

    private static void image(MarkwonVisitor.Builder builder) {
        builder.on(Image.class, new MarkwonVisitor.NodeVisitor<Image>() { // from class: io.noties.markwon.core.CorePlugin.8
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Image image) {
                SpanFactory spanFactory = markwonVisitor.configuration().spansFactory().get(Image.class);
                if (spanFactory == null) {
                    markwonVisitor.visitChildren(image);
                    return;
                }
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(image);
                if (length == markwonVisitor.length()) {
                    markwonVisitor.builder().append((char) 65532);
                }
                MarkwonConfiguration markwonConfigurationConfiguration = markwonVisitor.configuration();
                boolean z = image.getParent() instanceof Link;
                String strProcess = markwonConfigurationConfiguration.imageDestinationProcessor().process(image.getDestination());
                RenderProps renderProps = markwonVisitor.renderProps();
                ImageProps.DESTINATION.set(renderProps, strProcess);
                ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderProps, Boolean.valueOf(z));
                ImageProps.IMAGE_SIZE.set(renderProps, null);
                markwonVisitor.setSpans(length, spanFactory.getSpans(markwonConfigurationConfiguration, renderProps));
            }
        });
    }

    public static void visitCodeBlock(MarkwonVisitor markwonVisitor, String str, String str2, Node node) {
        markwonVisitor.blockStart(node);
        int length = markwonVisitor.length();
        markwonVisitor.builder().append(Typography.nbsp).append('\n').append(markwonVisitor.configuration().syntaxHighlight().highlight(str, str2));
        markwonVisitor.ensureNewLine();
        markwonVisitor.builder().append(Typography.nbsp);
        CoreProps.CODE_BLOCK_INFO.set(markwonVisitor.renderProps(), str);
        markwonVisitor.setSpansForNodeOptional(node, length);
        markwonVisitor.blockEnd(node);
    }

    private static void bulletList(MarkwonVisitor.Builder builder) {
        builder.on(BulletList.class, new SimpleBlockNodeVisitor());
    }

    private static void orderedList(MarkwonVisitor.Builder builder) {
        builder.on(OrderedList.class, new SimpleBlockNodeVisitor());
    }

    private static void listItem(MarkwonVisitor.Builder builder) {
        builder.on(ListItem.class, new MarkwonVisitor.NodeVisitor<ListItem>() { // from class: io.noties.markwon.core.CorePlugin.9
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, ListItem listItem) {
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(listItem);
                Block parent = listItem.getParent();
                if (parent instanceof OrderedList) {
                    OrderedList orderedList = (OrderedList) parent;
                    int startNumber = orderedList.getStartNumber();
                    CoreProps.LIST_ITEM_TYPE.set(markwonVisitor.renderProps(), CoreProps.ListItemType.ORDERED);
                    CoreProps.ORDERED_LIST_ITEM_NUMBER.set(markwonVisitor.renderProps(), Integer.valueOf(startNumber));
                    orderedList.setStartNumber(orderedList.getStartNumber() + 1);
                } else {
                    CoreProps.LIST_ITEM_TYPE.set(markwonVisitor.renderProps(), CoreProps.ListItemType.BULLET);
                    CoreProps.BULLET_LIST_ITEM_LEVEL.set(markwonVisitor.renderProps(), Integer.valueOf(CorePlugin.listLevel(listItem)));
                }
                markwonVisitor.setSpansForNodeOptional(listItem, length);
                if (markwonVisitor.hasNext(listItem)) {
                    markwonVisitor.ensureNewLine();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int listLevel(Node node) {
        int i = 0;
        for (Node parent = node.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ListItem) {
                i++;
            }
        }
        return i;
    }

    private static void thematicBreak(MarkwonVisitor.Builder builder) {
        builder.on(ThematicBreak.class, new MarkwonVisitor.NodeVisitor<ThematicBreak>() { // from class: io.noties.markwon.core.CorePlugin.10
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, ThematicBreak thematicBreak) {
                markwonVisitor.blockStart(thematicBreak);
                int length = markwonVisitor.length();
                markwonVisitor.builder().append(Typography.nbsp);
                markwonVisitor.setSpansForNodeOptional(thematicBreak, length);
                markwonVisitor.blockEnd(thematicBreak);
            }
        });
    }

    private static void heading(MarkwonVisitor.Builder builder) {
        builder.on(Heading.class, new MarkwonVisitor.NodeVisitor<Heading>() { // from class: io.noties.markwon.core.CorePlugin.11
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Heading heading) {
                markwonVisitor.blockStart(heading);
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(heading);
                CoreProps.HEADING_LEVEL.set(markwonVisitor.renderProps(), Integer.valueOf(heading.getLevel()));
                markwonVisitor.setSpansForNodeOptional(heading, length);
                markwonVisitor.blockEnd(heading);
            }
        });
    }

    private static void softLineBreak(MarkwonVisitor.Builder builder) {
        builder.on(SoftLineBreak.class, new MarkwonVisitor.NodeVisitor<SoftLineBreak>() { // from class: io.noties.markwon.core.CorePlugin.12
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, SoftLineBreak softLineBreak) {
                markwonVisitor.builder().append(' ');
            }
        });
    }

    private static void hardLineBreak(MarkwonVisitor.Builder builder) {
        builder.on(HardLineBreak.class, new MarkwonVisitor.NodeVisitor<HardLineBreak>() { // from class: io.noties.markwon.core.CorePlugin.13
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, HardLineBreak hardLineBreak) {
                markwonVisitor.ensureNewLine();
            }
        });
    }

    private static void paragraph(MarkwonVisitor.Builder builder) {
        builder.on(Paragraph.class, new MarkwonVisitor.NodeVisitor<Paragraph>() { // from class: io.noties.markwon.core.CorePlugin.14
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Paragraph paragraph) {
                boolean zIsInTightList = CorePlugin.isInTightList(paragraph);
                if (!zIsInTightList) {
                    markwonVisitor.blockStart(paragraph);
                }
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(paragraph);
                CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set(markwonVisitor.renderProps(), Boolean.valueOf(zIsInTightList));
                markwonVisitor.setSpansForNodeOptional(paragraph, length);
                if (zIsInTightList) {
                    return;
                }
                markwonVisitor.blockEnd(paragraph);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInTightList(Paragraph paragraph) {
        Block parent = paragraph.getParent();
        if (parent == null) {
            return false;
        }
        Node parent2 = parent.getParent();
        if (parent2 instanceof ListBlock) {
            return ((ListBlock) parent2).isTight();
        }
        return false;
    }

    private static void link(MarkwonVisitor.Builder builder) {
        builder.on(Link.class, new MarkwonVisitor.NodeVisitor<Link>() { // from class: io.noties.markwon.core.CorePlugin.15
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Link link) {
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(link);
                CoreProps.LINK_DESTINATION.set(markwonVisitor.renderProps(), link.getDestination());
                markwonVisitor.setSpansForNodeOptional(link, length);
            }
        });
    }
}
