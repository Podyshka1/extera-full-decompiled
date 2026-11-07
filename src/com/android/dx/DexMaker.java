package com.android.dx;

import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.RopTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedField;
import com.android.dx.dex.file.EncodedMethod;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.OkHttpClient$Builder$$ExternalSyntheticBUOutline0;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public final class DexMaker {
    private static boolean didWarnBlacklistedMethods;
    private static boolean didWarnNonBaseDexClassLoader;
    private boolean markAsTrusted;
    private DexFile outputDex;
    private ClassLoader sharedClassLoader;
    private final Map<TypeId<?>, TypeDeclaration> types = new LinkedHashMap();

    public TypeDeclaration getTypeDeclaration(TypeId<?> typeId) {
        TypeDeclaration typeDeclaration = this.types.get(typeId);
        if (typeDeclaration != null) {
            return typeDeclaration;
        }
        TypeDeclaration typeDeclaration2 = new TypeDeclaration(typeId);
        this.types.put(typeId, typeDeclaration2);
        return typeDeclaration2;
    }

    public void declare(TypeId<?> typeId, String str, int i, TypeId<?> typeId2, TypeId<?>... typeIdArr) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(typeId);
        if ((i & (-5138)) != 0) {
            Buffer$$ExternalSyntheticBUOutline4.m919m("Unexpected flag: ", Integer.toHexString(i));
            return;
        }
        if (typeDeclaration.declared) {
            DexMaker$$ExternalSyntheticBUOutline0.m220m("already declared: ", typeId);
            return;
        }
        typeDeclaration.declared = true;
        typeDeclaration.flags = i;
        typeDeclaration.supertype = typeId2;
        typeDeclaration.sourceFile = str;
        typeDeclaration.interfaces = new TypeList(typeIdArr);
    }

    public Code declare(MethodId<?, ?> methodId, int i) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(methodId.declaringType);
        if (typeDeclaration.methods.containsKey(methodId)) {
            DexMaker$$ExternalSyntheticBUOutline0.m220m("already declared: ", methodId);
            return null;
        }
        if ((i & (-5504)) != 0) {
            Buffer$$ExternalSyntheticBUOutline4.m919m("Unexpected flag: ", Integer.toHexString(i));
            return null;
        }
        if ((i & 32) != 0) {
            i = (i & (-33)) | 131072;
        }
        if (methodId.isConstructor() || methodId.isStaticInitializer()) {
            i |= 65536;
        }
        MethodDeclaration methodDeclaration = new MethodDeclaration(methodId, i);
        typeDeclaration.methods.put(methodId, methodDeclaration);
        return methodDeclaration.code;
    }

    public void declare(FieldId<?, ?> fieldId, int i, Object obj) {
        TypeDeclaration typeDeclaration = getTypeDeclaration(fieldId.declaringType);
        if (typeDeclaration.fields.containsKey(fieldId)) {
            DexMaker$$ExternalSyntheticBUOutline0.m220m("already declared: ", fieldId);
            return;
        }
        if ((i & (-4320)) != 0) {
            Buffer$$ExternalSyntheticBUOutline4.m919m("Unexpected flag: ", Integer.toHexString(i));
        } else if ((i & 8) == 0 && obj != null) {
            f$$ExternalSyntheticBUOutline1.m212m("staticValue is non-null, but field is not static");
        } else {
            typeDeclaration.fields.put(fieldId, new FieldDeclaration(fieldId, i, obj));
        }
    }

    public byte[] generate() {
        if (this.outputDex == null) {
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            this.outputDex = new DexFile(dexOptions);
        }
        Iterator<TypeDeclaration> it = this.types.values().iterator();
        while (it.hasNext()) {
            this.outputDex.add(it.next().toClassDefItem());
        }
        try {
            return this.outputDex.toDex(null, false);
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
            return null;
        }
    }

    private String generateFileName() {
        Set<TypeId<?>> setKeySet = this.types.keySet();
        Iterator<TypeId<?>> it = setKeySet.iterator();
        int size = setKeySet.size();
        int[] iArr = new int[size];
        int i = 0;
        while (it.hasNext()) {
            TypeDeclaration typeDeclaration = getTypeDeclaration(it.next());
            Set setKeySet2 = typeDeclaration.methods.keySet();
            if (typeDeclaration.supertype != null) {
                iArr[i] = (((typeDeclaration.supertype.hashCode() * 31) + typeDeclaration.interfaces.hashCode()) * 31) + setKeySet2.hashCode();
                i++;
            }
        }
        Arrays.sort(iArr);
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return "Generated_" + i2 + ".jar";
    }

    public void setSharedClassLoader(ClassLoader classLoader) {
        this.sharedClassLoader = classLoader;
    }

    public void markAsTrusted() {
        this.markAsTrusted = true;
    }

    private ClassLoader generateClassLoader(File file, File file2, ClassLoader classLoader) {
        try {
            try {
                ClassLoader classLoader2 = this.sharedClassLoader;
                boolean z = false;
                boolean z2 = classLoader2 != null;
                if (classLoader == null) {
                    classLoader = classLoader2 != null ? classLoader2 : null;
                }
                Class<?> cls = Class.forName("dalvik.system.BaseDexClassLoader");
                if (!z2 || cls.isAssignableFrom(classLoader.getClass())) {
                    z = z2;
                } else if (!classLoader.getClass().getName().equals("java.lang.BootClassLoader") && !didWarnNonBaseDexClassLoader) {
                    System.err.println("Cannot share classloader as shared classloader '" + classLoader + "' is not a subclass of '" + cls + "'");
                    didWarnNonBaseDexClassLoader = true;
                }
                if (this.markAsTrusted) {
                    Class cls2 = Boolean.TYPE;
                    try {
                        if (z) {
                            classLoader.getClass().getMethod("addDexPath", String.class, cls2).invoke(classLoader, file.getPath(), Boolean.TRUE);
                            return classLoader;
                        }
                        return (ClassLoader) cls.getConstructor(String.class, File.class, String.class, ClassLoader.class, cls2).newInstance(file.getPath(), file2.getAbsoluteFile(), null, classLoader, Boolean.TRUE);
                    } catch (InvocationTargetException e) {
                        if (e.getCause() instanceof SecurityException) {
                            if (!didWarnBlacklistedMethods) {
                                System.err.println("Cannot allow to call blacklisted super methods. This might break spying on system classes." + e.getCause());
                                didWarnBlacklistedMethods = true;
                            }
                        } else {
                            throw e;
                        }
                    }
                }
                if (z) {
                    classLoader.getClass().getMethod("addDexPath", String.class).invoke(classLoader, file.getPath());
                    return classLoader;
                }
                return (ClassLoader) Class.forName("dalvik.system.DexClassLoader").getConstructor(String.class, String.class, String.class, ClassLoader.class).newInstance(file.getPath(), file2.getAbsolutePath(), null, classLoader);
            } catch (InvocationTargetException e2) {
                HttpUrl$$ExternalSyntheticBUOutline0.m899m(e2.getCause());
                return null;
            }
        } catch (ClassNotFoundException e3) {
            throw new UnsupportedOperationException("load() requires a Dalvik VM", e3);
        } catch (IllegalAccessException unused) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
            return null;
        } catch (InstantiationException unused2) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
            return null;
        } catch (NoSuchMethodException unused3) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
            return null;
        }
    }

    public ClassLoader generateAndLoad(ClassLoader classLoader, File file) throws IOException {
        if (file == null) {
            String property = System.getProperty("dexmaker.dexcache");
            if (property != null) {
                file = new File(property);
            } else {
                file = new AppDataDirGuesser().guess();
                if (file == null) {
                    f$$ExternalSyntheticBUOutline1.m212m("dexcache == null (and no default could be found; consider setting the 'dexmaker.dexcache' system property)");
                    return null;
                }
            }
        }
        File file2 = new File(file, generateFileName());
        if (file2.exists()) {
            if (!file2.canWrite()) {
                return generateClassLoader(file2, file, classLoader);
            }
            file2.delete();
        }
        byte[] bArrGenerate = generate();
        JarOutputStream jarOutputStream = new JarOutputStream(new BufferedOutputStream(new FileOutputStream(file2)));
        file2.setReadOnly();
        try {
            JarEntry jarEntry = new JarEntry("classes.dex");
            jarEntry.setSize(bArrGenerate.length);
            jarOutputStream.putNextEntry(jarEntry);
            try {
                jarOutputStream.write(bArrGenerate);
                jarOutputStream.close();
                return generateClassLoader(file2, file, classLoader);
            } finally {
                jarOutputStream.closeEntry();
            }
        } catch (Throwable th) {
            jarOutputStream.close();
            throw th;
        }
    }

    public DexFile getDexFile() {
        if (this.outputDex == null) {
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            this.outputDex = new DexFile(dexOptions);
        }
        return this.outputDex;
    }

    public static class TypeDeclaration {
        private ClassDefItem classDefItem;
        private boolean declared;
        private int flags;
        private TypeList interfaces;
        private String sourceFile;
        private TypeId<?> supertype;
        private final TypeId<?> type;
        private final Map<FieldId, FieldDeclaration> fields = new LinkedHashMap();
        private final Map<MethodId, MethodDeclaration> methods = new LinkedHashMap();

        public TypeDeclaration(TypeId<?> typeId) {
            this.type = typeId;
        }

        public ClassDefItem toClassDefItem() {
            if (!this.declared) {
                StringBuilder sb = new StringBuilder("Undeclared type ");
                sb.append(this.type);
                sb.append(" declares members: ");
                sb.append(this.fields.keySet());
                OkHttpClient$Builder$$ExternalSyntheticBUOutline0.m903m(sb, " ", this.methods.keySet());
                return null;
            }
            DexOptions dexOptions = new DexOptions();
            dexOptions.minSdkVersion = 13;
            CstType cstType = this.type.constant;
            if (this.classDefItem == null) {
                this.classDefItem = new ClassDefItem(cstType, this.flags, this.supertype.constant, this.interfaces.ropTypes, new CstString(this.sourceFile));
                for (MethodDeclaration methodDeclaration : this.methods.values()) {
                    EncodedMethod encodedMethod = methodDeclaration.toEncodedMethod(dexOptions);
                    boolean zIsDirect = methodDeclaration.isDirect();
                    ClassDefItem classDefItem = this.classDefItem;
                    if (zIsDirect) {
                        classDefItem.addDirectMethod(encodedMethod);
                    } else {
                        classDefItem.addVirtualMethod(encodedMethod);
                    }
                }
                for (FieldDeclaration fieldDeclaration : this.fields.values()) {
                    EncodedField encodedField = fieldDeclaration.toEncodedField();
                    boolean zIsStatic = fieldDeclaration.isStatic();
                    ClassDefItem classDefItem2 = this.classDefItem;
                    if (!zIsStatic) {
                        classDefItem2.addInstanceField(encodedField);
                    } else {
                        classDefItem2.addStaticField(encodedField, Constants.getConstant(fieldDeclaration.staticValue));
                    }
                }
            }
            return this.classDefItem;
        }
    }

    public static class FieldDeclaration {
        private final int accessFlags;
        final FieldId<?, ?> fieldId;
        private final Object staticValue;

        public FieldDeclaration(FieldId<?, ?> fieldId, int i, Object obj) {
            if ((i & 8) == 0 && obj != null) {
                f$$ExternalSyntheticBUOutline1.m212m("instance fields may not have a value");
                throw null;
            }
            this.fieldId = fieldId;
            this.accessFlags = i;
            this.staticValue = obj;
        }

        public EncodedField toEncodedField() {
            return new EncodedField(this.fieldId.constant, this.accessFlags);
        }

        public boolean isStatic() {
            return (this.accessFlags & 8) != 0;
        }
    }

    public static class MethodDeclaration {
        private final Code code = new Code(this);
        private final int flags;
        final MethodId<?, ?> method;

        public MethodDeclaration(MethodId<?, ?> methodId, int i) {
            this.method = methodId;
            this.flags = i;
        }

        public boolean isStatic() {
            return (this.flags & 8) != 0;
        }

        public boolean isDirect() {
            return (this.flags & 65546) != 0;
        }

        public EncodedMethod toEncodedMethod(DexOptions dexOptions) {
            int i = this.flags;
            if ((i & 1024) != 0 || (i & 256) != 0) {
                return new EncodedMethod(this.method.constant, i, null, StdTypeList.EMPTY);
            }
            return new EncodedMethod(this.method.constant, this.flags, RopTranslator.translate(new RopMethod(this.code.toBasicBlocks(), 0), 1, null, this.code.paramSize(), dexOptions), StdTypeList.EMPTY);
        }
    }
}
