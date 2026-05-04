package org.mvel2.optimizers.impl.refl;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.MVEL;
import org.mvel2.OptimizationFailure;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessException;
import org.mvel2.ast.FunctionInstance;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.PropertyVerifier;
import org.mvel2.integration.GlobalListenerFactory;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.PropertyHandlerFactory;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.impl.refl.collection.ArrayCreator;
import org.mvel2.optimizers.impl.refl.collection.ExprValueAccessor;
import org.mvel2.optimizers.impl.refl.collection.ListCreator;
import org.mvel2.optimizers.impl.refl.collection.MapCreator;
import org.mvel2.optimizers.impl.refl.nodes.ArrayAccessor;
import org.mvel2.optimizers.impl.refl.nodes.ArrayAccessorNest;
import org.mvel2.optimizers.impl.refl.nodes.ArrayLength;
import org.mvel2.optimizers.impl.refl.nodes.ConstructorAccessor;
import org.mvel2.optimizers.impl.refl.nodes.DynamicFieldAccessor;
import org.mvel2.optimizers.impl.refl.nodes.DynamicFunctionAccessor;
import org.mvel2.optimizers.impl.refl.nodes.FieldAccessor;
import org.mvel2.optimizers.impl.refl.nodes.FieldAccessorNH;
import org.mvel2.optimizers.impl.refl.nodes.FunctionAccessor;
import org.mvel2.optimizers.impl.refl.nodes.GetterAccessor;
import org.mvel2.optimizers.impl.refl.nodes.GetterAccessorNH;
import org.mvel2.optimizers.impl.refl.nodes.IndexedCharSeqAccessor;
import org.mvel2.optimizers.impl.refl.nodes.IndexedCharSeqAccessorNest;
import org.mvel2.optimizers.impl.refl.nodes.IndexedVariableAccessor;
import org.mvel2.optimizers.impl.refl.nodes.ListAccessor;
import org.mvel2.optimizers.impl.refl.nodes.ListAccessorNest;
import org.mvel2.optimizers.impl.refl.nodes.MapAccessor;
import org.mvel2.optimizers.impl.refl.nodes.MapAccessorNest;
import org.mvel2.optimizers.impl.refl.nodes.MethodAccessor;
import org.mvel2.optimizers.impl.refl.nodes.MethodAccessorNH;
import org.mvel2.optimizers.impl.refl.nodes.Notify;
import org.mvel2.optimizers.impl.refl.nodes.NullSafe;
import org.mvel2.optimizers.impl.refl.nodes.PropertyHandlerAccessor;
import org.mvel2.optimizers.impl.refl.nodes.SetterAccessor;
import org.mvel2.optimizers.impl.refl.nodes.StaticReferenceAccessor;
import org.mvel2.optimizers.impl.refl.nodes.StaticVarAccessor;
import org.mvel2.optimizers.impl.refl.nodes.StaticVarAccessorNH;
import org.mvel2.optimizers.impl.refl.nodes.ThisValueAccessor;
import org.mvel2.optimizers.impl.refl.nodes.Union;
import org.mvel2.optimizers.impl.refl.nodes.VariableAccessor;
import org.mvel2.optimizers.impl.refl.nodes.WithAccessor;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.MethodStub;
import org.mvel2.util.NullType;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;
import org.mvel2.util.ReflectionUtil;
import org.mvel2.util.StringAppender;
import org.mvel2.util.Varargs;

/* JADX INFO: loaded from: classes.dex */
public class ReflectiveAccessorOptimizer extends AbstractOptimizer implements AccessorOptimizer {
    private static final int DONE = -1;
    private Object ctx;
    private AccessorNode currNode;
    private boolean first;
    private Class ingressType;
    private Class returnType;
    private AccessorNode rootNode;
    private Object thisRef;
    private Object val;
    private VariableResolverFactory variableFactory;
    private static final Logger LOG = Logger.getLogger(ReflectiveAccessorOptimizer.class.getName());
    private static final Object[] EMPTYARG = new Object[0];
    private static final Class[] EMPTYCLS = new Class[0];

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public void init() {
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public boolean isLiteralOnly() {
        return false;
    }

    public ReflectiveAccessorOptimizer() {
        this.first = true;
    }

    private ReflectiveAccessorOptimizer(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        super(parserContext);
        this.first = true;
        this.expr = cArr;
        this.start = i;
        i2 = cArr == null ? i : i2;
        this.length = i2;
        this.end = i + i2;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
        this.thisRef = obj2;
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Class cls) {
        this.currNode = null;
        this.rootNode = null;
        this.expr = cArr;
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        this.length = i3 - i;
        this.first = true;
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.ingressType = cls;
        this.pCtx = parserContext;
        return compileGetChain();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Object obj3, Class cls) {
        char[] cArrSubset;
        ParserContext parserContext2;
        InvocationTargetException invocationTargetException;
        ParserContext parserContext3;
        IllegalAccessException illegalAccessException;
        Class cls2 = null;
        this.currNode = null;
        this.rootNode = null;
        this.expr = cArr;
        this.start = i;
        this.first = true;
        this.length = i + i2;
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.ingressType = cls;
        int iFindLastUnion = findLastUnion();
        this.pCtx = parserContext;
        PropertyVerifier propertyVerifier = new PropertyVerifier(cArr, parserContext);
        if (iFindLastUnion != -1) {
            int i3 = iFindLastUnion + 1;
            cArrSubset = ParseTools.subset(cArr, 0, iFindLastUnion);
            cArr = ParseTools.subset(cArr, i3, cArr.length - i3);
        } else {
            cArrSubset = null;
        }
        if (cArrSubset != null) {
            this.expr = cArrSubset;
            int length = cArrSubset.length;
            this.end = length;
            this.length = length;
            compileGetChain();
            obj = this.val;
        }
        if (obj == null) {
            throw new PropertyAccessException("could not access property: " + new String(cArr, this.start, Math.min(this.length, cArr.length)) + "; parent is null: " + new String(this.expr), this.expr, this.start, parserContext);
        }
        try {
            try {
                this.expr = cArr;
                try {
                    int length2 = cArr.length;
                    this.end = length2;
                    this.length = length2;
                    this.cursor = 0;
                    skipWhitespace();
                    if (this.collection) {
                        int i4 = this.cursor;
                        if (i4 == this.end) {
                            throw new PropertyAccessException("unterminated '['", this.expr, this.start, parserContext);
                        }
                        if (scanTo(']')) {
                            throw new PropertyAccessException("unterminated '['", this.expr, this.start, parserContext);
                        }
                        String str = new String(cArr, i4, this.cursor - i4);
                        if (obj instanceof Map) {
                            if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(Map.class)) {
                                propHandlerSet(str, obj, Map.class, obj3);
                            } else {
                                Map map = (Map) obj;
                                Object objEval = MVEL.eval(str, obj, this.variableFactory);
                                Class clsAnalyze = propertyVerifier.analyze();
                                this.returnType = clsAnalyze;
                                map.put(objEval, DataConversion.convert(obj3, clsAnalyze));
                                addAccessorNode(new MapAccessorNest(str, this.returnType));
                            }
                            return this.rootNode;
                        }
                        if (obj instanceof List) {
                            if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(List.class)) {
                                propHandlerSet(str, obj, List.class, obj3);
                            } else {
                                List list = (List) obj;
                                int iIntValue = ((Integer) MVEL.eval(str, obj, this.variableFactory, Integer.class)).intValue();
                                Class clsAnalyze2 = propertyVerifier.analyze();
                                this.returnType = clsAnalyze2;
                                list.set(iIntValue, DataConversion.convert(obj3, clsAnalyze2));
                                addAccessorNode(new ListAccessorNest(str, this.returnType));
                            }
                            return this.rootNode;
                        }
                        if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(obj.getClass())) {
                            propHandlerSet(str, obj, obj.getClass(), obj3);
                            return this.rootNode;
                        }
                        if (obj.getClass().isArray()) {
                            if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(Array.class)) {
                                propHandlerSet(str, obj, Array.class, obj3);
                            } else {
                                Array.set(obj, ((Integer) MVEL.eval(str, obj, this.variableFactory, Integer.class)).intValue(), DataConversion.convert(obj3, ParseTools.getBaseComponentType(obj.getClass())));
                                addAccessorNode(new ArrayAccessorNest(str));
                            }
                            return this.rootNode;
                        }
                        throw new PropertyAccessException("cannot bind to collection property: " + new String(cArr) + ": not a recognized collection type: " + obj.getClass(), this.expr, this.f1568st, parserContext);
                    }
                    if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(obj.getClass())) {
                        propHandlerSet(new String(cArr), obj, obj.getClass(), obj3);
                        return this.rootNode;
                    }
                    String strTrim = new String(cArr, 0, this.length).trim();
                    if (GlobalListenerFactory.hasSetListeners()) {
                        GlobalListenerFactory.notifySetListeners(obj, strTrim, this.variableFactory, obj3);
                        addAccessorNode(new Notify(strTrim));
                    }
                    Class<?> cls3 = obj.getClass();
                    if (obj3 != null) {
                        cls2 = cls;
                    }
                    Member fieldOrWriteAccessor = PropertyTools.getFieldOrWriteAccessor(cls3, strTrim, cls2);
                    if (fieldOrWriteAccessor instanceof Field) {
                        Field field = (Field) fieldOrWriteAccessor;
                        if (obj3 != null && !field.getType().isAssignableFrom(obj3.getClass())) {
                            if (!DataConversion.canConvert(field.getType(), obj3.getClass())) {
                                throw new CompileException("cannot convert type: " + obj3.getClass() + ": to " + field.getType(), this.expr, this.start);
                            }
                            field.set(obj, DataConversion.convert(obj3, field.getType()));
                            addAccessorNode(new DynamicFieldAccessor(field));
                        } else if (obj3 == null && field.getType().isPrimitive()) {
                            field.set(obj, PropertyTools.getPrimitiveInitialValue(field.getType()));
                            addAccessorNode(new FieldAccessor(field));
                        } else {
                            field.set(obj, obj3);
                            addAccessorNode(new FieldAccessor(field));
                        }
                    } else if (fieldOrWriteAccessor != null) {
                        Method method = (Method) fieldOrWriteAccessor;
                        if (obj3 != null && !method.getParameterTypes()[0].isAssignableFrom(obj3.getClass())) {
                            if (!DataConversion.canConvert(method.getParameterTypes()[0], obj3.getClass())) {
                                throw new CompileException("cannot convert type: " + obj3.getClass() + ": to " + method.getParameterTypes()[0], this.expr, this.start);
                            }
                            method.invoke(obj, DataConversion.convert(obj3, method.getParameterTypes()[0]));
                        } else if (obj3 == null && method.getParameterTypes()[0].isPrimitive()) {
                            method.invoke(obj, PropertyTools.getPrimitiveInitialValue(method.getParameterTypes()[0]));
                        } else {
                            method.invoke(obj, obj3);
                        }
                        addAccessorNode(new SetterAccessor(method));
                    } else if (obj instanceof Map) {
                        ((Map) obj).put(strTrim, obj3);
                        addAccessorNode(new MapAccessor(strTrim));
                    } else {
                        throw new PropertyAccessException("could not access property (" + strTrim + ") in: " + cls.getName(), this.expr, this.start, parserContext);
                    }
                    return this.rootNode;
                } catch (IllegalAccessException e) {
                    illegalAccessException = e;
                    parserContext3 = parserContext;
                    throw new PropertyAccessException("could not access property: " + new String(cArr), this.expr, this.f1568st, illegalAccessException, parserContext3);
                } catch (InvocationTargetException e2) {
                    invocationTargetException = e2;
                    parserContext2 = parserContext;
                    throw new PropertyAccessException("could not access property: " + new String(cArr), this.expr, this.f1568st, invocationTargetException, parserContext2);
                }
            } catch (IllegalArgumentException e3) {
                StringBuilder sb = new StringBuilder();
                sb.append("error binding property: ");
                sb.append(new String(cArr));
                sb.append(" (value <<");
                sb.append(obj3);
                sb.append(">>::");
                sb.append(obj3 == null ? "null" : obj3.getClass().getCanonicalName());
                sb.append(")");
                throw new PropertyAccessException(sb.toString(), this.expr, this.f1568st, e3, parserContext);
            }
        } catch (IllegalAccessException e4) {
            parserContext3 = parserContext;
            illegalAccessException = e4;
        } catch (InvocationTargetException e5) {
            parserContext2 = parserContext;
            invocationTargetException = e5;
        }
    }

    private Accessor compileGetChain() {
        Object beanPropertyAO = this.ctx;
        this.cursor = this.start;
        try {
            if (!MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING) {
                while (this.cursor < this.end) {
                    int iNextSubToken = nextSubToken();
                    if (iNextSubToken == 0) {
                        beanPropertyAO = getBeanProperty(beanPropertyAO, capture());
                    } else if (iNextSubToken == 1) {
                        beanPropertyAO = getMethod(beanPropertyAO, capture());
                    } else if (iNextSubToken == 2) {
                        beanPropertyAO = getCollectionProperty(beanPropertyAO, capture());
                    } else if (iNextSubToken == 3) {
                        beanPropertyAO = getWithProperty(beanPropertyAO);
                    }
                    this.first = false;
                    if (beanPropertyAO != null) {
                        this.returnType = beanPropertyAO.getClass();
                    }
                    int i = this.cursor;
                    int i2 = this.end;
                    if (i < i2) {
                        if (this.nullSafe) {
                            char[] cArr = this.expr;
                            int i3 = cArr[i] == '.' ? 1 : 0;
                            addAccessorNode(new NullSafe(cArr, i + i3, (i2 - i) - i3, this.pCtx));
                            if (beanPropertyAO == null) {
                                break;
                            }
                        }
                        if (beanPropertyAO == null) {
                            throw new NullPointerException();
                        }
                    }
                    this.staticAccess = false;
                }
            } else {
                while (this.cursor < this.end) {
                    int iNextSubToken2 = nextSubToken();
                    if (iNextSubToken2 == 0) {
                        beanPropertyAO = getBeanPropertyAO(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 1) {
                        beanPropertyAO = getMethod(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 2) {
                        beanPropertyAO = getCollectionPropertyAO(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 3) {
                        beanPropertyAO = getWithProperty(beanPropertyAO);
                    }
                    this.first = false;
                    if (beanPropertyAO != null) {
                        this.returnType = beanPropertyAO.getClass();
                    }
                    int i4 = this.cursor;
                    int i5 = this.end;
                    if (i4 < i5) {
                        if (this.nullSafe) {
                            char[] cArr2 = this.expr;
                            int i6 = cArr2[i4] == '.' ? 1 : 0;
                            addAccessorNode(new NullSafe(cArr2, i4 + i6, (i5 - i4) - i6, this.pCtx));
                            if (beanPropertyAO == null) {
                                break;
                            }
                        }
                        if (beanPropertyAO == null) {
                            throw new NullPointerException();
                        }
                    }
                    this.staticAccess = false;
                }
            }
            this.val = beanPropertyAO;
            return this.rootNode;
        } catch (IllegalAccessException e) {
            throw new PropertyAccessException(new String(this.expr, this.start, this.length) + ": " + e.getMessage(), this.expr, this.f1568st, e, this.pCtx);
        } catch (IndexOutOfBoundsException e2) {
            throw new PropertyAccessException(new String(this.expr, this.start, this.length) + ": array index out of bounds.", this.expr, this.f1568st, e2, this.pCtx);
        } catch (NullPointerException e3) {
            throw new PropertyAccessException("null pointer: " + new String(this.expr, this.start, this.length), this.expr, this.f1568st, e3, this.pCtx);
        } catch (InvocationTargetException e4) {
            if (!MVEL.INVOKED_METHOD_EXCEPTIONS_BUBBLE) {
                throw new PropertyAccessException(new String(this.expr, this.start, this.length) + ": " + e4.getTargetException().getMessage(), this.expr, this.f1568st, e4, this.pCtx);
            }
            if (e4.getTargetException() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getTargetException());
            }
            throw new RuntimeException(e4);
        } catch (CompileException e5) {
            throw e5;
        } catch (Exception e6) {
            LOG.log(Level.WARNING, _UrlKt.FRAGMENT_ENCODE_SET, (Throwable) e6);
            throw new CompileException(e6.getMessage(), this.expr, this.f1568st, e6);
        }
    }

    private void addAccessorNode(AccessorNode accessorNode) {
        if (this.rootNode == null) {
            this.currNode = accessorNode;
            this.rootNode = accessorNode;
        } else {
            this.currNode = this.currNode.setNextNode(accessorNode);
        }
    }

    private Object getWithProperty(Object obj) {
        this.currType = null;
        int i = this.start;
        int i2 = this.cursor;
        String strTrim = i != i2 ? new String(this.expr, i, i2 - 1).trim() : null;
        int i3 = this.cursor;
        int i4 = i3 + 1;
        int iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(this.expr, i3, this.end, '{', this.pCtx);
        ParserContext parserContext = this.pCtx;
        char[] cArr = this.expr;
        this.cursor = iBalancedCaptureWithLineAccounting + 1;
        WithAccessor withAccessor = new WithAccessor(parserContext, strTrim, cArr, i4, iBalancedCaptureWithLineAccounting - i4, this.ingressType);
        addAccessorNode(withAccessor);
        return withAccessor.getValue(obj, this.thisRef, this.variableFactory);
    }

    private Object getBeanPropertyAO(Object obj, String str) {
        if (GlobalListenerFactory.hasGetListeners()) {
            GlobalListenerFactory.notifyGetListeners(obj, str, this.variableFactory);
            addAccessorNode(new Notify(str));
        }
        return (obj == null || !PropertyHandlerFactory.hasPropertyHandler(obj.getClass())) ? getBeanProperty(obj, str) : propHandler(str, obj, obj.getClass());
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00f6 A[Catch: IllegalArgumentException -> 0x00ee, IllegalAccessException -> 0x0186, TryCatch #4 {IllegalAccessException -> 0x0186, IllegalArgumentException -> 0x00ee, blocks: (B:59:0x00e4, B:62:0x00f0, B:64:0x00f6, B:66:0x0107, B:67:0x0117), top: B:188:0x00e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117 A[Catch: IllegalArgumentException -> 0x00ee, IllegalAccessException -> 0x0186, TRY_LEAVE, TryCatch #4 {IllegalAccessException -> 0x0186, IllegalArgumentException -> 0x00ee, blocks: (B:59:0x00e4, B:62:0x00f0, B:64:0x00f6, B:66:0x0107, B:67:0x0117), top: B:188:0x00e4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object getBeanProperty(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        Class<?> cls;
        boolean z;
        Object property;
        ParserContext parserContext = this.pCtx;
        if ((parserContext == null ? this.currType : parserContext.getVarOrInputTypeOrNull(str)) == Object.class && !this.pCtx.isStrongTyping()) {
            this.currType = null;
        }
        if (this.first) {
            if ("this".equals(str)) {
                addAccessorNode(new ThisValueAccessor());
                return this.thisRef;
            }
            VariableResolverFactory variableResolverFactory = this.variableFactory;
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                if (this.variableFactory.isIndexedFactory() && this.variableFactory.isTarget(str)) {
                    int iVariableIndexOf = this.variableFactory.variableIndexOf(str);
                    addAccessorNode(new IndexedVariableAccessor(iVariableIndexOf));
                    if (this.variableFactory.getIndexedVariableResolver(iVariableIndexOf) == null) {
                        VariableResolverFactory variableResolverFactory2 = this.variableFactory;
                        variableResolverFactory2.setIndexedVariableResolver(iVariableIndexOf, variableResolverFactory2.getVariableResolver(str));
                    }
                    return this.variableFactory.getIndexedVariableResolver(iVariableIndexOf).getValue();
                }
                addAccessorNode(new VariableAccessor(str));
                return this.variableFactory.getVariableResolver(str).getValue();
            }
        }
        boolean z2 = obj instanceof Class;
        if (!z2) {
            if (obj != null) {
                cls = obj.getClass();
            } else {
                cls = this.currType;
            }
            z = false;
        } else {
            if (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && "class".equals(str)) {
                return obj;
            }
            cls = (Class) obj;
            z = true;
        }
        if (PropertyHandlerFactory.hasPropertyHandler(cls)) {
            PropertyHandlerAccessor propertyHandlerAccessor = new PropertyHandlerAccessor(str, cls, PropertyHandlerFactory.getPropertyHandler(cls));
            addAccessorNode(propertyHandlerAccessor);
            return propertyHandlerAccessor.getValue(obj, this.thisRef, this.variableFactory);
        }
        Member fieldOrAccessor = cls != null ? PropertyTools.getFieldOrAccessor(cls, str) : null;
        if (fieldOrAccessor != null && z && (fieldOrAccessor.getModifiers() & 8) == 0) {
            fieldOrAccessor = null;
        }
        if (fieldOrAccessor instanceof Method) {
            if (obj != null) {
                try {
                    property = ((Method) fieldOrAccessor).invoke(obj, EMPTYARG);
                    if (!PropertyHandlerFactory.hasNullPropertyHandler()) {
                        addAccessorNode(new GetterAccessorNH((Method) fieldOrAccessor, PropertyHandlerFactory.getNullPropertyHandler()));
                        if (property == null) {
                            property = PropertyHandlerFactory.getNullPropertyHandler().getProperty(fieldOrAccessor.getName(), obj, this.variableFactory);
                        }
                    } else {
                        addAccessorNode(new GetterAccessor((Method) fieldOrAccessor));
                    }
                } catch (IllegalAccessException unused) {
                    Method method = (Method) fieldOrAccessor;
                    Method methodDetermineActualTargetMethod = ParseTools.determineActualTargetMethod(method);
                    if (methodDetermineActualTargetMethod == null) {
                        throw new PropertyAccessException("could not access field: " + cls.getName() + "." + str, this.expr, this.start, this.pCtx);
                    }
                    Object objInvoke = methodDetermineActualTargetMethod.invoke(obj, EMPTYARG);
                    if (PropertyHandlerFactory.hasNullPropertyHandler()) {
                        addAccessorNode(new GetterAccessorNH(method, PropertyHandlerFactory.getNullMethodHandler()));
                        if (objInvoke == null) {
                            property = PropertyHandlerFactory.getNullMethodHandler().getProperty(fieldOrAccessor.getName(), obj, this.variableFactory);
                        }
                    } else {
                        addAccessorNode(new GetterAccessor(methodDetermineActualTargetMethod));
                    }
                    property = objInvoke;
                } catch (IllegalArgumentException e) {
                    if (fieldOrAccessor.getDeclaringClass().equals(obj)) {
                        try {
                            throw new CompileException("name collision between innerclass: " + Class.forName(fieldOrAccessor.getDeclaringClass().getName() + "$" + str).getCanonicalName() + "; and bean accessor: " + str + " (" + fieldOrAccessor.toString() + ")", this.expr, this.tkStart);
                        } catch (ClassNotFoundException unused2) {
                            throw e;
                        }
                    }
                    throw e;
                }
            } else if (!PropertyHandlerFactory.hasNullPropertyHandler()) {
            }
            this.currType = ReflectionUtil.toNonPrimitiveType(((Method) fieldOrAccessor).getReturnType());
            return property;
        }
        if (fieldOrAccessor != null) {
            Field field = (Field) fieldOrAccessor;
            if ((field.getModifiers() & 8) != 0) {
                property = field.get(null);
                if (PropertyHandlerFactory.hasNullPropertyHandler()) {
                    addAccessorNode(new StaticVarAccessorNH(field, PropertyHandlerFactory.getNullMethodHandler()));
                    if (property == null) {
                        property = PropertyHandlerFactory.getNullMethodHandler().getProperty(fieldOrAccessor.getName(), obj, this.variableFactory);
                    }
                } else {
                    addAccessorNode(new StaticVarAccessor(field));
                }
            } else {
                property = obj != null ? field.get(obj) : null;
                if (PropertyHandlerFactory.hasNullPropertyHandler()) {
                    addAccessorNode(new FieldAccessorNH(field, PropertyHandlerFactory.getNullMethodHandler()));
                    if (property == null) {
                        property = PropertyHandlerFactory.getNullMethodHandler().getProperty(fieldOrAccessor.getName(), obj, this.variableFactory);
                    }
                } else {
                    addAccessorNode(new FieldAccessor(field));
                }
                property = property;
            }
            this.currType = ReflectionUtil.toNonPrimitiveType(field.getType());
            return property;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey(str) || this.nullSafe) {
                addAccessorNode(new MapAccessor(str));
                return map.get(str);
            }
        }
        if (obj != null && "length".equals(str) && obj.getClass().isArray()) {
            addAccessorNode(new ArrayLength());
            return Integer.valueOf(Array.getLength(obj));
        }
        if (AbstractParser.LITERALS.containsKey(str)) {
            Object obj2 = AbstractParser.LITERALS.get(str);
            addAccessorNode(new StaticReferenceAccessor(obj2));
            return obj2;
        }
        Object objTryStaticAccess = tryStaticAccess();
        this.staticAccess = true;
        if (objTryStaticAccess != null) {
            if (objTryStaticAccess instanceof Class) {
                addAccessorNode(new StaticReferenceAccessor(objTryStaticAccess));
                return objTryStaticAccess;
            }
            if (objTryStaticAccess instanceof Field) {
                Field field2 = (Field) objTryStaticAccess;
                addAccessorNode(new StaticVarAccessor(field2));
                return field2.get(null);
            }
            addAccessorNode(new StaticReferenceAccessor(objTryStaticAccess));
            return objTryStaticAccess;
        }
        if (z2) {
            Class cls2 = (Class) obj;
            for (Method method2 : cls2.getMethods()) {
                if (str.equals(method2.getName())) {
                    ParserContext parserContext2 = this.pCtx;
                    if (parserContext2 == null || parserContext2.getParserConfiguration() == null ? MVEL.COMPILER_OPT_ALLOW_NAKED_METH_CALL : this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
                        Object objInvoke2 = method2.invoke(null, ParseTools.EMPTY_OBJ_ARR);
                        if (PropertyHandlerFactory.hasNullMethodHandler()) {
                            addAccessorNode(new MethodAccessorNH(method2, new ExecutableStatement[0], PropertyHandlerFactory.getNullMethodHandler()));
                            return objInvoke2 == null ? PropertyHandlerFactory.getNullMethodHandler().getProperty(method2.getName(), obj, this.variableFactory) : objInvoke2;
                        }
                        addAccessorNode(new MethodAccessor(method2, new ExecutableStatement[0]));
                        return objInvoke2;
                    }
                    addAccessorNode(new StaticReferenceAccessor(method2));
                    return method2;
                }
            }
            try {
                Class clsFindClass = ParseTools.findClass(this.variableFactory, cls2.getName() + "$" + str, this.pCtx);
                addAccessorNode(new StaticReferenceAccessor(clsFindClass));
                return clsFindClass;
            } catch (ClassNotFoundException unused3) {
            }
        } else {
            ParserContext parserContext3 = this.pCtx;
            if (parserContext3 == null || parserContext3.getParserConfiguration() == null ? MVEL.COMPILER_OPT_ALLOW_NAKED_METH_CALL : this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
                return getMethod(obj, str);
            }
        }
        if (obj == null) {
            throw new PropertyAccessException("unresolvable property or identifier: " + str, this.expr, this.start, this.pCtx);
        }
        throw new PropertyAccessException("could not access: " + str + "; in class: " + obj.getClass().getName(), this.expr, this.start, this.pCtx);
    }

    private Object getCollectionProperty(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        Integer numValueOf;
        boolean z;
        ExecutableStatement executableStatement;
        Object value;
        if (str.length() > 0) {
            obj = getBeanProperty(obj, str);
        }
        this.currType = null;
        if (obj == null) {
            return null;
        }
        int i = this.cursor + 1;
        this.cursor = i;
        skipWhitespace();
        if (this.cursor == this.end) {
            throw new CompileException("unterminated '['", this.expr, this.start);
        }
        if (scanTo(']')) {
            throw new CompileException("unterminated '['", this.expr, this.start);
        }
        String str2 = new String(this.expr, i, this.cursor - i);
        try {
            numValueOf = Integer.valueOf(Integer.parseInt(str2));
            z = false;
        } catch (Exception unused) {
            numValueOf = null;
            z = true;
        }
        if (z) {
            try {
                executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(str2.toCharArray(), this.pCtx);
                Object obj2 = this.thisRef;
                value = executableStatement.getValue(obj2, obj2, this.variableFactory);
            } catch (CompileException e) {
                e.setExpr(this.expr);
                e.setCursor(i);
                throw e;
            }
        } else {
            value = numValueOf;
            executableStatement = null;
        }
        this.cursor++;
        if (obj instanceof Map) {
            if (z) {
                addAccessorNode(new MapAccessorNest(executableStatement, (Class) null));
            } else {
                addAccessorNode(new MapAccessor(Integer.valueOf(Integer.parseInt(str2))));
            }
            return ((Map) obj).get(value);
        }
        if (obj instanceof List) {
            if (z) {
                addAccessorNode(new ListAccessorNest(executableStatement, (Class) null));
            } else {
                addAccessorNode(new ListAccessor(Integer.parseInt(str2)));
            }
            return ((List) obj).get(((Integer) value).intValue());
        }
        if (obj.getClass().isArray()) {
            if (z) {
                addAccessorNode(new ArrayAccessorNest(executableStatement));
            } else {
                addAccessorNode(new ArrayAccessor(Integer.parseInt(str2)));
            }
            return Array.get(obj, ((Integer) value).intValue());
        }
        if (obj instanceof CharSequence) {
            if (z) {
                addAccessorNode(new IndexedCharSeqAccessorNest(executableStatement));
            } else {
                addAccessorNode(new IndexedCharSeqAccessor(Integer.parseInt(str2)));
            }
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) value).intValue()));
        }
        if (obj instanceof Class) {
            TypeDescriptor typeDescriptor = new TypeDescriptor(this.expr, this.start, this.length, 0);
            if (typeDescriptor.isArray()) {
                Class classReference = TypeDescriptor.getClassReference((Class) obj, typeDescriptor, this.variableFactory, this.pCtx);
                this.rootNode = new StaticReferenceAccessor(classReference);
                return classReference;
            }
        }
        throw new CompileException("illegal use of []: unknown type: " + obj.getClass().getName(), this.expr, this.start);
    }

    private Object getCollectionPropertyAO(Object obj, String str) {
        Integer numValueOf;
        boolean z;
        Object value;
        ExecutableStatement executableStatement;
        if (str.length() > 0) {
            obj = getBeanPropertyAO(obj, str);
        }
        this.currType = null;
        if (obj == null) {
            return null;
        }
        int i = this.cursor + 1;
        this.cursor = i;
        skipWhitespace();
        if (this.cursor == this.end) {
            throw new CompileException("unterminated '['", this.expr, this.start);
        }
        if (scanTo(']')) {
            throw new CompileException("unterminated '['", this.expr, this.start);
        }
        String str2 = new String(this.expr, i, this.cursor - i);
        try {
            numValueOf = Integer.valueOf(Integer.parseInt(str2));
            z = false;
        } catch (Exception unused) {
            numValueOf = null;
            z = true;
        }
        if (z) {
            executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(str2.toCharArray(), this.pCtx);
            Object obj2 = this.thisRef;
            value = executableStatement.getValue(obj2, obj2, this.variableFactory);
        } else {
            value = numValueOf;
            executableStatement = null;
        }
        this.cursor++;
        if (obj instanceof Map) {
            if (PropertyHandlerFactory.hasPropertyHandler(Map.class)) {
                return propHandler(str2, obj, Map.class);
            }
            if (z) {
                addAccessorNode(new MapAccessorNest(executableStatement, (Class) null));
            } else {
                addAccessorNode(new MapAccessor(Integer.valueOf(Integer.parseInt(str2))));
            }
            return ((Map) obj).get(value);
        }
        if (obj instanceof List) {
            if (PropertyHandlerFactory.hasPropertyHandler(List.class)) {
                return propHandler(str2, obj, List.class);
            }
            if (z) {
                addAccessorNode(new ListAccessorNest(executableStatement, (Class) null));
            } else {
                addAccessorNode(new ListAccessor(Integer.parseInt(str2)));
            }
            return ((List) obj).get(((Integer) value).intValue());
        }
        if (obj.getClass().isArray()) {
            if (PropertyHandlerFactory.hasPropertyHandler(Array.class)) {
                return propHandler(str2, obj, Array.class);
            }
            if (z) {
                addAccessorNode(new ArrayAccessorNest(executableStatement));
            } else {
                addAccessorNode(new ArrayAccessor(Integer.parseInt(str2)));
            }
            return Array.get(obj, ((Integer) value).intValue());
        }
        if (obj instanceof CharSequence) {
            if (PropertyHandlerFactory.hasPropertyHandler(CharSequence.class)) {
                return propHandler(str2, obj, CharSequence.class);
            }
            if (z) {
                addAccessorNode(new IndexedCharSeqAccessorNest(executableStatement));
            } else {
                addAccessorNode(new IndexedCharSeqAccessor(Integer.parseInt(str2)));
            }
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) value).intValue()));
        }
        char[] cArr = this.expr;
        int i2 = this.start;
        TypeDescriptor typeDescriptor = new TypeDescriptor(cArr, i2, this.end - i2, 0);
        if (typeDescriptor.isArray()) {
            Class classReference = TypeDescriptor.getClassReference((Class) obj, typeDescriptor, this.variableFactory, this.pCtx);
            this.rootNode = new StaticReferenceAccessor(classReference);
            return classReference;
        }
        throw new CompileException("illegal use of []: unknown type: " + obj.getClass().getName(), this.expr, this.f1568st);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object getMethod(Object obj, String str) {
        String str2;
        ExecutableStatement[] executableStatementArr;
        Object[] objArr;
        Class[] clsArr;
        int i = this.cursor;
        if (i != this.end) {
            char[] cArr = this.expr;
            if (cArr[i] == '(') {
                int iBalancedCapture = ParseTools.balancedCapture(cArr, i, '(');
                this.cursor = iBalancedCapture;
                str2 = iBalancedCapture - i > 1 ? new String(this.expr, i + 1, (iBalancedCapture - i) - 1) : _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        this.cursor++;
        if (str2.length() == 0) {
            objArr = ParseTools.EMPTY_OBJ_ARR;
            executableStatementArr = null;
            clsArr = ParseTools.EMPTY_CLS_ARR;
        } else {
            char[] charArray = str2.toCharArray();
            int i2 = 0;
            List<char[]> parameterList = ParseTools.parseParameterList(charArray, 0, -1);
            ExecutableStatement[] executableStatementArr2 = new ExecutableStatement[parameterList.size()];
            int size = parameterList.size();
            Object[] objArr2 = new Object[size];
            Class[] clsArr2 = new Class[parameterList.size()];
            for (int i3 = 0; i3 < parameterList.size(); i3++) {
                try {
                    ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(parameterList.get(i3), this.pCtx);
                    executableStatementArr2[i3] = executableStatement;
                    Object obj2 = this.thisRef;
                    objArr2[i3] = executableStatement.getValue(obj2, obj2, this.variableFactory);
                    if (executableStatementArr2[i3].isExplicitCast()) {
                        clsArr2[i3] = executableStatementArr2[i3].getKnownEgressType();
                    }
                } catch (CompileException e) {
                    throw ErrorUtil.rewriteIfNeeded(e, this.expr, this.start);
                }
            }
            if (this.pCtx.isStrictTypeEnforcement()) {
                while (i2 < size) {
                    clsArr2[i2] = executableStatementArr2[i2].getKnownEgressType();
                    ExecutableStatement executableStatement2 = executableStatementArr2[i2];
                    if ((executableStatement2 instanceof ExecutableLiteral) && ((ExecutableLiteral) executableStatement2).getLiteral() == null) {
                        clsArr2[i2] = NullType.class;
                    }
                    i2++;
                }
            } else {
                while (i2 < size) {
                    if (clsArr2[i2] == null) {
                        if (executableStatementArr2[i2].getKnownEgressType() == Object.class) {
                            Object obj3 = objArr2[i2];
                            clsArr2[i2] = obj3 == null ? null : obj3.getClass();
                        } else {
                            clsArr2[i2] = executableStatementArr2[i2].getKnownEgressType();
                        }
                    }
                    i2++;
                }
            }
            executableStatementArr = executableStatementArr2;
            objArr = objArr2;
            clsArr = clsArr2;
        }
        return getMethod(obj, str, objArr, clsArr, executableStatementArr);
    }

    private Object getMethod(Object obj, String str, Object[] objArr, Class[] clsArr, ExecutableStatement[] executableStatementArr) throws IllegalAccessException, InvocationTargetException {
        boolean z;
        Class<?> cls;
        VariableResolverFactory variableResolverFactory;
        int i = 0;
        if (this.first && (variableResolverFactory = this.variableFactory) != null && variableResolverFactory.isResolveable(str)) {
            Object value = this.variableFactory.getVariableResolver(str).getValue();
            if (value instanceof Method) {
                Method method = (Method) value;
                obj = method.getDeclaringClass();
                str = method.getName();
            } else if (value instanceof MethodStub) {
                MethodStub methodStub = (MethodStub) value;
                obj = methodStub.getClassReference();
                str = methodStub.getMethodName();
            } else {
                if (value instanceof FunctionInstance) {
                    FunctionInstance functionInstance = (FunctionInstance) value;
                    if (!str.equals(functionInstance.getFunction().getName())) {
                        getBeanProperty(obj, str);
                        addAccessorNode(new DynamicFunctionAccessor(executableStatementArr));
                    } else {
                        addAccessorNode(new FunctionAccessor(functionInstance, executableStatementArr));
                    }
                    return functionInstance.call(obj, this.thisRef, this.variableFactory, objArr);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("attempt to optimize a method call for a reference that does not point to a method: ");
                sb.append(str);
                sb.append(" (reference is type: ");
                sb.append(obj != null ? obj.getClass().getName() : null);
                sb.append(")");
                throw new OptimizationFailure(sb.toString());
            }
            this.first = false;
        }
        String str2 = str;
        if (obj == null && this.currType == null) {
            throw new PropertyAccessException("null pointer or function not found: " + str2, this.expr, this.start, this.pCtx);
        }
        Class<?> cls2 = this.currType;
        if (cls2 != null) {
            cls = cls2;
            z = false;
        } else {
            boolean z2 = obj instanceof Class;
            z = z2;
            cls = z2 ? obj : obj.getClass();
        }
        this.currType = null;
        Method bestCandidate = ParseTools.getBestCandidate(clsArr, str2, cls, cls.getMethods(), false, z);
        Class<?>[] parameterTypes = bestCandidate != null ? bestCandidate.getParameterTypes() : null;
        if (bestCandidate == null && z && (bestCandidate = ParseTools.getBestCandidate(clsArr, str2, (Class) cls, Class.class.getMethods(), false)) != null) {
            parameterTypes = bestCandidate.getParameterTypes();
        }
        if (bestCandidate == null && obj != null && cls != obj.getClass() && !(obj instanceof Class)) {
            cls = obj.getClass();
            bestCandidate = ParseTools.getBestCandidate(clsArr, str2, cls, cls.getMethods(), false, z);
            if (bestCandidate != null) {
                parameterTypes = bestCandidate.getParameterTypes();
            }
        }
        if (bestCandidate == null) {
            StringAppender stringAppender = new StringAppender();
            if ("size".equals(str2) && objArr.length == 0 && cls.isArray()) {
                addAccessorNode(new ArrayLength());
                return Integer.valueOf(Array.getLength(obj));
            }
            while (i < objArr.length) {
                Object obj2 = objArr[i];
                stringAppender.append(obj2 != null ? obj2.getClass().getName() : null);
                if (i < objArr.length - 1) {
                    stringAppender.append(", ");
                }
                i++;
            }
            throw new PropertyAccessException("unable to resolve method: " + cls.getName() + "." + str2 + "(" + stringAppender.toString() + ") [arglength=" + objArr.length + "]", this.expr, this.f1568st, this.pCtx);
        }
        if (executableStatementArr != null) {
            while (i < executableStatementArr.length) {
                ExecutableStatement executableStatement = executableStatementArr[i];
                if (executableStatement.getKnownIngressType() == null) {
                    executableStatement.setKnownIngressType(Varargs.paramTypeVarArgsSafe(parameterTypes, i, bestCandidate.isVarArgs()));
                    executableStatement.computeTypeConversionRule();
                }
                if (!executableStatement.isConvertableIngressEgress()) {
                    objArr[i] = DataConversion.convert(objArr[i], Varargs.paramTypeVarArgsSafe(parameterTypes, i, bestCandidate.isVarArgs()));
                }
                i++;
            }
        } else {
            while (i < objArr.length) {
                objArr[i] = DataConversion.convert(objArr[i], Varargs.paramTypeVarArgsSafe(parameterTypes, i, bestCandidate.isVarArgs()));
                i++;
            }
        }
        Method widenedTarget = ParseTools.getWidenedTarget(cls, bestCandidate);
        Object objInvoke = obj != null ? widenedTarget.invoke(obj, Varargs.normalizeArgsForVarArgs(parameterTypes, objArr, bestCandidate.isVarArgs())) : null;
        if (PropertyHandlerFactory.hasNullMethodHandler()) {
            addAccessorNode(new MethodAccessorNH(widenedTarget, executableStatementArr, PropertyHandlerFactory.getNullMethodHandler()));
            if (objInvoke == null) {
                objInvoke = PropertyHandlerFactory.getNullMethodHandler().getProperty(bestCandidate.getName(), obj, this.variableFactory);
            }
        } else {
            addAccessorNode(new MethodAccessor(widenedTarget, executableStatementArr));
        }
        this.currType = ReflectionUtil.toNonPrimitiveType(widenedTarget.getReturnType());
        return objInvoke;
    }

    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.rootNode.getValue(obj, obj2, variableResolverFactory);
    }

    private Accessor _getAccessor(Object obj, Class cls) {
        int i;
        int i2 = 0;
        if (obj instanceof List) {
            List list = (List) obj;
            Accessor[] accessorArr = new Accessor[list.size()];
            Iterator it = list.iterator();
            while (it.hasNext()) {
                accessorArr[i2] = _getAccessor(it.next(), cls);
                i2++;
            }
            this.returnType = List.class;
            return new ListCreator(accessorArr);
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            int size = map.size();
            Accessor[] accessorArr2 = new Accessor[size];
            Accessor[] accessorArr3 = new Accessor[size];
            for (Object obj2 : map.keySet()) {
                accessorArr2[i2] = _getAccessor(obj2, cls);
                accessorArr3[i2] = _getAccessor(map.get(obj2), cls);
                i2++;
            }
            this.returnType = Map.class;
            return new MapCreator(accessorArr2, accessorArr3);
        }
        if (obj instanceof Object[]) {
            Accessor[] accessorArr4 = new Accessor[((Object[]) obj).length];
            if (cls != null) {
                i = 0;
                while (cls.getName().charAt(i) == '[') {
                    i++;
                }
            } else {
                cls = Object[].class;
                i = 1;
            }
            try {
                Class baseComponentType = ParseTools.getBaseComponentType(cls);
                Class clsFindClass = i > 1 ? ParseTools.findClass(null, ParseTools.repeatChar('[', i - 1) + "L" + baseComponentType.getName() + ";", this.pCtx) : cls;
                Object[] objArr = (Object[]) obj;
                int length = objArr.length;
                int i3 = 0;
                while (i2 < length) {
                    Object obj3 = objArr[i2];
                    ParserContext parserContext = this.pCtx;
                    Accessor accessor_getAccessor = _getAccessor(obj3, clsFindClass);
                    accessorArr4[i3] = accessor_getAccessor;
                    CompilerTools.expectType(parserContext, accessor_getAccessor, baseComponentType, true);
                    i2++;
                    i3++;
                }
                return new ArrayCreator(accessorArr4, ParseTools.getSubComponentType(cls));
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("this error should never throw:" + ParseTools.getBaseComponentType(cls).getName(), e);
            }
        }
        if (this.returnType == null) {
            this.returnType = Object.class;
        }
        if (cls.isArray()) {
            return new ExprValueAccessor((String) obj, cls, this.ctx, this.variableFactory, this.pCtx);
        }
        return new ExprValueAccessor((String) obj, Object.class, this.ctx, this.variableFactory, this.pCtx);
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i, int i2, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) {
        this.cursor = i;
        this.start = i;
        this.length = i + i2;
        this.returnType = cls;
        this.ctx = obj2;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        Accessor accessor_getAccessor = _getAccessor(obj, cls);
        return (cArr == null || this.length <= i) ? accessor_getAccessor : new Union(parserContext, accessor_getAccessor, cArr, this.cursor, i2);
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        this.length = i2 + i;
        this.start = i;
        this.cursor = i;
        this.pCtx = parserContext;
        try {
            return compileConstructor(cArr, obj, variableResolverFactory);
        } catch (ClassNotFoundException e) {
            throw new CompileException("could not resolve class: " + e.getMessage(), cArr, this.start, e);
        } catch (CompileException e2) {
            throw ErrorUtil.rewriteIfNeeded(e2, cArr, this.start);
        } catch (Exception e3) {
            throw new CompileException("could not create constructor: " + e3.getMessage(), cArr, this.start, e3);
        }
    }

    private void setRootNode(AccessorNode accessorNode) {
        this.currNode = accessorNode;
        this.rootNode = accessorNode;
    }

    private AccessorNode getRootNode() {
        return this.rootNode;
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Object getResultOptPass() {
        return this.val;
    }

    private AccessorNode compileConstructor(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory) throws NoSuchMethodException, ClassNotFoundException {
        String[] strArrCaptureContructorAndResidual = ParseTools.captureContructorAndResidual(cArr, this.start, this.length);
        int i = 0;
        List<char[]> methodOrConstructor = ParseTools.parseMethodOrConstructor(strArrCaptureContructorAndResidual[0].toCharArray());
        if (methodOrConstructor != null) {
            Class clsFindClass = ParseTools.findClass(variableResolverFactory, new String(ParseTools.subset(cArr, 0, ArrayTools.findFirst('(', this.start, this.length, cArr))), this.pCtx);
            ExecutableStatement[] executableStatementArr = new ExecutableStatement[methodOrConstructor.size()];
            for (int i2 = 0; i2 < methodOrConstructor.size(); i2++) {
                executableStatementArr[i2] = (ExecutableStatement) ParseTools.subCompileExpression(methodOrConstructor.get(i2), this.pCtx);
            }
            int size = methodOrConstructor.size();
            Object[] objArr = new Object[size];
            for (int i3 = 0; i3 < methodOrConstructor.size(); i3++) {
                objArr[i3] = executableStatementArr[i3].getValue(obj, variableResolverFactory);
            }
            Constructor bestConstructorCandidate = ParseTools.getBestConstructorCandidate(objArr, clsFindClass, this.pCtx.isStrongTyping());
            if (bestConstructorCandidate == null) {
                StringBuilder sb = new StringBuilder();
                while (i < size) {
                    sb.append(objArr[i].getClass().getName());
                    i++;
                    if (i < size) {
                        sb.append(", ");
                    }
                }
                throw new CompileException("unable to find constructor: " + clsFindClass.getName() + "(" + sb.toString() + ")", this.expr, this.start);
            }
            while (i < size) {
                objArr[i] = DataConversion.convert(objArr[i], Varargs.paramTypeVarArgsSafe(bestConstructorCandidate.getParameterTypes(), i, bestConstructorCandidate.isVarArgs()));
                i++;
            }
            Object[] objArrNormalizeArgsForVarArgs = Varargs.normalizeArgsForVarArgs(bestConstructorCandidate.getParameterTypes(), objArr, bestConstructorCandidate.isVarArgs());
            ConstructorAccessor constructorAccessor = new ConstructorAccessor(bestConstructorCandidate, executableStatementArr);
            if (strArrCaptureContructorAndResidual.length <= 1) {
                return constructorAccessor;
            }
            ReflectiveAccessorOptimizer reflectiveAccessorOptimizer = new ReflectiveAccessorOptimizer(this.pCtx, strArrCaptureContructorAndResidual[1].toCharArray(), 0, strArrCaptureContructorAndResidual[1].length(), bestConstructorCandidate.newInstance(objArrNormalizeArgsForVarArgs), obj, variableResolverFactory);
            reflectiveAccessorOptimizer.ingressType = bestConstructorCandidate.getDeclaringClass();
            reflectiveAccessorOptimizer.setRootNode(constructorAccessor);
            reflectiveAccessorOptimizer.compileGetChain();
            AccessorNode rootNode = reflectiveAccessorOptimizer.getRootNode();
            this.val = reflectiveAccessorOptimizer.getResultOptPass();
            return rootNode;
        }
        ParserContext parserContext = this.pCtx;
        Constructor<?> constructor = Class.forName(new String(cArr), true, parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader()).getConstructor(EMPTYCLS);
        ConstructorAccessor constructorAccessor2 = new ConstructorAccessor(constructor, null);
        if (strArrCaptureContructorAndResidual.length <= 1) {
            return constructorAccessor2;
        }
        ReflectiveAccessorOptimizer reflectiveAccessorOptimizer2 = new ReflectiveAccessorOptimizer(this.pCtx, strArrCaptureContructorAndResidual[1].toCharArray(), 0, strArrCaptureContructorAndResidual[1].length(), constructor.newInstance(null), obj, variableResolverFactory);
        reflectiveAccessorOptimizer2.setRootNode(constructorAccessor2);
        reflectiveAccessorOptimizer2.compileGetChain();
        AccessorNode rootNode2 = reflectiveAccessorOptimizer2.getRootNode();
        this.val = reflectiveAccessorOptimizer2.getResultOptPass();
        return rootNode2;
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Class getEgressType() {
        return this.returnType;
    }

    private Object propHandler(String str, Object obj, Class cls) {
        PropertyHandler propertyHandler = PropertyHandlerFactory.getPropertyHandler(cls);
        addAccessorNode(new PropertyHandlerAccessor(str, cls, propertyHandler));
        return propertyHandler.getProperty(str, obj, this.variableFactory);
    }

    public void propHandlerSet(String str, Object obj, Class cls, Object obj2) {
        PropertyHandler propertyHandler = PropertyHandlerFactory.getPropertyHandler(cls);
        addAccessorNode(new PropertyHandlerAccessor(str, cls, propertyHandler));
        propertyHandler.setProperty(str, obj, this.variableFactory, obj2);
    }
}
