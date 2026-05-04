package org.mvel2.templates.res;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.TemplateRuntimeError;
import org.mvel2.templates.util.ArrayIterator;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ForEachNode extends Node {
    private String[] expression;
    private String[] item;
    public Node nestedNode;
    private char[] sepExpr;

    public ForEachNode(int i, String str, char[] cArr, int i2, int i3) {
        super(i, str, cArr, i2, i3);
        configure();
    }

    public Node getNestedNode() {
        return this.nestedNode;
    }

    public void setNestedNode(Node node) {
        this.nestedNode = node;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        this.nestedNode = this.next;
        this.next = this.terminus;
        char[] contents = node.getContents();
        this.sepExpr = contents;
        if (contents.length != 0) {
            return false;
        }
        this.sepExpr = null;
        return false;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        int length = this.item.length;
        Iterator[] itArr = new Iterator[length];
        for (int i = 0; i < length; i++) {
            Object objEval = MVEL.eval(this.expression[i], obj, variableResolverFactory);
            if (objEval instanceof Iterable) {
                itArr[i] = ((Iterable) objEval).iterator();
            } else if (objEval instanceof Object[]) {
                itArr[i] = new ArrayIterator((Object[]) objEval);
            } else {
                throw new TemplateRuntimeError("cannot iterate object type: " + objEval.getClass().getName());
            }
        }
        HashMap map = new HashMap();
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(map, variableResolverFactory);
        int i2 = length;
        while (true) {
            for (int i3 = 0; i3 < length; i3++) {
                if (!itArr[i3].hasNext()) {
                    i2--;
                    map.put(this.item[i3], _UrlKt.FRAGMENT_ENCODE_SET);
                } else {
                    map.put(this.item[i3], itArr[i3].next());
                }
            }
            if (i2 == 0) {
                break;
            }
            this.nestedNode.eval(templateRuntime, templateOutputStream, obj, mapVariableResolverFactory);
            if (this.sepExpr != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    }
                    if (itArr[i4].hasNext()) {
                        templateOutputStream.append(String.valueOf(MVEL.eval(this.sepExpr, obj, variableResolverFactory)));
                        break;
                    }
                    i4++;
                }
            }
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void configure() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iBalancedCapture = this.cStart;
        int i = iBalancedCapture;
        while (true) {
            int i2 = this.cEnd;
            if (iBalancedCapture < i2) {
                char[] cArr = this.contents;
                char c = cArr[iBalancedCapture];
                if (c == '\"') {
                    iBalancedCapture = ParseTools.balancedCapture(cArr, iBalancedCapture, c);
                } else {
                    if (c != ',') {
                        if (c == ':') {
                            arrayList.add(ParseTools.createStringTrimmed(cArr, i, iBalancedCapture - i));
                        } else if (c == '[' || c == '{' || c == '\'' || c == '(') {
                        }
                    } else {
                        if (arrayList2.size() != arrayList.size() - 1) {
                            throw new CompileException("unexpected character ',' in foreach tag", this.contents, this.cStart + iBalancedCapture);
                        }
                        arrayList2.add(ParseTools.createStringTrimmed(this.contents, i, iBalancedCapture - i));
                    }
                    i = iBalancedCapture + 1;
                }
                iBalancedCapture++;
            } else {
                if (i < i2) {
                    if (arrayList2.size() != arrayList.size() - 1) {
                        throw new CompileException("expected character ':' in foreach tag", this.contents, this.cEnd);
                    }
                    arrayList2.add(ParseTools.createStringTrimmed(this.contents, i, this.cEnd - i));
                }
                this.item = new String[arrayList.size()];
                int size = arrayList.size();
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    this.item[i4] = (String) obj;
                    i4++;
                }
                this.expression = new String[arrayList2.size()];
                int size2 = arrayList2.size();
                int i6 = 0;
                while (i6 < size2) {
                    Object obj2 = arrayList2.get(i6);
                    i6++;
                    this.expression[i3] = (String) obj2;
                    i3++;
                }
                return;
            }
        }
    }
}
