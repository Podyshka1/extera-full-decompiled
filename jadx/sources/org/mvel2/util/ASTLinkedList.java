package org.mvel2.util;

import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public class ASTLinkedList implements ASTIterator {
    private ASTNode current;
    private ASTNode firstASTNode;
    private ASTNode last;
    private int size;

    @Override // org.mvel2.util.ASTIterator
    public int index() {
        return -1;
    }

    public ASTLinkedList() {
    }

    public ASTLinkedList(ASTIterator aSTIterator) {
        ASTNode aSTNodeFirstNode = aSTIterator.firstNode();
        this.firstASTNode = aSTNodeFirstNode;
        this.current = aSTNodeFirstNode;
    }

    public ASTLinkedList(ASTNode aSTNode) {
        this.firstASTNode = aSTNode;
        this.current = aSTNode;
    }

    public ASTLinkedList(ASTNode aSTNode, int i) {
        this.firstASTNode = aSTNode;
        this.current = aSTNode;
        this.size = i;
    }

    @Override // org.mvel2.util.ASTIterator
    public void addTokenNode(ASTNode aSTNode) {
        this.size++;
        if (this.firstASTNode == null) {
            this.current = aSTNode;
            this.firstASTNode = aSTNode;
        } else {
            this.current.nextASTNode = aSTNode;
            this.current = aSTNode;
            this.last = aSTNode;
        }
    }

    @Override // org.mvel2.util.ASTIterator
    public void addTokenNode(ASTNode aSTNode, ASTNode aSTNode2) {
        this.size += 2;
        if (this.firstASTNode == null) {
            this.firstASTNode = aSTNode;
            aSTNode.nextASTNode = aSTNode2;
            this.current = aSTNode2;
            this.last = aSTNode2;
            return;
        }
        this.current.nextASTNode = aSTNode;
        aSTNode.nextASTNode = aSTNode2;
        this.current = aSTNode2;
        this.last = aSTNode2;
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode firstNode() {
        return this.firstASTNode;
    }

    public boolean isSingleNode() {
        int i = this.size;
        return i == 1 || (i == 2 && this.firstASTNode.fields == -1);
    }

    public ASTNode firstNonSymbol() {
        ASTNode aSTNode = this.firstASTNode;
        return aSTNode.fields == -1 ? aSTNode.nextASTNode : aSTNode;
    }

    @Override // org.mvel2.util.ASTIterator
    public void reset() {
        this.current = this.firstASTNode;
    }

    @Override // org.mvel2.util.ASTIterator
    public boolean hasMoreNodes() {
        return this.current != null;
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode nextNode() {
        ASTNode aSTNode = this.current;
        if (aSTNode == null) {
            return null;
        }
        this.last = aSTNode;
        this.current = aSTNode.nextASTNode;
        return aSTNode;
    }

    @Override // org.mvel2.util.ASTIterator
    public void skipNode() {
        ASTNode aSTNode = this.current;
        if (aSTNode != null) {
            this.current = aSTNode.nextASTNode;
        }
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode peekNext() {
        ASTNode aSTNode;
        ASTNode aSTNode2 = this.current;
        if (aSTNode2 == null || (aSTNode = aSTNode2.nextASTNode) == null) {
            return null;
        }
        return aSTNode;
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode peekNode() {
        ASTNode aSTNode = this.current;
        if (aSTNode == null) {
            return null;
        }
        return aSTNode;
    }

    public void removeToken() {
        ASTNode aSTNode = this.current;
        if (aSTNode != null) {
            this.current = aSTNode.nextASTNode;
        }
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode peekLast() {
        return this.last;
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode nodesBack(int i) {
        throw new RuntimeException("unimplemented");
    }

    @Override // org.mvel2.util.ASTIterator
    public ASTNode nodesAhead(int i) {
        if (this.current == null) {
            return null;
        }
        ASTNode aSTNode = null;
        for (int i2 = 0; i2 < i; i2++) {
            aSTNode = this.current.nextASTNode;
            if (aSTNode == null) {
                return null;
            }
        }
        return aSTNode;
    }

    @Override // org.mvel2.util.ASTIterator
    public void back() {
        this.current = this.last;
    }

    @Override // org.mvel2.util.ASTIterator
    public String showNodeChain() {
        throw new RuntimeException("unimplemented");
    }

    @Override // org.mvel2.util.ASTIterator
    public int size() {
        return this.size;
    }

    public void setCurrentNode(ASTNode aSTNode) {
        this.current = aSTNode;
    }

    @Override // org.mvel2.util.ASTIterator
    public void finish() {
        reset();
        ASTNode aSTNodeNextNode = null;
        while (hasMoreNodes()) {
            ASTNode aSTNodeNextNode2 = nextNode();
            if (aSTNodeNextNode2.isDiscard()) {
                if (aSTNodeNextNode == null) {
                    aSTNodeNextNode = nextNode();
                    this.firstASTNode = aSTNodeNextNode;
                } else {
                    aSTNodeNextNode.nextASTNode = nextNode();
                }
            } else if (!hasMoreNodes()) {
                break;
            } else {
                aSTNodeNextNode = aSTNodeNextNode2;
            }
        }
        this.last = aSTNodeNextNode;
        reset();
    }
}
