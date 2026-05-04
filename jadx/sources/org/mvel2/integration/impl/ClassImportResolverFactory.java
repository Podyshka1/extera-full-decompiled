package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.ParserConfiguration;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes5.dex */
public class ClassImportResolverFactory extends BaseVariableResolverFactory {
    private final ClassLoader classLoader;
    private Map<String, Object> dynImports;
    private final Map<String, Object> imports;
    private Set<String> packageImports;

    public void clear() {
    }

    public ClassImportResolverFactory(ParserConfiguration parserConfiguration, VariableResolverFactory variableResolverFactory, boolean z) {
        if (parserConfiguration != null) {
            if (!z) {
                this.packageImports = parserConfiguration.getPackageImports();
            }
            this.classLoader = parserConfiguration.getClassLoader();
            this.imports = DesugarCollections.unmodifiableMap(parserConfiguration.getImports());
        } else {
            this.classLoader = Thread.currentThread().getContextClassLoader();
            this.imports = null;
        }
        this.nextFactory = variableResolverFactory;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        if (this.nextFactory == null) {
            this.nextFactory = new MapVariableResolverFactory(new HashMap());
        }
        return this.nextFactory.createVariable(str, obj);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class cls) {
        if (this.nextFactory == null) {
            this.nextFactory = new MapVariableResolverFactory(new HashMap());
        }
        return this.nextFactory.createVariable(str, obj, cls);
    }

    public Class addClass(Class cls) {
        if (this.dynImports == null) {
            this.dynImports = new HashMap();
        }
        this.dynImports.put(cls.getSimpleName(), cls);
        return cls;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        if (str == null) {
            return false;
        }
        Map<String, Object> map = this.imports;
        if (map != null && map.containsKey(str)) {
            return true;
        }
        Map<String, Object> map2 = this.dynImports;
        return map2 != null && map2.containsKey(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        Map<String, Object> map;
        if (str == null) {
            return false;
        }
        Map<String, Object> map2 = this.imports;
        if ((map2 != null && map2.containsKey(str)) || (((map = this.dynImports) != null && map.containsKey(str)) || isNextResolveable(str))) {
            return true;
        }
        Set<String> set = this.packageImports;
        if (set != null) {
            for (String str2 : set) {
                try {
                    addClass(this.classLoader.loadClass(str2 + "." + str));
                    return true;
                } catch (ClassNotFoundException | NoClassDefFoundError unused) {
                }
            }
        }
        return false;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        if (isResolveable(str)) {
            Map<String, Object> map = this.imports;
            if (map != null && map.containsKey(str)) {
                return new SimpleValueResolver(this.imports.get(str));
            }
            Map<String, Object> map2 = this.dynImports;
            if (map2 != null && map2.containsKey(str)) {
                return new SimpleValueResolver(this.dynImports.get(str));
            }
            VariableResolverFactory variableResolverFactory = this.nextFactory;
            if (variableResolverFactory != null) {
                return variableResolverFactory.getVariableResolver(str);
            }
        }
        throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
    }

    public Map<String, Object> getImportedClasses() {
        return this.imports;
    }

    public void addPackageImport(String str) {
        if (this.packageImports == null) {
            this.packageImports = new HashSet();
        }
        this.packageImports.add(str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory == null ? new HashSet(0) : variableResolverFactory.getKnownVariables();
    }
}
