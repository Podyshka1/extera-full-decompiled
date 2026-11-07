package kotlin.ranges;

import androidx.core.os.BundleKt$$ExternalSyntheticBUOutline0;
import com.google.android.gms.cast.MediaStatus;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.CharProgression;
import kotlin.ranges.IntProgression;
import kotlin.ranges.LongProgression;
import okhttp3.MediaType$Companion$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0087\u0080\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0005*\u00020\u0006H\u0087\u0080\u0004\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\t\u001a\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0002\u0010\n\u001a\u000e\u0010\u000b\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u0003*\u00020\u0004H\u0087\u0080\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u0005*\u00020\u0006H\u0087\u0080\u0004\u001a\u0015\u0010\f\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u0015\u0010\f\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\u0010\t\u001a\u0015\u0010\f\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0002\u0010\n\u001a\u000e\u0010\r\u001a\u00020\u0001*\u00020\u000eH\u0087\u0088\u0004\u001a\u000e\u0010\r\u001a\u00020\u0003*\u00020\u000fH\u0087\u0088\u0004\u001a\u000e\u0010\r\u001a\u00020\u0005*\u00020\u0010H\u0087\u0088\u0004\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0011H\u0087\u0080\u0004\u001a\u0016\u0010\r\u001a\u00020\u0003*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0011H\u0087\u0080\u0004\u001a\u0016\u0010\r\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H\u0087\u0080\u0004\u001a\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000eH\u0087\u0088\u0004¢\u0006\u0002\u0010\u0013\u001a\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0003*\u00020\u000fH\u0087\u0088\u0004¢\u0006\u0002\u0010\u0014\u001a\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u0010H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0015\u001a\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0011H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0016\u001a\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u0003*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0011H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0017\u001a\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0018\u001a\u001d\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0087\u008a\u0004¢\u0006\u0002\u0010\u001c\u001a\u001d\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\u008a\u0004¢\u0006\u0002\u0010\u001d\u001a\u001d\u0010\u0019\u001a\u00020\u001a*\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0087\u008a\u0004¢\u0006\u0002\u0010\u001e\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b'\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b)\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020!H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0087\u008a\u0004\u001a\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0087\u008a\u0004\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0082\u0004¢\u0006\u0002\b)\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0082\u0004¢\u0006\u0002\b'\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0*2\u0006\u0010 \u001a\u00020(H\u0087\u0082\u0004¢\u0006\u0002\b'\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b'\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b)\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u008a\u0004\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b'\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b)\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0082\u0004¢\u0006\u0002\b%\u001a\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020\u0003H\u0087\u008a\u0004\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b'\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b)\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b\"\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b#\u001a!\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020$H\u0087\u0082\u0004¢\u0006\u0002\b+\u001a\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020$H\u0087\u008a\u0004\u001a\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020$H\u0087\u008a\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0006*\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020\u00012\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020!2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020$2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u0016\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u000e\u0010.\u001a\u00020\u0002*\u00020\u0002H\u0086\u0080\u0004\u001a\u000e\u0010.\u001a\u00020\u0004*\u00020\u0004H\u0086\u0080\u0004\u001a\u000e\u0010.\u001a\u00020\u0006*\u00020\u0006H\u0086\u0080\u0004\u001a\u0016\u0010/\u001a\u00020\u0002*\u00020\u00022\u0006\u0010/\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010/\u001a\u00020\u0004*\u00020\u00042\u0006\u0010/\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010/\u001a\u00020\u0006*\u00020\u00062\u0006\u0010/\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0015\u00100\u001a\u0004\u0018\u00010!*\u00020\u0001H\u0080\u0080\u0004¢\u0006\u0002\u00101\u001a\u0015\u00100\u001a\u0004\u0018\u00010!*\u00020\u0003H\u0080\u0080\u0004¢\u0006\u0002\u00102\u001a\u0015\u00100\u001a\u0004\u0018\u00010!*\u00020$H\u0080\u0080\u0004¢\u0006\u0002\u00103\u001a\u0015\u00100\u001a\u0004\u0018\u00010!*\u00020&H\u0080\u0080\u0004¢\u0006\u0002\u00104\u001a\u0015\u00100\u001a\u0004\u0018\u00010!*\u00020(H\u0080\u0080\u0004¢\u0006\u0002\u00105\u001a\u0015\u00106\u001a\u0004\u0018\u00010\u0001*\u00020\u0003H\u0080\u0080\u0004¢\u0006\u0002\u00107\u001a\u0015\u00106\u001a\u0004\u0018\u00010\u0001*\u00020&H\u0080\u0080\u0004¢\u0006\u0002\u00108\u001a\u0015\u00106\u001a\u0004\u0018\u00010\u0001*\u00020(H\u0080\u0080\u0004¢\u0006\u0002\u00109\u001a\u0015\u0010:\u001a\u0004\u0018\u00010\u0003*\u00020&H\u0080\u0080\u0004¢\u0006\u0002\u0010;\u001a\u0015\u0010:\u001a\u0004\u0018\u00010\u0003*\u00020(H\u0080\u0080\u0004¢\u0006\u0002\u0010<\u001a\u0015\u0010=\u001a\u0004\u0018\u00010$*\u00020\u0001H\u0080\u0080\u0004¢\u0006\u0002\u0010>\u001a\u0015\u0010=\u001a\u0004\u0018\u00010$*\u00020\u0003H\u0080\u0080\u0004¢\u0006\u0002\u0010?\u001a\u0015\u0010=\u001a\u0004\u0018\u00010$*\u00020&H\u0080\u0080\u0004¢\u0006\u0002\u0010@\u001a\u0015\u0010=\u001a\u0004\u0018\u00010$*\u00020(H\u0080\u0080\u0004¢\u0006\u0002\u0010A\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020!H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u0010*\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020\u00012\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020!2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020$2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a\u0016\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020$H\u0086\u0084\u0004\u001a+\u0010C\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\u0006\u0010F\u001a\u0002HDH\u0086\u0080\u0004¢\u0006\u0002\u0010G\u001a\u0016\u0010C\u001a\u00020!*\u00020!2\u0006\u0010F\u001a\u00020!H\u0086\u0080\u0004\u001a\u0016\u0010C\u001a\u00020$*\u00020$2\u0006\u0010F\u001a\u00020$H\u0086\u0080\u0004\u001a\u0016\u0010C\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010C\u001a\u00020\u0003*\u00020\u00032\u0006\u0010F\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u0016\u0010C\u001a\u00020(*\u00020(2\u0006\u0010F\u001a\u00020(H\u0086\u0080\u0004\u001a\u0016\u0010C\u001a\u00020&*\u00020&2\u0006\u0010F\u001a\u00020&H\u0086\u0080\u0004\u001a+\u0010H\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\u0006\u0010I\u001a\u0002HDH\u0086\u0080\u0004¢\u0006\u0002\u0010G\u001a\u0016\u0010H\u001a\u00020!*\u00020!2\u0006\u0010I\u001a\u00020!H\u0086\u0080\u0004\u001a\u0016\u0010H\u001a\u00020$*\u00020$2\u0006\u0010I\u001a\u00020$H\u0086\u0080\u0004\u001a\u0016\u0010H\u001a\u00020\u0001*\u00020\u00012\u0006\u0010I\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010H\u001a\u00020\u0003*\u00020\u00032\u0006\u0010I\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u0016\u0010H\u001a\u00020(*\u00020(2\u0006\u0010I\u001a\u00020(H\u0086\u0080\u0004\u001a\u0016\u0010H\u001a\u00020&*\u00020&2\u0006\u0010I\u001a\u00020&H\u0086\u0080\u0004\u001a7\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\b\u0010F\u001a\u0004\u0018\u0001HD2\b\u0010I\u001a\u0004\u0018\u0001HDH\u0086\u0080\u0004¢\u0006\u0002\u0010K\u001a\u001e\u0010J\u001a\u00020!*\u00020!2\u0006\u0010F\u001a\u00020!2\u0006\u0010I\u001a\u00020!H\u0086\u0080\u0004\u001a\u001e\u0010J\u001a\u00020$*\u00020$2\u0006\u0010F\u001a\u00020$2\u0006\u0010I\u001a\u00020$H\u0086\u0080\u0004\u001a\u001e\u0010J\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u00012\u0006\u0010I\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u001e\u0010J\u001a\u00020\u0003*\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u001e\u0010J\u001a\u00020(*\u00020(2\u0006\u0010F\u001a\u00020(2\u0006\u0010I\u001a\u00020(H\u0086\u0080\u0004\u001a\u001e\u0010J\u001a\u00020&*\u00020&2\u0006\u0010F\u001a\u00020&2\u0006\u0010I\u001a\u00020&H\u0086\u0080\u0004\u001a1\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\f\u0010L\u001a\b\u0012\u0004\u0012\u0002HD0MH\u0087\u0080\u0004¢\u0006\u0002\u0010N\u001a1\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\f\u0010L\u001a\b\u0012\u0004\u0012\u0002HD0\u001fH\u0086\u0080\u0004¢\u0006\u0002\u0010O\u001a\u001c\u0010J\u001a\u00020\u0001*\u00020\u00012\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00010\u001fH\u0086\u0080\u0004\u001a\u001c\u0010J\u001a\u00020\u0003*\u00020\u00032\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030\u001fH\u0086\u0080\u0004¨\u0006P"}, d2 = {"first", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ranges/IntProgression;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ranges/LongProgression;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ranges/CharProgression;", "firstOrNull", "(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;", "(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;", "last", "lastOrNull", "random", "Lkotlin/ranges/IntRange;", "Lkotlin/ranges/LongRange;", "Lkotlin/ranges/CharRange;", "Lkotlin/random/Random;", "randomOrNull", "(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;)Ljava/lang/Character;", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "contains", _UrlKt.FRAGMENT_ENCODE_SET, "element", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", "Lkotlin/ranges/ClosedRange;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "intRangeContains", "longRangeContains", _UrlKt.FRAGMENT_ENCODE_SET, "shortRangeContains", _UrlKt.FRAGMENT_ENCODE_SET, "doubleRangeContains", _UrlKt.FRAGMENT_ENCODE_SET, "floatRangeContains", "Lkotlin/ranges/OpenEndRange;", "byteRangeContains", "downTo", "to", "reversed", "step", "toByteExactOrNull", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "toIntExactOrNull", "(J)Ljava/lang/Integer;", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "until", "coerceAtLeast", "T", _UrlKt.FRAGMENT_ENCODE_SET, "minimumValue", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "coerceAtMost", "maximumValue", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "range", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/ranges/RangesKt")
@SourceDebugExtension({"SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1573:1\n1#2:1574\n*E\n"})
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    public static final byte coerceAtLeast(byte b2, byte b3) {
        return b2 < b3 ? b3 : b2;
    }

    public static final double coerceAtLeast(double d, double d2) {
        return d < d2 ? d2 : d;
    }

    public static float coerceAtLeast(float f, float f2) {
        return f < f2 ? f2 : f;
    }

    public static int coerceAtLeast(int i, int i2) {
        return i < i2 ? i2 : i;
    }

    public static long coerceAtLeast(long j, long j2) {
        return j < j2 ? j2 : j;
    }

    public static final short coerceAtLeast(short s, short s2) {
        return s < s2 ? s2 : s;
    }

    public static final byte coerceAtMost(byte b2, byte b3) {
        return b2 > b3 ? b3 : b2;
    }

    public static final double coerceAtMost(double d, double d2) {
        return d > d2 ? d2 : d;
    }

    public static float coerceAtMost(float f, float f2) {
        return f > f2 ? f2 : f;
    }

    public static int coerceAtMost(int i, int i2) {
        return i > i2 ? i2 : i;
    }

    public static long coerceAtMost(long j, long j2) {
        return j > j2 ? j2 : j;
    }

    public static final short coerceAtMost(short s, short s2) {
        return s > s2 ? s2 : s;
    }

    @SinceKotlin(version = "1.7")
    public static final int first(IntProgression intProgression) {
        if (intProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", intProgression, " is empty.");
            return 0;
        }
        return intProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final long first(LongProgression longProgression) {
        if (longProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", longProgression, " is empty.");
            return 0L;
        }
        return longProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final char first(CharProgression charProgression) {
        if (charProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", charProgression, " is empty.");
            return (char) 0;
        }
        return charProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final Integer firstOrNull(IntProgression intProgression) {
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final Long firstOrNull(LongProgression longProgression) {
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final Character firstOrNull(CharProgression charProgression) {
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(IntProgression intProgression) {
        if (intProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", intProgression, " is empty.");
            return 0;
        }
        return intProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final long last(LongProgression longProgression) {
        if (longProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", longProgression, " is empty.");
            return 0L;
        }
        return longProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final char last(CharProgression charProgression) {
        if (charProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", charProgression, " is empty.");
            return (char) 0;
        }
        return charProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final Integer lastOrNull(IntProgression intProgression) {
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getLast());
    }

    @SinceKotlin(version = "1.7")
    public static final Long lastOrNull(LongProgression longProgression) {
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getLast());
    }

    @SinceKotlin(version = "1.7")
    public static final Character lastOrNull(CharProgression charProgression) {
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getLast());
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int random(IntRange intRange) {
        return random(intRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final long random(LongRange longRange) {
        return random(longRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final char random(CharRange charRange) {
        return random(charRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.3")
    public static final int random(IntRange intRange, Random random) {
        try {
            return RandomKt.nextInt(random, intRange);
        } catch (IllegalArgumentException e) {
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m(e.getMessage());
            return 0;
        }
    }

    @SinceKotlin(version = "1.3")
    public static final long random(LongRange longRange, Random random) {
        try {
            return RandomKt.nextLong(random, longRange);
        } catch (IllegalArgumentException e) {
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m(e.getMessage());
            return 0L;
        }
    }

    @SinceKotlin(version = "1.3")
    public static final char random(CharRange charRange, Random random) {
        try {
            return (char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1);
        } catch (IllegalArgumentException e) {
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m(e.getMessage());
            return (char) 0;
        }
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Integer randomOrNull(IntRange intRange) {
        return randomOrNull(intRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Long randomOrNull(LongRange longRange) {
        return randomOrNull(longRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Character randomOrNull(CharRange charRange) {
        return randomOrNull(charRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    public static final Integer randomOrNull(IntRange intRange, Random random) {
        if (intRange.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, intRange));
    }

    @SinceKotlin(version = "1.4")
    public static final Long randomOrNull(LongRange longRange, Random random) {
        if (longRange.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, longRange));
    }

    @SinceKotlin(version = "1.4")
    public static final Character randomOrNull(CharRange charRange, Random random) {
        if (charRange.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(IntRange intRange, Integer num) {
        return num != null && intRange.contains(num.intValue());
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(LongRange longRange, Long l) {
        return l != null && longRange.contains(l.longValue());
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(CharRange charRange, Character ch) {
        return ch != null && charRange.contains(ch.charValue());
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, byte b2) {
        return closedRange.contains(Integer.valueOf(b2));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, byte b2) {
        return closedRange.contains(Long.valueOf(b2));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, byte b2) {
        return closedRange.contains(Short.valueOf(b2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, byte b2) {
        return openEndRange.contains(Integer.valueOf(b2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, byte b2) {
        return openEndRange.contains(Long.valueOf(b2));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, byte b2) {
        return openEndRange.contains(Short.valueOf(b2));
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, byte b2) {
        return intRangeContains((ClosedRange<Integer>) intRange, b2);
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, byte b2) {
        return longRangeContains((ClosedRange<Long>) longRange, b2);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, double d) {
        Integer intExactOrNull = toIntExactOrNull(d);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, double d) {
        Long longExactOrNull = toLongExactOrNull(d);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, double d) {
        Byte byteExactOrNull = toByteExactOrNull(d);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, double d) {
        Short shortExactOrNull = toShortExactOrNull(d);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(ClosedRange<Float> closedRange, double d) {
        return closedRange.contains(Float.valueOf((float) d));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, float f) {
        Integer intExactOrNull = toIntExactOrNull(f);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, float f) {
        Long longExactOrNull = toLongExactOrNull(f);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, float f) {
        Byte byteExactOrNull = toByteExactOrNull(f);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, float f) {
        Short shortExactOrNull = toShortExactOrNull(f);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(ClosedRange<Double> closedRange, float f) {
        return closedRange.contains(Double.valueOf(f));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(OpenEndRange<Double> openEndRange, float f) {
        return openEndRange.contains(Double.valueOf(f));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, int i) {
        return closedRange.contains(Long.valueOf(i));
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, int i) {
        Byte byteExactOrNull = toByteExactOrNull(i);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, int i) {
        Short shortExactOrNull = toShortExactOrNull(i);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, int i) {
        return openEndRange.contains(Long.valueOf(i));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, int i) {
        Byte byteExactOrNull = toByteExactOrNull(i);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, int i) {
        Short shortExactOrNull = toShortExactOrNull(i);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, int i) {
        return longRangeContains((ClosedRange<Long>) longRange, i);
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, long j) {
        Integer intExactOrNull = toIntExactOrNull(j);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, long j) {
        Byte byteExactOrNull = toByteExactOrNull(j);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, long j) {
        Short shortExactOrNull = toShortExactOrNull(j);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, long j) {
        Integer intExactOrNull = toIntExactOrNull(j);
        if (intExactOrNull != null) {
            return openEndRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, long j) {
        Byte byteExactOrNull = toByteExactOrNull(j);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, long j) {
        Short shortExactOrNull = toShortExactOrNull(j);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, long j) {
        return intRangeContains((ClosedRange<Integer>) intRange, j);
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, short s) {
        return closedRange.contains(Integer.valueOf(s));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, short s) {
        return closedRange.contains(Long.valueOf(s));
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, short s) {
        Byte byteExactOrNull = toByteExactOrNull(s);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, short s) {
        return openEndRange.contains(Integer.valueOf(s));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, short s) {
        return openEndRange.contains(Long.valueOf(s));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, short s) {
        Byte byteExactOrNull = toByteExactOrNull(s);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, short s) {
        return intRangeContains((ClosedRange<Integer>) intRange, s);
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, short s) {
        return longRangeContains((ClosedRange<Long>) longRange, s);
    }

    public static final IntProgression downTo(int i, byte b2) {
        return IntProgression.INSTANCE.fromClosedRange(i, b2, -1);
    }

    public static final LongProgression downTo(long j, byte b2) {
        return LongProgression.INSTANCE.fromClosedRange(j, b2, -1L);
    }

    public static final IntProgression downTo(byte b2, byte b3) {
        return IntProgression.INSTANCE.fromClosedRange(b2, b3, -1);
    }

    public static final IntProgression downTo(short s, byte b2) {
        return IntProgression.INSTANCE.fromClosedRange(s, b2, -1);
    }

    public static final CharProgression downTo(char c2, char c3) {
        return CharProgression.INSTANCE.fromClosedRange(c2, c3, -1);
    }

    public static IntProgression downTo(int i, int i2) {
        return IntProgression.INSTANCE.fromClosedRange(i, i2, -1);
    }

    public static final LongProgression downTo(long j, int i) {
        return LongProgression.INSTANCE.fromClosedRange(j, i, -1L);
    }

    public static final IntProgression downTo(byte b2, int i) {
        return IntProgression.INSTANCE.fromClosedRange(b2, i, -1);
    }

    public static final IntProgression downTo(short s, int i) {
        return IntProgression.INSTANCE.fromClosedRange(s, i, -1);
    }

    public static final LongProgression downTo(int i, long j) {
        return LongProgression.INSTANCE.fromClosedRange(i, j, -1L);
    }

    public static final LongProgression downTo(long j, long j2) {
        return LongProgression.INSTANCE.fromClosedRange(j, j2, -1L);
    }

    public static final LongProgression downTo(byte b2, long j) {
        return LongProgression.INSTANCE.fromClosedRange(b2, j, -1L);
    }

    public static final LongProgression downTo(short s, long j) {
        return LongProgression.INSTANCE.fromClosedRange(s, j, -1L);
    }

    public static final IntProgression downTo(int i, short s) {
        return IntProgression.INSTANCE.fromClosedRange(i, s, -1);
    }

    public static final LongProgression downTo(long j, short s) {
        return LongProgression.INSTANCE.fromClosedRange(j, s, -1L);
    }

    public static final IntProgression downTo(byte b2, short s) {
        return IntProgression.INSTANCE.fromClosedRange(b2, s, -1);
    }

    public static final IntProgression downTo(short s, short s2) {
        return IntProgression.INSTANCE.fromClosedRange(s, s2, -1);
    }

    public static final IntProgression reversed(IntProgression intProgression) {
        return IntProgression.INSTANCE.fromClosedRange(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    public static final LongProgression reversed(LongProgression longProgression) {
        return LongProgression.INSTANCE.fromClosedRange(longProgression.getLast(), longProgression.getFirst(), -longProgression.getStep());
    }

    public static final CharProgression reversed(CharProgression charProgression) {
        return CharProgression.INSTANCE.fromClosedRange(charProgression.getLast(), charProgression.getFirst(), -charProgression.getStep());
    }

    public static IntProgression step(IntProgression intProgression, int i) {
        RangesKt__RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int first = intProgression.getFirst();
        int last = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    public static final LongProgression step(LongProgression longProgression, long j) {
        RangesKt__RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        LongProgression.Companion companion = LongProgression.INSTANCE;
        long first = longProgression.getFirst();
        long last = longProgression.getLast();
        if (longProgression.getStep() <= 0) {
            j = -j;
        }
        return companion.fromClosedRange(first, last, j);
    }

    public static final CharProgression step(CharProgression charProgression, int i) {
        RangesKt__RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        CharProgression.Companion companion = CharProgression.INSTANCE;
        char first = charProgression.getFirst();
        char last = charProgression.getLast();
        if (charProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.fromClosedRange(first, last, i);
    }

    public static final Byte toByteExactOrNull(int i) {
        if (-128 > i || i >= 128) {
            return null;
        }
        return Byte.valueOf((byte) i);
    }

    public static final Byte toByteExactOrNull(long j) {
        if (-128 > j || j >= 128) {
            return null;
        }
        return Byte.valueOf((byte) j);
    }

    public static final Byte toByteExactOrNull(short s) {
        if (-128 > s || s >= 128) {
            return null;
        }
        return Byte.valueOf((byte) s);
    }

    public static final Byte toByteExactOrNull(double d) {
        if (-128.0d > d || d > 127.0d) {
            return null;
        }
        return Byte.valueOf((byte) d);
    }

    public static final Byte toByteExactOrNull(float f) {
        if (-128.0f > f || f > 127.0f) {
            return null;
        }
        return Byte.valueOf((byte) f);
    }

    public static final Integer toIntExactOrNull(long j) {
        if (-2147483648L > j || j >= 2147483648L) {
            return null;
        }
        return Integer.valueOf((int) j);
    }

    public static final Integer toIntExactOrNull(double d) {
        if (-2.147483648E9d > d || d > 2.147483647E9d) {
            return null;
        }
        return Integer.valueOf((int) d);
    }

    public static final Integer toIntExactOrNull(float f) {
        if (-2.1474836E9f > f || f > 2.1474836E9f) {
            return null;
        }
        return Integer.valueOf((int) f);
    }

    public static final Long toLongExactOrNull(double d) {
        if (-9.223372036854776E18d > d || d > 9.223372036854776E18d) {
            return null;
        }
        return Long.valueOf((long) d);
    }

    public static final Long toLongExactOrNull(float f) {
        if (-9.223372E18f > f || f > 9.223372E18f) {
            return null;
        }
        return Long.valueOf((long) f);
    }

    public static final Short toShortExactOrNull(int i) {
        if (-32768 > i || i >= 32768) {
            return null;
        }
        return Short.valueOf((short) i);
    }

    public static final Short toShortExactOrNull(long j) {
        if (-32768 > j || j >= MediaStatus.COMMAND_DISLIKE) {
            return null;
        }
        return Short.valueOf((short) j);
    }

    public static final Short toShortExactOrNull(double d) {
        if (-32768.0d > d || d > 32767.0d) {
            return null;
        }
        return Short.valueOf((short) d);
    }

    public static final Short toShortExactOrNull(float f) {
        if (-32768.0f > f || f > 32767.0f) {
            return null;
        }
        return Short.valueOf((short) f);
    }

    public static final IntRange until(int i, byte b2) {
        return new IntRange(i, b2 - 1);
    }

    public static final LongRange until(long j, byte b2) {
        return new LongRange(j, ((long) b2) - 1);
    }

    public static final IntRange until(byte b2, byte b3) {
        return new IntRange(b2, b3 - 1);
    }

    public static final IntRange until(short s, byte b2) {
        return new IntRange(s, b2 - 1);
    }

    public static final CharRange until(char c2, char c3) {
        return Intrinsics.compare((int) c3, 0) <= 0 ? CharRange.INSTANCE.getEMPTY() : new CharRange(c2, (char) (c3 - 1));
    }

    public static IntRange until(int i, int i2) {
        if (i2 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(i, i2 - 1);
    }

    public static final LongRange until(long j, int i) {
        return new LongRange(j, ((long) i) - 1);
    }

    public static final IntRange until(byte b2, int i) {
        if (i <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(b2, i - 1);
    }

    public static final IntRange until(short s, int i) {
        if (i <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(s, i - 1);
    }

    public static final LongRange until(int i, long j) {
        if (j <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(i, j - 1);
    }

    public static final LongRange until(long j, long j2) {
        if (j2 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(j, j2 - 1);
    }

    public static final LongRange until(byte b2, long j) {
        if (j <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(b2, j - 1);
    }

    public static final LongRange until(short s, long j) {
        if (j <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(s, j - 1);
    }

    public static final IntRange until(int i, short s) {
        return new IntRange(i, s - 1);
    }

    public static final LongRange until(long j, short s) {
        return new LongRange(j, ((long) s) - 1);
    }

    public static final IntRange until(byte b2, short s) {
        return new IntRange(b2, s - 1);
    }

    public static final IntRange until(short s, short s2) {
        return new IntRange(s, s2 - 1);
    }

    public static final <T extends Comparable<? super T>> T coerceAtLeast(T t, T t2) {
        return t.compareTo(t2) < 0 ? t2 : t;
    }

    public static final <T extends Comparable<? super T>> T coerceAtMost(T t, T t2) {
        return t.compareTo(t2) > 0 ? t2 : t;
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T t, T t2, T t3) {
        if (t2 != null && t3 != null) {
            if (t2.compareTo(t3) > 0) {
                BundleKt$$ExternalSyntheticBUOutline0.m102m("Cannot coerce value to an empty range: maximum ", t3, " is less than minimum ", t2, 46);
                return null;
            }
            if (t.compareTo(t2) < 0) {
                return t2;
            }
            if (t.compareTo(t3) > 0) {
                return t3;
            }
        } else {
            if (t2 != null && t.compareTo(t2) < 0) {
                return t2;
            }
            if (t3 != null && t.compareTo(t3) > 0) {
                return t3;
            }
        }
        return t;
    }

    public static final byte coerceIn(byte b2, byte b3, byte b4) {
        if (b3 <= b4) {
            return b2 < b3 ? b3 : b2 > b4 ? b4 : b2;
        }
        RangesKt___RangesKt$$ExternalSyntheticBUOutline1.m886m(b4, b3);
        return (byte) 0;
    }

    public static final short coerceIn(short s, short s2, short s3) {
        if (s2 <= s3) {
            return s < s2 ? s2 : s > s3 ? s3 : s;
        }
        RangesKt___RangesKt$$ExternalSyntheticBUOutline1.m886m(s3, s2);
        return (short) 0;
    }

    public static int coerceIn(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        RangesKt___RangesKt$$ExternalSyntheticBUOutline1.m886m(i3, i2);
        return 0;
    }

    public static long coerceIn(long j, long j2, long j3) {
        if (j2 <= j3) {
            return j < j2 ? j2 : j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    public static float coerceIn(float f, float f2, float f3) {
        if (f2 <= f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static final double coerceIn(double d, double d2, double d3) {
        if (d2 <= d3) {
            return d < d2 ? d2 : d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    @SinceKotlin(version = "1.1")
    public static final <T extends Comparable<? super T>> T coerceIn(T t, ClosedFloatingPointRange<T> closedFloatingPointRange) {
        if (!closedFloatingPointRange.isEmpty()) {
            return (!closedFloatingPointRange.lessThanOrEquals(t, closedFloatingPointRange.getStart()) || closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getStart(), t)) ? (!closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getEndInclusive(), t) || closedFloatingPointRange.lessThanOrEquals(t, closedFloatingPointRange.getEndInclusive())) ? t : closedFloatingPointRange.getEndInclusive() : closedFloatingPointRange.getStart();
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m901m("Cannot coerce value to an empty range: ", closedFloatingPointRange, 46);
        return null;
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T t, ClosedRange<T> closedRange) {
        if (closedRange instanceof ClosedFloatingPointRange) {
            return (T) coerceIn((Comparable) t, (ClosedFloatingPointRange) closedRange);
        }
        if (!closedRange.isEmpty()) {
            return t.compareTo(closedRange.getStart()) < 0 ? (T) closedRange.getStart() : t.compareTo(closedRange.getEndInclusive()) > 0 ? (T) closedRange.getEndInclusive() : t;
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m901m("Cannot coerce value to an empty range: ", closedRange, 46);
        return null;
    }

    public static int coerceIn(int i, ClosedRange<Integer> closedRange) {
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Integer.valueOf(i), (ClosedFloatingPointRange<Integer>) closedRange)).intValue();
        }
        if (!closedRange.isEmpty()) {
            return i < ((Number) closedRange.getStart()).intValue() ? ((Number) closedRange.getStart()).intValue() : i > ((Number) closedRange.getEndInclusive()).intValue() ? ((Number) closedRange.getEndInclusive()).intValue() : i;
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m901m("Cannot coerce value to an empty range: ", closedRange, 46);
        return 0;
    }

    public static long coerceIn(long j, ClosedRange<Long> closedRange) {
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Long.valueOf(j), (ClosedFloatingPointRange<Long>) closedRange)).longValue();
        }
        if (!closedRange.isEmpty()) {
            return j < ((Number) closedRange.getStart()).longValue() ? ((Number) closedRange.getStart()).longValue() : j > ((Number) closedRange.getEndInclusive()).longValue() ? ((Number) closedRange.getEndInclusive()).longValue() : j;
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m901m("Cannot coerce value to an empty range: ", closedRange, 46);
        return 0L;
    }
}
