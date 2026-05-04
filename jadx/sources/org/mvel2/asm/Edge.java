package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
final class Edge {
    static final int EXCEPTION = Integer.MAX_VALUE;
    static final int JUMP = 0;
    final int info;
    Edge nextEdge;
    final Label successor;

    Edge(int i, Label label, Edge edge) {
        this.info = i;
        this.successor = label;
        this.nextEdge = edge;
    }
}
