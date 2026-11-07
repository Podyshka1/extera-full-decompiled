package com.exteragram.messenger.plugins;

import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.PluginsController;
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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
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
import org.telegram.messenger.C2665R;
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
@Metadata(d1 = {"\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 ¹\u00012\u00020\u0001:\f´\u0001µ\u0001¶\u0001·\u0001¸\u0001¹\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u00107\u001a\u0004\u0018\u0001082\b\u00109\u001a\u0004\u0018\u00010\u0006J\u0006\u0010:\u001a\u00020;J\u0010\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u000106J\u000e\u0010:\u001a\u00020;2\u0006\u0010=\u001a\u00020#J\u0018\u0010:\u001a\u00020;2\u0006\u0010=\u001a\u00020#2\b\u0010<\u001a\u0004\u0018\u000106J\u0006\u0010>\u001a\u00020;J\u0010\u0010?\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u000106J\u0006\u0010@\u001a\u00020;J\u000e\u0010@\u001a\u00020;2\u0006\u0010=\u001a\u00020#J\u0006\u0010A\u001a\u00020#J\u0017\u0010B\u001a\u00020#2\b\u00109\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\bCJ\u0017\u0010B\u001a\u00020#2\b\u0010D\u001a\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\bCJ\u001c\u0010E\u001a\u00020\u00172\b\u0010F\u001a\u0004\u0018\u00010\u00062\b\u0010G\u001a\u0004\u0018\u00010\u0019H\u0002J\u0012\u0010H\u001a\u00020;2\b\u0010F\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010I\u001a\u00020\u00172\b\u0010J\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010K\u001a\u00020;H\u0002J\u0014\u0010L\u001a\u0004\u0018\u00010\u00062\b\u0010F\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010M\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\b\u00109\u001a\u0004\u0018\u00010\u0006J(\u0010N\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\u0006\u0010O\u001a\u00020#2\u000e\u0010P\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010QJ \u0010R\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\u000e\u0010P\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010QJ\u0010\u0010S\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u0006J\u0012\u0010T\u001a\u0004\u0018\u00010\u00062\b\u0010U\u001a\u0004\u0018\u00010\u0006J\u001a\u0010V\u001a\u00020;2\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010Y\u001a\u0004\u0018\u00010ZJ\"\u0010V\u001a\u00020;2\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010[\u001a\u0004\u0018\u00010\u00062\u0006\u0010\\\u001a\u00020#J\u001c\u0010V\u001a\u00020;2\b\u0010W\u001a\u0004\u0018\u00010X2\b\u0010]\u001a\u0004\u0018\u00010^H\u0002J\u0006\u0010_\u001a\u00020;J\u0010\u0010_\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u0006J\u0010\u0010`\u001a\u00020#2\b\u00109\u001a\u0004\u0018\u00010\u0006J\u0010\u0010a\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u0006J\u001c\u0010b\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010c\u001a\u00020#H\u0007J\u001c\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u0003\u0018\u00010\u001f2\b\u00109\u001a\u0004\u0018\u00010\u0006J\u0010\u0010e\u001a\u00020#2\b\u00109\u001a\u0004\u0018\u00010\u0006J\"\u0010f\u001a\u00020#2\b\u00109\u001a\u0004\u0018\u00010\u00062\b\u0010g\u001a\u0004\u0018\u00010\u00062\u0006\u0010h\u001a\u00020#J&\u0010i\u001a\u0004\u0018\u00010\u00062\b\u00109\u001a\u0004\u0018\u00010\u00062\b\u0010g\u001a\u0004\u0018\u00010\u00062\b\u0010h\u001a\u0004\u0018\u00010\u0006J\"\u0010j\u001a\u00020\u00172\b\u00109\u001a\u0004\u0018\u00010\u00062\b\u0010g\u001a\u0004\u0018\u00010\u00062\u0006\u0010h\u001a\u00020\u0017J$\u0010k\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\b\u0010g\u001a\u0004\u0018\u00010\u00062\b\u0010l\u001a\u0004\u0018\u00010!J.\u0010m\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\b\u0010g\u001a\u0004\u0018\u00010\u00062\b\u0010l\u001a\u0004\u0018\u00010!2\b\u0010n\u001a\u0004\u0018\u00010oJ$\u0010p\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\b\u0010q\u001a\u0004\u0018\u00010\u00142\u0006\u0010r\u001a\u00020\u0006H\u0002J(\u0010s\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\u0006\u0010t\u001a\u00020\u00062\u0006\u0010u\u001a\u00020#2\u0006\u0010v\u001a\u00020\u0017J.\u0010w\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\u0012\u0010x\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020#0y2\u0006\u0010r\u001a\u00020\u0006H\u0002J\u0018\u0010z\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\u0006\u0010t\u001a\u00020\u0006J\u001e\u0010{\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\f\u0010|\u001a\b\u0018\u00010}R\u00020~J7\u0010\u007f\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062%\u0010\u0080\u0001\u001a \u0012\b\u0012\u00060}R\u00020~\u0018\u00010\u0081\u0001j\u000f\u0012\b\u0012\u00060}R\u00020~\u0018\u0001`\u0082\u0001J\u001f\u0010\u0083\u0001\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u00062\f\u0010|\u001a\b\u0018\u00010}R\u00020~J\u0011\u0010\u0084\u0001\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u0006J\u001e\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00062\b\u00109\u001a\u0004\u0018\u00010\u00062\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010oJ\u001c\u0010\u0087\u0001\u001a\u00020#2\b\u00109\u001a\u0004\u0018\u00010\u00062\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0006J\u0011\u0010\u0089\u0001\u001a\u00020;2\b\u00109\u001a\u0004\u0018\u00010\u0006J$\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00062\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001J/\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000b2\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00062\u0015\u0010\u008e\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020!\u0018\u00010\u001fJ\u0007\u0010\u008f\u0001\u001a\u00020;J\u0012\u0010\u0090\u0001\u001a\u00020;2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0006H\u0002J\t\u0010\u0094\u0001\u001a\u00020;H\u0002J\t\u0010\u0095\u0001\u001a\u00020;H\u0002J\t\u0010\u0096\u0001\u001a\u00020#H\u0002J\u0011\u0010\u0097\u0001\u001a\u00020;2\u0006\u00109\u001a\u00020\u0006H\u0002J\u0011\u0010\u0098\u0001\u001a\u00020;2\u0006\u00109\u001a\u00020\u0006H\u0002J\t\u0010\u0099\u0001\u001a\u00020;H\u0002J>\u0010\u009a\u0001\u001a\u0005\u0018\u0001H\u009b\u0001\"\u0005\b\u0000\u0010\u009b\u00012\u0006\u0010t\u001a\u00020\u00062\n\u0010\u009c\u0001\u001a\u0005\u0018\u0001H\u009b\u00012\u000f\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009b\u00010\u009e\u0001H\u0002¢\u0006\u0003\u0010\u009f\u0001J(\u0010 \u0001\u001a\u0005\u0018\u00010¡\u00012\u0007\u0010¢\u0001\u001a\u00020\u00062\u0007\u0010£\u0001\u001a\u00020\u00172\b\u0010¤\u0001\u001a\u00030¡\u0001H\u0016J4\u0010¥\u0001\u001a\u00030¦\u00012\u0007\u0010¢\u0001\u001a\u00020\u00062\u0007\u0010£\u0001\u001a\u00020\u00172\n\u0010§\u0001\u001a\u0005\u0018\u00010¡\u00012\n\u0010¨\u0001\u001a\u0005\u0018\u00010©\u0001H\u0016J(\u0010ª\u0001\u001a\u0005\u0018\u00010«\u00012\u0007\u0010¬\u0001\u001a\u00020\u00062\u0007\u0010£\u0001\u001a\u00020\u00172\b\u0010\u00ad\u0001\u001a\u00030«\u0001H\u0016J(\u0010®\u0001\u001a\u0005\u0018\u00010¯\u00012\u0007\u0010°\u0001\u001a\u00020\u00062\u0007\u0010£\u0001\u001a\u00020\u00172\b\u0010±\u0001\u001a\u00030¯\u0001H\u0016J\u001e\u0010²\u0001\u001a\u0005\u0018\u00010³\u00012\u0007\u0010£\u0001\u001a\u00020\u00172\u0007\u0010]\u001a\u00030³\u0001H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR#\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00110\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u000b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00190\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u000b0\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0011\u00101\u001a\u000202¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u000e\u00105\u001a\u000206X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006º\u0001"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController;", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;", "<init>", "()V", PluginsConstants.PLUGINS, "Ljava/util/concurrent/ConcurrentHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/Plugin;", "getPlugins", "()Ljava/util/concurrent/ConcurrentHashMap;", "settings", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "getSettings", "menuItemsById", "Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;", "menuItemsByMenuType", "Ljava/util/concurrent/CopyOnWriteArrayList;", "hooks", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/hooks/HookRecord;", "interestedPluginsCache", "fileIconIdsByExtension", _UrlKt.FRAGMENT_ENCODE_SET, "fileIconDrawablesById", "Landroid/graphics/drawable/Drawable;", "nextFileIconId", "Ljava/util/concurrent/atomic/AtomicInteger;", "substringMatchEventHooksCache", "Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;", "exactMatchEventHooksCache", _UrlKt.FRAGMENT_ENCODE_SET, "hooksCacheLock", _UrlKt.FRAGMENT_ENCODE_SET, "hooksCacheDirty", _UrlKt.FRAGMENT_ENCODE_SET, "initialized", "pluginsDir", "Ljava/io/File;", "getPluginsDir", "()Ljava/io/File;", "setPluginsDir", "(Ljava/io/File;)V", "preferences", "Landroid/content/SharedPreferences;", "getPreferences", "()Landroid/content/SharedPreferences;", "setPreferences", "(Landroid/content/SharedPreferences;)V", "watchdog", "Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;", "getWatchdog", "()Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;", "updateNotificationRunnable", "Ljava/lang/Runnable;", "getPluginEngine", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "pluginId", "init", _UrlKt.FRAGMENT_ENCODE_SET, "onDone", "startWithSafeMode", "checkDevServers", "shutdown", "restart", "isInitialized", "isPluginActive", "isPluginActive$TMessagesProj", "plugin", "registerFileIconInternal", "extension", "drawable", "unregisterFileIconInternal", "getFileIconIdInternal", "fileName", "clearFileIconsInternal", "normalizeFileExtension", "getPluginSettingsList", "setPluginEnabled", "enabled", Callback.METHOD_NAME, "Lorg/telegram/messenger/Utilities$Callback;", "deletePlugin", "cleanupPlugin", "getPluginPath", "id", "showInstallDialog", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "filePath", "trusted", PluginsConstants.PARAMS, "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "loadPluginSettings", "hasPluginSettings", "invalidatePluginSettings", "clearPluginSettingsPreferences", "clearEnabledState", "getPluginSettingsPreferences", "hasPluginSettingsPreferences", "getPluginSettingBoolean", PluginsConstants.Settings.KEY, "defaultValue", "getPluginSettingString", "getPluginSettingInt", "setPluginSetting", "value", "setPluginSettingAndTriggerOnChange", "onChangeCallback", "Lcom/chaquo/python/PyObject;", "addHook", "newHook", "logMessage", "addEventHook", "hookName", "matchSubstring", PluginsConstants.MenuItemProperties.PRIORITY, "removeHook", "filter", "Lkotlin/Function1;", "removeEventHook", "addXposedHook", "unhook", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "addXposedHooks", "unhooks", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "removeXposedHook", "removeHooksByPluginId", "addMenuItem", "pyMenuItemData", "removeMenuItem", "itemId", "removeMenuItemsByPluginId", "getMenuItemsForLocation", "menuType", "builder", "Lcom/exteragram/messenger/plugins/utils/MenuContextBuilder;", "contextData", "notifyPluginsChanged", "executeOnAppEvent", "eventType", "getInterestedPluginIds", "eventName", "rebuildHooksCacheIfNeeded", "ensurePreferences", "isOnPluginsQueueThread", "notifyPluginSettingsRegistered", "notifyPluginSettingsUnregistered", "notifyMenuItemsUpdated", "executeGenericHook", "T", "initialObject", "caller", "Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;", "(Ljava/lang/String;Ljava/lang/Object;Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;)Ljava/lang/Object;", "executePreRequestHook", "Lorg/telegram/tgnet/TLObject;", "requestName", "account", PluginsConstants.REQUEST, "executePostRequestHook", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;", PluginsConstants.RESPONSE, "error", "Lorg/telegram/tgnet/TLRPC$TL_error;", "executeUpdateHook", "Lorg/telegram/tgnet/TLRPC$Update;", "updateName", PluginsConstants.UPDATE, "executeUpdatesHook", "Lorg/telegram/tgnet/TLRPC$Updates;", "containerName", PluginsConstants.UPDATES, "executeSendMessageHook", "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;", "EngineHookCaller", "HookResult", "PluginValidationResult", "PluginsEngine", "SingletonHolder", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsController.kt\ncom/exteragram/messenger/plugins/PluginsController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1337:1\n1#2:1338\n41#3,12:1339\n41#3,12:1351\n1915#4,2:1363\n1915#4,2:1365\n*S KotlinDebug\n*F\n+ 1 PluginsController.kt\ncom/exteragram/messenger/plugins/PluginsController\n*L\n164#1:1339,12\n478#1:1351,12\n598#1:1363,2\n813#1:1365,2\n*E\n"})
public final class PluginsController implements PluginsHooks {
    public static final int PLUGIN_FILE_ICON_ID_START = 101;
    public static final int PLUGIN_FILE_ICON_NONE = -1;
    public static final String PREF_PLUGIN_ENABLED_KEY_PREFIX = "plugin_enabled_";
    private volatile Map<String, ? extends List<EventHookRecord>> exactMatchEventHooksCache;
    private final ConcurrentHashMap<Integer, Drawable> fileIconDrawablesById;
    private final ConcurrentHashMap<String, Integer> fileIconIdsByExtension;
    private final ConcurrentHashMap<String, Set<HookRecord>> hooks;
    private volatile boolean hooksCacheDirty;
    private final Object hooksCacheLock;
    private volatile boolean initialized;
    private final ConcurrentHashMap<String, List<String>> interestedPluginsCache;
    private final ConcurrentHashMap<String, MenuItemRecord> menuItemsById;
    private final ConcurrentHashMap<String, CopyOnWriteArrayList<MenuItemRecord>> menuItemsByMenuType;
    private final AtomicInteger nextFileIconId;
    private final ConcurrentHashMap<String, Plugin> plugins;
    private File pluginsDir;
    private SharedPreferences preferences;
    private final ConcurrentHashMap<String, List<SettingItem>> settings;
    private volatile List<EventHookRecord> substringMatchEventHooksCache;
    private final Runnable updateNotificationRunnable;
    private final PluginsWatchdog watchdog;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<String, PluginsEngine> enginesMap = new ConcurrentHashMap<>(MapsKt.mapOf(TuplesKt.to(PluginsConstants.PYTHON, new PythonPluginsEngine())));

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bâ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J-\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00018\u00002\u0006\u0010\b\u001a\u00020\tH&¢\u0006\u0002\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$EngineHookCaller;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "call", "Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "engine", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "obj", "pluginId", _UrlKt.FRAGMENT_ENCODE_SET, "(Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;Ljava/lang/Object;Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public interface EngineHookCaller<T> {
        HookResult<T> call(PluginsEngine engine, T obj, String pluginId);
    }

    @Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\b\u0010\b\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\nH&J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J(\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0013H&J \u0010\u0014\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0013H&J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u0011H&J\b\u0010\u0017\u001a\u00020\u0003H&J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0011H&J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0011H&J\u0018\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u0006\u0010\u0016\u001a\u00020\u0011H&J$\u0010\u001d\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001H&J\"\u0010 \u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\b\u0010!\u001a\u0004\u0018\u00010\u0001H&J\u0010\u0010\"\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u001c\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0002\b\u0003\u0018\u00010$2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0011H&J0\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010)2\u0006\u0010\u0010\u001a\u00020\u0011H&J:\u0010.\u001a\b\u0012\u0004\u0012\u00020/0(2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020,2\b\u00100\u001a\u0004\u0018\u00010)2\b\u00101\u001a\u0004\u0018\u0001022\u0006\u0010\u0010\u001a\u00020\u0011H&J0\u00103\u001a\b\u0012\u0004\u0012\u0002040(2\u0006\u00105\u001a\u00020\u00112\u0006\u0010+\u001a\u00020,2\b\u00106\u001a\u0004\u0018\u0001042\u0006\u0010\u0010\u001a\u00020\u0011H&J0\u00107\u001a\b\u0012\u0004\u0012\u0002080(2\u0006\u00109\u001a\u00020\u00112\u0006\u0010+\u001a\u00020,2\b\u0010:\u001a\u0004\u0018\u0001082\u0006\u0010\u0010\u001a\u00020\u0011H&J(\u0010;\u001a\b\u0012\u0004\u0012\u00020<0(2\u0006\u0010+\u001a\u00020,2\b\u0010=\u001a\u0004\u0018\u00010<2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0018\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020@2\u0006\u0010=\u001a\u00020AH&J4\u0010B\u001a\u00020\n2\u0006\u0010C\u001a\u00020\u00112\b\u0010D\u001a\u0004\u0018\u00010E2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00132\b\u0010F\u001a\u0004\u0018\u00010GH&J\u0018\u0010H\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010?\u001a\u00020@H&J\u0018\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020E2\u0006\u0010?\u001a\u00020@H&J \u0010J\u001a\u00020\n2\u0006\u0010I\u001a\u00020E2\u0006\u0010K\u001a\u00020\u00112\u0006\u0010?\u001a\u00020@H&J \u0010J\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010K\u001a\u00020\u00112\u0006\u0010?\u001a\u00020@H&¨\u0006LÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", _UrlKt.FRAGMENT_ENCODE_SET, "isPlugin", _UrlKt.FRAGMENT_ENCODE_SET, "file", "Ljava/io/File;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "isEngineAvailable", "init", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "Ljava/lang/Runnable;", "checkDevServer", "shutdown", "setPluginEnabled", "pluginId", _UrlKt.FRAGMENT_ENCODE_SET, "enabled", "Lorg/telegram/messenger/Utilities$Callback;", "deletePlugin", "getPluginPath", "id", "canOpenInExternalApp", "openInExternalApp", "sharePlugin", "loadPluginSettings", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "getPluginSetting", PluginsConstants.Settings.KEY, "defaultValue", "setPluginSetting", "value", "clearPluginSettings", "getAllPluginSettings", _UrlKt.FRAGMENT_ENCODE_SET, "executeOnAppEvent", "eventType", "executePreRequestHook", "Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "Lorg/telegram/tgnet/TLObject;", "requestName", "account", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, "executePostRequestHook", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;", PluginsConstants.RESPONSE, "error", "Lorg/telegram/tgnet/TLRPC$TL_error;", "executeUpdateHook", "Lorg/telegram/tgnet/TLRPC$Update;", "updateName", PluginsConstants.UPDATE, "executeUpdatesHook", "Lorg/telegram/tgnet/TLRPC$Updates;", "containerName", PluginsConstants.UPDATES, "executeSendMessageHook", "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;", PluginsConstants.PARAMS, "showInstallDialog", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "loadPluginFromFile", "filePath", "pluginMetadata", "Lcom/exteragram/messenger/plugins/Plugin;", "delegate", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "openPluginSettings", "plugin", "openPluginSetting", "linkAlias", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
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

        void setPluginEnabled(String pluginId, boolean enabled, Utilities.Callback<String> callback);

        void setPluginSetting(String pluginId, String key, Object value);

        void sharePlugin(String id);

        void showInstallDialog(BaseFragment fragment, InstallPluginBottomSheet.PluginInstallParams params);

        void shutdown(Runnable callback);
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
        this.hooksCacheLock = new Object();
        this.hooksCacheDirty = true;
        this.pluginsDir = new File(ApplicationLoader.getFilesDirFixed(), PluginsConstants.PLUGINS);
        this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("plugin_settings", 0);
        this.watchdog = new PluginsWatchdog(this);
        this.updateNotificationRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda15
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
        if (!INSTANCE.isPluginEngineSupported() || !ExteraConfig.getPluginsEngine()) {
            this.initialized = false;
            if (onDone != null) {
                onDone.run();
                return;
            }
            return;
        }
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
                            PluginsController.m2615$r8$lambda$CYXYoZ0xzdvzt3MkDUbIPdLop8();
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
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.m2619$r8$lambda$NrbUySgvJM8bTBfeR7YR1Brtxo(atomicInteger, this, onDone);
            }
        };
        INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.m2613$r8$lambda$8p8Kwkk37JFIqGET_TR6NbwgbQ(runnable);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$CYXYoZ0xzdvz-t3MkDUbIPdLop8, reason: not valid java name */
    public static void m2615$r8$lambda$CYXYoZ0xzdvzt3MkDUbIPdLop8() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            new SafeModeBottomSheet(lastFragment).show();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$NrbUy-SgvJM8bTBfeR7YR1Brtxo, reason: not valid java name */
    public static void m2619$r8$lambda$NrbUySgvJM8bTBfeR7YR1Brtxo(AtomicInteger atomicInteger, PluginsController pluginsController, Runnable runnable) {
        if (atomicInteger.incrementAndGet() >= INSTANCE.getEngines().size()) {
            pluginsController.initialized = true;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$8p8Kwk-k37JFIqGET_TR6NbwgbQ, reason: not valid java name */
    public static void m2613$r8$lambda$8p8Kwkk37JFIqGET_TR6NbwgbQ(Runnable runnable) {
        Iterator<PluginsEngine> it = INSTANCE.getEngines().values().iterator();
        while (it.hasNext()) {
            try {
                it.next().init(runnable);
            } catch (Throwable th) {
                FileLog.m991e("Failed to initialize plugin engine", th);
                runnable.run();
            }
        }
    }

    public final void checkDevServers() {
        Iterator<PluginsEngine> it = INSTANCE.getEngines().values().iterator();
        while (it.hasNext()) {
            it.next().checkDevServer();
        }
    }

    public final void shutdown(final Runnable onDone) {
        if (this.initialized) {
            INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    PluginsController.$r8$lambda$izbPeygnK0RqsbS2EM_K8BGUT8A(this.f$0, onDone);
                }
            });
        } else if (onDone != null) {
            onDone.run();
        }
    }

    public static void $r8$lambda$izbPeygnK0RqsbS2EM_K8BGUT8A(final PluginsController pluginsController, final Runnable runnable) {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.m2618$r8$lambda$JqkXOllW4WPbvRAkDKW_90FcXQ(atomicInteger, pluginsController, runnable);
            }
        };
        Iterator<PluginsEngine> it = INSTANCE.getEngines().values().iterator();
        while (it.hasNext()) {
            it.next().shutdown(runnable2);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$JqkXOllW4WPbvRAkDKW_90-FcXQ, reason: not valid java name */
    public static void m2618$r8$lambda$JqkXOllW4WPbvRAkDKW_90FcXQ(AtomicInteger atomicInteger, PluginsController pluginsController, Runnable runnable) {
        if (atomicInteger.incrementAndGet() >= INSTANCE.getEngines().size()) {
            pluginsController.watchdog.stop();
            pluginsController.plugins.clear();
            pluginsController.settings.clear();
            pluginsController.initialized = false;
            FileLog.m989d("Plugin system shut down.");
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public final void restart() {
        restart(ExteraConfig.getPluginsSafeMode());
    }

    public final void restart(final boolean startWithSafeMode) {
        FileLog.m989d("Restarting plugins engine...");
        shutdown(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$ZPkFPPTQ3SLZXEDTuCogRsCGwUM(this.f$0, startWithSafeMode);
            }
        });
    }

    public static void $r8$lambda$ZPkFPPTQ3SLZXEDTuCogRsCGwUM(PluginsController pluginsController, boolean z) {
        if (ExteraConfig.getPluginsEngine()) {
            pluginsController.init(z, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    FileLog.m989d("Plugins engine restarted.");
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
        return (pluginId == null || pluginId.length() == 0 || (plugin = this.plugins.get(pluginId)) == null || !plugin.isEnabled()) ? false : true;
    }

    public final boolean isPluginActive$TMessagesProj(Plugin plugin) {
        return plugin != null && this.plugins.get(plugin.getId()) == plugin && plugin.isEnabled();
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
        INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$GRs7We6PFyg6apyapVWYinmnxH0(this.f$0, pluginId, enabled, callback);
            }
        });
    }

    public static void $r8$lambda$GRs7We6PFyg6apyapVWYinmnxH0(PluginsController pluginsController, String str, boolean z, Utilities.Callback callback) {
        PluginsEngine pluginEngine = pluginsController.getPluginEngine(str);
        if (pluginEngine == null || str == null) {
            return;
        }
        pluginEngine.setPluginEnabled(str, z, callback);
        pluginsController.interestedPluginsCache.clear();
    }

    public final void deletePlugin(final String pluginId, final Utilities.Callback<String> callback) {
        INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$GqXcZtNTihu2o6QC3dyJOsjNgck(this.f$0, pluginId, callback);
            }
        });
    }

    public static void $r8$lambda$GqXcZtNTihu2o6QC3dyJOsjNgck(PluginsController pluginsController, String str, Utilities.Callback callback) {
        PluginsEngine pluginEngine = pluginsController.getPluginEngine(str);
        if (pluginEngine == null || str == null) {
            return;
        }
        pluginEngine.deletePlugin(str, callback);
    }

    public final void cleanupPlugin(String pluginId) {
        removeHooksByPluginId(pluginId);
        invalidatePluginSettings(pluginId);
        removeMenuItemsByPluginId(pluginId);
    }

    public final String getPluginPath(String id) {
        PluginsEngine pluginEngine;
        if (id == null || id.length() == 0 || (pluginEngine = getPluginEngine(id)) == null) {
            return null;
        }
        return pluginEngine.getPluginPath(id);
    }

    public final void showInstallDialog(BaseFragment fragment, MessageObject messageObject) {
        if (messageObject == null) {
            return;
        }
        showInstallDialog(fragment, InstallPluginBottomSheet.PluginInstallParams.INSTANCE.of(messageObject));
    }

    public final void showInstallDialog(BaseFragment fragment, String filePath, boolean trusted) {
        if (filePath == null || filePath.length() == 0) {
            return;
        }
        showInstallDialog(fragment, new InstallPluginBottomSheet.PluginInstallParams(filePath, trusted));
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
            BulletinFactory.of(fragment).createSimpleBulletin(C2665R.raw.error, LocaleController.formatString(C2665R.string.PluginNotEnabled, file.getName()), LocaleController.getString(C2665R.string.Enable), 2750, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda9
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
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                PluginsController.$r8$lambda$NIummZv5ylJ7GWVYy9_HekCWNy0(this.f$0, pluginId);
            }
        };
        if (isOnPluginsQueueThread()) {
            runnable.run();
        } else {
            INSTANCE.runOnPluginsQueue(runnable);
        }
    }

    public static void $r8$lambda$NIummZv5ylJ7GWVYy9_HekCWNy0(PluginsController pluginsController, String str) {
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
            FileLog.m989d("Registered settings for plugin " + str);
            pluginsController.notifyPluginSettingsRegistered(str);
        } catch (Throwable th) {
            FileLog.m992e(th);
            pluginsController.invalidatePluginSettings(str);
        }
    }

    public final boolean hasPluginSettings(String pluginId) {
        return (pluginId == null || pluginId.length() == 0 || !this.settings.containsKey(pluginId)) ? false : true;
    }

    public final void invalidatePluginSettings(String pluginId) {
        List<SettingItem> listRemove;
        if (pluginId == null || pluginId.length() == 0 || (listRemove = this.settings.remove(pluginId)) == null) {
            return;
        }
        Iterator<SettingItem> it = listRemove.iterator();
        while (it.hasNext()) {
            it.next().cleanup();
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
                FileLog.m991e("Error executing on_change callback for " + pluginId + "/" + key, e);
            }
        }
        loadPluginSettings(pluginId);
    }

    private final void addHook(String pluginId, HookRecord newHook, String logMessage) {
        if (pluginId == null || pluginId.length() == 0 || newHook == null) {
            return;
        }
        ConcurrentHashMap<String, Set<HookRecord>> concurrentHashMap = this.hooks;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PluginsController.$r8$lambda$bFCGo4qve6jYoEhoW_CcYQyIBq8((String) obj);
            }
        };
        if (concurrentHashMap.computeIfAbsent(pluginId, new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda19
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return PluginsController.m2624$r8$lambda$V9DYDu372WRW1KDk_icvlxw3nU(function1, obj);
            }
        }).add(newHook)) {
            FileLog.m989d(logMessage);
            this.interestedPluginsCache.clear();
            this.hooksCacheDirty = true;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$V9DYDu372WRW1KDk_icvlxw3n-U, reason: not valid java name */
    public static Set m2624$r8$lambda$V9DYDu372WRW1KDk_icvlxw3nU(Function1 function1, Object obj) {
        return (Set) function1.invoke(obj);
    }

    public static Set $r8$lambda$bFCGo4qve6jYoEhoW_CcYQyIBq8(String str) {
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
        FileLog.m989d(logMessage);
        this.interestedPluginsCache.clear();
        this.hooksCacheDirty = true;
    }

    public final void removeEventHook(String pluginId, final String hookName) {
        removeHook(pluginId, new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PluginsController.m2627$r8$lambda$irUSMfwTkkVsshZk4DQLFIDV2Q(hookName, (HookRecord) obj));
            }
        }, "Removed event hook(s) matching name '" + hookName + "' for plugin " + pluginId);
    }

    /* JADX INFO: renamed from: $r8$lambda$irUSMfwTkkVsshZ-k4DQLFIDV2Q, reason: not valid java name */
    public static boolean m2627$r8$lambda$irUSMfwTkkVsshZk4DQLFIDV2Q(String str, HookRecord hookRecord) {
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

    public final void removeXposedHook(String pluginId, final XC_MethodHook.Unhook unhook) {
        removeHook(pluginId, new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(PluginsController.$r8$lambda$htrrOUG8xUM_bIJfiVnNVxY_i18(unhook, (HookRecord) obj));
            }
        }, "Removed Xposed hook for plugin " + pluginId);
    }

    public static boolean $r8$lambda$htrrOUG8xUM_bIJfiVnNVxY_i18(XC_MethodHook.Unhook unhook, HookRecord hookRecord) {
        return (hookRecord instanceof XposedHookRecord) && ((XposedHookRecord) hookRecord).matches(unhook);
    }

    public final void removeHooksByPluginId(String pluginId) {
        Set<HookRecord> setRemove;
        if (pluginId == null || pluginId.length() == 0 || (setRemove = this.hooks.remove(pluginId)) == null) {
            return;
        }
        Iterator<HookRecord> it = setRemove.iterator();
        while (it.hasNext()) {
            it.next().cleanup();
        }
        FileLog.m989d("Removed all (" + setRemove.size() + ") hooks for plugin " + pluginId);
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
                    FileLog.m993w("Plugin " + pluginId + " tried to add a menu item: " + menuItemRecord.getItemId() + ", which is already used by plugin " + menuItemRecord2.getPluginId());
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
                        return PluginsController.$r8$lambda$PnMDHZ4aRveF9I0VgNHW2f1JUEU(menuItemRecord, (String) obj, (CopyOnWriteArrayList) obj2);
                    }
                };
                concurrentHashMap.compute(menuType, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda4
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return PluginsController.$r8$lambda$ObuTyILOrv8Lv83Lljknveq0jHI(function2, obj, obj2);
                    }
                });
                FileLog.m989d("Added menu item: " + menuItemRecord.getItemId() + " for plugin " + pluginId + " in type " + menuType);
                notifyMenuItemsUpdated();
                return menuItemRecord.getItemId();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static CopyOnWriteArrayList $r8$lambda$ObuTyILOrv8Lv83Lljknveq0jHI(Function2 function2, Object obj, Object obj2) {
        return (CopyOnWriteArrayList) function2.invoke(obj, obj2);
    }

    public static CopyOnWriteArrayList $r8$lambda$PnMDHZ4aRveF9I0VgNHW2f1JUEU(final MenuItemRecord menuItemRecord, String str, CopyOnWriteArrayList copyOnWriteArrayList) {
        ArrayList arrayList;
        if (copyOnWriteArrayList == null) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(copyOnWriteArrayList);
            CollectionsKt.removeAll((List) arrayList, new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda33
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(Intrinsics.areEqual(((MenuItemRecord) obj).getItemId(), menuItemRecord.getItemId()));
                }
            });
        }
        arrayList.add(menuItemRecord);
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda34
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(((MenuItemRecord) obj).getPriority());
            }
        };
        CollectionsKt.sortWith(arrayList, Comparator.comparingInt(new ToIntFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda35
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
        FileLog.m989d("Removed menu item: " + itemId + " for plugin " + pluginId);
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
        FileLog.m989d("Removed all menu items for plugin: " + pluginId);
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
            FileLog.m989d("Execute scripts on app event ".concat(eventType));
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
                        final Function2 function2 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda27
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                EventHookRecord eventHookRecord2 = eventHookRecord;
                                Integer num = (Integer) obj2;
                                return Integer.valueOf(num == null ? eventHookRecord2.getPriority() : Math.max(num.intValue(), eventHookRecord2.getPriority()));
                            }
                        };
                        map.compute(pluginId2, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda28
                            @Override // java.util.function.BiFunction
                            public final Object apply(Object obj, Object obj2) {
                                return PluginsController.$r8$lambda$TzwASltnFDcVN1Ktw3tUlrRKJck(function2, obj, obj2);
                            }
                        });
                    }
                }
            }
            for (final EventHookRecord eventHookRecord2 : this.substringMatchEventHooksCache) {
                if (eventHookRecord2.matches(eventName) && (pluginId = eventHookRecord2.getPluginId()) != null) {
                    final Function2 function22 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda29
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return PluginsController.$r8$lambda$QHTU7IyTiTCaSj6gAqHjOopsCdM(eventHookRecord2, (String) obj, (Integer) obj2);
                        }
                    };
                    map.compute(pluginId, new BiFunction() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda30
                        @Override // java.util.function.BiFunction
                        public final Object apply(Object obj, Object obj2) {
                            return PluginsController.$r8$lambda$SCSdz8X41keL06LCq_mlr4PCqFw(function22, obj, obj2);
                        }
                    });
                }
            }
            if (map.isEmpty()) {
                arrayList = Collections.EMPTY_LIST;
            } else {
                ArrayList<Map.Entry> arrayList2 = new ArrayList(map.entrySet());
                final Function2 function23 = new Function2() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda31
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return Integer.valueOf(PluginsController.m2621$r8$lambda$PUoMqcdhPvnEq59OGyGEAdPqA((Map.Entry) obj, (Map.Entry) obj2));
                    }
                };
                CollectionsKt.sortWith(arrayList2, new Comparator() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda32
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
                    FileLog.m989d("Calculated and cached potential plugins for '" + eventName + "': " + arrayList);
                    r0 = arrayList;
                }
            }
        }
        return r0 == 0 ? Collections.EMPTY_LIST : r0;
    }

    public static Integer $r8$lambda$TzwASltnFDcVN1Ktw3tUlrRKJck(Function2 function2, Object obj, Object obj2) {
        return (Integer) function2.invoke(obj, obj2);
    }

    public static Integer $r8$lambda$SCSdz8X41keL06LCq_mlr4PCqFw(Function2 function2, Object obj, Object obj2) {
        return (Integer) function2.invoke(obj, obj2);
    }

    public static Integer $r8$lambda$QHTU7IyTiTCaSj6gAqHjOopsCdM(EventHookRecord eventHookRecord, String str, Integer num) {
        if (num == null) {
            return Integer.valueOf(eventHookRecord.getPriority());
        }
        return Integer.valueOf(Math.max(num.intValue(), eventHookRecord.getPriority()));
    }

    /* JADX INFO: renamed from: $r8$lambda$PUoMq-cdhPvnEq59OGyG-EAdPqA, reason: not valid java name */
    public static int m2621$r8$lambda$PUoMqcdhPvnEq59OGyGEAdPqA(Map.Entry entry, Map.Entry entry2) {
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
                        Iterator<Set<HookRecord>> it = this.hooks.values().iterator();
                        while (it.hasNext()) {
                            for (HookRecord hookRecord : it.next()) {
                                if (hookRecord instanceof EventHookRecord) {
                                    if (((EventHookRecord) hookRecord).getMatchSubstring()) {
                                        arrayList.add(hookRecord);
                                    } else {
                                        String hookName = ((EventHookRecord) hookRecord).getHookName();
                                        if (hookName != null) {
                                            final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda20
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj) {
                                                    return PluginsController.$r8$lambda$WeWrzIubkO0GZO8e1wm7MHFmOjc((String) obj);
                                                }
                                            };
                                            ((List) map.computeIfAbsent(hookName, new Function() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda21
                                                @Override // java.util.function.Function
                                                public final Object apply(Object obj) {
                                                    return PluginsController.$r8$lambda$YLssiS3cthxbw0lcEiFr_hJJwFI(function1, obj);
                                                }
                                            })).add(hookRecord);
                                        }
                                    }
                                }
                            }
                        }
                        this.exactMatchEventHooksCache = map;
                        this.substringMatchEventHooksCache = arrayList;
                        this.hooksCacheDirty = false;
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static List $r8$lambda$WeWrzIubkO0GZO8e1wm7MHFmOjc(String str) {
        return new ArrayList();
    }

    public static List $r8$lambda$YLssiS3cthxbw0lcEiFr_hJJwFI(Function1 function1, Object obj) {
        return (List) function1.invoke(obj);
    }

    private final void ensurePreferences() {
        this.preferences = ApplicationLoader.applicationContext.getSharedPreferences("plugin_settings", 0);
    }

    private final boolean isOnPluginsQueueThread() {
        return (Utilities.pluginsQueue == null || Utilities.pluginsQueue.getHandler() == null || !Intrinsics.areEqual(Thread.currentThread(), Utilities.pluginsQueue.getHandler().getLooper().getThread())) ? false : true;
    }

    private final void notifyPluginSettingsRegistered(final String pluginId) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginSettingsRegistered, pluginId);
            }
        });
    }

    private final void notifyPluginSettingsUnregistered(final String pluginId) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginSettingsUnregistered, pluginId);
            }
        });
    }

    private final void notifyMenuItemsUpdated() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda11
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
        return (TLObject) executeGenericHook(requestName, request, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda22
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executePreRequestHook(requestName, account, (TLObject) obj, str);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public PluginsHooks.PostRequestResult executePostRequestHook(final String requestName, final int account, TLObject response, TLRPC.TL_error error) {
        PluginsHooks.PostRequestResult postRequestResult = (PluginsHooks.PostRequestResult) executeGenericHook(requestName, new PluginsHooks.PostRequestResult(response, error), new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda8
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
        return (TLRPC.Update) executeGenericHook(updateName, update, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda13
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeUpdateHook(updateName, account, (TLRPC.Update) obj, str);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public TLRPC.Updates executeUpdatesHook(final String containerName, final int account, TLRPC.Updates updates) {
        return (TLRPC.Updates) executeGenericHook(containerName, updates, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda25
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeUpdatesHook(containerName, account, (TLRPC.Updates) obj, str);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.hooks.PluginsHooks
    public SendMessagesHelper.SendMessageParams executeSendMessageHook(final int account, SendMessagesHelper.SendMessageParams params) {
        return (SendMessagesHelper.SendMessageParams) executeGenericHook(PluginsConstants.SEND_MESSAGE_HOOK, params, new EngineHookCaller() { // from class: com.exteragram.messenger.plugins.PluginsController$$ExternalSyntheticLambda16
            @Override // com.exteragram.messenger.plugins.PluginsController.EngineHookCaller
            public final PluginsController.HookResult call(PluginsController.PluginsEngine pluginsEngine, Object obj, String str) {
                return pluginsEngine.executeSendMessageHook(account, (SendMessagesHelper.SendMessageParams) obj, str);
            }
        });
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u001e\u0010\u0003\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u000f\"\u0004\b\u0012\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "result", "cancel", _UrlKt.FRAGMENT_ENCODE_SET, "isFinal", "<init>", "(Ljava/lang/Object;ZZ)V", "getResult", "()Ljava/lang/Object;", "setResult", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "getCancel", "()Z", "setCancel", "(Z)V", "setFinal", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
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

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;", _UrlKt.FRAGMENT_ENCODE_SET, "plugin", "Lcom/exteragram/messenger/plugins/Plugin;", "error", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/String;)V", "getPlugin", "()Lcom/exteragram/messenger/plugins/Plugin;", "setPlugin", "(Lcom/exteragram/messenger/plugins/Plugin;)V", "getError", "()Ljava/lang/String;", "setError", "(Ljava/lang/String;)V", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\b\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "INSTANCE", "Lcom/exteragram/messenger/plugins/PluginsController;", "getINSTANCE", "()Lcom/exteragram/messenger/plugins/PluginsController;", "INSTANCE$1", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
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

    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b0\nH\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\u001c\u0010\u000f\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0012\u0010\u0013\u001a\u00020\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0007J\b\u0010\u0015\u001a\u00020\u0014H\u0007J\u0012\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0007H\u0007J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0007J\b\u0010\u001c\u001a\u00020\u0019H\u0007J\b\u0010\u001d\u001a\u00020\u0019H\u0007J\b\u0010\u001e\u001a\u00020\u0014H\u0007J\u0012\u0010\u001f\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010!H\u0007J\u001c\u0010\u001f\u001a\u00020\u00192\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010 \u001a\u0004\u0018\u00010!H\u0007J\u0014\u0010$\u001a\u0004\u0018\u00010\u000b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0007J\u0012\u0010%\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010\u0005H\u0007J\u001c\u0010%\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010\u00052\b\u0010'\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010(\u001a\u00020\u00192\b\u0010&\u001a\u0004\u0018\u00010\u0005H\u0007J\u001a\u0010)\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010\u00052\u0006\u0010*\u001a\u00020\u0019H\u0007J\u0010\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020-H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/exteragram/messenger/plugins/PluginsController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "PREF_PLUGIN_ENABLED_KEY_PREFIX", _UrlKt.FRAGMENT_ENCODE_SET, "PLUGIN_FILE_ICON_NONE", _UrlKt.FRAGMENT_ENCODE_SET, "PLUGIN_FILE_ICON_ID_START", "enginesMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "getEngines", "getInstance", "Lcom/exteragram/messenger/plugins/PluginsController;", "registerFileIcon", "extension", "drawable", "Landroid/graphics/drawable/Drawable;", "unregisterFileIcon", _UrlKt.FRAGMENT_ENCODE_SET, "clearFileIcons", "getFileIconId", "fileName", "isPluginFileIcon", _UrlKt.FRAGMENT_ENCODE_SET, "icon", "getPluginFileIconDrawable", "isPluginEngineSupported", "isPluginEngineAvailable", "applyArtOpts", "isPlugin", "messageObject", "Lorg/telegram/messenger/MessageObject;", "file", "Ljava/io/File;", "getPluginEngine", "openPluginSettings", "pluginId", "linkAlias", "isPluginPinned", "setPluginPinned", "isPinned", "runOnPluginsQueue", "runnable", "Ljava/lang/Runnable;", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
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
            if (isPluginEngineSupported() && ExteraConfig.getPluginsEngine() && !ExteraConfig.getPluginsSafeMode()) {
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
                            FileLog.m991e("Error checking engine availability.", th);
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
                    FileLog.m992e(th);
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
                BulletinFactory.of(lastFragment).createSimpleBulletin(C2665R.raw.error, LocaleController.formatString(C2665R.string.PluginEngineNotEnabled, pluginId), LocaleController.getString(C2665R.string.Enable), 2750, new Runnable() { // from class: com.exteragram.messenger.plugins.PluginsController$Companion$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        lastFragment.presentFragment(new PluginsActivity());
                    }
                }).show();
                return;
            }
            Plugin plugin = getInstance().getPlugins().get(pluginId);
            if (plugin == null) {
                BulletinFactory.of(lastFragment).createEmojiBulletin("🤷\u200d♂️", LocaleController.formatString(C2665R.string.PluginNotFound, pluginId)).show();
                return;
            }
            if (!getInstance().hasPluginSettings(pluginId)) {
                BulletinFactory.of(lastFragment).createEmojiBulletin("🤷\u200d♂️", LocaleController.formatString(C2665R.string.PluginHasNoSettings, plugin.getName())).show();
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
