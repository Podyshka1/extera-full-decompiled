package org.telegram.messenger;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Debug;
import android.util.Log;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.time.FastDateFormat;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
public class FileLog {
    private static volatile FileLog Instance = null;
    private static final int MAX_PENDING_PROTOCOL_DUMPS = 8;
    public static boolean databaseIsMalformed = false;
    private static long dumpedHeap = 0;
    private static ExclusionStrategy exclusionStrategy = null;
    private static Gson gson = null;
    private static volatile boolean gsonDisabled = false;
    private static final String mtproto_tag = "MTProto";
    private static final AtomicInteger pendingProtocolDumps = new AtomicInteger();
    private static HashSet<String> privateFields = null;
    private static final String tag = "tmessages";
    private boolean initied;
    private boolean initiing;
    private OutputStreamWriter streamWriter = null;
    private FastDateFormat dateFormat = null;
    private FastDateFormat fileDateFormat = null;
    private DispatchQueue logQueue = null;
    private File currentFile = null;
    private File networkFile = null;
    private File tonlibFile = null;
    private OutputStreamWriter tlStreamWriter = null;
    private File tlRequestsFile = null;

    public static FileLog getInstance() {
        FileLog fileLog;
        FileLog fileLog2 = Instance;
        if (fileLog2 != null) {
            return fileLog2;
        }
        synchronized (FileLog.class) {
            try {
                fileLog = Instance;
                if (fileLog == null) {
                    fileLog = new FileLog();
                    Instance = fileLog;
                    if (BuildVars.LOGS_ENABLED) {
                        fileLog.init();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileLog;
    }

    private FileLog() {
    }

    private static void postProtocolDump(final Runnable runnable) {
        AtomicInteger atomicInteger = pendingProtocolDumps;
        if (atomicInteger.incrementAndGet() > 8) {
            atomicInteger.decrementAndGet();
            return;
        }
        try {
            DispatchQueue dispatchQueue = getInstance().logQueue;
            if (dispatchQueue == null) {
                atomicInteger.decrementAndGet();
            } else {
                dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.m5655$r8$lambda$1gAad12jNGhHDubLT5Wle7Y4hc(runnable);
                    }
                });
            }
        } catch (Throwable th) {
            pendingProtocolDumps.decrementAndGet();
            Log.e(tag, "Unable to queue protocol dump", th);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$1g-Aad12jNGhHDubLT5Wle7Y4hc, reason: not valid java name */
    public static /* synthetic */ void m5655$r8$lambda$1gAad12jNGhHDubLT5Wle7Y4hc(Runnable runnable) {
        try {
            runnable.run();
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void dumpResponseAndRequest(final int i, final TLObject tLObject, final TLObject tLObject2, final TLRPC.TL_error tL_error, final long j, long j2, final int i2) {
        if (BuildVars.DEBUG_PRIVATE_VERSION && BuildVars.LOGS_ENABLED && tLObject != null) {
            final String simpleName = tLObject.getClass().getSimpleName();
            if (tL_error == null && ("TL_upload_getFile".equals(simpleName) || "TL_upload_getWebFile".equals(simpleName))) {
                return;
            }
            final long jCurrentTimeMillis = System.currentTimeMillis();
            final long j3 = jCurrentTimeMillis - j2;
            final boolean z = tL_error != null;
            postProtocolDump(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    FileLog.$r8$lambda$4HIqzTHMrgUU3rTDJrn9g45LFJM(simpleName, tLObject, tLObject2, tL_error, j, j3, i2, i, jCurrentTimeMillis, z);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$4HIqzTHMrgUU3rTDJrn9g45LFJM(String str, TLObject tLObject, TLObject tLObject2, TLRPC.TL_error tL_error, long j, long j2, int i, int i2, long j3, boolean z) {
        String str2;
        checkGson();
        String str3 = "req -> " + str + " : " + gson.toJson(tLObject);
        if (tLObject2 != null) {
            str2 = "res -> " + tLObject2.getClass().getSimpleName() + " : " + gson.toJson(tLObject2);
        } else if (tL_error == null) {
            str2 = "null";
        } else {
            str2 = "err -> " + tL_error.getClass().getSimpleName() + " : " + gson.toJson(tL_error);
        }
        try {
            String str4 = "requestMsgId=" + j + " requestingTime=" + j2 + " request_token=" + i + " account=" + i2;
            FileLog fileLog = getInstance();
            fileLog.tlStreamWriter.write(fileLog.dateFormat.format(j3) + " " + str4);
            fileLog.tlStreamWriter.write("\n");
            fileLog.tlStreamWriter.write(str3);
            fileLog.tlStreamWriter.write("\n");
            fileLog.tlStreamWriter.write(str2);
            fileLog.tlStreamWriter.write("\n\n");
            fileLog.tlStreamWriter.flush();
            int i3 = z ? 6 : 3;
            Log.println(i3, mtproto_tag, str4);
            Log.println(i3, mtproto_tag, str3);
            Log.println(i3, mtproto_tag, str2);
            Log.println(i3, mtproto_tag, " ");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void dumpUnparsedMessage(final TLObject tLObject, final long j, final int i) {
        if (BuildVars.DEBUG_PRIVATE_VERSION && BuildVars.LOGS_ENABLED && tLObject != null) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            final boolean z = gsonDisabled;
            postProtocolDump(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FileLog.$r8$lambda$NeUmvojbr7aW_lbKnKba6sT3Mu0(tLObject, z, jCurrentTimeMillis, j, i);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$NeUmvojbr7aW_lbKnKba6sT3Mu0(TLObject tLObject, boolean z, long j, long j2, int i) {
        checkGson();
        StringBuilder sb = new StringBuilder("receive message -> ");
        sb.append(tLObject.getClass().getSimpleName());
        sb.append(" : ");
        Object json = tLObject;
        if (!z) {
            json = gson.toJson(tLObject);
        }
        sb.append(json);
        String string = sb.toString();
        try {
            FileLog fileLog = getInstance();
            fileLog.tlStreamWriter.write(fileLog.dateFormat.format(j) + " msgId=" + j2 + " account=" + i);
            fileLog.tlStreamWriter.write("\n");
            fileLog.tlStreamWriter.write(string);
            fileLog.tlStreamWriter.write("\n\n");
            fileLog.tlStreamWriter.flush();
            Log.d(mtproto_tag, "msgId=" + j2 + " account=" + i);
            Log.d(mtproto_tag, string);
            Log.d(mtproto_tag, " ");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void disableGson(boolean z) {
        gsonDisabled = z;
    }

    private static void checkGson() {
        if (gson == null) {
            HashSet<String> hashSet = new HashSet<>();
            privateFields = hashSet;
            hashSet.add("message");
            privateFields.add("phone");
            privateFields.add("about");
            privateFields.add("status_text");
            privateFields.add("bytes");
            privateFields.add("secret");
            privateFields.add("stripped_thumb");
            privateFields.add("strippedBitmap");
            privateFields.add("networkType");
            privateFields.add("disableFree");
            privateFields.add("mContext");
            privateFields.add(PluginsConstants.MenuItemProperties.PRIORITY);
            privateFields.add("constructor");
            privateFields.add("constructorName");
            privateFields.add("parentRichText");
            privateFields.add("parentBlock");
            for (int i = 0; i < 32; i++) {
                privateFields.add("FLAG_" + i);
            }
            exclusionStrategy = new ExclusionStrategy() { // from class: org.telegram.messenger.FileLog.1
                @Override // com.google.gson.ExclusionStrategy
                public boolean shouldSkipField(FieldAttributes fieldAttributes) {
                    if (FileLog.privateFields.contains(fieldAttributes.getName())) {
                        return true;
                    }
                    return "message".equalsIgnoreCase(fieldAttributes.getName()) && String.class.equals(fieldAttributes.getDeclaredType());
                }

                @Override // com.google.gson.ExclusionStrategy
                public boolean shouldSkipClass(Class<?> cls) {
                    return NativeByteBuffer.class.isAssignableFrom(cls) || cls.isInstance(DispatchQueue.class) || cls.isInstance(AnimatedFileDrawable.class) || cls.isInstance(ColorStateList.class) || cls.isInstance(Context.class);
                }
            };
            gson = new GsonBuilder().addSerializationExclusionStrategy(exclusionStrategy).registerTypeAdapter(byte[].class, new ByteArrayHexAdapter()).registerTypeAdapterFactory(RuntimeClassNameTypeAdapterFactory.of(TLObject.class, "type_", exclusionStrategy)).registerTypeHierarchyAdapter(TLObject.class, new TLObjectDeserializer()).create();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class ByteArrayHexAdapter extends TypeAdapter<byte[]> {
        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, byte[] bArr) {
            if (bArr == null) {
                jsonWriter.nullValue();
                return;
            }
            StringBuilder sb = new StringBuilder((bArr.length * 2) + 2);
            sb.append("0x");
            for (byte b2 : bArr) {
                sb.append(String.format("%02x", Integer.valueOf(b2 & UByte.MAX_VALUE)));
            }
            jsonWriter.value(sb.toString());
        }

        @Override // com.google.gson.TypeAdapter
        public byte[] read(JsonReader jsonReader) {
            String strNextString = jsonReader.nextString();
            int length = strNextString.length();
            byte[] bArr = new byte[length / 2];
            for (int i = 0; i < length; i += 2) {
                bArr[i / 2] = (byte) ((Character.digit(strNextString.charAt(i), 16) << 4) + Character.digit(strNextString.charAt(i + 1), 16));
            }
            return bArr;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class TLObjectDeserializer implements JsonSerializer<TLObject> {
        private TLObjectDeserializer() {
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x007b A[Catch: Exception -> 0x0043, IllegalAccessException -> 0x0079, TRY_LEAVE, TryCatch #1 {IllegalAccessException -> 0x0079, blocks: (B:16:0x0049, B:20:0x0054, B:22:0x0060, B:24:0x0068, B:26:0x0070, B:31:0x007b), top: B:39:0x0049, outer: #0 }] */
        @Override // com.google.gson.JsonSerializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public JsonElement serialize(TLObject tLObject, Type type, JsonSerializationContext jsonSerializationContext) {
            JsonObject jsonObject = new JsonObject();
            String name = tLObject.getClass().getName();
            if (name.startsWith("org.telegram.tgnet.")) {
                name = name.substring(19);
            }
            jsonObject.addProperty("_", name);
            try {
                for (Field field : tLObject.getClass().getFields()) {
                    if (FileLog.privateFields == null || !FileLog.privateFields.contains(field.getName())) {
                        field.setAccessible(true);
                        try {
                            Object obj = field.get(tLObject);
                            if (!(obj instanceof NativeByteBuffer)) {
                                if (obj != null) {
                                    Class<?> cls = obj.getClass();
                                    if (!cls.isInstance(DispatchQueue.class) && !cls.isInstance(AnimatedFileDrawable.class) && !cls.isInstance(ColorStateList.class) && !cls.isInstance(Context.class)) {
                                        jsonObject.add(field.getName(), jsonSerializationContext.serialize(obj));
                                    }
                                }
                            }
                        } catch (IllegalAccessException e) {
                            e.printStackTrace();
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return jsonObject;
        }
    }

    private void init() {
        if (this.initied) {
            return;
        }
        if (this.initiing && BuildVars.DEBUG_PRIVATE_VERSION) {
            Segment$$ExternalSyntheticBUOutline1.m973m("double init call");
            return;
        }
        this.initiing = true;
        Locale locale = Locale.US;
        this.dateFormat = FastDateFormat.getInstance("dd_MM_yyyy_HH_mm_ss.SSS", locale);
        FastDateFormat fastDateFormat = FastDateFormat.getInstance("dd_MM_yyyy_HH_mm_ss", locale);
        this.fileDateFormat = fastDateFormat;
        String str = fastDateFormat.format(System.currentTimeMillis());
        try {
            File logsDir = AndroidUtilities.getLogsDir();
            if (logsDir == null) {
                return;
            }
            this.currentFile = new File(logsDir, str + ".txt");
            this.tlRequestsFile = new File(logsDir, str + "_mtproto.txt");
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            this.logQueue = new DispatchQueue("logQueue");
            this.currentFile.createNewFile();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(this.currentFile));
            this.streamWriter = outputStreamWriter;
            outputStreamWriter.write("-----start log " + str + "-----\n");
            this.streamWriter.flush();
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(this.tlRequestsFile));
            this.tlStreamWriter = outputStreamWriter2;
            outputStreamWriter2.write("-----start log " + str + "-----\n");
            this.tlStreamWriter.flush();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.initied = true;
    }

    public static void ensureInitied() {
        getInstance().init();
    }

    public static String getNetworkLogPath() {
        if (!BuildVars.LOGS_ENABLED) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        try {
            File logsDir = AndroidUtilities.getLogsDir();
            if (logsDir == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            getInstance().networkFile = new File(logsDir, getInstance().fileDateFormat.format(System.currentTimeMillis()) + "_net.txt");
            return getInstance().networkFile.getAbsolutePath();
        } catch (Throwable th) {
            th.printStackTrace();
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public static String getTonlibLogPath() {
        if (!BuildVars.LOGS_ENABLED) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        try {
            File logsDir = AndroidUtilities.getLogsDir();
            if (logsDir == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            getInstance().tonlibFile = new File(logsDir, getInstance().dateFormat.format(System.currentTimeMillis()) + "_tonlib.txt");
            return getInstance().tonlibFile.getAbsolutePath();
        } catch (Throwable th) {
            th.printStackTrace();
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m1039e(final String str, final Throwable th) {
        if (BuildVars.LOGS_ENABLED) {
            ensureInitied();
            Log.e(tag, str, th);
            if (getInstance().streamWriter != null) {
                getInstance().logQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.$r8$lambda$ryfg8pPf28luuCg32PIBdDV_zWQ(str, th);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$ryfg8pPf28luuCg32PIBdDV_zWQ(String str, Throwable th) {
        try {
            getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: " + str + "\n");
            getInstance().streamWriter.write(th.toString());
            StackTraceElement[] stackTrace = th.getStackTrace();
            for (StackTraceElement stackTraceElement : stackTrace) {
                getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: \tat " + stackTraceElement + "\n");
            }
            getInstance().streamWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m1038e(final String str) {
        if (BuildVars.LOGS_ENABLED) {
            ensureInitied();
            Log.e(tag, str);
            if (getInstance().streamWriter != null) {
                getInstance().logQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.m5656$r8$lambda$33O6X8x_wzj1WlLsLWCLO_lrMA(str);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$3-3O6X8x_wzj1WlLsLWCLO_lrMA, reason: not valid java name */
    public static /* synthetic */ void m5656$r8$lambda$33O6X8x_wzj1WlLsLWCLO_lrMA(String str) {
        try {
            getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: " + str + "\n");
            getInstance().streamWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m1040e(final Throwable th) {
        if (BuildVars.LOGS_ENABLED) {
            if (BuildVars.DEBUG_VERSION && th.getMessage() != null && th.getMessage().contains("disk image is malformed") && !databaseIsMalformed) {
                m1037d("copy malformed files");
                databaseIsMalformed = true;
                File file = new File(ApplicationLoader.getFilesDirFixed(), "malformed_database/");
                file.mkdirs();
                ArrayList<File> databaseFiles = MessagesStorage.getInstance(UserConfig.selectedAccount).getDatabaseFiles();
                for (int i = 0; i < databaseFiles.size(); i++) {
                    try {
                        AndroidUtilities.copyFile(databaseFiles.get(i), new File(file, databaseFiles.get(i).getName()));
                    } catch (IOException e) {
                        m1040e(e);
                    }
                }
            }
            ensureInitied();
            th.printStackTrace();
            if (getInstance().streamWriter != null) {
                getInstance().logQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.$r8$lambda$D2J_brzxzwRMSqQgGdYSvkbQMbA(th);
                    }
                });
            } else {
                th.printStackTrace();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$D2J_brzxzwRMSqQgGdYSvkbQMbA(Throwable th) {
        try {
            getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: " + th + "\n");
            StackTraceElement[] stackTrace = th.getStackTrace();
            for (int i = 0; i < stackTrace.length; i++) {
                getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: \tat " + stackTrace[i] + "\n");
            }
            Throwable cause = th.getCause();
            if (cause != null) {
                getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: Caused by " + cause + "\n");
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: \tat " + stackTraceElement + "\n");
                }
            }
            getInstance().streamWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void fatal(Throwable th) {
        fatal(th, true);
    }

    public void dumpMemory(boolean z) {
        if (z || System.currentTimeMillis() - dumpedHeap >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
            dumpedHeap = System.currentTimeMillis();
            try {
                Debug.dumpHprofData(new File(AndroidUtilities.getLogsDir(), getInstance().dateFormat.format(System.currentTimeMillis()) + "_heap.hprof").getAbsolutePath());
            } catch (Exception e) {
                m1040e(e);
            }
        }
    }

    public static void dumpANR() {
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it = Thread.getAllStackTraces().entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<Thread, StackTraceElement[]> next = it.next();
                Thread key = next.getKey();
                StackTraceElement[] value = next.getValue();
                sb.append("Thread: ");
                sb.append(key.getName());
                sb.append("\n");
                for (StackTraceElement stackTraceElement : value) {
                    sb.append("\tat ");
                    sb.append(stackTraceElement);
                    sb.append("\n");
                }
                sb.append("\n\n");
            } else {
                m1038e("ANR thread dump\n".concat(sb.toString()));
                getInstance().dumpMemory(false);
                return;
            }
        }
    }

    public static void fatal(final Throwable th, boolean z) {
        if (BuildVars.LOGS_ENABLED) {
            if (th instanceof OutOfMemoryError) {
                getInstance().dumpMemory(false);
            }
            ensureInitied();
            th.printStackTrace();
            if (getInstance().streamWriter != null) {
                getInstance().logQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.$r8$lambda$TRk0DdLK6Toqw4YWRDupIvpVsHA(th);
                    }
                });
                return;
            }
            th.printStackTrace();
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                System.exit(2);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$TRk0DdLK6Toqw4YWRDupIvpVsHA(Throwable th) {
        try {
            getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " FATAL/tmessages: " + th + "\n");
            StackTraceElement[] stackTrace = th.getStackTrace();
            for (int i = 0; i < stackTrace.length; i++) {
                getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " FATAL/tmessages: \tat " + stackTrace[i] + "\n");
            }
            Throwable cause = th.getCause();
            if (cause != null) {
                getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: Caused by " + cause + "\n");
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " E/tmessages: \tat " + stackTraceElement + "\n");
                }
            }
            getInstance().streamWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            System.exit(2);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m1037d(final String str) {
        if (BuildVars.LOGS_ENABLED) {
            ensureInitied();
            Log.d(tag, str);
            if (getInstance().streamWriter != null) {
                getInstance().logQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.$r8$lambda$QjWak46fGLuAOzCIOw_uVMgwYRc(str);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$QjWak46fGLuAOzCIOw_uVMgwYRc(String str) {
        try {
            getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " D/tmessages: " + str + "\n");
            getInstance().streamWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
            if (AndroidUtilities.isENOSPC(e)) {
                LaunchActivity.checkFreeDiscSpaceStatic(1);
            }
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m1041w(final String str) {
        if (BuildVars.LOGS_ENABLED) {
            ensureInitied();
            Log.w(tag, str);
            if (getInstance().streamWriter != null) {
                getInstance().logQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLog$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLog.$r8$lambda$TEguAztaml32SOCEXqi9_VCoSYI(str);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$TEguAztaml32SOCEXqi9_VCoSYI(String str) {
        try {
            getInstance().streamWriter.write(getInstance().dateFormat.format(System.currentTimeMillis()) + " W/tmessages: " + str + "\n");
            getInstance().streamWriter.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getLogDirSize() {
        File externalFilesDir = ApplicationLoader.applicationContext.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return "N/A";
        }
        return AndroidUtilities.formatFileSize(Utilities.getDirSize(new File(externalFilesDir.getAbsolutePath() + "/logs").getAbsolutePath(), 5, false), true, true);
    }

    public static void cleanupLogs() {
        File[] fileArrListFiles;
        ensureInitied();
        File logsDir = AndroidUtilities.getLogsDir();
        if (logsDir == null || (fileArrListFiles = logsDir.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (!BuildVars.LOGS_ENABLED || ((getInstance().currentFile == null || !file.getAbsolutePath().equals(getInstance().currentFile.getAbsolutePath())) && ((getInstance().networkFile == null || !file.getAbsolutePath().equals(getInstance().networkFile.getAbsolutePath())) && (getInstance().tonlibFile == null || !file.getAbsolutePath().equals(getInstance().tonlibFile.getAbsolutePath()))))) {
                file.delete();
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class IgnoreSentException extends Exception {
        public IgnoreSentException(String str) {
            super(str);
        }
    }
}
