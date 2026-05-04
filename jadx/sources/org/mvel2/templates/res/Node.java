package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Node implements Serializable {
    protected int begin;
    protected int cEnd;
    protected int cStart;
    protected char[] contents;
    protected int end;
    protected String name;
    public Node next;
    protected Node terminus;

    public abstract boolean demarcate(Node node, char[] cArr);

    public abstract Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory);

    public boolean isOpenNode() {
        return false;
    }

    public Node() {
    }

    public Node(int i, String str, char[] cArr, int i2, int i3) {
        this.begin = i;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
        this.name = str;
        this.contents = cArr;
    }

    public Node(int i, String str, char[] cArr, int i2, int i3, Node node) {
        this.name = str;
        this.begin = i;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
        this.contents = cArr;
        this.next = node;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public char[] getContents() {
        return this.contents;
    }

    public void setContents(char[] cArr) {
        this.contents = cArr;
    }

    public int getBegin() {
        return this.begin;
    }

    public void setBegin(int i) {
        this.begin = i;
    }

    public int getEnd() {
        return this.end;
    }

    public void setEnd(int i) {
        this.end = i;
    }

    public int getCStart() {
        return this.cStart;
    }

    public void setCStart(int i) {
        this.cStart = i;
    }

    public int getCEnd() {
        return this.cEnd;
    }

    public void setCEnd(int i) {
        this.cEnd = i;
    }

    public Node getNext() {
        return this.next;
    }

    public Node setNext(Node node) {
        this.next = node;
        return node;
    }

    public Node getTerminus() {
        return this.terminus;
    }

    public void setTerminus(Node node) {
        this.terminus = node;
    }

    public void calculateContents(char[] cArr) {
        int i = this.cStart;
        this.contents = ParseTools.subset(cArr, i, this.end - i);
    }

    public int getLength() {
        return this.end - this.begin;
    }
}
