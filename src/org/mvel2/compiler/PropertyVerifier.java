package org.mvel2.compiler;

import java.lang.reflect.Field;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.ErrorDetail;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.ast.Function;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.impl.refl.nodes.WithAccessor;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.NullType;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes.dex */
public class PropertyVerifier extends AbstractOptimizer {
    private static final int COL = 2;
    private static final int DONE = -1;
    private static final int METH = 1;
    private static final int NORM = 0;
    private static final int WITH = 3;
    private boolean classLiteral;
    private Class ctx;
    private boolean deepProperty;
    private boolean first;
    private boolean fqcn;
    private List<String> inputs;
    private boolean methodCall;
    private Map<String, Type> paramTypes;
    private boolean resolvedExternally;

    public PropertyVerifier(char[] cArr, ParserContext parserContext) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        this.expr = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
        this.pCtx = parserContext;
    }

    public PropertyVerifier(char[] cArr, int i, int i2, ParserContext parserContext) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        this.expr = cArr;
        this.start = i;
        this.length = i2;
        this.end = i + i2;
        this.pCtx = parserContext;
    }

    public PropertyVerifier(String str, ParserContext parserContext) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        char[] charArray = str.toCharArray();
        this.expr = charArray;
        int length = charArray.length;
        this.end = length;
        this.length = length;
        this.pCtx = parserContext;
    }

    public PropertyVerifier(String str, ParserContext parserContext, Class cls) {
        this.inputs = new LinkedList();
        this.first = false;
        this.classLiteral = false;
        this.methodCall = false;
        this.deepProperty = false;
        this.fqcn = false;
        this.ctx = null;
        char[] charArray = str.toCharArray();
        this.expr = charArray;
        int length = charArray.length;
        this.length = length;
        this.end = length;
        if (str.length() > 0 && str.charAt(0) == '.') {
            this.start = 1;
            this.f1568st = 1;
            this.cursor = 1;
        }
        this.pCtx = parserContext;
        this.ctx = cls;
    }

    public List<String> getInputs() {
        return this.inputs;
    }

    public void setInputs(List<String> list) {
        this.inputs = list;
    }

    public Class analyze() {
        this.cursor = this.start;
        this.resolvedExternally = true;
        if (this.ctx == null) {
            this.ctx = Object.class;
            this.first = true;
        }
        while (this.cursor < this.end) {
            this.classLiteral = false;
            int iNextSubToken = nextSubToken();
            if (iNextSubToken == 0) {
                this.ctx = getBeanProperty(this.ctx, capture());
            } else if (iNextSubToken == 1) {
                this.ctx = getMethod(this.ctx, capture());
            } else if (iNextSubToken == 2) {
                this.ctx = getCollectionProperty(this.ctx, capture());
            } else if (iNextSubToken == 3) {
                this.ctx = getWithProperty(this.ctx);
            }
            if (this.cursor < this.length && !this.first) {
                this.deepProperty = true;
            }
            this.first = false;
        }
        return this.ctx;
    }

    private void recordTypeParmsForProperty(String str) {
        if (this.pCtx.isStrictTypeEnforcement()) {
            ParserContext parserContext = this.pCtx;
            parserContext.setLastTypeParameters(parserContext.getTypeParametersAsArray(str));
        }
    }

    private Class getBeanProperty(Class cls, String str) {
        char c;
        if (this.first) {
            if (this.pCtx.hasVarOrInput(str)) {
                if (this.pCtx.isStrictTypeEnforcement()) {
                    recordTypeParmsForProperty(str);
                }
                return this.pCtx.getVarOrInputType(str);
            }
            if (this.pCtx.hasImport(str)) {
                this.resolvedExternally = false;
                return this.pCtx.getImport(str);
            }
            if (!this.pCtx.isStrongTyping()) {
                return Object.class;
            }
            if (this.pCtx.hasVarOrInput("this")) {
                if (this.pCtx.isStrictTypeEnforcement()) {
                    recordTypeParmsForProperty("this");
                }
                cls = this.pCtx.getVarOrInputType("this");
                this.resolvedExternally = false;
            }
        }
        this.f1568st = this.cursor;
        Member fieldOrAccessor = cls != null ? PropertyTools.getFieldOrAccessor(cls, str) : null;
        if (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && "class".equals(str)) {
            return Class.class;
        }
        if (fieldOrAccessor instanceof Field) {
            if (this.pCtx.isStrictTypeEnforcement()) {
                Field field = (Field) fieldOrAccessor;
                if (field.getGenericType() != null) {
                    if (field.getGenericType() instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) field.getGenericType();
                        this.pCtx.setLastTypeParameters(parameterizedType.getActualTypeArguments());
                        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                        TypeVariable<Class<?>>[] typeParameters = type2Class(parameterizedType.getRawType()).getTypeParameters();
                        if (actualTypeArguments.length > 0 && this.paramTypes == null) {
                            this.paramTypes = new HashMap();
                        }
                        for (int i = 0; i < actualTypeArguments.length; i++) {
                            this.paramTypes.put(typeParameters[i].toString(), actualTypeArguments[i]);
                        }
                    } else if (field.getGenericType() instanceof TypeVariable) {
                        Type typeRemove = this.paramTypes.remove(((TypeVariable) field.getGenericType()).getName());
                        if (typeRemove != null && (typeRemove instanceof Class)) {
                            return (Class) typeRemove;
                        }
                    }
                }
                return field.getType();
            }
            return ((Field) fieldOrAccessor).getType();
        }
        if (fieldOrAccessor != null) {
            return getReturnType(cls, (Method) fieldOrAccessor);
        }
        ParserContext parserContext = this.pCtx;
        if (parserContext != null && this.first && parserContext.hasImport(str) && this.pCtx.getImport(str) != null) {
            return this.pCtx.getImport(str);
        }
        ParserContext parserContext2 = this.pCtx;
        if (parserContext2 != null && parserContext2.getLastTypeParameters() != null && this.pCtx.getLastTypeParameters().length != 0) {
            if (!Collection.class.isAssignableFrom(cls)) {
                c = Map.class.isAssignableFrom(cls) ? (char) 1 : (char) 0;
            }
            Type type = this.pCtx.getLastTypeParameters()[c];
            this.pCtx.setLastTypeParameters(null);
            return type instanceof ParameterizedType ? Object.class : (Class) type;
        }
        if (this.pCtx != null && "length".equals(str) && cls.isArray()) {
            return Integer.class;
        }
        Object objTryStaticAccess = tryStaticAccess();
        if (objTryStaticAccess != null) {
            this.fqcn = true;
            this.resolvedExternally = false;
            if (objTryStaticAccess instanceof Class) {
                boolean z = (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && new String(this.expr, this.end - 6, 6).equals(".class")) ? false : true;
                this.classLiteral = z;
                return z ? (Class) objTryStaticAccess : Class.class;
            }
            if (objTryStaticAccess instanceof Field) {
                try {
                    return ((Field) objTryStaticAccess).get(null).getClass();
                } catch (Exception e) {
                    throw new CompileException("in verifier: ", this.expr, this.start, e);
                }
            }
            try {
                return ((Method) objTryStaticAccess).getReturnType();
            } catch (Exception e2) {
                throw new CompileException("in verifier: ", this.expr, this.start, e2);
            }
        }
        if (cls != null) {
            try {
                return ParseTools.findClass(this.variableFactory, cls.getName() + "$" + str, this.pCtx);
            } catch (ClassNotFoundException unused) {
            }
        }
        ParserContext parserContext3 = this.pCtx;
        if (parserContext3 == null || parserContext3.getParserConfiguration() == null ? MVEL.COMPILER_OPT_ALLOW_NAKED_METH_CALL : this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
            Class method = getMethod(cls, str);
            if (method != Object.class) {
                return method;
            }
        }
        if (!this.pCtx.isStrictTypeEnforcement()) {
            return Object.class;
        }
        throw new CompileException("unqualified type in strict mode for: " + str, this.expr, this.tkStart);
    }

    private Class getReturnType(Class cls, Method method) {
        Class<?> declaringClass = method.getDeclaringClass();
        if (cls == declaringClass) {
            return returnGenericType(method);
        }
        Type genericReturnType = method.getGenericReturnType();
        if (genericReturnType instanceof TypeVariable) {
            String name = ((TypeVariable) genericReturnType).getName();
            Type genericSuperclass = cls.getGenericSuperclass();
            Class<? super Object> superclass = cls.getSuperclass();
            while (superclass != null && superclass != declaringClass) {
                genericSuperclass = superclass.getGenericSuperclass();
                superclass = superclass.getSuperclass();
            }
            if (superclass == null) {
                return returnGenericType(method);
            }
            if (genericSuperclass instanceof ParameterizedType) {
                TypeVariable<Class<? super Object>>[] typeParameters = superclass.getTypeParameters();
                int i = 0;
                while (true) {
                    if (i >= typeParameters.length) {
                        i = -1;
                        break;
                    }
                    if (typeParameters[i].getName().equals(name)) {
                        break;
                    }
                    i++;
                }
                if (i < 0) {
                    return returnGenericType(method);
                }
                Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[i];
                return type instanceof Class ? (Class) type : returnGenericType(method);
            }
        }
        return returnGenericType(method);
    }

    private void recordParametricReturnedType(Type type) {
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            this.pCtx.setLastTypeParameters(parameterizedType.getActualTypeArguments());
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            TypeVariable<Class<?>>[] typeParameters = type2Class(parameterizedType.getRawType()).getTypeParameters();
            if (actualTypeArguments.length > 0 && this.paramTypes == null) {
                this.paramTypes = new HashMap();
            }
            for (int i = 0; i < actualTypeArguments.length; i++) {
                this.paramTypes.put(typeParameters[i].toString(), actualTypeArguments[i]);
            }
        }
    }

    private Class<?> returnGenericType(Method method) {
        Type genericReturnType = method.getGenericReturnType();
        recordParametricReturnedType(genericReturnType);
        String string = genericReturnType.toString();
        if (genericReturnType instanceof ParameterizedType) {
            this.pCtx.setLastTypeParameters(((ParameterizedType) genericReturnType).getActualTypeArguments());
        }
        Map<String, Type> map = this.paramTypes;
        if (map != null && map.containsKey(string)) {
            return type2Class(this.paramTypes.get(string));
        }
        return method.getReturnType();
    }

    private Class getCollectionProperty(Class cls, String str) {
        Class<Object> cls2 = Object.class;
        Class subComponentType = cls;
        if (this.first) {
            if (this.pCtx.hasVarOrInput(str)) {
                subComponentType = ParseTools.getSubComponentType(this.pCtx.getVarOrInputType(str));
            } else if (this.pCtx.hasImport(str)) {
                this.resolvedExternally = false;
                subComponentType = ParseTools.getSubComponentType(this.pCtx.getImport(str));
            } else {
                subComponentType = cls2;
            }
        }
        Class componentType = cls2;
        if (this.pCtx.isStrictTypeEnforcement()) {
            Class beanProperty = subComponentType;
            if (str.length() != 0) {
                beanProperty = getBeanProperty(subComponentType, str);
            }
            if (Map.class.isAssignableFrom(beanProperty)) {
                Type type = cls2;
                if (this.pCtx.getLastTypeParameters() != null) {
                    type = cls2;
                    if (this.pCtx.getLastTypeParameters().length != 0) {
                        type = this.pCtx.getLastTypeParameters()[1];
                    }
                }
                componentType = type2Class(type);
            } else if (Collection.class.isAssignableFrom(beanProperty)) {
                componentType = cls2;
                if (this.pCtx.getLastTypeParameters() != null) {
                    componentType = cls2;
                    if (this.pCtx.getLastTypeParameters().length != 0) {
                        componentType = type2Class(this.pCtx.getLastTypeParameters()[0]);
                    }
                }
            } else if (beanProperty.isArray()) {
                componentType = beanProperty.getComponentType();
            } else {
                if (this.pCtx.isStrongTyping()) {
                    throw new CompileException("unknown collection type: " + beanProperty + "; property=" + str, this.expr, this.start);
                }
                componentType = beanProperty;
            }
        }
        this.cursor++;
        skipWhitespace();
        int i = this.cursor;
        if (scanTo(']')) {
            addFatalError("unterminated [ in token");
        }
        MVEL.analysisCompile(new String(this.expr, i, this.cursor - i), this.pCtx);
        this.cursor++;
        return componentType;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Class getMethod(Class cls, String str) {
        Class varOrInputType;
        String str2;
        Class[] clsArr;
        int i;
        List<char[]> list;
        Class<?> cls2;
        String name = str;
        int i2 = this.cursor;
        int i3 = 0;
        if (this.first) {
            this.first = false;
            this.methodCall = true;
            if (this.pCtx.hasImport(name)) {
                Method method = this.pCtx.getStaticImport(name).getMethod();
                varOrInputType = method.getDeclaringClass();
                name = method.getName();
            } else {
                Function function = this.pCtx.getFunction(name);
                if (function != null && function.getEgressType() != null) {
                    this.resolvedExternally = false;
                    int iBalancedCapture = ParseTools.balancedCapture(this.expr, this.cursor, this.end, '(');
                    this.cursor = iBalancedCapture;
                    function.checkArgumentCount(ParseTools.parseParameterList(iBalancedCapture - i2 > 1 ? ParseTools.subset(this.expr, i2 + 1, (iBalancedCapture - i2) - 1) : new char[0], 0, -1).size());
                    return function.getEgressType();
                }
                if (this.pCtx.hasVarOrInput("this")) {
                    if (this.pCtx.isStrictTypeEnforcement()) {
                        recordTypeParmsForProperty("this");
                    }
                    varOrInputType = this.pCtx.getVarOrInputType("this");
                    this.resolvedExternally = false;
                } else {
                    varOrInputType = cls;
                }
            }
        }
        String str3 = name;
        int i4 = this.cursor;
        int i5 = this.end;
        if (i4 < i5) {
            char[] cArr = this.expr;
            if (cArr[i4] == '(') {
                int iBalancedCapture2 = ParseTools.balancedCapture(cArr, i4, i5, '(');
                this.cursor = iBalancedCapture2;
                str2 = iBalancedCapture2 - i2 > 1 ? new String(this.expr, i2 + 1, (iBalancedCapture2 - i2) - 1) : _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        this.cursor++;
        List<char[]> parameterList = ParseTools.parseParameterList(str2.toCharArray(), 0, -1);
        if (parameterList.size() == 0) {
            clsArr = new Class[0];
            parameterList = Collections.EMPTY_LIST;
        } else {
            Class[] clsArr2 = new Class[parameterList.size()];
            List<ErrorDetail> errorList = this.pCtx.getErrorList().isEmpty() ? this.pCtx.getErrorList() : new ArrayList<>(this.pCtx.getErrorList());
            CompileException compileExceptionRewriteIfNeeded = null;
            for (int i6 = 0; i6 < parameterList.size(); i6++) {
                try {
                    clsArr2[i6] = MVEL.analyze(parameterList.get(i6), this.pCtx);
                    if ("null".equals(String.valueOf(parameterList.get(i6)))) {
                        clsArr2[i6] = NullType.class;
                    }
                } catch (CompileException e) {
                    compileExceptionRewriteIfNeeded = ErrorUtil.rewriteIfNeeded(e, this.expr, this.f1568st);
                }
                if (errorList.size() < this.pCtx.getErrorList().size()) {
                    for (ErrorDetail errorDetail : this.pCtx.getErrorList()) {
                        if (!errorList.contains(errorDetail)) {
                            errorDetail.setExpr(this.expr);
                            errorDetail.setCursor(new String(this.expr).substring(this.f1568st).indexOf(new String(parameterList.get(i6))) + this.f1568st);
                            errorDetail.setColumn(0);
                            errorDetail.setLineNumber(0);
                            errorDetail.calcRowAndColumn();
                        }
                    }
                }
                if (compileExceptionRewriteIfNeeded != null) {
                    throw compileExceptionRewriteIfNeeded;
                }
            }
            clsArr = clsArr2;
        }
        Method bestCandidate = ParseTools.getBestCandidate(clsArr, str3, varOrInputType, varOrInputType.getMethods(), this.pCtx.isStrongTyping());
        Class<?> cls3 = Object.class;
        if (bestCandidate == null && (bestCandidate = ParseTools.getBestCandidate(clsArr, str3, varOrInputType, varOrInputType.getDeclaredMethods(), this.pCtx.isStrongTyping())) == null) {
            StringAppender stringAppender = new StringAppender();
            while (i3 < clsArr.length) {
                Class cls4 = clsArr[i3];
                stringAppender.append(cls4 != null ? cls4.getName() : null);
                if (i3 < clsArr.length - 1) {
                    stringAppender.append(", ");
                }
                i3++;
            }
            if (("size".equals(str3) || "length".equals(str3)) && clsArr.length == 0 && varOrInputType.isArray()) {
                return Integer.class;
            }
            if (!this.pCtx.isStrictTypeEnforcement()) {
                return cls3;
            }
            throw new CompileException("unable to resolve method using strict-mode: " + varOrInputType.getName() + "." + str3 + "(" + stringAppender.toString() + ")", this.expr, this.tkStart);
        }
        if (!this.pCtx.isStrictTypeEnforcement() || bestCandidate.getGenericReturnType() == null) {
            i = 0;
        } else {
            HashMap map = new HashMap();
            Type[] genericParameterTypes = bestCandidate.getGenericParameterTypes();
            int i7 = 0;
            while (i7 < genericParameterTypes.length) {
                Type type = genericParameterTypes[i7];
                int i8 = i3;
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    cls2 = cls3;
                    list = parameterList;
                    Class cls5 = this.pCtx.getImport(new String(parameterList.get(i7)));
                    if (cls5 != null) {
                        if (parameterizedType.getRawType().equals(Class.class)) {
                            map.put(parameterizedType.getActualTypeArguments()[i8].toString(), cls5);
                        } else {
                            map.put(genericParameterTypes[i7].toString(), cls5);
                        }
                    }
                } else {
                    list = parameterList;
                    cls2 = cls3;
                }
                i7++;
                cls3 = cls2;
                i3 = i8;
                parameterList = list;
            }
            Class<?> cls6 = cls3;
            i = i3;
            if (this.pCtx.isStrictTypeEnforcement() && varOrInputType.getTypeParameters().length != 0 && this.pCtx.getLastTypeParameters() != null && this.pCtx.getLastTypeParameters().length == varOrInputType.getTypeParameters().length) {
                TypeVariable[] typeParameters = varOrInputType.getTypeParameters();
                for (int i9 = i; i9 < typeParameters.length; i9++) {
                    map.put(typeParameters[i9].getName(), this.pCtx.getLastTypeParameters()[i9] instanceof Class ? type2Class(this.pCtx.getLastTypeParameters()[i9]) : cls6);
                }
            }
            Type genericReturnType = bestCandidate.getGenericReturnType();
            String string = genericReturnType.toString();
            if (genericReturnType instanceof ParameterizedType) {
                this.pCtx.setLastTypeParameters(((ParameterizedType) genericReturnType).getActualTypeArguments());
            }
            Map<String, Type> map2 = this.paramTypes;
            if (map2 != null && map2.containsKey(string)) {
                return type2Class(this.paramTypes.get(string));
            }
            if (map.containsKey(string)) {
                return (Class) map.get(string);
            }
        }
        if (!Modifier.isPublic(bestCandidate.getModifiers()) && this.pCtx.isStrictTypeEnforcement()) {
            StringAppender stringAppender2 = new StringAppender();
            for (int i10 = i; i10 < clsArr.length; i10++) {
                Class cls7 = clsArr[i10];
                stringAppender2.append(cls7 != null ? cls7.getName() : null);
                if (i10 < clsArr.length - 1) {
                    stringAppender2.append(", ");
                }
            }
            String string2 = Modifier.toString(bestCandidate.getModifiers());
            if (string2.trim().equals(_UrlKt.FRAGMENT_ENCODE_SET)) {
                string2 = "<package local>";
            }
            addFatalError("the referenced method is not accessible: " + varOrInputType.getName() + "." + str3 + "(" + stringAppender2.toString() + ") (scope: " + string2 + "; required: public", this.tkStart);
        }
        return getReturnType(varOrInputType, bestCandidate);
    }

    private static Class<?> type2Class(Type type) {
        if (type == null) {
            return null;
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return type2Class(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            GenericDeclaration genericDeclaration = ((TypeVariable) type).getGenericDeclaration();
            return genericDeclaration instanceof Method ? ((Method) genericDeclaration).getReturnType() : Object.class;
        }
        throw new UnsupportedOperationException("Unknown type " + type);
    }

    private Class getWithProperty(Class cls) {
        String strTrim = new String(this.expr, 0, this.cursor - 1).trim();
        int i = this.cursor;
        int i2 = i + 1;
        int iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(this.expr, i, this.end, '{', this.pCtx);
        ParserContext parserContext = this.pCtx;
        char[] cArr = this.expr;
        this.cursor = iBalancedCaptureWithLineAccounting + 1;
        new WithAccessor(parserContext, strTrim, cArr, i2, iBalancedCaptureWithLineAccounting - i2, cls);
        return cls;
    }

    public boolean isResolvedExternally() {
        return this.resolvedExternally;
    }

    public boolean isClassLiteral() {
        return this.classLiteral;
    }

    public boolean isDeepProperty() {
        return this.deepProperty;
    }

    public boolean isInput() {
        return this.resolvedExternally && !this.methodCall;
    }

    public boolean isMethodCall() {
        return this.methodCall;
    }

    public boolean isFqcn() {
        return this.fqcn;
    }

    public Class getCtx() {
        return this.ctx;
    }

    public void setCtx(Class cls) {
        this.ctx = cls;
    }
}
