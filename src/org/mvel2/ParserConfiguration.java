package org.mvel2;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.ast.Proto;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.integration.Interceptor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ClassImportResolverFactory;
import org.mvel2.integration.impl.StackResetResolverFactory;
import org.mvel2.util.MethodStub;
import org.mvel2.util.ParseTools;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ParserConfiguration implements Serializable {
    protected transient ClassLoader classLoader;
    protected Map<String, Interceptor> interceptors;
    protected HashSet<String> packageImports;
    private VariableResolverFactory threadUnsafeVariableResolverFactory;
    protected final Map<String, Object> imports = new ConcurrentHashMap();
    private final transient Set<String> nonValidImports = Collections.newSetFromMap(new ConcurrentHashMap());
    private boolean allowNakedMethCall = MVEL.COMPILER_OPT_ALLOW_NAKED_METH_CALL;
    private boolean allowBootstrapBypass = true;

    public ParserConfiguration() {
    }

    public ParserConfiguration(Map<String, Object> map, Map<String, Interceptor> map2) {
        addAllImports(map);
        this.interceptors = map2;
    }

    public ParserConfiguration(Map<String, Object> map, HashSet<String> hashSet, Map<String, Interceptor> map2) {
        addAllImports(map);
        this.packageImports = hashSet;
        this.interceptors = map2;
    }

    public HashSet<String> getPackageImports() {
        return this.packageImports;
    }

    public void setPackageImports(HashSet<String> hashSet) {
        this.packageImports = hashSet;
    }

    public Class getImport(String str) {
        if (this.imports.containsKey(str) && (this.imports.get(str) instanceof Class)) {
            return (Class) this.imports.get(str);
        }
        return (Class) (AbstractParser.LITERALS.get(str) instanceof Class ? AbstractParser.LITERALS.get(str) : null);
    }

    public MethodStub getStaticImport(String str) {
        return (MethodStub) this.imports.get(str);
    }

    public Object getStaticOrClassImport(String str) {
        return this.imports.containsKey(str) ? this.imports.get(str) : AbstractParser.LITERALS.get(str);
    }

    public void addPackageImport(String str) {
        if (this.packageImports == null) {
            this.packageImports = new LinkedHashSet();
        }
        this.packageImports.add(str);
        if (addClassMemberStaticImports(str)) {
            return;
        }
        this.packageImports.add(str);
    }

    private boolean addClassMemberStaticImports(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e) {
            throw new RuntimeException("error adding static imports for: " + str, e);
        }
        if (cls.isEnum()) {
            for (Enum r2 : EnumSet.allOf(cls)) {
                this.imports.put(r2.name(), r2);
            }
            return true;
        }
        for (Field field : cls.getDeclaredFields()) {
            if ((field.getModifiers() & 9) == 9) {
                this.imports.put(field.getName(), field.get(null));
            }
        }
        return false;
    }

    public void addAllImports(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Method) {
                this.imports.put(entry.getKey(), new MethodStub((Method) value));
            } else {
                this.imports.put(entry.getKey(), value);
            }
        }
    }

    private boolean checkForDynamicImport(String str) {
        if (this.packageImports == null || !Character.isJavaIdentifierStart(str.charAt(0)) || this.nonValidImports.contains(str)) {
            return false;
        }
        Iterator<String> it = this.packageImports.iterator();
        Class clsForNameWithInner = null;
        int i = 0;
        while (it.hasNext()) {
            try {
                clsForNameWithInner = ParseTools.forNameWithInner(it.next() + "." + str, getClassLoader());
                i++;
            } catch (Throwable unused) {
            }
        }
        if (i > 1) {
            throw new RuntimeException("ambiguous class name: " + str);
        }
        if (i == 1) {
            addImport(str, clsForNameWithInner);
            return true;
        }
        cacheNegativeHitForDynamicImport(str);
        return false;
    }

    public boolean hasImport(String str) {
        return this.imports.containsKey(str) || AbstractParser.CLASS_LITERALS.containsKey(str) || checkForDynamicImport(str);
    }

    public void addImport(Class cls) {
        addImport(cls.getSimpleName(), cls);
    }

    public void addImport(String str, Class cls) {
        this.imports.put(str, cls);
    }

    public void addImport(String str, Proto proto) {
        this.imports.put(str, proto);
    }

    public void addImport(String str, Method method) {
        addImport(str, new MethodStub(method));
    }

    public void addImport(String str, MethodStub methodStub) {
        this.imports.put(str, methodStub);
    }

    public Map<String, Interceptor> getInterceptors() {
        return this.interceptors;
    }

    public void setInterceptors(Map<String, Interceptor> map) {
        this.interceptors = map;
    }

    public Map<String, Object> getImports() {
        return this.imports;
    }

    public void setImports(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Class) {
                addImport(entry.getKey(), (Class) value);
            } else if (value instanceof Method) {
                addImport(entry.getKey(), (Method) value);
            } else if (value instanceof MethodStub) {
                addImport(entry.getKey(), (MethodStub) value);
            } else if (value instanceof Proto) {
                addImport(entry.getKey(), (Proto) entry.getValue());
            } else {
                throw new RuntimeException("invalid element in imports map: " + entry.getKey() + " (" + value + ")");
            }
        }
    }

    public boolean hasImports() {
        if (!this.imports.isEmpty()) {
            return true;
        }
        HashSet<String> hashSet = this.packageImports;
        return (hashSet == null || hashSet.size() == 0) ? false : true;
    }

    public ClassLoader getClassLoader() {
        ClassLoader classLoader = this.classLoader;
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        this.classLoader = contextClassLoader;
        return contextClassLoader;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    public void setAllImports(Map<String, Object> map) {
        this.imports.clear();
        if (map != null) {
            this.imports.putAll(map);
        }
    }

    public void setImports(HashMap<String, Object> map) {
        setAllImports(map);
    }

    private void cacheNegativeHitForDynamicImport(String str) {
        this.nonValidImports.add(str);
    }

    public void flushCaches() {
        this.nonValidImports.clear();
    }

    public boolean isAllowNakedMethCall() {
        return this.allowNakedMethCall;
    }

    public void setAllowNakedMethCall(boolean z) {
        this.allowNakedMethCall = z;
    }

    public boolean isAllowBootstrapBypass() {
        return this.allowBootstrapBypass;
    }

    public void setAllowBootstrapBypass(boolean z) {
        this.allowBootstrapBypass = z;
    }

    public VariableResolverFactory getVariableFactory(VariableResolverFactory variableResolverFactory) {
        if (MVEL.RUNTIME_OPT_THREAD_UNSAFE) {
            VariableResolverFactory variableResolverFactory2 = this.threadUnsafeVariableResolverFactory;
            if (variableResolverFactory2 == null) {
                this.threadUnsafeVariableResolverFactory = createVariableResolverFactory(variableResolverFactory);
            } else if (variableResolverFactory2 instanceof StackResetResolverFactory) {
                ((StackResetResolverFactory) variableResolverFactory2).setDelegate(variableResolverFactory);
            } else {
                variableResolverFactory2.setNextFactory(variableResolverFactory);
            }
            return this.threadUnsafeVariableResolverFactory;
        }
        return createVariableResolverFactory(variableResolverFactory);
    }

    private VariableResolverFactory createVariableResolverFactory(VariableResolverFactory variableResolverFactory) {
        return hasImports() ? new ClassImportResolverFactory(this, variableResolverFactory, true) : new StackResetResolverFactory(variableResolverFactory);
    }
}
