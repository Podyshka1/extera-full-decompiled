package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
final class Handler {
    final int catchType;
    final String catchTypeDescriptor;
    final Label endPc;
    final Label handlerPc;
    Handler nextHandler;
    final Label startPc;

    public Handler(Label label, Label label2, Label label3, int i, String str) {
        this.startPc = label;
        this.endPc = label2;
        this.handlerPc = label3;
        this.catchType = i;
        this.catchTypeDescriptor = str;
    }

    public Handler(Handler handler, Label label, Label label2) {
        this(label, label2, handler.handlerPc, handler.catchType, handler.catchTypeDescriptor);
        this.nextHandler = handler.nextHandler;
    }

    public static Handler removeRange(Handler handler, Label label, Label label2) {
        if (handler == null) {
            return null;
        }
        Handler handlerRemoveRange = removeRange(handler.nextHandler, label, label2);
        handler.nextHandler = handlerRemoveRange;
        Label label3 = handler.startPc;
        int i = label3.bytecodeOffset;
        Label label4 = handler.endPc;
        int i2 = label4.bytecodeOffset;
        int i3 = label.bytecodeOffset;
        int i4 = label2 == null ? Integer.MAX_VALUE : label2.bytecodeOffset;
        if (i3 >= i2 || i4 <= i) {
            return handler;
        }
        if (i3 <= i) {
            return i4 >= i2 ? handlerRemoveRange : new Handler(handler, label2, label4);
        }
        if (i4 >= i2) {
            return new Handler(handler, label3, label);
        }
        handler.nextHandler = new Handler(handler, label2, label4);
        return new Handler(handler, handler.startPc, label);
    }

    public static int getExceptionTableLength(Handler handler) {
        int i = 0;
        while (handler != null) {
            i++;
            handler = handler.nextHandler;
        }
        return i;
    }

    public static int getExceptionTableSize(Handler handler) {
        return (getExceptionTableLength(handler) * 8) + 2;
    }

    public static void putExceptionTable(Handler handler, ByteVector byteVector) {
        byteVector.putShort(getExceptionTableLength(handler));
        while (handler != null) {
            byteVector.putShort(handler.startPc.bytecodeOffset).putShort(handler.endPc.bytecodeOffset).putShort(handler.handlerPc.bytecodeOffset).putShort(handler.catchType);
            handler = handler.nextHandler;
        }
    }
}
