package org.mvel2;

import java.io.PrintStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import okhttp3.internal.url._UrlKt;
import org.mvel2.ast.FunctionInstance;
import org.mvel2.ast.InvokationContextFactory;
import org.mvel2.ast.Proto;
import org.mvel2.ast.PrototypalFunctionInstance;
import org.mvel2.ast.TypeDescriptor;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.integration.GlobalListenerFactory;
import org.mvel2.integration.PropertyHandlerFactory;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.util.ErrorUtil;
import org.mvel2.util.MethodStub;
import org.mvel2.util.ParseTools;
import org.mvel2.util.PropertyTools;
import org.mvel2.util.ReflectionUtil;
import org.mvel2.util.StringAppender;
import org.mvel2.util.Varargs;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes5.dex */
public class PropertyAccessor {
    private static final int COL = 2;
    private static final int METH = 1;
    private static final int NORM = 0;
    private static final int WITH = 3;
    private Object ctx;
    private Object curr;
    private Class currType;
    private int cursor;
    private int end;
    private boolean first;
    private int length;
    private boolean nullHandle;
    private ParserContext pCtx;
    private char[] property;

    /* JADX INFO: renamed from: st */
    private int f1558st;
    private int start;
    private Object thisReference;
    private VariableResolverFactory variableFactory;
    private static final Object[] EMPTYARG = new Object[0];
    private static final Map<Class, WeakHashMap<Integer, WeakReference<Member>>> READ_PROPERTY_RESOLVER_CACHE = DesugarCollections.synchronizedMap(new WeakHashMap(10));
    private static final Map<Class, WeakHashMap<Integer, WeakReference<Member>>> WRITE_PROPERTY_RESOLVER_CACHE = DesugarCollections.synchronizedMap(new WeakHashMap(10));
    private static final Map<Class, WeakHashMap<Integer, WeakReference<Object[]>>> METHOD_RESOLVER_CACHE = DesugarCollections.synchronizedMap(new WeakHashMap(10));
    private static final Map<Member, WeakReference<Class[]>> METHOD_PARMTYPES_CACHE = DesugarCollections.synchronizedMap(new WeakHashMap(10));

    public PropertyAccessor(String str, Object obj) {
        this.start = 0;
        this.cursor = 0;
        this.currType = null;
        this.first = true;
        this.nullHandle = false;
        char[] charArray = str.toCharArray();
        this.property = charArray;
        int length = charArray.length;
        this.end = length;
        this.length = length;
        this.ctx = obj;
        this.variableFactory = new ImmutableDefaultFactory();
    }

    public PropertyAccessor(char[] cArr, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        this.start = 0;
        this.cursor = 0;
        this.currType = null;
        this.first = true;
        this.nullHandle = false;
        this.property = cArr;
        int length = cArr.length;
        this.end = length;
        this.length = length;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
        this.thisReference = obj2;
        this.pCtx = parserContext;
    }

    public PropertyAccessor(char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        this.currType = null;
        this.first = true;
        this.nullHandle = false;
        this.property = cArr;
        this.start = i;
        this.f1558st = i;
        this.cursor = i;
        this.length = i2;
        this.end = i + i2;
        this.ctx = obj;
        this.variableFactory = variableResolverFactory;
        this.thisReference = obj2;
        this.pCtx = parserContext;
    }

    public static Object get(String str, Object obj) {
        return new PropertyAccessor(str, obj).get();
    }

    public static Object get(char[] cArr, int i, int i2, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        return new PropertyAccessor(cArr, i, i2, obj, variableResolverFactory, obj2, parserContext).get();
    }

    public static Object get(String str, Object obj, VariableResolverFactory variableResolverFactory, Object obj2, ParserContext parserContext) {
        return new PropertyAccessor(str.toCharArray(), obj, variableResolverFactory, obj2, parserContext).get();
    }

    public static void set(Object obj, String str, Object obj2) {
        new PropertyAccessor(str, obj).set(obj2);
    }

    public static void set(Object obj, VariableResolverFactory variableResolverFactory, String str, Object obj2, ParserContext parserContext) {
        new PropertyAccessor(str.toCharArray(), obj, variableResolverFactory, null, parserContext).set(obj2);
    }

    private Object get() {
        this.curr = this.ctx;
        try {
            if (!MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING) {
                return getNormal();
            }
            return getAllowOverride();
        } catch (IllegalAccessException e) {
            throw new PropertyAccessException("could not access property", this.property, this.cursor, e, this.pCtx);
        } catch (IndexOutOfBoundsException e2) {
            int i = this.cursor;
            int i2 = this.length;
            if (i >= i2) {
                this.cursor = i2 - 1;
            }
            throw new PropertyAccessException("array or collections index out of bounds in property: " + new String(this.property, this.cursor, this.length), this.property, this.cursor, e2, this.pCtx);
        } catch (NullPointerException e3) {
            throw new PropertyAccessException("null pointer exception in property: " + new String(this.property), this.property, this.cursor, e3, this.pCtx);
        } catch (InvocationTargetException e4) {
            throw new PropertyAccessException("could not access property", this.property, this.cursor, e4, this.pCtx);
        } catch (CompileException e5) {
            throw ErrorUtil.rewriteIfNeeded(e5, this.property, this.f1558st);
        } catch (Exception e6) {
            throw new PropertyAccessException("unknown exception in expression: " + new String(this.property), this.property, this.cursor, e6, this.pCtx);
        }
    }

    private Object getNormal() {
        while (this.cursor < this.end) {
            int iNextToken = nextToken();
            if (iNextToken == 0) {
                this.curr = getBeanProperty(this.curr, capture());
            } else if (iNextToken == 1) {
                this.curr = getMethod(this.curr, capture());
            } else if (iNextToken == 2) {
                this.curr = getCollectionProperty(this.curr, capture());
            } else if (iNextToken == 3) {
                this.curr = getWithProperty(this.curr);
            }
            if (this.nullHandle) {
                if (this.curr == null) {
                    return null;
                }
                this.nullHandle = false;
            }
            this.first = false;
        }
        return this.curr;
    }

    private Object getAllowOverride() {
        while (this.cursor < this.end) {
            int iNextToken = nextToken();
            if (iNextToken == 0) {
                Object beanPropertyAO = getBeanPropertyAO(this.curr, capture());
                this.curr = beanPropertyAO;
                if (beanPropertyAO == null && PropertyHandlerFactory.hasNullPropertyHandler()) {
                    this.curr = PropertyHandlerFactory.getNullPropertyHandler().getProperty(capture(), this.ctx, this.variableFactory);
                }
            } else if (iNextToken == 1) {
                Object method = getMethod(this.curr, capture());
                this.curr = method;
                if (method == null && PropertyHandlerFactory.hasNullMethodHandler()) {
                    this.curr = PropertyHandlerFactory.getNullMethodHandler().getProperty(capture(), this.ctx, this.variableFactory);
                }
            } else if (iNextToken == 2) {
                this.curr = getCollectionPropertyAO(this.curr, capture());
            } else if (iNextToken == 3) {
                this.curr = getWithProperty(this.curr);
            }
            if (this.nullHandle) {
                if (this.curr == null) {
                    return null;
                }
                this.nullHandle = false;
            } else if (this.curr == null && this.cursor < this.end) {
                throw null;
            }
            this.first = false;
        }
        return this.curr;
    }

    private void set(Object obj) {
        this.curr = this.ctx;
        try {
            int i = this.end;
            this.end = ParseTools.findAbsoluteLast(this.property);
            Object obj2 = get();
            this.curr = obj2;
            if (obj2 == null) {
                throw new PropertyAccessException("cannot bind to null context: " + new String(this.property, this.cursor, this.length), this.property, this.cursor, this.pCtx);
            }
            this.end = i;
            if (nextToken() == 2) {
                int i2 = this.cursor + 1;
                this.cursor = i2;
                whiteSpaceSkip();
                if (this.cursor == this.length || scanTo(']')) {
                    throw new PropertyAccessException("unterminated '['", this.property, this.cursor, this.pCtx);
                }
                String str = new String(this.property, i2, this.cursor - i2);
                if (!MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING) {
                    Object obj3 = this.curr;
                    if (obj3 instanceof Map) {
                        ((Map) obj3).put(MVEL.eval(str, this.ctx, this.variableFactory), obj);
                        return;
                    }
                    if (obj3 instanceof List) {
                        ((List) obj3).set(((Integer) MVEL.eval(str, this.ctx, this.variableFactory, Integer.class)).intValue(), obj);
                        return;
                    }
                    if (PropertyHandlerFactory.hasPropertyHandler(obj3.getClass())) {
                        PropertyHandlerFactory.getPropertyHandler(this.curr.getClass()).setProperty(str, this.ctx, this.variableFactory, obj);
                        return;
                    }
                    if (this.curr.getClass().isArray()) {
                        Array.set(this.curr, ((Integer) MVEL.eval(str, this.ctx, this.variableFactory, Integer.class)).intValue(), DataConversion.convert(obj, ParseTools.getBaseComponentType(this.curr.getClass())));
                        return;
                    }
                    throw new PropertyAccessException("cannot bind to collection property: " + new String(this.property) + ": not a recognized collection type: " + this.ctx.getClass(), this.property, this.cursor, this.pCtx);
                }
                GlobalListenerFactory.notifySetListeners(this.ctx, str, this.variableFactory, obj);
                Object obj4 = this.curr;
                if (obj4 instanceof Map) {
                    if (PropertyHandlerFactory.hasPropertyHandler(Map.class)) {
                        PropertyHandlerFactory.getPropertyHandler(Map.class).setProperty(str, this.curr, this.variableFactory, obj);
                        return;
                    } else {
                        ((Map) this.curr).put(MVEL.eval(str, this.ctx, this.variableFactory), obj);
                        return;
                    }
                }
                if (obj4 instanceof List) {
                    if (PropertyHandlerFactory.hasPropertyHandler(List.class)) {
                        PropertyHandlerFactory.getPropertyHandler(List.class).setProperty(str, this.curr, this.variableFactory, obj);
                        return;
                    } else {
                        ((List) this.curr).set(((Integer) MVEL.eval(str, this.ctx, this.variableFactory, Integer.class)).intValue(), obj);
                        return;
                    }
                }
                if (obj4.getClass().isArray()) {
                    if (PropertyHandlerFactory.hasPropertyHandler(Array.class)) {
                        PropertyHandlerFactory.getPropertyHandler(Array.class).setProperty(str, this.curr, this.variableFactory, obj);
                        return;
                    } else {
                        Array.set(this.curr, ((Integer) MVEL.eval(str, this.ctx, this.variableFactory, Integer.class)).intValue(), DataConversion.convert(obj, ParseTools.getBaseComponentType(this.curr.getClass())));
                        return;
                    }
                }
                if (PropertyHandlerFactory.hasPropertyHandler(this.curr.getClass())) {
                    PropertyHandlerFactory.getPropertyHandler(this.curr.getClass()).setProperty(str, this.curr, this.variableFactory, obj);
                    return;
                }
                throw new PropertyAccessException("cannot bind to collection property: " + new String(this.property) + ": not a recognized collection type: " + this.ctx.getClass(), this.property, this.cursor, this.pCtx);
            }
            if (MVEL.COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING && PropertyHandlerFactory.hasPropertyHandler(this.curr.getClass())) {
                PropertyHandlerFactory.getPropertyHandler(this.curr.getClass()).setProperty(capture(), this.curr, this.variableFactory, obj);
                return;
            }
            String strCapture = capture();
            Member memberCheckWriteCache = checkWriteCache(this.curr.getClass(), Integer.valueOf(strCapture == null ? 0 : strCapture.hashCode()));
            if (memberCheckWriteCache == null) {
                Class<?> cls = this.curr.getClass();
                Integer numValueOf = Integer.valueOf(strCapture != null ? strCapture.hashCode() : -1);
                Member fieldOrWriteAccessor = obj != null ? PropertyTools.getFieldOrWriteAccessor(this.curr.getClass(), strCapture, obj.getClass()) : PropertyTools.getFieldOrWriteAccessor(this.curr.getClass(), strCapture);
                addWriteCache(cls, numValueOf, fieldOrWriteAccessor);
                memberCheckWriteCache = fieldOrWriteAccessor;
            }
            if (memberCheckWriteCache instanceof Method) {
                Method method = (Method) memberCheckWriteCache;
                Class[] clsArrCheckParmTypesCache = checkParmTypesCache(method);
                if (obj != null && !clsArrCheckParmTypesCache[0].isAssignableFrom(obj.getClass())) {
                    if (!DataConversion.canConvert(clsArrCheckParmTypesCache[0], obj.getClass())) {
                        throw new CompileException("cannot convert type: " + obj.getClass() + ": to " + method.getParameterTypes()[0], this.property, this.cursor);
                    }
                    method.invoke(this.curr, DataConversion.convert(obj, clsArrCheckParmTypesCache[0]));
                    return;
                }
                method.invoke(this.curr, obj);
                return;
            }
            if (memberCheckWriteCache != null) {
                Field field = (Field) memberCheckWriteCache;
                if (obj != null && !field.getType().isAssignableFrom(obj.getClass())) {
                    if (!DataConversion.canConvert(field.getType(), obj.getClass())) {
                        throw new CompileException("cannot convert type: " + obj.getClass() + ": to " + field.getType(), this.property, this.cursor);
                    }
                    field.set(this.curr, DataConversion.convert(obj, field.getType()));
                    return;
                }
                field.set(this.curr, obj);
                return;
            }
            Object obj5 = this.curr;
            if (obj5 instanceof Map) {
                ((Map) obj5).put(MVEL.eval(strCapture, this.ctx, this.variableFactory), obj);
                return;
            }
            if (obj5 instanceof FunctionInstance) {
                ((PrototypalFunctionInstance) obj5).getResolverFactory().getVariableResolver(strCapture).setValue(obj);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("could not access/write property (");
            sb.append(strCapture);
            sb.append(") in: ");
            Object obj6 = this.curr;
            sb.append(obj6 == null ? "Unknown" : obj6.getClass().getName());
            throw new PropertyAccessException(sb.toString(), this.property, this.cursor, this.pCtx);
        } catch (IllegalAccessException e) {
            throw new PropertyAccessException("could not access property", this.property, this.f1558st, e, this.pCtx);
        } catch (InvocationTargetException e2) {
            throw new PropertyAccessException("could not access property", this.property, this.f1558st, e2, this.pCtx);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ab A[LOOP:2: B:46:0x00ab->B:48:0x00b7, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a4 A[EDGE_INSN: B:65:0x00a4->B:44:0x00a4 BREAK  A[LOOP:1: B:39:0x0090->B:67:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int nextToken() {
        int i;
        int i2;
        int i3;
        char[] cArr = this.property;
        int i4 = this.cursor;
        this.f1558st = i4;
        char c = cArr[i4];
        if (c == '.') {
            while (true) {
                int i5 = this.cursor;
                if (i5 >= this.end || !ParseTools.isWhitespace(this.property[i5])) {
                    break;
                }
                this.cursor++;
            }
            int i6 = this.f1558st;
            if (i6 + 1 != this.end) {
                char[] cArr2 = this.property;
                int i7 = i6 + 1;
                this.f1558st = i7;
                this.cursor = i7;
                char c2 = cArr2[i7];
                if (c2 == '?') {
                    int i8 = i6 + 2;
                    this.f1558st = i8;
                    this.cursor = i8;
                    this.nullHandle = true;
                } else if (c2 == '{') {
                    return 3;
                }
            }
        } else {
            if (c != '?') {
                if (c == '[') {
                    return 2;
                }
                if (c == '{' && cArr[i4 - 1] == '.') {
                    return 3;
                }
            }
            while (true) {
                i = this.cursor;
                if (i < this.end || !ParseTools.isWhitespace(this.property[i])) {
                    i2 = this.cursor;
                    if (i2 >= this.end || this.property[i2] != '.') {
                        break;
                    }
                    this.cursor = i2 + 1;
                } else {
                    this.cursor++;
                }
            }
            this.f1558st = i2;
            do {
                i3 = this.cursor + 1;
                this.cursor = i3;
                if (i3 < this.end) {
                    break;
                }
            } while (Character.isJavaIdentifierPart(this.property[i3]));
            if (this.cursor < this.end) {
                return 0;
            }
            while (ParseTools.isWhitespace(this.property[this.cursor])) {
                this.cursor++;
            }
            char c3 = this.property[this.cursor];
            if (c3 != '(') {
                return c3 != '[' ? 0 : 2;
            }
            return 1;
        }
        if (this.cursor == this.start) {
            int i9 = this.f1558st + 1;
            this.f1558st = i9;
            this.cursor = i9;
            this.nullHandle = true;
        }
        while (true) {
            i = this.cursor;
            if (i < this.end) {
            }
            i2 = this.cursor;
            if (i2 >= this.end) {
                break;
            }
            break;
            break;
        }
        this.f1558st = i2;
        do {
            i3 = this.cursor + 1;
            this.cursor = i3;
            if (i3 < this.end) {
            }
        } while (Character.isJavaIdentifierPart(this.property[i3]));
        if (this.cursor < this.end) {
        }
    }

    private String capture() {
        return new String(this.property, this.f1558st, trimLeft(this.cursor) - this.f1558st);
    }

    protected int trimLeft(int i) {
        while (i > 0 && ParseTools.isWhitespace(this.property[i - 1])) {
            i--;
        }
        return i;
    }

    public static void clearPropertyResolverCache() {
        READ_PROPERTY_RESOLVER_CACHE.clear();
        WRITE_PROPERTY_RESOLVER_CACHE.clear();
        METHOD_RESOLVER_CACHE.clear();
    }

    public static void reportCacheSizes() {
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("read property cache: ");
        Map<Class, WeakHashMap<Integer, WeakReference<Member>>> map = READ_PROPERTY_RESOLVER_CACHE;
        sb.append(map.size());
        printStream.println(sb.toString());
        for (Class cls : map.keySet()) {
            System.out.println(" [" + cls.getName() + "]: " + READ_PROPERTY_RESOLVER_CACHE.get(cls).size() + " entries.");
        }
        PrintStream printStream2 = System.out;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("write property cache: ");
        Map<Class, WeakHashMap<Integer, WeakReference<Member>>> map2 = WRITE_PROPERTY_RESOLVER_CACHE;
        sb2.append(map2.size());
        printStream2.println(sb2.toString());
        for (Class cls2 : map2.keySet()) {
            System.out.println(" [" + cls2.getName() + "]: " + WRITE_PROPERTY_RESOLVER_CACHE.get(cls2).size() + " entries.");
        }
        PrintStream printStream3 = System.out;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("method cache: ");
        Map<Class, WeakHashMap<Integer, WeakReference<Object[]>>> map3 = METHOD_RESOLVER_CACHE;
        sb3.append(map3.size());
        printStream3.println(sb3.toString());
        for (Class cls3 : map3.keySet()) {
            System.out.println(" [" + cls3.getName() + "]: " + METHOD_RESOLVER_CACHE.get(cls3).size() + " entries.");
        }
    }

    private static void addReadCache(Class cls, Integer num, Member member) {
        Map<Class, WeakHashMap<Integer, WeakReference<Member>>> map = READ_PROPERTY_RESOLVER_CACHE;
        synchronized (map) {
            try {
                WeakHashMap<Integer, WeakReference<Member>> weakHashMap = map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap<>();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference<>(member));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Member checkReadCache(Class cls, Integer num) {
        WeakReference<Member> weakReference;
        WeakHashMap<Integer, WeakReference<Member>> weakHashMap = READ_PROPERTY_RESOLVER_CACHE.get(cls);
        if (weakHashMap == null || (weakReference = weakHashMap.get(num)) == null) {
            return null;
        }
        return weakReference.get();
    }

    private static void addWriteCache(Class cls, Integer num, Member member) {
        Map<Class, WeakHashMap<Integer, WeakReference<Member>>> map = WRITE_PROPERTY_RESOLVER_CACHE;
        synchronized (map) {
            try {
                WeakHashMap<Integer, WeakReference<Member>> weakHashMap = map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap<>();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference<>(member));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Member checkWriteCache(Class cls, Integer num) {
        WeakReference<Member> weakReference;
        WeakHashMap<Integer, WeakReference<Member>> weakHashMap = WRITE_PROPERTY_RESOLVER_CACHE.get(cls);
        if (weakHashMap == null || (weakReference = weakHashMap.get(num)) == null) {
            return null;
        }
        return weakReference.get();
    }

    public static Class[] checkParmTypesCache(Method method) {
        Class[] clsArr;
        Map<Member, WeakReference<Class[]>> map = METHOD_PARMTYPES_CACHE;
        WeakReference<Class[]> weakReference = map.get(method);
        if (weakReference != null && (clsArr = weakReference.get()) != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        map.put(method, new WeakReference<>(parameterTypes));
        return parameterTypes;
    }

    private static void addMethodCache(Class cls, Integer num, Method method) {
        Map<Class, WeakHashMap<Integer, WeakReference<Object[]>>> map = METHOD_RESOLVER_CACHE;
        synchronized (map) {
            try {
                WeakHashMap<Integer, WeakReference<Object[]>> weakHashMap = map.get(cls);
                if (weakHashMap == null) {
                    weakHashMap = new WeakHashMap<>();
                    map.put(cls, weakHashMap);
                }
                weakHashMap.put(num, new WeakReference<>(new Object[]{method, method.getParameterTypes()}));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Object[] checkMethodCache(Class cls, Integer num) {
        WeakReference<Object[]> weakReference;
        WeakHashMap<Integer, WeakReference<Object[]>> weakHashMap = METHOD_RESOLVER_CACHE.get(cls);
        if (weakHashMap == null || (weakReference = weakHashMap.get(num)) == null) {
            return null;
        }
        return weakReference.get();
    }

    private Object getBeanPropertyAO(Object obj, String str) {
        if (obj != null && PropertyHandlerFactory.hasPropertyHandler(obj.getClass())) {
            return PropertyHandlerFactory.getPropertyHandler(obj.getClass()).getProperty(str, obj, this.variableFactory);
        }
        GlobalListenerFactory.notifyGetListeners(obj, str, this.variableFactory);
        return getBeanProperty(obj, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0219, code lost:
    
        return getMethod(r8, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object getBeanProperty(Object obj, String str) {
        Class<?> cls;
        if (this.first) {
            if ("this".equals(str)) {
                return this.ctx;
            }
            if (AbstractParser.LITERALS.containsKey(str)) {
                return AbstractParser.LITERALS.get(str);
            }
            VariableResolverFactory variableResolverFactory = this.variableFactory;
            if (variableResolverFactory != null && variableResolverFactory.isResolveable(str)) {
                return this.variableFactory.getVariableResolver(str).getValue();
            }
        }
        if (obj != null) {
            boolean z = obj instanceof Class;
            if (z) {
                if (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && "class".equals(str)) {
                    return obj;
                }
                cls = (Class) obj;
            } else {
                cls = obj.getClass();
            }
            Member memberCheckReadCache = checkReadCache(cls, Integer.valueOf(str.hashCode()));
            if (memberCheckReadCache == null) {
                Integer numValueOf = Integer.valueOf(str.hashCode());
                Member fieldOrAccessor = PropertyTools.getFieldOrAccessor(cls, str);
                addReadCache(cls, numValueOf, fieldOrAccessor);
                memberCheckReadCache = fieldOrAccessor;
            }
            boolean z2 = false;
            if (memberCheckReadCache instanceof Method) {
                Method method = (Method) memberCheckReadCache;
                try {
                    return method.invoke(obj, EMPTYARG);
                } catch (IllegalAccessException unused) {
                    Method methodDetermineActualTargetMethod = ParseTools.determineActualTargetMethod(method);
                    if (methodDetermineActualTargetMethod != null) {
                        return methodDetermineActualTargetMethod.invoke(obj, EMPTYARG);
                    }
                    synchronized (memberCheckReadCache) {
                        try {
                            try {
                                method.setAccessible(true);
                                return method.invoke(obj, EMPTYARG);
                            } finally {
                                method.setAccessible(false);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (IllegalArgumentException e) {
                    if (memberCheckReadCache.getDeclaringClass().equals(obj)) {
                        try {
                            throw new CompileException("name collision between innerclass: " + Class.forName(memberCheckReadCache.getDeclaringClass().getName() + "$" + str).getCanonicalName() + "; and bean accessor: " + str + " (" + memberCheckReadCache.toString() + ")", this.property, this.f1558st);
                        } catch (ClassNotFoundException unused2) {
                            throw e;
                        }
                    }
                    throw e;
                }
            }
            if (memberCheckReadCache != null) {
                Field field = (Field) memberCheckReadCache;
                this.currType = ReflectionUtil.toNonPrimitiveType(field.getType());
                return field.get(obj);
            }
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.containsKey(str) || this.nullHandle) {
                    if (obj instanceof Proto.ProtoInstance) {
                        return ((Proto.ProtoInstance) obj).get((Object) str).call(null, this.thisReference, this.variableFactory, ParseTools.EMPTY_OBJ_ARR);
                    }
                    return map.get(str);
                }
            }
            if ("length".equals(str) && obj.getClass().isArray()) {
                return Integer.valueOf(Array.getLength(obj));
            }
            if (z) {
                Class cls2 = (Class) obj;
                for (Method method2 : cls2.getMethods()) {
                    if (str.equals(method2.getName())) {
                        ParserContext parserContext = this.pCtx;
                        return (parserContext == null || parserContext.getParserConfiguration() == null ? !MVEL.COMPILER_OPT_ALLOW_NAKED_METH_CALL : !this.pCtx.getParserConfiguration().isAllowNakedMethCall()) ? method2 : method2.invoke(obj, ParseTools.EMPTY_OBJ_ARR);
                    }
                }
                try {
                    return ParseTools.findClass(this.variableFactory, cls2.getName() + "$" + str, this.pCtx);
                } catch (ClassNotFoundException unused3) {
                }
            } else {
                if (PropertyHandlerFactory.hasPropertyHandler(cls)) {
                    return PropertyHandlerFactory.getPropertyHandler(cls).getProperty(str, obj, this.variableFactory);
                }
                if (obj instanceof FunctionInstance) {
                    return ((PrototypalFunctionInstance) obj).getResolverFactory().getVariableResolver(str).getValue();
                }
            }
        }
        Object objTryStaticAccess = tryStaticAccess();
        if (objTryStaticAccess != null) {
            return ((objTryStaticAccess instanceof Class) || (objTryStaticAccess instanceof Method)) ? objTryStaticAccess : ((Field) objTryStaticAccess).get(null);
        }
        if ((r0 = this.pCtx) != null) {
        }
        if (obj == null) {
            throw new PropertyAccessException("unresolvable property or identifier: " + str, this.property, this.f1558st, this.pCtx);
        }
        throw new PropertyAccessException("could not access: " + str + "; in class: " + obj.getClass().getName(), this.property, this.f1558st, this.pCtx);
    }

    private void whiteSpaceSkip() {
        if (this.cursor < this.end) {
            while (ParseTools.isWhitespace(this.property[this.cursor])) {
                int i = this.cursor + 1;
                this.cursor = i;
                if (i >= this.end) {
                    return;
                }
            }
        }
    }

    private boolean scanTo(char c) {
        while (true) {
            int i = this.cursor;
            int i2 = this.end;
            if (i >= i2) {
                return true;
            }
            char[] cArr = this.property;
            char c2 = cArr[i];
            if (c2 == '\"' || c2 == '\'') {
                this.cursor = ParseTools.captureStringLiteral(c2, cArr, i, i2);
            }
            char[] cArr2 = this.property;
            int i3 = this.cursor;
            if (cArr2[i3] == c) {
                return false;
            }
            this.cursor = i3 + 1;
        }
    }

    private Object getWithProperty(Object obj) {
        int i = this.start;
        String strTrim = i == this.cursor ? null : new String(this.property, i, (r1 - i) - 1).trim();
        char[] cArr = this.property;
        int i2 = this.cursor;
        int i3 = i2 + 1;
        int iBalancedCaptureWithLineAccounting = ParseTools.balancedCaptureWithLineAccounting(cArr, i2, this.end, '{', this.pCtx);
        this.cursor = iBalancedCaptureWithLineAccounting;
        ParseTools.parseWithExpressions(strTrim, cArr, i3, iBalancedCaptureWithLineAccounting - i3, obj, this.variableFactory);
        this.cursor++;
        return obj;
    }

    private Object getCollectionProperty(Object obj, String str) {
        if (str.length() != 0 && (obj = getBeanProperty(obj, str)) == null) {
            throw new NullPointerException("null pointer on indexed access for: " + str);
        }
        this.currType = null;
        int i = this.cursor + 1;
        this.cursor = i;
        whiteSpaceSkip();
        if (this.cursor == this.end || scanTo(']')) {
            throw new PropertyAccessException("unterminated '['", this.property, this.cursor, this.pCtx);
        }
        char[] cArr = this.property;
        int i2 = this.cursor;
        this.cursor = i2 + 1;
        String str2 = new String(cArr, i, i2 - i);
        if (obj instanceof Map) {
            return ((Map) obj).get(MVEL.eval(str2, obj, this.variableFactory));
        }
        if (obj instanceof List) {
            return ((List) obj).get(((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue());
        }
        if (obj instanceof Collection) {
            int iIntValue = ((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue();
            Collection collection = (Collection) obj;
            if (iIntValue > collection.size()) {
                throw new PropertyAccessException("index [" + iIntValue + "] out of bounds on collections", this.property, this.cursor, this.pCtx);
            }
            Iterator it = collection.iterator();
            for (int i3 = 0; i3 < iIntValue; i3++) {
                it.next();
            }
            return it.next();
        }
        if (obj.getClass().isArray()) {
            return Array.get(obj, ((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue());
        }
        if (obj instanceof CharSequence) {
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue()));
        }
        try {
            return TypeDescriptor.getClassReference(this.pCtx, (Class) obj, new TypeDescriptor(this.property, this.start, this.length, 0));
        } catch (Exception e) {
            throw new PropertyAccessException("illegal use of []: unknown type: " + obj.getClass().getName(), this.property, this.f1558st, e, this.pCtx);
        }
    }

    private Object getCollectionPropertyAO(Object obj, String str) {
        if (str.length() != 0) {
            obj = getBeanProperty(obj, str);
        }
        this.currType = null;
        if (obj == null) {
            return null;
        }
        int i = this.cursor + 1;
        this.cursor = i;
        whiteSpaceSkip();
        if (this.cursor == this.end || scanTo(']')) {
            throw new PropertyAccessException("unterminated '['", this.property, this.cursor, this.pCtx);
        }
        char[] cArr = this.property;
        int i2 = this.cursor;
        this.cursor = i2 + 1;
        String str2 = new String(cArr, i, i2 - i);
        if (obj instanceof Map) {
            if (PropertyHandlerFactory.hasPropertyHandler(Map.class)) {
                return PropertyHandlerFactory.getPropertyHandler(Map.class).getProperty(str2, obj, this.variableFactory);
            }
            return ((Map) obj).get(MVEL.eval(str2, obj, this.variableFactory));
        }
        if (obj instanceof List) {
            if (PropertyHandlerFactory.hasPropertyHandler(List.class)) {
                return PropertyHandlerFactory.getPropertyHandler(List.class).getProperty(str2, obj, this.variableFactory);
            }
            return ((List) obj).get(((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue());
        }
        if (obj instanceof Collection) {
            if (PropertyHandlerFactory.hasPropertyHandler(Collection.class)) {
                return PropertyHandlerFactory.getPropertyHandler(Collection.class).getProperty(str2, obj, this.variableFactory);
            }
            int iIntValue = ((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue();
            Collection collection = (Collection) obj;
            if (iIntValue > collection.size()) {
                throw new PropertyAccessException("index [" + iIntValue + "] out of bounds on collections", this.property, this.cursor, this.pCtx);
            }
            Iterator it = collection.iterator();
            for (int i3 = 0; i3 < iIntValue; i3++) {
                it.next();
            }
            return it.next();
        }
        if (obj.getClass().isArray()) {
            if (PropertyHandlerFactory.hasPropertyHandler(Array.class)) {
                return PropertyHandlerFactory.getPropertyHandler(Array.class).getProperty(str2, obj, this.variableFactory);
            }
            return Array.get(obj, ((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue());
        }
        if (obj instanceof CharSequence) {
            if (PropertyHandlerFactory.hasPropertyHandler(CharSequence.class)) {
                return PropertyHandlerFactory.getPropertyHandler(CharSequence.class).getProperty(str2, obj, this.variableFactory);
            }
            return Character.valueOf(((CharSequence) obj).charAt(((Integer) MVEL.eval(str2, obj, this.variableFactory)).intValue()));
        }
        try {
            char[] cArr2 = this.property;
            int i4 = this.start;
            return TypeDescriptor.getClassReference(this.pCtx, (Class) obj, new TypeDescriptor(cArr2, i4, this.end - i4, 0));
        } catch (Exception unused) {
            throw new PropertyAccessException("illegal use of []: unknown type: " + obj.getClass().getName(), this.property, this.f1558st, this.pCtx);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object getMethod(Object obj, String str) {
        String str2;
        Object[] objArr;
        Class<?>[] parameterTypes;
        Method bestCandidate;
        VariableResolverFactory variableResolverFactory;
        int i = this.cursor;
        if (i != this.end) {
            char[] cArr = this.property;
            if (cArr[i] == '(') {
                int iBalancedCapture = ParseTools.balancedCapture(cArr, i, '(');
                this.cursor = iBalancedCapture;
                str2 = iBalancedCapture - i > 1 ? new String(this.property, i + 1, (iBalancedCapture - i) - 1) : _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        this.cursor++;
        int i2 = 0;
        if (str2.length() == 0) {
            objArr = ParseTools.EMPTY_OBJ_ARR;
        } else {
            List<char[]> parameterList = ParseTools.parseParameterList(str2.toCharArray(), 0, -1);
            Object[] objArr2 = new Object[parameterList.size()];
            for (int i3 = 0; i3 < parameterList.size(); i3++) {
                objArr2[i3] = MVEL.eval(parameterList.get(i3), this.thisReference, this.variableFactory);
            }
            objArr = objArr2;
        }
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
                    functionInstance.getFunction().checkArgumentCount(objArr.length);
                    return functionInstance.call(null, this.thisReference, this.variableFactory, objArr);
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
        if (obj == null) {
            throw new CompileException("no such method or function: " + str, this.property, this.cursor);
        }
        boolean z = obj instanceof Class;
        Class<?> cls = this.currType;
        if (cls == null) {
            cls = z ? (Class) obj : obj.getClass();
        }
        this.currType = null;
        if (cls == Proto.ProtoInstance.class) {
            return ((Proto.ProtoInstance) obj).get((Object) str).call(null, this.thisReference, this.variableFactory, objArr);
        }
        Object[] objArrCheckMethodCache = checkMethodCache(cls, Integer.valueOf(createSignature(str, str2)));
        if (objArrCheckMethodCache != null) {
            bestCandidate = (Method) objArrCheckMethodCache[0];
            parameterTypes = (Class[]) objArrCheckMethodCache[1];
        } else {
            parameterTypes = null;
            bestCandidate = null;
        }
        if (bestCandidate == null) {
            bestCandidate = ParseTools.getBestCandidate(objArr, str, (Class) cls, cls.getMethods(), false);
            if (bestCandidate != null) {
                addMethodCache(cls, Integer.valueOf(createSignature(str, str2)), bestCandidate);
                parameterTypes = bestCandidate.getParameterTypes();
            }
            if (bestCandidate == null && z && (bestCandidate = ParseTools.getBestCandidate(objArr, str, (Class) cls, cls.getDeclaredMethods(), false)) != null) {
                addMethodCache(cls, Integer.valueOf(createSignature(str, str2)), bestCandidate);
                parameterTypes = bestCandidate.getParameterTypes();
            }
        }
        if (bestCandidate == null && cls != obj.getClass() && !z) {
            cls = obj.getClass();
            bestCandidate = ParseTools.getBestCandidate(objArr, str, (Class) cls, cls.getDeclaredMethods(), false);
            if (bestCandidate != null) {
                addMethodCache(cls, Integer.valueOf(createSignature(str, str2)), bestCandidate);
                parameterTypes = bestCandidate.getParameterTypes();
            }
        }
        if (obj instanceof PrototypalFunctionInstance) {
            VariableResolverFactory resolverFactory = ((PrototypalFunctionInstance) obj).getResolverFactory();
            Object value2 = resolverFactory.getVariableResolver(str).getValue();
            if (value2 instanceof PrototypalFunctionInstance) {
                return ((PrototypalFunctionInstance) value2).call(obj, this.thisReference, new InvokationContextFactory(this.variableFactory, resolverFactory), objArr);
            }
        }
        if (bestCandidate == null) {
            StringAppender stringAppender = new StringAppender();
            while (i2 < objArr.length) {
                Object obj2 = objArr[i2];
                stringAppender.append(obj2 != null ? obj2.getClass().getName() : null);
                if (i2 < objArr.length - 1) {
                    stringAppender.append(", ");
                }
                i2++;
            }
            if ("size".equals(str) && objArr.length == 0 && cls.isArray()) {
                return Integer.valueOf(Array.getLength(obj));
            }
            throw new PropertyAccessException("unable to resolve method: " + cls.getName() + "." + str + "(" + stringAppender.toString() + ") [arglength=" + objArr.length + "]", this.property, this.f1558st, this.pCtx);
        }
        while (i2 < objArr.length) {
            objArr[i2] = DataConversion.convert(objArr[i2], Varargs.paramTypeVarArgsSafe(parameterTypes, i2, bestCandidate.isVarArgs()));
            i2++;
        }
        this.currType = ReflectionUtil.toNonPrimitiveType(bestCandidate.getReturnType());
        try {
            try {
                return bestCandidate.invoke(obj, Varargs.normalizeArgsForVarArgs(parameterTypes, objArr, bestCandidate.isVarArgs()));
            } catch (Exception e) {
                throw new PropertyAccessException("unable to invoke method: " + str, this.property, this.cursor, e, this.pCtx);
            }
        } catch (IllegalAccessException unused) {
            Integer numValueOf = Integer.valueOf(createSignature(str, str2));
            Method widenedTarget = ParseTools.getWidenedTarget(bestCandidate);
            addMethodCache(cls, numValueOf, widenedTarget);
            return widenedTarget.invoke(obj, objArr);
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new PropertyAccessException("unable to invoke method: " + str, this.property, this.cursor, e3, this.pCtx);
        }
    }

    private static int createSignature(String str, String str2) {
        return str.hashCode() + str2.hashCode();
    }

    private ClassLoader getClassLoader() {
        ParserContext parserContext = this.pCtx;
        return parserContext != null ? parserContext.getClassLoader() : Thread.currentThread().getContextClassLoader();
    }

    /* JADX WARN: Removed duplicated region for block: B:128:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected Object tryStaticAccess() {
        int i;
        int i2 = this.cursor;
        try {
            int i3 = this.end;
            int i4 = i3 - 1;
            boolean z = false;
            while (true) {
                int i5 = this.start;
                if (i4 > i5) {
                    char[] cArr = this.property;
                    char c = cArr[i4];
                    if (c == '\"') {
                        while (true) {
                            i = i4 - 1;
                            if (i > 0) {
                                char[] cArr2 = this.property;
                                if (cArr2[i] != '\"' || cArr2[i4 - 2] == '\\') {
                                    i4 = i;
                                }
                            }
                        }
                    } else if (c != '\'') {
                        int i6 = 1;
                        if (c == ')') {
                            int i7 = i4 - 1;
                            int i8 = 1;
                            while (i7 > 0 && i8 != 0) {
                                char c2 = this.property[i7];
                                if (c2 != '\"') {
                                    switch (c2) {
                                        case '\'':
                                            while (i7 > 0) {
                                                char[] cArr3 = this.property;
                                                if (cArr3[i7] == c2 || cArr3[i7 - 1] == '\\') {
                                                }
                                                i7--;
                                                break;
                                            }
                                            break;
                                        case '(':
                                            i8--;
                                            break;
                                        case ')':
                                            i8++;
                                            break;
                                    }
                                }
                                i7--;
                            }
                            int i9 = i7;
                            i4 = i7 + 1;
                            i3 = i9;
                            z = true;
                        } else if (c == '.') {
                            if (!z) {
                                try {
                                    this.cursor = i3;
                                    String str = new String(cArr, i5, i3 - i5);
                                    if (MVEL.COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS && str.endsWith(".class")) {
                                        str = str.substring(0, str.length() - 6);
                                    }
                                    return getClassLoader().loadClass(str);
                                } catch (ClassNotFoundException unused) {
                                    ClassLoader classLoader = getClassLoader();
                                    char[] cArr4 = this.property;
                                    int i10 = this.start;
                                    Class<?> clsLoadClass = classLoader.loadClass(new String(cArr4, i10, i4 - i10));
                                    String str2 = new String(this.property, i4 + 1, (this.end - i4) - 1);
                                    try {
                                        return clsLoadClass.getField(str2);
                                    } catch (NoSuchFieldException unused2) {
                                        for (Method method : clsLoadClass.getMethods()) {
                                            if (str2.equals(method.getName())) {
                                                return method;
                                            }
                                        }
                                        return null;
                                    }
                                }
                            }
                            i3 = i4;
                            z = false;
                        } else if (c == '}') {
                            while (true) {
                                i4--;
                                if (i4 <= 0 || i6 == 0) {
                                    break;
                                }
                                char c3 = this.property[i4];
                                if (c3 == '\"' || c3 == '\'') {
                                    while (i4 > 0) {
                                        char[] cArr5 = this.property;
                                        if (cArr5[i4] == c3 || cArr5[i4 - 1] == '\\') {
                                            break;
                                        }
                                        i4--;
                                    }
                                } else if (c3 == '{') {
                                    i6--;
                                } else if (c3 == '}') {
                                    i6++;
                                }
                            }
                        }
                        i4--;
                    } else {
                        while (true) {
                            i = i4 - 1;
                            if (i > 0) {
                                char[] cArr6 = this.property;
                                if (cArr6[i] != '\'' || cArr6[i4 - 2] == '\\') {
                                    i4 = i;
                                }
                            }
                        }
                    }
                    i4 = i;
                    i4--;
                }
            }
        } catch (Exception unused3) {
            this.cursor = i2;
        }
        return null;
    }
}
