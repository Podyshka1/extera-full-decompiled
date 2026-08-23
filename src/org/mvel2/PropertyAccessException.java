package org.mvel2;

/* JADX INFO: loaded from: classes5.dex */
public class PropertyAccessException extends CompileException {
    public PropertyAccessException(String str, char[] cArr, int i, Throwable th, ParserContext parserContext) {
        super(str, cArr, i, th);
        setParserContext(parserContext);
    }

    public PropertyAccessException(String str, char[] cArr, int i, ParserContext parserContext) {
        super(str, cArr, i);
        setParserContext(parserContext);
    }

    private void setParserContext(ParserContext parserContext) {
        if (parserContext != null) {
            setEvaluationContext(parserContext.getEvaluationContext());
        }
    }
}
