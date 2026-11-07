package com.sun.jna;

import com.sun.jna.internal.Cleaner;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.url._UrlKt;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public class NativeLibrary implements Closeable {
    private static final Level DEBUG_LOAD_LEVEL;
    private static final int DEFAULT_OPEN_OPTIONS = -1;
    private static final Logger LOG = Logger.getLogger(NativeLibrary.class.getName());
    private static final SymbolProvider NATIVE_SYMBOL_PROVIDER;
    private static Method addSuppressedMethod;
    private static final Map<String, Reference<NativeLibrary>> libraries;
    private static final LinkedHashSet<String> librarySearchPath;
    private static final Map<String, List<String>> searchPaths;
    private final int callFlags;
    private final Cleaner.Cleanable cleanable;
    private final String encoding;
    private final Map<String, Function> functions;
    private volatile long handle;
    private final String libraryName;
    private final String libraryPath;
    private final Map<String, ?> options;
    private final SymbolProvider symbolProvider;

    static {
        String string;
        DEBUG_LOAD_LEVEL = Native.DEBUG_LOAD ? Level.INFO : Level.FINE;
        NATIVE_SYMBOL_PROVIDER = new SymbolProvider() { // from class: com.sun.jna.NativeLibrary.1
            @Override // com.sun.jna.SymbolProvider
            public long getSymbolAddress(long j, String str, SymbolProvider symbolProvider) {
                return Native.findSymbol(j, str);
            }
        };
        libraries = new HashMap();
        searchPaths = new ConcurrentHashMap();
        librarySearchPath = new LinkedHashSet<>();
        if (Native.POINTER_SIZE == 0) {
            throw new Error("Native library not initialized");
        }
        addSuppressedMethod = null;
        try {
            addSuppressedMethod = Throwable.class.getMethod("addSuppressed", Throwable.class);
        } catch (NoSuchMethodException unused) {
        } catch (SecurityException e) {
            Logger.getLogger(NativeLibrary.class.getName()).log(Level.SEVERE, "Failed to initialize 'addSuppressed' method", (Throwable) e);
        }
        String webStartLibraryPath = Native.getWebStartLibraryPath("jnidispatch");
        if (webStartLibraryPath != null) {
            librarySearchPath.add(webStartLibraryPath);
        }
        if (System.getProperty("jna.platform.library.path") == null && !Platform.isWindows()) {
            if (Platform.isLinux() || Platform.isSolaris() || Platform.isFreeBSD() || Platform.iskFreeBSD()) {
                StringBuilder sb = new StringBuilder();
                sb.append(Platform.isSolaris() ? "/" : _UrlKt.FRAGMENT_ENCODE_SET);
                sb.append(Native.POINTER_SIZE * 8);
                string = sb.toString();
            } else {
                string = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            String[] strArr = {"/usr/lib".concat(string), "/lib".concat(string), "/usr/lib", "/lib"};
            if (Platform.isLinux() || Platform.iskFreeBSD() || Platform.isGNU()) {
                String multiArchPath = getMultiArchPath();
                strArr = new String[]{"/usr/lib/" + multiArchPath, "/lib/" + multiArchPath, "/usr/lib".concat(string), "/lib".concat(string), "/usr/lib", "/lib"};
            }
            if (Platform.isLinux()) {
                ArrayList<String> linuxLdPaths = getLinuxLdPaths();
                for (int length = strArr.length - 1; length >= 0; length--) {
                    int iIndexOf = linuxLdPaths.indexOf(strArr[length]);
                    if (iIndexOf != -1) {
                        linuxLdPaths.remove(iIndexOf);
                    }
                    linuxLdPaths.add(0, strArr[length]);
                }
                strArr = (String[]) linuxLdPaths.toArray(new String[0]);
            }
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            String str2 = str;
            for (int i = 0; i < strArr.length; i++) {
                File file = new File(strArr[i]);
                if (file.exists() && file.isDirectory()) {
                    str = str + str2 + strArr[i];
                    str2 = File.pathSeparator;
                }
            }
            if (!_UrlKt.FRAGMENT_ENCODE_SET.equals(str)) {
                System.setProperty("jna.platform.library.path", str);
            }
        }
        librarySearchPath.addAll(initPaths("jna.platform.library.path"));
    }

    private static String functionKey(String str, int i, String str2) {
        return str + "|" + i + "|" + str2;
    }

    private NativeLibrary(String str, String str2, long j, Map<String, ?> map) {
        HashMap map2 = new HashMap();
        this.functions = map2;
        String libraryName = getLibraryName(str);
        this.libraryName = libraryName;
        this.libraryPath = str2;
        this.handle = j;
        this.cleanable = Cleaner.getCleaner().register(this, new NativeLibraryDisposer(j));
        Object obj = map.get(Library.OPTION_CALLING_CONVENTION);
        int iIntValue = obj instanceof Number ? ((Number) obj).intValue() : 0;
        this.callFlags = iIntValue;
        this.options = map;
        SymbolProvider symbolProvider = (SymbolProvider) map.get(Library.OPTION_SYMBOL_PROVIDER);
        if (symbolProvider == null) {
            this.symbolProvider = NATIVE_SYMBOL_PROVIDER;
        } else {
            this.symbolProvider = symbolProvider;
        }
        String str3 = (String) map.get(Library.OPTION_STRING_ENCODING);
        String defaultStringEncoding = str3 == null ? Native.getDefaultStringEncoding() : str3;
        this.encoding = defaultStringEncoding;
        if (Platform.isWindows() && "kernel32".equals(libraryName.toLowerCase())) {
            synchronized (map2) {
                map2.put(functionKey("GetLastError", iIntValue, defaultStringEncoding), new Function(this, "GetLastError", 63, defaultStringEncoding) { // from class: com.sun.jna.NativeLibrary.2
                    @Override // com.sun.jna.Function
                    public Object invoke(Object[] objArr, Class<?> cls, boolean z, int i) {
                        return Integer.valueOf(Native.getLastError());
                    }

                    @Override // com.sun.jna.Function
                    public Object invoke(Method method, Class<?>[] clsArr, Class<?> cls, Object[] objArr, Map<String, ?> map3) {
                        return Integer.valueOf(Native.getLastError());
                    }
                });
            }
        }
    }

    private static int openFlags(Map<String, ?> map) {
        Object obj = map.get(Library.OPTION_OPEN_FLAGS);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return -1;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02b8  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static NativeLibrary loadLibrary(String str, Map<String, ?> map) throws Throwable {
        long jOpen;
        long j;
        Map<String, ?> map2;
        Logger logger;
        Level level;
        StringBuilder sb;
        Logger logger2 = LOG;
        Level level2 = DEBUG_LOAD_LEVEL;
        logger2.log(level2, "Looking for library '" + str + "'");
        ArrayList arrayList = new ArrayList();
        boolean zIsAbsolute = new File(str).isAbsolute();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int iOpenFlags = openFlags(map);
        List<String> list = searchPaths.get(str);
        if (list != null) {
            synchronized (list) {
                linkedHashSet.addAll(list);
            }
        }
        String webStartLibraryPath = Native.getWebStartLibraryPath(str);
        if (webStartLibraryPath != null) {
            logger2.log(level2, "Adding web start path ".concat(webStartLibraryPath));
            linkedHashSet.add(webStartLibraryPath);
        }
        logger2.log(level2, "Adding paths from jna.library.path: " + System.getProperty("jna.library.path"));
        linkedHashSet.addAll(initPaths("jna.library.path"));
        String strFindLibraryPath = findLibraryPath(str, linkedHashSet);
        long j2 = 0;
        try {
            logger2.log(level2, "Trying " + strFindLibraryPath);
            jOpen = Native.open(strFindLibraryPath, iOpenFlags);
        } catch (UnsatisfiedLinkError e) {
            Logger logger3 = LOG;
            Level level3 = DEBUG_LOAD_LEVEL;
            logger3.log(level3, "Loading failed with message: " + e.getMessage());
            StringBuilder sb2 = new StringBuilder("Adding system paths: ");
            LinkedHashSet<String> linkedHashSet2 = librarySearchPath;
            sb2.append(linkedHashSet2);
            logger3.log(level3, sb2.toString());
            arrayList.add(e);
            linkedHashSet.addAll(linkedHashSet2);
            jOpen = 0;
        }
        if (jOpen == 0) {
            try {
                strFindLibraryPath = findLibraryPath(str, linkedHashSet);
                LOG.log(DEBUG_LOAD_LEVEL, "Trying " + strFindLibraryPath);
                jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                if (jOpen == 0) {
                    throw new UnsatisfiedLinkError("Failed to load library '" + str + "'");
                }
                map2 = map;
            } catch (UnsatisfiedLinkError e2) {
                Logger logger4 = LOG;
                Level level4 = DEBUG_LOAD_LEVEL;
                logger4.log(level4, "Loading failed with message: " + e2.getMessage());
                arrayList.add(e2);
                int i = 0;
                if (Platform.isAndroid()) {
                    try {
                        logger4.log(level4, "Preload (via System.loadLibrary) " + str);
                        System.loadLibrary(str);
                        jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                    } catch (UnsatisfiedLinkError e3) {
                        LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e3.getMessage());
                        arrayList.add(e3);
                    }
                } else {
                    if (Platform.isLinux() || Platform.isFreeBSD()) {
                        j = 0;
                        logger4.log(level4, "Looking for version variants");
                        strFindLibraryPath = matchLibrary(str, linkedHashSet);
                        if (strFindLibraryPath != null) {
                            logger4.log(level4, "Trying ".concat(strFindLibraryPath));
                            try {
                                jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                            } catch (UnsatisfiedLinkError e4) {
                                LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e4.getMessage());
                                arrayList.add(e4);
                            }
                        }
                    } else if (Platform.isMac() && !str.endsWith(".dylib")) {
                        String[] strArrMatchFramework = matchFramework(str);
                        int length = strArrMatchFramework.length;
                        int i2 = 0;
                        while (i2 < length) {
                            String str2 = strArrMatchFramework[i2];
                            try {
                                logger = LOG;
                                level = DEBUG_LOAD_LEVEL;
                                sb = new StringBuilder();
                                j = j2;
                            } catch (UnsatisfiedLinkError e5) {
                                e = e5;
                                j = j2;
                            }
                            try {
                                sb.append("Trying ");
                                sb.append(str2);
                                logger.log(level, sb.toString());
                                jOpen = Native.open(str2, iOpenFlags);
                                break;
                            } catch (UnsatisfiedLinkError e6) {
                                e = e6;
                                LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e.getMessage());
                                arrayList.add(e);
                                i2++;
                                j2 = j;
                            }
                        }
                    } else {
                        j = 0;
                        if (Platform.isWindows() && !zIsAbsolute) {
                            logger4.log(level4, "Looking for lib- prefix");
                            strFindLibraryPath = findLibraryPath("lib" + str, linkedHashSet);
                            if (strFindLibraryPath != null) {
                                logger4.log(level4, "Trying ".concat(strFindLibraryPath));
                                try {
                                    jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                                } catch (UnsatisfiedLinkError e7) {
                                    LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e7.getMessage());
                                    arrayList.add(e7);
                                }
                            }
                        }
                    }
                    if (jOpen != j) {
                        map2 = map;
                        try {
                            File fileExtractFromResourcePath = Native.extractFromResourcePath(str, (ClassLoader) map2.get(Library.OPTION_CLASSLOADER));
                            if (fileExtractFromResourcePath != null) {
                                try {
                                    jOpen = Native.open(fileExtractFromResourcePath.getAbsolutePath(), iOpenFlags);
                                    strFindLibraryPath = fileExtractFromResourcePath.getAbsolutePath();
                                    if (Native.isUnpacked(fileExtractFromResourcePath)) {
                                        Native.deleteLibrary(fileExtractFromResourcePath);
                                    }
                                } catch (Throwable th) {
                                    if (Native.isUnpacked(fileExtractFromResourcePath)) {
                                        Native.deleteLibrary(fileExtractFromResourcePath);
                                    }
                                    throw th;
                                }
                            }
                        } catch (IOException e8) {
                            LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e8.getMessage());
                            arrayList.add(e8);
                            if (jOpen == j) {
                                StringBuilder sb3 = new StringBuilder("Unable to load library '");
                                sb3.append(str);
                                sb3.append("':");
                                int size = arrayList.size();
                                int i3 = 0;
                                while (i3 < size) {
                                    Object obj = arrayList.get(i3);
                                    i3++;
                                    sb3.append("\n");
                                    sb3.append(((Throwable) obj).getMessage());
                                }
                                UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(sb3.toString());
                                int size2 = arrayList.size();
                                while (i < size2) {
                                    Object obj2 = arrayList.get(i);
                                    i++;
                                    addSuppressedReflected(unsatisfiedLinkError, (Throwable) obj2);
                                }
                                throw unsatisfiedLinkError;
                            }
                            long j3 = jOpen;
                            LOG.log(DEBUG_LOAD_LEVEL, "Found library '" + str + "' at " + strFindLibraryPath);
                            return new NativeLibrary(str, strFindLibraryPath, j3, map2);
                        }
                    } else {
                        map2 = map;
                    }
                    if (jOpen == j) {
                    }
                }
                j = j2;
                if (jOpen != j) {
                }
                if (jOpen == j) {
                }
            }
        } else {
            map2 = map;
        }
        long j32 = jOpen;
        LOG.log(DEBUG_LOAD_LEVEL, "Found library '" + str + "' at " + strFindLibraryPath);
        return new NativeLibrary(str, strFindLibraryPath, j32, map2);
    }

    private static void addSuppressedReflected(Throwable th, Throwable th2) {
        Method method = addSuppressedMethod;
        if (method == null) {
            return;
        }
        try {
            method.invoke(th, th2);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Failed to call addSuppressedMethod", e);
        }
    }

    public static String[] matchFramework(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        File file = new File(str);
        if (file.isAbsolute()) {
            if (str.contains(".framework")) {
                if (file.exists()) {
                    return new String[]{file.getAbsolutePath()};
                }
                linkedHashSet.add(file.getAbsolutePath());
            } else {
                File file2 = new File(new File(file.getParentFile(), file.getName() + ".framework"), file.getName());
                if (file2.exists()) {
                    return new String[]{file2.getAbsolutePath()};
                }
                linkedHashSet.add(file2.getAbsolutePath());
            }
        } else {
            String[] strArr = {System.getProperty("user.home"), _UrlKt.FRAGMENT_ENCODE_SET, "/System"};
            if (!str.contains(".framework")) {
                str = str + ".framework/" + str;
            }
            for (int i = 0; i < 3; i++) {
                File file3 = new File(strArr[i] + "/Library/Frameworks/" + str);
                if (file3.exists()) {
                    return new String[]{file3.getAbsolutePath()};
                }
                linkedHashSet.add(file3.getAbsolutePath());
            }
        }
        return (String[]) linkedHashSet.toArray(new String[0]);
    }

    private String getLibraryName(String str) {
        String strMapSharedLibraryName = mapSharedLibraryName("---");
        int iIndexOf = strMapSharedLibraryName.indexOf("---");
        if (iIndexOf > 0 && str.startsWith(strMapSharedLibraryName.substring(0, iIndexOf))) {
            str = str.substring(iIndexOf);
        }
        int iIndexOf2 = str.indexOf(strMapSharedLibraryName.substring(iIndexOf + 3));
        return iIndexOf2 != -1 ? str.substring(0, iIndexOf2) : str;
    }

    public static final NativeLibrary getInstance(String str) {
        return getInstance(str, (Map<String, ?>) Collections.EMPTY_MAP);
    }

    public static final NativeLibrary getInstance(String str, ClassLoader classLoader) {
        return getInstance(str, (Map<String, ?>) Collections.singletonMap(Library.OPTION_CLASSLOADER, classLoader));
    }

    public static final NativeLibrary getInstance(String str, Map<String, ?> map) {
        NativeLibrary nativeLibraryLoadLibrary;
        HashMap map2 = new HashMap(map);
        if (map2.get(Library.OPTION_CALLING_CONVENTION) == null) {
            map2.put(Library.OPTION_CALLING_CONVENTION, 0);
        }
        if ((Platform.isLinux() || Platform.isFreeBSD() || Platform.isAIX()) && Platform.C_LIBRARY_NAME.equals(str)) {
            str = null;
        }
        Map<String, Reference<NativeLibrary>> map3 = libraries;
        synchronized (map3) {
            try {
                Reference<NativeLibrary> reference = map3.get(str + map2);
                nativeLibraryLoadLibrary = reference != null ? reference.get() : null;
                if (nativeLibraryLoadLibrary == null) {
                    if (str == null) {
                        nativeLibraryLoadLibrary = new NativeLibrary("<process>", null, Native.open(null, openFlags(map2)), map2);
                    } else {
                        nativeLibraryLoadLibrary = loadLibrary(str, map2);
                    }
                    WeakReference weakReference = new WeakReference(nativeLibraryLoadLibrary);
                    map3.put(nativeLibraryLoadLibrary.getName() + map2, weakReference);
                    File file = nativeLibraryLoadLibrary.getFile();
                    if (file != null) {
                        map3.put(file.getAbsolutePath() + map2, weakReference);
                        map3.put(file.getName() + map2, weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nativeLibraryLoadLibrary;
    }

    public static final synchronized NativeLibrary getProcess() {
        return getInstance(null);
    }

    public static final synchronized NativeLibrary getProcess(Map<String, ?> map) {
        return getInstance((String) null, map);
    }

    public static final void addSearchPath(String str, String str2) {
        Map<String, List<String>> map = searchPaths;
        List<String> listSynchronizedList = map.get(str);
        if (listSynchronizedList == null) {
            listSynchronizedList = Collections.synchronizedList(new ArrayList());
            map.put(str, listSynchronizedList);
        }
        listSynchronizedList.add(str2);
    }

    public Function getFunction(String str) {
        return getFunction(str, this.callFlags);
    }

    public Function getFunction(String str, Method method) {
        FunctionMapper functionMapper = (FunctionMapper) this.options.get(Library.OPTION_FUNCTION_MAPPER);
        if (functionMapper != null) {
            str = functionMapper.getFunctionName(this, method);
        }
        String property = System.getProperty("jna.profiler.prefix", "$$YJP$$");
        if (str.startsWith(property)) {
            str = str.substring(property.length());
        }
        int i = this.callFlags;
        for (Class<?> cls : method.getExceptionTypes()) {
            if (LastErrorException.class.isAssignableFrom(cls)) {
                i |= 64;
            }
        }
        return getFunction(str, i);
    }

    public Function getFunction(String str, int i) {
        return getFunction(str, i, this.encoding);
    }

    public Function getFunction(String str, int i, String str2) {
        Function function;
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Function name may not be null");
            return null;
        }
        synchronized (this.functions) {
            try {
                String strFunctionKey = functionKey(str, i, str2);
                function = this.functions.get(strFunctionKey);
                if (function == null) {
                    function = new Function(this, str, i, str2);
                    this.functions.put(strFunctionKey, function);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return function;
    }

    public Map<String, ?> getOptions() {
        return this.options;
    }

    public Pointer getGlobalVariableAddress(String str) {
        try {
            return new Pointer(getSymbolAddress(str));
        } catch (UnsatisfiedLinkError e) {
            throw new UnsatisfiedLinkError("Error looking up '" + str + "': " + e.getMessage());
        }
    }

    public long getSymbolAddress(String str) {
        if (this.handle == 0) {
            throw new UnsatisfiedLinkError("Library has been unloaded");
        }
        return this.symbolProvider.getSymbolAddress(this.handle, str, NATIVE_SYMBOL_PROVIDER);
    }

    public String toString() {
        return "Native Library <" + this.libraryPath + "@" + this.handle + ">";
    }

    public String getName() {
        return this.libraryName;
    }

    public File getFile() {
        if (this.libraryPath == null) {
            return null;
        }
        return new File(this.libraryPath);
    }

    public static void disposeAll() {
        LinkedHashSet linkedHashSet;
        Map<String, Reference<NativeLibrary>> map = libraries;
        synchronized (map) {
            linkedHashSet = new LinkedHashSet(map.values());
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            NativeLibrary nativeLibrary = (NativeLibrary) ((Reference) it.next()).get();
            if (nativeLibrary != null) {
                nativeLibrary.close();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        HashSet hashSet = new HashSet();
        Map<String, Reference<NativeLibrary>> map = libraries;
        synchronized (map) {
            try {
                for (Map.Entry<String, Reference<NativeLibrary>> entry : map.entrySet()) {
                    if (entry.getValue().get() == this) {
                        hashSet.add(entry.getKey());
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    libraries.remove((String) it.next());
                }
            } finally {
            }
        }
        synchronized (this) {
            try {
                if (this.handle != 0) {
                    this.handle = 0L;
                    this.cleanable.clean();
                }
            } finally {
            }
        }
    }

    @Deprecated
    public void dispose() {
        close();
    }

    private static List<String> initPaths(String str) {
        String property = System.getProperty(str, _UrlKt.FRAGMENT_ENCODE_SET);
        if (_UrlKt.FRAGMENT_ENCODE_SET.equals(property)) {
            return Collections.EMPTY_LIST;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!_UrlKt.FRAGMENT_ENCODE_SET.equals(strNextToken)) {
                arrayList.add(strNextToken);
            }
        }
        return arrayList;
    }

    private static String findLibraryPath(String str, Collection<String> collection) {
        if (new File(str).isAbsolute()) {
            return str;
        }
        String strMapSharedLibraryName = mapSharedLibraryName(str);
        for (String str2 : collection) {
            File file = new File(str2, strMapSharedLibraryName);
            if (file.exists()) {
                return file.getAbsolutePath();
            }
            if (Platform.isMac() && strMapSharedLibraryName.endsWith(".dylib")) {
                File file2 = new File(str2, strMapSharedLibraryName.substring(0, strMapSharedLibraryName.lastIndexOf(".dylib")).concat(".jnilib"));
                if (file2.exists()) {
                    return file2.getAbsolutePath();
                }
            }
        }
        return strMapSharedLibraryName;
    }

    public static String mapSharedLibraryName(String str) {
        if (Platform.isMac()) {
            if (str.startsWith("lib") && (str.endsWith(".dylib") || str.endsWith(".jnilib"))) {
                return str;
            }
            String strMapLibraryName = System.mapLibraryName(str);
            return strMapLibraryName.endsWith(".jnilib") ? strMapLibraryName.substring(0, strMapLibraryName.lastIndexOf(".jnilib")).concat(".dylib") : strMapLibraryName;
        }
        if (Platform.isLinux() || Platform.isFreeBSD()) {
            if (isVersionedName(str) || str.endsWith(".so")) {
                return str;
            }
        } else if (Platform.isAIX()) {
            if (isVersionedName(str) || str.endsWith(".so") || str.startsWith("lib") || str.endsWith(".a")) {
                return str;
            }
        } else if (Platform.isWindows() && (str.endsWith(".drv") || str.endsWith(".dll") || str.endsWith(".ocx"))) {
            return str;
        }
        String strMapLibraryName2 = System.mapLibraryName(str);
        return (Platform.isAIX() && strMapLibraryName2.endsWith(".so")) ? strMapLibraryName2.replaceAll(".so$", ".a") : strMapLibraryName2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isVersionedName(String str) {
        int iLastIndexOf;
        int i;
        if (!str.startsWith("lib") || (iLastIndexOf = str.lastIndexOf(".so.")) == -1 || (i = iLastIndexOf + 4) >= str.length()) {
            return false;
        }
        for (i = iLastIndexOf + 4; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != '.') {
                return false;
            }
        }
        return true;
    }

    public static String matchLibrary(final String str, Collection<String> collection) {
        File file = new File(str);
        if (file.isAbsolute()) {
            collection = Arrays.asList(file.getParent());
        }
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: com.sun.jna.NativeLibrary.3
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                if (!str2.startsWith("lib" + str + ".so")) {
                    if (!str2.startsWith(str + ".so") || !str.startsWith("lib")) {
                        return false;
                    }
                }
                return NativeLibrary.isVersionedName(str2);
            }
        };
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            File[] fileArrListFiles = new File(it.next()).listFiles(filenameFilter);
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                linkedList.addAll(Arrays.asList(fileArrListFiles));
            }
        }
        Iterator it2 = linkedList.iterator();
        double d = -1.0d;
        String str2 = null;
        while (it2.hasNext()) {
            String absolutePath = ((File) it2.next()).getAbsolutePath();
            double version = parseVersion(absolutePath.substring(absolutePath.lastIndexOf(".so.") + 4));
            if (version > d) {
                str2 = absolutePath;
                d = version;
            }
        }
        return str2;
    }

    public static double parseVersion(String str) {
        String str2;
        int iIndexOf = str.indexOf(".");
        double d = 1.0d;
        double d2 = 0.0d;
        while (str != null) {
            if (iIndexOf != -1) {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                iIndexOf = strSubstring2.indexOf(".");
                str2 = strSubstring2;
                str = strSubstring;
            } else {
                str2 = null;
            }
            try {
                d2 += ((double) Integer.parseInt(str)) / d;
                d *= 100.0d;
                str = str2;
            } catch (NumberFormatException unused) {
                return 0.0d;
            }
        }
        return d2;
    }

    private static String getMultiArchPath() {
        String str;
        String str2 = Platform.ARCH;
        if (Platform.iskFreeBSD()) {
            str = "-kfreebsd";
        } else {
            str = Platform.isGNU() ? _UrlKt.FRAGMENT_ENCODE_SET : "-linux";
        }
        String str3 = "-gnu";
        if (Platform.isIntel()) {
            str2 = Platform.is64Bit() ? "x86_64" : "i386";
        } else if (Platform.isPPC()) {
            str2 = Platform.is64Bit() ? "powerpc64" : "powerpc";
        } else if (Platform.isARM()) {
            str2 = "arm";
            str3 = "-gnueabi";
        } else if (str2.equals("mips64el")) {
            str3 = "-gnuabi64";
        }
        return str2 + str + str3;
    }

    private static ArrayList<String> getLinuxLdPaths() throws Throwable {
        Process processExec;
        ArrayList<String> arrayList = new ArrayList<>();
        BufferedReader bufferedReader = null;
        try {
            processExec = Runtime.getRuntime().exec("/sbin/ldconfig -p");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            int iIndexOf = line.indexOf(" => ");
                            int iLastIndexOf = line.lastIndexOf(47);
                            if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf < iLastIndexOf) {
                                String strSubstring = line.substring(iIndexOf + 4, iLastIndexOf);
                                if (!arrayList.contains(strSubstring)) {
                                    arrayList.add(strSubstring);
                                }
                            }
                        } else {
                            try {
                                break;
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Exception unused2) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (processExec != null) {
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                            }
                        }
                        if (processExec != null) {
                            try {
                                processExec.waitFor();
                                throw th;
                            } catch (InterruptedException unused5) {
                                throw th;
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
            } catch (Exception unused6) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused7) {
            processExec = null;
        } catch (Throwable th3) {
            th = th3;
            processExec = null;
        }
        try {
            processExec.waitFor();
        } catch (InterruptedException unused8) {
        }
        return arrayList;
    }

    public static final class NativeLibraryDisposer implements Runnable {
        private long handle;

        public NativeLibraryDisposer(long j) {
            this.handle = j;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                long j = this.handle;
                if (j != 0) {
                    try {
                        Native.close(j);
                        this.handle = 0L;
                    } catch (Throwable th) {
                        this.handle = 0L;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
