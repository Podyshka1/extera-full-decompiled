package org.mvel2;

import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.compiler.ExpressionCompiler;
import org.mvel2.integration.Interceptor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.CachedMapVariableResolverFactory;
import org.mvel2.integration.impl.CachingMapVariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.optimizers.impl.refl.nodes.GetterAccessor;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes.dex */
public class MVEL {
    static boolean ADVANCED_DEBUG = false;
    static String ADVANCED_DEBUGGING_FILE = null;
    public static final String CODENAME = "liberty";
    public static boolean COMPILER_OPT_ALLOCATE_TYPE_LITERALS_TO_SHARED_SYMBOL_TABLE = false;
    public static boolean COMPILER_OPT_ALLOW_NAKED_METH_CALL = false;
    public static boolean COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING = false;
    public static boolean COMPILER_OPT_ALLOW_RESOLVE_INNERCLASSES_WITH_DOTNOTATION = false;
    public static boolean COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS = false;
    static boolean DEBUG_FILE = Boolean.getBoolean("mvel2.debug.fileoutput");
    public static boolean INVOKED_METHOD_EXCEPTIONS_BUBBLE = false;
    public static final String NAME = "MVEL (MVFLEX Expression Language)";
    static boolean NO_JIT = false;
    static boolean OPTIMIZER = false;
    public static boolean RUNTIME_OPT_THREAD_UNSAFE = false;
    public static final String VERSION = "2.3";
    public static final String VERSION_SUB = "0";
    static boolean WEAK_CACHE;

    static {
        ADVANCED_DEBUGGING_FILE = System.getProperty("mvel2.debugging.file") == null ? "mvel_debug.txt" : System.getProperty("mvel2.debugging.file");
        ADVANCED_DEBUG = Boolean.getBoolean("mvel2.advanced_debugging");
        WEAK_CACHE = Boolean.getBoolean("mvel2.weak_caching");
        NO_JIT = Boolean.getBoolean("mvel2.disable.jit");
        INVOKED_METHOD_EXCEPTIONS_BUBBLE = Boolean.getBoolean("mvel2.invoked_meth_exceptions_bubble");
        COMPILER_OPT_ALLOW_NAKED_METH_CALL = Boolean.getBoolean("mvel2.compiler.allow_naked_meth_calls");
        COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING = Boolean.getBoolean("mvel2.compiler.allow_override_all_prophandling");
        COMPILER_OPT_ALLOW_RESOLVE_INNERCLASSES_WITH_DOTNOTATION = Boolean.getBoolean("mvel2.compiler.allow_resolve_inner_classes_with_dotnotation");
        COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS = Boolean.getBoolean("mvel2.compiler.support_java_style_class_literals");
        COMPILER_OPT_ALLOCATE_TYPE_LITERALS_TO_SHARED_SYMBOL_TABLE = Boolean.getBoolean("mvel2.compiler.allocate_type_literals_to_shared_symbol_table");
        RUNTIME_OPT_THREAD_UNSAFE = Boolean.getBoolean("mvel2.runtime.thread_unsafe");
        OPTIMIZER = true;
        if (System.getProperty("mvel2.optimizer") != null) {
            OPTIMIZER = Boolean.getBoolean("mvel2.optimizer");
        }
    }

    private MVEL() {
    }

    public static boolean isAdvancedDebugging() {
        return ADVANCED_DEBUG;
    }

    public static String getDebuggingOutputFileName() {
        return ADVANCED_DEBUGGING_FILE;
    }

    public static boolean isFileDebugging() {
        return DEBUG_FILE;
    }

    public static Object eval(String str) {
        return new MVELInterpretedRuntime(str, (VariableResolverFactory) new ImmutableDefaultFactory()).parse();
    }

    public static Object eval(String str, Object obj) {
        return new MVELInterpretedRuntime(str, obj, new ImmutableDefaultFactory()).parse();
    }

    public static Object eval(String str, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(str, variableResolverFactory).parse();
    }

    public static Object eval(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(str, obj, variableResolverFactory).parse();
    }

    public static Object eval(String str, Map<String, Object> map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return new MVELInterpretedRuntime(str, (Object) null, cachingMapVariableResolverFactory).parse();
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static Object eval(String str, Object obj, Map<String, Object> map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return new MVELInterpretedRuntime(str, obj, cachingMapVariableResolverFactory).parse();
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static <T> T eval(String str, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(str).parse(), cls);
    }

    public static <T> T eval(String str, Object obj, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(str, obj).parse(), cls);
    }

    public static <T> T eval(String str, VariableResolverFactory variableResolverFactory, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(str, (Object) null, variableResolverFactory).parse(), cls);
    }

    public static <T> T eval(String str, Map<String, Object> map, Class<T> cls) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return (T) DataConversion.convert(new MVELInterpretedRuntime(str, (Object) null, cachingMapVariableResolverFactory).parse(), cls);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static <T> T eval(String str, Object obj, VariableResolverFactory variableResolverFactory, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(str, obj, variableResolverFactory).parse(), cls);
    }

    public static <T> T eval(String str, Object obj, Map<String, Object> map, Class<T> cls) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return (T) DataConversion.convert(new MVELInterpretedRuntime(str, obj, cachingMapVariableResolverFactory).parse(), cls);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static String evalToString(String str) {
        return String.valueOf(eval(str));
    }

    public static String evalToString(String str, Object obj) {
        return String.valueOf(eval(str, obj));
    }

    public static String evalToString(String str, VariableResolverFactory variableResolverFactory) {
        return String.valueOf(eval(str, variableResolverFactory));
    }

    public static String evalToString(String str, Map map) {
        return String.valueOf(eval(str, (Map<String, Object>) map));
    }

    public static String evalToString(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return String.valueOf(eval(str, obj, variableResolverFactory));
    }

    public static String evalToString(String str, Object obj, Map map) {
        return String.valueOf(eval(str, obj, (Map<String, Object>) map));
    }

    public static Object eval(char[] cArr) {
        return new MVELInterpretedRuntime(cArr, new ImmutableDefaultFactory()).parse();
    }

    public static Object eval(char[] cArr, Object obj) {
        return new MVELInterpretedRuntime(cArr, obj).parse();
    }

    public static <T> T eval(char[] cArr, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr).parse(), cls);
    }

    public static Object eval(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(cArr, obj, variableResolverFactory).parse();
    }

    public static Object eval(char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory) {
        return new MVELInterpretedRuntime(cArr, i, i2, obj, variableResolverFactory).parse();
    }

    public static <T> T eval(char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr, i, i2, obj, variableResolverFactory).parse(), cls);
    }

    public static Object eval(char[] cArr, Object obj, Map map) {
        return new MVELInterpretedRuntime(cArr, obj, (Map<String, Object>) map).parse();
    }

    public static <T> T eval(char[] cArr, Object obj, Map<String, Object> map, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr, obj, map).parse(), cls);
    }

    public static <T> T eval(char[] cArr, Object obj, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr, obj).parse(), cls);
    }

    public static <T> T eval(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr, obj, variableResolverFactory).parse(), cls);
    }

    public static <T> T eval(char[] cArr, VariableResolverFactory variableResolverFactory, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr, (Object) null, variableResolverFactory).parse(), cls);
    }

    public static <T> T eval(char[] cArr, Map<String, Object> map, Class<T> cls) {
        return (T) DataConversion.convert(new MVELInterpretedRuntime(cArr, (Object) null, map).parse(), cls);
    }

    public static Object evalFile(File file) {
        return _evalFile(file, null, new CachedMapVariableResolverFactory(new HashMap()));
    }

    public static Object evalFile(File file, String str) {
        return _evalFile(file, str, null, new CachedMapVariableResolverFactory(new HashMap()));
    }

    public static Object evalFile(File file, Object obj) {
        return _evalFile(file, obj, new CachedMapVariableResolverFactory(new HashMap()));
    }

    public static Object evalFile(File file, String str, Object obj) {
        return _evalFile(file, str, obj, new CachedMapVariableResolverFactory(new HashMap()));
    }

    public static Object evalFile(File file, Map<String, Object> map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return _evalFile(file, null, cachingMapVariableResolverFactory);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static Object evalFile(File file, Object obj, Map<String, Object> map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return _evalFile(file, obj, cachingMapVariableResolverFactory);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static Object evalFile(File file, String str, Object obj, Map<String, Object> map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return _evalFile(file, str, obj, cachingMapVariableResolverFactory);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static Object evalFile(File file, Object obj, VariableResolverFactory variableResolverFactory) {
        return _evalFile(file, obj, variableResolverFactory);
    }

    public static Object evalFile(File file, String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return _evalFile(file, str, obj, variableResolverFactory);
    }

    private static Object _evalFile(File file, Object obj, VariableResolverFactory variableResolverFactory) {
        return _evalFile(file, null, obj, variableResolverFactory);
    }

    private static Object _evalFile(File file, String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return eval(ParseTools.loadFromFile(file, str), obj, variableResolverFactory);
    }

    public static Boolean evalToBoolean(String str, Object obj, Map<String, Object> map) {
        return (Boolean) eval(str, obj, map, Boolean.class);
    }

    public static Boolean evalToBoolean(String str, Object obj) {
        return (Boolean) eval(str, obj, new ImmutableDefaultFactory(), Boolean.class);
    }

    public static Boolean evalToBoolean(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return (Boolean) eval(str, obj, variableResolverFactory, Boolean.class);
    }

    public static Boolean evalToBoolean(String str, VariableResolverFactory variableResolverFactory) {
        return (Boolean) eval(str, variableResolverFactory, Boolean.class);
    }

    public static Boolean evalToBoolean(String str, Map<String, Object> map) {
        return evalToBoolean(str, (Object) null, map);
    }

    public static void analysisCompile(char[] cArr, ParserContext parserContext) {
        ExpressionCompiler expressionCompiler = new ExpressionCompiler(cArr, parserContext);
        expressionCompiler.setVerifyOnly(true);
        expressionCompiler.compile();
    }

    public static void analysisCompile(String str, ParserContext parserContext) {
        analysisCompile(str.toCharArray(), parserContext);
    }

    public static Class analyze(char[] cArr, ParserContext parserContext) {
        ExpressionCompiler expressionCompiler = new ExpressionCompiler(cArr, parserContext);
        expressionCompiler.setVerifyOnly(true);
        expressionCompiler.compile();
        return expressionCompiler.getReturnType();
    }

    public static Class analyze(String str, ParserContext parserContext) {
        return analyze(str.toCharArray(), parserContext);
    }

    public static Serializable compileExpression(String str) {
        return compileExpression(str, (Map<String, Object>) null, (Map<String, Interceptor>) null, (String) null);
    }

    public static Serializable compileExpression(String str, Map<String, Object> map) {
        return compileExpression(str, map, (Map<String, Interceptor>) null, (String) null);
    }

    public static Serializable compileExpression(String str, Map<String, Object> map, Map<String, Interceptor> map2) {
        return compileExpression(str, map, map2, (String) null);
    }

    public static Serializable compileExpression(String str, ParserContext parserContext) {
        return ParseTools.optimizeTree(new ExpressionCompiler(str, parserContext).compile());
    }

    public static Serializable compileExpression(char[] cArr, int i, int i2, ParserContext parserContext) {
        return ParseTools.optimizeTree(new ExpressionCompiler(cArr, i, i2, parserContext)._compile());
    }

    public static Serializable compileExpression(String str, Map<String, Object> map, Map<String, Interceptor> map2, String str2) {
        return compileExpression(str, new ParserContext(map, map2, str2));
    }

    public static Serializable compileExpression(char[] cArr, ParserContext parserContext) {
        return ParseTools.optimizeTree(new ExpressionCompiler(cArr, parserContext).compile());
    }

    public static Serializable compileExpression(char[] cArr, Map<String, Object> map, Map<String, Interceptor> map2, String str) {
        return compileExpression(cArr, new ParserContext(map, map2, str));
    }

    public static Serializable compileExpression(char[] cArr) {
        return compileExpression(cArr, (Map<String, Object>) null, (Map<String, Interceptor>) null, (String) null);
    }

    public static Serializable compileExpression(char[] cArr, Map<String, Object> map) {
        return compileExpression(cArr, map, (Map<String, Interceptor>) null, (String) null);
    }

    public static Serializable compileExpression(char[] cArr, Map<String, Object> map, Map<String, Interceptor> map2) {
        return compileExpression(cArr, map, map2, (String) null);
    }

    public static Serializable compileGetExpression(String str) {
        return new CompiledAccExpression(str.toCharArray(), Object.class, new ParserContext());
    }

    public static Serializable compileGetExpression(String str, ParserContext parserContext) {
        return new CompiledAccExpression(str.toCharArray(), Object.class, parserContext);
    }

    public static Serializable compileGetExpression(char[] cArr) {
        return new CompiledAccExpression(cArr, Object.class, new ParserContext());
    }

    public static Serializable compileGetExpression(char[] cArr, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, Object.class, parserContext);
    }

    public static Serializable compileSetExpression(String str) {
        return new CompiledAccExpression(str.toCharArray(), Object.class, new ParserContext());
    }

    public static Serializable compileSetExpression(String str, ParserContext parserContext) {
        return new CompiledAccExpression(str.toCharArray(), Object.class, parserContext);
    }

    public static Serializable compileSetExpression(String str, Class cls, ParserContext parserContext) {
        return new CompiledAccExpression(str.toCharArray(), cls, parserContext);
    }

    public static Serializable compileSetExpression(char[] cArr) {
        return new CompiledAccExpression(cArr, Object.class, new ParserContext());
    }

    public static Serializable compileSetExpression(char[] cArr, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, Object.class, parserContext);
    }

    public static Serializable compileSetExpression(char[] cArr, int i, int i2, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, i, i2, Object.class, parserContext);
    }

    public static Serializable compileSetExpression(char[] cArr, Class cls, ParserContext parserContext) {
        return new CompiledAccExpression(cArr, cls, parserContext);
    }

    public static void executeSetExpression(Serializable serializable, Object obj, Object obj2) {
        ((CompiledAccExpression) serializable).setValue(obj, obj, new ImmutableDefaultFactory(), obj2);
    }

    public static void executeSetExpression(Serializable serializable, Object obj, VariableResolverFactory variableResolverFactory, Object obj2) {
        ((CompiledAccExpression) serializable).setValue(obj, obj, variableResolverFactory, obj2);
    }

    public static Object executeExpression(Object obj) {
        return ((ExecutableStatement) obj).getValue(null, new ImmutableDefaultFactory());
    }

    public static Object executeExpression(Object obj, Object obj2, Map map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = map != null ? new CachingMapVariableResolverFactory(map) : null;
        try {
            return ((ExecutableStatement) obj).getValue(obj2, cachingMapVariableResolverFactory);
        } finally {
            if (cachingMapVariableResolverFactory != null) {
                cachingMapVariableResolverFactory.externalize();
            }
        }
    }

    public static Object executeExpression(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return ((ExecutableStatement) obj).getValue(obj2, variableResolverFactory);
    }

    public static Object executeExpression(Object obj, VariableResolverFactory variableResolverFactory) {
        return ((ExecutableStatement) obj).getValue(null, variableResolverFactory);
    }

    public static Object executeExpression(Object obj, Object obj2) {
        return ((ExecutableStatement) obj).getValue(obj2, new ImmutableDefaultFactory());
    }

    public static Object executeExpression(Object obj, Map map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        try {
            return ((ExecutableStatement) obj).getValue(null, cachingMapVariableResolverFactory);
        } finally {
            cachingMapVariableResolverFactory.externalize();
        }
    }

    public static <T> T executeExpression(Object obj, Object obj2, Map map, Class<T> cls) {
        return (T) DataConversion.convert(executeExpression(obj, obj2, map), cls);
    }

    public static <T> T executeExpression(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Class<T> cls) {
        return (T) DataConversion.convert(executeExpression(obj, obj2, variableResolverFactory), cls);
    }

    public static <T> T executeExpression(Object obj, Map map, Class<T> cls) {
        return (T) DataConversion.convert(executeExpression(obj, map), cls);
    }

    public static <T> T executeExpression(Object obj, Object obj2, Class<T> cls) {
        return (T) DataConversion.convert(executeExpression(obj, obj2), cls);
    }

    public static void executeExpression(Iterable<CompiledExpression> iterable) {
        Iterator<CompiledExpression> it = iterable.iterator();
        while (it.hasNext()) {
            it.next().getValue(null, null);
        }
    }

    public static void executeExpression(Iterable<CompiledExpression> iterable, Object obj) {
        Iterator<CompiledExpression> it = iterable.iterator();
        while (it.hasNext()) {
            it.next().getValue(obj, null);
        }
    }

    public static void executeExpression(Iterable<CompiledExpression> iterable, Map map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        executeExpression(iterable, (Object) null, (VariableResolverFactory) cachingMapVariableResolverFactory);
        cachingMapVariableResolverFactory.externalize();
    }

    public static void executeExpression(Iterable<CompiledExpression> iterable, Object obj, Map map) {
        CachingMapVariableResolverFactory cachingMapVariableResolverFactory = new CachingMapVariableResolverFactory(map);
        executeExpression(iterable, obj, (VariableResolverFactory) cachingMapVariableResolverFactory);
        cachingMapVariableResolverFactory.externalize();
    }

    public static void executeExpression(Iterable<CompiledExpression> iterable, Object obj, VariableResolverFactory variableResolverFactory) {
        Iterator<CompiledExpression> it = iterable.iterator();
        while (it.hasNext()) {
            it.next().getValue(obj, variableResolverFactory);
        }
    }

    public static Object[] executeAllExpression(Serializable[] serializableArr, Object obj, VariableResolverFactory variableResolverFactory) {
        if (serializableArr == null) {
            return GetterAccessor.EMPTY;
        }
        Object[] objArr = new Object[serializableArr.length];
        for (int i = 0; i < serializableArr.length; i++) {
            objArr[i] = executeExpression(serializableArr[i], obj, variableResolverFactory);
        }
        return objArr;
    }

    public static Object executeDebugger(CompiledExpression compiledExpression, Object obj, VariableResolverFactory variableResolverFactory) {
        if (compiledExpression.isImportInjectionRequired()) {
            return MVELRuntime.execute(true, compiledExpression, obj, new ClassImportResolverFactory(compiledExpression.getParserConfiguration(), variableResolverFactory, false));
        }
        return MVELRuntime.execute(true, compiledExpression, obj, variableResolverFactory);
    }

    public static String parseMacros(String str, Map<String, Macro> map) {
        return new MacroProcessor(map).parse(str);
    }

    public static String preprocess(char[] cArr, PreProcessor[] preProcessorArr) {
        for (PreProcessor preProcessor : preProcessorArr) {
            cArr = preProcessor.parse(cArr);
        }
        return new String(cArr);
    }

    public static String preprocess(String str, PreProcessor[] preProcessorArr) {
        return preprocess(str.toCharArray(), preProcessorArr);
    }

    public static Object getProperty(String str, Object obj) {
        return PropertyAccessor.get(str, obj);
    }

    public static void setProperty(Object obj, String str, Object obj2) {
        PropertyAccessor.set(obj, str, obj2);
    }

    public static Method getStaticMethod(Class cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            if ((method.getModifiers() & 8) != 0) {
                return method;
            }
            throw new RuntimeException("method not a static method: " + str);
        } catch (NoSuchMethodException unused) {
            throw new RuntimeException("no such method: " + str);
        }
    }
}
