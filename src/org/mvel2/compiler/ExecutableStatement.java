package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public interface ExecutableStatement extends Accessor, Serializable, Cloneable {
    void computeTypeConversionRule();

    @Override // org.mvel2.compiler.Accessor
    Class getKnownEgressType();

    Class getKnownIngressType();

    Object getValue(Object obj, VariableResolverFactory variableResolverFactory);

    boolean intOptimized();

    boolean isConvertableIngressEgress();

    boolean isEmptyStatement();

    boolean isExplicitCast();

    boolean isLiteralOnly();

    void setKnownEgressType(Class cls);

    void setKnownIngressType(Class cls);
}
