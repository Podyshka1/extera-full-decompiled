package androidx.media3.common.util;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.Player;
import androidx.media3.common.audio.AudioManagerCompat;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaTrack;
import com.google.common.base.Ascii;
import com.google.common.io.ByteStreams;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.jvm.internal.LongCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.TranslateController;
import org.telegram.tgnet.TLRPC;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Util {
    private static final int[] CRC16_BYTES_MSBF;
    private static final int[] CRC32_BYTES_MSBF;
    private static final int[] CRC8_BYTES_MSBF;

    @Deprecated
    public static final String DEVICE;
    public static final String DEVICE_DEBUG_INFO;
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final long[] EMPTY_LONG_ARRAY;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    private static final Pattern ISM_PATH_PATTERN;

    @Deprecated
    public static final String MANUFACTURER;

    @Deprecated
    public static final String MODEL;

    @Deprecated
    public static final int SDK_INT;
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;
    private static final String[] additionalIsoLanguageReplacements;
    private static final String[] isoLegacyTagReplacements;
    private static HashMap<String, String> languageTagReplacementMap;

    public static long addWithOverflowDefault(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T castNonNull(T t) {
        return t;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T[] castNonNullTypeArray(T[] tArr) {
        return tArr;
    }

    public static int getApiLevelThatAudioFormatIntroducedAudioEncoding(int i) {
        if (i == 30) {
            return 34;
        }
        switch (i) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        switch (i) {
                            case 20:
                                return 30;
                            case 21:
                            case 22:
                                return 31;
                            default:
                                return Integer.MAX_VALUE;
                        }
                }
        }
    }

    public static int getErrorCodeForMediaDrmErrorCode(int i) {
        if (i == 2 || i == 4) {
            return 6005;
        }
        if (i == 10) {
            return 6004;
        }
        if (i == 7) {
            return 6005;
        }
        if (i == 8) {
            return 6003;
        }
        switch (i) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    public static boolean isEncodingHighResolutionPcm(int i) {
        return i == 21 || i == 1342177280 || i == 22 || i == 1610612736 || i == 4;
    }

    public static boolean isEncodingLinearPcm(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 21 || i == 1342177280 || i == 22 || i == 1610612736 || i == 4;
    }

    public static boolean isLinebreak(int i) {
        return i == 10 || i == 13;
    }

    public static long msToUs(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j * 1000;
    }

    public static long subtractWithOverflowDefault(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j4) & (j2 ^ j)) < 0 ? j3 : j4;
    }

    public static long toUnsignedLong(int i) {
        return ((long) i) & 4294967295L;
    }

    static {
        int i = Build.VERSION.SDK_INT;
        SDK_INT = i;
        String str = Build.DEVICE;
        DEVICE = str;
        String str2 = Build.MANUFACTURER;
        MANUFACTURER = str2;
        String str3 = Build.MODEL;
        MODEL = str3;
        DEVICE_DEBUG_INFO = str + ", " + str3 + ", " + str2 + ", " + i;
        EMPTY_BYTE_ARRAY = new byte[0];
        EMPTY_LONG_ARRAY = new long[0];
        XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
        ISM_PATH_PATTERN = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        additionalIsoLanguageReplacements = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        isoLegacyTagReplacements = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        CRC16_BYTES_MSBF = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        CRC8_BYTES_MSBF = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, Opcodes.SHL_INT_LIT8, 231, 238, 233, Opcodes.INVOKE_CUSTOM, Opcodes.INVOKE_POLYMORPHIC_RANGE, 242, 245, Opcodes.ADD_INT_LIT8, Opcodes.XOR_INT_LIT8, Opcodes.OR_INT_LIT16, Opcodes.RSUB_INT, 196, 195, 202, Opcodes.MUL_DOUBLE_2ADDR, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, Opcodes.DIV_DOUBLE_2ADDR, Opcodes.DIV_INT_LIT8, Opcodes.REM_INT_LIT8, Opcodes.AND_INT_LIT16, Opcodes.MUL_INT_LIT16, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, Opcodes.CONST_METHOD_HANDLE, 247, 240, TLRPC.LAYER, Opcodes.USHR_INT_LIT8, 235, 236, 193, 198, Opcodes.REM_DOUBLE_2ADDR, 200, Opcodes.AND_INT_LIT8, Opcodes.MUL_INT_LIT8, Opcodes.DIV_INT_LIT16, Opcodes.REM_INT_LIT16, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, Opcodes.OR_INT_LIT8, Opcodes.RSUB_INT_LIT8, Opcodes.ADD_INT_LIT16, Opcodes.XOR_INT_LIT16, 194, 197, Opcodes.SUB_DOUBLE_2ADDR, 203, 230, Opcodes.SHR_INT_LIT8, 232, 239, 250, Opcodes.INVOKE_CUSTOM_RANGE, 244, 243};
    }

    @Deprecated
    public static byte[] toByteArray(InputStream inputStream) {
        return ByteStreams.toByteArray(inputStream);
    }

    public static Intent registerReceiverNotExported(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (Build.VERSION.SDK_INT < 33) {
            return context.registerReceiver(broadcastReceiver, intentFilter);
        }
        return context.registerReceiver(broadcastReceiver, intentFilter, 4);
    }

    public static boolean isLocalFileUri(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || Objects.equals(scheme, "file");
    }

    public static <T> boolean contentEquals(SparseArray<T> sparseArray, SparseArray<T> sparseArray2) {
        if (sparseArray == null) {
            return sparseArray2 == null;
        }
        if (sparseArray2 == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return sparseArray.contentEquals(sparseArray2);
        }
        int size = sparseArray.size();
        if (size != sparseArray2.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!Objects.equals(sparseArray.valueAt(i), sparseArray2.get(sparseArray.keyAt(i)))) {
                return false;
            }
        }
        return true;
    }

    public static <T> int contentHashCode(SparseArray<T> sparseArray) {
        if (Build.VERSION.SDK_INT >= 31) {
            return sparseArray.contentHashCode();
        }
        int iKeyAt = 17;
        for (int i = 0; i < sparseArray.size(); i++) {
            iKeyAt = (((iKeyAt * 31) + sparseArray.keyAt(i)) * 31) + Objects.hashCode(sparseArray.valueAt(i));
        }
        return iKeyAt;
    }

    public static boolean contains(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean contains(SparseArray<T> sparseArray, int i) {
        return sparseArray.indexOfKey(i) >= 0;
    }

    public static <T> void removeRange(List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            Segment$$ExternalSyntheticBUOutline0.m924m();
        } else if (i != i2) {
            list.subList(i, i2).clear();
        }
    }

    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i) {
        Assertions.checkArgument(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T[] nullSafeArrayCopyOfRange(T[] tArr, int i, int i2) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i2 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i, i2);
    }

    public static <T> T[] nullSafeArrayAppend(T[] tArr, T t) {
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length + 1);
        objArrCopyOf[tArr.length] = t;
        return (T[]) castNonNullTypeArray(objArrCopyOf);
    }

    public static <T> T[] nullSafeArrayConcatenation(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static Handler createHandlerForCurrentLooper() {
        return createHandlerForCurrentLooper(null);
    }

    public static Handler createHandlerForCurrentLooper(Handler.Callback callback) {
        return createHandler((Looper) Assertions.checkStateNotNull(Looper.myLooper()), callback);
    }

    public static Handler createHandlerForCurrentOrMainLooper() {
        return createHandlerForCurrentOrMainLooper(null);
    }

    public static Handler createHandlerForCurrentOrMainLooper(Handler.Callback callback) {
        return createHandler(getCurrentOrMainLooper(), callback);
    }

    public static Handler createHandler(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static boolean postOrRun(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static <T> ListenableFuture<T> postOrRunWithCompletion(Handler handler, final Runnable runnable, final T t) {
        final SettableFuture settableFutureCreate = SettableFuture.create();
        postOrRun(handler, new Runnable() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Util.$r8$lambda$A_PXnw1FVDYyxMydqIC2uPE2SHA(settableFutureCreate, runnable, t);
            }
        });
        return settableFutureCreate;
    }

    public static /* synthetic */ void $r8$lambda$A_PXnw1FVDYyxMydqIC2uPE2SHA(SettableFuture settableFuture, Runnable runnable, Object obj) {
        try {
            if (settableFuture.isCancelled()) {
                return;
            }
            runnable.run();
            settableFuture.set(obj);
        } catch (Throwable th) {
            settableFuture.setException(th);
        }
    }

    public static <T, U> ListenableFuture<T> transformFutureAsync(final ListenableFuture<U> listenableFuture, final AsyncFunction<U, T> asyncFunction) {
        final SettableFuture settableFutureCreate = SettableFuture.create();
        settableFutureCreate.addListener(new Runnable() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Util.$r8$lambda$KzvOxWgSiy5ysENJ2aWOycyi_3s(settableFutureCreate, listenableFuture);
            }
        }, MoreExecutors.directExecutor());
        listenableFuture.addListener(new Runnable() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Util.m1828$r8$lambda$c_pOe3I0ViFZgMkkm3VzBGAMjI(listenableFuture, settableFutureCreate, asyncFunction);
            }
        }, MoreExecutors.directExecutor());
        return settableFutureCreate;
    }

    public static /* synthetic */ void $r8$lambda$KzvOxWgSiy5ysENJ2aWOycyi_3s(SettableFuture settableFuture, ListenableFuture listenableFuture) {
        if (settableFuture.isCancelled()) {
            listenableFuture.cancel(false);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$c_pOe3I0ViFZgMkkm-3VzBGAMjI, reason: not valid java name */
    public static /* synthetic */ void m1828$r8$lambda$c_pOe3I0ViFZgMkkm3VzBGAMjI(ListenableFuture listenableFuture, SettableFuture settableFuture, AsyncFunction asyncFunction) {
        try {
            try {
                settableFuture.setFuture(asyncFunction.apply(Futures.getDone(listenableFuture)));
            } catch (Throwable th) {
                settableFuture.setException(th);
            }
        } catch (Error e) {
            e = e;
            settableFuture.setException(e);
        } catch (CancellationException unused) {
            settableFuture.cancel(false);
        } catch (RuntimeException e2) {
            e = e2;
            settableFuture.setException(e);
        } catch (ExecutionException e3) {
            e = e3;
            Throwable cause = e.getCause();
            if (cause != null) {
                e = cause;
            }
            settableFuture.setException(e);
        }
    }

    public static Looper getCurrentOrMainLooper() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    public static /* synthetic */ Thread $r8$lambda$wGFACl6UrrkGCKSFfJQ56NYMqbg(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static ExecutorService newSingleThreadExecutor(final String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.$r8$lambda$wGFACl6UrrkGCKSFfJQ56NYMqbg(str, runnable);
            }
        });
    }

    public static /* synthetic */ Thread $r8$lambda$hEFlRWzxSAkJ9UgK9TIfr0C9Gic(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static ScheduledExecutorService newSingleThreadScheduledExecutor(final String str) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.$r8$lambda$hEFlRWzxSAkJ9UgK9TIfr0C9Gic(str, runnable);
            }
        });
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String getLocaleLanguageTag(Locale locale) {
        return locale.toLanguageTag();
    }

    public static String normalizeLanguageCode(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', SignatureVisitor.SUPER);
        if (!strReplace.isEmpty() && !strReplace.equals(TranslateController.UNKNOWN_LANGUAGE)) {
            str = strReplace;
        }
        String lowerCase = Ascii.toLowerCase(str);
        String str2 = splitAtFirst(lowerCase, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = createIsoLanguageReplacementMap();
        }
        String str3 = languageTagReplacementMap.get(str2);
        if (str3 != null) {
            lowerCase = str3.concat(lowerCase.substring(str2.length()));
            str2 = str3;
        }
        return ("no".equals(str2) || "i".equals(str2) || "zh".equals(str2)) ? maybeReplaceLegacyLanguageTags(lowerCase) : lowerCase;
    }

    public static String fromUtf8Bytes(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static String fromUtf8Bytes(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, StandardCharsets.UTF_8);
    }

    public static byte[] getUtf8Bytes(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static String[] split(String str, String str2) {
        return str.split(str2, -1);
    }

    public static String[] splitAtFirst(String str, String str2) {
        return str.split(str2, 2);
    }

    public static String formatInvariant(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static int ceilDivide(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static long ceilDivide(long j, long j2) {
        return ((j + j2) - 1) / j2;
    }

    public static int constrainValue(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    public static long constrainValue(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    public static float constrainValue(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    public static int percentInt(long j, long j2) {
        long j3;
        long jSaturatedMultiply = LongMath.saturatedMultiply(j, 100L);
        if (jSaturatedMultiply != LongCompanionObject.MAX_VALUE && jSaturatedMultiply != Long.MIN_VALUE) {
            j3 = jSaturatedMultiply / j2;
        } else {
            j3 = j / (j2 / 100);
        }
        return Ints.checkedCast(j3);
    }

    public static int linearSearch(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public static int binarySearchFloor(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int i3;
        int iBinarySearch = Arrays.binarySearch(iArr, i);
        if (iBinarySearch < 0) {
            i3 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i2 = iBinarySearch - 1;
                if (i2 < 0 || iArr[i2] != i) {
                    break;
                }
                iBinarySearch = i2;
            }
            i3 = z ? iBinarySearch : i2;
        }
        return z2 ? Math.max(0, i3) : i3;
    }

    public static int binarySearchFloor(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            i2 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i = iBinarySearch - 1;
                if (i < 0 || jArr[i] != j) {
                    break;
                }
                iBinarySearch = i;
            }
            i2 = z ? iBinarySearch : i;
        }
        return z2 ? Math.max(0, i2) : i2;
    }

    public static <T extends Comparable<? super T>> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int i;
        int i2;
        int iBinarySearch = Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            i2 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i = iBinarySearch - 1;
                if (i < 0 || list.get(i).compareTo(t) != 0) {
                    break;
                }
                iBinarySearch = i;
            }
            i2 = z ? iBinarySearch : i;
        }
        return z2 ? Math.max(0, i2) : i2;
    }

    public static int binarySearchFloor(LongArray longArray, long j, boolean z, boolean z2) {
        int i;
        int size = longArray.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (longArray.get(i3) < j) {
                i2 = i3 + 1;
            } else {
                size = i3 - 1;
            }
        }
        if (z && (i = size + 1) < longArray.size() && longArray.get(i) == j) {
            return i;
        }
        if (z2 && size == -1) {
            return 0;
        }
        return size;
    }

    public static int binarySearchCeil(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int iBinarySearch = Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            i2 = ~iBinarySearch;
        } else {
            while (true) {
                i = iBinarySearch + 1;
                if (i >= jArr.length || jArr[i] != j) {
                    break;
                }
                iBinarySearch = i;
            }
            i2 = z ? iBinarySearch : i;
        }
        return z2 ? Math.min(jArr.length - 1, i2) : i2;
    }

    public static long usToMs(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j / 1000;
    }

    public static long sampleCountToDurationUs(long j, int i) {
        return scaleLargeValue(j, 1000000L, i, RoundingMode.DOWN);
    }

    public static long durationUsToSampleCount(long j, int i) {
        return scaleLargeValue(j, i, 1000000L, RoundingMode.UP);
    }

    public static long parseXsDuration(String str) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(str);
        if (matcher.matches()) {
            boolean zIsEmpty = TextUtils.isEmpty(matcher.group(1));
            String strGroup = matcher.group(3);
            double d = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
            String strGroup2 = matcher.group(5);
            double d2 = d + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
            String strGroup3 = matcher.group(7);
            double d3 = d2 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
            String strGroup4 = matcher.group(10);
            double d4 = d3 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
            String strGroup5 = matcher.group(12);
            double d5 = d4 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
            String strGroup6 = matcher.group(14);
            long j = (long) ((d5 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
            return !zIsEmpty ? -j : j;
        }
        return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
    }

    public static long parseXsDateTime(String str) throws ParserException {
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedContainer("Invalid date/time format: " + str, null);
        }
        int i = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i = (Integer.parseInt(matcher.group(12)) * 60) + Integer.parseInt(matcher.group(13));
            if ("-".equals(matcher.group(11))) {
                i *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(DesugarTimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i != 0 ? timeInMillis - (((long) i) * 60000) : timeInMillis;
    }

    public static long scaleLargeValue(long j, long j2, long j3, RoundingMode roundingMode) {
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        if (j3 >= j2 && j3 % j2 == 0) {
            return LongMath.divide(j, LongMath.divide(j3, j2, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return LongMath.saturatedMultiply(j, LongMath.divide(j2, j3, RoundingMode.UNNECESSARY));
        }
        if (j3 >= j && j3 % j == 0) {
            return LongMath.divide(j2, LongMath.divide(j3, j, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j3 < j && j % j3 == 0) {
            return LongMath.saturatedMultiply(j2, LongMath.divide(j, j3, RoundingMode.UNNECESSARY));
        }
        return scaleLargeValueFallback(j, j2, j3, roundingMode);
    }

    public static void scaleLargeValuesInPlace(long[] jArr, long j, long j2, RoundingMode roundingMode) {
        if (j == 0) {
            Arrays.fill(jArr, 0L);
            return;
        }
        int i = 0;
        if (j2 >= j && j2 % j == 0) {
            long jDivide = LongMath.divide(j2, j, RoundingMode.UNNECESSARY);
            while (i < jArr.length) {
                jArr[i] = LongMath.divide(jArr[i], jDivide, roundingMode);
                i++;
            }
            return;
        }
        if (j2 < j && j % j2 == 0) {
            long jDivide2 = LongMath.divide(j, j2, RoundingMode.UNNECESSARY);
            while (i < jArr.length) {
                jArr[i] = LongMath.saturatedMultiply(jArr[i], jDivide2);
                i++;
            }
            return;
        }
        for (int i2 = 0; i2 < jArr.length; i2++) {
            long j3 = jArr[i2];
            if (j3 != 0) {
                if (j2 >= j3 && j2 % j3 == 0) {
                    jArr[i2] = LongMath.divide(j, LongMath.divide(j2, j3, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j2 < j3 && j3 % j2 == 0) {
                    jArr[i2] = LongMath.saturatedMultiply(j, LongMath.divide(j3, j2, RoundingMode.UNNECESSARY));
                } else {
                    jArr[i2] = scaleLargeValueFallback(j3, j, j2, roundingMode);
                }
            }
        }
    }

    private static long scaleLargeValueFallback(long j, long j2, long j3, RoundingMode roundingMode) {
        long jSaturatedMultiply = LongMath.saturatedMultiply(j, j2);
        if (jSaturatedMultiply != LongCompanionObject.MAX_VALUE && jSaturatedMultiply != Long.MIN_VALUE) {
            return LongMath.divide(jSaturatedMultiply, j3, roundingMode);
        }
        long jGcd = LongMath.gcd(Math.abs(j2), Math.abs(j3));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long jDivide = LongMath.divide(j2, jGcd, roundingMode2);
        long jDivide2 = LongMath.divide(j3, jGcd, roundingMode2);
        long jGcd2 = LongMath.gcd(Math.abs(j), Math.abs(jDivide2));
        long jDivide3 = LongMath.divide(j, jGcd2, roundingMode2);
        long jDivide4 = LongMath.divide(jDivide2, jGcd2, roundingMode2);
        long jSaturatedMultiply2 = LongMath.saturatedMultiply(jDivide3, jDivide);
        if (jSaturatedMultiply2 != LongCompanionObject.MAX_VALUE && jSaturatedMultiply2 != Long.MIN_VALUE) {
            return LongMath.divide(jSaturatedMultiply2, jDivide4, roundingMode);
        }
        double d = jDivide3 * (jDivide / jDivide4);
        if (d > 9.223372036854776E18d) {
            return LongCompanionObject.MAX_VALUE;
        }
        if (d < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return DoubleMath.roundToLong(d, roundingMode);
    }

    public static long scaleLargeTimestamp(long j, long j2, long j3) {
        return scaleLargeValue(j, j2, j3, RoundingMode.DOWN);
    }

    public static void scaleLargeTimestampsInPlace(long[] jArr, long j, long j2) {
        scaleLargeValuesInPlace(jArr, j, j2, RoundingMode.DOWN);
    }

    public static long getMediaDurationForPlayoutDuration(long j, float f) {
        return f == 1.0f ? j : Math.round(j * ((double) f));
    }

    public static long getPlayoutDurationForMediaDuration(long j, float f) {
        return f == 1.0f ? j : Math.round(j / ((double) f));
    }

    public static long toLong(int i, int i2) {
        return toUnsignedLong(i2) | (toUnsignedLong(i) << 32);
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(Character.forDigit((bArr[i] >> 4) & 15, 16));
            sb.append(Character.forDigit(bArr[i] & 15, 16));
        }
        return sb.toString();
    }

    public static int getCodecCountOfType(String str, int i) {
        int i2 = 0;
        for (String str2 : splitCodecs(str)) {
            if (i == MimeTypes.getTrackTypeOfCodec(str2)) {
                i2++;
            }
        }
        return i2;
    }

    public static String getCodecsOfType(String str, int i) {
        String[] strArrSplitCodecs = splitCodecs(str);
        if (strArrSplitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplitCodecs) {
            if (i == MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static String getCodecsWithoutType(String str, int i) {
        String[] strArrSplitCodecs = splitCodecs(str);
        if (strArrSplitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplitCodecs) {
            if (i != MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static String[] splitCodecs(String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return split(str.trim(), "(\\s*,\\s*)");
    }

    public static Format getPcmFormat(int i, int i2, int i3) {
        return new Format.Builder().setSampleMimeType("audio/raw").setChannelCount(i2).setSampleRate(i3).setPcmEncoding(i).build();
    }

    public static int getPcmEncoding(int i) {
        return getPcmEncoding(i, ByteOrder.LITTLE_ENDIAN);
    }

    public static int getPcmEncoding(int i, ByteOrder byteOrder) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 2 : 268435456;
        }
        if (i == 24) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 21 : 1342177280;
        }
        if (i != 32) {
            return 0;
        }
        return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 22 : 1610612736;
    }

    @SuppressLint({"InlinedApi"})
    public static int getAudioTrackChannelConfig(int i) {
        if (i == 10) {
            return Build.VERSION.SDK_INT >= 32 ? 737532 : 6396;
        }
        if (i == 12) {
            return 743676;
        }
        if (i == 24) {
            return Build.VERSION.SDK_INT >= 32 ? 67108860 : 0;
        }
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return Opcodes.SUB_DOUBLE_2ADDR;
            case 5:
                return Opcodes.REM_INT_LIT8;
            case 6:
                return Opcodes.INVOKE_CUSTOM;
            case 7:
                return 1276;
            case 8:
                return 6396;
            default:
                return 0;
        }
    }

    public static AudioFormat getAudioFormat(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    public static int getPcmFrameSize(int i, int i2) {
        return getByteDepth(i) * i2;
    }

    public static int getByteDepth(int i) {
        if (i != 2) {
            if (i == 3) {
                return 1;
            }
            if (i != 4) {
                if (i != 21) {
                    if (i != 22) {
                        if (i != 268435456) {
                            if (i != 1342177280) {
                                if (i != 1610612736) {
                                    Segment$$ExternalSyntheticBUOutline0.m924m();
                                    return 0;
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    public static int generateAudioSessionIdV21(Context context) {
        return AudioManagerCompat.getAudioManager(context).generateAudioSessionId();
    }

    public static int inferContentType(Uri uri) {
        int iInferContentTypeForExtension;
        String scheme = uri.getScheme();
        if (scheme != null && (Ascii.equalsIgnoreCase("rtsp", scheme) || Ascii.equalsIgnoreCase("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iInferContentTypeForExtension = inferContentTypeForExtension(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iInferContentTypeForExtension;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher((CharSequence) Assertions.checkNotNull(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            if (strGroup.contains("format=mpd-time-csf")) {
                return 0;
            }
            if (strGroup.contains("format=m3u8-aapl")) {
                return 2;
            }
        }
        return 1;
    }

    public static int inferContentTypeForExtension(String str) {
        String lowerCase = Ascii.toLowerCase(str);
        lowerCase.getClass();
        switch (lowerCase) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }

    public static int inferContentTypeForUriAndMimeType(Uri uri, String str) {
        if (str == null) {
            return inferContentType(uri);
        }
        switch (str) {
            case "application/x-mpegURL":
                return 2;
            case "application/vnd.ms-sstr+xml":
                return 1;
            case "application/dash+xml":
                return 0;
            case "application/x-rtsp":
                return 3;
            default:
                return 4;
        }
    }

    public static int crc32(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = CRC32_BYTES_MSBF[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    public static int crc16(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            int i4 = UnsignedBytes.toInt(bArr[i]);
            i3 = crc16UpdateFourBits(i4 & 15, crc16UpdateFourBits(i4 >> 4, i3));
            i++;
        }
        return i3;
    }

    private static int crc16UpdateFourBits(int i, int i2) {
        return (CRC16_BYTES_MSBF[(i ^ ((i2 >> 12) & 255)) & 255] ^ ((i2 << 4) & 65535)) & 65535;
    }

    public static int crc8(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = CRC8_BYTES_MSBF[i3 ^ (bArr[i] & 255)];
            i++;
        }
        return i3;
    }

    public static int getBigEndianInt(ByteBuffer byteBuffer, int i) {
        int i2 = byteBuffer.getInt(i);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i2 : Integer.reverseBytes(i2);
    }

    public static ByteBuffer createReadOnlyByteBuffer(ByteBuffer byteBuffer) {
        return byteBuffer.asReadOnlyBuffer().order(byteBuffer.order());
    }

    public static String getCountryCode(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return Ascii.toUpperCase(networkCountryIso);
            }
        }
        return Ascii.toUpperCase(Locale.getDefault().getCountry());
    }

    public static String[] getSystemLanguageCodes() {
        String[] systemLocales = getSystemLocales();
        for (int i = 0; i < systemLocales.length; i++) {
            systemLocales[i] = normalizeLanguageCode(systemLocales[i]);
        }
        return systemLocales;
    }

    public static boolean inflate(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        if (parsableByteArray.bytesLeft() == 0) {
            return false;
        }
        if (parsableByteArray2.capacity() < parsableByteArray.bytesLeft()) {
            parsableByteArray2.ensureCapacity(parsableByteArray.bytesLeft() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.bytesLeft());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(parsableByteArray2.getData(), iInflate, parsableByteArray2.capacity() - iInflate);
                if (inflater.finished()) {
                    parsableByteArray2.setLimit(iInflate);
                    inflater.reset();
                    return true;
                }
                if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                }
                if (iInflate == parsableByteArray2.capacity()) {
                    parsableByteArray2.ensureCapacity(parsableByteArray2.capacity() * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static boolean maybeInflate(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        return parsableByteArray.bytesLeft() > 0 && parsableByteArray.peekUnsignedByte() == 120 && inflate(parsableByteArray, parsableByteArray2, inflater);
    }

    public static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static boolean isAutomotive(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static boolean isWear(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static Point getCurrentDisplayModeSize(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            display = ((WindowManager) Assertions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return getCurrentDisplayModeSize(context, display);
    }

    public static Point getCurrentDisplayModeSize(Context context, Display display) {
        String systemProperty;
        if (display.getDisplayId() == 0 && isTv(context)) {
            if (Build.VERSION.SDK_INT < 28) {
                systemProperty = getSystemProperty("sys.display-size");
            } else {
                systemProperty = getSystemProperty("vendor.display-size");
            }
            if (!TextUtils.isEmpty(systemProperty)) {
                try {
                    String[] strArrSplit = split(systemProperty.trim(), "x");
                    if (strArrSplit.length == 2) {
                        int i = Integer.parseInt(strArrSplit[0]);
                        int i2 = Integer.parseInt(strArrSplit[1]);
                        if (i > 0 && i2 > 0) {
                            return new Point(i, i2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                Log.m160e("Util", "Invalid display size: " + systemProperty);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        getDisplaySizeV23(display, point);
        return point;
    }

    public static String getTrackTypeString(int i) {
        switch (i) {
            case -2:
                return "none";
            case -1:
                return "unknown";
            case 0:
                return PluginsConstants.Settings.DEFAULT;
            case 1:
                return MediaStreamTrack.AUDIO_TRACK_KIND;
            case 2:
                return MediaStreamTrack.VIDEO_TRACK_KIND;
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                if (i < 10000) {
                    return "?";
                }
                return "custom (" + i + ")";
        }
    }

    public static boolean isBitmapFactorySupportedMimeType(String str) {
        str.getClass();
        switch (str) {
            case "image/avif":
                return Build.VERSION.SDK_INT >= 34;
            case "image/heic":
            case "image/heif":
                return Build.VERSION.SDK_INT >= 26;
            case "image/jpeg":
            case "image/webp":
            case "image/bmp":
            case "image/png":
                return true;
            default:
                return false;
        }
    }

    public static List<String> getSelectionFlagStrings(int i) {
        ArrayList arrayList = new ArrayList();
        if ((i & 4) != 0) {
            arrayList.add("auto");
        }
        if ((i & 1) != 0) {
            arrayList.add(PluginsConstants.Settings.DEFAULT);
        }
        if ((i & 2) != 0) {
            arrayList.add("forced");
        }
        return arrayList;
    }

    public static List<String> getRoleFlagStrings(int i) {
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            arrayList.add(MediaTrack.ROLE_MAIN);
        }
        if ((i & 2) != 0) {
            arrayList.add("alt");
        }
        if ((i & 4) != 0) {
            arrayList.add(MediaTrack.ROLE_SUPPLEMENTARY);
        }
        if ((i & 8) != 0) {
            arrayList.add(MediaTrack.ROLE_COMMENTARY);
        }
        if ((i & 16) != 0) {
            arrayList.add(MediaTrack.ROLE_DUB);
        }
        if ((i & 32) != 0) {
            arrayList.add(MediaTrack.ROLE_EMERGENCY);
        }
        if ((i & 64) != 0) {
            arrayList.add(MediaTrack.ROLE_CAPTION);
        }
        if ((i & 128) != 0) {
            arrayList.add(MediaTrack.ROLE_SUBTITLE);
        }
        if ((i & 256) != 0) {
            arrayList.add(MediaTrack.ROLE_SIGN);
        }
        if ((i & 512) != 0) {
            arrayList.add("describes-video");
        }
        if ((i & 1024) != 0) {
            arrayList.add("describes-music");
        }
        if ((i & 2048) != 0) {
            arrayList.add("enhanced-intelligibility");
        }
        if ((i & 4096) != 0) {
            arrayList.add("transcribes-dialog");
        }
        if ((i & 8192) != 0) {
            arrayList.add("easy-read");
        }
        if ((i & 16384) != 0) {
            arrayList.add("trick-play");
        }
        if ((i & 32768) != 0) {
            arrayList.add("auxiliary");
        }
        return arrayList;
    }

    public static String getAuxiliaryTrackTypeString(int i) {
        if (i == 0) {
            return "undefined";
        }
        if (i == 1) {
            return "original";
        }
        if (i == 2) {
            return "depth-linear";
        }
        if (i == 3) {
            return "depth-inverse";
        }
        if (i == 4) {
            return "depth metadata";
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Unsupported auxiliary track type");
        return null;
    }

    public static long getNowUnixTimeMs(long j) {
        if (j == -9223372036854775807L) {
            return System.currentTimeMillis();
        }
        return android.os.SystemClock.elapsedRealtime() + j;
    }

    public static int getInt24(ByteBuffer byteBuffer, int i) {
        ByteOrder byteOrderOrder = byteBuffer.order();
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        byte b2 = byteBuffer.get(byteOrderOrder == byteOrder ? i : i + 2);
        byte b3 = byteBuffer.get(i + 1);
        if (byteBuffer.order() == byteOrder) {
            i += 2;
        }
        return (((byteBuffer.get(i) << 8) & 65280) | (((b2 << 24) & (-16777216)) | ((b3 << 16) & 16711680))) >> 8;
    }

    public static void putInt24(ByteBuffer byteBuffer, int i) {
        Assertions.checkArgument(((-16777216) & i) == 0 || (i & (-8388608)) == -8388608, "Value out of range of 24-bit integer: " + Integer.toHexString(i));
        Assertions.checkArgument(byteBuffer.remaining() >= 3);
        ByteOrder byteOrderOrder = byteBuffer.order();
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        byteBuffer.put((byte) (byteOrderOrder == byteOrder ? (i & 16711680) >> 16 : i & 255)).put((byte) ((65280 & i) >> 8)).put((byte) (byteBuffer.order() == byteOrder ? i & 255 : (i & 16711680) >> 16));
    }

    public static <T> void moveItems(List<T> list, int i, int i2, int i3) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i4 = (i2 - i) - 1; i4 >= 0; i4--) {
            arrayDeque.addFirst(list.remove(i + i4));
        }
        list.addAll(Math.min(i3, list.size()), arrayDeque);
    }

    public static int getErrorCodeFromPlatformDiagnosticsInfo(String str) {
        String[] strArrSplit;
        int length;
        int i = 0;
        if (str == null || (length = (strArrSplit = split(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z = length >= 3 && "neg".equals(strArrSplit[length - 2]);
        try {
            i = Integer.parseInt((String) Assertions.checkNotNull(str2));
            if (z) {
                return -i;
            }
        } catch (NumberFormatException unused) {
        }
        return i;
    }

    public static boolean isFrameDropAllowedOnSurfaceInput(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return true;
        }
        if (i == 30) {
            String str = Build.MODEL;
            if (Ascii.equalsIgnoreCase(str, "moto g(20)") || Ascii.equalsIgnoreCase(str, "rmx3231")) {
                return true;
            }
        }
        return i == 34 && Ascii.equalsIgnoreCase(Build.MODEL, "sm-x200");
    }

    public static int getMaxPendingFramesCountForMediaCodecDecoders(Context context) {
        return isFrameDropAllowedOnSurfaceInput(context) ? 1 : 5;
    }

    public static String getFormatSupportString(int i) {
        if (i == 0) {
            return "NO";
        }
        if (i == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i == 4) {
            return "YES";
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        return null;
    }

    public static Player.Commands getAvailableCommands(Player player, Player.Commands commands) {
        boolean zIsPlayingAd = player.isPlayingAd();
        boolean zIsCurrentMediaItemSeekable = player.isCurrentMediaItemSeekable();
        boolean zHasPreviousMediaItem = player.hasPreviousMediaItem();
        boolean zHasNextMediaItem = player.hasNextMediaItem();
        boolean zIsCurrentMediaItemLive = player.isCurrentMediaItemLive();
        boolean zIsCurrentMediaItemDynamic = player.isCurrentMediaItemDynamic();
        boolean zIsEmpty = player.getCurrentTimeline().isEmpty();
        boolean z = false;
        Player.Commands.Builder builderAddIf = new Player.Commands.Builder().addAll(commands).addIf(4, !zIsPlayingAd).addIf(5, zIsCurrentMediaItemSeekable && !zIsPlayingAd).addIf(6, zHasPreviousMediaItem && !zIsPlayingAd).addIf(7, !zIsEmpty && (zHasPreviousMediaItem || !zIsCurrentMediaItemLive || zIsCurrentMediaItemSeekable) && !zIsPlayingAd).addIf(8, zHasNextMediaItem && !zIsPlayingAd).addIf(9, !zIsEmpty && (zHasNextMediaItem || (zIsCurrentMediaItemLive && zIsCurrentMediaItemDynamic)) && !zIsPlayingAd).addIf(10, !zIsPlayingAd).addIf(11, zIsCurrentMediaItemSeekable && !zIsPlayingAd);
        if (zIsCurrentMediaItemSeekable && !zIsPlayingAd) {
            z = true;
        }
        return builderAddIf.addIf(12, z).build();
    }

    public static String intToStringMaxRadix(int i) {
        return Integer.toString(i, 36);
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    public static boolean shouldShowPlayButton(Player player, boolean z) {
        return player == null || !player.getPlayWhenReady() || player.getPlaybackState() == 1 || player.getPlaybackState() == 4 || !(!z || player.getPlaybackSuppressionReason() == 0 || player.getPlaybackSuppressionReason() == 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean handlePlayButtonAction(Player player) {
        boolean z = false;
        if (player == null) {
            return false;
        }
        int playbackState = player.getPlaybackState();
        if (playbackState == 1 && player.isCommandAvailable(2)) {
            player.prepare();
        } else {
            if (playbackState == 4 && player.isCommandAvailable(4)) {
                player.seekToDefaultPosition();
            }
            if (player.isCommandAvailable(1)) {
                return z;
            }
            player.play();
            return true;
        }
        z = true;
        if (player.isCommandAvailable(1)) {
        }
    }

    public static boolean handlePauseButtonAction(Player player) {
        if (player == null || !player.isCommandAvailable(1)) {
            return false;
        }
        player.pause();
        return true;
    }

    public static boolean handlePlayPauseButtonAction(Player player, boolean z) {
        if (shouldShowPlayButton(player, z)) {
            return handlePlayButtonAction(player);
        }
        return handlePauseButtonAction(player);
    }

    private static String getSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            Log.m161e("Util", "Failed to read system property " + str, e);
            return null;
        }
    }

    private static void getDisplaySizeV23(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    private static String[] getSystemLocales() {
        return getSystemLocalesV24(Resources.getSystem().getConfiguration());
    }

    private static String[] getSystemLocalesV24(Configuration configuration) {
        return split(configuration.getLocales().toLanguageTags(), ",");
    }

    private static HashMap<String, String> createIsoLanguageReplacementMap() {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> map = new HashMap<>(iSOLanguages.length + additionalIsoLanguageReplacements.length);
        int i = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    map.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = additionalIsoLanguageReplacements;
            if (i >= strArr.length) {
                return map;
            }
            map.put(strArr[i], strArr[i + 1]);
            i += 2;
        }
    }

    private static String maybeReplaceLegacyLanguageTags(String str) {
        int i = 0;
        while (true) {
            String[] strArr = isoLegacyTagReplacements;
            if (i >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i])) {
                return strArr[i + 1] + str.substring(strArr[i].length());
            }
            i += 2;
        }
    }
}
