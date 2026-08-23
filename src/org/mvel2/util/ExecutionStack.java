package org.mvel2.util;

import org.mvel2.ScriptRuntimeException;
import org.mvel2.math.MathProcessor;

/* JADX INFO: loaded from: classes.dex */
public class ExecutionStack {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private StackElement element;
    private int size = 0;

    public boolean isEmpty() {
        return this.size == 0;
    }

    public void add(Object obj) {
        this.size++;
        StackElement stackElement = this.element;
        if (stackElement == null) {
            this.element = new StackElement(null, obj);
            return;
        }
        while (true) {
            StackElement stackElement2 = stackElement.next;
            if (stackElement2 == null) {
                stackElement.next = new StackElement(null, obj);
                return;
            }
            stackElement = stackElement2;
        }
    }

    public void push(Object obj) {
        this.size++;
        this.element = new StackElement(this.element, obj);
    }

    public void push(Object obj, Object obj2) {
        this.size += 2;
        this.element = new StackElement(new StackElement(this.element, obj), obj2);
    }

    public void push(Object obj, Object obj2, Object obj3) {
        this.size += 3;
        this.element = new StackElement(new StackElement(new StackElement(this.element, obj), obj2), obj3);
    }

    public Object peek() {
        if (this.size == 0) {
            return null;
        }
        return this.element.value;
    }

    public void dup() {
        this.size++;
        StackElement stackElement = this.element;
        this.element = new StackElement(stackElement, stackElement.value);
    }

    public Boolean peekBoolean() {
        if (this.size == 0) {
            return null;
        }
        Object obj = this.element.value;
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected Boolean; but found: ");
        Object obj2 = this.element.value;
        sb.append(obj2 == null ? "null" : obj2.getClass().getName());
        throw new ScriptRuntimeException(sb.toString());
    }

    public void copy2(ExecutionStack executionStack) {
        this.element = new StackElement(new StackElement(this.element, executionStack.element.value), executionStack.element.next.value);
        executionStack.element = executionStack.element.next.next;
        this.size += 2;
        executionStack.size -= 2;
    }

    public void copyx2(ExecutionStack executionStack) {
        this.element = new StackElement(new StackElement(this.element, executionStack.element.next.value), executionStack.element.value);
        executionStack.element = executionStack.element.next.next;
        this.size += 2;
        executionStack.size -= 2;
    }

    public Object peek2() {
        return this.element.next.value;
    }

    public Object pop() {
        int i = this.size;
        if (i == 0) {
            return null;
        }
        try {
            this.size = i - 1;
            StackElement stackElement = this.element;
            Object obj = stackElement.value;
            this.element = stackElement.next;
            return obj;
        } catch (Throwable th) {
            this.element = this.element.next;
            throw th;
        }
    }

    public Boolean popBoolean() {
        int i = this.size;
        this.size = i - 1;
        if (i == 0) {
            return null;
        }
        try {
            StackElement stackElement = this.element;
            Object obj = stackElement.value;
            if (!(obj instanceof Boolean)) {
                StringBuilder sb = new StringBuilder();
                sb.append("expected Boolean; but found: ");
                Object obj2 = this.element.value;
                sb.append(obj2 == null ? "null" : obj2.getClass().getName());
                throw new ScriptRuntimeException(sb.toString());
            }
            Boolean bool = (Boolean) obj;
            this.element = stackElement.next;
            return bool;
        } catch (Throwable th) {
            this.element = this.element.next;
            throw th;
        }
    }

    public Object pop2() {
        try {
            this.size -= 2;
            StackElement stackElement = this.element;
            Object obj = stackElement.value;
            this.element = stackElement.next.next;
            return obj;
        } catch (Throwable th) {
            this.element = this.element.next.next;
            throw th;
        }
    }

    public void discard() {
        int i = this.size;
        if (i != 0) {
            this.size = i - 1;
            this.element = this.element.next;
        }
    }

    public int size() {
        return this.size;
    }

    public boolean isReduceable() {
        return this.size > 1;
    }

    public void clear() {
        this.size = 0;
        this.element = null;
    }

    public void xswap_op() {
        StackElement stackElement = this.element.next;
        StackElement stackElement2 = stackElement.next;
        this.element = new StackElement(stackElement2.next, MathProcessor.doOperations(stackElement2.value, ((Integer) stackElement.value).intValue(), this.element.value));
        this.size -= 2;
    }

    /* JADX INFO: renamed from: op */
    public void m1117op() {
        StackElement stackElement = this.element;
        StackElement stackElement2 = stackElement.next.next;
        this.element = new StackElement(stackElement2.next, MathProcessor.doOperations(stackElement2.value, ((Integer) stackElement.value).intValue(), this.element.next.value));
        this.size -= 2;
    }

    /* JADX INFO: renamed from: op */
    public void m1118op(int i) {
        StackElement stackElement = this.element;
        StackElement stackElement2 = stackElement.next;
        this.element = new StackElement(stackElement2.next, MathProcessor.doOperations(stackElement2.value, i, stackElement.value));
        this.size--;
    }

    public void xswap() {
        StackElement stackElement = this.element;
        StackElement stackElement2 = stackElement.next;
        StackElement stackElement3 = stackElement2.next;
        stackElement2.next = stackElement;
        this.element = stackElement2;
        stackElement.next = stackElement3;
    }

    public void xswap2() {
        StackElement stackElement = this.element;
        StackElement stackElement2 = stackElement.next;
        StackElement stackElement3 = stackElement2.next;
        stackElement2.next = stackElement;
        stackElement.next = stackElement3.next;
        this.element = stackElement3;
        stackElement3.next = stackElement2;
    }

    public int deepCount() {
        StackElement stackElement = this.element;
        if (stackElement == null) {
            return 0;
        }
        int i = 1;
        while (true) {
            stackElement = stackElement.next;
            if (stackElement == null) {
                return i;
            }
            i++;
        }
    }

    public String toString() {
        StackElement stackElement = this.element;
        if (stackElement == null) {
            return "<EMPTY>";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        do {
            sb.append(String.valueOf(stackElement.value));
            if (stackElement.next != null) {
                sb.append(", ");
            }
            stackElement = stackElement.next;
        } while (stackElement != null);
        sb.append("]");
        return sb.toString();
    }
}
