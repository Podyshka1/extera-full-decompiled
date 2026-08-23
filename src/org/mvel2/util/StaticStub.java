package org.mvel2.util;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public interface StaticStub extends Serializable {
    Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr);
}
