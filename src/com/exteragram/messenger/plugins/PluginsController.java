package com.exteragram.messenger.plugins;

import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.catalog.PluginRepositoryLinks;
import com.exteragram.messenger.plugins.hooks.EventHookRecord;
import com.exteragram.messenger.plugins.hooks.HookRecord;
import com.exteragram.messenger.plugins.hooks.MenuItemRecord;
import com.exteragram.messenger.plugins.hooks.PluginsHooks;
import com.exteragram.messenger.plugins.hooks.XposedHookRecord;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.plugins.pip.PipController;
import com.exteragram.messenger.plugins.ui.PluginsActivity;
import com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet;
import com.exteragram.messenger.plugins.ui.components.SafeModeBottomSheet;
import com.exteragram.messenger.plugins.utils.MenuContextBuilder;
import com.exteragram.messenger.plugins.utils.NativeCrashHandler;
import com.exteragram.messenger.plugins.utils.PluginsWatchdog;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.sun.jna.Callback;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.SimpliFiles;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000´\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 Ë\u00012\u00020\u0001:\u000eÅ\u0001Æ\u0001Ç\u0001È\u0001É\u0001Ê\u0001Ë\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010@\u001a\u0004\u0018\u00010A2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u0006\u0010C\u001a\u00020DJ\u0010\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010,J\u000e\u0010C\u001a\u00020D2\u0006\u0010F\u001a\u00020%J\u0018\u0010C\u001a\u00020D2\u0006\u0010F\u001a\u00020%2\b\u0010E\u001a\u0004\u0018\u00010,J\u0006\u0010G\u001a\u00020DJ\u0010\u0010H\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010,J\u0006\u0010I\u001a\u00020DJ\u000e\u0010I\u001a\u00020D2\u0006\u0010F\u001a\u00020%J\u0006\u0010J\u001a\u00020%J\u0017\u0010K\u001a\u00020%2\b\u0010B\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\bLJ\u0017\u0010K\u001a\u00020%2\b\u0010M\u001a\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\bLJ\u001c\u0010N\u001a\u00020\u00172\b\u0010O\u001a\u0004\u0018\u00010\u00062\b\u0010P\u001a\u0004\u0018\u00010\u0019H\u0002J\u0012\u0010Q\u001a\u00020D2\b\u0010O\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010R\u001a\u00020\u00172\b\u0010S\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010T\u001a\u00020DH\u0002J\u0014\u0010U\u001a\u0004\u0018\u00010\u00062\b\u0010O\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010V\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\b\u0010B\u001a\u0004\u0018\u00010\u0006J(\u0010W\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u0006\u0010X\u001a\u00020%2\u000e\u0010Y\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010ZJ \u0010[\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u000e\u0010Y\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010ZJ\u0010\u0010\\\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u0012\u0010]\u001a\u0004\u0018\u00010\u00062\b\u0010^\u001a\u0004\u0018\u00010\u0006J(\u0010_\u001a\u00020D2\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010b\u001a\u0004\u0018\u00010c2\n\b\u0002\u0010d\u001a\u0004\u0018\u00010\u0006H\u0007J\u0016\u0010e\u001a\u00020D2\u0006\u0010`\u001a\u00020a2\u0006\u0010f\u001a\u00020\u0006J\u0016\u0010g\u001a\u00020D2\u0006\u0010`\u001a\u00020a2\u0006\u0010h\u001a\u00020\u0006J&\u0010_\u001a\u00020D2\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010d\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010i\u001a\u00020%H\u0007J\u001c\u0010_\u001a\u00020D2\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010j\u001a\u0004\u0018\u00010kH\u0002J\u0006\u0010l\u001a\u00020DJ\u0010\u0010l\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u0010\u0010m\u001a\u00020%2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u0010\u0010n\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u001c\u0010o\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010p\u001a\u00020%H\u0007J\u001c\u0010q\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u0003\u0018\u00010\u001f2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u0010\u0010r\u001a\u00020%2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\"\u0010s\u001a\u00020%2\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010t\u001a\u0004\u0018\u00010\u00062\u0006\u0010u\u001a\u00020%J&\u0010v\u001a\u0004\u0018\u00010\u00062\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010t\u001a\u0004\u0018\u00010\u00062\b\u0010u\u001a\u0004\u0018\u00010\u0006J\"\u0010w\u001a\u00020\u00172\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010t\u001a\u0004\u0018\u00010\u00062\u0006\u0010u\u001a\u00020\u0017J$\u0010x\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010t\u001a\u0004\u0018\u00010\u00062\b\u0010y\u001a\u0004\u0018\u00010#J.\u0010z\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010t\u001a\u0004\u0018\u00010\u00062\b\u0010y\u001a\u0004\u0018\u00010#2\b\u0010{\u001a\u0004\u0018\u00010|J$\u0010}\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\b\u0010~\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u007f\u001a\u00020\u0006H\u0002J,\u0010\u0080\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u0007\u0010\u0081\u0001\u001a\u00020\u00062\u0007\u0010\u0082\u0001\u001a\u00020%2\u0007\u0010\u0083\u0001\u001a\u00020\u0017J1\u0010\u0084\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u0014\u0010\u0085\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020%0\u0086\u00012\u0006\u0010\u007f\u001a\u00020\u0006H\u0002J\u001a\u0010\u0087\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u0007\u0010\u0081\u0001\u001a\u00020\u0006J\"\u0010\u0088\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u000f\u0010\u0089\u0001\u001a\n\u0018\u00010\u008a\u0001R\u00030\u008b\u0001J:\u0010\u008c\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062'\u0010\u008d\u0001\u001a\"\u0012\n\u0012\b0\u008a\u0001R\u00030\u008b\u0001\u0018\u00010+j\u0010\u0012\n\u0012\b0\u008a\u0001R\u00030\u008b\u0001\u0018\u0001`-J6\u0010\u008e\u0001\u001a\u00020%2\u0007\u0010\u008f\u0001\u001a\u00020\u00062\u001e\u0010\u0090\u0001\u001a\u0010\u0012\u000b\b\u0001\u0012\u0007\u0012\u0002\b\u00030\u0092\u00010\u0091\u0001\"\u0007\u0012\u0002\b\u00030\u0092\u0001¢\u0006\u0003\u0010\u0093\u0001J\"\u0010\u0094\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u00062\u000f\u0010\u0089\u0001\u001a\n\u0018\u00010\u008a\u0001R\u00030\u008b\u0001J\u0011\u0010\u0095\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u0006J\u001e\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00062\b\u0010B\u001a\u0004\u0018\u00010\u00062\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010|J\u001c\u0010\u0098\u0001\u001a\u00020%2\b\u0010B\u001a\u0004\u0018\u00010\u00062\t\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0006J\u0011\u0010\u009a\u0001\u001a\u00020D2\b\u0010B\u001a\u0004\u0018\u00010\u0006J$\u0010\u009b\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\t\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u00062\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u0001J/\u0010\u009b\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\t\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u00062\u0015\u0010\u009f\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020#\u0018\u00010\u001fJ\u0007\u0010 \u0001\u001a\u00020DJ\u0012\u0010¡\u0001\u001a\u00020D2\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u0006J\u001a\u0010£\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\t\u0010¤\u0001\u001a\u0004\u0018\u00010\u0006H\u0002J\t\u0010¥\u0001\u001a\u00020DH\u0002J\t\u0010¦\u0001\u001a\u00020DH\u0002J\t\u0010§\u0001\u001a\u00020%H\u0002J\u0011\u0010¨\u0001\u001a\u00020D2\u0006\u0010B\u001a\u00020\u0006H\u0002J\u0011\u0010©\u0001\u001a\u00020D2\u0006\u0010B\u001a\u00020\u0006H\u0002J\t\u0010ª\u0001\u001a\u00020DH\u0002J?\u0010«\u0001\u001a\u0005\u0018\u0001H¬\u0001\"\u0005\b\u0000\u0010¬\u00012\u0007\u0010\u0081\u0001\u001a\u00020\u00062\n\u0010\u00ad\u0001\u001a\u0005\u0018\u0001H¬\u00012\u000f\u0010®\u0001\u001a\n\u0012\u0005\u0012\u0003H¬\u00010¯\u0001H\u0002¢\u0006\u0003\u0010°\u0001J(\u0010±\u0001\u001a\u0005\u0018\u00010²\u00012\u0007\u0010³\u0001\u001a\u00020\u00062\u0007\u0010´\u0001\u001a\u00020\u00172\b\u0010µ\u0001\u001a\u00030²\u0001H\u0016J4\u0010¶\u0001\u001a\u00030·\u00012\u0007\u0010³\u0001\u001a\u00020\u00062\u0007\u0010´\u0001\u001a\u00020\u00172\n\u0010¸\u0001\u001a\u0005\u0018\u00010²\u00012\n\u0010¹\u0001\u001a\u0005\u0018\u00010º\u0001H\u0016J(\u0010»\u0001\u001a\u0005\u0018\u00010¼\u00012\u0007\u0010½\u0001\u001a\u00020\u00062\u0007\u0010´\u0001\u001a\u00020\u00172\b\u0010¾\u0001\u001a\u00030¼\u0001H\u0016J(\u0010¿\u0001\u001a\u0005\u0018\u00010À\u00012\u0007\u0010Á\u0001\u001a\u00020\u00062\u0007\u0010´\u0001\u001a\u00020\u00172\b\u0010Â\u0001\u001a\u00030À\u0001H\u0016J\u001e\u0010Ã\u0001\u001a\u0005\u0018\u00010Ä\u00012\u0007\u0010´\u0001\u001a\u00020\u00172\u0007\u0010j\u001a\u00030Ä\u0001H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR#\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00110\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00190\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u000b0\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\u000b0\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010*\u001a\u0012\u0012\u0004\u0012\u00020,0+j\b\u0012\u0004\u0012\u00020,`-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010/\u001a\u000200X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u00105\u001a\u000206X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u0011\u0010;\u001a\u00020<¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u000e\u0010?\u001a\u00020,X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Ì\u0001"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController;", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;", "<init>", "()V", PluginsConstants.PLUGINS, "Ljava/util/concurrent/ConcurrentHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/Plugin;", "getPlugins", "()Ljava/util/concurrent/ConcurrentHashMap;", "settings", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "getSettings", "menuItemsById", "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;", "menuItemsByMenuType", "Ljava/util/concurrent/CopyOnWriteArrayList;", "hooks", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/hooks/HookRecord;", "interestedPluginsCache", "fileIconIdsByExtension", _UrlKt.FRAGMENT_ENCODE_SET, "fileIconDrawablesById", "Landroid/graphics/drawable/Drawable;", "nextFileIconId", "Ljava/util/concurrent/atomic/AtomicInteger;", "substringMatchEventHooksCache", "Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;", "exactMatchEventHooksCache", _UrlKt.FRAGMENT_ENCODE_SET, "hookedMembersCache", "Ljava/lang/reflect/Member;", "hooksCacheLock", _UrlKt.FRAGMENT_ENCODE_SET, "hooksCacheDirty", _UrlKt.FRAGMENT_ENCODE_SET, "initialized", "stopping", "pendingInitialization", "Lcom/exteragram/messenger/plugins/PluginsController$PendingInitialization;", "shutdownCallbacks", "Ljava/util/ArrayList;", "Ljava/lang/Runnable;", "Lkotlin/collections/ArrayList;", "lifecycleGeneration", "pluginsDir", "Ljava/io/File;", "getPluginsDir", "()Ljava/io/File;", "setPluginsDir", "(Ljava/io/File;)V", "preferences", "Landroid/content/SharedPreferences;", "getPreferences", "()Landroid/content/SharedPreferences;", "setPreferences", "(Landroid/content/SharedPreferences;)V", "watchdog", "Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;", "getWatchdog", "()Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;", "updateNotificationRunnable", "getPluginEngine", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "pluginId", "init", _UrlKt.FRAGMENT_ENCODE_SET, "onDone", "startWithSafeMode", "checkDevServers", "shutdown", "restart", "isInitialized", "isPluginActive", "isPluginActive$TMessagesProj", "plugin", "registerFileIconInternal", "extension", "drawable", "unregisterFileIconInternal", "getFileIconIdInternal", "fileName", "clearFileIconsInternal", "normalizeFileExtension", "getPluginSettingsList", "setPluginEnabled", "enabled", Callback.METHOD_NAME, "Lorg/telegram/messenger/Utilities$Callback;", "deletePlugin", "cleanupPlugin", "getPluginPath", "id", "showInstallDialog", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "filePath", "openRepositoryLink", "username", "openGitRepositoryLink", "url", "trusted", PluginsConstants.PARAMS, "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "loadPluginSettings", "hasPluginSettings", "invalidatePluginSettings", "clearPluginSettingsPreferences", "clearEnabledState", "getPluginSettingsPreferences", "hasPluginSettingsPreferences", "getPluginSettingBoolean", PluginsConstants.Settings.KEY, "defaultValue", "getPluginSettingString", "getPluginSettingInt", "setPluginSetting", "value", "setPluginSettingAndTriggerOnChange", "onChangeCallback", "Lcom/chaquo/python/PyObject;", "addHook", "newHook", "logMessage", "addEventHook", "hookName", "matchSubstring", PluginsConstants.MenuItemProperties.PRIORITY, "removeHook", "filter", "Lkotlin/Function1;", "removeEventHook", "addXposedHook", "unhook", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "addXposedHooks", "unhooks", "hasXposedHook", "methodName", "declaringClasses", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Class;", "(Ljava/lang/String;[Ljava/lang/Class;)Z", "removeXposedHook", "removeHooksByPluginId", "addMenuItem", "pyMenuItemData", "removeMenuItem", "itemId", "removeMenuItemsByPluginId", "getMenuItemsForLocation", "menuType", "builder", "Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;", "contextData", "notifyPluginsChanged", "executeOnAppEvent", "eventType", "getInterestedPluginIds", "eventName", "rebuildHooksCacheIfNeeded", "ensurePreferences", "isOnPluginsQueueThread", "notifyPluginSettingsRegistered", "notifyPluginSettingsUnregistered", "notifyMenuItemsUpdated", "executeGenericHook", "T", "initialObject", "caller", "Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;", "(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;", "executePreRequestHook", "Lorg/telegram/tgnet/TLObject;", "requestName", "account", PluginsConstants.REQUEST, "executePostRequestHook", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;", PluginsConstants.RESPONSE, "error", "Lorg/telegram/tgnet/TLRPC$TL_error;", "executeUpdateHook", "Lorg/telegram/tgnet/TLRPC$Update;", "updateName", PluginsConstants.UPDATE, "executeUpdatesHook", "Lorg/telegram/tgnet/TLRPC$Updates;", "containerName", PluginsConstants.UPDATES, "executeSendMessageHook", "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;", "PendingInitialization", "EngineHookCaller", "HookResult", "PluginValidationResult", "PluginsEngine", "SingletonHolder", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsController.kt\ncom/exteragram/messenger/plugins/PluginsController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1453:1\n1#2:1454\n41#3,12:1455\n41#3,12:1467\n1915#4,2:1479\n1807#4,2:1481\n1809#4:1485\n1915#4,2:1486\n1586#4:1488\n1661#4,3:1489\n1068#4:1492\n13213#5,2:1483\n*S KotlinDebug\n*F\n+ 1 PluginsController.kt\ncom/exteragram/messenger/plugins/PluginsController\n*L\n194#1:1455,12\n578#1:1467,12\n702#1:1479,2\n743#1:1481,2\n743#1:1485\n923#1:1486,2\n276#1:1488\n276#1:1489,3\n268#1:1492\n743#1:1483,2\n*E\n"})
public final class PluginsController implements PluginsHooks {
    public static final int PLUGIN_FILE_ICON_ID_START = 101;
    public static final int PLUGIN_FILE_ICON_NONE = -1;
    public static final String PREF_PLUGIN_ENABLED_KEY_PREFIX = "plugin_enabled_";
    private volatile Map<String, ? extends List<EventHookRecord>> exactMatchEventHooksCache;
    private final ConcurrentHashMap<Integer, Drawable> fileIconDrawablesById;
    private final ConcurrentHashMap<String, Integer> fileIconIdsByExtension;
    private volatile Map<String, ? extends List<? extends Member>> hookedMembersCache;
    private final ConcurrentHashMap<String, Set<HookRecord>> hooks;
    private volatile boolean hooksCacheDirty;
    private final Object hooksCacheLock;
    private volatile boolean initialized;
    private final ConcurrentHashMap<String, List<String>> interestedPluginsCache;
    private final AtomicInteger lifecycleGeneration;
    private final ConcurrentHashMap<String, MenuItemRecord> menuItemsById;
    private final ConcurrentHashMap<String, CopyOnWriteArrayList<MenuItemRecord>> menuItemsByMenuType;
    private final AtomicInteger nextFileIconId;
    private PendingInitialization pendingInitialization;
    private final ConcurrentHashMap<String, Plugin> plugins;
    private File pluginsDir;
    private SharedPreferences preferences;
    private final ConcurrentHashMap<String, List<SettingItem>> settings;
    private final ArrayList<Runnable> shutdownCallbacks;
    private volatile boolean stopping;
    private volatile List<EventHookRecord> substringMatchEventHooksCache;
    private final Runnable updateNotificationRunnable;
    private final PluginsWatchdog watchdog;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<String, PluginsEngine> enginesMap = new ConcurrentHashMap<>(MapsKt.mapOf(TuplesKt.to(PluginsConstants.PYTHON, new PythonPluginsEngine())));

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bâ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J-\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00018\u00002\u0006\u0010\b\u001a\u00020\tH&¢\u0006\u0002\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "call", "Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "engine", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "obj", "pluginId", _UrlKt.FRAGMENT_ENCODE_SET, "(Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Ljava/lang/Object;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public interface EngineHookCaller<T> {
        HookResult<T> call(PluginsEngine engine, T obj, String pluginId);
    }

    public /* synthetic */ PluginsController(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final void applyArtOpts() {
        INSTANCE.applyArtOpts();
    }

    @JvmStatic
    public static final void clearFileIcons() {
        INSTANCE.clearFileIcons();
    }

    @JvmStatic
    public static final ConcurrentHashMap<String, PluginsEngine> getEngines() {
        return INSTANCE.getEngines();
    }

    @JvmStatic
    public static final int getFileIconId(String str) {
        return INSTANCE.getFileIconId(str);
    }

    @JvmStatic
    public static final PluginsController getInstance() {
        return INSTANCE.getInstance();
    }

    @JvmStatic
    public static final PluginsEngine getPluginEngine(File file) {
        return INSTANCE.getPluginEngine(file);
    }

    @JvmStatic
    public static final Drawable getPluginFileIconDrawable(int i) {
        return INSTANCE.getPluginFileIconDrawable(i);
    }

    @JvmStatic
    public static final boolean isPlugin(File file, MessageObject messageObject) {
        return INSTANCE.isPlugin(file, messageObject);
    }

    @JvmStatic
    public static final boolean isPlugin(MessageObject messageObject) {
        return INSTANCE.isPlugin(messageObject);
    }

    @JvmStatic
    public static final boolean isPluginEngineAvailable() {
        return INSTANCE.isPluginEngineAvailable();
    }

    @JvmStatic
    public static final boolean isPluginEngineSupported() {
        return INSTANCE.isPluginEngineSupported();
    }

    @JvmStatic
    public static final boolean isPluginFileIcon(int i) {
        return INSTANCE.isPluginFileIcon(i);
    }

    @JvmStatic
    public static final boolean isPluginPinned(String str) {
        return INSTANCE.isPluginPinned(str);
    }

    @JvmStatic
    public static final void openPluginSettings(String str) {
        INSTANCE.openPluginSettings(str);
    }

    @JvmStatic
    public static final void openPluginSettings(String str, String str2) {
        INSTANCE.openPluginSettings(str, str2);
    }

    @JvmStatic
    public static final int registerFileIcon(String str, Drawable drawable) {
        return INSTANCE.registerFileIcon(str, drawable);
    }

    @JvmStatic
    public static final void runOnPluginsQueue(Runnable runnable) {
        INSTANCE.runOnPluginsQueue(runnable);
    }

    @JvmStatic
    public static final void setPluginPinned(String str, boolean z) {
        INSTANCE.setPluginPinned(str, z);
    }

    @JvmStatic
    public static final void unregisterFileIcon(String str) {
        INSTANCE.unregisterFileIcon(str);
    }

    @JvmOverloads
    public final void clearPluginSettingsPreferences(String str) {
        clearPluginSettingsPreferences$default(this, str, false, 2, null);
    }

    @JvmOverloads
    public final void showInstallDialog(BaseFragment baseFragment, String str) {
        showInstallDialog$default(this, baseFragment, str, false, 4, (Object) null);
    }

    @JvmOverloads
    public final void showInstallDialog(BaseFragment baseFragment, MessageObject messageObject) {
        showInstallDialog$default(this, baseFragment, messageObject, (String) null, 4, (Object) null);
    }

    private PluginsController() {
        this.plugins = new ConcurrentHashMap<>();
        this.settings = new ConcurrentHashMap<>();
        this.menuItemsById = new ConcurrentHashMap<>();
        this.menuItemsByMenuType = new ConcurrentHashMap<>();
        this.hooks = new ConcurrentHashMap<>();
        this.interestedPluginsCache = new ConcurrentHashMap<>();
        this.fileIconIdsByExtension = new ConcurrentHashMap<>();
        this.fileIconDrawablesById = new ConcurrentHashMap<>();
        this.nextFileIconId = new AtomicInteger(101);
        this.substringMatchEventHooksCache = CollectionsKt.emptyList();
        this.exactMatchEventHooksCache = MapsKt.emptyMap();
        this.hookedMembersCache = MapsKt.emptyMap();
        this.hooksCacheLock = new Object();
        this.hooksCacheDirty = true;
        this.shutdownCallbacks = new ArrayList<>();
        this.lifecycleGeneration = new AtomicInteger();
        this.pluginsDir = new File(ApplicationLoader.getFilesDirFixed(), PluginsConstants.PLUGINS);
        this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("plugin_settings", 0);
        this.watchdog = new PluginsWatchdog(this);
        this.updateNotificationRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$TRI271OAbh24WtM0hRmdWUfkDcA();
            }
        };
    }

    public final ConcurrentHashMap<String, Plugin> getPlugins() {
        return this.plugins;
    }

    public final ConcurrentHashMap<String, List<SettingItem>> getSettings() {
        return this.settings;
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R!\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$PendingInitialization;", _UrlKt.FRAGMENT_ENCODE_SET, "safeMode", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Z)V", "getSafeMode", "()Z", "setSafeMode", "callbacks", "Ljava/util/ArrayList;", "Ljava/lang/Runnable;", "Lkotlin/collections/ArrayList;", "getCallbacks", "()Ljava/util/ArrayList;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PendingInitialization {
        private final ArrayList<Runnable> callbacks = new ArrayList<>();
        private boolean safeMode;

        public PendingInitialization(boolean z) {
            this.safeMode = z;
        }

        public final boolean getSafeMode() {
            return this.safeMode;
        }

        public final void setSafeMode(boolean z) {
            this.safeMode = z;
        }

        public final ArrayList<Runnable> getCallbacks() {
            return this.callbacks;
        }
    }

    public final File getPluginsDir() {
        return this.pluginsDir;
    }

    public final void setPluginsDir(File file) {
        this.pluginsDir = file;
    }

    public final SharedPreferences getPreferences() {
        return this.preferences;
    }

    public final void setPreferences(SharedPreferences sharedPreferences) {
        this.preferences = sharedPreferences;
    }

    public final PluginsWatchdog getWatchdog() {
        return this.watchdog;
    }

    public static void $r8$lambda$TRI271OAbh24WtM0hRmdWUfkDcA() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginsUpdated, new Object[0]);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginMenuItemsUpdated, new Object[0]);
    }

    public final PluginsEngine getPluginEngine(String pluginId) {
        Plugin plugin;
        if (pluginId == null || pluginId.length() == 0 || (plugin = this.plugins.get(pluginId)) == null) {
            return null;
        }
        PluginsEngine cachedEngine = plugin.getCachedEngine();
        if (cachedEngine != null) {
            return cachedEngine;
        }
        String engine = plugin.getEngine();
        if (engine == null) {
            return null;
        }
        PluginsEngine pluginsEngine = INSTANCE.getEngines().get(engine);
        if (pluginsEngine != null) {
            plugin.setCachedEngine(pluginsEngine);
        }
        return pluginsEngine;
    }

    public final void init() {
        init(false, null);
    }

    public final void init(Runnable onDone) {
        init(false, onDone);
    }

    public final void init(boolean startWithSafeMode) {
        init(startWithSafeMode, null);
    }

    public final void init(boolean startWithSafeMode, final Runnable onDone) {
        PluginsController pluginsController;
        Throwable th;
        if (!INSTANCE.isPluginEngineSupported() || !ExteraConfig.getPluginsEngine()) {
            this.initialized = false;
            if (onDone != null) {
                onDone.run();
                return;
            }
            return;
        }
        synchronized (this) {
            try {
                if (this.stopping) {
                    try {
                        PendingInitialization pendingInitialization = this.pendingInitialization;
                        if (pendingInitialization == null) {
                            pendingInitialization = new PendingInitialization(startWithSafeMode);
                            this.pendingInitialization = pendingInitialization;
                        }
                        pendingInitialization.setSafeMode(startWithSafeMode);
                        if (onDone != null) {
                            pendingInitialization.getCallbacks().add(onDone);
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        pluginsController = this;
                    }
                } else {
                    final int iIncrementAndGet = this.lifecycleGeneration.incrementAndGet();
                    NativeCrashHandler.checkAndHandleNativeCrash();
                    this.watchdog.start();
                    ensurePreferences();
                    try {
                        boolean z = this.preferences.getBoolean("had_crash", false);
                        String string = this.preferences.getString("crashed_plugin_id", null);
                        boolean z2 = (string != null && Intrinsics.areEqual(string, "manual!")) || startWithSafeMode;
                        this.preferences.edit().remove("had_crash").remove("crashed_plugin_id").apply();
                        if (z) {
                            if (string != null && !z2) {
                                SharedPreferences.Editor editorEdit = this.preferences.edit();
                                editorEdit.putBoolean(PREF_PLUGIN_ENABLED_KEY_PREFIX.concat(string), false);
                                editorEdit.apply();
                            } else {
                                SharedPreferences.Editor editor = ExteraConfig.getEditor();
                                ExteraConfig.setPluginsSafeMode(true);
                                Unit unit = Unit.INSTANCE;
                                editor.putBoolean("pluginsSafeMode", true).apply();
                            }
                            if (!z2) {
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        PluginsController.m3018$r8$lambda$m47DfybowrIjf8L204ueMnoLIo();
                                    }
                                }, 800L);
                            }
                        } else {
                            SharedPreferences.Editor editor2 = ExteraConfig.getEditor();
                            ExteraConfig.setPluginsSafeMode(startWithSafeMode);
                            Unit unit2 = Unit.INSTANCE;
                            editor2.putBoolean("pluginsSafeMode", startWithSafeMode).apply();
                        }
                    } catch (Exception unused) {
                    }
                    File file = new File(ApplicationLoader.getFilesDirFixed(), PluginsConstants.PLUGINS);
                    this.pluginsDir = file;
                    if (!file.exists()) {
                        SimpliFiles.directory(this.pluginsDir).create();
                    }
                    Companion companion = INSTANCE;
                    final List list = CollectionsKt.toList(companion.getEngines().values());
                    final AtomicInteger atomicInteger = new AtomicInteger(0);
                    final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            PluginsController.m3032$r8$lambda$oboYgFhaoQHOhHVZ7TIeqdaoY8(atomicInteger, list, this, iIncrementAndGet, onDone);
                        }
                    };
                    companion.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            PluginsController.$r8$lambda$fxY9C9RYEEsRtaZdSPOqo7BowUQ(list, this, iIncrementAndGet, runnable);
                        }
                    });
                    return;
                }
            } catch (Throwable th3) {
                pluginsController = this;
                th = th3;
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-m47DfybowrIjf8L204ueMnoLIo, reason: not valid java name */
    public static void m3018$r8$lambda$m47DfybowrIjf8L204ueMnoLIo() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            new SafeModeBottomSheet(lastFragment).show();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$oboYgFhaoQHOhH-VZ7TIeqdaoY8, reason: not valid java name */
    public static void m3032$r8$lambda$oboYgFhaoQHOhHVZ7TIeqdaoY8(AtomicInteger atomicInteger, List list, PluginsController pluginsController, int i, Runnable runnable) {
        if (atomicInteger.incrementAndGet() == list.size()) {
            if (pluginsController.lifecycleGeneration.get() == i && !pluginsController.stopping) {
                pluginsController.initialized = true;
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void $r8$lambda$fxY9C9RYEEsRtaZdSPOqo7BowUQ(List list, PluginsController pluginsController, int i, Runnable runnable) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PluginsEngine pluginsEngine = (PluginsEngine) it.next();
            if (pluginsController.lifecycleGeneration.get() != i || pluginsController.stopping) {
                runnable.run();
            } else {
                try {
                    pluginsEngine.init(runnable);
                } catch (Throwable th) {
                    FileLog.m1039e("Failed to initialize plugin engine", th);
                    runnable.run();
                }
            }
        }
    }

    public final void checkDevServers() {
        Iterator<PluginsEngine> it = INSTANCE.getEngines().values().iterator();
        while (it.hasNext()) {
            it.next().checkDevServer();
        }
    }

    public final void shutdown(Runnable onDone) {
        synchronized (this) {
            if (onDone != null) {
                try {
                    this.shutdownCallbacks.add(onDone);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.stopping) {
                return;
            }
            this.stopping = true;
            this.lifecycleGeneration.incrementAndGet();
            INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.$r8$lambda$Ars2UaVW7mQAu_5S45KjSg_Bkfs(this.f$0);
                }
            });
        }
    }

    public static void $r8$lambda$Ars2UaVW7mQAu_5S45KjSg_Bkfs(PluginsController pluginsController) {
        List<PluginsEngine> listSortedWith = CollectionsKt.sortedWith(CollectionsKt.toList(INSTANCE.getEngines().values()), new Comparator() { // from class: com.exteragram.messenger.plugins.PluginsController$shutdown$lambda$23$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Boolean.valueOf(((PluginsController.PluginsEngine) t) instanceof PythonPluginsEngine), Boolean.valueOf(((PluginsController.PluginsEngine) t2) instanceof PythonPluginsEngine));
            }
        });
        for (PluginsEngine pluginsEngine : listSortedWith) {
            if (pluginsEngine instanceof PythonPluginsEngine) {
                ((PythonPluginsEngine) pluginsEngine).stopPluginTasks$TMessagesProj();
            }
        }
        shutdown$lambda$23$shutdownNext(listSortedWith, pluginsController, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void shutdown$lambda$23$shutdownNext(final List<? extends PluginsEngine> list, final PluginsController pluginsController, final int i) {
        Pair pair;
        Object objM3608constructorimpl;
        Object objM3608constructorimpl2;
        if (i == list.size()) {
            Set setPlus = SetsKt.plus(SetsKt.plus((Set) pluginsController.plugins.keySet(), (Iterable) pluginsController.hooks.keySet()), (Iterable) pluginsController.settings.keySet());
            Collection<MenuItemRecord> collectionValues = pluginsController.menuItemsById.values();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.add(((MenuItemRecord) it.next()).getPluginId());
            }
            for (String str : CollectionsKt.toSet(SetsKt.plus(setPlus, (Iterable) arrayList))) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    pluginsController.cleanupPlugin(str);
                    objM3608constructorimpl2 = Result.m3608constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3608constructorimpl2 = Result.m3608constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl2);
                if (thM3611exceptionOrNullimpl != null) {
                    FileLog.m1039e("Failed to clean up plugin " + str, thM3611exceptionOrNullimpl);
                }
            }
            pluginsController.watchdog.stop();
            pluginsController.plugins.clear();
            pluginsController.settings.clear();
            pluginsController.interestedPluginsCache.clear();
            pluginsController.initialized = false;
            synchronized (pluginsController) {
                pluginsController.stopping = false;
                ArrayList arrayList2 = new ArrayList(pluginsController.shutdownCallbacks);
                pluginsController.shutdownCallbacks.clear();
                PendingInitialization pendingInitialization = pluginsController.pendingInitialization;
                pluginsController.pendingInitialization = null;
                pair = TuplesKt.to(arrayList2, pendingInitialization);
            }
            ArrayList<Runnable> arrayList3 = (ArrayList) pair.component1();
            final PendingInitialization pendingInitialization2 = (PendingInitialization) pair.component2();
            FileLog.m1037d("Plugin system shut down.");
            for (Runnable runnable : arrayList3) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    runnable.run();
                    objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th2));
                }
                Throwable thM3611exceptionOrNullimpl2 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
                if (thM3611exceptionOrNullimpl2 != null) {
                    FileLog.m1040e(thM3611exceptionOrNullimpl2);
                }
            }
            if (pendingInitialization2 != null) {
                pluginsController.init(pendingInitialization2.getSafeMode(), new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        PluginsController.$r8$lambda$NkVMFGXNF8PnDclVJJVKPKwkfSQ(pendingInitialization2, pluginsController);
                    }
                });
                return;
            }
            return;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$b0vmSuOO9y5GaqBvP4RSfSKYqR8(atomicBoolean, i, list, pluginsController);
            }
        };
        try {
            list.get(i).shutdown(runnable2);
        } catch (Throwable th3) {
            FileLog.m1039e("Failed to shut down plugin engine", th3);
            runnable2.run();
        }
    }

    public static void $r8$lambda$NkVMFGXNF8PnDclVJJVKPKwkfSQ(PendingInitialization pendingInitialization, PluginsController pluginsController) {
        Object objM3608constructorimpl;
        ArrayList<Runnable> callbacks = pendingInitialization.getCallbacks();
        int size = callbacks.size();
        int i = 0;
        while (i < size) {
            Runnable runnable = callbacks.get(i);
            i++;
            Runnable runnable2 = runnable;
            try {
                Result.Companion companion = Result.INSTANCE;
                runnable2.run();
                objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
            if (thM3611exceptionOrNullimpl != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl);
            }
        }
    }

    public static void $r8$lambda$b0vmSuOO9y5GaqBvP4RSfSKYqR8(AtomicBoolean atomicBoolean, final int i, final List list, final PluginsController pluginsController) {
        if (atomicBoolean.compareAndSet(false, true)) {
            INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.shutdown$lambda$23$shutdownNext(list, pluginsController, i + 1);
                }
            });
        }
    }

    public final void restart() {
        restart(ExteraConfig.getPluginsSafeMode());
    }

    public final void restart(final boolean startWithSafeMode) {
        FileLog.m1037d("Restarting plugins engine...");
        shutdown(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$BtVQTVcUyP1h4B39FmKF0a0xzgU(this.f$0, startWithSafeMode);
            }
        });
    }

    public static void $r8$lambda$BtVQTVcUyP1h4B39FmKF0a0xzgU(PluginsController pluginsController, boolean z) {
        if (ExteraConfig.getPluginsEngine()) {
            pluginsController.init(z, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    FileLog.m1037d("Plugins engine restarted.");
                }
            });
        }
    }

    /* JADX INFO: renamed from: isInitialized, reason: from getter */
    public final boolean getInitialized() {
        return this.initialized;
    }

    public final boolean isPluginActive$TMessagesProj(String pluginId) {
        Plugin plugin;
        return (this.stopping || !ExteraConfig.getPluginsEngine() || pluginId == null || pluginId.length() == 0 || (plugin = this.plugins.get(pluginId)) == null || !plugin.isEnabled()) ? false : true;
    }

    public final boolean isPluginActive$TMessagesProj(Plugin plugin) {
        return !this.stopping && ExteraConfig.getPluginsEngine() && plugin != null && this.plugins.get(plugin.getId()) == plugin && plugin.isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int registerFileIconInternal(String extension, Drawable drawable) {
        String strNormalizeFileExtension = normalizeFileExtension(extension);
        if (strNormalizeFileExtension == null || drawable == null) {
            return -1;
        }
        Integer num = this.fileIconIdsByExtension.get(strNormalizeFileExtension);
        if (num != null) {
            this.fileIconDrawablesById.put(num, drawable);
            return num.intValue();
        }
        int andIncrement = this.nextFileIconId.getAndIncrement();
        Integer numPutIfAbsent = this.fileIconIdsByExtension.putIfAbsent(strNormalizeFileExtension, Integer.valueOf(andIncrement));
        if (numPutIfAbsent != null) {
            andIncrement = numPutIfAbsent.intValue();
        }
        this.fileIconDrawablesById.put(Integer.valueOf(andIncrement), drawable);
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unregisterFileIconInternal(String extension) {
        Integer numRemove;
        String strNormalizeFileExtension = normalizeFileExtension(extension);
        if (strNormalizeFileExtension == null || (numRemove = this.fileIconIdsByExtension.remove(strNormalizeFileExtension)) == null) {
            return;
        }
        this.fileIconDrawablesById.remove(numRemove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getFileIconIdInternal(String fileName) {
        Integer num;
        if (fileName != null && fileName.length() != 0 && !this.fileIconIdsByExtension.isEmpty()) {
            int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) fileName, '.', 0, false, 6, (Object) null);
            String strNormalizeFileExtension = normalizeFileExtension(iLastIndexOf$default >= 0 ? fileName.substring(iLastIndexOf$default + 1) : fileName);
            if (strNormalizeFileExtension != null && (num = this.fileIconIdsByExtension.get(strNormalizeFileExtension)) != null) {
                return num.intValue();
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearFileIconsInternal() {
        this.fileIconIdsByExtension.clear();
        this.fileIconDrawablesById.clear();
    }

    private final String normalizeFileExtension(String extension) {
        if (extension == null || extension.length() == 0) {
            return null;
        }
        return extension.toLowerCase(Locale.ROOT);
    }

    public final List<SettingItem> getPluginSettingsList(String pluginId) {
        if (pluginId == null || pluginId.length() == 0) {
            return null;
        }
        return this.settings.get(pluginId);
    }

    public final void setPluginEnabled(final String pluginId, final boolean enabled, final Utilities.Callback<String> callback) {
        INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$aX_aGB3HuBorUEK0efUO_WvsNRM(enabled, this, pluginId, callback);
            }
        });
    }

    public static void $r8$lambda$aX_aGB3HuBorUEK0efUO_WvsNRM(boolean z, PluginsController pluginsController, String str, final Utilities.Callback callback) {
        if (z && (pluginsController.stopping || !pluginsController.initialized || !ExteraConfig.getPluginsEngine())) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.$r8$lambda$i6GWsH_c_NuPKlaT5rvm8ogmqgI(callback);
                }
            });
            return;
        }
        PluginsEngine pluginEngine = pluginsController.getPluginEngine(str);
        if (pluginEngine == null || str == null) {
            return;
        }
        pluginEngine.setPluginEnabled(str, z, callback);
        pluginsController.interestedPluginsCache.clear();
    }

    public static void $r8$lambda$i6GWsH_c_NuPKlaT5rvm8ogmqgI(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(LocaleController.getString(C2807R.string.PluginsPySdkEngineDisabled));
        }
    }

    public final void deletePlugin(final String pluginId, final Utilities.Callback<String> callback) {
        INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.m3031$r8$lambda$cf0xU7_C2VmVL6FVsZOW3J5L0c(this.f$0, pluginId, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$cf0xU7_C2VmVL6FVs-ZOW3J5L0c, reason: not valid java name */
    public static void m3031$r8$lambda$cf0xU7_C2VmVL6FVsZOW3J5L0c(PluginsController pluginsController, String str, Utilities.Callback callback) {
        PluginsEngine pluginEngine = pluginsController.getPluginEngine(str);
        if (pluginEngine == null || str == null) {
            return;
        }
        pluginEngine.deletePlugin(str, callback);
    }

    public final void cleanupPlugin(String pluginId) {
        try {
            removeHooksByPluginId(pluginId);
            try {
                invalidatePluginSettings(pluginId);
            } finally {
            }
        } catch (Throwable th) {
            try {
                invalidatePluginSettings(pluginId);
                throw th;
            } finally {
            }
        }
    }

    public final String getPluginPath(String id) {
        PluginsEngine pluginEngine;
        if (id == null || id.length() == 0 || (pluginEngine = getPluginEngine(id)) == null) {
            return null;
        }
        return pluginEngine.getPluginPath(id);
    }

    public static /* synthetic */ void showInstallDialog$default(PluginsController pluginsController, BaseFragment baseFragment, MessageObject messageObject, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        pluginsController.showInstallDialog(baseFragment, messageObject, str);
    }

    @JvmOverloads
    public final void showInstallDialog(BaseFragment fragment, MessageObject messageObject, String filePath) {
        if (messageObject == null) {
            return;
        }
        showInstallDialog(fragment, InstallPluginBottomSheet.PluginInstallParams.INSTANCE.of(messageObject, filePath));
    }

    public final void openRepositoryLink(BaseFragment fragment, String username) {
        PluginRepositoryLinks.INSTANCE.open(fragment, username);
    }

    public final void openGitRepositoryLink(BaseFragment fragment, String url) {
        PluginRepositoryLinks.INSTANCE.openGit(fragment, url);
    }

    public static /* synthetic */ void showInstallDialog$default(PluginsController pluginsController, BaseFragment baseFragment, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        pluginsController.showInstallDialog(baseFragment, str, z);
    }

    @JvmOverloads
    public final void showInstallDialog(BaseFragment fragment, String filePath, boolean trusted) {
        if (filePath == null || filePath.length() == 0) {
            return;
        }
        showInstallDialog(fragment, InstallPluginBottomSheet.PluginInstallParams.INSTANCE.untrusted(filePath));
    }

    private final void showInstallDialog(final BaseFragment fragment, InstallPluginBottomSheet.PluginInstallParams params) {
        if (fragment == null || !AndroidUtilities.isActivityRunning(fragment.getParentActivity())) {
            return;
        }
        String filePath = params != null ? params.getFilePath() : null;
        if (filePath == null || filePath.length() == 0) {
            return;
        }
        File file = new File(params.getFilePath());
        if (!ExteraConfig.getPluginsEngine()) {
            BulletinFactory.of(fragment).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.PluginNotEnabled, file.getName()), LocaleController.getString(C2807R.string.Enable), 2750, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    fragment.presentFragment(new PluginsActivity());
                }
            }).show();
            return;
        }
        PluginsEngine pluginEngine = INSTANCE.getPluginEngine(file);
        if (pluginEngine == null) {
            return;
        }
        pluginEngine.showInstallDialog(fragment, params);
    }

    public final void loadPluginSettings() {
        loadPluginSettings(null);
    }

    public final void loadPluginSettings(final String pluginId) {
        if (pluginId == null || pluginId.length() == 0) {
            for (String str : this.plugins.keySet()) {
                Plugin plugin = this.plugins.get(str);
                if (isPluginActive$TMessagesProj(plugin)) {
                    loadPluginSettings(str);
                } else if (plugin != null) {
                    invalidatePluginSettings(str);
                }
            }
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$YXEhabzK4mxgNFCBy35w3nxcsqE(this.f$0, pluginId);
            }
        };
        if (isOnPluginsQueueThread()) {
            runnable.run();
        } else {
            INSTANCE.runOnPluginsQueue(runnable);
        }
    }

    public static void $r8$lambda$YXEhabzK4mxgNFCBy35w3nxcsqE(PluginsController pluginsController, String str) {
        try {
            PluginsEngine pluginEngine = pluginsController.getPluginEngine(str);
            if (pluginEngine == null) {
                return;
            }
            List<SettingItem> listLoadPluginSettings = pluginEngine.loadPluginSettings(str);
            if (listLoadPluginSettings == null) {
                pluginsController.invalidatePluginSettings(str);
                return;
            }
            pluginsController.settings.put(str, listLoadPluginSettings);
            FileLog.m1037d("Registered settings for plugin " + str);
            pluginsController.notifyPluginSettingsRegistered(str);
        } catch (Throwable th) {
            FileLog.m1040e(th);
            pluginsController.invalidatePluginSettings(str);
        }
    }

    public final boolean hasPluginSettings(String pluginId) {
        return (pluginId == null || pluginId.length() == 0 || !this.settings.containsKey(pluginId)) ? false : true;
    }

    public final void invalidatePluginSettings(String pluginId) {
        List<SettingItem> listRemove;
        Object objM3608constructorimpl;
        if (pluginId == null || pluginId.length() == 0 || (listRemove = this.settings.remove(pluginId)) == null) {
            return;
        }
        for (SettingItem settingItem : listRemove) {
            try {
                Result.Companion companion = Result.INSTANCE;
                settingItem.cleanup();
                objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
            if (thM3611exceptionOrNullimpl != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl);
            }
        }
        notifyPluginSettingsUnregistered(pluginId);
    }

    public static /* synthetic */ void clearPluginSettingsPreferences$default(PluginsController pluginsController, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        pluginsController.clearPluginSettingsPreferences(str, z);
    }

    @JvmOverloads
    public final void clearPluginSettingsPreferences(String pluginId, boolean clearEnabledState) {
        if (pluginId == null || pluginId.length() == 0) {
            return;
        }
        PluginsEngine pluginEngine = getPluginEngine(pluginId);
        if (pluginEngine != null) {
            pluginEngine.clearPluginSettings(pluginId);
        } else {
            Iterator<PluginsEngine> it = INSTANCE.getEngines().values().iterator();
            while (it.hasNext()) {
                it.next().clearPluginSettings(pluginId);
            }
        }
        ensurePreferences();
        if (clearEnabledState) {
            String str = PREF_PLUGIN_ENABLED_KEY_PREFIX + pluginId;
            if (this.preferences.contains(str)) {
                SharedPreferences.Editor editorEdit = this.preferences.edit();
                editorEdit.remove(str);
                editorEdit.apply();
            }
        }
    }

    public final Map<String, ?> getPluginSettingsPreferences(String pluginId) {
        PluginsEngine pluginEngine = getPluginEngine(pluginId);
        if (pluginEngine != null) {
            return pluginEngine.getAllPluginSettings(pluginId);
        }
        return null;
    }

    public final boolean hasPluginSettingsPreferences(String pluginId) {
        Map<String, ?> pluginSettingsPreferences = getPluginSettingsPreferences(pluginId);
        return !(pluginSettingsPreferences == null || pluginSettingsPreferences.isEmpty());
    }

    public final boolean getPluginSettingBoolean(String pluginId, String key, boolean defaultValue) {
        PluginsEngine pluginEngine;
        if (pluginId != null && pluginId.length() != 0 && key != null && key.length() != 0 && (pluginEngine = getPluginEngine(pluginId)) != null) {
            Object pluginSetting = pluginEngine.getPluginSetting(pluginId, key, Boolean.valueOf(defaultValue));
            if (pluginSetting instanceof Boolean) {
                return ((Boolean) pluginSetting).booleanValue();
            }
        }
        return defaultValue;
    }

    public final String getPluginSettingString(String pluginId, String key, String defaultValue) {
        PluginsEngine pluginEngine;
        Object pluginSetting;
        return (pluginId == null || pluginId.length() == 0 || key == null || key.length() == 0 || (pluginEngine = getPluginEngine(pluginId)) == null || (pluginSetting = pluginEngine.getPluginSetting(pluginId, key, defaultValue)) == null) ? defaultValue : pluginSetting.toString();
    }

    public final int getPluginSettingInt(String pluginId, String key, int defaultValue) {
        PluginsEngine pluginEngine;
        if (pluginId != null && pluginId.length() != 0 && key != null && key.length() != 0 && (pluginEngine = getPluginEngine(pluginId)) != null) {
            Object pluginSetting = pluginEngine.getPluginSetting(pluginId, key, Integer.valueOf(defaultValue));
            if (pluginSetting instanceof Number) {
                return ((Number) pluginSetting).intValue();
            }
        }
        return defaultValue;
    }

    public final void setPluginSetting(String pluginId, String key, Object value) {
        setPluginSettingAndTriggerOnChange(pluginId, key, value, null);
    }

    public final void setPluginSettingAndTriggerOnChange(String pluginId, String key, Object value, PyObject onChangeCallback) {
        PluginsEngine pluginEngine;
        if (pluginId == null || pluginId.length() == 0 || key == null || key.length() == 0 || !isPluginActive$TMessagesProj(pluginId) || (pluginEngine = getPluginEngine(pluginId)) == null) {
            return;
        }
        pluginEngine.setPluginSetting(pluginId, key, value);
        if (onChangeCallback != null) {
            try {
                onChangeCallback.call(value);
            } catch (Exception e) {
                FileLog.m1039e("Error executing on_change callback for " + pluginId + "/" + key, e);
            }
        }
        loadPluginSettings(pluginId);
    }

    private final void addHook(String pluginId, HookRecord newHook, String logMessage) {
        if (pluginId == null || pluginId.length() == 0 || newHook == null) {
            return;
        }
        if (this.stopping || !ExteraConfig.getPluginsEngine()) {
            newHook.cleanup();
            return;
        }
        ConcurrentHashMap<String, Set<HookRecord>> concurrentHashMap = this.hooks;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginsController.$r8$lambda$jWslUXvcLsrlZBVF3o2WfF3WdQc((String) obj);
            }
        };
        if (concurrentHashMap.computeIfAbsent(pluginId, new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda26
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return PluginsController.$r8$lambda$JXOtzSxF6aIfRpnKITbYODgivEE(function1, obj);
            }
        }).add(newHook)) {
            FileLog.m1037d(logMessage);
            this.interestedPluginsCache.clear();
            this.hooksCacheDirty = true;
        }
    }

    public static Set $r8$lambda$JXOtzSxF6aIfRpnKITbYODgivEE(Function1 function1, Object obj) {
        return (Set) function1.invoke(obj);
    }

    public static Set $r8$lambda$jWslUXvcLsrlZBVF3o2WfF3WdQc(String str) {
        return new CopyOnWriteArraySet();
    }

    public final void addEventHook(String pluginId, String hookName, boolean matchSubstring, int priority) {
        addHook(pluginId, new EventHookRecord(pluginId, hookName, matchSubstring, priority), "Added event hook '" + hookName + "' for plugin " + pluginId);
    }

    private final void removeHook(String pluginId, Function1<? super HookRecord, Boolean> filter, String logMessage) {
        Set<HookRecord> set;
        if (pluginId == null || pluginId.length() == 0 || (set = this.hooks.get(pluginId)) == null || set.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (HookRecord hookRecord : set) {
            if (filter.invoke(hookRecord).booleanValue()) {
                arrayList2.add(hookRecord);
            } else {
                arrayList.add(hookRecord);
            }
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            ((HookRecord) obj).cleanup();
        }
        boolean zIsEmpty = arrayList.isEmpty();
        ConcurrentHashMap<String, Set<HookRecord>> concurrentHashMap = this.hooks;
        if (zIsEmpty) {
            concurrentHashMap.remove(pluginId);
        } else {
            concurrentHashMap.put(pluginId, new CopyOnWriteArraySet(arrayList));
        }
        FileLog.m1037d(logMessage);
        this.interestedPluginsCache.clear();
        this.hooksCacheDirty = true;
    }

    public final void removeEventHook(String pluginId, final String hookName) {
        removeHook(pluginId, new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PluginsController.$r8$lambda$xIOQejyqUXy4XVL8RnI5wKQMmfk(hookName, (HookRecord) obj));
            }
        }, "Removed event hook(s) matching name '" + hookName + "' for plugin " + pluginId);
    }

    public static boolean $r8$lambda$xIOQejyqUXy4XVL8RnI5wKQMmfk(String str, HookRecord hookRecord) {
        return (hookRecord instanceof EventHookRecord) && Intrinsics.areEqual(((EventHookRecord) hookRecord).getHookName(), str);
    }

    public final void addXposedHook(String pluginId, XC_MethodHook.Unhook unhook) {
        addHook(pluginId, unhook != null ? new XposedHookRecord(unhook) : null, "Added Xposed hook for plugin " + pluginId);
    }

    public final void addXposedHooks(String pluginId, ArrayList<XC_MethodHook.Unhook> unhooks) {
        if (unhooks == null) {
            return;
        }
        Iterator<XC_MethodHook.Unhook> it = unhooks.iterator();
        while (it.hasNext()) {
            addXposedHook(pluginId, it.next());
        }
    }

    public final boolean hasXposedHook(String methodName, Class<?>... declaringClasses) {
        rebuildHooksCacheIfNeeded();
        List<? extends Member> list = this.hookedMembersCache.get(methodName);
        if (list == null) {
            return false;
        }
        List<? extends Member> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (Member member : list2) {
            for (Class<?> cls : declaringClasses) {
                if (Intrinsics.areEqual(cls, member.getDeclaringClass())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void removeXposedHook(String pluginId, final XC_MethodHook.Unhook unhook) {
        removeHook(pluginId, new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PluginsController.$r8$lambda$_GqB8Pgkm7699FGgtmiy3uA8kPI(unhook, (HookRecord) obj));
            }
        }, "Removed Xposed hook for plugin " + pluginId);
    }

    public static boolean $r8$lambda$_GqB8Pgkm7699FGgtmiy3uA8kPI(XC_MethodHook.Unhook unhook, HookRecord hookRecord) {
        return (hookRecord instanceof XposedHookRecord) && ((XposedHookRecord) hookRecord).matches(unhook);
    }

    public final void removeHooksByPluginId(String pluginId) {
        Set<HookRecord> setRemove;
        Object objM3608constructorimpl;
        if (pluginId == null || pluginId.length() == 0 || (setRemove = this.hooks.remove(pluginId)) == null) {
            return;
        }
        for (HookRecord hookRecord : setRemove) {
            try {
                Result.Companion companion = Result.INSTANCE;
                hookRecord.cleanup();
                objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
            if (thM3611exceptionOrNullimpl != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl);
            }
        }
        FileLog.m1037d("Removed all (" + setRemove.size() + ") hooks for plugin " + pluginId);
        this.interestedPluginsCache.clear();
        this.hooksCacheDirty = true;
    }

    public final String addMenuItem(String pluginId, PyObject pyMenuItemData) {
        if (INSTANCE.isPluginEngineAvailable() && pyMenuItemData != null && pluginId != null && pluginId.length() != 0) {
            try {
                final MenuItemRecord menuItemRecord = new MenuItemRecord(pluginId, pyMenuItemData);
                String menuType = menuItemRecord.getMenuType();
                if (menuType == null) {
                    return null;
                }
                MenuItemRecord menuItemRecord2 = this.menuItemsById.get(menuItemRecord.getItemId());
                if (menuItemRecord2 != null && !Intrinsics.areEqual(menuItemRecord2.getPluginId(), pluginId)) {
                    FileLog.m1041w("Plugin " + pluginId + " tried to add a menu item: " + menuItemRecord.getItemId() + ", which is already used by plugin " + menuItemRecord2.getPluginId());
                    return null;
                }
                if (menuItemRecord2 != null) {
                    CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList = this.menuItemsByMenuType.get(menuItemRecord2.getMenuType());
                    if (copyOnWriteArrayList != null) {
                        copyOnWriteArrayList.remove(menuItemRecord2);
                    }
                    menuItemRecord2.markRemoved();
                }
                this.menuItemsById.put(menuItemRecord.getItemId(), menuItemRecord);
                ConcurrentHashMap<String, CopyOnWriteArrayList<MenuItemRecord>> concurrentHashMap = this.menuItemsByMenuType;
                final Function2 function2 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return PluginsController.m3021$r8$lambda$3QCcVorq5U9wn6hMG7XcKxZdBQ(menuItemRecord, (String) obj, (CopyOnWriteArrayList) obj2);
                    }
                };
                concurrentHashMap.compute(menuType, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda4
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return PluginsController.m3020$r8$lambda$28GsJfS8NeJy8IwMr2HQBqD_L8(function2, obj, obj2);
                    }
                });
                FileLog.m1037d("Added menu item: " + menuItemRecord.getItemId() + " for plugin " + pluginId + " in type " + menuType);
                notifyMenuItemsUpdated();
                return menuItemRecord.getItemId();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$28GsJfS8NeJy8IwMr2HQ-BqD_L8, reason: not valid java name */
    public static CopyOnWriteArrayList m3020$r8$lambda$28GsJfS8NeJy8IwMr2HQBqD_L8(Function2 function2, Object obj, Object obj2) {
        return (CopyOnWriteArrayList) function2.invoke(obj, obj2);
    }

    /* JADX INFO: renamed from: $r8$lambda$3QCcVorq5U9w-n6hMG7XcKxZdBQ, reason: not valid java name */
    public static CopyOnWriteArrayList m3021$r8$lambda$3QCcVorq5U9wn6hMG7XcKxZdBQ(final MenuItemRecord menuItemRecord, String str, CopyOnWriteArrayList copyOnWriteArrayList) {
        ArrayList arrayList;
        if (copyOnWriteArrayList == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(copyOnWriteArrayList);
            CollectionsKt.removeAll((List) arrayList, new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(Intrinsics.areEqual(((MenuItemRecord) obj).getItemId(), menuItemRecord.getItemId()));
                }
            });
        }
        arrayList.add(menuItemRecord);
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(((MenuItemRecord) obj).getPriority());
            }
        };
        CollectionsKt.sortWith(arrayList, Comparator.comparingInt(new ToIntFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda24
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Number) function1.invoke(obj)).intValue();
            }
        }).reversed());
        return new CopyOnWriteArrayList(arrayList);
    }

    public final boolean removeMenuItem(String pluginId, String itemId) {
        MenuItemRecord menuItemRecordRemove;
        if (itemId == null || itemId.length() == 0 || (menuItemRecordRemove = this.menuItemsById.remove(itemId)) == null || menuItemRecordRemove.getMenuType() == null) {
            return false;
        }
        if (!Intrinsics.areEqual(menuItemRecordRemove.getPluginId(), pluginId)) {
            this.menuItemsById.put(itemId, menuItemRecordRemove);
            return false;
        }
        CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList = this.menuItemsByMenuType.get(menuItemRecordRemove.getMenuType());
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.remove(menuItemRecordRemove);
        }
        menuItemRecordRemove.markRemoved();
        FileLog.m1037d("Removed menu item: " + itemId + " for plugin " + pluginId);
        notifyMenuItemsUpdated();
        return true;
    }

    public final void removeMenuItemsByPluginId(String pluginId) {
        if (pluginId == null || pluginId.length() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (MenuItemRecord menuItemRecord : this.menuItemsById.values()) {
            if (Intrinsics.areEqual(menuItemRecord.getPluginId(), pluginId)) {
                arrayList.add(menuItemRecord.getItemId());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeMenuItem(pluginId, (String) it.next());
        }
        FileLog.m1037d("Removed all menu items for plugin: " + pluginId);
    }

    public final List<MenuItemRecord> getMenuItemsForLocation(String menuType, MenuContextBuilder builder) {
        if (builder == null) {
            return getMenuItemsForLocation(menuType, new HashMap());
        }
        return getMenuItemsForLocation(menuType, (Map<String, ? extends Object>) builder.build());
    }

    public final List<MenuItemRecord> getMenuItemsForLocation(String menuType, Map<String, ? extends Object> contextData) {
        CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList;
        if (!INSTANCE.isPluginEngineAvailable() || menuType == null || menuType.length() == 0) {
            return Collections.EMPTY_LIST;
        }
        LinkedHashSet<MenuItemRecord> linkedHashSet = new LinkedHashSet();
        CopyOnWriteArrayList<MenuItemRecord> copyOnWriteArrayList2 = this.menuItemsByMenuType.get(menuType);
        if (copyOnWriteArrayList2 != null && !copyOnWriteArrayList2.isEmpty()) {
            linkedHashSet.addAll(copyOnWriteArrayList2);
        }
        if (Intrinsics.areEqual(PluginsConstants.MenuItemTypes.MAIN_MENU, menuType) && (copyOnWriteArrayList = this.menuItemsByMenuType.get(PluginsConstants.MenuItemTypes.DRAWER_MENU)) != null && !copyOnWriteArrayList.isEmpty()) {
            linkedHashSet.addAll(copyOnWriteArrayList);
        }
        if (linkedHashSet.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (MenuItemRecord menuItemRecord : linkedHashSet) {
            if (isPluginActive$TMessagesProj(menuItemRecord.getPluginId())) {
                this.watchdog.onPluginExecutionStarted(menuItemRecord.getPluginId());
                try {
                    if (menuItemRecord.checkCondition(contextData)) {
                        arrayList.add(menuItemRecord);
                    }
                } finally {
                    this.watchdog.onPluginExecutionFinished(menuItemRecord.getPluginId());
                }
            }
        }
        return arrayList;
    }

    public final void notifyPluginsChanged() {
        AndroidUtilities.cancelRunOnUIThread(this.updateNotificationRunnable);
        AndroidUtilities.runOnUIThread(this.updateNotificationRunnable, 150L);
    }

    public final void executeOnAppEvent(String eventType) {
        if (this.initialized) {
            Companion companion = INSTANCE;
            if (!companion.isPluginEngineAvailable() || eventType == null) {
                return;
            }
            FileLog.m1037d("Execute scripts on app event ".concat(eventType));
            Iterator<PluginsEngine> it = companion.getEngines().values().iterator();
            while (it.hasNext()) {
                it.next().executeOnAppEvent(eventType);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private final List<String> getInterestedPluginIds(String eventName) {
        ?? arrayList;
        String pluginId;
        if (eventName == null || eventName.length() == 0) {
            return Collections.EMPTY_LIST;
        }
        List<String> list = this.interestedPluginsCache.get(eventName);
        ?? r0 = list;
        if (list == null) {
            rebuildHooksCacheIfNeeded();
            HashMap map = new HashMap();
            List<EventHookRecord> list2 = this.exactMatchEventHooksCache.get(eventName);
            if (list2 != null) {
                for (final EventHookRecord eventHookRecord : list2) {
                    String pluginId2 = eventHookRecord.getPluginId();
                    if (pluginId2 != null) {
                        final Function2 function2 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda35
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                EventHookRecord eventHookRecord2 = eventHookRecord;
                                Integer num = (Integer) obj2;
                                return Integer.valueOf(num == null ? eventHookRecord2.getPriority() : Math.max(num.intValue(), eventHookRecord2.getPriority()));
                            }
                        };
                        map.compute(pluginId2, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda36
                            @Override // java.util.function.BiFunction
                            public final Object apply(Object obj, Object obj2) {
                                return PluginsController.m3029$r8$lambda$YnfT9cfRIsD93b5PWWKFacaK58(function2, obj, obj2);
                            }
                        });
                    }
                }
            }
            for (final EventHookRecord eventHookRecord2 : this.substringMatchEventHooksCache) {
                if (eventHookRecord2.matches(eventName) && (pluginId = eventHookRecord2.getPluginId()) != null) {
                    final Function2 function22 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda37
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return PluginsController.$r8$lambda$cOPxwhKaKX8O1cSM4zqiZP7TwBM(eventHookRecord2, (String) obj, (Integer) obj2);
                        }
                    };
                    map.compute(pluginId, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda38
                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            return PluginsController.$r8$lambda$CdyeDLeOjlUOYpAH7ml4awY8HX4(function22, obj, obj2);
                        }
                    });
                }
            }
            if (map.isEmpty()) {
                arrayList = Collections.EMPTY_LIST;
            } else {
                ArrayList<Map.Entry> arrayList2 = new ArrayList(map.entrySet());
                final Function2 function23 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda39
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return Integer.valueOf(PluginsController.$r8$lambda$FYODiD1oOdGuP0m6PtlXL8iRZyA((Map.Entry) obj, (Map.Entry) obj2));
                    }
                };
                CollectionsKt.sortWith(arrayList2, new Comparator() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda40
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return ((Number) function23.invoke(obj, obj2)).intValue();
                    }
                });
                arrayList = new ArrayList();
                for (Map.Entry entry : arrayList2) {
                    if (isPluginActive$TMessagesProj((String) entry.getKey())) {
                        arrayList.add(entry.getKey());
                    }
                }
            }
            this.interestedPluginsCache.put(eventName, (List<String>) arrayList);
            Collection collection = (Collection) arrayList;
            r0 = arrayList;
            if (collection != null) {
                r0 = arrayList;
                if (!collection.isEmpty()) {
                    FileLog.m1037d("Calculated and cached potential plugins for '" + eventName + "': " + arrayList);
                    r0 = arrayList;
                }
            }
        }
        return r0 == 0 ? Collections.EMPTY_LIST : r0;
    }

    /* JADX INFO: renamed from: $r8$lambda$YnfT9cfRIsD93b5PWWKFa-caK58, reason: not valid java name */
    public static Integer m3029$r8$lambda$YnfT9cfRIsD93b5PWWKFacaK58(Function2 function2, Object obj, Object obj2) {
        return (Integer) function2.invoke(obj, obj2);
    }

    public static Integer $r8$lambda$CdyeDLeOjlUOYpAH7ml4awY8HX4(Function2 function2, Object obj, Object obj2) {
        return (Integer) function2.invoke(obj, obj2);
    }

    public static Integer $r8$lambda$cOPxwhKaKX8O1cSM4zqiZP7TwBM(EventHookRecord eventHookRecord, String str, Integer num) {
        if (num == null) {
            return Integer.valueOf(eventHookRecord.getPriority());
        }
        return Integer.valueOf(Math.max(num.intValue(), eventHookRecord.getPriority()));
    }

    public static int $r8$lambda$FYODiD1oOdGuP0m6PtlXL8iRZyA(Map.Entry entry, Map.Entry entry2) {
        int iCompare = Intrinsics.compare(((Number) entry2.getValue()).intValue(), ((Number) entry.getValue()).intValue());
        return iCompare == 0 ? ((String) entry.getKey()).compareTo((String) entry2.getKey()) : iCompare;
    }

    private final void rebuildHooksCacheIfNeeded() {
        if (this.hooksCacheDirty) {
            synchronized (this.hooksCacheLock) {
                try {
                    if (this.hooksCacheDirty) {
                        HashMap map = new HashMap();
                        ArrayList arrayList = new ArrayList();
                        HashMap map2 = new HashMap();
                        Iterator<Set<HookRecord>> it = this.hooks.values().iterator();
                        while (it.hasNext()) {
                            for (HookRecord hookRecord : it.next()) {
                                if (hookRecord instanceof XposedHookRecord) {
                                    Member hookedMember = ((XposedHookRecord) hookRecord).getHookedMember();
                                    if (hookedMember != null) {
                                        String name = hookedMember.getName();
                                        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda27
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj) {
                                                return PluginsController.m3030$r8$lambda$ZLPSIBEP1WyY8zXHD9gCe0oh7E((String) obj);
                                            }
                                        };
                                        ((List) map2.computeIfAbsent(name, new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda28
                                            @Override // java.util.function.Function
                                            public final Object apply(Object obj) {
                                                return PluginsController.$r8$lambda$97gShIV7BKpUzY65GMneSVntSKs(function1, obj);
                                            }
                                        })).add(hookedMember);
                                    }
                                } else if (hookRecord instanceof EventHookRecord) {
                                    if (((EventHookRecord) hookRecord).getMatchSubstring()) {
                                        arrayList.add(hookRecord);
                                    } else {
                                        String hookName = ((EventHookRecord) hookRecord).getHookName();
                                        if (hookName != null) {
                                            final Function1 function12 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda29
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj) {
                                                    return PluginsController.m3025$r8$lambda$CQqOcY9uKYe1GIC7Rkxs6sixI0((String) obj);
                                                }
                                            };
                                            ((List) map.computeIfAbsent(hookName, new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda30
                                                @Override // java.util.function.Function
                                                public final Object apply(Object obj) {
                                                    return PluginsController.m3019$r8$lambda$pY6sWOzwoic__ZfVrskqMJQo(function12, obj);
                                                }
                                            })).add(hookRecord);
                                        }
                                    }
                                }
                            }
                        }
                        this.exactMatchEventHooksCache = map;
                        this.substringMatchEventHooksCache = arrayList;
                        this.hookedMembersCache = map2;
                        this.hooksCacheDirty = false;
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static List $r8$lambda$97gShIV7BKpUzY65GMneSVntSKs(Function1 function1, Object obj) {
        return (List) function1.invoke(obj);
    }

    /* JADX INFO: renamed from: $r8$lambda$ZLPSI-BEP1WyY8zXHD9gCe0oh7E, reason: not valid java name */
    public static List m3030$r8$lambda$ZLPSIBEP1WyY8zXHD9gCe0oh7E(String str) {
        return new ArrayList();
    }

    /* JADX INFO: renamed from: $r8$lambda$-pY-6s-WOzwoic__ZfVrskqMJQo, reason: not valid java name */
    public static List m3019$r8$lambda$pY6sWOzwoic__ZfVrskqMJQo(Function1 function1, Object obj) {
        return (List) function1.invoke(obj);
    }

    /* JADX INFO: renamed from: $r8$lambda$CQqOcY9-uKYe1GIC7Rkxs6sixI0, reason: not valid java name */
    public static List m3025$r8$lambda$CQqOcY9uKYe1GIC7Rkxs6sixI0(String str) {
        return new ArrayList();
    }

    private final void ensurePreferences() {
        this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("plugin_settings", 0);
    }

    private final boolean isOnPluginsQueueThread() {
        return (Utilities.pluginsQueue == null || Utilities.pluginsQueue.getHandler() == null || !Intrinsics.areEqual(Thread.currentThread(), Utilities.pluginsQueue.getHandler().getLooper().getThread())) ? false : true;
    }

    private final void notifyPluginSettingsRegistered(final String pluginId) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginSettingsRegistered, pluginId);
            }
        });
    }

    private final void notifyPluginSettingsUnregistered(final String pluginId) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginSettingsUnregistered, pluginId);
            }
        });
    }

    private final void notifyMenuItemsUpdated() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginMenuItemsUpdated, new Object[0]);
            }
        });
    }

    private final <T> T executeGenericHook(String hookName, T initialObject, EngineHookCaller<T> caller) {
        PluginsEngine pluginEngine;
        if (INSTANCE.isPluginEngineAvailable()) {
            List<String> interestedPluginIds = getInterestedPluginIds(hookName);
            if (!interestedPluginIds.isEmpty()) {
                for (String str : interestedPluginIds) {
                    if (isPluginActive$TMessagesProj(str) && (pluginEngine = getPluginEngine(str)) != null) {
                        this.watchdog.onPluginExecutionStarted(str);
                        try {
                            HookResult<T> hookResultCall = caller.call(pluginEngine, initialObject, str);
                            T result = hookResultCall.getResult();
                            if (!hookResultCall.getCancel()) {
                                boolean isFinal = hookResultCall.getIsFinal();
                                PluginsWatchdog pluginsWatchdog = this.watchdog;
                                if (isFinal) {
                                    pluginsWatchdog.onPluginExecutionFinished(str);
                                    return result;
                                }
                                pluginsWatchdog.onPluginExecutionFinished(str);
                                initialObject = result;
                            } else {
                                this.watchdog.onPluginExecutionFinished(str);
                                return null;
                            }
                        } catch (Throwable th) {
                            this.watchdog.onPluginExecutionFinished(str);
                            throw th;
                        }
                    }
                }
                return initialObject;
            }
        }
        return initialObject;
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLObject executePreRequestHook(final String requestName, final int account, TLObject request) {
        return (TLObject) executeGenericHook(requestName, request, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda31
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executePreRequestHook(requestName, account, (TLObject) obj, str);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public PluginsHooks.PostRequestResult executePostRequestHook(final String requestName, final int account, TLObject response, TLRPC.TL_error error) {
        PluginsHooks.PostRequestResult postRequestResult = (PluginsHooks.PostRequestResult) executeGenericHook(requestName, new PluginsHooks.PostRequestResult(response, error), new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda11
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                PluginsHooks.PostRequestResult postRequestResult2 = (PluginsHooks.PostRequestResult) obj;
                return pluginsEngine.executePostRequestHook(requestName, account, postRequestResult2 != null ? postRequestResult2.getResponse() : null, postRequestResult2 != null ? postRequestResult2.getError() : null, str);
            }
        });
        return postRequestResult == null ? new PluginsHooks.PostRequestResult(response, error) : postRequestResult;
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLRPC.Update executeUpdateHook(final String updateName, final int account, TLRPC.Update update) {
        return (TLRPC.Update) executeGenericHook(updateName, update, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda17
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeUpdateHook(updateName, account, (TLRPC.Update) obj, str);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLRPC.Updates executeUpdatesHook(final String containerName, final int account, TLRPC.Updates updates) {
        return (TLRPC.Updates) executeGenericHook(containerName, updates, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda34
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeUpdatesHook(containerName, account, (TLRPC.Updates) obj, str);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public SendMessagesHelper.SendMessageParams executeSendMessageHook(final int account, SendMessagesHelper.SendMessageParams params) {
        return (SendMessagesHelper.SendMessageParams) executeGenericHook(PluginsConstants.SEND_MESSAGE_HOOK, params, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda20
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeSendMessageHook(account, (SendMessagesHelper.SendMessageParams) obj, str);
            }
        });
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u001e\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u000f\"\u0004\b\u0012\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "result", "cancel", _UrlKt.FRAGMENT_ENCODE_SET, "isFinal", "<init>", "(Ljava/lang/Object;ZZ)V", "getResult", "()Ljava/lang/Object;", "setResult", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "getCancel", "()Z", "setCancel", "(Z)V", "setFinal", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class HookResult<T> {
        private boolean cancel;
        private boolean isFinal;
        private T result;

        public HookResult(T t, boolean z, boolean z2) {
            this.result = t;
            this.cancel = z;
            this.isFinal = z2;
        }

        public final T getResult() {
            return this.result;
        }

        public final void setResult(T t) {
            this.result = t;
        }

        public final boolean getCancel() {
            return this.cancel;
        }

        public final void setCancel(boolean z) {
            this.cancel = z;
        }

        /* JADX INFO: renamed from: isFinal, reason: from getter */
        public final boolean getIsFinal() {
            return this.isFinal;
        }

        public final void setFinal(boolean z) {
            this.isFinal = z;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;", _UrlKt.FRAGMENT_ENCODE_SET, "plugin", "Lcom/exteragram/messenger/plugins/Plugin;", "error", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V", "getPlugin", "()Lcom/exteragram/messenger/plugins/Plugin;", "setPlugin", "(Lcom/exteragram/messenger/plugins/Plugin;)V", "getError", "()Ljava/lang/String;", "setError", "(Ljava/lang/String;)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class PluginValidationResult {
        private String error;
        private Plugin plugin;

        public PluginValidationResult(Plugin plugin, String str) {
            this.plugin = plugin;
            this.error = str;
        }

        public final Plugin getPlugin() {
            return this.plugin;
        }

        public final void setPlugin(Plugin plugin) {
            this.plugin = plugin;
        }

        public final String getError() {
            return this.error;
        }

        public final void setError(String str) {
            this.error = str;
        }
    }

    @Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J \u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u000eH&J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J(\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00032\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0016H&J \u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0016H&J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0019\u001a\u00020\nH&J\b\u0010\u001a\u001a\u00020\u0003H&J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\nH&J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\nH&J\u0018\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\u0006\u0010\u0019\u001a\u00020\nH&J$\u0010 \u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010!\u001a\u00020\n2\b\u0010\"\u001a\u0004\u0018\u00010\u0001H&J\"\u0010#\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010!\u001a\u00020\n2\b\u0010$\u001a\u0004\u0018\u00010\u0001H&J\u0010\u0010%\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\nH&J\u001c\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0002\b\u0003\u0018\u00010\t2\u0006\u0010\u0014\u001a\u00020\nH&J\u0010\u0010'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\nH&J0\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010+2\u0006\u0010\u0014\u001a\u00020\nH&J:\u00100\u001a\b\u0012\u0004\u0012\u0002010*2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020.2\b\u00102\u001a\u0004\u0018\u00010+2\b\u00103\u001a\u0004\u0018\u0001042\u0006\u0010\u0014\u001a\u00020\nH&J0\u00105\u001a\b\u0012\u0004\u0012\u0002060*2\u0006\u00107\u001a\u00020\n2\u0006\u0010-\u001a\u00020.2\b\u00108\u001a\u0004\u0018\u0001062\u0006\u0010\u0014\u001a\u00020\nH&J0\u00109\u001a\b\u0012\u0004\u0012\u00020:0*2\u0006\u0010;\u001a\u00020\n2\u0006\u0010-\u001a\u00020.2\b\u0010<\u001a\u0004\u0018\u00010:2\u0006\u0010\u0014\u001a\u00020\nH&J(\u0010=\u001a\b\u0012\u0004\u0012\u00020>0*2\u0006\u0010-\u001a\u00020.2\b\u0010?\u001a\u0004\u0018\u00010>2\u0006\u0010\u0014\u001a\u00020\nH&J\u0018\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020B2\u0006\u0010?\u001a\u00020CH&J4\u0010D\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010F2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00162\b\u0010G\u001a\u0004\u0018\u00010HH&J\u0018\u0010I\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010A\u001a\u00020BH&J\u0018\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020F2\u0006\u0010A\u001a\u00020BH&J \u0010K\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020F2\u0006\u0010L\u001a\u00020\n2\u0006\u0010A\u001a\u00020BH&J \u0010K\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010L\u001a\u00020\n2\u0006\u0010A\u001a\u00020BH&¨\u0006MÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", _UrlKt.FRAGMENT_ENCODE_SET, "isPlugin", _UrlKt.FRAGMENT_ENCODE_SET, "file", "Ljava/io/File;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "parsePluginMetadata", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "filePath", "isEngineAvailable", "init", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "Ljava/lang/Runnable;", "checkDevServer", "shutdown", "setPluginEnabled", "pluginId", "enabled", "Lorg/telegram/messenger/Utilities$Callback;", "deletePlugin", "getPluginPath", "id", "canOpenInExternalApp", "openInExternalApp", "sharePlugin", "loadPluginSettings", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "getPluginSetting", PluginsConstants.Settings.KEY, "defaultValue", "setPluginSetting", "value", "clearPluginSettings", "getAllPluginSettings", "executeOnAppEvent", "eventType", "executePreRequestHook", "Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "Lorg/telegram/tgnet/TLObject;", "requestName", "account", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, "executePostRequestHook", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;", PluginsConstants.RESPONSE, "error", "Lorg/telegram/tgnet/TLRPC$TL_error;", "executeUpdateHook", "Lorg/telegram/tgnet/TLRPC$Update;", "updateName", PluginsConstants.UPDATE, "executeUpdatesHook", "Lorg/telegram/tgnet/TLRPC$Updates;", "containerName", PluginsConstants.UPDATES, "executeSendMessageHook", "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;", PluginsConstants.PARAMS, "showInstallDialog", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "loadPluginFromFile", "pluginMetadata", "Lcom/exteragram/messenger/plugins/Plugin;", "delegate", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "openPluginSettings", "plugin", "openPluginSetting", "linkAlias", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public interface PluginsEngine {
        boolean canOpenInExternalApp();

        void checkDevServer();

        void clearPluginSettings(String pluginId);

        void deletePlugin(String pluginId, Utilities.Callback<String> callback);

        void executeOnAppEvent(String eventType);

        HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String requestName, int account, TLObject response, TLRPC.TL_error error, String pluginId);

        HookResult<TLObject> executePreRequestHook(String requestName, int account, TLObject request, String pluginId);

        HookResult<SendMessagesHelper.SendMessageParams> executeSendMessageHook(int account, SendMessagesHelper.SendMessageParams params, String pluginId);

        HookResult<TLRPC.Update> executeUpdateHook(String updateName, int account, TLRPC.Update update, String pluginId);

        HookResult<TLRPC.Updates> executeUpdatesHook(String containerName, int account, TLRPC.Updates updates, String pluginId);

        Map<String, ?> getAllPluginSettings(String pluginId);

        String getPluginPath(String id);

        Object getPluginSetting(String pluginId, String key, Object defaultValue);

        void init(Runnable callback);

        boolean isEngineAvailable();

        boolean isPlugin(File file, MessageObject messageObject);

        void loadPluginFromFile(String filePath, Plugin pluginMetadata, Utilities.Callback<String> callback, PipController.InstallerDelegate delegate);

        List<SettingItem> loadPluginSettings(String id);

        void openInExternalApp(String id);

        void openPluginSetting(Plugin plugin, String linkAlias, BaseFragment fragment);

        void openPluginSetting(String pluginId, String linkAlias, BaseFragment fragment);

        void openPluginSettings(Plugin plugin, BaseFragment fragment);

        void openPluginSettings(String id, BaseFragment fragment);

        default Map<String, String> parsePluginMetadata(String filePath) {
            return null;
        }

        void setPluginEnabled(String pluginId, boolean enabled, Utilities.Callback<String> callback);

        void setPluginSetting(String pluginId, String key, Object value);

        void sharePlugin(String id);

        void showInstallDialog(BaseFragment fragment, InstallPluginBottomSheet.PluginInstallParams params);

        void shutdown(Runnable callback);

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
        public static final class DefaultImpls {
            @Deprecated
            public static Map<String, String> parsePluginMetadata(PluginsEngine pluginsEngine, String str) {
                return PluginsEngine.super.parsePluginMetadata(str);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\b\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "INSTANCE", "Lcom/exteragram/messenger/plugins/PluginsController;", "getINSTANCE", "()Lcom/exteragram/messenger/plugins/PluginsController;", "INSTANCE$1", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class SingletonHolder {
        public static final SingletonHolder INSTANCE = new SingletonHolder();

        /* JADX INFO: renamed from: INSTANCE$1, reason: from kotlin metadata */
        private static final PluginsController INSTANCE = new PluginsController(null);

        private SingletonHolder() {
        }

        public final PluginsController getINSTANCE() {
            return INSTANCE;
        }
    }

    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b0\nH\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\u001c\u0010\u000f\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0012\u0010\u0013\u001a\u00020\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0007J\b\u0010\u0015\u001a\u00020\u0014H\u0007J\u0012\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0007H\u0007J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0007J\b\u0010\u001c\u001a\u00020\u0019H\u0007J\b\u0010\u001d\u001a\u00020\u0019H\u0007J\b\u0010\u001e\u001a\u00020\u0014H\u0007J\u0012\u0010\u001f\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010!H\u0007J\u001c\u0010\u001f\u001a\u00020\u00192\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010 \u001a\u0004\u0018\u00010!H\u0007J\u0014\u0010$\u001a\u0004\u0018\u00010\u000b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\u0012\u0010%\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010\u0005H\u0007J\u001c\u0010%\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010\u00052\b\u0010'\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010(\u001a\u00020\u00192\b\u0010&\u001a\u0004\u0018\u00010\u0005H\u0007J\u001a\u0010)\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010\u00052\u0006\u0010*\u001a\u00020\u0019H\u0007J\u0010\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020-H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "PREF_PLUGIN_ENABLED_KEY_PREFIX", _UrlKt.FRAGMENT_ENCODE_SET, "PLUGIN_FILE_ICON_NONE", _UrlKt.FRAGMENT_ENCODE_SET, "PLUGIN_FILE_ICON_ID_START", "enginesMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "getEngines", "getInstance", "Lcom/exteragram/messenger/plugins/PluginsController;", "registerFileIcon", "extension", "drawable", "Landroid/graphics/drawable/Drawable;", "unregisterFileIcon", _UrlKt.FRAGMENT_ENCODE_SET, "clearFileIcons", "getFileIconId", "fileName", "isPluginFileIcon", _UrlKt.FRAGMENT_ENCODE_SET, "icon", "getPluginFileIconDrawable", "isPluginEngineSupported", "isPluginEngineAvailable", "applyArtOpts", "isPlugin", "messageObject", "Lorg/telegram/messenger/MessageObject;", "file", "Ljava/io/File;", "getPluginEngine", "openPluginSettings", "pluginId", "linkAlias", "isPluginPinned", "setPluginPinned", "isPinned", "runOnPluginsQueue", "runnable", "Ljava/lang/Runnable;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean isPluginEngineSupported() {
            return true;
        }

        private Companion() {
        }

        @JvmStatic
        public final ConcurrentHashMap<String, PluginsEngine> getEngines() {
            return PluginsController.enginesMap;
        }

        @JvmStatic
        public final PluginsController getInstance() {
            return SingletonHolder.INSTANCE.getINSTANCE();
        }

        @JvmStatic
        public final int registerFileIcon(String extension, Drawable drawable) {
            return getInstance().registerFileIconInternal(extension, drawable);
        }

        @JvmStatic
        public final void unregisterFileIcon(String extension) {
            getInstance().unregisterFileIconInternal(extension);
        }

        @JvmStatic
        public final void clearFileIcons() {
            getInstance().clearFileIconsInternal();
        }

        @JvmStatic
        public final int getFileIconId(String fileName) {
            return getInstance().getFileIconIdInternal(fileName);
        }

        @JvmStatic
        public final boolean isPluginFileIcon(int icon) {
            if (icon < 101) {
                return false;
            }
            return getInstance().fileIconDrawablesById.containsKey(Integer.valueOf(icon));
        }

        @JvmStatic
        public final Drawable getPluginFileIconDrawable(int icon) {
            return (Drawable) getInstance().fileIconDrawablesById.get(Integer.valueOf(icon));
        }

        @JvmStatic
        public final boolean isPluginEngineAvailable() {
            if (isPluginEngineSupported() && ExteraConfig.getPluginsEngine() && !ExteraConfig.getPluginsSafeMode() && !getInstance().stopping) {
                PluginsEngine pluginsEngine = (PluginsEngine) PluginsController.enginesMap.get(PluginsConstants.PYTHON);
                if (pluginsEngine != null && pluginsEngine.isEngineAvailable()) {
                    return true;
                }
                for (PluginsEngine pluginsEngine2 : getEngines().values()) {
                    if (pluginsEngine2 != pluginsEngine) {
                        try {
                            if (pluginsEngine2.isEngineAvailable()) {
                                return true;
                            }
                        } catch (Throwable th) {
                            FileLog.m1039e("Error checking engine availability.", th);
                        }
                    }
                }
            }
            return false;
        }

        @JvmStatic
        public final void applyArtOpts() {
            if (ExteraConfig.getPreferences().getBoolean("pluginsEngine", false) && ExteraConfig.getPluginsDisableArtOpts() && isPluginEngineSupported()) {
                try {
                    XposedBridge.disableProfileSaver();
                } catch (Throwable th) {
                    FileLog.m1040e(th);
                }
            }
        }

        @JvmStatic
        public final boolean isPlugin(MessageObject messageObject) {
            String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
            return (messageObject == null || messageObject.getDocumentName() == null || TextUtils.isEmpty(pathToMessage) || !isPlugin(new File(pathToMessage), messageObject) || !isPluginEngineSupported()) ? false : true;
        }

        @JvmStatic
        public final boolean isPlugin(File file, MessageObject messageObject) {
            if (file == null) {
                return false;
            }
            Iterator<PluginsEngine> it = getEngines().values().iterator();
            while (it.hasNext()) {
                if (it.next().isPlugin(file, messageObject)) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        public final PluginsEngine getPluginEngine(File file) {
            if (file == null) {
                return null;
            }
            for (PluginsEngine pluginsEngine : getEngines().values()) {
                if (pluginsEngine.isPlugin(file, null)) {
                    return pluginsEngine;
                }
            }
            return null;
        }

        @JvmStatic
        public final void openPluginSettings(String pluginId) {
            openPluginSettings(pluginId, null);
        }

        @JvmStatic
        public final void openPluginSettings(String pluginId, String linkAlias) {
            final BaseFragment lastFragment;
            if (pluginId == null || pluginId.length() == 0 || (lastFragment = LaunchActivity.getLastFragment()) == null) {
                return;
            }
            if (!ExteraConfig.getPluginsEngine()) {
                BulletinFactory.of(lastFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.PluginEngineNotEnabled, pluginId), LocaleController.getString(C2807R.string.Enable), 2750, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$Companion$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        lastFragment.presentFragment(new PluginsActivity());
                    }
                }).show();
                return;
            }
            Plugin plugin = getInstance().getPlugins().get(pluginId);
            if (plugin == null) {
                BulletinFactory.of(lastFragment).createEmojiBulletin("🤷\u200d♂️", LocaleController.formatString(C2807R.string.PluginNotFound, pluginId)).show();
                return;
            }
            if (!getInstance().hasPluginSettings(pluginId)) {
                BulletinFactory.of(lastFragment).createEmojiBulletin("🤷\u200d♂️", LocaleController.formatString(C2807R.string.PluginHasNoSettings, plugin.getName())).show();
                return;
            }
            PluginsEngine pluginEngine = getInstance().getPluginEngine(pluginId);
            if (pluginEngine != null) {
                if (linkAlias == null) {
                    pluginEngine.openPluginSettings(pluginId, lastFragment);
                } else {
                    pluginEngine.openPluginSetting(pluginId, linkAlias, lastFragment);
                }
            }
        }

        @JvmStatic
        public final boolean isPluginPinned(String pluginId) {
            return (pluginId == null || pluginId.length() == 0 || !ExteraConfig.getPinnedPlugins().contains(pluginId)) ? false : true;
        }

        @JvmStatic
        public final void setPluginPinned(String pluginId, boolean isPinned) {
            if (pluginId == null || pluginId.length() == 0) {
                return;
            }
            HashSet hashSet = new HashSet(ExteraConfig.getPinnedPlugins());
            if (!isPinned) {
                hashSet.remove(pluginId);
            } else {
                hashSet.add(pluginId);
            }
            ExteraConfig.setPinnedPlugins(hashSet);
            ExteraConfig.getEditor().putStringSet("pinnedPlugins", hashSet).apply();
            getInstance().notifyPluginsChanged();
        }

        @JvmStatic
        public final void runOnPluginsQueue(Runnable runnable) {
            if (Utilities.pluginsQueue == null || !Utilities.pluginsQueue.isAlive()) {
                synchronized (PluginsController.class) {
                    try {
                        if (Utilities.pluginsQueue == null || !Utilities.pluginsQueue.isAlive()) {
                            Utilities.pluginsQueue = new DispatchQueue("pluginsQueue");
                        }
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            Utilities.pluginsQueue.postRunnable(runnable);
        }
    }
}
