package com.chaquo.python;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Reflector {
    private static Map<Class<?>, Reflector> instances = new HashMap();
    private Map<String, Class<?>> classes;
    private Map<String, Field> fields;
    private final Class<?> klass;
    private Map<String, Member> methods;
    private Map<String, List<Member>> multipleMethods;

    private boolean isAccessible(int i) {
        return (i & 5) != 0;
    }

    public static Reflector getInstance(Class<?> cls) {
        Reflector reflector = instances.get(cls);
        if (reflector != null) {
            return reflector;
        }
        Reflector reflector2 = new Reflector(cls);
        instances.put(cls, reflector2);
        return reflector2;
    }

    private Reflector(Class<?> cls) {
        this.klass = cls;
    }

    public synchronized String[] dir() {
        HashSet hashSet;
        try {
            if (this.methods == null) {
                loadMethods();
            }
            if (this.fields == null) {
                loadFields();
            }
            if (this.classes == null) {
                loadClasses();
            }
            hashSet = new HashSet();
            hashSet.addAll(this.methods.keySet());
            hashSet.addAll(this.multipleMethods.keySet());
            hashSet.addAll(this.fields.keySet());
            hashSet.addAll(this.classes.keySet());
        } catch (Throwable th) {
            throw th;
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    public synchronized Member[] getMethods(String str) {
        try {
            if (this.methods == null) {
                loadMethods();
            }
            List<Member> list = this.multipleMethods.get(str);
            if (list != null) {
                return (Member[]) list.toArray(new Member[0]);
            }
            Member member = this.methods.get(str);
            if (member == null) {
                return null;
            }
            return new Member[]{member};
        } catch (Throwable th) {
            throw th;
        }
    }

    private void loadMethods() {
        this.methods = new HashMap();
        this.multipleMethods = new HashMap();
        for (Member member : this.klass.getDeclaredConstructors()) {
            if (isAccessible(member)) {
                loadMethod(member, "<init>");
            }
        }
        for (Method method : getDeclaredMethods()) {
            if (isAccessible(method)) {
                loadMethod(method, method.getName());
            }
        }
    }

    private Collection<Method> getDeclaredMethods() {
        try {
            return Arrays.asList(this.klass.getDeclaredMethods());
        } catch (NoClassDefFoundError unused) {
            HashSet hashSet = new HashSet();
            try {
                for (Method method : this.klass.getMethods()) {
                    if (method.getDeclaringClass() == this.klass) {
                        try {
                            method.getReturnType();
                            method.getParameterTypes();
                            hashSet.add(method);
                        } catch (NoClassDefFoundError unused2) {
                        }
                    }
                }
            } catch (NoClassDefFoundError unused3) {
            }
            Class<?> superclass = this.klass;
            while (true) {
                superclass = superclass.getSuperclass();
                if (superclass == null) {
                    return hashSet;
                }
                for (Method method2 : getInstance(superclass).getDeclaredMethods()) {
                    try {
                        hashSet.add(this.klass.getDeclaredMethod(method2.getName(), method2.getParameterTypes()));
                    } catch (NoSuchMethodException unused4) {
                    }
                }
            }
        }
    }

    private void loadMethod(Member member, String str) {
        Member memberRemove = this.methods.remove(str);
        if (memberRemove != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(memberRemove);
            arrayList.add(member);
            this.multipleMethods.put(str, arrayList);
            return;
        }
        List<Member> list = this.multipleMethods.get(str);
        if (list != null) {
            list.add(member);
        } else {
            this.methods.put(str, member);
        }
    }

    public synchronized Field getField(String str) {
        try {
            if (this.fields == null) {
                loadFields();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.fields.get(str);
    }

    private void loadFields() {
        this.fields = new HashMap();
        for (Field field : getDeclaredFields()) {
            if (isAccessible(field)) {
                this.fields.put(field.getName(), field);
            }
        }
    }

    private Collection<Field> getDeclaredFields() {
        try {
            return Arrays.asList(this.klass.getDeclaredFields());
        } catch (NoClassDefFoundError unused) {
            HashSet hashSet = new HashSet();
            try {
                for (Field field : this.klass.getFields()) {
                    if (field.getDeclaringClass() == this.klass) {
                        try {
                            field.getType();
                            hashSet.add(field);
                        } catch (NoClassDefFoundError unused2) {
                        }
                    }
                }
            } catch (NoClassDefFoundError unused3) {
            }
            return hashSet;
        }
    }

    public synchronized Class<?> getNestedClass(String str) {
        try {
            if (this.classes == null) {
                loadClasses();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.classes.get(str);
    }

    private void loadClasses() {
        this.classes = new HashMap();
        for (Class<?> cls : this.klass.getDeclaredClasses()) {
            if (isAccessible(cls.getModifiers())) {
                String simpleName = cls.getSimpleName();
                if (!simpleName.isEmpty()) {
                    this.classes.put(simpleName, cls);
                }
            }
        }
    }

    private boolean isAccessible(Member member) {
        return isAccessible(member.getModifiers()) && !member.isSynthetic();
    }
}
