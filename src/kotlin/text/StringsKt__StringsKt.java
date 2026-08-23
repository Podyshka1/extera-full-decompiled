package kotlin.text;

import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;
import okio.Utf8$$ExternalSyntheticBUOutline1;
import org.mvel2.MVEL;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u001a%\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0088\u0004ø\u0001\u0000\u001a%\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0088\u0004ø\u0001\u0000\u001a%\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0088\u0004ø\u0001\u0000\u001a%\u0010\u0007\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0088\u0004ø\u0001\u0000\u001a%\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0088\u0004ø\u0001\u0000\u001a%\u0010\b\u001a\u00020\u0006*\u00020\u00062\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\u0088\u0004ø\u0001\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0004H\u0086\u0080\u0004\u001a\u001a\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\n\u0010\t\u001a\u00020\n\"\u00020\u0004H\u0086\u0080\u0004\u001a\u001a\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0004H\u0086\u0080\u0004\u001a\u001a\u0010\u0007\u001a\u00020\u0006*\u00020\u00062\n\u0010\t\u001a\u00020\n\"\u00020\u0004H\u0086\u0080\u0004\u001a\u001a\u0010\b\u001a\u00020\u0001*\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0004H\u0086\u0080\u0004\u001a\u001a\u0010\b\u001a\u00020\u0006*\u00020\u00062\n\u0010\t\u001a\u00020\n\"\u00020\u0004H\u0086\u0080\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0086\u0080\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0006*\u00020\u0006H\u0087\u0088\u0004\u001a\u000e\u0010\u0007\u001a\u00020\u0001*\u00020\u0001H\u0086\u0080\u0004\u001a\u000e\u0010\u0007\u001a\u00020\u0006*\u00020\u0006H\u0087\u0088\u0004\u001a\u000e\u0010\b\u001a\u00020\u0001*\u00020\u0001H\u0086\u0080\u0004\u001a\u000e\u0010\b\u001a\u00020\u0006*\u00020\u0006H\u0087\u0088\u0004\u001a \u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0004H\u0086\u0080\u0004\u001a \u0010\u000b\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0004H\u0086\u0080\u0004\u001a \u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0004H\u0086\u0080\u0004\u001a \u0010\u000f\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0004H\u0086\u0080\u0004\u001a!\u0010\u0010\u001a\u00020\u0005*\u0004\u0018\u00010\u0001H\u0087\u0088\u0004\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\u000e\u0010\u0011\u001a\u00020\u0005*\u00020\u0001H\u0087\u0088\u0004\u001a\u000e\u0010\u0012\u001a\u00020\u0005*\u00020\u0001H\u0087\u0088\u0004\u001a\u000e\u0010\u0013\u001a\u00020\u0005*\u00020\u0001H\u0086\u0080\u0004\u001a\u000e\u0010\u0014\u001a\u00020\u0005*\u00020\u0001H\u0087\u0088\u0004\u001a!\u0010\u0015\u001a\u00020\u0005*\u0004\u0018\u00010\u0001H\u0087\u0088\u0004\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\u000e\u0010\u0016\u001a\u00020\u0017*\u00020\u0001H\u0086\u0082\u0004\u001a\u0010\u0010\u0018\u001a\u00020\u0006*\u0004\u0018\u00010\u0006H\u0087\u0088\u0004\u001aE\u0010\u0019\u001a\u0002H\u001a\"\f\b\u0000\u0010\u001b*\u00020\u0001*\u0002H\u001a\"\u0004\b\u0001\u0010\u001a*\u0002H\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u001dH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u001e\u001aE\u0010\u001f\u001a\u0002H\u001a\"\f\b\u0000\u0010\u001b*\u00020\u0001*\u0002H\u001a\"\u0004\b\u0001\u0010\u001a*\u0002H\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001a0\u001dH\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0002\u0010\u001e\u001a\u0016\u0010'\u001a\u00020\u0005*\u00020\u00012\u0006\u0010(\u001a\u00020\rH\u0086\u0080\u0004\u001a\u0016\u0010)\u001a\u00020\u0006*\u00020\u00062\u0006\u0010*\u001a\u00020!H\u0086\u0080\u0004\u001a\u0016\u0010+\u001a\u00020\u0001*\u00020\u00012\u0006\u0010*\u001a\u00020!H\u0086\u0080\u0004\u001a\u001e\u0010+\u001a\u00020\u0001*\u00020\u00062\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\rH\u0087\u0088\u0004\u001a \u0010)\u001a\u00020\u0006*\u00020\u00012\u0006\u0010.\u001a\u00020\r2\b\b\u0002\u0010/\u001a\u00020\rH\u0087\u0088\u0004\u001a\u0016\u0010)\u001a\u00020\u0006*\u00020\u00012\u0006\u0010*\u001a\u00020!H\u0086\u0080\u0004\u001a \u00100\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00100\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00103\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00103\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00104\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00104\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00105\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a \u00105\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a&\u00106\u001a\u00020\u0001*\u00020\u00012\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\r2\u0006\u00107\u001a\u00020\u0001H\u0086\u0080\u0004\u001a&\u00106\u001a\u00020\u0006*\u00020\u00062\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\r2\u0006\u00107\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u001e\u00106\u001a\u00020\u0001*\u00020\u00012\u0006\u0010*\u001a\u00020!2\u0006\u00107\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u001e\u00106\u001a\u00020\u0006*\u00020\u00062\u0006\u0010*\u001a\u00020!2\u0006\u00107\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u001e\u00108\u001a\u00020\u0001*\u00020\u00012\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\rH\u0086\u0080\u0004\u001a\u001e\u00108\u001a\u00020\u0006*\u00020\u00062\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\rH\u0087\u0088\u0004\u001a\u0016\u00108\u001a\u00020\u0001*\u00020\u00012\u0006\u0010*\u001a\u00020!H\u0086\u0080\u0004\u001a\u0016\u00108\u001a\u00020\u0006*\u00020\u00062\u0006\u0010*\u001a\u00020!H\u0087\u0088\u0004\u001a\u0016\u00109\u001a\u00020\u0001*\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u00109\u001a\u00020\u0006*\u00020\u00062\u0006\u0010:\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010;\u001a\u00020\u0001*\u00020\u00012\u0006\u0010<\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010;\u001a\u00020\u0006*\u00020\u00062\u0006\u0010<\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u001e\u0010=\u001a\u00020\u0001*\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u001e\u0010=\u001a\u00020\u0006*\u00020\u00062\u0006\u0010:\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010=\u001a\u00020\u0001*\u00020\u00012\u0006\u00101\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010=\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u0001H\u0086\u0080\u0004\u001a(\u0010>\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010>\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010?\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010?\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010@\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010@\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010A\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a(\u0010A\u001a\u00020\u0006*\u00020\u00062\u0006\u00101\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\b\b\u0002\u00102\u001a\u00020\u0006H\u0086\u0080\u0004\u001a\u001e\u0010B\u001a\u00020\u0006*\u00020\u00012\u0006\u0010C\u001a\u00020D2\u0006\u00107\u001a\u00020\u0006H\u0087\u0088\u0004\u001a/\u0010B\u001a\u00020\u0006*\u00020\u00012\u0006\u0010C\u001a\u00020D2\u0014\b\b\u0010E\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020\u00010\u0003H\u0087\u0088\u0004ø\u0001\u0000\u001a\u001e\u0010G\u001a\u00020\u0006*\u00020\u00012\u0006\u0010C\u001a\u00020D2\u0006\u00107\u001a\u00020\u0006H\u0087\u0088\u0004\u001a*\u0010H\u001a\u00020\u0006*\u00020\u00062\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\bI\u001a*\u0010H\u001a\u00020\u0006*\u00020\u00062\u0012\u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0002\bJ\u001a\u0016\u0010K\u001a\u00020\u0005*\u00020\u00012\u0006\u0010C\u001a\u00020DH\u0087\u008c\u0004\u001a6\u0010L\u001a\u00020\u0005*\u00020\u00012\u0006\u0010M\u001a\u00020\r2\u0006\u0010N\u001a\u00020\u00012\u0006\u0010O\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u0005H\u0080\u0080\u0004\u001a \u0010Q\u001a\u00020\u0005*\u00020\u00012\u0006\u0010R\u001a\u00020\u00042\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a \u0010S\u001a\u00020\u0005*\u00020\u00012\u0006\u0010R\u001a\u00020\u00042\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a \u0010Q\u001a\u00020\u0005*\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a(\u0010Q\u001a\u00020\u0005*\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a \u0010S\u001a\u00020\u0005*\u00020\u00012\u0006\u0010<\u001a\u00020\u00012\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a \u0010T\u001a\u00020\u0006*\u00020\u00012\u0006\u0010N\u001a\u00020\u00012\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a \u0010U\u001a\u00020\u0006*\u00020\u00012\u0006\u0010N\u001a\u00020\u00012\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a*\u0010V\u001a\u00020\r*\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a*\u0010W\u001a\u00020\r*\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a=\u0010X\u001a\u00020\r*\u00020\u00012\u0006\u0010N\u001a\u00020\u00012\u0006\u0010.\u001a\u00020\r2\u0006\u0010/\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u00052\b\b\u0002\u0010Y\u001a\u00020\u0005H\u0082\u0080\u0004¢\u0006\u0002\bZ\u001aG\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0018\u00010\\*\u00020\u00012\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00060^2\u0006\u0010.\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u0005H\u0082\u0080\u0004¢\u0006\u0002\b_\u001a>\u0010[\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0018\u00010\\*\u00020\u00012\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00060^2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a>\u0010`\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0018\u00010\\*\u00020\u00012\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00060^2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a0\u0010V\u001a\u00020\r*\u00020\u00012\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00060^2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a0\u0010W\u001a\u00020\r*\u00020\u00012\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00060^2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a*\u0010X\u001a\u00020\r*\u00020\u00012\u0006\u0010R\u001a\u00020\u00042\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a*\u0010X\u001a\u00020\r*\u00020\u00012\u0006\u0010a\u001a\u00020\u00062\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a*\u0010b\u001a\u00020\r*\u00020\u00012\u0006\u0010R\u001a\u00020\u00042\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a*\u0010b\u001a\u00020\r*\u00020\u00012\u0006\u0010a\u001a\u00020\u00062\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0080\u0004\u001a \u0010c\u001a\u00020\u0005*\u00020\u00012\u0006\u0010N\u001a\u00020\u00012\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0082\u0004\u001a \u0010c\u001a\u00020\u0005*\u00020\u00012\u0006\u0010R\u001a\u00020\u00042\b\b\u0002\u0010P\u001a\u00020\u0005H\u0086\u0082\u0004\u001a\u0016\u0010c\u001a\u00020\u0005*\u00020\u00012\u0006\u0010C\u001a\u00020DH\u0087\u008a\u0004\u001a?\u0010d\u001a\b\u0012\u0004\u0012\u00020!0e*\u00020\u00012\u0006\u0010f\u001a\u00020\n2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u00052\b\b\u0002\u0010g\u001a\u00020\rH\u0082\u0080\u0004¢\u0006\u0002\bh\u001aI\u0010d\u001a\b\u0012\u0004\u0012\u00020!0e*\u00020\u00012\u000e\u0010f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060i2\b\b\u0002\u0010.\u001a\u00020\r2\b\b\u0002\u0010P\u001a\u00020\u00052\b\b\u0002\u0010g\u001a\u00020\rH\u0082\u0080\u0004¢\u0006\u0004\bh\u0010j\u001a\u0012\u0010k\u001a\u00020l2\u0006\u0010g\u001a\u00020\rH\u0080\u0080\u0004\u001aA\u0010m\u001a\b\u0012\u0004\u0012\u00020\u00060e*\u00020\u00012\u0012\u0010f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060i\"\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u00052\b\b\u0002\u0010g\u001a\u00020\rH\u0086\u0080\u0004¢\u0006\u0002\u0010n\u001aA\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00060p*\u00020\u00012\u0012\u0010f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060i\"\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u00052\b\b\u0002\u0010g\u001a\u00020\rH\u0086\u0080\u0004¢\u0006\u0002\u0010q\u001a4\u0010m\u001a\b\u0012\u0004\u0012\u00020\u00060e*\u00020\u00012\n\u0010f\u001a\u00020\n\"\u00020\u00042\b\b\u0002\u0010P\u001a\u00020\u00052\b\b\u0002\u0010g\u001a\u00020\rH\u0086\u0080\u0004\u001a4\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00060p*\u00020\u00012\n\u0010f\u001a\u00020\n\"\u00020\u00042\b\b\u0002\u0010P\u001a\u00020\u00052\b\b\u0002\u0010g\u001a\u00020\rH\u0086\u0080\u0004\u001a1\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00060p*\u00020\u00012\u0006\u00101\u001a\u00020\u00062\u0006\u0010P\u001a\u00020\u00052\u0006\u0010g\u001a\u00020\rH\u0082\u0080\u0004¢\u0006\u0002\br\u001a&\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00060p*\u00020\u00012\u0006\u0010C\u001a\u00020D2\b\b\u0002\u0010g\u001a\u00020\rH\u0087\u0088\u0004\u001a&\u0010m\u001a\b\u0012\u0004\u0012\u00020\u00060e*\u00020\u00012\u0006\u0010C\u001a\u00020D2\b\b\u0002\u0010g\u001a\u00020\rH\u0087\u0088\u0004\u001a\u0014\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00060e*\u00020\u0001H\u0086\u0080\u0004\u001a\u0014\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00060p*\u00020\u0001H\u0086\u0080\u0004\u001a\u001a\u0010u\u001a\u00020\u0005*\u0004\u0018\u00010\u00012\b\u0010N\u001a\u0004\u0018\u00010\u0001H\u0080\u0080\u0004\u001a\u001a\u0010v\u001a\u00020\u0005*\u0004\u0018\u00010\u00012\b\u0010N\u001a\u0004\u0018\u00010\u0001H\u0080\u0080\u0004\u001a\u000e\u0010w\u001a\u00020\u0005*\u00020\u0006H\u0087\u0080\u0004\u001a\u0015\u0010x\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0002\u0010y\u001a-\u0010z\u001a\u00020\r*\u00020\u00062\u0006\u0010.\u001a\u00020\r2\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0080\u0088\u0004ø\u0001\u0000\"\u0019\u0010 \u001a\u00020!*\u00020\u00018FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\"\u0010#\"\u0019\u0010$\u001a\u00020\r*\u00020\u00018FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b%\u0010&\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006{"}, d2 = {"trim", _UrlKt.FRAGMENT_ENCODE_SET, "predicate", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "trimStart", "trimEnd", "chars", _UrlKt.FRAGMENT_ENCODE_SET, "padStart", "length", _UrlKt.FRAGMENT_ENCODE_SET, "padChar", "padEnd", "isNullOrEmpty", "isEmpty", "isNotEmpty", "isBlank", "isNotBlank", "isNullOrBlank", "iterator", "Lkotlin/collections/CharIterator;", "orEmpty", "ifEmpty", "R", "C", "defaultValue", "Lkotlin/Function0;", "(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ifBlank", "indices", "Lkotlin/ranges/IntRange;", "getIndices", "(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;", "lastIndex", "getLastIndex", "(Ljava/lang/CharSequence;)I", "hasSurrogatePairAt", "index", "substring", "range", "subSequence", "start", "end", "startIndex", "endIndex", "substringBefore", "delimiter", "missingDelimiterValue", "substringAfter", "substringBeforeLast", "substringAfterLast", "replaceRange", "replacement", "removeRange", "removePrefix", "prefix", "removeSuffix", "suffix", "removeSurrounding", "replaceBefore", "replaceAfter", "replaceAfterLast", "replaceBeforeLast", "replace", "regex", "Lkotlin/text/Regex;", "transform", "Lkotlin/text/MatchResult;", "replaceFirst", "replaceFirstChar", "replaceFirstCharWithChar", "replaceFirstCharWithCharSequence", "matches", "regionMatchesImpl", "thisOffset", "other", "otherOffset", "ignoreCase", "startsWith", "char", "endsWith", "commonPrefixWith", "commonSuffixWith", "indexOfAny", "lastIndexOfAny", "indexOf", "last", "indexOf$StringsKt__StringsKt", "findAnyOf", "Lkotlin/Pair;", "strings", _UrlKt.FRAGMENT_ENCODE_SET, "findAnyOf$StringsKt__StringsKt", "findLastAnyOf", "string", "lastIndexOf", "contains", "rangesDelimitedBy", "Lkotlin/sequences/Sequence;", "delimiters", "limit", "rangesDelimitedBy$StringsKt__StringsKt", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/Sequence;", "requireNonNegativeLimit", _UrlKt.FRAGMENT_ENCODE_SET, "splitToSequence", "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/Sequence;", "split", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;", "split$StringsKt__StringsKt", "lineSequence", "lines", "contentEqualsIgnoreCaseImpl", "contentEqualsImpl", "toBooleanStrict", "toBooleanStrictOrNull", "(Ljava/lang/String;)Ljava/lang/Boolean;", "skipWhile", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/StringsKt")
@SourceDebugExtension({"SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1660:1\n78#1,22:1661\n112#1,5:1683\n129#1,5:1688\n78#1,22:1693\n106#1:1715\n78#1,22:1716\n112#1,5:1738\n123#1:1743\n112#1,5:1744\n129#1,5:1749\n140#1:1754\n129#1,5:1755\n78#1,22:1760\n112#1,5:1782\n129#1,5:1787\n1088#2,2:1792\n13293#3,2:1794\n13293#3,2:1796\n296#4,2:1798\n296#4,2:1800\n1586#4:1803\n1661#4,3:1804\n1586#4:1807\n1661#4,3:1808\n1#5:1802\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n106#1:1661,22\n123#1:1683,5\n140#1:1688,5\n145#1:1693,22\n150#1:1715\n150#1:1716,22\n155#1:1738,5\n160#1:1743\n160#1:1744,5\n165#1:1749,5\n170#1:1754\n170#1:1755,5\n175#1:1760,22\n186#1:1782,5\n197#1:1787,5\n310#1:1792,2\n976#1:1794,2\n1000#1:1796,2\n1039#1:1798,2\n1045#1:1800,2\n1425#1:1803\n1425#1:1804,3\n1467#1:1807\n1467#1:1808,3\n*E\n"})
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    public static CharSequence trim(CharSequence charSequence) {
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zIsWhitespace = CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zIsWhitespace) {
                    break;
                }
                length--;
            } else if (zIsWhitespace) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final CharSequence trim(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zBooleanValue = function1.invoke(Character.valueOf(charSequence.charAt(!z ? i : length))).booleanValue();
            if (z) {
                if (!zBooleanValue) {
                    break;
                }
                length--;
            } else if (zBooleanValue) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final CharSequence trim(CharSequence charSequence, char... cArr) {
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zContains = ArraysKt.contains(cArr, charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zContains) {
                    break;
                }
                length--;
            } else if (zContains) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final String trim(String str, Function1<? super Character, Boolean> function1) {
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zBooleanValue = function1.invoke(Character.valueOf(str.charAt(!z ? i : length))).booleanValue();
            if (z) {
                if (!zBooleanValue) {
                    break;
                }
                length--;
            } else if (zBooleanValue) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    public static final String trim(String str, char... cArr) {
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zContains = ArraysKt.contains(cArr, str.charAt(!z ? i : length));
            if (z) {
                if (!zContains) {
                    break;
                }
                length--;
            } else if (zContains) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    public static final CharSequence trimStart(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static final CharSequence trimStart(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!function1.invoke(Character.valueOf(charSequence.charAt(i))).booleanValue()) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static final CharSequence trimStart(CharSequence charSequence, char... cArr) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!ArraysKt.contains(cArr, charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static final String trimStart(String str, Function1<? super Character, Boolean> function1) {
        CharSequence charSequenceSubSequence;
        int length = str.length();
        int i = 0;
        while (true) {
            if (i < length) {
                if (!function1.invoke(Character.valueOf(str.charAt(i))).booleanValue()) {
                    charSequenceSubSequence = str.subSequence(i, str.length());
                    break;
                }
                i++;
            } else {
                charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                break;
            }
        }
        return charSequenceSubSequence.toString();
    }

    public static final String trimStart(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                break;
            }
            if (!ArraysKt.contains(cArr, str.charAt(i))) {
                charSequenceSubSequence = str.subSequence(i, str.length());
                break;
            }
            i++;
        }
        return charSequenceSubSequence.toString();
    }

    public static final CharSequence trimEnd(CharSequence charSequence) {
        int length = charSequence.length() - 1;
        if (length < 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        while (true) {
            int i = length - 1;
            if (!CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            length = i;
        }
    }

    public static final CharSequence trimEnd(CharSequence charSequence, Function1<? super Character, Boolean> function1) {
        int length = charSequence.length() - 1;
        if (length < 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        while (true) {
            int i = length - 1;
            if (!function1.invoke(Character.valueOf(charSequence.charAt(length))).booleanValue()) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            length = i;
        }
    }

    public static final CharSequence trimEnd(CharSequence charSequence, char... cArr) {
        int length = charSequence.length() - 1;
        if (length < 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        while (true) {
            int i = length - 1;
            if (!ArraysKt.contains(cArr, charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            length = i;
        }
    }

    public static final String trimEnd(String str, Function1<? super Character, Boolean> function1) {
        CharSequence charSequenceSubSequence;
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!function1.invoke(Character.valueOf(str.charAt(length))).booleanValue()) {
                    charSequenceSubSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
            charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return charSequenceSubSequence.toString();
    }

    public static String trimEnd(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        int length = str.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!ArraysKt.contains(cArr, str.charAt(length))) {
                    charSequenceSubSequence = str.subSequence(0, length + 1);
                    break;
                }
                if (i < 0) {
                    break;
                }
                length = i;
            }
            charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return charSequenceSubSequence.toString();
    }

    @InlineOnly
    private static final String trim(String str) {
        return trim((CharSequence) str).toString();
    }

    @InlineOnly
    private static final String trimStart(String str) {
        return trimStart((CharSequence) str).toString();
    }

    @InlineOnly
    private static final String trimEnd(String str) {
        return trimEnd((CharSequence) str).toString();
    }

    public static /* synthetic */ CharSequence padStart$default(CharSequence charSequence, int i, char c2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return padStart(charSequence, i, c2);
    }

    public static final CharSequence padStart(CharSequence charSequence, int i, char c2) {
        if (i < 0) {
            CharsKt__CharKt$$ExternalSyntheticBUOutline0.m805m("Desired length ", i, " is less than zero.");
            return null;
        }
        if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i);
        int length = i - charSequence.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c2);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        sb.append(charSequence);
        return sb;
    }

    public static /* synthetic */ String padStart$default(String str, int i, char c2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return padStart(str, i, c2);
    }

    public static String padStart(String str, int i, char c2) {
        return padStart((CharSequence) str, i, c2).toString();
    }

    public static /* synthetic */ CharSequence padEnd$default(CharSequence charSequence, int i, char c2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return padEnd(charSequence, i, c2);
    }

    public static final CharSequence padEnd(CharSequence charSequence, int i, char c2) {
        if (i < 0) {
            CharsKt__CharKt$$ExternalSyntheticBUOutline0.m805m("Desired length ", i, " is less than zero.");
            return null;
        }
        if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append(charSequence);
        int length = i - charSequence.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c2);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return sb;
    }

    public static /* synthetic */ String padEnd$default(String str, int i, char c2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c2 = ' ';
        }
        return padEnd(str, i, c2);
    }

    public static String padEnd(String str, int i, char c2) {
        return padEnd((CharSequence) str, i, c2).toString();
    }

    @InlineOnly
    private static final boolean isNullOrEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    @InlineOnly
    private static final boolean isEmpty(CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    @InlineOnly
    private static final boolean isNotEmpty(CharSequence charSequence) {
        return charSequence.length() > 0;
    }

    @InlineOnly
    private static final boolean isNotBlank(CharSequence charSequence) {
        return !isBlank(charSequence);
    }

    @InlineOnly
    private static final boolean isNullOrBlank(CharSequence charSequence) {
        return charSequence == null || isBlank(charSequence);
    }

    public static final CharIterator iterator(final CharSequence charSequence) {
        return new CharIterator() { // from class: kotlin.text.StringsKt__StringsKt.iterator.1
            private int index;

            @Override // kotlin.collections.CharIterator
            public char nextChar() {
                CharSequence charSequence2 = charSequence;
                int i = this.index;
                this.index = i + 1;
                return charSequence2.charAt(i);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < charSequence.length();
            }
        };
    }

    @InlineOnly
    private static final String orEmpty(String str) {
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <C extends CharSequence & R, R> R ifEmpty(C c2, Function0<? extends R> function0) {
        return c2.length() == 0 ? function0.invoke() : c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final <C extends CharSequence & R, R> R ifBlank(C c2, Function0<? extends R> function0) {
        return isBlank(c2) ? function0.invoke() : c2;
    }

    public static final IntRange getIndices(CharSequence charSequence) {
        return new IntRange(0, charSequence.length() - 1);
    }

    public static int getLastIndex(CharSequence charSequence) {
        return charSequence.length() - 1;
    }

    public static final boolean hasSurrogatePairAt(CharSequence charSequence, int i) {
        return i >= 0 && i <= charSequence.length() + (-2) && Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1));
    }

    public static final String substring(String str, IntRange intRange) {
        return str.substring(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1);
    }

    public static final CharSequence subSequence(CharSequence charSequence, IntRange intRange) {
        return charSequence.subSequence(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1);
    }

    @Deprecated(message = "Use parameters named startIndex and endIndex.", replaceWith = @ReplaceWith(expression = "subSequence(startIndex = start, endIndex = end)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = MVEL.VERSION, warningSince = "1.0")
    @InlineOnly
    private static final CharSequence subSequence(String str, int i, int i2) {
        return str.subSequence(i, i2);
    }

    @InlineOnly
    private static final String substring(CharSequence charSequence, int i, int i2) {
        return charSequence.subSequence(i, i2).toString();
    }

    public static /* synthetic */ String substring$default(CharSequence charSequence, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = charSequence.length();
        }
        return charSequence.subSequence(i, i2).toString();
    }

    public static final String substring(CharSequence charSequence, IntRange intRange) {
        return charSequence.subSequence(intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1).toString();
    }

    public static /* synthetic */ String substringBefore$default(String str, char c2, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringBefore(str, c2, str2);
    }

    public static final String substringBefore(String str, char c2, String str2) {
        int iIndexOf$default = indexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str2 : str.substring(0, iIndexOf$default);
    }

    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBefore(str, str2, str3);
    }

    public static final String substringBefore(String str, String str2, String str3) {
        int iIndexOf$default = indexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str3 : str.substring(0, iIndexOf$default);
    }

    public static /* synthetic */ String substringAfter$default(String str, char c2, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringAfter(str, c2, str2);
    }

    public static String substringAfter(String str, char c2, String str2) {
        int iIndexOf$default = indexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str2 : str.substring(iIndexOf$default + 1, str.length());
    }

    public static /* synthetic */ String substringAfter$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfter(str, str2, str3);
    }

    public static String substringAfter(String str, String str2, String str3) {
        int iIndexOf$default = indexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str3 : str.substring(iIndexOf$default + str2.length(), str.length());
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, char c2, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringBeforeLast(str, c2, str2);
    }

    public static String substringBeforeLast(String str, char c2, String str2) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str2 : str.substring(0, iLastIndexOf$default);
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBeforeLast(str, str2, str3);
    }

    public static final String substringBeforeLast(String str, String str2, String str3) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str3 : str.substring(0, iLastIndexOf$default);
    }

    public static /* synthetic */ String substringAfterLast$default(String str, char c2, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return substringAfterLast(str, c2, str2);
    }

    public static String substringAfterLast(String str, char c2, String str2) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str2 : str.substring(iLastIndexOf$default + 1, str.length());
    }

    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfterLast(str, str2, str3);
    }

    public static final String substringAfterLast(String str, String str2, String str3) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str3 : str.substring(iLastIndexOf$default + str2.length(), str.length());
    }

    public static final CharSequence replaceRange(CharSequence charSequence, int i, int i2, CharSequence charSequence2) {
        if (i2 < i) {
            StringsKt__StringsKt$$ExternalSyntheticBUOutline0.m809m("End index (", i2, ") is less than start index (", i);
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence, 0, i);
        sb.append(charSequence2);
        sb.append(charSequence, i2, charSequence.length());
        return sb;
    }

    @InlineOnly
    private static final String replaceRange(String str, int i, int i2, CharSequence charSequence) {
        return replaceRange((CharSequence) str, i, i2, charSequence).toString();
    }

    public static final CharSequence replaceRange(CharSequence charSequence, IntRange intRange, CharSequence charSequence2) {
        return replaceRange(charSequence, intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1, charSequence2);
    }

    @InlineOnly
    private static final String replaceRange(String str, IntRange intRange, CharSequence charSequence) {
        return replaceRange((CharSequence) str, intRange, charSequence).toString();
    }

    public static final CharSequence removeRange(CharSequence charSequence, int i, int i2) {
        if (i2 < i) {
            StringsKt__StringsKt$$ExternalSyntheticBUOutline0.m809m("End index (", i2, ") is less than start index (", i);
            return null;
        }
        if (i2 == i) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(charSequence.length() - (i2 - i));
        sb.append(charSequence, 0, i);
        sb.append(charSequence, i2, charSequence.length());
        return sb;
    }

    @InlineOnly
    private static final String removeRange(String str, int i, int i2) {
        return removeRange((CharSequence) str, i, i2).toString();
    }

    public static final CharSequence removeRange(CharSequence charSequence, IntRange intRange) {
        return removeRange(charSequence, intRange.getStart().intValue(), intRange.getEndInclusive().intValue() + 1);
    }

    @InlineOnly
    private static final String removeRange(String str, IntRange intRange) {
        return removeRange((CharSequence) str, intRange).toString();
    }

    public static final CharSequence removePrefix(CharSequence charSequence, CharSequence charSequence2) {
        if (startsWith$default(charSequence, charSequence2, false, 2, (Object) null)) {
            return charSequence.subSequence(charSequence2.length(), charSequence.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static String removePrefix(String str, CharSequence charSequence) {
        return startsWith$default((CharSequence) str, charSequence, false, 2, (Object) null) ? str.substring(charSequence.length()) : str;
    }

    public static final CharSequence removeSuffix(CharSequence charSequence, CharSequence charSequence2) {
        if (endsWith$default(charSequence, charSequence2, false, 2, (Object) null)) {
            return charSequence.subSequence(0, charSequence.length() - charSequence2.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static String removeSuffix(String str, CharSequence charSequence) {
        return endsWith$default((CharSequence) str, charSequence, false, 2, (Object) null) ? str.substring(0, str.length() - charSequence.length()) : str;
    }

    public static final CharSequence removeSurrounding(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        if (charSequence.length() >= charSequence2.length() + charSequence3.length() && startsWith$default(charSequence, charSequence2, false, 2, (Object) null) && endsWith$default(charSequence, charSequence3, false, 2, (Object) null)) {
            return charSequence.subSequence(charSequence2.length(), charSequence.length() - charSequence3.length());
        }
        return charSequence.subSequence(0, charSequence.length());
    }

    public static final String removeSurrounding(String str, CharSequence charSequence, CharSequence charSequence2) {
        return (str.length() >= charSequence.length() + charSequence2.length() && startsWith$default((CharSequence) str, charSequence, false, 2, (Object) null) && endsWith$default((CharSequence) str, charSequence2, false, 2, (Object) null)) ? str.substring(charSequence.length(), str.length() - charSequence2.length()) : str;
    }

    public static final CharSequence removeSurrounding(CharSequence charSequence, CharSequence charSequence2) {
        return removeSurrounding(charSequence, charSequence2, charSequence2);
    }

    public static String removeSurrounding(String str, CharSequence charSequence) {
        return removeSurrounding(str, charSequence, charSequence);
    }

    public static /* synthetic */ String replaceBefore$default(String str, char c2, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceBefore(str, c2, str2, str3);
    }

    public static final String replaceBefore(String str, char c2, String str2, String str3) {
        int iIndexOf$default = indexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str3 : replaceRange((CharSequence) str, 0, iIndexOf$default, (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBefore$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceBefore(str, str2, str3, str4);
    }

    public static final String replaceBefore(String str, String str2, String str3, String str4) {
        int iIndexOf$default = indexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str4 : replaceRange((CharSequence) str, 0, iIndexOf$default, (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, char c2, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceAfter(str, c2, str2, str3);
    }

    public static final String replaceAfter(String str, char c2, String str2, String str3) {
        int iIndexOf$default = indexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str3 : replaceRange((CharSequence) str, iIndexOf$default + 1, str.length(), (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceAfter$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceAfter(str, str2, str3, str4);
    }

    public static final String replaceAfter(String str, String str2, String str3, String str4) {
        int iIndexOf$default = indexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iIndexOf$default == -1 ? str4 : replaceRange((CharSequence) str, iIndexOf$default + str2.length(), str.length(), (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceAfterLast(str, str2, str3, str4);
    }

    public static final String replaceAfterLast(String str, String str2, String str3, String str4) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str4 : replaceRange((CharSequence) str, iLastIndexOf$default + str2.length(), str.length(), (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceAfterLast$default(String str, char c2, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceAfterLast(str, c2, str2, str3);
    }

    public static final String replaceAfterLast(String str, char c2, String str2, String str3) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str3 : replaceRange((CharSequence) str, iLastIndexOf$default + 1, str.length(), (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, char c2, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = str;
        }
        return replaceBeforeLast(str, c2, str2, str3);
    }

    public static final String replaceBeforeLast(String str, char c2, String str2, String str3) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, c2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str3 : replaceRange((CharSequence) str, 0, iLastIndexOf$default, (CharSequence) str2).toString();
    }

    public static /* synthetic */ String replaceBeforeLast$default(String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 4) != 0) {
            str4 = str;
        }
        return replaceBeforeLast(str, str2, str3, str4);
    }

    public static final String replaceBeforeLast(String str, String str2, String str3, String str4) {
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) str, str2, 0, false, 6, (Object) null);
        return iLastIndexOf$default == -1 ? str4 : replaceRange((CharSequence) str, 0, iLastIndexOf$default, (CharSequence) str3).toString();
    }

    @InlineOnly
    private static final String replace(CharSequence charSequence, Regex regex, String str) {
        return regex.replace(charSequence, str);
    }

    @InlineOnly
    private static final String replace(CharSequence charSequence, Regex regex, Function1<? super MatchResult, ? extends CharSequence> function1) {
        return regex.replace(charSequence, function1);
    }

    @InlineOnly
    private static final String replaceFirst(CharSequence charSequence, Regex regex, String str) {
        return regex.replaceFirst(charSequence, str);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @JvmName(name = "replaceFirstCharWithChar")
    @OverloadResolutionByLambdaReturnType
    private static final String replaceFirstCharWithChar(String str, Function1<? super Character, Character> function1) {
        if (str.length() <= 0) {
            return str;
        }
        return function1.invoke(Character.valueOf(str.charAt(0))).charValue() + str.substring(1);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    @JvmName(name = "replaceFirstCharWithCharSequence")
    @OverloadResolutionByLambdaReturnType
    private static final String replaceFirstCharWithCharSequence(String str, Function1<? super Character, ? extends CharSequence> function1) {
        if (str.length() <= 0) {
            return str;
        }
        return ((Object) function1.invoke(Character.valueOf(str.charAt(0)))) + str.substring(1);
    }

    @InlineOnly
    private static final boolean matches(CharSequence charSequence, Regex regex) {
        return regex.matches(charSequence);
    }

    public static final boolean regionMatchesImpl(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!CharsKt__CharKt.equals(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(charSequence, c2, z);
    }

    public static final boolean startsWith(CharSequence charSequence, char c2, boolean z) {
        return charSequence.length() > 0 && CharsKt__CharKt.equals(charSequence.charAt(0), c2, z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(charSequence, c2, z);
    }

    public static final boolean endsWith(CharSequence charSequence, char c2, boolean z) {
        return charSequence.length() > 0 && CharsKt__CharKt.equals(charSequence.charAt(getLastIndex(charSequence)), c2, z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(charSequence, charSequence2, z);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.startsWith$default((String) charSequence, (String) charSequence2, false, 2, null);
        }
        return regionMatchesImpl(charSequence, 0, charSequence2, 0, charSequence2.length(), z);
    }

    public static /* synthetic */ boolean startsWith$default(CharSequence charSequence, CharSequence charSequence2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return startsWith(charSequence, charSequence2, i, z);
    }

    public static final boolean startsWith(CharSequence charSequence, CharSequence charSequence2, int i, boolean z) {
        if (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.startsWith$default((String) charSequence, (String) charSequence2, i, false, 4, null);
        }
        return regionMatchesImpl(charSequence, i, charSequence2, 0, charSequence2.length(), z);
    }

    public static /* synthetic */ boolean endsWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(charSequence, charSequence2, z);
    }

    public static final boolean endsWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.endsWith$default((String) charSequence, (String) charSequence2, false, 2, null);
        }
        return regionMatchesImpl(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), z);
    }

    public static /* synthetic */ String commonPrefixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return commonPrefixWith(charSequence, charSequence2, z);
    }

    public static final String commonPrefixWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        int iMin = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < iMin && CharsKt__CharKt.equals(charSequence.charAt(i), charSequence2.charAt(i), z)) {
            i++;
        }
        int i2 = i - 1;
        if (hasSurrogatePairAt(charSequence, i2) || hasSurrogatePairAt(charSequence2, i2)) {
            i--;
        }
        return charSequence.subSequence(0, i).toString();
    }

    public static /* synthetic */ String commonSuffixWith$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return commonSuffixWith(charSequence, charSequence2, z);
    }

    public static final String commonSuffixWith(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        int length = charSequence.length();
        int iMin = Math.min(length, charSequence2.length());
        int i = 0;
        while (i < iMin && CharsKt__CharKt.equals(charSequence.charAt((length - i) - 1), charSequence2.charAt((r1 - i) - 1), z)) {
            i++;
        }
        if (hasSurrogatePairAt(charSequence, (length - i) - 1) || hasSurrogatePairAt(charSequence2, (r1 - i) - 1)) {
            i--;
        }
        return charSequence.subSequence(length - i, length).toString();
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOfAny(charSequence, cArr, i, z);
    }

    public static final int indexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ArraysKt.single(cArr), i);
        }
        int iCoerceAtLeast = RangesKt.coerceAtLeast(i, 0);
        int lastIndex = getLastIndex(charSequence);
        if (iCoerceAtLeast > lastIndex) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iCoerceAtLeast);
            for (char c2 : cArr) {
                if (CharsKt__CharKt.equals(c2, cCharAt, z)) {
                    return iCoerceAtLeast;
                }
            }
            if (iCoerceAtLeast == lastIndex) {
                return -1;
            }
            iCoerceAtLeast++;
        }
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOfAny(charSequence, cArr, i, z);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, char[] cArr, int i, boolean z) {
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(ArraysKt.single(cArr), i);
        }
        for (int iCoerceAtMost = RangesKt.coerceAtMost(i, getLastIndex(charSequence)); -1 < iCoerceAtMost; iCoerceAtMost--) {
            char cCharAt = charSequence.charAt(iCoerceAtMost);
            for (char c2 : cArr) {
                if (CharsKt__CharKt.equals(c2, cCharAt, z)) {
                    return iCoerceAtMost;
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ int indexOf$StringsKt__StringsKt$default(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return indexOf$StringsKt__StringsKt(charSequence, charSequence2, i, i2, z, z2);
    }

    private static final int indexOf$StringsKt__StringsKt(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intProgressionDownTo;
        if (!z2) {
            intProgressionDownTo = new IntRange(RangesKt.coerceAtLeast(i, 0), RangesKt.coerceAtMost(i2, charSequence.length()));
        } else {
            intProgressionDownTo = RangesKt.downTo(RangesKt.coerceAtMost(i, getLastIndex(charSequence)), RangesKt.coerceAtLeast(i2, 0));
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int first = intProgressionDownTo.getFirst();
            int last = intProgressionDownTo.getLast();
            int step = intProgressionDownTo.getStep();
            if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                return -1;
            }
            int i3 = first;
            while (true) {
                String str = (String) charSequence2;
                boolean z3 = z;
                if (StringsKt__StringsJVMKt.regionMatches(str, 0, (String) charSequence, i3, str.length(), z3)) {
                    return i3;
                }
                if (i3 == last) {
                    return -1;
                }
                i3 += step;
                z = z3;
            }
        } else {
            boolean z4 = z;
            int first2 = intProgressionDownTo.getFirst();
            int last2 = intProgressionDownTo.getLast();
            int step2 = intProgressionDownTo.getStep();
            if ((step2 <= 0 || first2 > last2) && (step2 >= 0 || last2 > first2)) {
                return -1;
            }
            int i4 = first2;
            while (true) {
                boolean z5 = z4;
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                z4 = z5;
                if (regionMatchesImpl(charSequence4, 0, charSequence3, i4, charSequence2.length(), z5)) {
                    return i4;
                }
                if (i4 == last2) {
                    return -1;
                }
                i4 += step2;
                charSequence2 = charSequence4;
                charSequence = charSequence3;
            }
        }
    }

    private static final Pair<Integer, String> findAnyOf$StringsKt__StringsKt(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        CharSequence charSequence2;
        Object next;
        boolean z3;
        Object next2;
        if (!z && collection.size() == 1) {
            String str = (String) CollectionsKt.single(collection);
            int iIndexOf$default = !z2 ? indexOf$default(charSequence, str, i, false, 4, (Object) null) : lastIndexOf$default(charSequence, str, i, false, 4, (Object) null);
            if (iIndexOf$default < 0) {
                return null;
            }
            return TuplesKt.to(Integer.valueOf(iIndexOf$default), str);
        }
        CharSequence charSequence3 = charSequence;
        IntProgression intRange = !z2 ? new IntRange(RangesKt.coerceAtLeast(i, 0), charSequence3.length()) : RangesKt.downTo(RangesKt.coerceAtMost(i, getLastIndex(charSequence3)), 0);
        if (charSequence3 instanceof String) {
            int first = intRange.getFirst();
            int last = intRange.getLast();
            int step = intRange.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                int i2 = first;
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z3 = z;
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        String str2 = (String) next2;
                        z3 = z;
                        if (StringsKt__StringsJVMKt.regionMatches(str2, 0, (String) charSequence3, i2, str2.length(), z3)) {
                            break;
                        }
                        z = z3;
                    }
                    String str3 = (String) next2;
                    if (str3 == null) {
                        if (i2 == last) {
                            break;
                        }
                        i2 += step;
                        z = z3;
                    } else {
                        return TuplesKt.to(Integer.valueOf(i2), str3);
                    }
                }
            }
        } else {
            boolean z4 = z;
            int first2 = intRange.getFirst();
            int last2 = intRange.getLast();
            int step2 = intRange.getStep();
            if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                int i3 = first2;
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            charSequence2 = charSequence3;
                            next = null;
                            break;
                        }
                        next = it2.next();
                        String str4 = (String) next;
                        boolean z5 = z4;
                        charSequence2 = charSequence3;
                        z4 = z5;
                        if (regionMatchesImpl(str4, 0, charSequence2, i3, str4.length(), z5)) {
                            break;
                        }
                        charSequence3 = charSequence2;
                    }
                    String str5 = (String) next;
                    if (str5 == null) {
                        if (i3 == last2) {
                            break;
                        }
                        i3 += step2;
                        charSequence3 = charSequence2;
                    } else {
                        return TuplesKt.to(Integer.valueOf(i3), str5);
                    }
                }
            }
        }
        return null;
    }

    public static /* synthetic */ Pair findAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return findAnyOf(charSequence, collection, i, z);
    }

    public static final Pair<Integer, String> findAnyOf(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        return findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, false);
    }

    public static /* synthetic */ Pair findLastAnyOf$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return findLastAnyOf(charSequence, collection, i, z);
    }

    public static final Pair<Integer, String> findLastAnyOf(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        return findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, true);
    }

    public static boolean isBlank(CharSequence charSequence) {
        for (int i = 0; i < charSequence.length(); i++) {
            if (!CharsKt__CharJVMKt.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static /* synthetic */ int indexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOfAny(charSequence, (Collection<String>) collection, i, z);
    }

    public static final int indexOfAny(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Pair<Integer, String> pairFindAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, false);
        if (pairFindAnyOf$StringsKt__StringsKt != null) {
            return pairFindAnyOf$StringsKt__StringsKt.getFirst().intValue();
        }
        return -1;
    }

    public static /* synthetic */ int lastIndexOfAny$default(CharSequence charSequence, Collection collection, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOfAny(charSequence, (Collection<String>) collection, i, z);
    }

    public static final int lastIndexOfAny(CharSequence charSequence, Collection<String> collection, int i, boolean z) {
        Pair<Integer, String> pairFindAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(charSequence, collection, i, z, true);
        if (pairFindAnyOf$StringsKt__StringsKt != null) {
            return pairFindAnyOf$StringsKt__StringsKt.getFirst().intValue();
        }
        return -1;
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, c2, i, z);
    }

    public static final int indexOf(CharSequence charSequence, char c2, int i, boolean z) {
        return (z || !(charSequence instanceof String)) ? indexOfAny(charSequence, new char[]{c2}, i, z) : ((String) charSequence).indexOf(c2, i);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, str, i, z);
    }

    public static final int indexOf(CharSequence charSequence, String str, int i, boolean z) {
        if (z || !(charSequence instanceof String)) {
            return indexOf$StringsKt__StringsKt$default(charSequence, str, i, charSequence.length(), z, false, 16, null);
        }
        return ((String) charSequence).indexOf(str, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, c2, i, z);
    }

    public static final int lastIndexOf(CharSequence charSequence, char c2, int i, boolean z) {
        return (z || !(charSequence instanceof String)) ? lastIndexOfAny(charSequence, new char[]{c2}, i, z) : ((String) charSequence).lastIndexOf(c2, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, str, i, z);
    }

    public static final int lastIndexOf(CharSequence charSequence, String str, int i, boolean z) {
        if (z || !(charSequence instanceof String)) {
            return indexOf$StringsKt__StringsKt(charSequence, str, i, 0, z, true);
        }
        return ((String) charSequence).lastIndexOf(str, i);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, charSequence2, z);
    }

    public static boolean contains(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return charSequence2 instanceof String ? indexOf$default(charSequence, (String) charSequence2, 0, z, 2, (Object) null) >= 0 : indexOf$StringsKt__StringsKt$default(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= 0;
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, c2, z);
    }

    public static final boolean contains(CharSequence charSequence, char c2, boolean z) {
        return indexOf$default(charSequence, c2, 0, z, 2, (Object) null) >= 0;
    }

    @InlineOnly
    private static final boolean contains(CharSequence charSequence, Regex regex) {
        return regex.containsMatchIn(charSequence);
    }

    public static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, cArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, final char[] cArr, int i, final boolean z, int i2) {
        requireNonNegativeLimit(i2);
        return new DelimitedRangesSequence(charSequence, i, i2, new Function2() { // from class: kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return StringsKt__StringsKt.rangesDelimitedBy$lambda$0$StringsKt__StringsKt(cArr, z, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair rangesDelimitedBy$lambda$0$StringsKt__StringsKt(char[] cArr, boolean z, CharSequence charSequence, int i) {
        int iIndexOfAny = indexOfAny(charSequence, cArr, i, z);
        if (iIndexOfAny < 0) {
            return null;
        }
        return TuplesKt.to(Integer.valueOf(iIndexOfAny), 1);
    }

    public static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, strArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, String[] strArr, int i, final boolean z, int i2) {
        requireNonNegativeLimit(i2);
        final List listAsList = ArraysKt.asList(strArr);
        return new DelimitedRangesSequence(charSequence, i, i2, new Function2() { // from class: kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return StringsKt__StringsKt.rangesDelimitedBy$lambda$1$StringsKt__StringsKt(listAsList, z, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair rangesDelimitedBy$lambda$1$StringsKt__StringsKt(List list, boolean z, CharSequence charSequence, int i) {
        Pair<Integer, String> pairFindAnyOf$StringsKt__StringsKt = findAnyOf$StringsKt__StringsKt(charSequence, list, i, z, false);
        if (pairFindAnyOf$StringsKt__StringsKt != null) {
            return TuplesKt.to(pairFindAnyOf$StringsKt__StringsKt.getFirst(), Integer.valueOf(pairFindAnyOf$StringsKt__StringsKt.getSecond().length()));
        }
        return null;
    }

    public static final void requireNonNegativeLimit(int i) {
        if (i >= 0) {
            return;
        }
        Utf8$$ExternalSyntheticBUOutline1.m851m("Limit must be non-negative, but was ", i);
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, strArr, z, i);
    }

    public static final Sequence<String> splitToSequence(final CharSequence charSequence, String[] strArr, boolean z, int i) {
        return SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0, z, i, 2, (Object) null), new Function1() { // from class: kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StringsKt__StringsKt.substring(charSequence, (IntRange) obj);
            }
        });
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, strArr, z, i);
    }

    public static final List<String> split(CharSequence charSequence, String[] strArr, boolean z, int i) {
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return split$StringsKt__StringsKt(charSequence, str, z, i);
            }
        }
        Iterable iterableAsIterable = SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, strArr, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterableAsIterable, 10));
        Iterator it = iterableAsIterable.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, cArr, z, i);
    }

    public static final Sequence<String> splitToSequence(final CharSequence charSequence, char[] cArr, boolean z, int i) {
        return SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr, 0, z, i, 2, (Object) null), new Function1() { // from class: kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StringsKt__StringsKt.substring(charSequence, (IntRange) obj);
            }
        });
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, cArr, z, i);
    }

    public static final List<String> split(CharSequence charSequence, char[] cArr, boolean z, int i) {
        if (cArr.length == 1) {
            return split$StringsKt__StringsKt(charSequence, String.valueOf(cArr[0]), z, i);
        }
        Iterable iterableAsIterable = SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(charSequence, cArr, 0, z, i, 2, (Object) null));
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterableAsIterable, 10));
        Iterator it = iterableAsIterable.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    private static final List<String> split$StringsKt__StringsKt(CharSequence charSequence, String str, boolean z, int i) {
        requireNonNegativeLimit(i);
        int length = 0;
        int iIndexOf = indexOf(charSequence, str, 0, z);
        if (iIndexOf == -1 || i == 1) {
            return CollectionsKt.listOf(charSequence.toString());
        }
        boolean z2 = i > 0;
        ArrayList arrayList = new ArrayList(z2 ? RangesKt.coerceAtMost(i, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iIndexOf).toString());
            length = str.length() + iIndexOf;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            iIndexOf = indexOf(charSequence, str, length, z);
        } while (iIndexOf != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    @InlineOnly
    private static final List<String> split(CharSequence charSequence, Regex regex, int i) {
        return regex.split(charSequence, i);
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Regex regex, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    private static final Sequence<String> splitToSequence(CharSequence charSequence, Regex regex, int i) {
        return regex.splitToSequence(charSequence, i);
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, Regex regex, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.splitToSequence(charSequence, i);
    }

    public static final Sequence<String> lineSequence(final CharSequence charSequence) {
        return new Sequence<String>() { // from class: kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<String> iterator() {
                return new LinesIterator(charSequence);
            }
        };
    }

    public static List<String> lines(CharSequence charSequence) {
        return SequencesKt.toList(lineSequence(charSequence));
    }

    public static final boolean contentEqualsIgnoreCaseImpl(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return StringsKt__StringsJVMKt.equals((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!CharsKt__CharKt.equals(charSequence.charAt(i), charSequence2.charAt(i), true)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean contentEqualsImpl(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return Intrinsics.areEqual(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.5")
    public static final boolean toBooleanStrict(String str) {
        if (Intrinsics.areEqual(str, "true")) {
            return true;
        }
        if (Intrinsics.areEqual(str, "false")) {
            return false;
        }
        Native$$ExternalSyntheticBUOutline5.m470m("The string doesn't represent a boolean value: ", str);
        return false;
    }

    @SinceKotlin(version = "1.5")
    public static Boolean toBooleanStrictOrNull(String str) {
        if (Intrinsics.areEqual(str, "true")) {
            return Boolean.TRUE;
        }
        if (Intrinsics.areEqual(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static final int skipWhile(String str, int i, Function1<? super Character, Boolean> function1) {
        while (i < str.length() && function1.invoke(Character.valueOf(str.charAt(i))).booleanValue()) {
            i++;
        }
        return i;
    }
}
