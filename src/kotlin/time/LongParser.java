package kotlin.time;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaTrack;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\bB\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007Jw\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2K\u0010\u000f\u001aG\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u0010H\u0086\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0003 \u0001R\u000f\u0010\u0002\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0004\u001a\u00020\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\b\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\t\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Lkotlin/time/LongParser;", _UrlKt.FRAGMENT_ENCODE_SET, "overflowLimit", _UrlKt.FRAGMENT_ENCODE_SET, "allowSign", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(JZ)V", "overflowThreshold", "lastDigitMax", "parse", "value", _UrlKt.FRAGMENT_ENCODE_SET, "startIndex", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "endIndex", MediaTrack.ROLE_SIGN, "hasOverflow", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1656#2,3:1614\n1656#2,3:1617\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n*L\n1295#1:1614,3\n1302#1:1617,3\n*E\n"})
public final class LongParser {
    private final boolean allowSign;
    private final long lastDigitMax;
    private final long overflowLimit;
    private final long overflowThreshold;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final LongParser iso = new LongParser(DurationKt.MAX_MILLIS, true);

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private static final LongParser f1274default = new LongParser(LongCompanionObject.MAX_VALUE, false);

    private LongParser(long j, boolean z) {
        this.overflowLimit = j;
        this.allowSign = z;
        this.overflowThreshold = j / 10;
        this.lastDigitMax = j % 10;
    }

    public final long parse(String value, int startIndex, Function3<? super Integer, ? super Integer, ? super Boolean, Unit> callback) {
        int i;
        char cCharAt;
        char cCharAt2;
        if (this.allowSign) {
            char cCharAt3 = value.charAt(startIndex);
            if (cCharAt3 == '+') {
                startIndex++;
            } else if (cCharAt3 == '-') {
                startIndex++;
                i = -1;
            }
            i = 1;
        } else {
            i = 1;
        }
        while (startIndex < value.length() && value.charAt(startIndex) == '0') {
            startIndex++;
        }
        long j = 0;
        while (startIndex < value.length() && '0' <= (cCharAt = value.charAt(startIndex)) && cCharAt < ':') {
            int i2 = cCharAt - '0';
            if (j > this.overflowThreshold || (j == this.overflowThreshold && i2 > this.lastDigitMax)) {
                while (startIndex < value.length() && '0' <= (cCharAt2 = value.charAt(startIndex)) && cCharAt2 < ':') {
                    startIndex++;
                }
                callback.invoke(Integer.valueOf(startIndex), Integer.valueOf(i), Boolean.TRUE);
                return this.overflowLimit;
            }
            j = ((long) i2) + (j << 3) + (j << 1);
            startIndex++;
        }
        callback.invoke(Integer.valueOf(startIndex), Integer.valueOf(i), Boolean.FALSE);
        return j;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u0015\u0010\u0004\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0015\u0010\b\u001a\u00020\u0005X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/time/LongParser$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "iso", "Lkotlin/time/LongParser;", "getIso", "()Lkotlin/time/LongParser;", PluginsConstants.Settings.DEFAULT, "getDefault", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LongParser getIso() {
            return LongParser.iso;
        }

        public final LongParser getDefault() {
            return LongParser.f1274default;
        }
    }
}
