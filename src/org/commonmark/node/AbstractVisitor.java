package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractVisitor implements Visitor {
    @Override // org.commonmark.node.Visitor
    public void visit(Code code) {
        visitChildren(code);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Document document) {
        visitChildren(document);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Emphasis emphasis) {
        visitChildren(emphasis);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(FencedCodeBlock fencedCodeBlock) {
        visitChildren(fencedCodeBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(HardLineBreak hardLineBreak) {
        visitChildren(hardLineBreak);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Heading heading) {
        visitChildren(heading);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(ThematicBreak thematicBreak) {
        visitChildren(thematicBreak);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(HtmlInline htmlInline) {
        visitChildren(htmlInline);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(HtmlBlock htmlBlock) {
        visitChildren(htmlBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Image image) {
        visitChildren(image);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(IndentedCodeBlock indentedCodeBlock) {
        visitChildren(indentedCodeBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Link link) {
        visitChildren(link);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(ListItem listItem) {
        visitChildren(listItem);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(SoftLineBreak softLineBreak) {
        visitChildren(softLineBreak);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(StrongEmphasis strongEmphasis) {
        visitChildren(strongEmphasis);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(Text text) {
        visitChildren(text);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(LinkReferenceDefinition linkReferenceDefinition) {
        visitChildren(linkReferenceDefinition);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(CustomBlock customBlock) {
        visitChildren(customBlock);
    }

    @Override // org.commonmark.node.Visitor
    public void visit(CustomNode customNode) {
        visitChildren(customNode);
    }

    public void visitChildren(Node node) {
        Node firstChild = node.getFirstChild();
        while (firstChild != null) {
            Node next = firstChild.getNext();
            firstChild.accept(this);
            firstChild = next;
        }
    }
}
