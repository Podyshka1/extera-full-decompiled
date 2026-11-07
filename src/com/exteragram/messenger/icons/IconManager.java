package com.exteragram.messenger.icons;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.view.result.PickVisualMediaRequestKt;
import androidx.view.result.contract.ActivityResultContracts$PickVisualMedia;
import com.caverock.androidsvg.SVG;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.IconPackType;
import com.exteragram.messenger.export.output.FileManager;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPackStorageResult;
import com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet;
import com.exteragram.messenger.icons.ui.components.ReplaceIconBottomSheet;
import com.exteragram.messenger.icons.ui.picker.IconPickerController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.sun.jna.Callback;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.simplifiles.SimpliFiles;
import org.simplifiles.files.OverwritePolicy;
import org.simplifiles.files.SimpliDirectory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000®\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0002¤\u0001\bÆ\u0002\u0018\u00002\u00020\u0001:\b½\u0001¾\u0001¿\u0001À\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J?\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001e\u001a\u00020\u00192\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\b \u0010\u0003J\u000f\u0010!\u001a\u00020\u0012H\u0002¢\u0006\u0004\b!\u0010\u0003J%\u0010$\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0002¢\u0006\u0004\b$\u0010%J!\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010&\u001a\u00020\fH\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b*\u0010+J)\u0010,\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b,\u0010-JM\u00103\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\f\u00100\u001a\b\u0018\u00010.R\u00020/2\n\b\u0002\u00101\u001a\u0004\u0018\u00010\f2\b\b\u0002\u00102\u001a\u00020\u0019H\u0002¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0007¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\u000208H\u0007¢\u0006\u0004\b9\u0010:J\u0017\u0010=\u001a\u00020\f2\u0006\u0010<\u001a\u00020;H\u0002¢\u0006\u0004\b=\u0010>J\u001f\u0010A\u001a\u00020\u00122\u0006\u0010@\u001a\u00020?2\u0006\u0010<\u001a\u00020;H\u0002¢\u0006\u0004\bA\u0010BJ\u0015\u0010D\u001a\u00020\u00192\u0006\u0010C\u001a\u00020\f¢\u0006\u0004\bD\u0010EJ\r\u0010F\u001a\u00020\u0012¢\u0006\u0004\bF\u0010\u0003J-\u0010H\u001a\u0004\u0018\u00010G2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\f\u00100\u001a\b\u0018\u00010.R\u00020/¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u0004\u0018\u00010G2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bJ\u0010KJ\u001f\u0010L\u001a\u0004\u0018\u00010G2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bL\u0010MJ\u001f\u0010N\u001a\u0004\u0018\u00010G2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bN\u0010MJ+\u0010Q\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010P\u001a\b\u0012\u0004\u0012\u00020G0O¢\u0006\u0004\bQ\u0010RJ#\u0010S\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010P\u001a\b\u0012\u0004\u0012\u00020G0O¢\u0006\u0004\bS\u0010TJ5\u0010W\u001a\u0004\u0018\u00010\u00172\u0006\u0010U\u001a\u00020\f2\u0006\u0010V\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\f\u00100\u001a\b\u0018\u00010.R\u00020/¢\u0006\u0004\bW\u0010XJ/\u0010[\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020'2\b\u0010Z\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b[\u0010\\J\u001d\u0010]\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b]\u0010\u0014J\u0015\u0010^\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b^\u0010_J\u0017\u0010a\u001a\u00020\u00122\b\b\u0002\u0010`\u001a\u00020\u0019¢\u0006\u0004\ba\u0010bJ\r\u0010c\u001a\u00020\u0012¢\u0006\u0004\bc\u0010\u0003J\u0017\u0010d\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bd\u0010eJ\u0017\u0010f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\bf\u0010gJ\u0017\u0010h\u001a\u0004\u0018\u00010'2\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\bh\u0010iJ\u0015\u0010k\u001a\u00020\u00192\u0006\u0010j\u001a\u00020\n¢\u0006\u0004\bk\u0010lJ\u0015\u0010m\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\bm\u0010eJ\u0017\u0010p\u001a\u00020\u00192\b\u0010o\u001a\u0004\u0018\u00010n¢\u0006\u0004\bp\u0010qJ\u001f\u0010p\u001a\u00020\u00192\u0006\u0010U\u001a\u00020\f2\b\u0010o\u001a\u0004\u0018\u00010n¢\u0006\u0004\bp\u0010rJ\u001d\u0010s\u001a\u00020\u00122\u0006\u0010@\u001a\u00020?2\u0006\u0010o\u001a\u00020n¢\u0006\u0004\bs\u0010tJ\u001d\u0010s\u001a\u00020\u00122\u0006\u0010@\u001a\u00020?2\u0006\u0010U\u001a\u00020\f¢\u0006\u0004\bs\u0010uJ'\u0010z\u001a\u00020\u00192\u0006\u0010v\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u00042\b\u0010y\u001a\u0004\u0018\u00010x¢\u0006\u0004\bz\u0010{J7\u0010\u0081\u0001\u001a\u00020\u00122\u0006\u0010}\u001a\u00020|2\u0006\u0010~\u001a\u00020\u00192\u0015\u0010P\u001a\u0011\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u0001\u0012\u0004\u0012\u00020\u00120\u007f¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J0\u0010\u0085\u0001\u001a\u00020\u00122\b\u0010\u0084\u0001\u001a\u00030\u0083\u00012\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010j\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u001a\u0010\u0089\u0001\u001a\u00020\u00192\b\u0010\u0088\u0001\u001a\u00030\u0087\u0001¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008c\u0001\u001a\u00030\u008b\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0018\u0010\u0091\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0090\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0090\u0001R\u001e\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00020\f0\u0093\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R)\u0010\u0097\u0001\u001a\u000f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u0096\u00018\u0006¢\u0006\u0010\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0017\u0010\u009e\u0001\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u0017\u0010 \u0001\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010\u009f\u0001R\u0018\u0010¢\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0018\u0010¥\u0001\u001a\u00030¤\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001e\u0010¨\u0001\u001a\t\u0012\u0004\u0012\u00020\n0§\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R$\u0010ª\u0001\u001a\u000f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\n0\u0096\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bª\u0001\u0010\u0098\u0001R\u001c\u0010¬\u0001\u001a\u0005\u0018\u00010«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u001c\u0010¯\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001c\u0010±\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010°\u0001R\u0018\u0010³\u0001\u001a\u00030²\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0019\u0010µ\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R\u0019\u0010·\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¶\u0001R\u0019\u0010¸\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R-\u0010»\u0001\u001a\u0018\u0012\u0013\u0012\u0011\u0012\u0007\u0012\u0005\u0018\u00010\u0080\u0001\u0012\u0004\u0012\u00020\u00120\u007f0º\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001¨\u0006Á\u0001"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "resId", "density", _UrlKt.FRAGMENT_ENCODE_SET, "resolvedCacheKey", "(II)J", "Lcom/exteragram/messenger/icons/IconPack;", "pack", _UrlKt.FRAGMENT_ENCODE_SET, "fileName", "Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", "sourceCacheKey", "(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;II)Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", "packId", _UrlKt.FRAGMENT_ENCODE_SET, "invalidateIconCaches", "(Ljava/lang/String;I)V", "generation", "resourceName", "Landroid/graphics/Bitmap;", "bitmap", _UrlKt.FRAGMENT_ENCODE_SET, "publishBitmap", "(JLjava/lang/String;Lcom/exteragram/messenger/icons/IconPack;IILandroid/graphics/Bitmap;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "packs", "syncInstalledCustomPacks", "(Ljava/util/List;)Z", "rebuildOwnerMap", "rebuildBasePreinstalledMap", "newActivePacks", "Lcom/exteragram/messenger/icons/IconManager$ActivePacksUpdate;", "updateActivePacks", "(JLjava/util/List;)Lcom/exteragram/messenger/icons/IconManager$ActivePacksUpdate;", "iconFileName", "Ljava/io/File;", "resolvePackIconFile", "(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;)Ljava/io/File;", "launchPrewarm", "(J)V", "cachedPackIconBitmap", "(Lcom/exteragram/messenger/icons/IconPack;II)Landroid/graphics/Bitmap;", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "theme", "knownResourceName", "cacheResult", "getPackIconBitmap", "(Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;Z)Landroid/graphics/Bitmap;", "Landroidx/core/graphics/drawable/IconCompat;", "getNotificationIcon", "()Landroidx/core/graphics/drawable/IconCompat;", "Landroid/graphics/drawable/Icon;", "getNotificationSystemIcon", "()Landroid/graphics/drawable/Icon;", "Lcom/exteragram/messenger/icons/IconPackStorageError;", "error", "iconPackErrorText", "(Lcom/exteragram/messenger/icons/IconPackStorageError;)Ljava/lang/String;", "Lorg/telegram/ui/ActionBar/BaseFragment;", "baseFragment", "showIconPackError", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/icons/IconPackStorageError;)V", "name", "isBlacklisted", "(Ljava/lang/String;)Z", "prefetchCustomPacks", "Landroid/graphics/drawable/Drawable;", "getDrawable", "(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;", "getCachedDrawable", "(I)Landroid/graphics/drawable/Drawable;", "getPackIconDrawable", "(Lcom/exteragram/messenger/icons/IconPack;I)Landroid/graphics/drawable/Drawable;", "getCachedPackIconDrawable", "Lorg/telegram/messenger/Utilities$Callback;", Callback.METHOD_NAME, "requestPackIconDrawable", "(Lcom/exteragram/messenger/icons/IconPack;ILorg/telegram/messenger/Utilities$Callback;)V", "requestDrawable", "(ILorg/telegram/messenger/Utilities$Callback;)V", "path", "originalResId", "createBitmapFromFile", "(Ljava/lang/String;IILandroid/content/res/Resources$Theme;)Landroid/graphics/Bitmap;", "tempFile", "originalName", "saveCustomIcon", "(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;)V", "resetCustomIcon", "getIcon", "(I)I", PluginsConstants.UPDATE, "initialize", "(Z)V", "awaitInitialization", "setActiveCustomPack", "(Ljava/lang/String;)V", "findPackById", "(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;", "bundlePackBlocking", "(Ljava/lang/String;)Ljava/io/File;", "iconPack", "saveIconPackMetadata", "(Lcom/exteragram/messenger/icons/IconPack;)Z", "deletePack", "Lorg/telegram/messenger/MessageObject;", "messageObject", "isIconPack", "(Lorg/telegram/messenger/MessageObject;)Z", "(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)Z", "handleIconPack", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V", "(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)Z", "Landroid/app/Activity;", "activity", "selectFromFiles", "Lkotlin/Function1;", "Landroid/net/Uri;", "startIconPicker", "(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)V", "Landroid/content/Context;", "context", "showReplaceAlert", "(Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;)V", "Lcom/exteragram/messenger/IconPackType;", "basePackType", "isBasePackOnly", "(Lcom/exteragram/messenger/IconPackType;)Z", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/CoroutineDispatcher;", "mutationDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "decodeDispatcher", "prewarmDispatcher", _UrlKt.FRAGMENT_ENCODE_SET, "blacklistedIcons", "Ljava/util/Set;", "Ljava/util/concurrent/ConcurrentHashMap;", "systemIcons", "Ljava/util/concurrent/ConcurrentHashMap;", "getSystemIcons", "()Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/exteragram/messenger/icons/IconManager$IntStringMap;", "systemNames", "Lcom/exteragram/messenger/icons/IconManager$IntStringMap;", "maxMemory", "I", "cacheSize", "Lcom/exteragram/messenger/icons/IconManager$ResolvedIndex;", "resolvedCache", "Lcom/exteragram/messenger/icons/IconManager$ResolvedIndex;", "com/exteragram/messenger/icons/IconManager$sourceCache$1", "sourceCache", "Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "activePacks", "Ljava/util/concurrent/CopyOnWriteArrayList;", "iconOwnerMap", "Landroid/util/SparseIntArray;", "basePreinstalledMap", "Landroid/util/SparseIntArray;", "Lkotlinx/coroutines/Job;", "initializationJob", "Lkotlinx/coroutines/Job;", "prewarmJob", "Ljava/util/concurrent/CountDownLatch;", "initialPacksLoaded", "Ljava/util/concurrent/CountDownLatch;", "activePacksPublished", "Z", "initializationTimedOut", "initializationGeneration", "J", "Landroid/util/SparseArray;", "resultCallbacks", "Landroid/util/SparseArray;", "IntStringMap", "SourceCacheKey", "ResolvedIndex", "ActivePacksUpdate", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SparseIntArray.kt\nandroidx/core/util/SparseIntArrayKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 6 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 7 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,1058:1\n777#2:1059\n873#2,2:1060\n1915#2,2:1062\n296#2,2:1084\n296#2,2:1086\n2792#2,3:1088\n25#3:1064\n56#3:1065\n1#4:1066\n27#5:1067\n27#5:1068\n27#5:1069\n27#5:1070\n27#5:1071\n27#5:1072\n83#6,6:1073\n71#6:1079\n184#7,2:1080\n184#7,2:1082\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager\n*L\n285#1:1059\n285#1:1060,2\n286#1:1062,2\n1045#1:1084,2\n1047#1:1086,2\n1055#1:1088,3\n355#1:1064\n362#1:1065\n422#1:1067\n437#1:1068\n448#1:1069\n453#1:1070\n464#1:1071\n470#1:1072\n547#1:1073,6\n584#1:1079\n721#1:1080,2\n749#1:1082,2\n*E\n"})
public final class IconManager {
    public static final IconManager INSTANCE;
    private static final CopyOnWriteArrayList<IconPack> activePacks;
    private static boolean activePacksPublished;
    private static volatile SparseIntArray basePreinstalledMap;
    private static final Set<String> blacklistedIcons;
    private static final int cacheSize;
    private static final CoroutineDispatcher decodeDispatcher;
    private static final ConcurrentHashMap<String, IconPack> iconOwnerMap;
    private static final CountDownLatch initialPacksLoaded;
    private static volatile long initializationGeneration;
    private static Job initializationJob;
    private static volatile boolean initializationTimedOut;
    private static final int maxMemory;
    private static final CoroutineDispatcher mutationDispatcher;
    private static final CoroutineDispatcher prewarmDispatcher;
    private static Job prewarmJob;
    private static final ResolvedIndex resolvedCache;
    private static final SparseArray<Function1<Uri, Unit>> resultCallbacks;
    private static final CoroutineScope scope;
    private static final IconManager$sourceCache$1 sourceCache;
    private static final ConcurrentHashMap<String, Integer> systemIcons;
    private static volatile IntStringMap systemNames;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IconPackStorageError.values().length];
            try {
                iArr[IconPackStorageError.INVALID_ARCHIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IconPackStorageError.MISSING_METADATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IconPackStorageError.METADATA_TOO_LARGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IconPackStorageError.INVALID_METADATA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IconPackStorageError.TOO_MANY_FILES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IconPackStorageError.ARCHIVE_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IconPackStorageError.FILE_TOO_LARGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[IconPackStorageError.COMPRESSION_RATIO_TOO_HIGH.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[IconPackStorageError.STORAGE_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[IconPackStorageError.UNKNOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final long resolvedCacheKey(int resId, int density) {
        return (((long) resId) << 32) | (((long) density) & 4294967295L);
    }

    @JvmOverloads
    public final void showReplaceAlert(Context context, int i) {
        showReplaceAlert$default(this, context, i, null, 4, null);
    }

    private IconManager() {
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [com.exteragram.messenger.icons.IconManager$sourceCache$1] */
    static {
        IconManager iconManager = new IconManager();
        INSTANCE = iconManager;
        scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
        mutationDispatcher = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null);
        decodeDispatcher = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 2, null, 2, null);
        prewarmDispatcher = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null);
        blacklistedIcons = SetsKt.setOf((Object[]) new String[]{"system", "smiles_popup", "camera_btn", "cancel_big", "chats_archive_box", "chats_archive_arrow", "chats_archive_muted", "chats_archive_pin", "chats_widget_preview", "circle_big", "contacts_widget_preview", "etg_splash", "ev_minus", "ev_plus", "filled_chatlink_large", "field_carret_empty", "dino_pic", "circle", "widgets_light_badgebg", "greydivider", "greydivider_bottom", "greydivider_top", "groups_limit1", "ic_ab_new", "ic_foreground", "ic_foreground_monet", "ic_foreground_solid", "ic_player", "ic_reply_icon", "icon_background_clip", "icon_background_clip_round", "icon_plane", "icplaceholder", "large_ads_info", "large_away", "large_greeting", "large_log_actions", "large_monetize", "large_quickreplies", "list_selector_ex", "livepin", "load_big", "location_empty", "login_arrow1", "login_phone1", "logo_middle", "map_pin", "map_pin2", "map_pin3", "map_pin_circle", "map_pin_cone2", "map_pin_photo", "msg_media_gallery", "music_empty", "no_passport", "no_password", "nophotos", "nophotos3", "paint_elliptical_brush", "paint_neon_brush", "paint_radial_brush", "phone_activate", "photo_placeholder_in", "photo_tooltip2", "photoview_placeholder", "screencast_big", "scrollbar_vertical_thumb", "scrollbar_vertical_thumb_inset", "newmsg_divider", "ic_launcher_dr", "smiles_info", "sms_bubble", "sms_devices", "stats_tooltip", "sticker", "story_camera", "theme_preview_image", "transparent", "venue_tooltip", "videopreview", "bluecounter", "photobadge", "photos_rounded", "calendar_date", "menu_copy", "redcircle", "tooltip_arrow", "tooltip_arrow_up", "newyear", "cards_chat", "community_cards", "ic_call_notification_answer", "ic_call_notification_decline", "shortcut_compose", "shortcut_user", "slide_dot_big", "slide_dot_small", "cocoon_logo", "cocoon_text", "telegram_logo", "telegram_logo_2", "mastercard_icon", "ton_icon", "diamond"});
        systemIcons = new ConcurrentHashMap<>();
        int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
        maxMemory = iMaxMemory;
        final int iMax = Math.max(1024, iMaxMemory / 8);
        cacheSize = iMax;
        resolvedCache = new ResolvedIndex(2048);
        sourceCache = new LruCache<SourceCacheKey, Bitmap>(iMax) { // from class: com.exteragram.messenger.icons.IconManager$sourceCache$1
            @Override // androidx.collection.LruCache
            public int sizeOf(IconManager.SourceCacheKey key, Bitmap value) {
                return value.getByteCount() / 1024;
            }
        };
        activePacks = new CopyOnWriteArrayList<>();
        iconOwnerMap = new ConcurrentHashMap<>();
        initialPacksLoaded = new CountDownLatch(1);
        initialize$default(iconManager, false, 1, null);
        resultCallbacks = new SparseArray<>();
    }

    public final boolean isBlacklisted(String name) {
        return blacklistedIcons.contains(name) || StringsKt.contains$default((CharSequence) name, (CharSequence) "avd", false, 2, (Object) null) || StringsKt.endsWith$default(name, "_solar", false, 2, (Object) null) || StringsKt.endsWith$default(name, "_remix", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "$", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "animationpin", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "googlepay", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "shadow", false, 2, (Object) null) || StringsKt.startsWith$default(name, "ic_monochrome", false, 2, (Object) null) || StringsKt.startsWith$default(name, "nocover", false, 2, (Object) null) || StringsKt.startsWith$default(name, "gradient_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "stickers_back_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "media_doc_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "loading_animation", false, 2, (Object) null) || StringsKt.startsWith$default(name, "intro_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "minibubble_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "book_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "call_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "dice", false, 2, (Object) null) || StringsKt.startsWith$default(name, "msg_other_new_filled", false, 2, (Object) null) || StringsKt.startsWith$default(name, "profile_level", false, 2, (Object) null) || StringsKt.startsWith$default(name, "widget_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "zoom_slide", false, 2, (Object) null) || StringsKt.startsWith$default(name, "zoom_round", false, 2, (Object) null) || StringsKt.startsWith$default(name, "popup_fixed_alert", false, 2, (Object) null) || StringsKt.startsWith$default(name, "search_dark", false, 2, (Object) null) || StringsKt.startsWith$default(name, "bar_selector", false, 2, (Object) null);
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\b\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0013\u001a\u00020\u0003J\u0016\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\nJ\b\u0010\u0016\u001a\u00020\u0010H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager$IntStringMap;", _UrlKt.FRAGMENT_ENCODE_SET, "expected", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "keys", _UrlKt.FRAGMENT_ENCODE_SET, "values", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", PluginsConstants.Settings.MASK, "shift", "size", "allocate", _UrlKt.FRAGMENT_ENCODE_SET, "capacity", "get", PluginsConstants.Settings.KEY, "put", "value", "grow", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class IntStringMap {
        private int mask;
        private int shift;
        private int size;
        private int[] keys = new int[0];
        private String[] values = new String[0];

        public IntStringMap(int i) {
            int i2 = 4;
            while (i2 < i * 2) {
                i2 <<= 1;
            }
            allocate(i2);
        }

        private final void allocate(int capacity) {
            this.keys = new int[capacity];
            this.values = new String[capacity];
            this.mask = capacity - 1;
            this.shift = 32 - Integer.numberOfTrailingZeros(capacity);
        }

        public final String get(int key) {
            if (key == 0) {
                return null;
            }
            int i = ((-1640531527) * key) >>> this.shift;
            while (true) {
                int i2 = this.keys[i];
                if (i2 == key) {
                    return this.values[i];
                }
                if (i2 == 0) {
                    return null;
                }
                i = (i + 1) & this.mask;
            }
        }

        public final void put(int key, String value) {
            if (key == 0) {
                return;
            }
            if ((this.size + 1) * 2 > this.keys.length) {
                grow();
            }
            int i = ((-1640531527) * key) >>> this.shift;
            while (true) {
                int[] iArr = this.keys;
                int i2 = iArr[i];
                if (i2 == 0) {
                    iArr[i] = key;
                    this.values[i] = value;
                    this.size++;
                    return;
                } else {
                    if (i2 == key) {
                        this.values[i] = value;
                        return;
                    }
                    i = (i + 1) & this.mask;
                }
            }
        }

        private final void grow() {
            int[] iArr = this.keys;
            String[] strArr = this.values;
            allocate(iArr.length << 1);
            this.size = 0;
            int length = iArr.length;
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                if (i2 != 0) {
                    put(i2, strArr[i]);
                }
            }
        }
    }

    public final ConcurrentHashMap<String, Integer> getSystemIcons() {
        return systemIcons;
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\r\b\u0082\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u000eR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u001a\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u001b\u0010\u000eR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u0010R\u0017\u0010\n\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001c\u001a\u0004\b\u001e\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "generation", _UrlKt.FRAGMENT_ENCODE_SET, "packId", "location", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "resId", "density", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "J", "getGeneration", "()J", "Ljava/lang/String;", "getPackId", "getLocation", "getFileName", "I", "getResId", "getDensity", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class SourceCacheKey {
        private final int density;
        private final String fileName;
        private final long generation;
        private final String location;
        private final String packId;
        private final int resId;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SourceCacheKey)) {
                return false;
            }
            SourceCacheKey sourceCacheKey = (SourceCacheKey) other;
            return this.generation == sourceCacheKey.generation && Intrinsics.areEqual(this.packId, sourceCacheKey.packId) && Intrinsics.areEqual(this.location, sourceCacheKey.location) && Intrinsics.areEqual(this.fileName, sourceCacheKey.fileName) && this.resId == sourceCacheKey.resId && this.density == sourceCacheKey.density;
        }

        public int hashCode() {
            int iHashCode = ((Long.hashCode(this.generation) * 31) + this.packId.hashCode()) * 31;
            String str = this.location;
            return ((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.fileName.hashCode()) * 31) + Integer.hashCode(this.resId)) * 31) + Integer.hashCode(this.density);
        }

        public String toString() {
            return "SourceCacheKey(generation=" + this.generation + ", packId=" + this.packId + ", location=" + this.location + ", fileName=" + this.fileName + ", resId=" + this.resId + ", density=" + this.density + ")";
        }

        public SourceCacheKey(long j, String str, String str2, String str3, int i, int i2) {
            this.generation = j;
            this.packId = str;
            this.location = str2;
            this.fileName = str3;
            this.resId = i;
            this.density = i2;
        }

        public final String getPackId() {
            return this.packId;
        }

        public final int getResId() {
            return this.resId;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\bJ\u0006\u0010\u000f\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager$ResolvedIndex;", _UrlKt.FRAGMENT_ENCODE_SET, "capacity", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "entries", "Landroid/util/LongSparseArray;", "Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", "get", PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "put", _UrlKt.FRAGMENT_ENCODE_SET, "value", "clear", "removeByResId", "resId", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ResolvedIndex {
        private final int capacity;
        private final LongSparseArray<SourceCacheKey> entries = new LongSparseArray<>();

        public ResolvedIndex(int i) {
            this.capacity = i;
        }

        public final synchronized SourceCacheKey get(long key) {
            return this.entries.get(key);
        }

        public final synchronized void put(long key, SourceCacheKey value) {
            try {
                if (this.entries.size() >= this.capacity) {
                    this.entries.clear();
                }
                this.entries.put(key, value);
            } catch (Throwable th) {
                throw th;
            }
        }

        public final synchronized void clear() {
            this.entries.clear();
        }

        public final synchronized void removeByResId(int resId) {
            int size = this.entries.size();
            while (true) {
                size--;
                if (-1 < size) {
                    if (((int) (this.entries.keyAt(size) >> 32)) == resId) {
                        this.entries.removeAt(size);
                    }
                }
            }
        }
    }

    private final SourceCacheKey sourceCacheKey(IconPack pack, String fileName, int resId, int density) {
        long j = initializationGeneration;
        String id = pack.getId();
        File location = pack.getLocation();
        return new SourceCacheKey(j, id, location != null ? location.getAbsolutePath() : null, fileName, resId, density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateIconCaches(String packId, int resId) {
        resolvedCache.removeByResId(resId);
        Set<SourceCacheKey> setKeySet = sourceCache.snapshot().keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            SourceCacheKey sourceCacheKey = (SourceCacheKey) obj;
            if (Intrinsics.areEqual(sourceCacheKey.getPackId(), packId) && sourceCacheKey.getResId() == resId) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            sourceCache.remove((SourceCacheKey) obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean publishBitmap(long generation, String resourceName, IconPack pack, int resId, int density, Bitmap bitmap) {
        if (generation == initializationGeneration && Intrinsics.areEqual(iconOwnerMap.get(resourceName), pack)) {
            String str = pack.getIcons().get(resourceName);
            if (str == null) {
                return false;
            }
            SourceCacheKey sourceCacheKey = sourceCacheKey(pack, str, resId, density);
            sourceCache.put(sourceCacheKey, bitmap);
            resolvedCache.put(resolvedCacheKey(resId, density), sourceCacheKey);
            return true;
        }
        return false;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager$ActivePacksUpdate;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "STALE", "UNCHANGED", "CHANGED", "INITIAL", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ActivePacksUpdate {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ActivePacksUpdate[] $VALUES;
        public static final ActivePacksUpdate STALE = new ActivePacksUpdate("STALE", 0);
        public static final ActivePacksUpdate UNCHANGED = new ActivePacksUpdate("UNCHANGED", 1);
        public static final ActivePacksUpdate CHANGED = new ActivePacksUpdate("CHANGED", 2);
        public static final ActivePacksUpdate INITIAL = new ActivePacksUpdate("INITIAL", 3);

        private static final /* synthetic */ ActivePacksUpdate[] $values() {
            return new ActivePacksUpdate[]{STALE, UNCHANGED, CHANGED, INITIAL};
        }

        public static ActivePacksUpdate valueOf(String str) {
            return (ActivePacksUpdate) Enum.valueOf(ActivePacksUpdate.class, str);
        }

        public static ActivePacksUpdate[] values() {
            return (ActivePacksUpdate[]) $VALUES.clone();
        }

        private ActivePacksUpdate(String str, int i) {
        }

        static {
            ActivePacksUpdate[] activePacksUpdateArr$values = $values();
            $VALUES = activePacksUpdateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(activePacksUpdateArr$values);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$prefetchCustomPacks$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$prefetchCustomPacks$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C13221 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C13221(Continuation<? super C13221> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13221(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                IconManager.INSTANCE.syncInstalledCustomPacks(IconPackStorage.INSTANCE.getCustomPacks());
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public final void prefetchCustomPacks() {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C13221(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean syncInstalledCustomPacks(List<IconPack> packs) {
        boolean z;
        try {
            Iterator<IconPack> it = packs.iterator();
            z = false;
            while (it.hasNext()) {
                String id = it.next().getId();
                if (!ExteraConfig.getIconPacksLayout().contains(id) && !ExteraConfig.getIconPacksHidden().contains(id)) {
                    ExteraConfig.getIconPacksHidden().add(id);
                    z = true;
                }
            }
            if (z) {
                ExteraConfig.saveIconPacksLayout();
            }
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void rebuildOwnerMap() {
        iconOwnerMap.clear();
        int size = activePacks.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                IconPack iconPack = activePacks.get(size);
                if (!iconPack.isBase()) {
                    Iterator<String> it = iconPack.getIcons().keySet().iterator();
                    while (it.hasNext()) {
                        iconOwnerMap.put(it.next(), iconPack);
                    }
                }
                if (i < 0) {
                    break;
                } else {
                    size = i;
                }
            }
        }
        rebuildBasePreinstalledMap();
    }

    private final void rebuildBasePreinstalledMap() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = activePacks.size();
        for (int i = 0; i < size; i++) {
            IconPack iconPack = activePacks.get(i);
            SparseIntArray preinstalledMap = iconPack.getPreinstalledMap();
            if (preinstalledMap != null && iconPack.isBase()) {
                int size2 = preinstalledMap.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int iKeyAt = preinstalledMap.keyAt(i2);
                    if (sparseIntArray.indexOfKey(iKeyAt) < 0) {
                        sparseIntArray.put(iKeyAt, preinstalledMap.valueAt(i2));
                    }
                }
            }
        }
        if (sparseIntArray.size() == 0) {
            sparseIntArray = null;
        }
        basePreinstalledMap = sparseIntArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized ActivePacksUpdate updateActivePacks(long generation, List<IconPack> newActivePacks) {
        if (generation != initializationGeneration) {
            return ActivePacksUpdate.STALE;
        }
        boolean z = activePacksPublished;
        activePacksPublished = true;
        if (z && Intrinsics.areEqual(activePacks, newActivePacks)) {
            return ActivePacksUpdate.UNCHANGED;
        }
        CopyOnWriteArrayList<IconPack> copyOnWriteArrayList = activePacks;
        copyOnWriteArrayList.clear();
        copyOnWriteArrayList.addAll(newActivePacks);
        rebuildOwnerMap();
        resolvedCache.clear();
        sourceCache.evictAll();
        return !z ? ActivePacksUpdate.INITIAL : ActivePacksUpdate.CHANGED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File resolvePackIconFile(IconPack pack, String iconFileName) {
        File location = pack.getLocation();
        if (location == null) {
            location = new File(IconPackStorage.INSTANCE.getIconPacksDirectory(), pack.getId());
        }
        try {
            return SimpliFiles.directory(location).file(iconFileName).getFile();
        } catch (Exception e) {
            FileLog.m991e("Failed to resolve icon file for pack " + pack.getId(), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void launchPrewarm(long generation) {
        try {
            if (generation != initializationGeneration) {
                return;
            }
            Job job = prewarmJob;
            if (job != null) {
                Job.cancel$default(job, null, 1, null);
            }
            prewarmJob = BuildersKt__Builders_commonKt.launch$default(scope, prewarmDispatcher, null, new C13211(generation, null), 2, null);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$launchPrewarm$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$launchPrewarm$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C13211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $generation;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13211(long j, Continuation<? super C13211> continuation) {
            super(2, continuation);
            this.$generation = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C13211 c13211 = new C13211(this.$generation, continuation);
            c13211.L$0 = obj;
            return c13211;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            int i = AndroidUtilities.displayMetrics.densityDpi;
            long jElapsedRealtime = SystemClock.elapsedRealtime() + 150;
            int i2 = 0;
            for (Map.Entry entry : IconManager.iconOwnerMap.entrySet()) {
                String str = (String) entry.getKey();
                IconPack iconPack = (IconPack) entry.getValue();
                if (!CoroutineScopeKt.isActive(coroutineScope) || this.$generation != IconManager.initializationGeneration) {
                    return Unit.INSTANCE;
                }
                IconManager iconManager = IconManager.INSTANCE;
                Integer num = iconManager.getSystemIcons().get(str);
                if (num != null) {
                    int iIntValue = num.intValue();
                    int i3 = i2 + 1;
                    if (i2 >= 256) {
                        return Unit.INSTANCE;
                    }
                    if (SystemClock.elapsedRealtime() >= jElapsedRealtime) {
                        return Unit.INSTANCE;
                    }
                    Bitmap packIconBitmap = iconManager.getPackIconBitmap(iconPack, iIntValue, i, null, str, false);
                    if (packIconBitmap != null) {
                        if (CoroutineScopeKt.isActive(coroutineScope) && this.$generation == IconManager.initializationGeneration) {
                            int i4 = i;
                            iconManager.publishBitmap(this.$generation, str, iconPack, iIntValue, i4, packIconBitmap);
                            i = i4;
                        } else {
                            return Unit.INSTANCE;
                        }
                    }
                    i2 = i3;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Drawable getDrawable(int resId, int density, Resources.Theme theme) {
        IconPack iconPack;
        ConcurrentHashMap<String, IconPack> concurrentHashMap = iconOwnerMap;
        if (concurrentHashMap.isEmpty()) {
            return null;
        }
        if (density == 0) {
            density = AndroidUtilities.displayMetrics.densityDpi;
        }
        int i = density;
        SourceCacheKey sourceCacheKey = resolvedCache.get(resolvedCacheKey(resId, i));
        Bitmap bitmap = sourceCacheKey != null ? sourceCache.get(sourceCacheKey) : null;
        if (bitmap != null) {
            return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), bitmap);
        }
        IntStringMap intStringMap = systemNames;
        if (intStringMap == null || (resourceEntryName = intStringMap.get(resId)) == null) {
            try {
                String resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
                String str = resourceEntryName;
                iconPack = concurrentHashMap.get(str);
                if (iconPack != null) {
                    long j = initializationGeneration;
                    Bitmap packIconBitmap = getPackIconBitmap(iconPack, resId, i, theme, str, false);
                    if (packIconBitmap != null) {
                        publishBitmap(j, str, iconPack, resId, i, packIconBitmap);
                        return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), packIconBitmap);
                    }
                }
            } catch (Exception unused) {
            }
        } else {
            String str2 = resourceEntryName;
            iconPack = concurrentHashMap.get(str2);
            if (iconPack != null) {
            }
        }
        return null;
    }

    public final Drawable getCachedDrawable(int resId) {
        SourceCacheKey sourceCacheKey;
        Bitmap bitmap;
        if (iconOwnerMap.isEmpty() || (sourceCacheKey = resolvedCache.get(resolvedCacheKey(resId, AndroidUtilities.displayMetrics.densityDpi))) == null || (bitmap = sourceCache.get(sourceCacheKey)) == null) {
            return null;
        }
        return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), bitmap);
    }

    public final Drawable getPackIconDrawable(IconPack pack, int resId) {
        Bitmap packIconBitmap$default = getPackIconBitmap$default(this, pack, resId, AndroidUtilities.displayMetrics.densityDpi, null, null, false, 48, null);
        if (packIconBitmap$default != null) {
            return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), packIconBitmap$default);
        }
        return null;
    }

    private final Bitmap cachedPackIconBitmap(IconPack pack, int resId, int density) {
        String str;
        String str2;
        IntStringMap intStringMap = systemNames;
        if (intStringMap == null || (str = intStringMap.get(resId)) == null || (str2 = pack.getIcons().get(str)) == null) {
            return null;
        }
        return sourceCache.get(sourceCacheKey(pack, str2, resId, density));
    }

    public final Drawable getCachedPackIconDrawable(IconPack pack, int resId) {
        Bitmap bitmapCachedPackIconBitmap = cachedPackIconBitmap(pack, resId, AndroidUtilities.displayMetrics.densityDpi);
        if (bitmapCachedPackIconBitmap != null) {
            return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), bitmapCachedPackIconBitmap);
        }
        return null;
    }

    public final void requestPackIconDrawable(IconPack pack, int resId, Utilities.Callback<Drawable> callback) {
        int i = AndroidUtilities.displayMetrics.densityDpi;
        Bitmap bitmapCachedPackIconBitmap = cachedPackIconBitmap(pack, resId, i);
        if (bitmapCachedPackIconBitmap == null) {
            BuildersKt__Builders_commonKt.launch$default(scope, decodeDispatcher, null, new C13242(pack, resId, i, callback, null), 2, null);
        } else {
            callback.run(new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), bitmapCachedPackIconBitmap));
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$requestPackIconDrawable$2 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$requestPackIconDrawable$2", m873f = "IconManager.kt", m874i = {0}, m875l = {475}, m876m = "invokeSuspend", m877n = {"bitmap"}, m878s = {"L$0"})
    public static final class C13242 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Utilities.Callback<Drawable> $callback;
        final /* synthetic */ int $density;
        final /* synthetic */ IconPack $pack;
        final /* synthetic */ int $resId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13242(IconPack iconPack, int i, int i2, Utilities.Callback<Drawable> callback, Continuation<? super C13242> continuation) {
            super(2, continuation);
            this.$pack = iconPack;
            this.$resId = i;
            this.$density = i2;
            this.$callback = callback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13242(this.$pack, this.$resId, this.$density, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13242) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Bitmap packIconBitmap$default = IconManager.getPackIconBitmap$default(IconManager.INSTANCE, this.$pack, this.$resId, this.$density, null, null, false, 48, null);
                if (packIconBitmap$default == null) {
                    return Unit.INSTANCE;
                }
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, packIconBitmap$default, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(packIconBitmap$default);
                this.label = 1;
                if (BuildersKt.withContext(main, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$requestPackIconDrawable$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$requestPackIconDrawable$2$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$requestPackIconDrawable$2$1\n+ 2 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,1058:1\n27#2:1059\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$requestPackIconDrawable$2$1\n*L\n476#1:1059\n*E\n"})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Bitmap $bitmap;
            final /* synthetic */ Utilities.Callback<Drawable> $callback;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Utilities.Callback<Drawable> callback, Bitmap bitmap, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$callback = callback;
                this.$bitmap = bitmap;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$callback, this.$bitmap, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.$callback.run(new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), this.$bitmap));
                return Unit.INSTANCE;
            }
        }
    }

    public final void requestDrawable(int resId, Utilities.Callback<Drawable> callback) {
        if (iconOwnerMap.isEmpty()) {
            return;
        }
        Drawable cachedDrawable = getCachedDrawable(resId);
        if (cachedDrawable != null) {
            callback.run(cachedDrawable);
        } else {
            BuildersKt__Builders_commonKt.launch$default(scope, decodeDispatcher, null, new C13232(resId, AndroidUtilities.displayMetrics.densityDpi, callback, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$requestDrawable$2 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$requestDrawable$2", m873f = "IconManager.kt", m874i = {0}, m875l = {490}, m876m = "invokeSuspend", m877n = {"drawable"}, m878s = {"L$0"})
    public static final class C13232 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Utilities.Callback<Drawable> $callback;
        final /* synthetic */ int $density;
        final /* synthetic */ int $resId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13232(int i, int i2, Utilities.Callback<Drawable> callback, Continuation<? super C13232> continuation) {
            super(2, continuation);
            this.$resId = i;
            this.$density = i2;
            this.$callback = callback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13232(this.$resId, this.$density, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13232) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Drawable drawable = IconManager.INSTANCE.getDrawable(this.$resId, this.$density, null);
                if (drawable == null) {
                    return Unit.INSTANCE;
                }
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$callback, drawable, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(drawable);
                this.label = 1;
                if (BuildersKt.withContext(main, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$requestDrawable$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$requestDrawable$2$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Utilities.Callback<Drawable> $callback;
            final /* synthetic */ Drawable $drawable;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Utilities.Callback<Drawable> callback, Drawable drawable, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$callback = callback;
                this.$drawable = drawable;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$callback, this.$drawable, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.$callback.run(this.$drawable);
                return Unit.INSTANCE;
            }
        }
    }

    public static /* synthetic */ Bitmap getPackIconBitmap$default(IconManager iconManager, IconPack iconPack, int i, int i2, Resources.Theme theme, String str, boolean z, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            str = null;
        }
        String str2 = str;
        if ((i3 & 32) != 0) {
            z = true;
        }
        return iconManager.getPackIconBitmap(iconPack, i, i2, theme, str2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap getPackIconBitmap(IconPack pack, int resId, int density, Resources.Theme theme, String knownResourceName, boolean cacheResult) {
        if (knownResourceName == null) {
            IntStringMap intStringMap = systemNames;
            knownResourceName = intStringMap != null ? intStringMap.get(resId) : null;
            if (knownResourceName == null) {
                try {
                    knownResourceName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        String str = pack.getIcons().get(knownResourceName);
        if (str == null) {
            return null;
        }
        SourceCacheKey sourceCacheKey = sourceCacheKey(pack, str, resId, density);
        IconManager$sourceCache$1 iconManager$sourceCache$1 = sourceCache;
        Bitmap bitmap = iconManager$sourceCache$1.get(sourceCacheKey);
        if (bitmap != null) {
            return bitmap;
        }
        File fileResolvePackIconFile = resolvePackIconFile(pack, str);
        if (fileResolvePackIconFile == null) {
            return null;
        }
        Bitmap bitmapCreateBitmapFromFile = createBitmapFromFile(fileResolvePackIconFile.getAbsolutePath(), resId, density, theme);
        if (bitmapCreateBitmapFromFile != null && cacheResult) {
            iconManager$sourceCache$1.put(sourceCacheKey, bitmapCreateBitmapFromFile);
        }
        return bitmapCreateBitmapFromFile;
    }

    public final Bitmap createBitmapFromFile(String path, int originalResId, int density, Resources.Theme theme) {
        Bitmap bitmap;
        Drawable drawableForDensity;
        int i;
        Bitmap bitmap2;
        Bitmap bitmap3 = null;
        try {
            Resources resources = ApplicationLoader.applicationContext.getResources();
            ExteraResources exteraResources = resources instanceof ExteraResources ? (ExteraResources) resources : null;
            if (exteraResources == null || (drawableForDensity = exteraResources.getOriginalDrawable(originalResId)) == null) {
                drawableForDensity = ResourcesCompat.getDrawableForDensity(ApplicationLoader.applicationContext.getResources(), originalResId, density, theme);
            }
            int iMax = Math.max(1, drawableForDensity != null ? drawableForDensity.getIntrinsicWidth() : AndroidUtilities.dp(24.0f));
            int iMax2 = Math.max(1, drawableForDensity != null ? drawableForDensity.getIntrinsicHeight() : AndroidUtilities.dp(24.0f));
            File file = new File(path);
            DecodedIconStore decodedIconStore = DecodedIconStore.INSTANCE;
            Bitmap bitmap4 = decodedIconStore.get(file, iMax, iMax2, density);
            if (bitmap4 != null) {
                return bitmap4;
            }
            if (StringsKt.endsWith(path, ".svg", true)) {
                FileInputStream fileInputStream = new FileInputStream(path);
                try {
                    SVG fromInputStream = SVG.getFromInputStream(fileInputStream);
                    CloseableKt.closeFinally(fileInputStream, null);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    fromInputStream.setDocumentWidth(iMax);
                    fromInputStream.setDocumentHeight(iMax2);
                    fromInputStream.renderToCanvas(canvas);
                    bitmapCreateBitmap.setDensity(density);
                    decodedIconStore.put(file, iMax, iMax2, density, bitmapCreateBitmap);
                    return bitmapCreateBitmap;
                } finally {
                }
            } else {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(path, options);
                int i2 = options.outWidth;
                if (i2 <= 0 || (i = options.outHeight) <= 0 || ((long) i2) * ((long) i) > 100000000) {
                    return null;
                }
                options.inSampleSize = 1;
                if (i > iMax2 || i2 > iMax) {
                    int i3 = i / 2;
                    int i4 = i2 / 2;
                    while (true) {
                        int i5 = options.inSampleSize;
                        if (i3 / i5 < iMax2 || i4 / i5 < iMax) {
                            break;
                        }
                        options.inSampleSize = i5 * 2;
                    }
                }
                long jMax = Math.max(((long) iMax) * ((long) iMax2), 1048576L);
                while (true) {
                    long j = options.outWidth;
                    int i6 = options.inSampleSize;
                    bitmap = bitmap3;
                    long j2 = jMax;
                    try {
                        if ((((j + ((long) i6)) - 1) / ((long) i6)) * (((((long) options.outHeight) + ((long) i6)) - 1) / ((long) i6)) <= j2) {
                            break;
                        }
                        options.inSampleSize = i6 * 2;
                        bitmap3 = bitmap;
                        jMax = j2;
                    } catch (Exception e) {
                        e = e;
                        FileLog.m991e("Error loading icon bitmap: " + path, e);
                        return bitmap;
                    } catch (OutOfMemoryError e2) {
                        e = e2;
                        FileLog.m991e("Out of memory loading icon bitmap: " + path, e);
                        return bitmap;
                    }
                }
                options.inJustDecodeBounds = false;
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(path, options);
                if (bitmapDecodeFile == null) {
                    return bitmap;
                }
                if (bitmapDecodeFile.getWidth() != iMax || bitmapDecodeFile.getHeight() != iMax2) {
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, iMax, iMax2, true);
                    if (!Intrinsics.areEqual(bitmapCreateScaledBitmap, bitmapDecodeFile)) {
                        bitmapDecodeFile.recycle();
                    }
                    bitmapCreateScaledBitmap.setDensity(density);
                    bitmap2 = bitmapCreateScaledBitmap;
                } else {
                    bitmapDecodeFile.setDensity(density);
                    bitmap2 = bitmapDecodeFile;
                }
                DecodedIconStore.INSTANCE.put(file, iMax, iMax2, density, bitmap2);
                return bitmap2;
            }
        } catch (Exception e3) {
            e = e3;
            bitmap = null;
        } catch (OutOfMemoryError e4) {
            e = e4;
            bitmap = null;
        }
    }

    public final void saveCustomIcon(String packId, int resId, File tempFile, String originalName) {
        String resourceEntryName;
        IntStringMap intStringMap = systemNames;
        if (intStringMap == null || (resourceEntryName = intStringMap.get(resId)) == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
            } catch (Exception unused) {
                return;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(scope, mutationDispatcher, null, new C13261(packId, tempFile, originalName, resourceEntryName, resId, null), 2, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveCustomIcon$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$saveCustomIcon$1", m873f = "IconManager.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, m875l = {646}, m876m = "invokeSuspend", m877n = {"$this$launch", "packToEdit", "ext", "sanitized", "baseName", "stem", "packDirectory", "destination", "updatedMap", "previousFileName", "updatedPack", "preDecoded", "density"}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0"})
    @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1058:1\n1#2:1059\n392#3,4:1060\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1\n*L\n620#1:1060,4\n*E\n"})
    public static final class C13261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $originalName;
        final /* synthetic */ String $packId;
        final /* synthetic */ int $resId;
        final /* synthetic */ String $resourceName;
        final /* synthetic */ File $tempFile;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$10;
        Object L$11;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13261(String str, File file, String str2, String str3, int i, Continuation<? super C13261> continuation) {
            super(2, continuation);
            this.$packId = str;
            this.$tempFile = file;
            this.$originalName = str2;
            this.$resourceName = str3;
            this.$resId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C13261 c13261 = new C13261(this.$packId, this.$tempFile, this.$originalName, this.$resourceName, this.$resId, continuation);
            c13261.L$0 = obj;
            return c13261;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(1:155)|(1:(2:5|6)(2:12|13))(3:14|15|(7:17|18|160|19|(1:21)|24|25)(19:28|(1:30)(1:32)|33|(1:35)(1:36)|37|(1:39)(1:40)|41|(1:43)|44|(2:45|(1:179)(2:47|(2:178|49)(1:50)))|51|(1:52)|54|55|174|56|(12:58|59|162|60|(1:62)|65|158|68|(1:70)|73|76|77)(3:(7:166|87|(1:89)|92|95|(1:97)|98)|99|(1:101))|133|134))|102|156|103|(1:105)|106|133|134|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0288, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0289, code lost:
        
            r1 = kotlin.Result.INSTANCE;
            kotlin.Result.m3087constructorimpl(kotlin.ResultKt.createFailure(r0));
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0293, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x0294, code lost:
        
            r20 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x0298, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0299, code lost:
        
            r20 = r11;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            Throwable th;
            Object objM3087constructorimpl;
            Object objM3087constructorimpl2;
            File file;
            File fileResolvePackIconFile;
            Object objM3087constructorimpl3;
            Object objM3087constructorimpl4;
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            File file2 = null;
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e) {
                e = e;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                IconPack iconPackFindPackById = IconPackStorage.INSTANCE.findPackById(this.$packId);
                if (iconPackFindPackById == null) {
                    Unit unit = Unit.INSTANCE;
                    File file3 = this.$tempFile;
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        if (file3.exists()) {
                            SimpliFiles.file(file3).delete();
                        }
                        Result.m3087constructorimpl(unit);
                        return unit;
                    } catch (Throwable th3) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m3087constructorimpl(ResultKt.createFailure(th3));
                        return unit;
                    }
                }
                String extension = FilesKt.getExtension(this.$tempFile);
                String str = this.$originalName;
                String strFileNameFromUserString = str != null ? FileManager.fileNameFromUserString(str) : null;
                String strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
                String str2 = strFileNameFromUserString == null ? _UrlKt.FRAGMENT_ENCODE_SET : strFileNameFromUserString;
                String str3 = str2.length() == 0 ? this.$resourceName : str2;
                String strSubstringBeforeLast = StringsKt.substringBeforeLast(str3, '.', str3);
                String str4 = this.$resourceName;
                if (strSubstringBeforeLast.length() == 0) {
                    strSubstringBeforeLast = str4;
                }
                String strTake = StringsKt.take(strSubstringBeforeLast, 64);
                int lastIndex = StringsKt.getLastIndex(strTake);
                while (true) {
                    if (-1 >= lastIndex) {
                        break;
                    }
                    if (!Character.isHighSurrogate(strTake.charAt(lastIndex))) {
                        strSubstring = strTake.substring(0, lastIndex + 1);
                        break;
                    }
                    lastIndex--;
                }
                SimpliDirectory simpliDirectoryCreate = SimpliFiles.directory(new File(IconPackStorage.INSTANCE.getIconPacksDirectory(), iconPackFindPackById.getId())).create();
                do {
                    file = simpliDirectoryCreate.file(strSubstring + "_" + UUID.randomUUID() + "." + extension).getFile();
                } while (file.exists());
                SimpliFiles.file(this.$tempFile).copyTo(file, OverwritePolicy.ERROR);
                Map mutableMap = MapsKt.toMutableMap(iconPackFindPackById.getIcons());
                String str5 = (String) mutableMap.put(this.$resourceName, file.getName());
                String str6 = strSubstring;
                String str7 = str3;
                File file4 = file;
                try {
                    IconPack iconPackCopy$default = IconPack.copy$default(iconPackFindPackById, null, null, null, null, mutableMap, null, null, 111, null);
                    if (!IconPackStorage.INSTANCE.saveIconPackMetadata(iconPackCopy$default)) {
                        Unit unit2 = Unit.INSTANCE;
                        File file5 = this.$tempFile;
                        try {
                            Result.Companion companion3 = Result.INSTANCE;
                            if (file5.exists()) {
                                SimpliFiles.file(file5).delete();
                            }
                            Result.m3087constructorimpl(unit2);
                        } catch (Throwable th4) {
                            Result.Companion companion4 = Result.INSTANCE;
                            Result.m3087constructorimpl(ResultKt.createFailure(th4));
                        }
                        try {
                            if (file4.exists()) {
                                SimpliFiles.file(file4).delete();
                            }
                            objM3087constructorimpl4 = Result.m3087constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th5) {
                            Result.Companion companion5 = Result.INSTANCE;
                            objM3087constructorimpl4 = Result.m3087constructorimpl(ResultKt.createFailure(th5));
                        }
                        Result.m3086boximpl(objM3087constructorimpl4);
                        return unit2;
                    }
                    if (str5 != null && !mutableMap.values().contains(str5) && (fileResolvePackIconFile = IconManager.INSTANCE.resolvePackIconFile(iconPackFindPackById, str5)) != null) {
                        try {
                            Result.Companion companion6 = Result.INSTANCE;
                            if (fileResolvePackIconFile.exists()) {
                                SimpliFiles.file(fileResolvePackIconFile).delete();
                            }
                            objM3087constructorimpl3 = Result.m3087constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th6) {
                            Result.Companion companion7 = Result.INSTANCE;
                            objM3087constructorimpl3 = Result.m3087constructorimpl(ResultKt.createFailure(th6));
                        }
                        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(objM3087constructorimpl3);
                        if (thM3090exceptionOrNullimpl != null) {
                            FileLog.m991e("Failed to delete old icon", thM3090exceptionOrNullimpl);
                        }
                        Result.m3086boximpl(objM3087constructorimpl3);
                    }
                    int i2 = AndroidUtilities.displayMetrics.densityDpi;
                    Bitmap bitmapCreateBitmapFromFile = IconManager.INSTANCE.createBitmapFromFile(file4.getAbsolutePath(), this.$resId, i2, null);
                    MainCoroutineDispatcher main = Dispatchers.getMain();
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(iconPackCopy$default, this.$resId, bitmapCreateBitmapFromFile, this.$resourceName, i2, null);
                    this.L$0 = coroutineScope;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(iconPackFindPackById);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(extension);
                    this.L$3 = SpillingKt.nullOutSpilledVariable(str2);
                    this.L$4 = SpillingKt.nullOutSpilledVariable(str7);
                    this.L$5 = SpillingKt.nullOutSpilledVariable(str6);
                    this.L$6 = SpillingKt.nullOutSpilledVariable(simpliDirectoryCreate);
                    this.L$7 = SpillingKt.nullOutSpilledVariable(file4);
                    this.L$8 = SpillingKt.nullOutSpilledVariable(mutableMap);
                    this.L$9 = SpillingKt.nullOutSpilledVariable(str5);
                    this.L$10 = SpillingKt.nullOutSpilledVariable(iconPackCopy$default);
                    this.L$11 = SpillingKt.nullOutSpilledVariable(bitmapCreateBitmapFromFile);
                    this.I$0 = i2;
                    this.label = 1;
                    if (BuildersKt.withContext(main, anonymousClass2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Exception e2) {
                    e = e2;
                    file2 = file4;
                    FileLog.m991e("Failed to save custom icon", e);
                    File file6 = this.$tempFile;
                    try {
                        Result.Companion companion8 = Result.INSTANCE;
                        if (file6.exists()) {
                            SimpliFiles.file(file6).delete();
                        }
                        Result.m3087constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th7) {
                        Result.Companion companion9 = Result.INSTANCE;
                        Result.m3087constructorimpl(ResultKt.createFailure(th7));
                    }
                    if (file2 != null) {
                        try {
                            if (file2.exists()) {
                                SimpliFiles.file(file2).delete();
                            }
                            objM3087constructorimpl2 = Result.m3087constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th8) {
                            Result.Companion companion10 = Result.INSTANCE;
                            objM3087constructorimpl2 = Result.m3087constructorimpl(ResultKt.createFailure(th8));
                        }
                        Result.m3086boximpl(objM3087constructorimpl2);
                    }
                } catch (Throwable th9) {
                    th = th9;
                    th = th;
                    file2 = file4;
                    File file7 = this.$tempFile;
                    try {
                        Result.Companion companion11 = Result.INSTANCE;
                        if (file7.exists()) {
                            SimpliFiles.file(file7).delete();
                        }
                        Result.m3087constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th10) {
                        Result.Companion companion12 = Result.INSTANCE;
                        Result.m3087constructorimpl(ResultKt.createFailure(th10));
                    }
                    if (file2 == null) {
                        throw th;
                    }
                    try {
                        if (file2.exists()) {
                            SimpliFiles.file(file2).delete();
                        }
                        objM3087constructorimpl = Result.m3087constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th11) {
                        Result.Companion companion13 = Result.INSTANCE;
                        objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th11));
                    }
                    Result.m3086boximpl(objM3087constructorimpl);
                    throw th;
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            File file8 = this.$tempFile;
            Result.Companion companion14 = Result.INSTANCE;
            if (file8.exists()) {
                SimpliFiles.file(file8).delete();
            }
            Result.m3087constructorimpl(Unit.INSTANCE);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveCustomIcon$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$saveCustomIcon$1$2", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1058:1\n363#2,7:1059\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$2\n*L\n647#1:1059,7\n*E\n"})
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ int $density;
            final /* synthetic */ Bitmap $preDecoded;
            final /* synthetic */ int $resId;
            final /* synthetic */ String $resourceName;
            final /* synthetic */ IconPack $updatedPack;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(IconPack iconPack, int i, Bitmap bitmap, String str, int i2, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$updatedPack = iconPack;
                this.$resId = i;
                this.$preDecoded = bitmap;
                this.$resourceName = str;
                this.$density = i2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$updatedPack, this.$resId, this.$preDecoded, this.$resourceName, this.$density, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    CopyOnWriteArrayList copyOnWriteArrayList = IconManager.activePacks;
                    IconPack iconPack = this.$updatedPack;
                    Iterator it = copyOnWriteArrayList.iterator();
                    int i = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i = -1;
                            break;
                        }
                        if (Intrinsics.areEqual(((IconPack) it.next()).getId(), iconPack.getId())) {
                            break;
                        }
                        i++;
                    }
                    if (i != -1) {
                        IconManager.activePacks.set(i, this.$updatedPack);
                        IconManager iconManager = IconManager.INSTANCE;
                        iconManager.rebuildOwnerMap();
                        iconManager.invalidateIconCaches(this.$updatedPack.getId(), this.$resId);
                        Bitmap bitmap = this.$preDecoded;
                        if (bitmap != null) {
                            Boxing.boxBoolean(iconManager.publishBitmap(IconManager.initializationGeneration, this.$resourceName, this.$updatedPack, this.$resId, this.$density, bitmap));
                        }
                    }
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                    return Unit.INSTANCE;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }
    }

    public final void resetCustomIcon(String packId, int resId) {
        String resourceEntryName;
        IntStringMap intStringMap = systemNames;
        if (intStringMap == null || (resourceEntryName = intStringMap.get(resId)) == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
            } catch (Exception unused) {
                return;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(scope, mutationDispatcher, null, new C13251(packId, resourceEntryName, resId, null), 2, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$resetCustomIcon$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$resetCustomIcon$1", m873f = "IconManager.kt", m874i = {0, 0, 0, 0, 0}, m875l = {692}, m876m = "invokeSuspend", m877n = {"$this$launch", "packToEdit", "iconFileName", "updatedMap", "updatedPack"}, m878s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
    @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$resetCustomIcon$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1058:1\n1#2:1059\n*E\n"})
    public static final class C13251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $packId;
        final /* synthetic */ int $resId;
        final /* synthetic */ String $resourceName;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13251(String str, String str2, int i, Continuation<? super C13251> continuation) {
            super(2, continuation);
            this.$packId = str;
            this.$resourceName = str2;
            this.$resId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C13251 c13251 = new C13251(this.$packId, this.$resourceName, this.$resId, continuation);
            c13251.L$0 = obj;
            return c13251;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            Object objM3087constructorimpl;
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
                IconPack iconPackFindPackById = iconPackStorage.findPackById(this.$packId);
                if (iconPackFindPackById != null && (str = iconPackFindPackById.getIcons().get(this.$resourceName)) != null) {
                    Map mutableMap = MapsKt.toMutableMap(iconPackFindPackById.getIcons());
                    mutableMap.remove(this.$resourceName);
                    IconPack iconPackCopy$default = IconPack.copy$default(iconPackFindPackById, null, null, null, null, mutableMap, null, null, 111, null);
                    if (!iconPackStorage.saveIconPackMetadata(iconPackCopy$default)) {
                        return Unit.INSTANCE;
                    }
                    if (!mutableMap.values().contains(str)) {
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            File fileResolvePackIconFile = IconManager.INSTANCE.resolvePackIconFile(iconPackFindPackById, str);
                            if (fileResolvePackIconFile != null && fileResolvePackIconFile.exists()) {
                                SimpliFiles.file(fileResolvePackIconFile).delete();
                            }
                            objM3087constructorimpl = Result.m3087constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
                        }
                        Throwable thM3090exceptionOrNullimpl = Result.m3090exceptionOrNullimpl(objM3087constructorimpl);
                        if (thM3090exceptionOrNullimpl != null) {
                            FileLog.m991e("Failed to delete old icon", thM3090exceptionOrNullimpl);
                        }
                    }
                    MainCoroutineDispatcher main = Dispatchers.getMain();
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(iconPackCopy$default, this.$resId, null);
                    this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(iconPackFindPackById);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(str);
                    this.L$3 = SpillingKt.nullOutSpilledVariable(mutableMap);
                    this.L$4 = SpillingKt.nullOutSpilledVariable(iconPackCopy$default);
                    this.label = 1;
                    if (BuildersKt.withContext(main, anonymousClass3, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$resetCustomIcon$1$3, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$resetCustomIcon$1$3", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$resetCustomIcon$1$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1058:1\n363#2,7:1059\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$resetCustomIcon$1$3\n*L\n693#1:1059,7\n*E\n"})
        public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ int $resId;
            final /* synthetic */ IconPack $updatedPack;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(IconPack iconPack, int i, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$updatedPack = iconPack;
                this.$resId = i;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass3(this.$updatedPack, this.$resId, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    CopyOnWriteArrayList copyOnWriteArrayList = IconManager.activePacks;
                    IconPack iconPack = this.$updatedPack;
                    Iterator it = copyOnWriteArrayList.iterator();
                    int i = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i = -1;
                            break;
                        }
                        if (Intrinsics.areEqual(((IconPack) it.next()).getId(), iconPack.getId())) {
                            break;
                        }
                        i++;
                    }
                    if (i != -1) {
                        IconManager.activePacks.set(i, this.$updatedPack);
                        IconManager iconManager = IconManager.INSTANCE;
                        iconManager.rebuildOwnerMap();
                        iconManager.invalidateIconCaches(this.$updatedPack.getId(), this.$resId);
                    }
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                    return Unit.INSTANCE;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }
    }

    public final int getIcon(int resId) {
        int i;
        SparseIntArray sparseIntArray = basePreinstalledMap;
        return (sparseIntArray == null || (i = sparseIntArray.get(resId, -1)) == -1) ? resId : i;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081 A[RETURN] */
    @JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final IconCompat getNotificationIcon() {
        Object obj;
        Object next;
        int iIntValue;
        IconCompat iconCompatCreateWithBitmap;
        try {
            ExteraConfig.loadConfig();
            Iterator it = SequencesKt.mapNotNull(SequencesKt.filterNot(CollectionsKt.asSequence(ExteraConfig.getIconPacksLayout()), new Function1() { // from class: com.exteragram.messenger.icons.IconManager$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(StringsKt.startsWith$default((String) obj2, "base.", false, 2, (Object) null));
                }
            }), new Function1() { // from class: com.exteragram.messenger.icons.IconManager$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return IconPackStorage.INSTANCE.findPackById((String) obj2);
                }
            }).iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (((IconPack) next).getIcons().containsKey("notification")) {
                    break;
                }
            }
            IconPack iconPack = (IconPack) next;
            if (iconPack != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    Uri iconUri = IconPackProvider.INSTANCE.getIconUri(iconPack.getId(), "notification");
                    if (iconUri != null) {
                        try {
                            ApplicationLoader.applicationContext.grantUriPermission("com.android.systemui", iconUri, 1);
                        } catch (Exception e) {
                            FileLog.m992e(e);
                        }
                        iconCompatCreateWithBitmap = IconCompat.createWithContentUri(iconUri);
                    } else {
                        iconCompatCreateWithBitmap = null;
                    }
                    if (iconCompatCreateWithBitmap != null) {
                        return iconCompatCreateWithBitmap;
                    }
                } else {
                    Bitmap packIconBitmap$default = getPackIconBitmap$default(INSTANCE, iconPack, C2665R.drawable.notification, AndroidUtilities.displayMetrics.densityDpi, null, "notification", false, 32, null);
                    if (packIconBitmap$default != null) {
                        iconCompatCreateWithBitmap = IconCompat.createWithBitmap(packIconBitmap$default);
                    }
                    if (iconCompatCreateWithBitmap != null) {
                    }
                }
            }
            Iterator it2 = SequencesKt.map(SequencesKt.mapNotNull(SequencesKt.filter(CollectionsKt.asSequence(ExteraConfig.getIconPacksLayout()), new Function1() { // from class: com.exteragram.messenger.icons.IconManager$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(StringsKt.startsWith$default((String) obj2, "base.", false, 2, (Object) null));
                }
            }), new Function1() { // from class: com.exteragram.messenger.icons.IconManager$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return IconManager.$r8$lambda$Vs1GV53ha9TZG53mOuPSdSA1wwU((String) obj2);
                }
            }), new Function1() { // from class: com.exteragram.messenger.icons.IconManager$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Integer.valueOf(((SparseIntArray) obj2).get(C2665R.drawable.notification, -1));
                }
            }).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                if (((Number) next2).intValue() != -1) {
                    obj = next2;
                    break;
                }
            }
            Integer num = (Integer) obj;
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = C2665R.drawable.notification;
            }
            return IconCompat.createWithResource(ApplicationLoader.applicationContext, iIntValue);
        } catch (Exception e2) {
            FileLog.m991e("Failed to resolve notification icon", e2);
            return IconCompat.createWithResource(ApplicationLoader.applicationContext, C2665R.drawable.notification);
        }
    }

    public static SparseIntArray $r8$lambda$Vs1GV53ha9TZG53mOuPSdSA1wwU(String str) {
        IconPack basePack = BaseIconPacks.INSTANCE.getBasePack(str);
        if (basePack != null) {
            return basePack.getPreinstalledMap();
        }
        return null;
    }

    @JvmStatic
    public static final Icon getNotificationSystemIcon() {
        return getNotificationIcon().toIcon(ApplicationLoader.applicationContext);
    }

    public static /* synthetic */ void initialize$default(IconManager iconManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        iconManager.initialize(z);
    }

    public final synchronized void initialize(boolean update) {
        Job job;
        Job job2 = initializationJob;
        if (job2 == null || !job2.isActive() || update) {
            if (update && (job = initializationJob) != null) {
                Job.cancel$default(job, null, 1, null);
            }
            Job job3 = prewarmJob;
            if (job3 != null) {
                Job.cancel$default(job3, null, 1, null);
            }
            initializationGeneration++;
            initializationJob = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C13201(initializationGeneration, update, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$initialize$1", m873f = "IconManager.kt", m874i = {0, 1}, m875l = {820, 834}, m876m = "invokeSuspend", m877n = {"result", "result"}, m878s = {"L$0", "L$0"})
    public static final class C13201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $generation;
        final /* synthetic */ boolean $update;
        Object L$0;
        int label;

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$WhenMappings */
        @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ActivePacksUpdate.values().length];
                try {
                    iArr[ActivePacksUpdate.STALE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ActivePacksUpdate.UNCHANGED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ActivePacksUpdate.CHANGED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ActivePacksUpdate.INITIAL.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13201(long j, boolean z, Continuation<? super C13201> continuation) {
            super(2, continuation);
            this.$generation = j;
            this.$update = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13201(this.$generation, this.$update, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x0102, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r2, r10) == r0) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0138, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r4, r10) == r0) goto L58;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            IconPack iconPackFindPackById;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    IconManager.INSTANCE.launchPrewarm(this.$generation);
                    return Unit.INSTANCE;
                }
                if (i != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                IconManager.INSTANCE.launchPrewarm(this.$generation);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            try {
                ExteraConfig.loadConfig();
                ArrayList arrayList = new ArrayList();
                for (String str : ExteraConfig.getIconPacksLayout()) {
                    if (StringsKt.startsWith$default(str, "base.", false, 2, (Object) null)) {
                        iconPackFindPackById = BaseIconPacks.INSTANCE.getBasePack(str);
                    } else {
                        iconPackFindPackById = IconPackStorage.INSTANCE.findPackById(str);
                    }
                    if (iconPackFindPackById != null) {
                        arrayList.add(iconPackFindPackById);
                    }
                }
                if (this.$generation != IconManager.initializationGeneration) {
                    return Unit.INSTANCE;
                }
                IconManager iconManager = IconManager.INSTANCE;
                ActivePacksUpdate activePacksUpdateUpdateActivePacks = iconManager.updateActivePacks(this.$generation, arrayList);
                IconManager.initialPacksLoaded.countDown();
                if (iconManager.getSystemIcons().isEmpty()) {
                    try {
                        Field[] fields = C2665R.drawable.class.getFields();
                        IntStringMap intStringMap = new IntStringMap(2048);
                        Iterator it = ArrayIteratorKt.iterator(fields);
                        while (it.hasNext()) {
                            Field field = (Field) it.next();
                            String name = field.getName();
                            IconManager iconManager2 = IconManager.INSTANCE;
                            if (!iconManager2.isBlacklisted(name)) {
                                int i2 = field.getInt(null);
                                iconManager2.getSystemIcons().put(name, Boxing.boxInt(i2));
                                intStringMap.put(i2, name);
                            }
                        }
                        IconManager.systemNames = intStringMap;
                    } catch (Exception e) {
                        FileLog.m992e(e);
                    }
                }
                int i3 = WhenMappings.$EnumSwitchMapping$0[activePacksUpdateUpdateActivePacks.ordinal()];
                if (i3 == 1) {
                    return Unit.INSTANCE;
                }
                if (i3 == 2) {
                    if (this.$update) {
                        IconManager.resolvedCache.clear();
                        IconManager.sourceCache.evictAll();
                        MainCoroutineDispatcher main = Dispatchers.getMain();
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$generation, null);
                        this.L$0 = SpillingKt.nullOutSpilledVariable(activePacksUpdateUpdateActivePacks);
                        this.label = 1;
                    }
                    IconManager.INSTANCE.launchPrewarm(this.$generation);
                    return Unit.INSTANCE;
                }
                if (i3 != 3 && i3 != 4) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                    return null;
                }
                MainCoroutineDispatcher main2 = Dispatchers.getMain();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$generation, activePacksUpdateUpdateActivePacks, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(activePacksUpdateUpdateActivePacks);
                this.label = 2;
                return coroutine_suspended;
            } finally {
                IconManager.initialPacksLoaded.countDown();
            }
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$initialize$1$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ long $generation;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(long j, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$generation = j;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$generation, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                if (this.$generation != IconManager.initializationGeneration) {
                    return Unit.INSTANCE;
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$initialize$1$2", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$initialize$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1058:1\n296#2,2:1059\n296#2,2:1061\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$initialize$1$2\n*L\n839#1:1059,2\n840#1:1061,2\n*E\n"})
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ long $generation;
            final /* synthetic */ ActivePacksUpdate $result;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(long j, ActivePacksUpdate activePacksUpdate, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$generation = j;
                this.$result = activePacksUpdate;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$generation, this.$result, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:40:0x0091  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                Object next;
                Object next2;
                Activity parentActivity;
                Activity parentActivity2;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                if (this.$generation != IconManager.initializationGeneration) {
                    return Unit.INSTANCE;
                }
                if (ExteraConfig.getEditingIconPackId() != null) {
                    Iterator it = IconManager.activePacks.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (Intrinsics.areEqual(((IconPack) next).getId(), ExteraConfig.getEditingIconPackId())) {
                            break;
                        }
                    }
                    IconPack iconPack = (IconPack) next;
                    Iterator it2 = IconManager.activePacks.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it2.next();
                        if (!((IconPack) next2).isBase()) {
                            break;
                        }
                    }
                    IconPack iconPack2 = (IconPack) next2;
                    if (iconPack != null) {
                        if (!Intrinsics.areEqual(iconPack.getId(), iconPack2 != null ? iconPack2.getId() : null)) {
                            ExteraConfig.setEditingIconPackId(null);
                            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                            if (safeLastFragment != null && (parentActivity = safeLastFragment.getParentActivity()) != null && (parentActivity instanceof LaunchActivity)) {
                                IconPickerController.setActive((LaunchActivity) parentActivity, false);
                            }
                        } else {
                            BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
                            if (safeLastFragment2 != null && (parentActivity2 = safeLastFragment2.getParentActivity()) != null && (parentActivity2 instanceof LaunchActivity)) {
                                IconPickerController.setActive((LaunchActivity) parentActivity2, true);
                            }
                        }
                    }
                }
                ActivePacksUpdate activePacksUpdate = this.$result;
                ActivePacksUpdate activePacksUpdate2 = ActivePacksUpdate.INITIAL;
                if (activePacksUpdate == activePacksUpdate2 && !IconManager.initializationTimedOut) {
                    return Unit.INSTANCE;
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                BaseFragment safeLastFragment3 = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment3 != null) {
                    ActivePacksUpdate activePacksUpdate3 = this.$result;
                    Theme.reloadAllResources(safeLastFragment3.getParentActivity());
                    if (activePacksUpdate3 == activePacksUpdate2) {
                        Activity parentActivity3 = safeLastFragment3.getParentActivity();
                        LaunchActivity launchActivity = parentActivity3 instanceof LaunchActivity ? (LaunchActivity) parentActivity3 : null;
                        if (launchActivity != null) {
                            launchActivity.rebuildAllFragments(true);
                        }
                    } else {
                        INavigationLayout parentLayout = safeLastFragment3.getParentLayout();
                        if (parentLayout != null) {
                            parentLayout.rebuildFragments(0);
                        }
                    }
                }
                return Unit.INSTANCE;
            }
        }
    }

    public final void awaitInitialization() {
        try {
            if (initialPacksLoaded.await(1000L, TimeUnit.MILLISECONDS)) {
                return;
            }
            initializationTimedOut = true;
            FileLog.m990e("Icon packs were not loaded in 1000ms");
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    public final void setActiveCustomPack(String packId) {
        if (packId == null || ExteraConfig.getIconPacksLayout().contains(packId)) {
            return;
        }
        ExteraConfig.getIconPacksLayout().add(packId);
        ExteraConfig.getIconPacksHidden().remove(packId);
        ExteraConfig.saveIconPacksLayout();
        initialize(true);
    }

    public final IconPack findPackById(String packId) {
        return IconPackStorage.INSTANCE.findPackById(packId);
    }

    public final File bundlePackBlocking(String packId) {
        return IconPackStorage.INSTANCE.bundlePackBlocking(packId);
    }

    public final boolean saveIconPackMetadata(IconPack iconPack) {
        IconPack iconPack2 = (IconPack) BuildersKt.runBlockingK(mutationDispatcher, new IconManager$saveIconPackMetadata$savedPack$1(iconPack, null));
        if (iconPack2 == null) {
            return false;
        }
        BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getMain(), null, new C13271(iconPack2, null), 2, null);
        return true;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveIconPackMetadata$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$saveIconPackMetadata$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveIconPackMetadata$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1058:1\n363#2,7:1059\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveIconPackMetadata$1\n*L\n912#1:1059,7\n*E\n"})
    public static final class C13271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ IconPack $savedPack;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13271(IconPack iconPack, Continuation<? super C13271> continuation) {
            super(2, continuation);
            this.$savedPack = iconPack;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13271(this.$savedPack, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                CopyOnWriteArrayList copyOnWriteArrayList = IconManager.activePacks;
                IconPack iconPack = this.$savedPack;
                Iterator it = copyOnWriteArrayList.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    if (Intrinsics.areEqual(((IconPack) it.next()).getId(), iconPack.getId())) {
                        break;
                    }
                    i++;
                }
                if (i != -1) {
                    IconManager.activePacks.set(i, this.$savedPack);
                    IconManager.INSTANCE.rebuildOwnerMap();
                    IconManager.resolvedCache.clear();
                    IconManager.sourceCache.evictAll();
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$deletePack$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$deletePack$1", m873f = "IconManager.kt", m874i = {}, m875l = {928}, m876m = "invokeSuspend", m877n = {}, m878s = {})
    public static final class C13171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $packId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13171(String str, Continuation<? super C13171> continuation) {
            super(2, continuation);
            this.$packId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13171(this.$packId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                IconPackStorage.INSTANCE.deletePack(this.$packId);
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$packId, null);
                this.label = 1;
                if (BuildersKt.withContext(main, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$deletePack$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$deletePack$1$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $packId;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$packId = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$packId, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                if (ExteraConfig.getIconPacksLayout().contains(this.$packId) || ExteraConfig.getIconPacksHidden().contains(this.$packId)) {
                    ExteraConfig.getIconPacksLayout().remove(this.$packId);
                    ExteraConfig.getIconPacksHidden().remove(this.$packId);
                    ExteraConfig.saveIconPacksLayout();
                }
                IconManager.INSTANCE.initialize(true);
                return Unit.INSTANCE;
            }
        }
    }

    public final void deletePack(String packId) {
        BuildersKt__Builders_commonKt.launch$default(scope, mutationDispatcher, null, new C13171(packId, null), 2, null);
    }

    public final boolean isIconPack(MessageObject messageObject) {
        return isIconPack(ChatUtils.getInstance().getPathToMessage(messageObject), messageObject);
    }

    public final boolean isIconPack(String path, MessageObject messageObject) {
        return (messageObject != null ? messageObject.getDocumentName() : null) != null && path.length() > 0 && StringsKt.endsWith$default(path, ".icons", false, 2, (Object) null);
    }

    public final void handleIconPack(BaseFragment baseFragment, MessageObject messageObject) {
        handleIconPack(baseFragment, ChatUtils.getInstance().getPathToMessage(messageObject));
    }

    private final String iconPackErrorText(IconPackStorageError error) {
        int i;
        switch (WhenMappings.$EnumSwitchMapping$0[error.ordinal()]) {
            case 1:
                i = C2665R.string.IconPackErrorInvalidArchive;
                break;
            case 2:
                i = C2665R.string.IconPackErrorMissingMetadata;
                break;
            case 3:
                i = C2665R.string.IconPackErrorMetadataTooLarge;
                break;
            case 4:
                i = C2665R.string.IconPackErrorInvalidMetadata;
                break;
            case 5:
                i = C2665R.string.IconPackErrorTooManyFiles;
                break;
            case 6:
                i = C2665R.string.IconPackErrorArchiveTooLarge;
                break;
            case 7:
                i = C2665R.string.IconPackErrorFileTooLarge;
                break;
            case 8:
                i = C2665R.string.IconPackErrorCompressionRatioTooHigh;
                break;
            case 9:
                i = C2665R.string.IconPackErrorStorage;
                break;
            case 10:
                i = C2665R.string.UnknownError;
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                return null;
        }
        return LocaleController.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showIconPackError(BaseFragment baseFragment, IconPackStorageError error) {
        BulletinFactory.of(baseFragment).createSimpleBulletin(C2665R.raw.error, iconPackErrorText(error)).show();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$handleIconPack$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$handleIconPack$1", m873f = "IconManager.kt", m874i = {0, 1, 1}, m875l = {973, 974}, m876m = "invokeSuspend", m877n = {"file", "file", "packResult"}, m878s = {"L$0", "L$0", "L$1"})
    public static final class C13181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BaseFragment $baseFragment;
        final /* synthetic */ String $path;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13181(String str, BaseFragment baseFragment, Continuation<? super C13181> continuation) {
            super(2, continuation);
            this.$path = str;
            this.$baseFragment = baseFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C13181(this.$path, this.$baseFragment, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C13181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r3, r4, r7) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            File file;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                file = new File(this.$path);
                IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
                this.L$0 = file;
                this.label = 1;
                obj = iconPackStorage.parsePackFromZip(file, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            file = (File) this.L$0;
            ResultKt.throwOnFailure(obj);
            IconPackStorageResult iconPackStorageResult = (IconPackStorageResult) obj;
            MainCoroutineDispatcher main = Dispatchers.getMain();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(iconPackStorageResult, this.$baseFragment, file, null);
            this.L$0 = SpillingKt.nullOutSpilledVariable(file);
            this.L$1 = SpillingKt.nullOutSpilledVariable(iconPackStorageResult);
            this.label = 2;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$handleIconPack$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m872c = "com.exteragram.messenger.icons.IconManager$handleIconPack$1$1", m873f = "IconManager.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ BaseFragment $baseFragment;
            final /* synthetic */ File $file;
            final /* synthetic */ IconPackStorageResult<IconPack> $packResult;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(IconPackStorageResult<IconPack> iconPackStorageResult, BaseFragment baseFragment, File file, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$packResult = iconPackStorageResult;
                this.$baseFragment = baseFragment;
                this.$file = file;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$packResult, this.$baseFragment, this.$file, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                IconPackStorageResult<IconPack> iconPackStorageResult = this.$packResult;
                if (iconPackStorageResult instanceof IconPackStorageResult.Success) {
                    final IconPack iconPack = (IconPack) ((IconPackStorageResult.Success) iconPackStorageResult).getValue();
                    Activity parentActivity = this.$baseFragment.getParentActivity();
                    final File file = this.$file;
                    final BaseFragment baseFragment = this.$baseFragment;
                    this.$baseFragment.showDialog(new InstallIconPackBottomSheet(parentActivity, iconPack, new InstallIconPackBottomSheet.InstallDelegate() { // from class: com.exteragram.messenger.icons.IconManager$handleIconPack$1$1$$ExternalSyntheticLambda0
                        @Override // com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet.InstallDelegate
                        public final void onInstall(boolean z, boolean z2) {
                            BuildersKt__Builders_commonKt.launch$default(IconManager.scope, null, null, new IconManager$handleIconPack$1$1$bottomSheet$1$1(file, baseFragment, z2, iconPack, z, null), 3, null);
                        }
                    }));
                } else if (iconPackStorageResult instanceof IconPackStorageResult.Failure) {
                    IconManager.INSTANCE.showIconPackError(this.$baseFragment, ((IconPackStorageResult.Failure) iconPackStorageResult).getError());
                } else {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                    return null;
                }
                return Unit.INSTANCE;
            }
        }
    }

    public final void handleIconPack(BaseFragment baseFragment, String path) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C13181(path, baseFragment, null), 3, null);
    }

    public final boolean onActivityResult(int requestCode, int resultCode, Intent data) {
        SparseArray<Function1<Uri, Unit>> sparseArray = resultCallbacks;
        Function1<Uri, Unit> function1 = sparseArray.get(requestCode);
        if (function1 == null) {
            return false;
        }
        sparseArray.remove(requestCode);
        function1.invoke(data != null ? data.getData() : null);
        return true;
    }

    public final void startIconPicker(Activity activity, boolean selectFromFiles, Function1<? super Uri, Unit> callback) {
        Intent intentCreateIntent;
        resultCallbacks.put(43, callback);
        if (ActivityResultContracts$PickVisualMedia.INSTANCE.isPhotoPickerAvailable(activity) && !selectFromFiles) {
            intentCreateIntent = new ActivityResultContracts$PickVisualMedia().createIntent((Context) activity, PickVisualMediaRequestKt.PickVisualMediaRequest(ActivityResultContracts$PickVisualMedia.ImageOnly.INSTANCE));
        } else {
            Intent intent = new Intent(selectFromFiles ? "android.intent.action.OPEN_DOCUMENT" : "android.intent.action.GET_CONTENT");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "image/svg+xml"});
            if (selectFromFiles) {
                intent.addCategory("android.intent.category.OPENABLE");
            }
            intentCreateIntent = intent;
        }
        activity.startActivityForResult(intentCreateIntent, 43);
    }

    public static /* synthetic */ void showReplaceAlert$default(IconManager iconManager, Context context, int i, IconPack iconPack, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            iconPack = null;
        }
        iconManager.showReplaceAlert(context, i, iconPack);
    }

    @JvmOverloads
    public final void showReplaceAlert(Context context, int resId, IconPack iconPack) {
        if (iconPack == null) {
            Object obj = null;
            if (ExteraConfig.getEditingIconPackId() != null) {
                Iterator<T> it = activePacks.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Intrinsics.areEqual(((IconPack) next).getId(), ExteraConfig.getEditingIconPackId())) {
                        obj = next;
                        break;
                    }
                }
                iconPack = (IconPack) obj;
            } else {
                Iterator<T> it2 = activePacks.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next2 = it2.next();
                    if (!((IconPack) next2).isBase()) {
                        obj = next2;
                        break;
                    }
                }
                iconPack = (IconPack) obj;
            }
            if (iconPack == null) {
                return;
            }
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.showDialog(new ReplaceIconBottomSheet(context, resId, iconPack));
    }

    public final boolean isBasePackOnly(IconPackType basePackType) {
        if (ExteraConfig.getIconPack() != basePackType) {
            return false;
        }
        CopyOnWriteArrayList<IconPack> copyOnWriteArrayList = activePacks;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.isEmpty()) {
            return true;
        }
        Iterator<T> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (!((IconPack) it.next()).isBase()) {
                return false;
            }
        }
        return true;
    }
}
