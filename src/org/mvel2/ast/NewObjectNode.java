package org.mvel2.ast;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.ErrorDetail;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessor;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.PropertyVerifier;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.ParseTools;
import org.mvel2.util.ReflectionUtil;

/* JADX INFO: loaded from: classes5.dex */
public class NewObjectNode extends ASTNode {
    private char[] name;
    private transient Accessor newObjectOptimizer;
    private TypeDescriptor typeDescr;
    private static final Logger LOG = Logger.getLogger(NewObjectNode.class.getName());
    private static final Class[] EMPTYCLS = new Class[0];

    public NewObjectNode(TypeDescriptor typeDescriptor, int i, ParserContext parserContext) {
        super(parserContext);
        this.typeDescr = typeDescriptor;
        this.fields = i;
        this.expr = typeDescriptor.getExpr();
        this.start = typeDescriptor.getStart();
        int offset = typeDescriptor.getOffset();
        this.offset = offset;
        char[] cArr = this.expr;
        if (offset < cArr.length) {
            int i2 = this.start;
            this.name = ParseTools.subArray(cArr, i2, offset + i2);
        } else {
            this.name = cArr;
        }
        if ((i & 16) != 0) {
            if (parserContext != null && parserContext.hasImport(typeDescriptor.getClassName())) {
                parserContext.setAllowBootstrapBypass(false);
                this.egressType = parserContext.getImport(typeDescriptor.getClassName());
            } else {
                try {
                    this.egressType = Class.forName(typeDescriptor.getClassName(), true, getClassLoader());
                } catch (ClassNotFoundException unused) {
                    if (parserContext.isStrongTyping()) {
                        parserContext.addError(new ErrorDetail(this.expr, this.start, true, "could not resolve class: " + typeDescriptor.getClassName()));
                        return;
                    }
                    return;
                }
            }
            if (this.egressType != null) {
                rewriteClassReferenceToFQCN(i);
                if (typeDescriptor.isArray()) {
                    try {
                        this.egressType = this.egressType.isPrimitive() ? ReflectionUtil.toPrimitiveArrayType(this.egressType) : ParseTools.findClass(null, ParseTools.repeatChar('[', typeDescriptor.getArrayLength()) + "L" + this.egressType.getName() + ";", parserContext);
                    } catch (Exception e) {
                        LOG.log(Level.WARNING, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e);
                    }
                }
            }
            if (parserContext != null) {
                if (this.egressType == null) {
                    parserContext.addError(new ErrorDetail(this.expr, this.start, true, "could not resolve class: " + typeDescriptor.getClassName()));
                    return;
                }
                if (typeDescriptor.isArray()) {
                    return;
                }
                String[] strArrCaptureContructorAndResidual = ParseTools.captureContructorAndResidual(this.expr, this.start, this.offset);
                List<char[]> methodOrConstructor = ParseTools.parseMethodOrConstructor(strArrCaptureContructorAndResidual[0].toCharArray());
                int size = methodOrConstructor.size();
                Class[] clsArr = new Class[size];
                for (int i3 = 0; i3 < size; i3++) {
                    clsArr[i3] = MVEL.analyze(methodOrConstructor.get(i3), parserContext);
                }
                if (ParseTools.getBestConstructorCandidate(clsArr, this.egressType, true) == null && parserContext.isStrongTyping()) {
                    parserContext.addError(new ErrorDetail(this.expr, this.start, parserContext.isStrongTyping(), "could not resolve constructor " + typeDescriptor.getClassName() + Arrays.toString(clsArr)));
                }
                if (strArrCaptureContructorAndResidual.length == 2) {
                    String strTrim = strArrCaptureContructorAndResidual[1].trim();
                    if (strTrim.length() == 0) {
                        return;
                    }
                    this.egressType = new PropertyVerifier(strTrim, parserContext, this.egressType).analyze();
                }
            }
        }
    }

    private void rewriteClassReferenceToFQCN(int i) {
        String name = this.egressType.getName();
        if (this.typeDescr.getClassName().indexOf(46) == -1) {
            char[] cArr = this.name;
            int iFindFirst = ArrayTools.findFirst('(', 0, cArr.length, cArr);
            char[] charArray = name.toCharArray();
            if (iFindFirst == -1) {
                int length = charArray.length;
                this.name = new char[length];
                for (int i2 = 0; i2 < length; i2++) {
                    this.name[i2] = charArray[i2];
                }
            } else {
                char[] cArr2 = new char[charArray.length + (this.name.length - iFindFirst)];
                for (int i3 = 0; i3 < charArray.length; i3++) {
                    cArr2[i3] = charArray[i3];
                }
                int length2 = this.name.length - iFindFirst;
                int length3 = charArray.length;
                for (int i4 = 0; i4 < length2; i4++) {
                    cArr2[i4 + length3] = this.name[i4 + iFindFirst];
                }
                this.name = cArr2;
            }
            TypeDescriptor typeDescriptor = this.typeDescr;
            char[] cArr3 = this.name;
            typeDescriptor.updateClassName(cArr3, 0, cArr3.length, i);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object obj3;
        Object obj4;
        VariableResolverFactory variableResolverFactory2;
        if (this.newObjectOptimizer == null) {
            if (this.egressType == null && variableResolverFactory != null && variableResolverFactory.isResolveable(this.typeDescr.getClassName())) {
                try {
                    this.egressType = (Class) variableResolverFactory.getVariableResolver(this.typeDescr.getClassName()).getValue();
                    rewriteClassReferenceToFQCN(16);
                    if (this.typeDescr.isArray()) {
                        try {
                            this.egressType = ParseTools.findClass(variableResolverFactory, ParseTools.repeatChar('[', this.typeDescr.getArrayLength()) + "L" + this.egressType.getName() + ";", this.pCtx);
                        } catch (Exception unused) {
                        }
                    }
                } catch (ClassCastException e) {
                    Negation$$ExternalSyntheticBUOutline0.m1010m("cannot construct object: " + this.typeDescr.getClassName() + " is not a class reference", this.expr, this.start, e);
                    return null;
                }
            }
            if (this.typeDescr.isArray()) {
                NewObjectArray newObjectArray = new NewObjectArray(ParseTools.getBaseComponentType(this.egressType.getComponentType()), this.typeDescr.getCompiledArraySize());
                this.newObjectOptimizer = newObjectArray;
                return newObjectArray.getValue(obj, obj2, variableResolverFactory);
            }
            try {
                try {
                    AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
                    ParserContext parserContext = this.pCtx;
                    if (parserContext == null) {
                        parserContext = new ParserContext();
                        parserContext.getParserConfiguration().setAllImports(CompilerTools.getInjectedImports(variableResolverFactory));
                    }
                    char[] cArr = this.name;
                    obj3 = obj;
                    obj4 = obj2;
                    variableResolverFactory2 = variableResolverFactory;
                    this.newObjectOptimizer = threadAccessorOptimizer.optimizeObjectCreation(parserContext, cArr, 0, cArr.length, obj3, obj4, variableResolverFactory2);
                    if (threadAccessorOptimizer.getResultOptPass() != null) {
                        this.egressType = threadAccessorOptimizer.getEgressType();
                        return threadAccessorOptimizer.getResultOptPass();
                    }
                } catch (CompileException e2) {
                    throw ErrorUtil.rewriteIfNeeded(e2, this.expr, this.start);
                }
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
            OptimizerFactory.clearThreadAccessorOptimizer();
        }
        obj3 = obj;
        obj4 = obj2;
        variableResolverFactory2 = variableResolverFactory;
        return this.newObjectOptimizer.getValue(obj3, obj4, variableResolverFactory2);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            int i = 0;
            if (this.typeDescr.isArray()) {
                Class clsFindClass = ParseTools.findClass(variableResolverFactory, this.typeDescr.getClassName(), this.pCtx);
                int arrayLength = this.typeDescr.getArrayLength();
                int[] iArr = new int[arrayLength];
                ArraySize[] arraySize = this.typeDescr.getArraySize();
                while (i < arrayLength) {
                    iArr[i] = ((Integer) DataConversion.convert(MVEL.eval(arraySize[i].value, obj, variableResolverFactory), Integer.class)).intValue();
                    i++;
                }
                return Array.newInstance((Class<?>) clsFindClass, iArr);
            }
            char[] cArr = this.name;
            String[] strArrCaptureContructorAndResidual = ParseTools.captureContructorAndResidual(cArr, 0, cArr.length);
            List<char[]> methodOrConstructor = ParseTools.parseMethodOrConstructor(strArrCaptureContructorAndResidual[0].toCharArray());
            if (methodOrConstructor != null) {
                char[] cArr2 = this.name;
                Class clsFindClass2 = ParseTools.findClass(variableResolverFactory, new String(ParseTools.subset(cArr2, 0, ArrayTools.findFirst('(', 0, cArr2.length, cArr2))).trim(), this.pCtx);
                int size = methodOrConstructor.size();
                Object[] objArr = new Object[size];
                for (int i2 = 0; i2 < methodOrConstructor.size(); i2++) {
                    objArr[i2] = MVEL.eval(methodOrConstructor.get(i2), obj, variableResolverFactory);
                }
                Constructor bestConstructorCandidate = ParseTools.getBestConstructorCandidate(objArr, clsFindClass2, false);
                if (bestConstructorCandidate == null) {
                    throw new CompileException("unable to find constructor for: " + clsFindClass2.getName(), this.expr, this.start);
                }
                while (i < size) {
                    objArr[i] = DataConversion.convert(objArr[i], bestConstructorCandidate.getParameterTypes()[i]);
                    i++;
                }
                if (strArrCaptureContructorAndResidual.length > 1) {
                    return PropertyAccessor.get(strArrCaptureContructorAndResidual[1], bestConstructorCandidate.newInstance(objArr), variableResolverFactory, obj2, this.pCtx);
                }
                return bestConstructorCandidate.newInstance(objArr);
            }
            Constructor<?> constructor = Class.forName(this.typeDescr.getClassName(), true, this.pCtx.getParserConfiguration().getClassLoader()).getConstructor(EMPTYCLS);
            if (strArrCaptureContructorAndResidual.length > 1) {
                return PropertyAccessor.get(strArrCaptureContructorAndResidual[1], constructor.newInstance(null), variableResolverFactory, obj2, this.pCtx);
            }
            return constructor.newInstance(null);
        } catch (ClassNotFoundException e) {
            Negation$$ExternalSyntheticBUOutline0.m1010m("unable to resolve class: " + e.getMessage(), this.expr, this.start, e);
            return null;
        } catch (NoSuchMethodException e2) {
            Negation$$ExternalSyntheticBUOutline0.m1010m("cannot resolve constructor: " + e2.getMessage(), this.expr, this.start, e2);
            return null;
        } catch (CompileException e3) {
            throw e3;
        } catch (Exception e4) {
            Negation$$ExternalSyntheticBUOutline0.m1010m("could not instantiate class: " + e4.getMessage(), this.expr, this.start, e4);
            return null;
        }
    }

    private boolean isPrototypeFunction() {
        return this.pCtx.getFunctions().containsKey(this.typeDescr.getClassName());
    }

    private Object createPrototypalObject(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.pCtx.getFunction(this.typeDescr.getClassName()).getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    public static class NewObjectArray implements Accessor, Serializable {
        private Class arrayType;
        private ExecutableStatement[] sizes;

        @Override // org.mvel2.compiler.Accessor
        public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
            return null;
        }

        public NewObjectArray(Class cls, ExecutableStatement[] executableStatementArr) {
            this.arrayType = cls;
            this.sizes = executableStatementArr;
        }

        @Override // org.mvel2.compiler.Accessor
        public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
            int length = this.sizes.length;
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                iArr[i] = ((Integer) DataConversion.convert(this.sizes[i].getValue(obj, obj2, variableResolverFactory), Integer.class)).intValue();
            }
            return Array.newInstance((Class<?>) this.arrayType, iArr);
        }

        @Override // org.mvel2.compiler.Accessor
        public Class getKnownEgressType() {
            try {
                return Class.forName("[L" + this.arrayType.getName() + ";");
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }
    }

    public TypeDescriptor getTypeDescr() {
        return this.typeDescr;
    }

    public Accessor getNewObjectOptimizer() {
        return this.newObjectOptimizer;
    }
}
