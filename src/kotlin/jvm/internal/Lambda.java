package kotlin.jvm.internal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class Lambda implements FunctionBase, Serializable {
    private final int arity;

    public Lambda(int i) {
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strRenderLambdaToString = Reflection.renderLambdaToString(this);
        Intrinsics.checkNotNullExpressionValue(strRenderLambdaToString, "renderLambdaToString(...)");
        return strRenderLambdaToString;
    }
}
