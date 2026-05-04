package org.mvel2.util;

import java.io.Serializable;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public interface ASTIterator extends Serializable {
    void addTokenNode(ASTNode aSTNode);

    void addTokenNode(ASTNode aSTNode, ASTNode aSTNode2);

    void back();

    void finish();

    ASTNode firstNode();

    boolean hasMoreNodes();

    int index();

    ASTNode nextNode();

    ASTNode nodesAhead(int i);

    ASTNode nodesBack(int i);

    ASTNode peekLast();

    ASTNode peekNext();

    ASTNode peekNode();

    void reset();

    String showNodeChain();

    int size();

    void skipNode();
}
