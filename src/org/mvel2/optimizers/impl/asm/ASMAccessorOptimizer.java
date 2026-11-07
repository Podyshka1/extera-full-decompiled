package org.mvel2.optimizers.impl.asm;

import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.MVEL;
import org.mvel2.OptimizationFailure;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessException;
import org.mvel2.asm.ClassWriter;
import org.mvel2.asm.Label;
import org.mvel2.asm.MethodVisitor;
import org.mvel2.asm.Type;
import org.mvel2.ast.FunctionInstance;
import org.mvel2.ast.Negation$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.Sign$$ExternalSyntheticBUOutline0;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.ast.WithNode;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.ExecutableAccessor;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.PropertyVerifier;
import org.mvel2.integration.GlobalListenerFactory;
import org.mvel2.integration.PropertyHandler;
import org.mvel2.integration.PropertyHandlerFactory;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.optimizers.impl.refl.nodes.Union;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.JITClassLoader;
import org.mvel2.util.MVELClassLoader;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.mvel2.util.MethodStub;
import org.mvel2.util.NullType;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;
import org.mvel2.util.ReflectionUtil;
import org.mvel2.util.StringAppender;
import org.mvel2.util.Varargs;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class ASMAccessorOptimizer extends AbstractOptimizer implements AccessorOptimizer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ARRAY = 0;
    private static final Object[] EMPTYARG;
    private static final Class[] EMPTYCLS;
    private static final int LIST = 1;
    private static String LIST_IMPL = null;
    private static final int MAP = 2;
    private static final String MAP_IMPL = "java/util/HashMap";
    private static String NAMESPACE = null;
    private static final int OPCODES_VERSION;
    private static final int VAL = 3;
    private static MVELClassLoader classLoader;
    private StringAppender buildLog;
    private String className;
    private int compileDepth;
    private ArrayList<ExecutableStatement> compiledInputs;
    private Object ctx;
    private ClassWriter cw;
    private boolean deferFinish;
    private boolean first;
    private Class ingressType;
    private boolean literal;
    private int maxlocals;
    private boolean methNull;
    private MethodVisitor mv;
    private boolean noinit;
    private boolean propNull;
    private Class returnType;
    private int stacksize;
    private Object thisRef;
    private long time;
    private Object val;
    private VariableResolverFactory variableFactory;

    static {
        String javaVersion = PropertyTools.getJavaVersion();
        if (javaVersion.startsWith("1.4")) {
            OPCODES_VERSION = 48;
        } else if (javaVersion.startsWith("1.5")) {
            OPCODES_VERSION = 49;
        } else {
            OPCODES_VERSION = 50;
        }
        String property = System.getProperty("mvel2.namespace");
        if (property == null) {
            NAMESPACE = "org/mvel2/";
        } else {
            NAMESPACE = property;
        }
        String property2 = System.getProperty("mvel2.jit.list_impl");
        if (property2 == null) {
            LIST_IMPL = NAMESPACE + "util/FastList";
        } else {
            LIST_IMPL = property2;
        }
        EMPTYARG = new Object[0];
        EMPTYCLS = new Class[0];
    }

    public ASMAccessorOptimizer() {
        this.first = true;
        this.noinit = false;
        this.deferFinish = false;
        this.literal = false;
        this.propNull = false;
        this.methNull = false;
        this.stacksize = 1;
        this.maxlocals = 1;
        this.compileDepth = 0;
        new ClassWriter(1);
    }

    private ASMAccessorOptimizer(ClassWriter classWriter, MethodVisitor methodVisitor, ArrayList<ExecutableStatement> arrayList, String str, StringAppender stringAppender, int i) {
        this.first = true;
        this.literal = false;
        this.propNull = false;
        this.methNull = false;
        this.stacksize = 1;
        this.maxlocals = 1;
        this.cw = classWriter;
        this.mv = methodVisitor;
        this.compiledInputs = arrayList;
        this.className = str;
        this.buildLog = stringAppender;
        this.compileDepth = i + 1;
        this.noinit = true;
        this.deferFinish = true;
    }

    private void _initJIT() {
        if (MVEL.isAdvancedDebugging()) {
            this.buildLog = new StringAppender();
        }
        this.cw = new ClassWriter(3);
        synchronized (Runtime.getRuntime()) {
            ClassWriter classWriter = this.cw;
            int i = OPCODES_VERSION;
            String str = "ASMAccessorImpl_" + String.valueOf(this.cw.hashCode()).replaceAll("\\-", "_") + (System.currentTimeMillis() / 10) + ((int) (Math.random() * 100.0d));
            this.className = str;
            classWriter.visit(i, 33, str, null, "java/lang/Object", new String[]{NAMESPACE + "compiler/Accessor"});
        }
        MethodVisitor methodVisitorVisitMethod = this.cw.visitMethod(1, "<init>", "()V", null, null);
        methodVisitorVisitMethod.visitCode();
        methodVisitorVisitMethod.visitVarInsn(25, 0);
        methodVisitorVisitMethod.visitMethodInsn(183, "java/lang/Object", "<init>", "()V");
        methodVisitorVisitMethod.visitInsn(177);
        methodVisitorVisitMethod.visitMaxs(1, 1);
        methodVisitorVisitMethod.visitEnd();
        MethodVisitor methodVisitorVisitMethod2 = this.cw.visitMethod(1, "getValue", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;", null, null);
        this.mv = methodVisitorVisitMethod2;
        methodVisitorVisitMethod2.visitCode();
    }

    private void _initJIT2() {
        if (MVEL.isAdvancedDebugging()) {
            this.buildLog = new StringAppender();
        }
        this.cw = new ClassWriter(3);
        synchronized (Runtime.getRuntime()) {
            ClassWriter classWriter = this.cw;
            int i = OPCODES_VERSION;
            String str = "ASMAccessorImpl_" + String.valueOf(this.cw.hashCode()).replaceAll("\\-", "_") + (System.currentTimeMillis() / 10) + ((int) (Math.random() * 100.0d));
            this.className = str;
            classWriter.visit(i, 33, str, null, "java/lang/Object", new String[]{NAMESPACE + "compiler/Accessor"});
        }
        MethodVisitor methodVisitorVisitMethod = this.cw.visitMethod(1, "<init>", "()V", null, null);
        methodVisitorVisitMethod.visitCode();
        methodVisitorVisitMethod.visitVarInsn(25, 0);
        methodVisitorVisitMethod.visitMethodInsn(183, "java/lang/Object", "<init>", "()V");
        methodVisitorVisitMethod.visitInsn(177);
        methodVisitorVisitMethod.visitMaxs(1, 1);
        methodVisitorVisitMethod.visitEnd();
        MethodVisitor methodVisitorVisitMethod2 = this.cw.visitMethod(1, "setValue", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;", null, null);
        this.mv = methodVisitorVisitMethod2;
        methodVisitorVisitMethod2.visitCode();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Class cls) {
        this.time = System.currentTimeMillis();
        if (this.compiledInputs == null) {
            this.compiledInputs = new ArrayList<>();
        }
        this.cursor = i;
        this.start = i;
        int i3 = i2 + i;
        this.end = i3;
        this.length = i3 - i;
        this.first = true;
        this.val = null;
        this.pCtx = parserContext;
        this.expr = cArr;
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.ingressType = cls;
        if (!this.noinit) {
            _initJIT();
        }
        return compileAccessor();
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z, Object obj3, Class cls) {
        Object obj4;
        Label label;
        Object primitiveInitialValue = obj3;
        this.expr = cArr;
        this.cursor = i;
        this.start = i;
        int i3 = i + i2;
        this.end = i3;
        this.length = i3;
        this.first = true;
        this.ingressType = cls;
        this.compiledInputs = new ArrayList<>();
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        PropertyVerifier propertyVerifier = new PropertyVerifier(cArr, parserContext);
        int iFindLastUnion = findLastUnion();
        char[] cArrSubset = iFindLastUnion != -1 ? ParseTools.subset(cArr, 0, iFindLastUnion) : null;
        _initJIT2();
        if (cArrSubset != null) {
            int i4 = this.length;
            char[] cArr2 = this.expr;
            this.expr = cArrSubset;
            int length = cArrSubset.length;
            this.end = length;
            this.length = length;
            this.deferFinish = true;
            this.noinit = true;
            compileAccessor();
            obj4 = this.val;
            this.expr = cArr2;
            int length2 = cArrSubset.length + i + 1;
            this.cursor = length2;
            int length3 = (i4 - cArrSubset.length) - 1;
            this.length = length3;
            this.end = length2 + length3;
        } else {
            this.mv.visitVarInsn(25, 1);
            obj4 = obj;
        }
        try {
            skipWhitespace();
            if (this.collection) {
                int i5 = this.cursor;
                whiteSpaceSkip();
                if (i5 == this.end) {
                    throw new PropertyAccessException("unterminated '['", this.expr, i, parserContext);
                }
                if (scanTo(']')) {
                    throw new PropertyAccessException("unterminated '['", this.expr, i, parserContext);
                }
                String strTrim = new String(this.expr, i5, this.cursor - i5).trim();
                this.mv.visitTypeInsn(192, Type.getInternalName(obj4.getClass()));
                if (obj4 instanceof Map) {
                    if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(Map.class)) {
                        propHandlerByteCodePut(strTrim, obj4, Map.class, primitiveInitialValue);
                    } else {
                        Object objEval = MVEL.eval(strTrim, obj4, this.variableFactory);
                        Class clsAnalyze = propertyVerifier.analyze();
                        this.returnType = clsAnalyze;
                        ((Map) obj4).put(objEval, DataConversion.convert(primitiveInitialValue, clsAnalyze));
                        writeLiteralOrSubexpression(ParseTools.subCompileExpression(strTrim.toCharArray(), parserContext));
                        this.mv.visitVarInsn(25, 4);
                        if (primitiveInitialValue != null && this.returnType != primitiveInitialValue.getClass()) {
                            dataConversion(this.returnType);
                            checkcast(this.returnType);
                        }
                        this.mv.visitMethodInsn(185, "java/util/Map", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
                        this.mv.visitInsn(87);
                        this.mv.visitVarInsn(25, 4);
                    }
                } else {
                    boolean z2 = obj4 instanceof List;
                    Class cls2 = Integer.TYPE;
                    if (z2) {
                        if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(List.class)) {
                            propHandlerByteCodePut(strTrim, obj4, List.class, primitiveInitialValue);
                        } else {
                            int iIntValue = ((Integer) MVEL.eval(strTrim, obj4, this.variableFactory, Integer.class)).intValue();
                            Class clsAnalyze2 = propertyVerifier.analyze();
                            this.returnType = clsAnalyze2;
                            ((List) obj4).set(iIntValue, DataConversion.convert(primitiveInitialValue, clsAnalyze2));
                            writeLiteralOrSubexpression(ParseTools.subCompileExpression(strTrim.toCharArray(), parserContext));
                            unwrapPrimitive(cls2);
                            this.mv.visitVarInsn(25, 4);
                            if (primitiveInitialValue != null && !primitiveInitialValue.getClass().isAssignableFrom(this.returnType)) {
                                dataConversion(this.returnType);
                                checkcast(this.returnType);
                            }
                            this.mv.visitMethodInsn(185, "java/util/List", "set", "(ILjava/lang/Object;)Ljava/lang/Object;");
                            this.mv.visitVarInsn(25, 4);
                        }
                    } else if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(obj4.getClass())) {
                        propHandlerByteCodePut(strTrim, obj4, obj4.getClass(), primitiveInitialValue);
                    } else if (obj4.getClass().isArray()) {
                        if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(Array.class)) {
                            propHandlerByteCodePut(strTrim, obj4, Array.class, primitiveInitialValue);
                        } else {
                            Class baseComponentType = ParseTools.getBaseComponentType(obj4.getClass());
                            Object objEval2 = MVEL.eval(strTrim, obj4, this.variableFactory);
                            writeLiteralOrSubexpression(ParseTools.subCompileExpression(strTrim.toCharArray(), parserContext), cls2);
                            if (!(objEval2 instanceof Integer)) {
                                dataConversion(Integer.class);
                                objEval2 = DataConversion.convert(objEval2, Integer.class);
                                unwrapPrimitive(cls2);
                            }
                            this.mv.visitVarInsn(25, 4);
                            if (baseComponentType.isPrimitive()) {
                                unwrapPrimitive(baseComponentType);
                            } else if (!baseComponentType.equals(primitiveInitialValue.getClass())) {
                                dataConversion(baseComponentType);
                            }
                            arrayStore(baseComponentType);
                            Array.set(obj4, ((Integer) objEval2).intValue(), DataConversion.convert(primitiveInitialValue, baseComponentType));
                            this.mv.visitVarInsn(25, 4);
                        }
                    } else {
                        throw new PropertyAccessException("cannot bind to collection property: " + new String(this.expr) + ": not a recognized collection type: " + obj4.getClass(), this.expr, i, parserContext);
                    }
                }
                this.deferFinish = false;
                this.noinit = false;
                _finishJIT();
                try {
                    this.deferFinish = false;
                    return _initializeAccessor();
                } catch (Exception e) {
                    throw new CompileException("could not generate accessor", this.expr, i, e);
                }
            }
            char[] cArr3 = this.expr;
            int i6 = this.cursor;
            String str = new String(cArr3, i6, this.end - i6);
            Member fieldOrWriteAccessor = PropertyTools.getFieldOrWriteAccessor(obj4.getClass(), str, primitiveInitialValue == null ? null : cls);
            if (GlobalListenerFactory.hasSetListeners()) {
                this.mv.visitVarInsn(25, 1);
                this.mv.visitLdcInsn(str);
                this.mv.visitVarInsn(25, 3);
                this.mv.visitVarInsn(25, 4);
                this.mv.visitMethodInsn(184, NAMESPACE + "integration/GlobalListenerFactory", "notifySetListeners", "(Ljava/lang/Object;Ljava/lang/String;L" + NAMESPACE + "integration/VariableResolverFactory;Ljava/lang/Object;)V");
                GlobalListenerFactory.notifySetListeners(obj4, str, this.variableFactory, primitiveInitialValue);
            }
            if (fieldOrWriteAccessor instanceof Field) {
                checkcast(obj4.getClass());
                Field field = (Field) fieldOrWriteAccessor;
                Label label2 = new Label();
                if (field.getType().isPrimitive()) {
                    this.mv.visitVarInsn(58, 5);
                    this.mv.visitVarInsn(25, 4);
                    if (primitiveInitialValue == null) {
                        primitiveInitialValue = PropertyTools.getPrimitiveInitialValue(field.getType());
                    }
                    label = new Label();
                    this.mv.visitJumpInsn(199, label);
                    this.mv.visitVarInsn(25, 5);
                    this.mv.visitInsn(3);
                    this.mv.visitFieldInsn(181, Type.getInternalName(field.getDeclaringClass()), str, Type.getDescriptor(field.getType()));
                    this.mv.visitJumpInsn(167, label2);
                    this.mv.visitLabel(label);
                    this.mv.visitVarInsn(25, 5);
                    this.mv.visitVarInsn(25, 4);
                    unwrapPrimitive(field.getType());
                } else {
                    this.mv.visitVarInsn(25, 4);
                    checkcast(field.getType());
                    label = null;
                }
                if (label == null && primitiveInitialValue != null && !field.getType().isAssignableFrom(primitiveInitialValue.getClass())) {
                    if (!DataConversion.canConvert(field.getType(), primitiveInitialValue.getClass())) {
                        throw new CompileException("cannot convert type: " + primitiveInitialValue.getClass() + ": to " + field.getType(), this.expr, i);
                    }
                    dataConversion(field.getType());
                    field.set(obj4, DataConversion.convert(primitiveInitialValue, field.getType()));
                } else {
                    field.set(obj4, primitiveInitialValue);
                }
                this.mv.visitFieldInsn(181, Type.getInternalName(field.getDeclaringClass()), str, Type.getDescriptor(field.getType()));
                this.mv.visitLabel(label2);
                this.mv.visitVarInsn(25, 4);
            } else if (fieldOrWriteAccessor != null) {
                this.mv.visitTypeInsn(192, Type.getInternalName(obj4.getClass()));
                Method method = (Method) fieldOrWriteAccessor;
                this.mv.visitVarInsn(25, 4);
                Class<?> cls3 = method.getParameterTypes()[0];
                Label label3 = new Label();
                if (primitiveInitialValue != null && !cls3.isAssignableFrom(primitiveInitialValue.getClass())) {
                    if (!DataConversion.canConvert(cls3, primitiveInitialValue.getClass())) {
                        throw new CompileException("cannot convert type: " + primitiveInitialValue.getClass() + ": to " + method.getParameterTypes()[0], this.expr, i);
                    }
                    dataConversion(getWrapperClass(cls3));
                    if (cls3.isPrimitive()) {
                        unwrapPrimitive(cls3);
                    } else {
                        checkcast(cls3);
                    }
                    method.invoke(obj4, DataConversion.convert(primitiveInitialValue, method.getParameterTypes()[0]));
                } else {
                    if (cls3.isPrimitive()) {
                        if (primitiveInitialValue == null) {
                            primitiveInitialValue = PropertyTools.getPrimitiveInitialValue(cls3);
                        }
                        Label label4 = new Label();
                        this.mv.visitJumpInsn(199, label4);
                        this.mv.visitInsn(3);
                        this.mv.visitMethodInsn(182, Type.getInternalName(method.getDeclaringClass()), method.getName(), Type.getMethodDescriptor(method));
                        this.mv.visitJumpInsn(167, label3);
                        this.mv.visitLabel(label4);
                        this.mv.visitVarInsn(25, 4);
                        unwrapPrimitive(cls3);
                    } else {
                        checkcast(cls3);
                    }
                    method.invoke(obj4, primitiveInitialValue);
                }
                this.mv.visitMethodInsn(182, Type.getInternalName(method.getDeclaringClass()), method.getName(), Type.getMethodDescriptor(method));
                this.mv.visitLabel(label3);
                this.mv.visitVarInsn(25, 4);
            } else if (obj4 instanceof Map) {
                this.mv.visitTypeInsn(192, Type.getInternalName(obj4.getClass()));
                this.mv.visitLdcInsn(str);
                this.mv.visitVarInsn(25, 4);
                this.mv.visitMethodInsn(185, "java/util/Map", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
                this.mv.visitVarInsn(25, 4);
                ((Map) obj4).put(str, primitiveInitialValue);
            } else {
                throw new PropertyAccessException("could not access property (" + str + ") in: " + cls.getName(), this.expr, i, parserContext);
            }
            try {
                this.deferFinish = false;
                this.noinit = false;
                _finishJIT();
                return _initializeAccessor();
            } catch (Exception e2) {
                Negation$$ExternalSyntheticBUOutline0.m1010m("could not generate accessor", this.expr, i, e2);
                return null;
            }
        } catch (IllegalAccessException e3) {
            throw new PropertyAccessException("could not access property", this.expr, i, e3, parserContext);
        } catch (InvocationTargetException e4) {
            throw new PropertyAccessException("could not access property", this.expr, i, e4, parserContext);
        }
    }

    private void _finishJIT() {
        if (this.deferFinish) {
            return;
        }
        Class cls = this.returnType;
        if (cls != null && cls.isPrimitive()) {
            wrapPrimitive(this.returnType);
        }
        if (this.returnType == Void.TYPE) {
            this.mv.visitInsn(1);
        }
        this.mv.visitInsn(176);
        dumpAdvancedDebugging();
        this.mv.visitMaxs(this.stacksize, this.maxlocals);
        this.mv.visitEnd();
        MethodVisitor methodVisitorVisitMethod = this.cw.visitMethod(1, "getKnownEgressType", "()Ljava/lang/Class;", null, null);
        this.mv = methodVisitorVisitMethod;
        methodVisitorVisitMethod.visitCode();
        visitConstantClass(this.returnType);
        this.mv.visitInsn(176);
        this.mv.visitMaxs(1, 1);
        this.mv.visitEnd();
        if (this.propNull) {
            this.cw.visitField(1, "nullPropertyHandler", "L" + NAMESPACE + "integration/PropertyHandler;", null, null).visitEnd();
        }
        if (this.methNull) {
            this.cw.visitField(1, "nullMethodHandler", "L" + NAMESPACE + "integration/PropertyHandler;", null, null).visitEnd();
        }
        buildInputs();
        StringAppender stringAppender = this.buildLog;
        if (stringAppender != null && stringAppender.length() != 0 && this.expr != null) {
            MethodVisitor methodVisitorVisitMethod2 = this.cw.visitMethod(1, "toString", "()Ljava/lang/String;", null, null);
            this.mv = methodVisitorVisitMethod2;
            methodVisitorVisitMethod2.visitCode();
            this.mv.visitLabel(new Label());
            this.mv.visitLdcInsn(this.buildLog.toString() + "\n\n## { " + new String(this.expr) + " }");
            this.mv.visitInsn(176);
            this.mv.visitLabel(new Label());
            this.mv.visitMaxs(1, 1);
            this.mv.visitEnd();
        }
        this.cw.visitEnd();
    }

    private void visitConstantClass(Class<?> cls) {
        if (cls == null) {
            cls = Object.class;
        }
        boolean zIsPrimitive = cls.isPrimitive();
        MethodVisitor methodVisitor = this.mv;
        if (zIsPrimitive) {
            methodVisitor.visitFieldInsn(178, ReflectionUtil.toNonPrimitiveType(cls).getName().replace(".", "/"), "TYPE", "Ljava/lang/Class;");
        } else {
            methodVisitor.visitLdcInsn(Type.getType(cls));
        }
    }

    private Accessor _initializeAccessor() throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        if (this.deferFinish) {
            return null;
        }
        Class clsLoadClass = loadClass(this.className, this.cw.toByteArray());
        try {
            if (this.compiledInputs.size() == 0) {
                objNewInstance = clsLoadClass.newInstance();
            } else {
                Class<?>[] clsArr = new Class[this.compiledInputs.size()];
                for (int i = 0; i < this.compiledInputs.size(); i++) {
                    clsArr[i] = ExecutableStatement.class;
                }
                Constructor constructor = clsLoadClass.getConstructor(clsArr);
                ArrayList<ExecutableStatement> arrayList = this.compiledInputs;
                objNewInstance = constructor.newInstance(arrayList.toArray(new ExecutableStatement[arrayList.size()]));
            }
            if (this.propNull) {
                clsLoadClass.getField("nullPropertyHandler").set(objNewInstance, PropertyHandlerFactory.getNullPropertyHandler());
            }
            if (this.methNull) {
                clsLoadClass.getField("nullMethodHandler").set(objNewInstance, PropertyHandlerFactory.getNullMethodHandler());
            }
            return (Accessor) objNewInstance;
        } catch (VerifyError e) {
            System.out.println("**** COMPILER BUG! REPORT THIS IMMEDIATELY AT http://jira.codehaus.org/browse/MVEL");
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder("Expression: ");
            char[] cArr = this.expr;
            sb.append(cArr != null ? new String(cArr) : null);
            printStream.println(sb.toString());
            throw e;
        }
    }

    private Accessor compileAccessor() {
        Object beanPropertyAO = this.ctx;
        try {
            if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING) {
                while (true) {
                    if (this.cursor >= this.end) {
                        break;
                    }
                    int iNextSubToken = nextSubToken();
                    if (iNextSubToken == 0) {
                        beanPropertyAO = getBeanPropertyAO(beanPropertyAO, capture());
                    } else if (iNextSubToken == 1) {
                        beanPropertyAO = getMethod(beanPropertyAO, capture());
                    } else if (iNextSubToken == 2) {
                        beanPropertyAO = getCollectionPropertyAO(beanPropertyAO, capture());
                    } else if (iNextSubToken == 3) {
                        beanPropertyAO = getWithProperty(beanPropertyAO);
                    }
                    if (this.fields == -1) {
                        if (beanPropertyAO == null) {
                            if (this.nullSafe) {
                                throw new OptimizationNotSupported();
                            }
                        } else {
                            this.fields = 0;
                        }
                    }
                    this.first = false;
                    if (this.nullSafe && this.cursor < this.end) {
                        this.mv.visitInsn(89);
                        Label label = new Label();
                        this.mv.visitJumpInsn(199, label);
                        this.mv.visitInsn(176);
                        this.mv.visitLabel(label);
                    }
                }
            } else {
                while (true) {
                    if (this.cursor >= this.end) {
                        break;
                    }
                    int iNextSubToken2 = nextSubToken();
                    if (iNextSubToken2 == 0) {
                        beanPropertyAO = getBeanProperty(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 1) {
                        beanPropertyAO = getMethod(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 2) {
                        beanPropertyAO = getCollectionProperty(beanPropertyAO, capture());
                    } else if (iNextSubToken2 == 3) {
                        beanPropertyAO = getWithProperty(beanPropertyAO);
                    }
                    if (this.fields == -1) {
                        if (beanPropertyAO == null) {
                            if (this.nullSafe) {
                                throw new OptimizationNotSupported();
                            }
                        } else {
                            this.fields = 0;
                        }
                    }
                    this.first = false;
                    if (this.nullSafe && this.cursor < this.end) {
                        this.mv.visitInsn(89);
                        Label label2 = new Label();
                        this.mv.visitJumpInsn(199, label2);
                        this.mv.visitInsn(176);
                        this.mv.visitLabel(label2);
                    }
                }
            }
            this.val = beanPropertyAO;
            _finishJIT();
            return _initializeAccessor();
        } catch (IllegalAccessException e) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.st, e, this.pCtx);
        } catch (IndexOutOfBoundsException e2) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.st, e2, this.pCtx);
        } catch (NullPointerException e3) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.st, e3, this.pCtx);
        } catch (InvocationTargetException e4) {
            throw new PropertyAccessException(new String(this.expr), this.expr, this.st, e4, this.pCtx);
        } catch (PropertyAccessException e5) {
            Negation$$ExternalSyntheticBUOutline0.m1010m(e5.getMessage(), this.expr, this.st, e5);
            return null;
        } catch (CompileException e6) {
            throw e6;
        } catch (OptimizationNotSupported e7) {
            throw e7;
        } catch (Exception e8) {
            Negation$$ExternalSyntheticBUOutline0.m1010m(e8.getMessage(), this.expr, this.st, e8);
            return null;
        }
    }

    private Object getWithProperty(Object obj) {
        if (this.first) {
            this.mv.visitVarInsn(25, 1);
            this.first = false;
        }
        String strTrim = new String(this.expr, 0, this.cursor - 1).trim();
        int i = this.cursor;
        int i2 = i + 1;
        this.cursor = ParseTools.balancedCaptureWithLineAccounting(this.expr, i, this.end, '{', this.pCtx);
        this.returnType = obj != null ? obj.getClass() : null;
        char[] cArr = this.expr;
        int i3 = this.cursor;
        this.cursor = i3 + 1;
        for (WithNode.ParmValuePair parmValuePair : WithNode.compileWithExpressions(cArr, i2, i3 - i2, strTrim, this.ingressType, this.pCtx)) {
            this.mv.visitInsn(89);
            this.mv.visitVarInsn(58, this.compileDepth + 5);
            parmValuePair.eval(obj, this.variableFactory);
            if (parmValuePair.getSetExpression() == null) {
                addSubstatement(parmValuePair.getStatement());
            } else {
                this.compiledInputs.add((ExecutableStatement) parmValuePair.getSetExpression());
                this.mv.visitVarInsn(25, 0);
                this.mv.visitFieldInsn(180, this.className, "p" + (this.compiledInputs.size() - 1), "L" + NAMESPACE + "compiler/ExecutableStatement;");
                this.mv.visitVarInsn(25, this.compileDepth + 5);
                this.mv.visitVarInsn(25, 2);
                this.mv.visitVarInsn(25, 3);
                addSubstatement(parmValuePair.getStatement());
                this.mv.visitMethodInsn(185, NAMESPACE + "compiler/ExecutableStatement", "setValue", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;");
                this.mv.visitInsn(87);
            }
        }
        return obj;
    }

    private Object getBeanPropertyAO(Object obj, String str) {
        if (obj != null && PropertyHandlerFactory.hasPropertyHandler(obj.getClass())) {
            return propHandlerByteCode(str, obj, obj.getClass());
        }
        return getBeanProperty(obj, str);
    }

    private Object getBeanProperty(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        boolean z;
        Class<?> cls;
        Object objInvoke;
        ParserContext parserContext = this.pCtx;
        if ((parserContext == null ? this.currType : parserContext.getVarOrInputTypeOrNull(str)) == Object.class && !this.pCtx.isStrongTyping()) {
            this.currType = null;
        }
        Class cls2 = this.returnType;
        if (cls2 != null && cls2.isPrimitive()) {
            wrapPrimitive(this.returnType);
        }
        boolean z2 = obj instanceof Class;
        if (z2) {
            if (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && "class".equals(str)) {
                ldcClassConstant((Class) obj);
                return obj;
            }
            cls = (Class) obj;
            z = true;
        } else if (obj != null) {
            cls = obj.getClass();
            z = false;
        } else {
            z = false;
            cls = null;
        }
        if (PropertyHandlerFactory.hasPropertyHandler(cls)) {
            PropertyHandler propertyHandler = PropertyHandlerFactory.getPropertyHandler(cls);
            if (propertyHandler instanceof ProducesBytecode) {
                ((ProducesBytecode) propertyHandler).produceBytecodeGet(this.mv, str, this.variableFactory);
                return propertyHandler.getProperty(str, obj, this.variableFactory);
            }
            GlShader$$ExternalSyntheticBUOutline1.m1109m("unable to compileShared: custom accessor does not support producing bytecode: ".concat(propertyHandler.getClass().getName()));
            return null;
        }
        Member fieldOrAccessor = cls != null ? PropertyTools.getFieldOrAccessor(cls, str) : null;
        if (fieldOrAccessor != null && z && (fieldOrAccessor.getModifiers() & 8) == 0) {
            fieldOrAccessor = null;
        }
        if (fieldOrAccessor != null && GlobalListenerFactory.hasGetListeners()) {
            this.mv.visitVarInsn(25, 1);
            this.mv.visitLdcInsn(fieldOrAccessor.getName());
            this.mv.visitVarInsn(25, 3);
            this.mv.visitMethodInsn(184, NAMESPACE + "integration/GlobalListenerFactory", "notifyGetListeners", "(Ljava/lang/Object;Ljava/lang/String;L" + NAMESPACE + "integration/VariableResolverFactory;)V");
            GlobalListenerFactory.notifyGetListeners(obj, fieldOrAccessor.getName(), this.variableFactory);
        }
        if (this.first) {
            if ("this".equals(str)) {
                this.mv.visitVarInsn(25, 2);
                return this.thisRef;
            }
            VariableResolverFactory variableResolverFactory = this.variableFactory;
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                if (this.variableFactory.isIndexedFactory() && this.variableFactory.isTarget(str)) {
                    try {
                        int iVariableIndexOf = this.variableFactory.variableIndexOf(str);
                        loadVariableByIndex(iVariableIndexOf);
                        return this.variableFactory.getIndexedVariableResolver(iVariableIndexOf).getValue();
                    } catch (Exception unused) {
                        throw new OptimizationFailure(str);
                    }
                }
                try {
                    loadVariableByName(str);
                    return this.variableFactory.getVariableResolver(str).getValue();
                } catch (Exception e) {
                    throw new OptimizationFailure("critical error in JIT", e);
                }
            }
            this.mv.visitVarInsn(25, 1);
        }
        if (fieldOrAccessor instanceof Field) {
            return optimizeFieldMethodProperty(obj, str, cls, fieldOrAccessor);
        }
        if (fieldOrAccessor != null) {
            if (this.first) {
                this.mv.visitVarInsn(25, 1);
            }
            try {
                objInvoke = ((Method) fieldOrAccessor).invoke(obj, EMPTYARG);
                if (this.returnType != fieldOrAccessor.getDeclaringClass()) {
                    this.mv.visitTypeInsn(192, Type.getInternalName(fieldOrAccessor.getDeclaringClass()));
                }
                this.returnType = ((Method) fieldOrAccessor).getReturnType();
                if (fieldOrAccessor.getDeclaringClass().isInterface()) {
                    this.mv.visitMethodInsn(185, Type.getInternalName(fieldOrAccessor.getDeclaringClass()), fieldOrAccessor.getName(), Type.getMethodDescriptor((Method) fieldOrAccessor));
                } else {
                    this.mv.visitMethodInsn(182, Type.getInternalName(fieldOrAccessor.getDeclaringClass()), fieldOrAccessor.getName(), Type.getMethodDescriptor((Method) fieldOrAccessor));
                }
            } catch (IllegalAccessException e2) {
                Method method = (Method) fieldOrAccessor;
                Method methodDetermineActualTargetMethod = ParseTools.determineActualTargetMethod(method);
                if (methodDetermineActualTargetMethod == null) {
                    throw new PropertyAccessException("could not access field: " + cls.getName() + "." + str, this.expr, this.st, e2, this.pCtx);
                }
                this.mv.visitTypeInsn(192, Type.getInternalName(methodDetermineActualTargetMethod.getDeclaringClass()));
                this.returnType = methodDetermineActualTargetMethod.getReturnType();
                this.mv.visitMethodInsn(185, Type.getInternalName(methodDetermineActualTargetMethod.getDeclaringClass()), fieldOrAccessor.getName(), Type.getMethodDescriptor(method));
                objInvoke = methodDetermineActualTargetMethod.invoke(obj, EMPTYARG);
            } catch (IllegalArgumentException e3) {
                if (fieldOrAccessor.getDeclaringClass().equals(obj)) {
                    try {
                        throw new CompileException("name collision between innerclass: " + Class.forName(fieldOrAccessor.getDeclaringClass().getName() + "$" + str).getCanonicalName() + "; and bean accessor: " + str + " (" + fieldOrAccessor.toString() + ")", this.expr, this.tkStart);
                    } catch (ClassNotFoundException unused2) {
                        throw e3;
                    }
                }
                throw e3;
            }
            if (PropertyHandlerFactory.hasNullPropertyHandler()) {
                if (objInvoke == null) {
                    objInvoke = PropertyHandlerFactory.getNullPropertyHandler().getProperty(fieldOrAccessor.getName(), obj, this.variableFactory);
                }
                writeOutNullHandler(fieldOrAccessor, 0);
            }
            this.currType = ReflectionUtil.toNonPrimitiveType(this.returnType);
            return objInvoke;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey(str) || this.nullSafe) {
                this.mv.visitTypeInsn(192, "java/util/Map");
                this.mv.visitLdcInsn(str);
                this.mv.visitMethodInsn(185, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
                return map.get(str);
            }
        }
        if (this.first && "this".equals(str)) {
            this.mv.visitVarInsn(25, 2);
            return this.thisRef;
        }
        if ("length".equals(str) && obj.getClass().isArray()) {
            anyArrayCheck(obj.getClass());
            this.mv.visitInsn(190);
            wrapPrimitive(Integer.TYPE);
            return Integer.valueOf(Array.getLength(obj));
        }
        if (AbstractParser.LITERALS.containsKey(str)) {
            Object obj2 = AbstractParser.LITERALS.get(str);
            if (obj2 instanceof Class) {
                ldcClassConstant((Class) obj2);
            }
            return obj2;
        }
        Object objTryStaticAccess = tryStaticAccess();
        if (objTryStaticAccess != null) {
            if (objTryStaticAccess instanceof Class) {
                ldcClassConstant((Class) objTryStaticAccess);
                return objTryStaticAccess;
            }
            if (objTryStaticAccess instanceof Method) {
                Method method2 = (Method) objTryStaticAccess;
                writeFunctionPointerStub(method2.getDeclaringClass(), method2);
                return objTryStaticAccess;
            }
            return optimizeFieldMethodProperty(obj, str, cls, (Field) objTryStaticAccess);
        }
        if (z2) {
            Class cls3 = (Class) obj;
            for (Method method3 : cls3.getMethods()) {
                if (str.equals(method3.getName())) {
                    ParserContext parserContext2 = this.pCtx;
                    if (parserContext2 == null || parserContext2.getParserConfiguration() == null ? MVEL.COMPILER_OPT_ALLOW_NAKED_METH_CALL : this.pCtx.getParserConfiguration().isAllowNakedMethCall()) {
                        this.mv.visitInsn(87);
                        this.mv.visitMethodInsn(184, Type.getInternalName(method3.getDeclaringClass()), method3.getName(), Type.getMethodDescriptor(method3));
                        this.returnType = method3.getReturnType();
                        return method3.invoke(null, ParseTools.EMPTY_OBJ_ARR);
                    }
                    writeFunctionPointerStub(cls3, method3);
                    return method3;
                }
            }
            try {
                Class clsFindClass = ParseTools.findClass(this.variableFactory, cls3.getName() + "$" + str, this.pCtx);
                ldcClassConstant(clsFindClass);
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
            throw new PropertyAccessException("unresolvable property or identifier: " + str, this.expr, this.st, this.pCtx);
        }
        throw new PropertyAccessException("could not access: " + str + "; in class: " + obj.getClass().getName(), this.expr, this.st, this.pCtx);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object optimizeFieldMethodProperty(Object obj, String str, Class<?> cls, Member member) throws IllegalAccessException {
        Object property = ((Field) member).get(obj);
        if ((member.getModifiers() & 8) != 0) {
            if ((member.getModifiers() & 16) != 0 && ((property instanceof String) || ((Field) member).getType().isPrimitive())) {
                Object obj2 = ((Field) member).get(null);
                this.mv.visitLdcInsn(obj2);
                wrapPrimitive(obj2.getClass());
                if (PropertyHandlerFactory.hasNullPropertyHandler()) {
                    writeOutNullHandler(member, 0);
                }
                return obj2;
            }
            MethodVisitor methodVisitor = this.mv;
            String internalName = Type.getInternalName(member.getDeclaringClass());
            String name = member.getName();
            Class<?> type = ((Field) member).getType();
            this.returnType = type;
            methodVisitor.visitFieldInsn(178, internalName, name, Type.getDescriptor(type));
        } else {
            this.mv.visitTypeInsn(192, Type.getInternalName(cls));
            MethodVisitor methodVisitor2 = this.mv;
            String internalName2 = Type.getInternalName(cls);
            Class<?> type2 = ((Field) member).getType();
            this.returnType = type2;
            methodVisitor2.visitFieldInsn(180, internalName2, str, Type.getDescriptor(type2));
        }
        this.returnType = ((Field) member).getType();
        if (PropertyHandlerFactory.hasNullPropertyHandler()) {
            if (property == null) {
                property = PropertyHandlerFactory.getNullPropertyHandler().getProperty(member.getName(), obj, this.variableFactory);
            }
            writeOutNullHandler(member, 0);
        }
        this.currType = ReflectionUtil.toNonPrimitiveType(this.returnType);
        return property;
    }

    private void writeFunctionPointerStub(Class cls, Method method) {
        ldcClassConstant(cls);
        this.mv.visitMethodInsn(182, "java/lang/Class", "getMethods", "()[Ljava/lang/reflect/Method;");
        this.mv.visitVarInsn(58, 7);
        this.mv.visitInsn(3);
        this.mv.visitVarInsn(54, 5);
        this.mv.visitVarInsn(25, 7);
        this.mv.visitInsn(190);
        this.mv.visitVarInsn(54, 6);
        Label label = new Label();
        this.mv.visitJumpInsn(167, label);
        Label label2 = new Label();
        this.mv.visitLabel(label2);
        this.mv.visitVarInsn(25, 7);
        this.mv.visitVarInsn(21, 5);
        this.mv.visitInsn(50);
        this.mv.visitVarInsn(58, 4);
        this.mv.visitLabel(new Label());
        this.mv.visitLdcInsn(method.getName());
        this.mv.visitVarInsn(25, 4);
        this.mv.visitMethodInsn(182, "java/lang/reflect/Method", "getName", "()Ljava/lang/String;");
        this.mv.visitMethodInsn(182, "java/lang/String", "equals", "(Ljava/lang/Object;)Z");
        Label label3 = new Label();
        this.mv.visitJumpInsn(153, label3);
        this.mv.visitLabel(new Label());
        this.mv.visitVarInsn(25, 4);
        this.mv.visitInsn(176);
        this.mv.visitLabel(label3);
        this.mv.visitIincInsn(5, 1);
        this.mv.visitLabel(label);
        this.mv.visitVarInsn(21, 5);
        this.mv.visitVarInsn(21, 6);
        this.mv.visitJumpInsn(161, label2);
        this.mv.visitLabel(new Label());
        this.mv.visitInsn(1);
        this.mv.visitInsn(176);
    }

    private Object getCollectionProperty(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        if (str.trim().length() > 0) {
            obj = getBeanProperty(obj, str);
            this.first = false;
        }
        this.currType = null;
        int i = this.cursor + 1;
        this.cursor = i;
        skipWhitespace();
        if (this.cursor == this.end) {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated '['", this.expr, this.st);
            return null;
        }
        boolean zScanTo = scanTo(']');
        char[] cArr = this.expr;
        if (zScanTo) {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated '['", cArr, this.st);
            return null;
        }
        String str2 = new String(cArr, i, this.cursor - i);
        if (obj == null) {
            return null;
        }
        if (this.first) {
            this.mv.visitVarInsn(25, 1);
        }
        ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(str2.toCharArray(), this.pCtx);
        Object value = executableStatement.getValue(this.ctx, this.variableFactory);
        this.cursor++;
        if (obj instanceof Map) {
            this.mv.visitTypeInsn(192, "java/util/Map");
            Class clsWriteLiteralOrSubexpression = writeLiteralOrSubexpression(executableStatement);
            if (clsWriteLiteralOrSubexpression != null && clsWriteLiteralOrSubexpression.isPrimitive()) {
                wrapPrimitive(clsWriteLiteralOrSubexpression);
            }
            this.mv.visitMethodInsn(185, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
            return ((Map) obj).get(value);
        }
        boolean z = obj instanceof List;
        Class cls = Integer.TYPE;
        if (z) {
            this.mv.visitTypeInsn(192, "java/util/List");
            writeLiteralOrSubexpression(executableStatement, cls, Object.class);
            this.mv.visitMethodInsn(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            return ((List) obj).get(((Integer) DataConversion.convert(value, Integer.class)).intValue());
        }
        boolean zIsArray = obj.getClass().isArray();
        Class cls2 = Character.TYPE;
        if (zIsArray) {
            this.mv.visitTypeInsn(192, Type.getDescriptor(obj.getClass()));
            writeLiteralOrSubexpression(executableStatement, cls, value.getClass());
            Class baseComponentType = ParseTools.getBaseComponentType(obj.getClass());
            if (baseComponentType.isPrimitive()) {
                if (baseComponentType == cls) {
                    this.mv.visitInsn(46);
                } else if (baseComponentType == cls2) {
                    this.mv.visitInsn(52);
                } else if (baseComponentType == Boolean.TYPE) {
                    this.mv.visitInsn(51);
                } else if (baseComponentType == Double.TYPE) {
                    this.mv.visitInsn(49);
                } else if (baseComponentType == Float.TYPE) {
                    this.mv.visitInsn(48);
                } else if (baseComponentType == Short.TYPE) {
                    this.mv.visitInsn(53);
                } else if (baseComponentType == Long.TYPE) {
                    this.mv.visitInsn(47);
                } else if (baseComponentType == Byte.TYPE) {
                    this.mv.visitInsn(51);
                }
                wrapPrimitive(baseComponentType);
            } else {
                this.mv.visitInsn(50);
            }
            return Array.get(obj, ((Integer) DataConversion.convert(value, Integer.class)).intValue());
        }
        if (obj instanceof CharSequence) {
            this.mv.visitTypeInsn(192, "java/lang/CharSequence");
            if (value instanceof Integer) {
                Integer num = (Integer) value;
                intPush(num.intValue());
                this.mv.visitMethodInsn(185, "java/lang/CharSequence", "charAt", "(I)C");
                wrapPrimitive(cls2);
                return Character.valueOf(((CharSequence) obj).charAt(num.intValue()));
            }
            writeLiteralOrSubexpression(executableStatement, Integer.class);
            unwrapPrimitive(cls);
            this.mv.visitMethodInsn(185, "java/lang/CharSequence", "charAt", "(I)C");
            wrapPrimitive(cls2);
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) DataConversion.convert(value, Integer.class)).intValue()));
        }
        TypeDescriptor typeDescriptor = new TypeDescriptor(this.expr, this.start, this.length, 0);
        if (typeDescriptor.isArray()) {
            try {
                Class classReference = TypeDescriptor.getClassReference((Class) obj, typeDescriptor, this.variableFactory, this.pCtx);
                ldcClassConstant(classReference);
                return classReference;
            } catch (Exception unused) {
            }
        }
        Sign$$ExternalSyntheticBUOutline0.m1012m("illegal use of []: unknown type: " + obj.getClass().getName(), this.expr, this.st);
        return null;
    }

    private Object getCollectionPropertyAO(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        if (str.length() > 0) {
            obj = getBeanProperty(obj, str);
            this.first = false;
        }
        this.currType = null;
        int i = this.cursor + 1;
        this.cursor = i;
        skipWhitespace();
        if (this.cursor == this.end) {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated '['", this.expr, this.st);
            return null;
        }
        boolean zScanTo = scanTo(']');
        char[] cArr = this.expr;
        if (zScanTo) {
            Sign$$ExternalSyntheticBUOutline0.m1012m("unterminated '['", cArr, this.st);
            return null;
        }
        String str2 = new String(cArr, i, this.cursor - i);
        if (obj == null) {
            return null;
        }
        ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(str2.toCharArray());
        Object value = executableStatement.getValue(this.ctx, this.variableFactory);
        this.cursor++;
        if (obj instanceof Map) {
            if (PropertyHandlerFactory.hasPropertyHandler(Map.class)) {
                return propHandlerByteCode(str2, obj, Map.class);
            }
            if (this.first) {
                this.mv.visitVarInsn(25, 1);
            }
            this.mv.visitTypeInsn(192, "java/util/Map");
            Class clsWriteLiteralOrSubexpression = writeLiteralOrSubexpression(executableStatement);
            if (clsWriteLiteralOrSubexpression != null && clsWriteLiteralOrSubexpression.isPrimitive()) {
                wrapPrimitive(clsWriteLiteralOrSubexpression);
            }
            this.mv.visitMethodInsn(185, "java/util/Map", "get", "(Ljava/lang/Object;)Ljava/lang/Object;");
            return ((Map) obj).get(value);
        }
        boolean z = obj instanceof List;
        Class cls = Integer.TYPE;
        if (z) {
            if (PropertyHandlerFactory.hasPropertyHandler(List.class)) {
                return propHandlerByteCode(str2, obj, List.class);
            }
            if (this.first) {
                this.mv.visitVarInsn(25, 1);
            }
            this.mv.visitTypeInsn(192, "java/util/List");
            writeLiteralOrSubexpression(executableStatement, cls);
            this.mv.visitMethodInsn(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            return ((List) obj).get(((Integer) DataConversion.convert(value, Integer.class)).intValue());
        }
        boolean zIsArray = obj.getClass().isArray();
        Class cls2 = Character.TYPE;
        if (zIsArray) {
            if (PropertyHandlerFactory.hasPropertyHandler(Array.class)) {
                return propHandlerByteCode(str2, obj, Array.class);
            }
            if (this.first) {
                this.mv.visitVarInsn(25, 1);
            }
            this.mv.visitTypeInsn(192, Type.getDescriptor(obj.getClass()));
            writeLiteralOrSubexpression(executableStatement, cls, value.getClass());
            Class baseComponentType = ParseTools.getBaseComponentType(obj.getClass());
            if (baseComponentType.isPrimitive()) {
                if (baseComponentType == cls) {
                    this.mv.visitInsn(46);
                } else if (baseComponentType == cls2) {
                    this.mv.visitInsn(52);
                } else if (baseComponentType == Boolean.TYPE) {
                    this.mv.visitInsn(51);
                } else if (baseComponentType == Double.TYPE) {
                    this.mv.visitInsn(49);
                } else if (baseComponentType == Float.TYPE) {
                    this.mv.visitInsn(48);
                } else if (baseComponentType == Short.TYPE) {
                    this.mv.visitInsn(53);
                } else if (baseComponentType == Long.TYPE) {
                    this.mv.visitInsn(47);
                } else if (baseComponentType == Byte.TYPE) {
                    this.mv.visitInsn(51);
                }
                wrapPrimitive(baseComponentType);
            } else {
                this.mv.visitInsn(50);
            }
            return Array.get(obj, ((Integer) DataConversion.convert(value, Integer.class)).intValue());
        }
        if (obj instanceof CharSequence) {
            if (PropertyHandlerFactory.hasPropertyHandler(CharSequence.class)) {
                return propHandlerByteCode(str2, obj, CharSequence.class);
            }
            if (this.first) {
                this.mv.visitVarInsn(25, 1);
            }
            this.mv.visitTypeInsn(192, "java/lang/CharSequence");
            if (value instanceof Integer) {
                Integer num = (Integer) value;
                intPush(num.intValue());
                this.mv.visitMethodInsn(185, "java/lang/CharSequence", "charAt", "(I)C");
                wrapPrimitive(cls2);
                return Character.valueOf(((CharSequence) obj).charAt(num.intValue()));
            }
            writeLiteralOrSubexpression(executableStatement, Integer.class);
            unwrapPrimitive(cls);
            this.mv.visitMethodInsn(185, "java/lang/CharSequence", "charAt", "(I)C");
            wrapPrimitive(cls2);
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) DataConversion.convert(value, Integer.class)).intValue()));
        }
        char[] cArr2 = this.expr;
        int i2 = this.start;
        TypeDescriptor typeDescriptor = new TypeDescriptor(cArr2, i2, this.end - i2, 0);
        if (typeDescriptor.isArray()) {
            try {
                Class classReference = TypeDescriptor.getClassReference((Class) obj, typeDescriptor, this.variableFactory, this.pCtx);
                ldcClassConstant(classReference);
                return classReference;
            } catch (Exception unused) {
            }
        }
        Sign$$ExternalSyntheticBUOutline0.m1012m("illegal use of []: unknown type: " + obj.getClass().getName(), this.expr, this.st);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object getMethod(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
        String str2;
        Object[] objArr;
        List<char[]> list;
        Object[] objArr2;
        Class[] clsArr;
        Object[] objArr3;
        Class<?> cls;
        boolean z;
        Class<?> cls2;
        Class cls3;
        String str3;
        Method bestCandidate;
        Method method;
        Object[] objArr4;
        int i;
        Class<?> cls4;
        Object[] objArr5;
        Class<?> cls5;
        String str4;
        int i2;
        Class<?> cls6;
        Class<?> cls7;
        Class<?> cls8;
        VariableResolverFactory variableResolverFactory;
        Class<?> classReference;
        Object obj2 = obj;
        String methodName = str;
        int i3 = this.cursor;
        if (i3 != this.end) {
            char[] cArr = this.expr;
            if (cArr[i3] == '(') {
                int iBalancedCapture = ParseTools.balancedCapture(cArr, i3, '(');
                this.cursor = iBalancedCapture;
                str2 = iBalancedCapture - i3 > 1 ? new String(this.expr, i3 + 1, (iBalancedCapture - i3) - 1) : _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        this.cursor++;
        Class<?> cls9 = Object.class;
        if (str2.length() == 0) {
            objArr2 = ParseTools.EMPTY_OBJ_ARR;
            objArr = objArr2;
            clsArr = ParseTools.EMPTY_CLS_ARR;
            list = null;
            objArr3 = null;
        } else {
            List<char[]> parameterList = ParseTools.parseParameterList(str2.toCharArray(), 0, -1);
            int size = parameterList.size();
            ExecutableStatement[] executableStatementArr = new ExecutableStatement[size];
            int size2 = parameterList.size();
            objArr = new Object[size2];
            Class[] clsArr2 = new Class[parameterList.size()];
            Object[] objArr6 = new Object[size];
            for (int i4 = 0; i4 < parameterList.size(); i4++) {
                ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(parameterList.get(i4), this.pCtx);
                executableStatementArr[i4] = executableStatement;
                Object obj3 = this.thisRef;
                Object value = executableStatement.getValue(obj3, obj3, this.variableFactory);
                objArr[i4] = value;
                objArr6[i4] = value;
                if (executableStatementArr[i4].isExplicitCast()) {
                    clsArr2[i4] = executableStatementArr[i4].getKnownEgressType();
                }
            }
            if (this.pCtx.isStrictTypeEnforcement()) {
                for (int i5 = 0; i5 < size2; i5++) {
                    clsArr2[i5] = executableStatementArr[i5].getKnownEgressType();
                    Object[] objArr7 = executableStatementArr[i5];
                    if ((objArr7 instanceof ExecutableLiteral) && ((ExecutableLiteral) objArr7).getLiteral() == null) {
                        clsArr2[i5] = NullType.class;
                    }
                }
            } else {
                for (int i6 = 0; i6 < size2; i6++) {
                    if (clsArr2[i6] == null) {
                        if (executableStatementArr[i6].getKnownEgressType() == cls9) {
                            Object obj4 = objArr[i6];
                            clsArr2[i6] = obj4 == null ? null : obj4.getClass();
                        } else {
                            clsArr2[i6] = executableStatementArr[i6].getKnownEgressType();
                        }
                    }
                }
            }
            list = parameterList;
            objArr2 = objArr6;
            clsArr = clsArr2;
            objArr3 = executableStatementArr;
        }
        if (this.first && (variableResolverFactory = this.variableFactory) != null && variableResolverFactory.isResolveable(methodName)) {
            Object value2 = this.variableFactory.getVariableResolver(methodName).getValue();
            if (value2 instanceof Method) {
                Method method2 = (Method) value2;
                classReference = method2.getDeclaringClass();
                methodName = method2.getName();
            } else if (value2 instanceof MethodStub) {
                MethodStub methodStub = (MethodStub) value2;
                classReference = methodStub.getClassReference();
                methodName = methodStub.getMethodName();
            } else {
                if (value2 instanceof FunctionInstance) {
                    if (objArr3 != null && objArr3.length != 0) {
                        this.compiledInputs.addAll(Arrays.asList(objArr3));
                        intPush(objArr3.length);
                        this.mv.visitTypeInsn(189, "java/lang/Object");
                        int i7 = 4;
                        this.mv.visitVarInsn(58, 4);
                        int i8 = 0;
                        while (i8 < objArr3.length) {
                            this.mv.visitVarInsn(25, i7);
                            intPush(i8);
                            loadField(i8);
                            this.mv.visitVarInsn(25, 1);
                            this.mv.visitIntInsn(25, 3);
                            this.mv.visitMethodInsn(185, NAMESPACE + "compiler/ExecutableStatement", "getValue", "(Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
                            this.mv.visitInsn(83);
                            i8++;
                            i7 = 4;
                        }
                    } else {
                        this.mv.visitInsn(1);
                        this.mv.visitTypeInsn(192, "[Ljava/lang/Object;");
                        this.mv.visitVarInsn(58, 4);
                    }
                    if (this.variableFactory.isIndexedFactory() && this.variableFactory.isTarget(methodName)) {
                        loadVariableByIndex(this.variableFactory.variableIndexOf(methodName));
                    } else {
                        loadVariableByName(methodName);
                    }
                    checkcast(FunctionInstance.class);
                    this.mv.visitVarInsn(25, 1);
                    this.mv.visitVarInsn(25, 2);
                    this.mv.visitVarInsn(25, 3);
                    this.mv.visitVarInsn(25, 4);
                    this.mv.visitMethodInsn(182, Type.getInternalName(FunctionInstance.class), "call", "(Ljava/lang/Object;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;");
                    return ((FunctionInstance) value2).call(obj2, this.thisRef, this.variableFactory, objArr);
                }
                StringBuilder sb = new StringBuilder("attempt to optimize a method call for a reference that does not point to a method: ");
                sb.append(methodName);
                sb.append(" (reference is type: ");
                sb.append(obj2 != null ? obj2.getClass().getName() : null);
                sb.append(")");
                throw new OptimizationFailure(sb.toString());
            }
            this.first = false;
            cls = classReference;
        } else {
            Class cls10 = this.returnType;
            cls = obj2;
            if (cls10 != null) {
                cls = obj2;
                if (cls10.isPrimitive()) {
                    wrapPrimitive(this.returnType);
                    cls = obj2;
                }
            }
        }
        String str5 = methodName;
        Class<?> cls11 = this.currType;
        if (cls11 != null) {
            cls2 = cls11;
            cls3 = null;
            z = false;
        } else {
            boolean z2 = cls instanceof Class;
            z = z2;
            cls2 = z2 ? cls : cls.getClass();
            cls3 = null;
        }
        this.currType = cls3;
        Method bestCandidate2 = ParseTools.getBestCandidate(clsArr, str5, cls2, cls2.getMethods(), false, z);
        Class[] clsArr3 = clsArr;
        Class<?> cls12 = cls2;
        Class<?>[] parameterTypes = bestCandidate2 != null ? bestCandidate2.getParameterTypes() : null;
        if (bestCandidate2 == null && z) {
            str3 = "getValue";
            bestCandidate2 = ParseTools.getBestCandidate(clsArr3, str5, (Class) cls12, Class.class.getMethods(), false);
            if (bestCandidate2 != null) {
                parameterTypes = bestCandidate2.getParameterTypes();
            }
        } else {
            str3 = "getValue";
        }
        Class<?>[] parameterTypes2 = parameterTypes;
        Method method3 = bestCandidate2;
        if (bestCandidate2 != null || cls12 == cls.getClass() || (cls instanceof Class)) {
            bestCandidate = method3;
        } else {
            Class<?> cls13 = cls.getClass();
            bestCandidate = ParseTools.getBestCandidate(clsArr3, str5, cls13, cls13.getMethods(), false, z);
            if (bestCandidate != null) {
                parameterTypes2 = bestCandidate.getParameterTypes();
            }
            cls12 = cls13;
        }
        if (objArr3 == null || bestCandidate == null || !bestCandidate.isVarArgs()) {
            method = bestCandidate;
            objArr4 = objArr3;
        } else {
            method = bestCandidate;
            if (objArr3.length == parameterTypes2.length) {
                boolean z3 = objArr3[objArr3.length - 1] instanceof ExecutableAccessor;
                objArr4 = objArr3;
                if (!z3) {
                }
            }
            ExecutableStatement[] executableStatementArr2 = new ExecutableStatement[parameterTypes2.length];
            int length = parameterTypes2.length - 1;
            for (int i9 = 0; i9 < length; i9++) {
                executableStatementArr2[i9] = objArr3[i9];
            }
            String name = parameterTypes2[parameterTypes2.length - 1].getComponentType().getName();
            if (!"null".equals(str2)) {
                StringBuilder sb2 = new StringBuilder("new ");
                sb2.append(name);
                sb2.append("[] {");
                for (int i10 = length; i10 < list.size(); i10++) {
                    sb2.append(list.get(i10));
                    if (i10 < list.size() - 1) {
                        sb2.append(",");
                    }
                }
                sb2.append("}");
                str2 = sb2.toString();
            }
            executableStatementArr2[length] = (ExecutableStatement) ParseTools.subCompileExpression(str2.toCharArray(), this.pCtx);
            if (objArr2.length == parameterTypes2.length - 1) {
                Object[] objArr8 = new Object[parameterTypes2.length];
                for (int i11 = 0; i11 < objArr2.length; i11++) {
                    objArr8[i11] = objArr2[i11];
                }
                objArr8[parameterTypes2.length - 1] = Array.newInstance(parameterTypes2[parameterTypes2.length - 1].getComponentType(), 0);
                objArr2 = objArr8;
            }
            objArr4 = executableStatementArr2;
        }
        int size3 = this.compiledInputs.size();
        if (objArr4 != 0) {
            int length2 = objArr4.length;
            int i12 = 0;
            while (i12 < length2) {
                Object[] objArr9 = objArr4[i12];
                int i13 = size3;
                if (!(objArr9 instanceof ExecutableLiteral)) {
                    this.compiledInputs.add((ExecutableStatement) objArr9);
                }
                i12++;
                size3 = i13;
            }
        }
        int i14 = size3;
        if (this.first) {
            this.mv.visitVarInsn(25, 1);
        }
        Class<?> cls14 = Integer.TYPE;
        if (method == null) {
            StringAppender stringAppender = new StringAppender();
            if (parameterTypes2 != null) {
                for (int i15 = 0; i15 < objArr.length; i15++) {
                    Class<?> cls15 = parameterTypes2[i15];
                    stringAppender.append(cls15 != null ? cls15.getClass().getName() : null);
                    if (i15 < objArr.length - 1) {
                        stringAppender.append(", ");
                    }
                }
            }
            if ("size".equals(str5) && objArr.length == 0 && cls12.isArray()) {
                anyArrayCheck(cls12);
                this.mv.visitInsn(190);
                wrapPrimitive(cls14);
                return Integer.valueOf(Array.getLength(cls));
            }
            Sign$$ExternalSyntheticBUOutline0.m1012m("unable to resolve method: " + cls12.getName() + "." + str5 + "(" + stringAppender.toString() + ") [arglength=" + objArr.length + "]", this.expr, i3);
            return null;
        }
        Method widenedTarget = ParseTools.getWidenedTarget(method);
        if (objArr4 != 0) {
            for (int i16 = 0; i16 < objArr4.length; i16++) {
                ExecutableLiteral executableLiteral = objArr4[i16];
                if (executableLiteral.getKnownIngressType() == null) {
                    executableLiteral.setKnownIngressType(parameterTypes2[i16]);
                    executableLiteral.computeTypeConversionRule();
                }
                if (!executableLiteral.isConvertableIngressEgress() && i16 < objArr.length) {
                    objArr[i16] = DataConversion.convert(objArr[i16], Varargs.paramTypeVarArgsSafe(parameterTypes2, i16, widenedTarget.isVarArgs()));
                }
            }
        } else {
            for (int i17 = 0; i17 < objArr.length; i17++) {
                objArr[i17] = DataConversion.convert(objArr[i17], Varargs.paramTypeVarArgsSafe(parameterTypes2, i17, widenedTarget.isVarArgs()));
            }
        }
        Class<?> declaringClass = widenedTarget.getDeclaringClass();
        if (widenedTarget.getParameterTypes().length == 0) {
            int modifiers = widenedTarget.getModifiers() & 8;
            MethodVisitor methodVisitor = this.mv;
            if (modifiers != 0) {
                methodVisitor.visitMethodInsn(184, Type.getInternalName(declaringClass), widenedTarget.getName(), Type.getMethodDescriptor(widenedTarget));
            } else {
                methodVisitor.visitTypeInsn(192, Type.getInternalName(declaringClass));
                boolean zIsInterface = declaringClass.isInterface();
                MethodVisitor methodVisitor2 = this.mv;
                if (zIsInterface) {
                    methodVisitor2.visitMethodInsn(185, Type.getInternalName(declaringClass), widenedTarget.getName(), Type.getMethodDescriptor(widenedTarget));
                } else {
                    methodVisitor2.visitMethodInsn(182, Type.getInternalName(declaringClass), widenedTarget.getName(), Type.getMethodDescriptor(widenedTarget));
                }
            }
            this.returnType = widenedTarget.getReturnType();
            this.stacksize++;
            i = 1;
        } else {
            if ((widenedTarget.getModifiers() & 8) == 0) {
                this.mv.visitTypeInsn(192, Type.getInternalName(declaringClass));
            }
            int i18 = i14;
            int i19 = 0;
            while (objArr4 != 0 && i19 < objArr4.length) {
                Object[] objArr10 = objArr4[i19];
                if (objArr10 instanceof ExecutableLiteral) {
                    ExecutableLiteral executableLiteral2 = (ExecutableLiteral) objArr10;
                    if (executableLiteral2.getLiteral() == null) {
                        this.mv.visitInsn(1);
                    } else if (parameterTypes2[i19] == cls14 && executableLiteral2.intOptimized()) {
                        intPush(executableLiteral2.getInteger32());
                    } else {
                        Class<?> cls16 = parameterTypes2[i19];
                        cls4 = cls14;
                        if (cls16 == cls14) {
                            Object obj5 = objArr2[i19];
                            objArr5 = objArr2;
                            if (obj5 instanceof Integer) {
                                intPush(((Integer) obj5).intValue());
                            }
                            cls5 = declaringClass;
                            i2 = i18;
                            cls6 = cls9;
                            str4 = str3;
                        } else {
                            objArr5 = objArr2;
                        }
                        if (cls16 == Boolean.TYPE) {
                            this.mv.visitInsn(((Boolean) DataConversion.convert(executableLiteral2.getLiteral(), Boolean.class)).booleanValue() ? 4 : 3);
                        } else {
                            Object literal = executableLiteral2.getLiteral();
                            Class<?> cls17 = parameterTypes2[i19];
                            if (cls17 == cls9) {
                                if (ParseTools.isPrimitiveWrapper(literal.getClass())) {
                                    if (literal.getClass() == Integer.class) {
                                        intPush(((Integer) literal).intValue());
                                    } else {
                                        this.mv.visitLdcInsn(literal);
                                    }
                                    wrapPrimitive(literal.getClass());
                                } else if (literal instanceof String) {
                                    this.mv.visitLdcInsn(literal);
                                    checkcast(cls9);
                                }
                            } else if (DataConversion.canConvert(cls17, literal.getClass())) {
                                Object objConvert = DataConversion.convert(literal, parameterTypes2[i19]);
                                if (objConvert instanceof Class) {
                                    ldcClassConstant((Class) objConvert);
                                } else {
                                    this.mv.visitLdcInsn(objConvert);
                                    if (ParseTools.isPrimitiveWrapper(parameterTypes2[i19])) {
                                        wrapPrimitive(literal.getClass());
                                    }
                                }
                            } else {
                                throw new OptimizationNotSupported();
                            }
                        }
                        cls5 = declaringClass;
                        i2 = i18;
                        cls6 = cls9;
                        str4 = str3;
                    }
                    cls4 = cls14;
                    objArr5 = objArr2;
                    cls5 = declaringClass;
                    i2 = i18;
                    cls6 = cls9;
                    str4 = str3;
                } else {
                    cls4 = cls14;
                    objArr5 = objArr2;
                    this.mv.visitVarInsn(25, 0);
                    cls5 = declaringClass;
                    this.mv.visitFieldInsn(180, this.className, "p" + i18, "L" + NAMESPACE + "compiler/ExecutableStatement;");
                    int i20 = i18 + 1;
                    this.mv.visitVarInsn(25, 2);
                    this.mv.visitVarInsn(25, 3);
                    str4 = str3;
                    this.mv.visitMethodInsn(185, Type.getInternalName(ExecutableStatement.class), str4, "(Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
                    if (parameterTypes2[i19].isPrimitive()) {
                        Object obj6 = objArr5[i19];
                        i2 = i20;
                        if (obj6 == null || !((cls8 = parameterTypes2[i19]) == String.class || cls8.isAssignableFrom(obj6.getClass()))) {
                            ldcClassConstant(getWrapperClass(parameterTypes2[i19]));
                            MethodVisitor methodVisitor3 = this.mv;
                            StringBuilder sb3 = new StringBuilder();
                            cls6 = cls9;
                            sb3.append(NAMESPACE);
                            sb3.append("DataConversion");
                            methodVisitor3.visitMethodInsn(184, sb3.toString(), "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
                        } else {
                            cls6 = cls9;
                        }
                        unwrapPrimitive(parameterTypes2[i19]);
                    } else {
                        i2 = i20;
                        cls6 = cls9;
                        Object obj7 = objArr5[i19];
                        if (obj7 == null || ((cls7 = parameterTypes2[i19]) != String.class && !cls7.isAssignableFrom(obj7.getClass()))) {
                            ldcClassConstant(parameterTypes2[i19]);
                            this.mv.visitMethodInsn(184, NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
                            this.mv.visitTypeInsn(192, Type.getInternalName(parameterTypes2[i19]));
                        } else {
                            Class<?> cls18 = parameterTypes2[i19];
                            MethodVisitor methodVisitor4 = this.mv;
                            if (cls18 == String.class) {
                                methodVisitor4.visitVarInsn(58, 4);
                                Label label = new Label();
                                this.mv.visitVarInsn(25, 4);
                                this.mv.visitJumpInsn(199, label);
                                this.mv.visitInsn(1);
                                Label label2 = new Label();
                                this.mv.visitJumpInsn(167, label2);
                                this.mv.visitLabel(label);
                                this.mv.visitVarInsn(25, 4);
                                this.mv.visitMethodInsn(184, "java/lang/String", "valueOf", "(Ljava/lang/Object;)Ljava/lang/String;");
                                this.mv.visitLabel(label2);
                            } else {
                                methodVisitor4.visitTypeInsn(192, Type.getInternalName(cls18));
                            }
                        }
                        i19++;
                        cls14 = cls4;
                        str3 = str4;
                        objArr2 = objArr5;
                        declaringClass = cls5;
                        cls9 = cls6;
                        i18 = i2;
                    }
                }
                i19++;
                cls14 = cls4;
                str3 = str4;
                objArr2 = objArr5;
                declaringClass = cls5;
                cls9 = cls6;
                i18 = i2;
            }
            Class<?> cls19 = declaringClass;
            if (widenedTarget.isVarArgs() && (objArr4 == 0 || objArr4.length == parameterTypes2.length - 1)) {
                createArray(ParseTools.getBaseComponentType(parameterTypes2[parameterTypes2.length - 1]), 0);
            }
            if ((widenedTarget.getModifiers() & 8) != 0) {
                this.mv.visitMethodInsn(184, Type.getInternalName(cls19), widenedTarget.getName(), Type.getMethodDescriptor(widenedTarget));
            } else {
                boolean zIsInterface2 = cls19.isInterface();
                MethodVisitor methodVisitor5 = this.mv;
                if (zIsInterface2) {
                    methodVisitor5.visitMethodInsn(185, Type.getInternalName(cls19), widenedTarget.getName(), Type.getMethodDescriptor(widenedTarget));
                } else {
                    methodVisitor5.visitMethodInsn(182, Type.getInternalName(cls19), widenedTarget.getName(), Type.getMethodDescriptor(widenedTarget));
                }
            }
            this.returnType = widenedTarget.getReturnType();
            i = 1;
            this.stacksize++;
        }
        Object objInvoke = widenedTarget.invoke(cls, Varargs.normalizeArgsForVarArgs(parameterTypes2, objArr, widenedTarget.isVarArgs()));
        if (PropertyHandlerFactory.hasNullMethodHandler()) {
            writeOutNullHandler(widenedTarget, i);
            if (objInvoke == null) {
                objInvoke = PropertyHandlerFactory.getNullMethodHandler().getProperty(widenedTarget.getName(), cls, this.variableFactory);
            }
        }
        this.currType = ReflectionUtil.toNonPrimitiveType(widenedTarget.getReturnType());
        return objInvoke;
    }

    private void dataConversion(Class cls) {
        if (cls.equals(Object.class)) {
            return;
        }
        ldcClassConstant(cls);
        this.mv.visitMethodInsn(184, NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
    }

    public static void setMVELClassLoader(MVELClassLoader mVELClassLoader) {
        classLoader = mVELClassLoader;
    }

    public static MVELClassLoader getMVELClassLoader() {
        return classLoader;
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public void init() {
        try {
            classLoader = new JITClassLoader(Thread.currentThread().getContextClassLoader());
        } catch (Exception e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }

    private ContextClassLoader getContextClassLoader() {
        if (this.pCtx == null) {
            return null;
        }
        return new ContextClassLoader(this.pCtx.getClassLoader());
    }

    public static class ContextClassLoader extends ClassLoader {
        public ContextClassLoader(ClassLoader classLoader) {
            super(classLoader);
        }

        public Class<?> defineClass(String str, byte[] bArr) {
            return defineClass(str, bArr, 0, bArr.length);
        }
    }

    private Class loadClass(String str, byte[] bArr) {
        ContextClassLoader contextClassLoader = getContextClassLoader();
        if (contextClassLoader == null) {
            return classLoader.defineClassX(str, bArr, 0, bArr.length);
        }
        return contextClassLoader.defineClass(str, bArr);
    }

    private boolean debug(String str) {
        StringAppender stringAppender = this.buildLog;
        if (stringAppender == null) {
            return true;
        }
        stringAppender.append(str).append("\n");
        return true;
    }

    public String getName() {
        return "ASM";
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Object getResultOptPass() {
        return this.val;
    }

    private Class getWrapperClass(Class cls) {
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        return cls == Character.TYPE ? Character.class : cls;
    }

    private void unwrapPrimitive(Class cls) {
        if (cls == Boolean.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Boolean");
            this.mv.visitMethodInsn(182, "java/lang/Boolean", "booleanValue", "()Z");
            return;
        }
        if (cls == Integer.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Integer");
            this.mv.visitMethodInsn(182, "java/lang/Integer", "intValue", "()I");
            return;
        }
        if (cls == Float.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Float");
            this.mv.visitMethodInsn(182, "java/lang/Float", "floatValue", "()F");
            return;
        }
        if (cls == Double.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Double");
            this.mv.visitMethodInsn(182, "java/lang/Double", "doubleValue", "()D");
            return;
        }
        if (cls == Short.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Short");
            this.mv.visitMethodInsn(182, "java/lang/Short", "shortValue", "()S");
            return;
        }
        if (cls == Long.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Long");
            this.mv.visitMethodInsn(182, "java/lang/Long", "longValue", "()J");
        } else if (cls == Byte.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Byte");
            this.mv.visitMethodInsn(182, "java/lang/Byte", "byteValue", "()B");
        } else if (cls == Character.TYPE) {
            this.mv.visitTypeInsn(192, "java/lang/Character");
            this.mv.visitMethodInsn(182, "java/lang/Character", "charValue", "()C");
        }
    }

    private void wrapPrimitive(Class<? extends Object> cls) {
        int i = OPCODES_VERSION;
        Class<? extends Object> cls2 = Float.TYPE;
        Class<? extends Object> cls3 = Integer.TYPE;
        Class<? extends Object> cls4 = Boolean.TYPE;
        if (i != 48) {
            if (cls == cls4 || cls == Boolean.class) {
                debug("INVOKESTATIC java/lang/Boolean.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
                return;
            }
            if (cls == cls3 || cls == Integer.class) {
                debug("INVOKESTATIC java/lang/Integer.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                return;
            }
            if (cls == cls2 || cls == Float.class) {
                debug("INVOKESTATIC java/lang/Float.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                return;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                debug("INVOKESTATIC java/lang/Double.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                return;
            }
            if (cls == Short.TYPE || cls == Short.class) {
                debug("INVOKESTATIC java/lang/Short.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                return;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                debug("INVOKESTATIC java/lang/Long.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                return;
            } else if (cls == Byte.TYPE || cls == Byte.class) {
                debug("INVOKESTATIC java/lang/Byte.valueOf");
                this.mv.visitMethodInsn(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                return;
            } else {
                if (cls == Character.TYPE || cls == Character.class) {
                    debug("INVOKESTATIC java/lang/Character.valueOf");
                    this.mv.visitMethodInsn(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
                    return;
                }
                return;
            }
        }
        debug("** Using 1.4 Bytecode **");
        if (cls == cls4 || cls == Boolean.class) {
            debug("NEW java/lang/Boolean");
            this.mv.visitTypeInsn(187, "java/lang/Boolean");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Boolean.<init>::(Z)V");
            this.mv.visitMethodInsn(183, "java/lang/Boolean", "<init>", "(Z)V");
            return;
        }
        if (cls == cls3 || cls == Integer.class) {
            debug("NEW java/lang/Integer");
            this.mv.visitTypeInsn(187, "java/lang/Integer");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Integer.<init>::(I)V");
            this.mv.visitMethodInsn(183, "java/lang/Integer", "<init>", "(I)V");
            return;
        }
        if (cls == cls2 || cls == Float.class) {
            debug("NEW java/lang/Float");
            this.mv.visitTypeInsn(187, "java/lang/Float");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Float.<init>::(F)V");
            this.mv.visitMethodInsn(183, "java/lang/Float", "<init>", "(F)V");
            return;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            debug("NEW java/lang/Double");
            this.mv.visitTypeInsn(187, "java/lang/Double");
            debug("DUP X2");
            this.mv.visitInsn(91);
            debug("DUP X2");
            this.mv.visitInsn(91);
            debug("POP");
            this.mv.visitInsn(87);
            debug("INVOKESPECIAL java/lang/Double.<init>::(D)V");
            this.mv.visitMethodInsn(183, "java/lang/Double", "<init>", "(D)V");
            return;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            debug("NEW java/lang/Short");
            this.mv.visitTypeInsn(187, "java/lang/Short");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Short.<init>::(S)V");
            this.mv.visitMethodInsn(183, "java/lang/Short", "<init>", "(S)V");
            return;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            debug("NEW java/lang/Long");
            this.mv.visitTypeInsn(187, "java/lang/Long");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Long.<init>::(L)V");
            this.mv.visitMethodInsn(183, "java/lang/Float", "<init>", "(L)V");
            return;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            debug("NEW java/lang/Byte");
            this.mv.visitTypeInsn(187, "java/lang/Byte");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Byte.<init>::(B)V");
            this.mv.visitMethodInsn(183, "java/lang/Byte", "<init>", "(B)V");
            return;
        }
        if (cls == Character.TYPE || cls == Character.class) {
            debug("NEW java/lang/Character");
            this.mv.visitTypeInsn(187, "java/lang/Character");
            debug("DUP X1");
            this.mv.visitInsn(90);
            debug("SWAP");
            this.mv.visitInsn(95);
            debug("INVOKESPECIAL java/lang/Character.<init>::(C)V");
            this.mv.visitMethodInsn(183, "java/lang/Character", "<init>", "(C)V");
        }
    }

    private void anyArrayCheck(Class cls) {
        if (cls == boolean[].class) {
            this.mv.visitTypeInsn(192, "[Z");
            return;
        }
        if (cls == int[].class) {
            this.mv.visitTypeInsn(192, "[I");
            return;
        }
        if (cls == float[].class) {
            this.mv.visitTypeInsn(192, "[F");
            return;
        }
        if (cls == double[].class) {
            this.mv.visitTypeInsn(192, "[D");
            return;
        }
        if (cls == short[].class) {
            this.mv.visitTypeInsn(192, "[S");
            return;
        }
        if (cls == long[].class) {
            this.mv.visitTypeInsn(192, "[J");
            return;
        }
        if (cls == byte[].class) {
            this.mv.visitTypeInsn(192, "[B");
            return;
        }
        MethodVisitor methodVisitor = this.mv;
        if (cls == char[].class) {
            methodVisitor.visitTypeInsn(192, "[C");
        } else {
            methodVisitor.visitTypeInsn(192, "[Ljava/lang/Object;");
        }
    }

    private void writeOutLiteralWrapped(Object obj) {
        if (obj instanceof Integer) {
            intPush(((Integer) obj).intValue());
            wrapPrimitive(Integer.TYPE);
            return;
        }
        if (obj instanceof String) {
            this.mv.visitLdcInsn(obj);
            return;
        }
        if (obj instanceof Long) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Long.TYPE);
            return;
        }
        if (obj instanceof Float) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Float.TYPE);
            return;
        }
        if (obj instanceof Double) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Double.TYPE);
            return;
        }
        if (obj instanceof Short) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Short.TYPE);
            return;
        }
        if (obj instanceof Character) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Character.TYPE);
        } else if (obj instanceof Boolean) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Boolean.TYPE);
        } else if (obj instanceof Byte) {
            this.mv.visitLdcInsn(obj);
            wrapPrimitive(Byte.TYPE);
        }
    }

    public static int toPrimitiveTypeOperand(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return 10;
        }
        if (cls == Long.TYPE) {
            return 11;
        }
        if (cls == Double.TYPE) {
            return 7;
        }
        if (cls == Float.TYPE) {
            return 6;
        }
        if (cls == Short.TYPE) {
            return 9;
        }
        if (cls == Byte.TYPE) {
            return 8;
        }
        if (cls == Character.TYPE) {
            return 5;
        }
        if (cls == Boolean.TYPE) {
            return 4;
        }
        DexMaker$$ExternalSyntheticBUOutline0.m223m("Non-primitive type passed to toPrimitiveTypeOperand: ", cls);
        return 0;
    }

    private void createArray(Class cls, int i) {
        intPush(i);
        boolean zIsPrimitive = cls.isPrimitive();
        MethodVisitor methodVisitor = this.mv;
        if (zIsPrimitive) {
            methodVisitor.visitIntInsn(188, toPrimitiveTypeOperand(cls));
        } else {
            methodVisitor.visitTypeInsn(189, Type.getInternalName(cls));
        }
    }

    public void arrayStore(Class cls) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                this.mv.visitInsn(79);
                return;
            }
            if (cls == Character.TYPE) {
                this.mv.visitInsn(85);
                return;
            }
            if (cls == Boolean.TYPE) {
                this.mv.visitInsn(84);
                return;
            }
            if (cls == Double.TYPE) {
                this.mv.visitInsn(82);
                return;
            }
            if (cls == Float.TYPE) {
                this.mv.visitInsn(81);
                return;
            }
            if (cls == Short.TYPE) {
                this.mv.visitInsn(86);
                return;
            } else if (cls == Long.TYPE) {
                this.mv.visitInsn(80);
                return;
            } else {
                if (cls == Byte.TYPE) {
                    this.mv.visitInsn(84);
                    return;
                }
                return;
            }
        }
        this.mv.visitInsn(83);
    }

    public void wrapRuntimeConverstion(Class cls) {
        ldcClassConstant(getWrapperClass(cls));
        this.mv.visitMethodInsn(184, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
    }

    private Object addSubstatement(ExecutableStatement executableStatement) {
        this.compiledInputs.add(executableStatement);
        this.mv.visitVarInsn(25, 0);
        MethodVisitor methodVisitor = this.mv;
        String str = this.className;
        StringBuilder sb = new StringBuilder("p");
        sb.append(this.compiledInputs.size() - 1);
        methodVisitor.visitFieldInsn(180, str, sb.toString(), "L" + NAMESPACE + "compiler/ExecutableStatement;");
        this.mv.visitVarInsn(25, 2);
        this.mv.visitVarInsn(25, 3);
        this.mv.visitMethodInsn(185, Type.getInternalName(ExecutableStatement.class), "getValue", "(Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
        return null;
    }

    private void loadVariableByName(String str) {
        this.mv.visitVarInsn(25, 3);
        this.mv.visitLdcInsn(str);
        this.mv.visitMethodInsn(185, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "integration/VariableResolverFactory", "getVariableResolver", "(Ljava/lang/String;)L" + NAMESPACE + "integration/VariableResolver;");
        this.mv.visitMethodInsn(185, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "integration/VariableResolver", "getValue", "()Ljava/lang/Object;");
        this.returnType = Object.class;
    }

    private void loadVariableByIndex(int i) {
        this.mv.visitVarInsn(25, 3);
        intPush(i);
        this.mv.visitMethodInsn(185, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "integration/VariableResolverFactory", "getIndexedVariableResolver", "(I)L" + NAMESPACE + "integration/VariableResolver;");
        this.mv.visitMethodInsn(185, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "integration/VariableResolver", "getValue", "()Ljava/lang/Object;");
        this.returnType = Object.class;
    }

    private void loadField(int i) {
        this.mv.visitVarInsn(25, 0);
        this.mv.visitFieldInsn(180, this.className, "p" + i, "L" + NAMESPACE + "compiler/ExecutableStatement;");
    }

    private void ldcClassConstant(Class cls) {
        int i = OPCODES_VERSION;
        MethodVisitor methodVisitor = this.mv;
        if (i == 48) {
            methodVisitor.visitLdcInsn(cls.getName());
            this.mv.visitMethodInsn(184, "java/lang/Class", "forName", "(Ljava/lang/String;)Ljava/lang/Class;");
            Label label = new Label();
            this.mv.visitJumpInsn(167, label);
            this.mv.visitTypeInsn(187, "java/lang/NoClassDefFoundError");
            this.mv.visitInsn(90);
            this.mv.visitInsn(95);
            this.mv.visitMethodInsn(182, "java/lang/Throwable", "getMessage", "()Ljava/lang/String;");
            this.mv.visitMethodInsn(183, "java/lang/NoClassDefFoundError", "<init>", "(Ljava/lang/String;)V");
            this.mv.visitInsn(191);
            this.mv.visitLabel(label);
            return;
        }
        methodVisitor.visitLdcInsn(Type.getType((Class<?>) cls));
    }

    private void buildInputs() {
        if (this.compiledInputs.size() == 0) {
            return;
        }
        StringAppender stringAppender = new StringAppender("(");
        int size = this.compiledInputs.size();
        for (int i = 0; i < size; i++) {
            this.cw.visitField(2, "p" + i, "L" + NAMESPACE + "compiler/ExecutableStatement;", null, null).visitEnd();
            stringAppender.append("L" + NAMESPACE + "compiler/ExecutableStatement;");
        }
        stringAppender.append(")V");
        MethodVisitor methodVisitorVisitMethod = this.cw.visitMethod(1, "<init>", stringAppender.toString(), null, null);
        methodVisitorVisitMethod.visitCode();
        methodVisitorVisitMethod.visitVarInsn(25, 0);
        methodVisitorVisitMethod.visitMethodInsn(183, "java/lang/Object", "<init>", "()V");
        int i2 = 0;
        while (i2 < size) {
            methodVisitorVisitMethod.visitVarInsn(25, 0);
            int i3 = i2 + 1;
            methodVisitorVisitMethod.visitVarInsn(25, i3);
            methodVisitorVisitMethod.visitFieldInsn(181, this.className, "p" + i2, "L" + NAMESPACE + "compiler/ExecutableStatement;");
            i2 = i3;
        }
        methodVisitorVisitMethod.visitInsn(177);
        methodVisitorVisitMethod.visitMaxs(0, 0);
        methodVisitorVisitMethod.visitEnd();
    }

    private int _getAccessor(Object obj, Class cls) {
        int i;
        Class<?> nonPrimitiveArray;
        if (obj instanceof List) {
            this.mv.visitTypeInsn(187, LIST_IMPL);
            this.mv.visitInsn(89);
            this.mv.visitInsn(89);
            List list = (List) obj;
            intPush(list.size());
            this.mv.visitMethodInsn(183, LIST_IMPL, "<init>", "(I)V");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (_getAccessor(it.next(), cls) != 3) {
                    this.mv.visitInsn(87);
                }
                this.mv.visitMethodInsn(185, "java/util/List", "add", "(Ljava/lang/Object;)Z");
                this.mv.visitInsn(87);
                this.mv.visitInsn(89);
            }
            this.returnType = List.class;
            return 1;
        }
        if (obj instanceof Map) {
            this.mv.visitTypeInsn(187, MAP_IMPL);
            this.mv.visitInsn(89);
            this.mv.visitInsn(89);
            Map map = (Map) obj;
            intPush(map.size());
            this.mv.visitMethodInsn(183, MAP_IMPL, "<init>", "(I)V");
            for (Object obj2 : map.keySet()) {
                this.mv.visitTypeInsn(192, "java/util/Map");
                if (_getAccessor(obj2, cls) != 3) {
                    this.mv.visitInsn(87);
                }
                if (_getAccessor(map.get(obj2), cls) != 3) {
                    this.mv.visitInsn(87);
                }
                this.mv.visitMethodInsn(185, "java/util/Map", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
                this.mv.visitInsn(87);
                this.mv.visitInsn(89);
            }
            this.returnType = Map.class;
            return 2;
        }
        if (obj instanceof Object[]) {
            Accessor[] accessorArr = new Accessor[((Object[]) obj).length];
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
                Class subComponentType = ParseTools.getSubComponentType(cls);
                createArray(subComponentType, ((Object[]) obj).length);
                if (i > 1) {
                    nonPrimitiveArray = ParseTools.findClass(null, ParseTools.repeatChar('[', i - 1) + "L" + ParseTools.getBaseComponentType(cls).getName() + ";", this.pCtx);
                } else {
                    nonPrimitiveArray = ReflectionUtil.toNonPrimitiveArray(cls);
                }
                this.mv.visitInsn(89);
                int i2 = 0;
                for (Object obj3 : (Object[]) obj) {
                    intPush(i2);
                    if (_getAccessor(obj3, nonPrimitiveArray) != 3) {
                        this.mv.visitInsn(87);
                    }
                    if (subComponentType.isPrimitive()) {
                        unwrapPrimitive(subComponentType);
                    }
                    arrayStore(subComponentType);
                    this.mv.visitInsn(89);
                    i2++;
                }
                return 0;
            } catch (ClassNotFoundException e) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("this error should never throw:".concat(ParseTools.getBaseComponentType(cls).getName()), e);
                return 0;
            }
        }
        if (cls.isArray()) {
            writeLiteralOrSubexpression(ParseTools.subCompileExpression(((String) obj).toCharArray(), this.pCtx), ParseTools.getSubComponentType(cls));
        } else {
            writeLiteralOrSubexpression(ParseTools.subCompileExpression(((String) obj).toCharArray(), this.pCtx));
        }
        return 3;
    }

    private Class writeLiteralOrSubexpression(Object obj) {
        return writeLiteralOrSubexpression(obj, null, null);
    }

    private Class writeLiteralOrSubexpression(Object obj, Class cls) {
        return writeLiteralOrSubexpression(obj, cls, null);
    }

    private Class writeLiteralOrSubexpression(Object obj, Class cls, Class cls2) {
        Class cls3;
        if (obj instanceof ExecutableLiteral) {
            ExecutableLiteral executableLiteral = (ExecutableLiteral) obj;
            Object literal = executableLiteral.getLiteral();
            if (literal == null) {
                this.mv.visitInsn(1);
                return null;
            }
            Class<?> cls4 = literal.getClass();
            if (cls4 == Integer.class && cls == (cls3 = Integer.TYPE)) {
                intPush(executableLiteral.getInteger32());
                return cls3;
            }
            if (cls != null && cls != cls4) {
                if (!DataConversion.canConvert(cls4, cls)) {
                    Sign$$ExternalSyntheticBUOutline0.m1012m("was expecting type: " + cls.getName() + "; but found type: " + cls4.getName(), this.expr, this.st);
                    return null;
                }
                writeOutLiteralWrapped(DataConversion.convert(literal, cls));
                return cls4;
            }
            writeOutLiteralWrapped(literal);
            return cls4;
        }
        this.literal = false;
        ExecutableStatement executableStatement = (ExecutableStatement) obj;
        addSubstatement(executableStatement);
        if (cls2 == null) {
            cls2 = executableStatement.getKnownEgressType();
        }
        if (cls == null || cls2 == cls || !cls.isPrimitive()) {
            return cls2;
        }
        if (cls2 == null) {
            throw new OptimizationFailure("cannot optimize expression: " + new String(this.expr) + ": cannot determine ingress type for primitive output");
        }
        checkcast(cls2);
        unwrapPrimitive(cls);
        return cls2;
    }

    private void addPrintOut(String str) {
        this.mv.visitFieldInsn(178, "java/lang/System", "out", "Ljava/io/PrintStream;");
        this.mv.visitLdcInsn(str);
        this.mv.visitMethodInsn(182, "java/io/PrintStream", "println", "(Ljava/lang/String;)V");
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i, int i2, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) {
        int i3;
        this.expr = cArr;
        this.start = i;
        this.cursor = i;
        this.end = i + i2;
        this.length = i2;
        this.returnType = cls;
        this.compiledInputs = new ArrayList<>();
        this.ctx = obj2;
        this.thisRef = obj3;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        _initJIT();
        this.literal = true;
        _getAccessor(obj, cls);
        _finishJIT();
        try {
            Accessor accessor_initializeAccessor = _initializeAccessor();
            return (cArr == null || (i3 = this.length) <= i) ? accessor_initializeAccessor : new Union(parserContext, accessor_initializeAccessor, cArr, i, i3);
        } catch (Exception e) {
            throw new OptimizationFailure("could not optimize collection", e);
        }
    }

    private void checkcast(Class cls) {
        this.mv.visitTypeInsn(192, Type.getInternalName(cls));
    }

    private void intPush(int i) {
        if (i < 0 || i >= 6) {
            if (i > -127 && i < 128) {
                this.mv.visitIntInsn(16, i);
                return;
            }
            MethodVisitor methodVisitor = this.mv;
            if (i > 32767) {
                methodVisitor.visitLdcInsn(Integer.valueOf(i));
                return;
            } else {
                methodVisitor.visitIntInsn(17, i);
                return;
            }
        }
        if (i == 0) {
            this.mv.visitInsn(3);
            return;
        }
        if (i == 1) {
            this.mv.visitInsn(4);
            return;
        }
        if (i == 2) {
            this.mv.visitInsn(5);
            return;
        }
        if (i == 3) {
            this.mv.visitInsn(6);
        } else if (i == 4) {
            this.mv.visitInsn(7);
        } else {
            if (i != 5) {
                return;
            }
            this.mv.visitInsn(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r24v0, types: [int] */
    /* JADX WARN: Type inference failed for: r24v1, types: [org.mvel2.compiler.Accessor] */
    /* JADX WARN: Type inference failed for: r24v2 */
    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Accessor optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i, int i2, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str;
        String str2;
        _initJIT();
        this.compiledInputs = new ArrayList<>();
        this.cursor = i;
        this.start = i;
        int i3 = i + i2;
        this.end = i3;
        this.length = i3 - i;
        this.ctx = obj;
        this.thisRef = obj2;
        this.variableFactory = variableResolverFactory;
        this.pCtx = parserContext;
        String[] strArrCaptureContructorAndResidual = ParseTools.captureContructorAndResidual(cArr, i, i2);
        int i4 = 0;
        List<char[]> methodOrConstructor = ParseTools.parseMethodOrConstructor(strArrCaptureContructorAndResidual[0].toCharArray());
        try {
            try {
                if (methodOrConstructor != null) {
                    try {
                        Iterator<char[]> it = methodOrConstructor.iterator();
                        while (it.hasNext()) {
                            this.compiledInputs.add((ExecutableStatement) ParseTools.subCompileExpression(it.next(), parserContext));
                        }
                        Class clsFindClass = ParseTools.findClass(variableResolverFactory, new String(ParseTools.subset(cArr, 0, ArrayTools.findFirst('(', i, this.length, cArr))), parserContext);
                        this.mv.visitTypeInsn(187, Type.getInternalName(clsFindClass));
                        this.mv.visitInsn(89);
                        int size = methodOrConstructor.size();
                        Object[] objArr = new Object[size];
                        ArrayList<ExecutableStatement> arrayList = this.compiledInputs;
                        int size2 = arrayList.size();
                        int i5 = 0;
                        while (i4 < size2) {
                            ExecutableStatement executableStatement = arrayList.get(i4);
                            i4++;
                            objArr[i5] = executableStatement.getValue(obj, variableResolverFactory);
                            i5++;
                        }
                        Constructor bestConstructorCandidate = ParseTools.getBestConstructorCandidate(objArr, clsFindClass, parserContext.isStrongTyping());
                        if (bestConstructorCandidate == null) {
                            StringBuilder sb = new StringBuilder();
                            int i6 = 0;
                            while (i6 < size) {
                                sb.append(objArr[i6].getClass().getName());
                                i6++;
                                if (i6 < size) {
                                    sb.append(", ");
                                }
                            }
                            throw new CompileException("unable to find constructor: " + clsFindClass.getName() + "(" + sb.toString() + ")", this.expr, this.st);
                        }
                        this.returnType = bestConstructorCandidate.getDeclaringClass();
                        Class<?>[] parameterTypes = bestConstructorCandidate.getParameterTypes();
                        int i7 = -1;
                        Class<?> baseComponentType = null;
                        int i8 = 0;
                        while (i8 < methodOrConstructor.size()) {
                            if (i8 < parameterTypes.length) {
                                baseComponentType = parameterTypes[i8];
                                if (bestConstructorCandidate.isVarArgs() && i8 == parameterTypes.length - 1) {
                                    baseComponentType = ParseTools.getBaseComponentType(baseComponentType);
                                    createArray(baseComponentType, methodOrConstructor.size() - i8);
                                    i7 = i8;
                                }
                            } else if (i7 < 0 || baseComponentType == null) {
                                throw new IllegalStateException("Incorrect argument count " + i8);
                            }
                            if (i7 >= 0) {
                                this.mv.visitInsn(89);
                                intPush(i8 - i7);
                            }
                            Class cls = clsFindClass;
                            this.mv.visitVarInsn(25, 0);
                            StringBuilder sb2 = new StringBuilder();
                            Constructor constructor = bestConstructorCandidate;
                            sb2.append("L");
                            sb2.append(NAMESPACE);
                            sb2.append("compiler/ExecutableStatement;");
                            this.mv.visitFieldInsn(180, this.className, "p" + i8, sb2.toString());
                            this.mv.visitVarInsn(25, 2);
                            this.mv.visitVarInsn(25, 3);
                            this.mv.visitMethodInsn(185, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "compiler/ExecutableStatement", "getValue", "(Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
                            Class<?> wrapperClass = baseComponentType.isPrimitive() ? getWrapperClass(baseComponentType) : baseComponentType;
                            Object obj3 = objArr[i8];
                            if (obj3 != null && !obj3.getClass().isAssignableFrom(baseComponentType)) {
                                ldcClassConstant(wrapperClass);
                                Class<?> cls2 = wrapperClass;
                                this.mv.visitMethodInsn(184, _UrlKt.FRAGMENT_ENCODE_SET + NAMESPACE + "DataConversion", "convert", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
                                if (baseComponentType.isPrimitive()) {
                                    unwrapPrimitive(baseComponentType);
                                } else {
                                    this.mv.visitTypeInsn(192, Type.getInternalName(cls2));
                                }
                            } else {
                                this.mv.visitTypeInsn(192, Type.getInternalName(baseComponentType));
                            }
                            if (i7 >= 0) {
                                arrayStore(baseComponentType);
                            }
                            i8++;
                            clsFindClass = cls;
                            bestConstructorCandidate = constructor;
                        }
                        Class cls3 = clsFindClass;
                        Constructor constructor2 = bestConstructorCandidate;
                        if (i8 < parameterTypes.length && constructor2.isVarArgs()) {
                            createArray(ParseTools.getBaseComponentType(parameterTypes[i8]), 0);
                        }
                        this.mv.visitMethodInsn(183, Type.getInternalName(cls3), "<init>", Type.getConstructorDescriptor(constructor2));
                        _finishJIT();
                        Accessor accessor_initializeAccessor = _initializeAccessor();
                        return (strArrCaptureContructorAndResidual.length <= 1 || (str = strArrCaptureContructorAndResidual[1]) == null || str.trim().equals(_UrlKt.FRAGMENT_ENCODE_SET)) ? accessor_initializeAccessor : new Union(parserContext, accessor_initializeAccessor, strArrCaptureContructorAndResidual[1].toCharArray(), 0, strArrCaptureContructorAndResidual[1].length());
                    } catch (ClassNotFoundException unused) {
                        i2 = 0;
                        Sign$$ExternalSyntheticBUOutline0.m1012m("class or class reference not found: ".concat(new String(cArr)), cArr, this.st);
                        return i2;
                    }
                }
                Class clsFindClass2 = ParseTools.findClass(variableResolverFactory, new String(cArr), parserContext);
                this.mv.visitTypeInsn(187, Type.getInternalName(clsFindClass2));
                this.mv.visitInsn(89);
                this.mv.visitMethodInsn(183, Type.getInternalName(clsFindClass2), "<init>", Type.getConstructorDescriptor(clsFindClass2.getConstructor(EMPTYCLS)));
                _finishJIT();
                Accessor accessor_initializeAccessor2 = _initializeAccessor();
                return (strArrCaptureContructorAndResidual.length <= 1 || (str2 = strArrCaptureContructorAndResidual[1]) == null || str2.trim().equals(_UrlKt.FRAGMENT_ENCODE_SET)) ? accessor_initializeAccessor2 : new Union(parserContext, accessor_initializeAccessor2, strArrCaptureContructorAndResidual[1].toCharArray(), 0, strArrCaptureContructorAndResidual[1].length());
            } catch (Exception e) {
                throw new OptimizationFailure("could not optimize construtor: ".concat(new String(cArr)), e);
            }
        } catch (ClassNotFoundException unused2) {
        }
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public Class getEgressType() {
        return this.returnType;
    }

    private void dumpAdvancedDebugging() {
        if (this.buildLog == null) {
            return;
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder("JIT Compiler Dump for: <<");
        char[] cArr = this.expr;
        sb.append(cArr == null ? null : new String(cArr));
        sb.append(">>\n-------------------------------\n");
        printStream.println(sb.toString());
        System.out.println(this.buildLog.toString());
        System.out.println("\n<END OF DUMP>\n");
        if (MVEL.isFileDebugging()) {
            try {
                FileWriter debugFileWriter = ParseTools.getDebugFileWriter();
                debugFileWriter.write(this.buildLog.toString());
                debugFileWriter.flush();
                debugFileWriter.close();
            } catch (IOException unused) {
            }
        }
    }

    private Object propHandlerByteCode(String str, Object obj, Class cls) {
        PropertyHandler propertyHandler = PropertyHandlerFactory.getPropertyHandler(cls);
        if (propertyHandler instanceof ProducesBytecode) {
            ((ProducesBytecode) propertyHandler).produceBytecodeGet(this.mv, str, this.variableFactory);
            return propertyHandler.getProperty(str, obj, this.variableFactory);
        }
        GlShader$$ExternalSyntheticBUOutline1.m1109m("unable to compileShared: custom accessor does not support producing bytecode: ".concat(propertyHandler.getClass().getName()));
        return null;
    }

    private void propHandlerByteCodePut(String str, Object obj, Class cls, Object obj2) {
        PropertyHandler propertyHandler = PropertyHandlerFactory.getPropertyHandler(cls);
        if (propertyHandler instanceof ProducesBytecode) {
            ((ProducesBytecode) propertyHandler).produceBytecodePut(this.mv, str, this.variableFactory);
            propertyHandler.setProperty(str, obj, this.variableFactory, obj2);
        } else {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("unable to compileShared: custom accessor does not support producing bytecode: ".concat(propertyHandler.getClass().getName()));
        }
    }

    private void writeOutNullHandler(Member member, int i) {
        this.mv.visitInsn(89);
        Label label = new Label();
        this.mv.visitJumpInsn(199, label);
        this.mv.visitInsn(87);
        this.mv.visitVarInsn(25, 0);
        if (i == 0) {
            this.propNull = true;
            this.mv.visitFieldInsn(180, this.className, "nullPropertyHandler", "L" + NAMESPACE + "integration/PropertyHandler;");
        } else {
            this.methNull = true;
            this.mv.visitFieldInsn(180, this.className, "nullMethodHandler", "L" + NAMESPACE + "integration/PropertyHandler;");
        }
        this.mv.visitLdcInsn(member.getName());
        this.mv.visitVarInsn(25, 1);
        this.mv.visitVarInsn(25, 3);
        this.mv.visitMethodInsn(185, NAMESPACE + "integration/PropertyHandler", "getProperty", "(Ljava/lang/String;Ljava/lang/Object;L" + NAMESPACE + "integration/VariableResolverFactory;)Ljava/lang/Object;");
        this.mv.visitLabel(label);
    }

    @Override // org.mvel2.optimizers.AccessorOptimizer
    public boolean isLiteralOnly() {
        return this.literal;
    }
}
