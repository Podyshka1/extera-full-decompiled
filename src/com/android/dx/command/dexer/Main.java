package com.android.dx.command.dexer;

import com.android.dex.Dex;
import com.android.dex.DexException;
import com.android.dex.util.FileUtils;
import com.android.dx.cf.code.SimException;
import com.android.dx.cf.direct.ClassPathOpener;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.direct.StdAttributeFactory;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.command.UsageException;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.cf.CfOptions;
import com.android.dx.dex.cf.CfTranslator;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedMethod;
import com.android.dx.merge.CollisionPolicy;
import com.android.dx.merge.DexMerger;
import com.android.dx.rop.annotation.Annotation;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.annotation.AnnotationsList;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import okhttp3.internal.url._UrlKt;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class Main {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String DEX_EXTENSION = ".dex";
    private static final String DEX_PREFIX = "classes";
    private static final String IN_RE_CORE_CLASSES = "Ill-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application's project, when using an IDE (such as\nEclipse). If you are sure you're not intentionally defining a\ncore class, then this is the most likely explanation of what's\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n";
    private static final String MANIFEST_NAME = "META-INF/MANIFEST.MF";
    private static final int MAX_FIELD_ADDED_DURING_DEX_CREATION = 9;
    private static final int MAX_METHOD_ADDED_DURING_DEX_CREATION = 2;
    private volatile boolean anyFilesProcessed;
    private Arguments args;
    private ExecutorService classDefItemConsumer;
    private ExecutorService classTranslatorPool;
    private final DxContext context;
    private ExecutorService dexOutPool;
    private DexFile outputDex;
    private TreeMap<String, byte[]> outputResources;
    private static final Attributes.Name CREATED_BY = new Attributes.Name("Created-By");
    private static final String[] JAVAX_CORE = {"accessibility", "crypto", "imageio", "management", "naming", "net", "print", "rmi", "security", "sip", "sound", "sql", "swing", "transaction", "xml"};
    private AtomicInteger errors = new AtomicInteger(0);
    private final List<byte[]> libraryDexBuffers = new ArrayList();
    private List<Future<Boolean>> addToDexFutures = new ArrayList();
    private List<Future<byte[]>> dexOutputFutures = new ArrayList();
    private Object dexRotationLock = new Object();
    private int maxMethodIdsInProcess = 0;
    private int maxFieldIdsInProcess = 0;
    private long minimumFileAge = 0;
    private Set<String> classesInMainDex = null;
    private List<byte[]> dexOutputArrays = new ArrayList();
    private OutputStreamWriter humanOutWriter = null;

    public Main(DxContext dxContext) {
        this.context = dxContext;
    }

    public static void main(String[] strArr) throws Throwable {
        DxContext dxContext = new DxContext();
        Arguments arguments = new Arguments(dxContext);
        arguments.parse(strArr);
        int iRunDx = new Main(dxContext).runDx(arguments);
        if (iRunDx != 0) {
            System.exit(iRunDx);
        }
    }

    public static void clearInternTables() {
        Prototype.clearInternTable();
        RegisterSpec.clearInternTable();
        CstType.clearInternTable();
        Type.clearInternTable();
    }

    public static int run(Arguments arguments) {
        return new Main(new DxContext()).runDx(arguments);
    }

    public int runDx(Arguments arguments) throws IOException {
        OutputStream outputStreamOpenOutput;
        this.errors.set(0);
        this.libraryDexBuffers.clear();
        this.args = arguments;
        arguments.makeOptionsObjects();
        String str = this.args.humanOutName;
        if (str != null) {
            outputStreamOpenOutput = openOutput(str);
            this.humanOutWriter = new OutputStreamWriter(outputStreamOpenOutput);
        } else {
            outputStreamOpenOutput = null;
        }
        try {
            if (this.args.multiDex) {
                return runMultiDex();
            }
            return runMonoDex();
        } finally {
            closeOutput(outputStreamOpenOutput);
        }
    }

    private int runMonoDex() throws IOException {
        File file;
        byte[] bArrWriteDex;
        String str;
        Arguments arguments = this.args;
        if (!arguments.incremental) {
            file = null;
        } else {
            if (arguments.outName == null) {
                this.context.err.println("error: no incremental output name specified");
                return -1;
            }
            file = new File(this.args.outName);
            if (file.exists()) {
                this.minimumFileAge = file.lastModified();
            }
        }
        if (!processAllFiles()) {
            return 1;
        }
        if (this.args.incremental && !this.anyFilesProcessed) {
            return 0;
        }
        if (this.outputDex.isEmpty() && this.args.humanOutName == null) {
            bArrWriteDex = null;
        } else {
            bArrWriteDex = writeDex(this.outputDex);
            if (bArrWriteDex == null) {
                return 2;
            }
        }
        if (this.args.incremental) {
            bArrWriteDex = mergeIncremental(bArrWriteDex, file);
        }
        byte[] bArrMergeLibraryDexBuffers = mergeLibraryDexBuffers(bArrWriteDex);
        Arguments arguments2 = this.args;
        if (arguments2.jarOutput) {
            this.outputDex = null;
            if (bArrMergeLibraryDexBuffers != null) {
                this.outputResources.put("classes.dex", bArrMergeLibraryDexBuffers);
            }
            if (!createJar(this.args.outName)) {
                return 3;
            }
        } else if (bArrMergeLibraryDexBuffers != null && (str = arguments2.outName) != null) {
            OutputStream outputStreamOpenOutput = openOutput(str);
            outputStreamOpenOutput.write(bArrMergeLibraryDexBuffers);
            closeOutput(outputStreamOpenOutput);
        }
        return 0;
    }

    private int runMultiDex() throws Throwable {
        if (this.args.mainDexListFile != null) {
            HashSet hashSet = new HashSet();
            this.classesInMainDex = hashSet;
            readPathsFromFile(this.args.mainDexListFile, hashSet);
        }
        this.dexOutPool = Executors.newFixedThreadPool(this.args.numThreads);
        if (!processAllFiles()) {
            return 1;
        }
        if (!this.libraryDexBuffers.isEmpty()) {
            throw new DexException("Library dex files are not supported in multi-dex mode");
        }
        DexFile dexFile = this.outputDex;
        if (dexFile != null) {
            this.dexOutputFutures.add(this.dexOutPool.submit(new DexWriter(dexFile)));
            this.outputDex = null;
        }
        try {
            this.dexOutPool.shutdown();
            if (!this.dexOutPool.awaitTermination(600L, TimeUnit.SECONDS)) {
                throw new RuntimeException("Timed out waiting for dex writer threads.");
            }
            Iterator<Future<byte[]>> it = this.dexOutputFutures.iterator();
            while (it.hasNext()) {
                this.dexOutputArrays.add(it.next().get());
            }
            Arguments arguments = this.args;
            if (arguments.jarOutput) {
                for (int i = 0; i < this.dexOutputArrays.size(); i++) {
                    this.outputResources.put(getDexFileName(i), this.dexOutputArrays.get(i));
                }
                if (!createJar(this.args.outName)) {
                    return 3;
                }
            } else if (arguments.outName != null) {
                File file = new File(this.args.outName);
                for (int i2 = 0; i2 < this.dexOutputArrays.size(); i2++) {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(file, getDexFileName(i2)));
                    try {
                        fileOutputStream.write(this.dexOutputArrays.get(i2));
                        closeOutput(fileOutputStream);
                    } catch (Throwable th) {
                        closeOutput(fileOutputStream);
                        throw th;
                    }
                }
            }
            return 0;
        } catch (InterruptedException unused) {
            this.dexOutPool.shutdownNow();
            GlShader$$ExternalSyntheticBUOutline1.m1056m("A dex writer thread has been interrupted.");
            return 0;
        } catch (Exception unused2) {
            this.dexOutPool.shutdownNow();
            GlShader$$ExternalSyntheticBUOutline1.m1056m("Unexpected exception in dex writer thread");
            return 0;
        }
    }

    private static String getDexFileName(int i) {
        if (i == 0) {
            return "classes.dex";
        }
        return DEX_PREFIX + (i + 1) + DEX_EXTENSION;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void readPathsFromFile(String str, Collection<String> collection) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(str));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line != null) {
                        collection.add(fixPath(line));
                    } else {
                        bufferedReader2.close();
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] mergeIncremental(byte[] bArr, File file) throws IOException {
        Dex dex = bArr != null ? new Dex(bArr) : null;
        Dex dex2 = file.exists() ? new Dex(file) : null;
        if (dex == null && dex2 == null) {
            return null;
        }
        if (dex == null) {
            dex = dex2;
        } else if (dex2 != null) {
            dex = new DexMerger(new Dex[]{dex, dex2}, CollisionPolicy.KEEP_FIRST, this.context).merge();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        dex.writeTo(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    private byte[] mergeLibraryDexBuffers(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        if (bArr != null) {
            arrayList.add(new Dex(bArr));
        }
        Iterator<byte[]> it = this.libraryDexBuffers.iterator();
        while (it.hasNext()) {
            arrayList.add(new Dex(it.next()));
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new DexMerger((Dex[]) arrayList.toArray(new Dex[arrayList.size()]), CollisionPolicy.FAIL, this.context).merge().getBytes();
    }

    private boolean processAllFiles() {
        createDexFile();
        if (this.args.jarOutput) {
            this.outputResources = new TreeMap<>();
        }
        this.anyFilesProcessed = false;
        String[] strArr = this.args.fileNames;
        Arrays.sort(strArr);
        int i = this.args.numThreads;
        this.classTranslatorPool = new ThreadPoolExecutor(i, i, 0L, TimeUnit.SECONDS, new ArrayBlockingQueue(this.args.numThreads * 2, true), new ThreadPoolExecutor.CallerRunsPolicy());
        this.classDefItemConsumer = Executors.newSingleThreadExecutor();
        try {
            Arguments arguments = this.args;
            if (arguments.mainDexListFile != null) {
                ClassPathOpener.FileNameFilter mainDexListFilter = arguments.strictNameCheck ? new MainDexListFilter() : new BestEffortMainDexListFilter();
                for (String str : strArr) {
                    processOne(str, mainDexListFilter);
                }
                if (this.dexOutputFutures.size() > 0) {
                    throw new DexException("Too many classes in --main-dex-list, main dex capacity exceeded");
                }
                if (this.args.minimalMainDex) {
                    synchronized (this.dexRotationLock) {
                        while (true) {
                            if (this.maxMethodIdsInProcess <= 0 && this.maxFieldIdsInProcess <= 0) {
                                break;
                            }
                            try {
                                this.dexRotationLock.wait();
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                    rotateDexFile();
                }
                RemoveModuleInfoFilter removeModuleInfoFilter = new RemoveModuleInfoFilter(new NotFilter(mainDexListFilter));
                for (String str2 : strArr) {
                    processOne(str2, removeModuleInfoFilter);
                }
            } else {
                RemoveModuleInfoFilter removeModuleInfoFilter2 = new RemoveModuleInfoFilter(ClassPathOpener.acceptAll);
                for (String str3 : strArr) {
                    processOne(str3, removeModuleInfoFilter2);
                }
            }
        } catch (StopProcessing unused2) {
        }
        try {
            this.classTranslatorPool.shutdown();
            ExecutorService executorService = this.classTranslatorPool;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            executorService.awaitTermination(600L, timeUnit);
            this.classDefItemConsumer.shutdown();
            this.classDefItemConsumer.awaitTermination(600L, timeUnit);
            Iterator<Future<Boolean>> it = this.addToDexFutures.iterator();
            while (it.hasNext()) {
                try {
                    it.next().get();
                } catch (ExecutionException e) {
                    if (this.errors.incrementAndGet() < 10) {
                        boolean z = this.args.debug;
                        DxContext dxContext = this.context;
                        if (z) {
                            dxContext.err.println("Uncaught translation error:");
                            e.getCause().printStackTrace(this.context.err);
                        } else {
                            dxContext.err.println("Uncaught translation error: " + e.getCause());
                        }
                    } else {
                        throw new InterruptedException("Too many errors");
                    }
                }
            }
            int i2 = this.errors.get();
            if (i2 != 0) {
                PrintStream printStream = this.context.err;
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append(" error");
                sb.append(i2 == 1 ? _UrlKt.FRAGMENT_ENCODE_SET : "s");
                sb.append("; aborting");
                printStream.println(sb.toString());
                return false;
            }
            if (this.args.incremental && !this.anyFilesProcessed) {
                return true;
            }
            if (!this.anyFilesProcessed && !this.args.emptyOk) {
                this.context.err.println("no classfiles specified");
                return false;
            }
            Arguments arguments2 = this.args;
            if (arguments2.optimize && arguments2.statistics) {
                DxContext dxContext2 = this.context;
                dxContext2.codeStatistics.dumpStatistics(dxContext2.out);
            }
            return true;
        } catch (InterruptedException e2) {
            this.classTranslatorPool.shutdownNow();
            this.classDefItemConsumer.shutdownNow();
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Translation has been interrupted", e2);
            return false;
        } catch (Exception e3) {
            this.classTranslatorPool.shutdownNow();
            this.classDefItemConsumer.shutdownNow();
            e3.printStackTrace(this.context.out);
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Unexpected exception in translator thread.", e3);
            return false;
        }
    }

    private void createDexFile() {
        DexFile dexFile = new DexFile(this.args.dexOptions);
        this.outputDex = dexFile;
        int i = this.args.dumpWidth;
        if (i != 0) {
            dexFile.setDumpWidth(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rotateDexFile() {
        DexFile dexFile = this.outputDex;
        if (dexFile != null) {
            ExecutorService executorService = this.dexOutPool;
            if (executorService != null) {
                this.dexOutputFutures.add(executorService.submit(new DexWriter(dexFile)));
            } else {
                this.dexOutputArrays.add(writeDex(dexFile));
            }
        }
        createDexFile();
    }

    private void processOne(String str, ClassPathOpener.FileNameFilter fileNameFilter) {
        if (new ClassPathOpener(str, true, fileNameFilter, new FileBytesConsumer()).process()) {
            updateStatus(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus(boolean z) {
        this.anyFilesProcessed = z | this.anyFilesProcessed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processFileBytes(String str, long j, byte[] bArr) {
        boolean zEndsWith = str.endsWith(".class");
        boolean zEquals = str.equals("classes.dex");
        boolean z = this.outputResources != null;
        if (!zEndsWith && !zEquals && !z) {
            if (this.args.verbose) {
                this.context.out.println("ignored resource ".concat(str));
            }
            return false;
        }
        if (this.args.verbose) {
            this.context.out.println("processing " + str + "...");
        }
        String strFixPath = fixPath(str);
        if (!zEndsWith) {
            if (zEquals) {
                synchronized (this.libraryDexBuffers) {
                    this.libraryDexBuffers.add(bArr);
                }
                return true;
            }
            synchronized (this.outputResources) {
                this.outputResources.put(strFixPath, bArr);
            }
            return true;
        }
        if (z && this.args.keepClassesInJar) {
            synchronized (this.outputResources) {
                this.outputResources.put(strFixPath, bArr);
            }
        }
        if (j < this.minimumFileAge) {
            return true;
        }
        processClass(strFixPath, bArr);
        return false;
    }

    private boolean processClass(String str, byte[] bArr) {
        if (!this.args.coreLibrary) {
            checkClassName(str);
        }
        try {
            new DirectClassFileConsumer(str, bArr, null).call(new ClassParserTask(str, bArr).call());
            return true;
        } catch (ParseException e) {
            throw e;
        } catch (Exception e2) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Exception parsing classes", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DirectClassFile parseClass(String str, byte[] bArr) {
        DirectClassFile directClassFile = new DirectClassFile(bArr, str, this.args.cfOptions.strictNameCheck);
        directClassFile.setAttributeFactory(StdAttributeFactory.THE_ONE);
        directClassFile.getMagic();
        return directClassFile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ClassDefItem translateClass(byte[] bArr, DirectClassFile directClassFile) {
        try {
            DxContext dxContext = this.context;
            Arguments arguments = this.args;
            return CfTranslator.translate(dxContext, directClassFile, bArr, arguments.cfOptions, arguments.dexOptions, this.outputDex);
        } catch (ParseException e) {
            this.context.err.println("\ntrouble processing:");
            boolean z = this.args.debug;
            DxContext dxContext2 = this.context;
            if (z) {
                e.printStackTrace(dxContext2.err);
            } else {
                e.printContext(dxContext2.err);
            }
            this.errors.incrementAndGet();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addClassToDex(ClassDefItem classDefItem) {
        synchronized (this.outputDex) {
            this.outputDex.add(classDefItem);
        }
        return true;
    }

    private void checkClassName(String str) {
        if (!str.startsWith("java/")) {
            if (!str.startsWith("javax/")) {
                return;
            }
            int iIndexOf = str.indexOf(47, 6);
            if (iIndexOf != -1) {
                if (Arrays.binarySearch(JAVAX_CORE, str.substring(6, iIndexOf)) < 0) {
                    return;
                }
            }
        }
        this.context.err.println("\ntrouble processing \"" + str + "\":\n\nIll-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application's project, when using an IDE (such as\nEclipse). If you are sure you're not intentionally defining a\ncore class, then this is the most likely explanation of what's\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n");
        this.errors.incrementAndGet();
        throw new StopProcessing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] writeDex(DexFile dexFile) {
        byte[] dex;
        try {
            try {
                Arguments arguments = this.args;
                if (arguments.methodToDump != null) {
                    dexFile.toDex(null, false);
                    dumpMethod(dexFile, this.args.methodToDump, this.humanOutWriter);
                    dex = null;
                } else {
                    dex = dexFile.toDex(this.humanOutWriter, arguments.verboseDump);
                }
                if (this.args.statistics) {
                    this.context.out.println(dexFile.getStatistics().toHuman());
                }
                OutputStreamWriter outputStreamWriter = this.humanOutWriter;
                if (outputStreamWriter == null) {
                    return dex;
                }
                outputStreamWriter.flush();
                return dex;
            } catch (Throwable th) {
                OutputStreamWriter outputStreamWriter2 = this.humanOutWriter;
                if (outputStreamWriter2 != null) {
                    outputStreamWriter2.flush();
                }
                throw th;
            }
        } catch (Exception e) {
            boolean z = this.args.debug;
            DxContext dxContext = this.context;
            if (z) {
                dxContext.err.println("\ntrouble writing output:");
                e.printStackTrace(this.context.err);
            } else {
                dxContext.err.println("\ntrouble writing output: " + e.getMessage());
            }
            return null;
        }
    }

    private boolean createJar(String str) {
        try {
            Manifest manifestMakeManifest = makeManifest();
            OutputStream outputStreamOpenOutput = openOutput(str);
            JarOutputStream jarOutputStream = new JarOutputStream(outputStreamOpenOutput, manifestMakeManifest);
            try {
                for (Map.Entry<String, byte[]> entry : this.outputResources.entrySet()) {
                    String key = entry.getKey();
                    byte[] value = entry.getValue();
                    JarEntry jarEntry = new JarEntry(key);
                    int length = value.length;
                    if (this.args.verbose) {
                        this.context.out.println("writing " + key + "; size " + length + "...");
                    }
                    jarEntry.setSize(length);
                    jarOutputStream.putNextEntry(jarEntry);
                    jarOutputStream.write(value);
                    jarOutputStream.closeEntry();
                }
                jarOutputStream.finish();
                jarOutputStream.flush();
                closeOutput(outputStreamOpenOutput);
                return true;
            } catch (Throwable th) {
                jarOutputStream.finish();
                jarOutputStream.flush();
                closeOutput(outputStreamOpenOutput);
                throw th;
            }
        } catch (Exception e) {
            boolean z = this.args.debug;
            DxContext dxContext = this.context;
            if (z) {
                dxContext.err.println("\ntrouble writing output:");
                e.printStackTrace(this.context.err);
                return false;
            }
            dxContext.err.println("\ntrouble writing output: " + e.getMessage());
            return false;
        }
    }

    private Manifest makeManifest() {
        Attributes mainAttributes;
        Manifest manifest;
        String strConcat;
        byte[] bArr = this.outputResources.get(MANIFEST_NAME);
        if (bArr == null) {
            manifest = new Manifest();
            mainAttributes = manifest.getMainAttributes();
            mainAttributes.put(Attributes.Name.MANIFEST_VERSION, "1.0");
        } else {
            Manifest manifest2 = new Manifest(new ByteArrayInputStream(bArr));
            mainAttributes = manifest2.getMainAttributes();
            this.outputResources.remove(MANIFEST_NAME);
            manifest = manifest2;
        }
        Attributes.Name name = CREATED_BY;
        String value = mainAttributes.getValue(name);
        if (value == null) {
            strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            strConcat = value.concat(" + ");
        }
        mainAttributes.put(name, strConcat.concat("dx 1.16"));
        mainAttributes.putValue("Dex-Location", "classes.dex");
        return manifest;
    }

    private OutputStream openOutput(String str) {
        if (str.equals("-") || str.startsWith("-.")) {
            return this.context.out;
        }
        return new FileOutputStream(str);
    }

    private void closeOutput(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            return;
        }
        outputStream.flush();
        if (outputStream != this.context.out) {
            outputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String fixPath(String str) {
        if (File.separatorChar == '\\') {
            str = str.replace('\\', '/');
        }
        int iLastIndexOf = str.lastIndexOf("/./");
        if (iLastIndexOf != -1) {
            return str.substring(iLastIndexOf + 3);
        }
        return str.startsWith("./") ? str.substring(2) : str;
    }

    private void dumpMethod(DexFile dexFile, String str, OutputStreamWriter outputStreamWriter) {
        boolean zEndsWith = str.endsWith("*");
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf <= 0 || iLastIndexOf == str.length() - 1) {
            this.context.err.println("bogus fully-qualified method name: ".concat(str));
            return;
        }
        String strReplace = str.substring(0, iLastIndexOf).replace('.', '/');
        String strSubstring = str.substring(iLastIndexOf + 1);
        ClassDefItem classOrNull = dexFile.getClassOrNull(strReplace);
        if (classOrNull == null) {
            this.context.err.println("no such class: " + strReplace);
            return;
        }
        if (zEndsWith) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        ArrayList<EncodedMethod> methods = classOrNull.getMethods();
        TreeMap treeMap = new TreeMap();
        int size = methods.size();
        int i = 0;
        while (i < size) {
            EncodedMethod encodedMethod = methods.get(i);
            i++;
            EncodedMethod encodedMethod2 = encodedMethod;
            String string = encodedMethod2.getName().getString();
            if ((zEndsWith && string.startsWith(strSubstring)) || (!zEndsWith && string.equals(strSubstring))) {
                treeMap.put(encodedMethod2.getRef().getNat(), encodedMethod2);
            }
        }
        if (treeMap.size() == 0) {
            this.context.err.println("no such method: ".concat(str));
            return;
        }
        PrintWriter printWriter = new PrintWriter(outputStreamWriter);
        for (EncodedMethod encodedMethod3 : treeMap.values()) {
            encodedMethod3.debugPrint(printWriter, this.args.verboseDump);
            CstString sourceFile = classOrNull.getSourceFile();
            if (sourceFile != null) {
                printWriter.println("  source file: " + sourceFile.toQuoted());
            }
            Annotations methodAnnotations = classOrNull.getMethodAnnotations(encodedMethod3.getRef());
            AnnotationsList parameterAnnotations = classOrNull.getParameterAnnotations(encodedMethod3.getRef());
            if (methodAnnotations != null) {
                printWriter.println("  method annotations:");
                Iterator<Annotation> it = methodAnnotations.getAnnotations().iterator();
                while (it.hasNext()) {
                    printWriter.println("    " + it.next());
                }
            }
            if (parameterAnnotations != null) {
                printWriter.println("  parameter annotations:");
                int size2 = parameterAnnotations.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    printWriter.println("    parameter " + i2);
                    Iterator<Annotation> it2 = parameterAnnotations.get(i2).getAnnotations().iterator();
                    while (it2.hasNext()) {
                        printWriter.println("      " + it2.next());
                    }
                }
            }
        }
        printWriter.flush();
    }

    public static class NotFilter implements ClassPathOpener.FileNameFilter {
        private final ClassPathOpener.FileNameFilter filter;

        private NotFilter(ClassPathOpener.FileNameFilter fileNameFilter) {
            this.filter = fileNameFilter;
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            return !this.filter.accept(str);
        }
    }

    public static class RemoveModuleInfoFilter implements ClassPathOpener.FileNameFilter {
        protected final ClassPathOpener.FileNameFilter delegate;

        public RemoveModuleInfoFilter(ClassPathOpener.FileNameFilter fileNameFilter) {
            this.delegate = fileNameFilter;
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            return this.delegate.accept(str) && !"module-info.class".equals(str);
        }
    }

    public class MainDexListFilter implements ClassPathOpener.FileNameFilter {
        private MainDexListFilter() {
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            if (!str.endsWith(".class")) {
                return true;
            }
            return Main.this.classesInMainDex.contains(Main.fixPath(str));
        }
    }

    public class BestEffortMainDexListFilter implements ClassPathOpener.FileNameFilter {
        Map<String, List<String>> map = new HashMap();

        public BestEffortMainDexListFilter() {
            Iterator it = Main.this.classesInMainDex.iterator();
            while (it.hasNext()) {
                String strFixPath = Main.fixPath((String) it.next());
                String simpleName = getSimpleName(strFixPath);
                List<String> arrayList = this.map.get(simpleName);
                if (arrayList == null) {
                    arrayList = new ArrayList<>(1);
                    this.map.put(simpleName, arrayList);
                }
                arrayList.add(strFixPath);
            }
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.FileNameFilter
        public boolean accept(String str) {
            if (!str.endsWith(".class")) {
                return true;
            }
            String strFixPath = Main.fixPath(str);
            List<String> list = this.map.get(getSimpleName(strFixPath));
            if (list == null) {
                return false;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (strFixPath.endsWith(it.next())) {
                    return true;
                }
            }
            return false;
        }

        private String getSimpleName(String str) {
            int iLastIndexOf = str.lastIndexOf(47);
            return iLastIndexOf >= 0 ? str.substring(iLastIndexOf + 1) : str;
        }
    }

    public static class StopProcessing extends RuntimeException {
        private StopProcessing() {
        }
    }

    public static class Arguments {
        private static final String INCREMENTAL_OPTION = "--incremental";
        private static final String INPUT_LIST_OPTION = "--input-list";
        private static final String MAIN_DEX_LIST_OPTION = "--main-dex-list";
        private static final String MINIMAL_MAIN_DEX_OPTION = "--minimal-main-dex";
        private static final String MULTI_DEX_OPTION = "--multi-dex";
        private static final String NUM_THREADS_OPTION = "--num-threads";
        public boolean allowAllInterfaceMethodInvokes;
        public CfOptions cfOptions;
        public final DxContext context;
        public boolean coreLibrary;
        public boolean debug;
        public DexOptions dexOptions;
        public String dontOptimizeListFile;
        public int dumpWidth;
        public boolean emptyOk;
        public String[] fileNames;
        public boolean forceJumbo;
        public String humanOutName;
        public boolean incremental;
        private List<String> inputList;
        public boolean jarOutput;
        public boolean keepClassesInJar;
        public boolean localInfo;
        public String mainDexListFile;
        public int maxNumberOfIdxPerDex;
        public String methodToDump;
        public int minSdkVersion;
        public boolean minimalMainDex;
        public boolean multiDex;
        public int numThreads;
        public boolean optimize;
        public String optimizeListFile;
        public String outName;
        private boolean outputIsDirectDex;
        private boolean outputIsDirectory;
        public int positionInfo;
        public boolean statistics;
        public boolean strictNameCheck;
        public boolean verbose;
        public boolean verboseDump;
        public boolean warnings;

        public Arguments(DxContext dxContext) {
            this.debug = false;
            this.warnings = true;
            this.verbose = false;
            this.verboseDump = false;
            this.coreLibrary = false;
            this.methodToDump = null;
            this.dumpWidth = 0;
            this.outName = null;
            this.humanOutName = null;
            this.strictNameCheck = true;
            this.emptyOk = false;
            this.jarOutput = false;
            this.keepClassesInJar = false;
            this.minSdkVersion = 13;
            this.positionInfo = 2;
            this.localInfo = true;
            this.incremental = false;
            this.forceJumbo = false;
            this.allowAllInterfaceMethodInvokes = false;
            this.optimize = true;
            this.optimizeListFile = null;
            this.dontOptimizeListFile = null;
            this.numThreads = 1;
            this.multiDex = false;
            this.mainDexListFile = null;
            this.minimalMainDex = false;
            this.maxNumberOfIdxPerDex = 65536;
            this.inputList = null;
            this.outputIsDirectory = false;
            this.outputIsDirectDex = false;
            this.context = dxContext;
        }

        public Arguments() {
            this(new DxContext());
        }

        public static class ArgumentsParser {
            private final String[] arguments;
            private String current;
            private int index = 0;
            private String lastValue;

            public ArgumentsParser(String[] strArr) {
                this.arguments = strArr;
            }

            public String getCurrent() {
                return this.current;
            }

            public String getLastValue() {
                return this.lastValue;
            }

            public boolean getNext() {
                int i = this.index;
                String[] strArr = this.arguments;
                if (i >= strArr.length) {
                    return false;
                }
                String str = strArr[i];
                this.current = str;
                if (str.equals("--") || !this.current.startsWith("--")) {
                    return false;
                }
                this.index++;
                return true;
            }

            private boolean getNextValue() {
                int i = this.index;
                String[] strArr = this.arguments;
                if (i >= strArr.length) {
                    return false;
                }
                this.current = strArr[i];
                this.index = i + 1;
                return true;
            }

            public String[] getRemaining() {
                String[] strArr = this.arguments;
                int length = strArr.length;
                int i = this.index;
                int i2 = length - i;
                String[] strArr2 = new String[i2];
                if (i2 > 0) {
                    System.arraycopy(strArr, i, strArr2, 0, i2);
                }
                return strArr2;
            }

            public boolean isArg(String str) {
                int length = str.length();
                if (length > 0) {
                    int i = length - 1;
                    if (str.charAt(i) == '=') {
                        if (this.current.startsWith(str)) {
                            this.lastValue = this.current.substring(length);
                            return true;
                        }
                        String strSubstring = str.substring(0, i);
                        if (!this.current.equals(strSubstring)) {
                            return false;
                        }
                        if (getNextValue()) {
                            this.lastValue = this.current;
                            return true;
                        }
                        System.err.println("Missing value after parameter ".concat(strSubstring));
                        throw new UsageException();
                    }
                }
                return this.current.equals(str);
            }
        }

        private void parseFlags(ArgumentsParser argumentsParser) throws Throwable {
            int i;
            while (argumentsParser.getNext()) {
                if (argumentsParser.isArg("--debug")) {
                    this.debug = true;
                } else if (argumentsParser.isArg("--no-warning")) {
                    this.warnings = false;
                } else if (argumentsParser.isArg("--verbose")) {
                    this.verbose = true;
                } else if (argumentsParser.isArg("--verbose-dump")) {
                    this.verboseDump = true;
                } else if (argumentsParser.isArg("--no-files")) {
                    this.emptyOk = true;
                } else if (argumentsParser.isArg("--no-optimize")) {
                    this.optimize = false;
                } else if (argumentsParser.isArg("--no-strict")) {
                    this.strictNameCheck = false;
                } else if (argumentsParser.isArg("--core-library")) {
                    this.coreLibrary = true;
                } else if (argumentsParser.isArg("--statistics")) {
                    this.statistics = true;
                } else if (argumentsParser.isArg("--optimize-list=")) {
                    if (this.dontOptimizeListFile != null) {
                        this.context.err.println("--optimize-list and --no-optimize-list are incompatible.");
                        throw new UsageException();
                    }
                    this.optimize = true;
                    this.optimizeListFile = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg("--no-optimize-list=")) {
                    if (this.dontOptimizeListFile != null) {
                        this.context.err.println("--optimize-list and --no-optimize-list are incompatible.");
                        throw new UsageException();
                    }
                    this.optimize = true;
                    this.dontOptimizeListFile = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg("--keep-classes")) {
                    this.keepClassesInJar = true;
                } else if (argumentsParser.isArg("--output=")) {
                    this.outName = argumentsParser.getLastValue();
                    if (new File(this.outName).isDirectory()) {
                        this.jarOutput = false;
                        this.outputIsDirectory = true;
                    } else if (FileUtils.hasArchiveSuffix(this.outName)) {
                        this.jarOutput = true;
                    } else if (this.outName.endsWith(Main.DEX_EXTENSION) || this.outName.equals("-")) {
                        this.jarOutput = false;
                        this.outputIsDirectDex = true;
                    } else {
                        this.context.err.println("unknown output extension: " + this.outName);
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--dump-to=")) {
                    this.humanOutName = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg("--dump-width=")) {
                    this.dumpWidth = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg("--dump-method=")) {
                    this.methodToDump = argumentsParser.getLastValue();
                    this.jarOutput = false;
                } else if (argumentsParser.isArg("--positions=")) {
                    String strIntern = argumentsParser.getLastValue().intern();
                    if (strIntern == "none") {
                        this.positionInfo = 1;
                    } else if (strIntern == "important") {
                        this.positionInfo = 3;
                    } else if (strIntern == "lines") {
                        this.positionInfo = 2;
                    } else {
                        this.context.err.println("unknown positions option: " + strIntern);
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--no-locals")) {
                    this.localInfo = false;
                } else if (argumentsParser.isArg("--num-threads=")) {
                    this.numThreads = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg(INCREMENTAL_OPTION)) {
                    this.incremental = true;
                } else if (argumentsParser.isArg("--force-jumbo")) {
                    this.forceJumbo = true;
                } else if (argumentsParser.isArg(MULTI_DEX_OPTION)) {
                    this.multiDex = true;
                } else if (argumentsParser.isArg("--main-dex-list=")) {
                    this.mainDexListFile = argumentsParser.getLastValue();
                } else if (argumentsParser.isArg(MINIMAL_MAIN_DEX_OPTION)) {
                    this.minimalMainDex = true;
                } else if (argumentsParser.isArg("--set-max-idx-number=")) {
                    this.maxNumberOfIdxPerDex = Integer.parseInt(argumentsParser.getLastValue());
                } else if (argumentsParser.isArg("--input-list=")) {
                    File file = new File(argumentsParser.getLastValue());
                    try {
                        this.inputList = new ArrayList();
                        Main.readPathsFromFile(file.getAbsolutePath(), this.inputList);
                    } catch (IOException unused) {
                        this.context.err.println("Unable to read input list file: " + file.getName());
                        throw new UsageException();
                    }
                } else if (argumentsParser.isArg("--min-sdk-version=")) {
                    String lastValue = argumentsParser.getLastValue();
                    try {
                        i = Integer.parseInt(lastValue);
                    } catch (NumberFormatException unused2) {
                        i = -1;
                    }
                    if (i < 1) {
                        System.err.println("improper min-sdk-version option: " + lastValue);
                        throw new UsageException();
                    }
                    this.minSdkVersion = i;
                } else if (argumentsParser.isArg("--allow-all-interface-method-invokes")) {
                    this.allowAllInterfaceMethodInvokes = true;
                } else {
                    this.context.err.println("unknown option: " + argumentsParser.getCurrent());
                    throw new UsageException();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parse(String[] strArr) throws Throwable {
            ArgumentsParser argumentsParser = new ArgumentsParser(strArr);
            parseFlags(argumentsParser);
            this.fileNames = argumentsParser.getRemaining();
            List<String> list = this.inputList;
            if (list != null && !list.isEmpty()) {
                this.inputList.addAll(Arrays.asList(this.fileNames));
                List<String> list2 = this.inputList;
                this.fileNames = (String[]) list2.toArray(new String[list2.size()]);
            }
            int length = this.fileNames.length;
            boolean z = this.emptyOk;
            if (length == 0) {
                if (!z) {
                    this.context.err.println("no input files specified");
                    throw new UsageException();
                }
            } else if (z) {
                this.context.out.println("ignoring input files");
            }
            if (this.humanOutName == null && this.methodToDump != null) {
                this.humanOutName = "-";
            }
            String str = this.mainDexListFile;
            if (str != null && !this.multiDex) {
                this.context.err.println("--main-dex-list is only supported in combination with --multi-dex");
                throw new UsageException();
            }
            if (this.minimalMainDex && (str == null || !this.multiDex)) {
                this.context.err.println("--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list");
                throw new UsageException();
            }
            boolean z2 = this.multiDex;
            if (z2 && this.incremental) {
                this.context.err.println("--incremental is not supported with --multi-dex");
                throw new UsageException();
            }
            if (z2 && this.outputIsDirectDex) {
                this.context.err.println("Unsupported output \"" + this.outName + "\". --multi-dex supports only archive or directory output");
                throw new UsageException();
            }
            if (this.outputIsDirectory && !z2) {
                this.outName = new File(this.outName, "classes.dex").getPath();
            }
            makeOptionsObjects();
        }

        public void parseFlags(String[] strArr) throws Throwable {
            parseFlags(new ArgumentsParser(strArr));
        }

        public void makeOptionsObjects() {
            CfOptions cfOptions = new CfOptions();
            this.cfOptions = cfOptions;
            cfOptions.positionInfo = this.positionInfo;
            cfOptions.localInfo = this.localInfo;
            cfOptions.strictNameCheck = this.strictNameCheck;
            cfOptions.optimize = this.optimize;
            cfOptions.optimizeListFile = this.optimizeListFile;
            cfOptions.dontOptimizeListFile = this.dontOptimizeListFile;
            cfOptions.statistics = this.statistics;
            boolean z = this.warnings;
            DxContext dxContext = this.context;
            if (z) {
                cfOptions.warn = dxContext.err;
            } else {
                cfOptions.warn = dxContext.noop;
            }
            DexOptions dexOptions = new DexOptions(this.context.err);
            this.dexOptions = dexOptions;
            dexOptions.minSdkVersion = this.minSdkVersion;
            dexOptions.forceJumbo = this.forceJumbo;
            dexOptions.allowAllInterfaceMethodInvokes = this.allowAllInterfaceMethodInvokes;
        }
    }

    public class FileBytesConsumer implements ClassPathOpener.Consumer {
        private FileBytesConsumer() {
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.Consumer
        public boolean processFileBytes(String str, long j, byte[] bArr) {
            return Main.this.processFileBytes(str, j, bArr);
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.Consumer
        public void onException(Exception exc) {
            if (exc instanceof StopProcessing) {
                throw ((StopProcessing) exc);
            }
            if (exc instanceof SimException) {
                Main.this.context.err.println("\nEXCEPTION FROM SIMULATION:");
                Main.this.context.err.println(exc.getMessage() + "\n");
                Main.this.context.err.println(((SimException) exc).getContext());
            } else {
                boolean z = exc instanceof ParseException;
                Main main = Main.this;
                if (z) {
                    main.context.err.println("\nPARSE ERROR:");
                    ParseException parseException = (ParseException) exc;
                    boolean z2 = Main.this.args.debug;
                    Main main2 = Main.this;
                    if (z2) {
                        parseException.printStackTrace(main2.context.err);
                    } else {
                        parseException.printContext(main2.context.err);
                    }
                } else {
                    main.context.err.println("\nUNEXPECTED TOP-LEVEL EXCEPTION:");
                    exc.printStackTrace(Main.this.context.err);
                }
            }
            Main.this.errors.incrementAndGet();
        }

        @Override // com.android.dx.cf.direct.ClassPathOpener.Consumer
        public void onProcessArchiveStart(File file) {
            if (Main.this.args.verbose) {
                Main.this.context.out.println("processing archive " + file + "...");
            }
        }
    }

    public class ClassParserTask implements Callable<DirectClassFile> {
        byte[] bytes;
        String name;

        private ClassParserTask(String str, byte[] bArr) {
            this.name = str;
            this.bytes = bArr;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public DirectClassFile call() {
            return Main.this.parseClass(this.name, this.bytes);
        }
    }

    public class DirectClassFileConsumer implements Callable<Boolean> {
        byte[] bytes;
        Future<DirectClassFile> dcff;
        String name;

        private DirectClassFileConsumer(String str, byte[] bArr, Future<DirectClassFile> future) {
            this.name = str;
            this.bytes = bArr;
            this.dcff = future;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            return call(this.dcff.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Boolean call(DirectClassFile directClassFile) {
            int i;
            int i2;
            int size;
            int size2;
            if (Main.this.args.multiDex) {
                int size3 = directClassFile.getConstantPool().size();
                int size4 = directClassFile.getMethods().size() + size3 + 2;
                int size5 = size3 + directClassFile.getFields().size() + 9;
                synchronized (Main.this.dexRotationLock) {
                    try {
                        synchronized (Main.this.outputDex) {
                            size = Main.this.outputDex.getMethodIds().items().size();
                            size2 = Main.this.outputDex.getFieldIds().items().size();
                        }
                        while (true) {
                            if (size + size4 + Main.this.maxMethodIdsInProcess <= Main.this.args.maxNumberOfIdxPerDex && size2 + size5 + Main.this.maxFieldIdsInProcess <= Main.this.args.maxNumberOfIdxPerDex) {
                                break;
                            }
                            if (Main.this.maxMethodIdsInProcess > 0 || Main.this.maxFieldIdsInProcess > 0) {
                                try {
                                    Main.this.dexRotationLock.wait();
                                } catch (InterruptedException unused) {
                                }
                            } else {
                                if (Main.this.outputDex.getClassDefs().items().size() <= 0) {
                                    break;
                                }
                                Main.this.rotateDexFile();
                            }
                            synchronized (Main.this.outputDex) {
                                size = Main.this.outputDex.getMethodIds().items().size();
                                size2 = Main.this.outputDex.getFieldIds().items().size();
                            }
                        }
                        Main.this.maxMethodIdsInProcess += size4;
                        Main.this.maxFieldIdsInProcess += size5;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                i2 = size5;
                i = size4;
            } else {
                i = 0;
                i2 = 0;
            }
            Main.this.addToDexFutures.add(Main.this.classDefItemConsumer.submit(new ClassDefItemConsumer(this.name, Main.this.classTranslatorPool.submit(new ClassTranslatorTask(this.name, this.bytes, directClassFile)), i, i2)));
            return Boolean.TRUE;
        }
    }

    public class ClassTranslatorTask implements Callable<ClassDefItem> {
        byte[] bytes;
        DirectClassFile classFile;
        String name;

        private ClassTranslatorTask(String str, byte[] bArr, DirectClassFile directClassFile) {
            this.name = str;
            this.bytes = bArr;
            this.classFile = directClassFile;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public ClassDefItem call() {
            return Main.this.translateClass(this.bytes, this.classFile);
        }
    }

    public class ClassDefItemConsumer implements Callable<Boolean> {
        Future<ClassDefItem> futureClazz;
        int maxFieldIdsInClass;
        int maxMethodIdsInClass;
        String name;

        private ClassDefItemConsumer(String str, Future<ClassDefItem> future, int i, int i2) {
            this.name = str;
            this.futureClazz = future;
            this.maxMethodIdsInClass = i;
            this.maxFieldIdsInClass = i2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws ExecutionException {
            try {
                try {
                    ClassDefItem classDefItem = this.futureClazz.get();
                    if (classDefItem != null) {
                        Main.this.addClassToDex(classDefItem);
                        Main.this.updateStatus(true);
                    }
                    Boolean bool = Boolean.TRUE;
                    if (!Main.this.args.multiDex) {
                        return bool;
                    }
                    synchronized (Main.this.dexRotationLock) {
                        Main.this.maxMethodIdsInProcess -= this.maxMethodIdsInClass;
                        Main.this.maxFieldIdsInProcess -= this.maxFieldIdsInClass;
                        Main.this.dexRotationLock.notifyAll();
                    }
                    return bool;
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause instanceof Exception) {
                        throw ((Exception) cause);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                if (Main.this.args.multiDex) {
                    synchronized (Main.this.dexRotationLock) {
                        Main.this.maxMethodIdsInProcess -= this.maxMethodIdsInClass;
                        Main.this.maxFieldIdsInProcess -= this.maxFieldIdsInClass;
                        Main.this.dexRotationLock.notifyAll();
                    }
                }
                throw th;
            }
        }
    }

    public class DexWriter implements Callable<byte[]> {
        private final DexFile dexFile;

        private DexWriter(DexFile dexFile) {
            this.dexFile = dexFile;
        }

        @Override // java.util.concurrent.Callable
        public byte[] call() {
            return Main.this.writeDex(this.dexFile);
        }
    }
}
