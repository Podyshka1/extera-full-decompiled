package com.exteragram.messenger.plugins;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import androidx.core.content.FileProvider;
import androidx.mediarouter.media.MediaRouteProviderProtocol;
import com.android.dx.rop.code.RegisterSpec;
import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.PythonPluginsEngine;
import com.exteragram.messenger.plugins.hooks.PluginsHooks;
import com.exteragram.messenger.plugins.models.CustomSetting;
import com.exteragram.messenger.plugins.models.DividerSetting;
import com.exteragram.messenger.plugins.models.EditTextSetting;
import com.exteragram.messenger.plugins.models.HeaderSetting;
import com.exteragram.messenger.plugins.models.InputSetting;
import com.exteragram.messenger.plugins.models.SelectorSetting;
import com.exteragram.messenger.plugins.models.SettingItem;
import com.exteragram.messenger.plugins.models.SwitchSetting;
import com.exteragram.messenger.plugins.models.TextSetting;
import com.exteragram.messenger.plugins.pip.PipController;
import com.exteragram.messenger.plugins.ui.PluginSettingsActivity;
import com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheet;
import com.exteragram.messenger.plugins.ui.components.PluginFileViewer;
import com.exteragram.messenger.plugins.utils.PyObjectUtils;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.gms.cast.MediaError;
import com.sun.jna.Callback;
import java.io.BufferedReader;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.random.RandomKt$$ExternalSyntheticBUOutline0;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.time.DurationKt;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.simplifiles.SimpliFiles;
import org.simplifiles.archive.ArchiveExtractionOptions;
import org.simplifiles.archive.ExtractionTargetPolicy;
import org.simplifiles.archive.security.SecurityPolicy;
import org.simplifiles.files.OverwritePolicy;
import org.simplifiles.files.SimpliFile;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 \u009b\u00012\u00020\u0001:\u0006\u009b\u0001\u009c\u0001\u009d\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0011H\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0002J\u001c\u0010 \u001a\u00020\u000f2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020\u000fH\u0016J\b\u0010&\u001a\u00020\u0007H\u0002J\u0018\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020\u000fH\u0002J\b\u0010*\u001a\u00020\u000fH\u0002J\b\u0010+\u001a\u00020\u001fH\u0002J \u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u0006H\u0002J\u0010\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u000201H\u0016J\b\u00102\u001a\u00020\u001fH\u0016J\b\u00103\u001a\u00020\u001fH\u0002J\b\u00104\u001a\u00020\u001fH\u0002J\u0010\u00105\u001a\u00020\u001f2\u0006\u00100\u001a\u000201H\u0016J\u0010\u00106\u001a\u00020\u001f2\b\u00100\u001a\u0004\u0018\u000101J\u0016\u00107\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0006J \u00107\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\b\u0010:\u001a\u0004\u0018\u00010;J*\u00107\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\b\u0010:\u001a\u0004\u0018\u00010;2\b\u0010<\u001a\u0004\u0018\u00010=J\"\u0010>\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u0010?\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=H\u0002J&\u0010@\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u0010A\u001a\u00020\u00062\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00060CH\u0002J\u0010\u0010D\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u0006H\u0002J\b\u0010E\u001a\u00020\u001fH\u0002J\u0018\u0010F\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u0006H\u0002J\b\u0010H\u001a\u00020\u001fH\u0002J\u0018\u0010I\u001a\u00020\u001f2\u0006\u0010J\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u0006H\u0002J*\u0010K\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010?\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=H\u0002J\u000e\u0010L\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u0006J\u001a\u0010M\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\b\u0010N\u001a\u0004\u0018\u00010\"H\u0002J\"\u0010O\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u00062\b\u0010N\u001a\u0004\u0018\u00010\"H\u0002J(\u0010P\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u000f2\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010RH\u0016J \u0010S\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010RH\u0016J\u0010\u0010T\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0006H\u0016J\b\u0010V\u001a\u00020\u000fH\u0016J\u0010\u0010W\u001a\u00020\u001f2\u0006\u0010U\u001a\u00020\u0006H\u0016J\u0010\u0010X\u001a\u00020\u001f2\u0006\u0010U\u001a\u00020\u0006H\u0016J(\u0010Y\u001a\u00020\u001f2\u0006\u00109\u001a\u00020\u00062\b\u0010?\u001a\u0004\u0018\u00010;2\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010RJ2\u0010Y\u001a\u00020\u001f2\u0006\u00109\u001a\u00020\u00062\b\u0010?\u001a\u0004\u0018\u00010;2\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010R2\b\u0010<\u001a\u0004\u0018\u00010=J\u0012\u0010Z\u001a\u0004\u0018\u00010\u00062\u0006\u00108\u001a\u00020\u0006H\u0002J\u000e\u0010[\u001a\u00020\\2\u0006\u00109\u001a\u00020\u0006J\u001a\u0010]\u001a\b\u0012\u0004\u0012\u00020_0^2\f\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00070^J\u0018\u0010a\u001a\n\u0012\u0004\u0012\u00020_\u0018\u00010^2\u0006\u0010U\u001a\u00020\u0006H\u0016J\u0010\u0010b\u001a\u00020\u001f2\u0006\u0010c\u001a\u00020\u0006H\u0016J_\u0010d\u001a\b\u0012\u0004\u0012\u0002Hf0e\"\u0004\b\u0000\u0010f2\b\u0010g\u001a\u0004\u0018\u00010\u00072\b\u0010h\u001a\u0004\u0018\u0001Hf2\f\u0010i\u001a\b\u0012\u0004\u0012\u0002Hf0j2\u0006\u0010k\u001a\u00020\u00062\f\u0010l\u001a\b\u0012\u0004\u0012\u0002Hf0m2\f\u0010n\u001a\b\u0012\u0004\u0012\u00020o0RH\u0002¢\u0006\u0002\u0010pJ]\u0010d\u001a\b\u0012\u0004\u0012\u0002Hf0e\"\u0004\b\u0000\u0010f2\u0006\u00108\u001a\u00020\u00062\b\u0010h\u001a\u0004\u0018\u0001Hf2\f\u0010i\u001a\b\u0012\u0004\u0012\u0002Hf0j2\u0006\u0010k\u001a\u00020\u00062\f\u0010l\u001a\b\u0012\u0004\u0012\u0002Hf0m2\f\u0010n\u001a\b\u0012\u0004\u0012\u00020o0RH\u0002¢\u0006\u0002\u0010qJ0\u0010r\u001a\b\u0012\u0004\u0012\u00020s0e2\u0006\u0010t\u001a\u00020\u00062\u0006\u0010u\u001a\u00020v2\b\u0010w\u001a\u0004\u0018\u00010s2\u0006\u00108\u001a\u00020\u0006H\u0016J:\u0010x\u001a\b\u0012\u0004\u0012\u00020y0e2\u0006\u0010t\u001a\u00020\u00062\u0006\u0010u\u001a\u00020v2\b\u0010z\u001a\u0004\u0018\u00010s2\b\u0010{\u001a\u0004\u0018\u00010|2\b\u0010g\u001a\u0004\u0018\u00010\u0007J:\u0010x\u001a\b\u0012\u0004\u0012\u00020y0e2\u0006\u0010t\u001a\u00020\u00062\u0006\u0010u\u001a\u00020v2\b\u0010z\u001a\u0004\u0018\u00010s2\b\u0010{\u001a\u0004\u0018\u00010|2\u0006\u00108\u001a\u00020\u0006H\u0016J1\u0010}\u001a\b\u0012\u0004\u0012\u00020~0e2\u0006\u0010\u007f\u001a\u00020\u00062\u0006\u0010u\u001a\u00020v2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010~2\u0006\u00108\u001a\u00020\u0006H\u0016J5\u0010\u0081\u0001\u001a\t\u0012\u0005\u0012\u00030\u0082\u00010e2\u0007\u0010\u0083\u0001\u001a\u00020\u00062\u0006\u0010u\u001a\u00020v2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0082\u00012\u0006\u00108\u001a\u00020\u0006H\u0016J,\u0010\u0085\u0001\u001a\t\u0012\u0005\u0012\u00030\u0086\u00010e2\u0006\u0010u\u001a\u00020v2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00012\u0006\u00108\u001a\u00020\u0006H\u0016J\u001c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00062\b\u00109\u001a\u0004\u0018\u00010\u00062\u0007\u0010\u0089\u0001\u001a\u00020\u0006J\u001e\u0010\u008a\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u008b\u00012\b\u00109\u001a\u0004\u0018\u00010\u0006J'\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020\u00062\u0007\u0010\u008d\u0001\u001a\u00020\u00062\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000bH\u0016J%\u0010\u008f\u0001\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0007\u0010\u008d\u0001\u001a\u00020\u00062\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000bH\u0016J\u0011\u0010\u0091\u0001\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u0006H\u0016J\u001e\u0010\u0092\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u0003\u0018\u00010\u008b\u00012\u0006\u00108\u001a\u00020\u0006H\u0016J\u001d\u0010\u0093\u0001\u001a\u00020\u001f2\b\u0010\u0094\u0001\u001a\u00030\u0095\u00012\b\u0010\u0087\u0001\u001a\u00030\u0096\u0001H\u0016J\u001b\u0010\u0097\u0001\u001a\u00020\u001f2\u0006\u0010U\u001a\u00020\u00062\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J\u001c\u0010\u0097\u0001\u001a\u00020\u001f2\u0007\u0010\u0098\u0001\u001a\u00020;2\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J%\u0010\u0099\u0001\u001a\u00020\u001f2\u0007\u0010\u0098\u0001\u001a\u00020;2\u0007\u0010\u009a\u0001\u001a\u00020\u00062\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016J$\u0010\u0099\u0001\u001a\u00020\u001f2\u0006\u00108\u001a\u00020\u00062\u0007\u0010\u009a\u0001\u001a\u00020\u00062\b\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR(\u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000RN\u0010\f\u001aB\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00060\u0006\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u000f0\u000f \u000e* \u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00060\u0006\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u000f0\u000f\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017¨\u0006\u009e\u0001"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine;", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "<init>", "()V", "pluginInstances", "Ljava/util/concurrent/ConcurrentHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/chaquo/python/PyObject;", "getPluginInstances", "()Ljava/util/concurrent/ConcurrentHashMap;", "settingsCache", _UrlKt.FRAGMENT_ENCODE_SET, "dependencyPaths", "Ljava/util/concurrent/ConcurrentHashMap$KeySetView;", "kotlin.jvm.PlatformType", _UrlKt.FRAGMENT_ENCODE_SET, "python", "Lcom/chaquo/python/Python;", "devServerClass", "debuggerListener", "getDebuggerListener", "()Lcom/chaquo/python/PyObject;", "setDebuggerListener", "(Lcom/chaquo/python/PyObject;)V", "basePluginClass", "getBasePluginClass", "setBasePluginClass", "getPluginsController", "Lcom/exteragram/messenger/plugins/PluginsController;", "getPython", "initPython", _UrlKt.FRAGMENT_ENCODE_SET, "isPlugin", "file", "Ljava/io/File;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "isEngineAvailable", "requireBasePluginClass", "installSdkArchive", "archiveFile", "fromApk", "initSdk", "stopAndUnloadSdk", "removeModulesRecursive", "sysModules", "prefix", "init", Callback.METHOD_NAME, "Ljava/lang/Runnable;", "checkDevServer", "runDevServer", "stopDevServer", "shutdown", "loadPlugins", "loadPlugin", "pluginId", "filePath", "metadata", "Lcom/exteragram/messenger/plugins/Plugin;", "delegate", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "installPluginDependencies", "pluginMetadata", "disableShadowedPlugins", "dependencyName", "providedModules", _UrlKt.FRAGMENT_ENCODE_SET, "removePluginDependencies", "pruneDependencyPaths", "removeModulesUnderPath", "path", "removePluginPathsFromSysPath", "removeFromSysPath", "sysPath", "createPluginInstance", "unloadPlugin", "refreshImportCaches", "moduleDir", "evictPluginModule", "setPluginEnabled", "enabled", "Lorg/telegram/messenger/Utilities$Callback;", "deletePlugin", "getPluginPath", "id", "canOpenInExternalApp", "openInExternalApp", "sharePlugin", "loadPluginFromFile", "findModuleNameOwner", "validatePluginFromFile", "Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;", "parsePySettingDefinitions", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "pyDefinitionsList", "loadPluginSettings", "executeOnAppEvent", "eventType", "executeHook", "Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "T", "pluginInstance", "initialValue", "valueClass", "Ljava/lang/Class;", "pyResultKey", "caller", "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;", "errorLogger", "Lcom/chaquo/python/PyException;", "(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "executePreRequestHook", "Lorg/telegram/tgnet/TLObject;", "requestName", "account", _UrlKt.FRAGMENT_ENCODE_SET, "request", "executePostRequestHook", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;", "response", MediaRouteProviderProtocol.SERVICE_DATA_ERROR, "Lorg/telegram/tgnet/TLRPC$TL_error;", "executeUpdateHook", "Lorg/telegram/tgnet/TLRPC$Update;", "updateName", "update", "executeUpdatesHook", "Lorg/telegram/tgnet/TLRPC$Updates;", "containerName", "updates", "executeSendMessageHook", "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;", "params", "fetchParameterValue", "parameterName", "parsePluginMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "getPluginSetting", "key", "defaultValue", "setPluginSetting", "value", "clearPluginSettings", "getAllPluginSettings", "showInstallDialog", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "openPluginSettings", "plugin", "openPluginSetting", "linkAlias", "Companion", "PyMethodCaller", "Updater", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPythonPluginsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,2775:1\n1#2:2776\n41#3,12:2777\n41#3,12:2795\n41#3,12:2810\n41#3,12:2822\n41#3,12:2834\n1300#4,2:2789\n1315#4,4:2791\n777#4:2807\n873#4,2:2808\n1586#4:2846\n1661#4,3:2847\n296#4,2:2850\n1586#4:2852\n1661#4,3:2853\n777#4:2856\n873#4,2:2857\n1834#4,4:2859\n37#5,2:2863\n*S KotlinDebug\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine\n*L\n502#1:2777,12\n792#1:2795,12\n1039#1:2810,12\n1044#1:2822,12\n1059#1:2834,12\n752#1:2789,2\n752#1:2791,4\n814#1:2807\n814#1:2808,2\n1281#1:2846\n1281#1:2847,3\n1282#1:2850,2\n1400#1:2852\n1400#1:2853,3\n1401#1:2856\n1401#1:2857,2\n669#1:2859,4\n2093#1:2863,2\n*E\n"})
public final class PythonPluginsEngine implements PluginsController.PluginsEngine {
    private static final long MAX_SDK_VERSION_BYTES = 65536;
    private static boolean SDK_BETA;
    private static File SDK_DIR;
    private static String SDK_VERSION;
    private static volatile boolean sdkInitialized;
    private volatile PyObject basePluginClass;
    private PyObject debuggerListener;
    private PyObject devServerClass;
    private volatile Python python;
    private static final String SAFE_MODE_ENABLE_ERROR = Deobfuscator$exteraGramDev$TMessagesProj.getString(-104601650218543L);

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Pattern VERSION_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-105374744331823L));
    private static final String[] SDK_REQUIRED_MODULES = {Deobfuscator$exteraGramDev$TMessagesProj.getString(-105542248056367L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-105039736882735L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-105022557013551L)};
    private static final SecurityPolicy SDK_ARCHIVE_POLICY = SecurityPolicy.INSTANCE.builder().maxEntries(100000).maxTotalUncompressedSize(2147483648L).maxSingleFileSize(536870912).maxCompressionRatio(500.0d).build();
    private static final ArchiveExtractionOptions SDK_ARCHIVE_OPTIONS = ArchiveExtractionOptions.INSTANCE.builder().targetPolicy(ExtractionTargetPolicy.REPLACE).build();
    private final ConcurrentHashMap<String, PyObject> pluginInstances = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> settingsCache = new ConcurrentHashMap<>();
    private final ConcurrentHashMap.KeySetView<String, Boolean> dependencyPaths = ConcurrentHashMap.newKeySet();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bâ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J!\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0002\u0010\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "call", "Lcom/chaquo/python/PyObject;", "instance", "value", "(Lcom/chaquo/python/PyObject;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public interface PyMethodCaller<T> {
        PyObject call(PyObject instance, T value);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean canOpenInExternalApp() {
        return true;
    }

    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\tH\u0002J\u0012\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u001eH\u0002J\u0012\u0010&\u001a\u00020\u00182\b\u0010!\u001a\u0004\u0018\u00010\u001eH\u0002J\u0014\u0010'\u001a\u0004\u0018\u00010\t2\b\u0010(\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010)\u001a\b\u0012\u0004\u0012\u00020\t0*2\b\u0010+\u001a\u0004\u0018\u00010\u001eH\u0002R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "VERSION_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "SDK_REQUIRED_MODULES", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", "SDK_ARCHIVE_POLICY", "Lorg/simplifiles/archive/security/SecurityPolicy;", "SDK_ARCHIVE_OPTIONS", "Lorg/simplifiles/archive/ArchiveExtractionOptions;", "MAX_SDK_VERSION_BYTES", _UrlKt.FRAGMENT_ENCODE_SET, "SAFE_MODE_ENABLE_ERROR", "SDK_VERSION", "getSDK_VERSION", "()Ljava/lang/String;", "setSDK_VERSION", "(Ljava/lang/String;)V", "SDK_BETA", _UrlKt.FRAGMENT_ENCODE_SET, "getSDK_BETA", "()Z", "setSDK_BETA", "(Z)V", "SDK_DIR", "Ljava/io/File;", "sdkInitialized", "sdkModuleExists", "sdkDir", "moduleName", "deleteFileIfExists", _UrlKt.FRAGMENT_ENCODE_SET, "file", "isSdkDirValid", "canonicalPathOrNull", "path", "topLevelModuleNames", _UrlKt.FRAGMENT_ENCODE_SET, "dir", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPythonPluginsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2775:1\n1#2:2776\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getSDK_VERSION() {
            return PythonPluginsEngine.SDK_VERSION;
        }

        public final void setSDK_VERSION(String str) {
            PythonPluginsEngine.SDK_VERSION = str;
        }

        public final boolean getSDK_BETA() {
            return PythonPluginsEngine.SDK_BETA;
        }

        public final void setSDK_BETA(boolean z) {
            PythonPluginsEngine.SDK_BETA = z;
        }

        private final boolean sdkModuleExists(File sdkDir, String moduleName) {
            if (new File(sdkDir, moduleName + Deobfuscator$exteraGramDev$TMessagesProj.getString(-131763023398447L)).exists()) {
                return true;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(moduleName);
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-131848922744367L));
            return new File(sdkDir, sb.toString()).exists();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void deleteFileIfExists(File file) {
            Object objM3291constructorimpl;
            if (file == null || !file.exists()) {
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(Boolean.valueOf(SimpliFiles.file(file).delete()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
            if (thM3294exceptionOrNullimpl != null) {
                FileLog.m898e(thM3294exceptionOrNullimpl);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSdkDirValid(File sdkDir) {
            if (sdkDir == null || !sdkDir.isDirectory()) {
                return false;
            }
            for (String str : PythonPluginsEngine.SDK_REQUIRED_MODULES) {
                if (!sdkModuleExists(sdkDir, str)) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String canonicalPathOrNull(String path) {
            Object objM3291constructorimpl;
            if (path == null || path.length() == 0) {
                return null;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(new File(path).getCanonicalPath());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
            }
            return (String) (Result.m3297isFailureimpl(objM3291constructorimpl) ? null : objM3291constructorimpl);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<String> topLevelModuleNames(File dir) {
            File[] fileArrListFiles;
            if (dir == null || (fileArrListFiles = dir.listFiles()) == null) {
                return SetsKt.emptySet();
            }
            HashSet hashSet = new HashSet();
            for (File file : fileArrListFiles) {
                String name = file.getName();
                if (file.isDirectory()) {
                    if (!Intrinsics.areEqual(name, Deobfuscator$exteraGramDev$TMessagesProj.getString(-131810268038703L)) && !StringsKt.endsWith$default(name, Deobfuscator$exteraGramDev$TMessagesProj.getString(-131930527122991L), false, 2, (Object) null) && !StringsKt.endsWith$default(name, Deobfuscator$exteraGramDev$TMessagesProj.getString(-131900462351919L), false, 2, (Object) null)) {
                        hashSet.add(name);
                    }
                } else if (StringsKt.endsWith$default(name, Deobfuscator$exteraGramDev$TMessagesProj.getString(-131445195818543L), false, 2, (Object) null) || StringsKt.endsWith$default(name, Deobfuscator$exteraGramDev$TMessagesProj.getString(-131393656210991L), false, 2, (Object) null) || StringsKt.endsWith$default(name, Deobfuscator$exteraGramDev$TMessagesProj.getString(-131423720982063L), false, 2, (Object) null)) {
                    hashSet.add(StringsKt.substringBefore$default(name, '.', (String) null, 2, (Object) null));
                }
            }
            return hashSet;
        }
    }

    public final ConcurrentHashMap<String, PyObject> getPluginInstances() {
        return this.pluginInstances;
    }

    public final PyObject getDebuggerListener() {
        return this.debuggerListener;
    }

    public final void setDebuggerListener(PyObject pyObject) {
        this.debuggerListener = pyObject;
    }

    public final PyObject getBasePluginClass() {
        return this.basePluginClass;
    }

    public final void setBasePluginClass(PyObject pyObject) {
        this.basePluginClass = pyObject;
    }

    private final PluginsController getPluginsController() {
        return PluginsController.INSTANCE.getInstance();
    }

    private final synchronized Python getPython() {
        if (this.python == null) {
            initPython();
            if (this.python == null) {
                FileLog.m896e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137183272125999L));
                return null;
            }
        }
        return this.python;
    }

    private final void initPython() {
        try {
            if (!Python.isStarted()) {
                Python.start(new AndroidPlatform(ApplicationLoader.applicationContext));
            }
            this.python = Python.getInstance();
        } catch (Exception e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-137402315458095L), e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean isPlugin(File file, MessageObject messageObject) {
        if (file == null) {
            return false;
        }
        String name = file.getName();
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-136972818728495L);
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-137088782845487L);
        return StringsKt.endsWith$default(lowerCase, Deobfuscator$exteraGramDev$TMessagesProj.getString(-137101667747375L), false, 2, (Object) null);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean isEngineAvailable() {
        return getPython() != null && Python.isStarted() && sdkInitialized && this.basePluginClass != null;
    }

    private final synchronized PyObject requireBasePluginClass() {
        try {
            if (ExteraConfig.getPluginsSafeMode()) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135555479520815L));
            }
            if (!sdkInitialized) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135778817820207L));
            }
            PyObject pyObject = this.basePluginClass;
            if (pyObject != null) {
                return pyObject;
            }
            Python python = this.python;
            if (python == null) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135310666384943L));
            }
            try {
                PyObject pyObject2 = (PyObject) python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135473875142191L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-136075170563631L));
                if (pyObject2 != null) {
                    this.basePluginClass = pyObject2;
                    return pyObject2;
                }
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-136199724615215L));
            } catch (Throwable th) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135856127231535L), th);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private final void installSdkArchive(File archiveFile, boolean fromApk) {
        Object objM3291constructorimpl;
        File file = SDK_DIR;
        if (file == null) {
            RandomKt$$ExternalSyntheticBUOutline0.m801m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-136032220890671L));
            return;
        }
        File file2 = new File(file.getParentFile(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-134430198089263L));
        try {
            SimpliFiles.archive(archiveFile).withPolicy(SDK_ARCHIVE_POLICY).extractToDirectory(file2, SDK_ARCHIVE_OPTIONS);
            if (!INSTANCE.isSdkDirValid(file2)) {
                throw new IOException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-134498917565999L));
            }
            SimpliFiles.directory(file2).moveTo(file, OverwritePolicy.REPLACE);
            Updater.INSTANCE.setBuildFromApk(fromApk);
        } finally {
            if (file2.exists()) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(Boolean.valueOf(SimpliFiles.directory(file2).deleteRecursively()));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                if (thM3294exceptionOrNullimpl != null) {
                    FileLog.m898e(thM3294exceptionOrNullimpl);
                }
            }
            if (!file.exists()) {
                SimpliFiles.directory(file).create();
            }
        }
    }

    private final boolean initSdk() {
        String str;
        Boolean bool;
        BufferedReader bufferedReader;
        sdkInitialized = false;
        Python python = this.python;
        if (python == null) {
            return false;
        }
        if (SDK_DIR == null) {
            File file = new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-134258399397423L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-134219744691759L));
            SDK_DIR = file;
            if (!file.exists()) {
                File file2 = SDK_DIR;
                if (file2 == null) {
                    RandomKt$$ExternalSyntheticBUOutline0.m801m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135005723706927L));
                    return false;
                }
                SimpliFiles.directory(file2).create();
            }
        }
        File file3 = SDK_DIR;
        if (file3 == null) {
            RandomKt$$ExternalSyntheticBUOutline0.m801m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135035788477999L));
            return false;
        }
        Updater.Companion companion = Updater.INSTANCE;
        File fileRequestSdkFromApkFile = companion.requestSdkFromApkFile();
        File pythonSdkUpdateFile = companion.getPythonSdkUpdateFile();
        File pythonCurrentSdkFile = companion.getPythonCurrentSdkFile();
        boolean zExists = fileRequestSdkFromApkFile.exists();
        if (zExists) {
            SimpliFiles.directory(file3).clean();
            INSTANCE.deleteFileIfExists(fileRequestSdkFromApkFile);
        }
        boolean z = true;
        if (!zExists && pythonSdkUpdateFile.exists()) {
            try {
                SimpliFiles.file(pythonSdkUpdateFile).copyTo(pythonCurrentSdkFile, OverwritePolicy.REPLACE);
                installSdkArchive(pythonCurrentSdkFile, false);
            } catch (IOException e) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-135220472071727L), e);
                zExists = true;
            }
        }
        File file4 = new File(file3, Deobfuscator$exteraGramDev$TMessagesProj.getString(-134786680374831L));
        if (file4.exists()) {
            String string = StringsKt.trim((CharSequence) SimpliFile.readText$default(SimpliFiles.file(file4), 65536L, null, 2, null)).toString();
            boolean zEndsWith$default = StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-134881169655343L), false, 2, (Object) null);
            String strSubstringBefore$default = StringsKt.substringBefore$default(string, '|', (String) null, 2, (Object) null);
            try {
                InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open(Deobfuscator$exteraGramDev$TMessagesProj.getString(-134833925015087L));
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, StandardCharsets.UTF_8));
                } finally {
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append('\n');
                    }
                    String string2 = sb.toString();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-134919824361007L);
                    try {
                    } catch (NumberFormatException e2) {
                        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-133343571363375L), e2);
                    }
                    if (AppUtils.compareVersions(zEndsWith$default ? Deobfuscator$exteraGramDev$TMessagesProj.getString(-133330686461487L) : Deobfuscator$exteraGramDev$TMessagesProj.getString(-133334981428783L), StringsKt.trim((CharSequence) string2).toString(), strSubstringBefore$default)) {
                        zExists = true;
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(bufferedReader, null);
                    CloseableKt.closeFinally(inputStreamOpen, null);
                } finally {
                }
            } catch (IOException e3) {
                Make$Map$$ExternalSyntheticBUOutline0.m877m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-133047218619951L), e3);
                return false;
            }
        }
        if (zExists || !INSTANCE.isSdkDirValid(file3)) {
            if (!zExists) {
                FileLog.m899w(Deobfuscator$exteraGramDev$TMessagesProj.getString(-133914802013743L));
            }
            SimpliFiles.directory(file3).clean();
            try {
                InputStream inputStreamSdkFromApk = Updater.INSTANCE.sdkFromApk();
                try {
                    SimpliFile.writeFromAtomic$default(SimpliFiles.file(pythonCurrentSdkFile), inputStreamSdkFromApk, 0L, 2, null);
                    CloseableKt.closeFinally(inputStreamSdkFromApk, null);
                    installSdkArchive(pythonCurrentSdkFile, true);
                } finally {
                }
            } catch (IOException e4) {
                Make$Map$$ExternalSyntheticBUOutline0.m877m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-133605564368431L), e4);
                return false;
            }
        }
        Updater.INSTANCE.deleteSdkUpdateFile();
        PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-133837492602415L));
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-133854672471599L);
        PyObject pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-132261239604783L));
        if (pyObject != null) {
            pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132222584899119L), file3.getAbsolutePath());
        }
        try {
            PyObject module2 = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132244059735599L));
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-132308484245039L);
            PyObject pyObjectCallAttr = module2.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132364318819887L), new Object[0]);
            if (pyObjectCallAttr == null || !pyObjectCallAttr.toBoolean()) {
                z = false;
            }
            sdkInitialized = z;
            PyObject pyObject2 = (PyObject) module2.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-132475987969583L));
            if (pyObject2 == null || (str = (String) pyObject2.toJava(String.class)) == null) {
                str = SDK_VERSION;
            }
            SDK_VERSION = str;
            PyObject pyObject3 = (PyObject) module2.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-131977771763247L));
            SDK_BETA = (pyObject3 == null || (bool = (Boolean) pyObject3.toJava(Boolean.TYPE)) == null) ? SDK_BETA : bool.booleanValue();
            if (this.basePluginClass == null && sdkInitialized && !ExteraConfig.getPluginsSafeMode()) {
                try {
                    requireBasePluginClass();
                } catch (Exception e5) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132948434372143L), e5);
                }
            }
            return sdkInitialized;
        } catch (Throwable th) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-131956296926767L), th);
            try {
                Updater.INSTANCE.restoreSdkFromApk();
            } catch (Throwable th2) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132205405029935L), th2);
            }
            return false;
        }
    }

    private final void stopAndUnloadSdk() {
        Python python = this.python;
        if (python == null) {
            return;
        }
        this.basePluginClass = null;
        PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132536117511727L));
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-132553297380911L);
        PyObject pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-132626311824943L));
        if (pyObject != null) {
            try {
                PyObject pyObjectCallAttr = pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132591952086575L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-132677851432495L));
                if (pyObjectCallAttr != null) {
                    pyObjectCallAttr.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132656376596015L), new Object[0]);
                }
            } catch (Throwable th) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-132703621236271L), th);
            }
        }
        sdkInitialized = false;
        File file = SDK_DIR;
        PyObject pyObject2 = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-113616786572847L));
        if (file != null && pyObject2 != null && pyObject2.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113698390951471L), file.getAbsolutePath()).toBoolean()) {
            pyObject2.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113694095984175L), file.getAbsolutePath());
        }
        if (file == null || pyObject == null) {
            return;
        }
        removeModulesRecursive(pyObject, file, Deobfuscator$exteraGramDev$TMessagesProj.getString(-113784290297391L));
    }

    private final void removeModulesRecursive(PyObject sysModules, File file, String prefix) {
        if (Intrinsics.areEqual(prefix, Deobfuscator$exteraGramDev$TMessagesProj.getString(-113797175199279L))) {
            prefix = Deobfuscator$exteraGramDev$TMessagesProj.getString(-113294664025647L);
        }
        if (file.isDirectory()) {
            if (sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113307548927535L), prefix + file.getName()).toBoolean()) {
                sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113354793567791L), prefix + file.getName());
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                removeModulesRecursive(sysModules, file2, file.getName() + '.');
            }
        }
        String name = file.getName();
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-113371973436975L);
        String strSubstringBefore$default = StringsKt.substringBefore$default(name, '.', (String) null, 2, (Object) null);
        if (file.isDirectory()) {
            return;
        }
        if (sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113436397946415L), prefix + strSubstringBefore$default).toBoolean()) {
            sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113414923109935L), prefix + strSubstringBefore$default);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void init(Runnable callback) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-113500822455855L);
        if (getPython() == null) {
            callback.run();
            return;
        }
        try {
            if (!initSdk()) {
                callback.run();
                return;
            }
            if (!ExteraConfig.getPluginsSafeMode()) {
                final Updater.Companion companion = Updater.INSTANCE;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        companion.checkUpdates();
                    }
                }, 5000L);
            }
            Python python = this.python;
            if (python == null) {
                callback.run();
                return;
            }
            if (!ExteraConfig.getPluginsSafeMode()) {
                try {
                    PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114273916569135L));
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-114342636045871L);
                    Object java = module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113865894676015L), getPluginsController().getPluginsDir().getAbsolutePath(), getPluginsController().getPreferences().getAll()).toJava(String[].class);
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-113810060101167L);
                    String[] strArr = (String[]) java;
                    if (!(strArr.length == 0)) {
                        SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
                        for (String str : strArr) {
                            editorEdit.remove(str);
                        }
                        editorEdit.apply();
                        FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113930319185455L) + strArr.length + Deobfuscator$exteraGramDev$TMessagesProj.getString(-113973268858415L));
                    }
                } catch (PyException e) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112543044748847L), e);
                }
            }
            PipController.INSTANCE.cleanup();
            loadPlugins(callback);
            checkDevServer();
        } catch (Throwable th) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113479347619375L), th);
            callback.run();
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void checkDevServer() {
        if (ExteraConfig.getPluginsSafeMode()) {
            return;
        }
        if (ExteraConfig.getPluginsDevMode()) {
            runDevServer();
        } else {
            stopDevServer();
        }
    }

    private final void runDevServer() {
        Python python;
        if (ExteraConfig.getPluginsSafeMode() || (python = getPython()) == null) {
            return;
        }
        if (this.devServerClass != null) {
            stopDevServer();
        }
        try {
            PyObject pyObject = (PyObject) python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112663303833135L)).get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-112152202724911L));
            this.devServerClass = pyObject;
            if (pyObject == null) {
                return;
            }
            if (pyObject != null) {
                pyObject.callAttrThrows(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112263871874607L), new Object[0]);
            }
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112328296384047L));
        } catch (Throwable th) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113011196184111L), th);
            this.devServerClass = null;
        }
    }

    private final void stopDevServer() {
        PyObject pyObject = this.devServerClass;
        if (pyObject == null) {
            return;
        }
        try {
            pyObject.callAttrThrows(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113148635137583L), new Object[0]);
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-113131455268399L));
        } catch (Throwable th) {
            try {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112732023309871L), th);
            } finally {
                this.devServerClass = null;
            }
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void shutdown(Runnable callback) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-112843692459567L);
        if (getPython() == null) {
            callback.run();
            return;
        }
        try {
            stopDevServer();
            Iterator it = new ArrayList(this.pluginInstances.keySet()).iterator();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-112942476707375L);
            while (it.hasNext()) {
                unloadPlugin((String) it.next());
            }
            PyObject pyObject = this.debuggerListener;
            if (pyObject != null) {
                pyObject.close();
            }
            this.debuggerListener = null;
            this.pluginInstances.clear();
            synchronized (this) {
                removePluginPathsFromSysPath();
                stopAndUnloadSdk();
                this.python = null;
                sdkInitialized = false;
                Unit unit = Unit.INSTANCE;
            }
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112933886772783L));
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        callback.run();
    }

    public final void loadPlugins(final Runnable callback) {
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.m2292$r8$lambda$2QnMYM5kpMDhr3l1kM17QcThy8(this.f$0, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$2QnMYM5kpMDhr3l1k-M17QcThy8, reason: not valid java name */
    public static void m2292$r8$lambda$2QnMYM5kpMDhr3l1kM17QcThy8(PythonPluginsEngine pythonPluginsEngine, Runnable runnable) {
        PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile;
        Plugin plugin;
        Python python = pythonPluginsEngine.getPython();
        if (python == null) {
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            return;
        }
        try {
            PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-92000216172079L));
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-91948676564527L);
            PyObject pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-92021691008559L));
            String absolutePath = pythonPluginsEngine.getPluginsController().getPluginsDir().getAbsolutePath();
            if (!ExteraConfig.getPluginsSafeMode() && pyObject != null && !pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-92034575910447L), absolutePath).toBoolean()) {
                pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-90449732978223L), absolutePath);
            }
            File[] fileArrListFiles = pythonPluginsEngine.getPluginsController().getPluginsDir().listFiles(new FilenameFilter() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda6
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return PythonPluginsEngine.loadPlugins$lambda$0$0(file, str);
                }
            });
            if (fileArrListFiles == null) {
                pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                if (runnable != null) {
                    AndroidUtilities.runOnUIThread(runnable);
                    return;
                }
                return;
            }
            int i = 0;
            for (File file : fileArrListFiles) {
                String name = file.getName();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-90200624875055L);
                String strSubstring = name.substring(0, file.getName().length() - 3);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-90179150038575L);
                try {
                    String absolutePath2 = file.getAbsolutePath();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-90252164482607L);
                    pluginValidationResultValidatePluginFromFile = pythonPluginsEngine.validatePluginFromFile(absolutePath2);
                } catch (Throwable th) {
                    th = th;
                    pluginValidationResultValidatePluginFromFile = null;
                }
                try {
                    if (pluginValidationResultValidatePluginFromFile.getError() != null) {
                        throw new Exception(pluginValidationResultValidatePluginFromFile.getError());
                    }
                    String absolutePath3 = file.getAbsolutePath();
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-90402488337967L);
                    pythonPluginsEngine.loadPlugin(strSubstring, absolutePath3, pluginValidationResultValidatePluginFromFile.getPlugin());
                } catch (Throwable th2) {
                    th = th2;
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-91051028399663L) + file.getName() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-91072503236143L) + th.getMessage(), th);
                    Plugin plugin2 = pluginValidationResultValidatePluginFromFile != null ? pluginValidationResultValidatePluginFromFile.getPlugin() : null;
                    if (plugin2 != null) {
                        plugin = new Plugin(strSubstring, plugin2.getName());
                        plugin.setAuthor(plugin2.getAuthor());
                        plugin.setDescription(plugin2.getDescription());
                        plugin.setIcon(plugin2.getIcon());
                        plugin.setVersion(plugin2.getVersion());
                        plugin.setAppVersion(plugin2.getAppVersion());
                        plugin.setSdkVersion(plugin2.getSdkVersion());
                        plugin.setRequirements(plugin2.getRequirements());
                        plugin.setEngine(plugin2.getEngine());
                    } else {
                        plugin = new Plugin(strSubstring, strSubstring);
                        plugin.setAuthor(LocaleController.getString(C2573R.string.PluginNoAuthor));
                        plugin.setVersion(Deobfuscator$exteraGramDev$TMessagesProj.getString(-91128337810991L));
                        plugin.setEngine(Deobfuscator$exteraGramDev$TMessagesProj.getString(-91145517680175L));
                    }
                    plugin.setError(th);
                    plugin.setEnabled(false);
                    pythonPluginsEngine.getPluginsController().getPlugins().put(strSubstring, plugin);
                }
            }
            pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
            Collection<Plugin> collectionValues = pythonPluginsEngine.getPluginsController().getPlugins().values();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-91235711993391L);
            Collection<Plugin> collection = collectionValues;
            if (!collection.isEmpty()) {
                Iterator<T> it = collection.iterator();
                while (it.hasNext()) {
                    if (((Plugin) it.next()).isEnabled() && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-90763265590831L) + pythonPluginsEngine.getPluginsController().getPlugins().size() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-90874934740527L) + i);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-90539927291439L), e);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean loadPlugins$lambda$0$0(File file, String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-90926474348079L);
        return StringsKt.endsWith$default(lowerCase, Deobfuscator$exteraGramDev$TMessagesProj.getString(-89358811285039L), false, 2, (Object) null);
    }

    public final void loadPlugin(String pluginId, String filePath) throws Exception {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-111422058284591L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-111469302924847L);
        loadPlugin(pluginId, filePath, null, null);
    }

    public final void loadPlugin(String pluginId, String filePath, Plugin metadata) throws Exception {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-111568087172655L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-111546612336175L);
        loadPlugin(pluginId, filePath, metadata, null);
    }

    public final void loadPlugin(String pluginId, String filePath, Plugin metadata, PipController.InstallerDelegate delegate) throws Exception {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-111095640770095L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-111074165933615L);
        boolean z = getPluginsController().getPreferences().getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-111172950181423L) + pluginId, false);
        File file = new File(filePath);
        if (!file.exists() || !file.isFile()) {
            throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-111241669658159L) + filePath);
        }
        if (metadata == null) {
            PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = validatePluginFromFile(filePath);
            if (pluginValidationResultValidatePluginFromFile.getError() != null) {
                throw new Exception(pluginValidationResultValidatePluginFromFile.getError());
            }
            metadata = pluginValidationResultValidatePluginFromFile.getPlugin();
        }
        if (metadata == null) {
            RandomKt$$ExternalSyntheticBUOutline0.m801m(Deobfuscator$exteraGramDev$TMessagesProj.getString(-111276029396527L));
            return;
        }
        if (!Intrinsics.areEqual(pluginId, metadata.getId())) {
            throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-112010468804143L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-112135022855727L) + metadata.getId() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-111645396583983L));
        }
        if (this.pluginInstances.containsKey(pluginId)) {
            unloadPlugin(pluginId);
        }
        metadata.setEnabled(false);
        metadata.setError(null);
        getPluginsController().getPlugins().put(pluginId, metadata);
        if (ExteraConfig.getPluginsSafeMode()) {
            return;
        }
        if (z) {
            createPluginInstance(pluginId, filePath, metadata, delegate);
            setPluginEnabled(pluginId, true, null);
        } else if (delegate != null) {
            installPluginDependencies(pluginId, metadata, delegate);
        }
    }

    private final void installPluginDependencies(String pluginId, Plugin pluginMetadata, PipController.InstallerDelegate delegate) throws Exception {
        PyObject module;
        List<String> requirements = pluginMetadata.getRequirements();
        List<String> list = requirements;
        if (list == null || list.isEmpty()) {
            return;
        }
        List<String> listInstallDependencies = PipController.INSTANCE.installDependencies(requirements, pluginId, delegate);
        List<String> list2 = listInstallDependencies;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list2, 10)), 16));
        for (Object obj : list2) {
            linkedHashMap.put(obj, INSTANCE.topLevelModuleNames(new File((String) obj)));
        }
        Set set = INSTANCE.topLevelModuleNames(SDK_DIR);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            Set setIntersect = CollectionsKt.intersect((Set) entry.getValue(), set);
            if (!setIntersect.isEmpty()) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-111705526126127L) + new File(str).getName() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-111688346256943L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-111787130504751L) + CollectionsKt.joinToString$default(setIntersect, null, null, null, 0, null, null, 63, null) + Deobfuscator$exteraGramDev$TMessagesProj.getString(-111757065733679L));
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str2 = (String) entry2.getKey();
            Set<String> set2 = (Set) entry2.getValue();
            String name = new File(str2).getName();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-110386971166255L);
            disableShadowedPlugins(pluginId, name, set2);
        }
        Python python = getPython();
        PyObject pyObject = (python == null || (module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-110434215806511L))) == null) ? null : (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-110451395675695L));
        if (pyObject == null) {
            return;
        }
        int size = listInstallDependencies.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            }
            String str3 = listInstallDependencies.get(size);
            removeFromSysPath(pyObject, str3);
            pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-110000424109615L), 0, str3);
            this.dependencyPaths.add(str3);
        }
    }

    private final void disableShadowedPlugins(String pluginId, String dependencyName, Set<String> providedModules) {
        for (String str : providedModules) {
            if (!Intrinsics.areEqual(str, pluginId)) {
                if (new File(getPluginsController().getPluginsDir(), str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-109953179469359L)).exists()) {
                    FileLog.m899w(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109970359338543L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-110129273128495L) + dependencyName + Deobfuscator$exteraGramDev$TMessagesProj.getString(-110116388226607L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-110215172474415L));
                    unloadPlugin(str);
                    SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
                    StringBuilder sb = new StringBuilder();
                    sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-110803582993967L));
                    sb.append(str);
                    editorEdit.putBoolean(sb.toString(), false);
                    editorEdit.apply();
                    Plugin plugin = getPluginsController().getPlugins().get(str);
                    if (plugin != null) {
                        plugin.setError(new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-110872302470703L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-110923842078255L) + dependencyName + Deobfuscator$exteraGramDev$TMessagesProj.getString(-110537295021615L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-110623194367535L)));
                    }
                }
            }
        }
    }

    private final void removePluginDependencies(String pluginId) {
        PipController.INSTANCE.uninstallDependencies(pluginId);
        pruneDependencyPaths();
    }

    private final void pruneDependencyPaths() {
        PyObject module;
        if (this.dependencyPaths.isEmpty()) {
            return;
        }
        Set<String> setActiveLibraryPaths = PipController.INSTANCE.activeLibraryPaths();
        ConcurrentHashMap.KeySetView<String, Boolean> keySetView = this.dependencyPaths;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-110773518222895L);
        ArrayList arrayList = new ArrayList();
        for (Object obj : keySetView) {
            if (!setActiveLibraryPaths.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            Python python = this.python;
            PyObject module2 = python != null ? python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109192970257967L)) : null;
            PyObject pyObject = module2 != null ? (PyObject) module2.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-109141430650415L)) : null;
            PyObject pyObject2 = module2 != null ? (PyObject) module2.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-109154315552303L)) : null;
            PyObject pyObject3 = module2 != null ? (PyObject) module2.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-109257394767407L)) : null;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                String str = (String) obj2;
                if (pyObject != null) {
                    removeFromSysPath(pyObject, str);
                }
                if (pyObject3 != null) {
                    pyObject3.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109274574636591L), str, null);
                }
                if (pyObject2 != null) {
                    removeModulesUnderPath(pyObject2, str);
                }
                this.dependencyPaths.remove(str);
            }
            Python python2 = this.python;
            if (python2 == null || (module = python2.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109291754505775L))) == null) {
                return;
            }
            module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109334704178735L), new Object[0]);
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-108862257776175L), e);
        }
    }

    private final void removeModulesUnderPath(PyObject sysModules, String path) {
        String string;
        PyObject pyObjectCallAttr;
        Object objM3291constructorimpl;
        String string2;
        List<PyObject> listAsList;
        PyObject pyObject;
        String strCanonicalPathOrNull;
        Python python = this.python;
        if (python == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(path);
        String str = File.separator;
        sb.append(str);
        String string3 = sb.toString();
        String strCanonicalPathOrNull2 = INSTANCE.canonicalPathOrNull(path);
        String str2 = strCanonicalPathOrNull2 != null ? strCanonicalPathOrNull2 + str : string3;
        ArrayList arrayList = new ArrayList();
        for (PyObject pyObject2 : python.getBuiltins().callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109708366333487L), sysModules).asList()) {
            if (pyObject2 != null && (string = pyObject2.toString()) != null && (pyObjectCallAttr = sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109789970712111L), string)) != null) {
                PyObject pyObject3 = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-109807150581295L));
                if (pyObject3 == null || (string2 = pyObject3.toString()) == null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        PyObject pyObject4 = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-109854395221551L));
                        objM3291constructorimpl = Result.m3291constructorimpl((pyObject4 == null || (listAsList = pyObject4.asList()) == null || (pyObject = (PyObject) CollectionsKt.firstOrNull((List) listAsList)) == null) ? null : pyObject.toString());
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m3297isFailureimpl(objM3291constructorimpl)) {
                        objM3291constructorimpl = null;
                    }
                    string2 = (String) objM3291constructorimpl;
                    if (string2 == null) {
                    }
                }
                if (StringsKt.startsWith$default(string2, string3, false, 2, (Object) null) || ((strCanonicalPathOrNull = INSTANCE.canonicalPathOrNull(string2)) != null && StringsKt.startsWith$default(strCanonicalPathOrNull, str2, false, 2, (Object) null))) {
                    arrayList.add(string);
                }
            }
        }
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-109815740515887L);
        for (Object obj : arrayList) {
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-109944589534767L);
            sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109437783393839L), (String) obj, null);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109454963263023L) + arrayList.size() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-109429193459247L) + new File(path).getName());
    }

    private final void removePluginPathsFromSysPath() {
        PyObject module;
        PyObject pyObject;
        Python python = this.python;
        if (python == null || (module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-109618172020271L))) == null || (pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-109635351889455L))) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.dependencyPaths);
        arrayList.add(getPluginsController().getPluginsDir().getAbsolutePath());
        Iterator it = arrayList.iterator();
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-108084868695599L);
        while (it.hasNext()) {
            removeFromSysPath(pyObject, (String) it.next());
        }
        this.dependencyPaths.clear();
    }

    private final void removeFromSysPath(PyObject sysPath, String path) {
        while (sysPath.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-108144998237743L), path).toBoolean()) {
            sysPath.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-108123523401263L), path);
        }
    }

    private final void createPluginInstance(String pluginId, String filePath, Plugin pluginMetadata, PipController.InstallerDelegate delegate) throws Exception {
        PyObject module;
        PyObject pyObjectRequireBasePluginClass = requireBasePluginClass();
        installPluginDependencies(pluginId, pluginMetadata, delegate);
        refreshImportCaches(pluginId, new File(filePath).getParentFile());
        try {
            Python python = getPython();
            if (python == null || (module = python.getModule(pluginId)) == null) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-108230897583663L) + pluginId);
            }
            PyObject pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-107895890134575L));
            String string = pyObject != null ? pyObject.toString() : null;
            Companion companion = INSTANCE;
            if (!Intrinsics.areEqual(companion.canonicalPathOrNull(string), companion.canonicalPathOrNull(filePath))) {
                StringBuilder sb = new StringBuilder();
                sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107994674382383L));
                sb.append(pluginId);
                sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107977494513199L));
                if (string == null) {
                    string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-108780653397551L);
                }
                sb.append(string);
                sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-108802128234031L));
                throw new Exception(sb.toString());
            }
            PyObject pyObjectCallAttr = pyObjectRequireBasePluginClass.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-108565905032751L), module);
            if (pyObjectCallAttr == null) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106981062100527L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-107144270857775L));
            }
            PyObject pyObjectCall = pyObjectCallAttr.call(new Object[0]);
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106912342623791L), (Object) pluginMetadata.getId());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106865097983535L), (Object) pluginMetadata.getName());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106877982885423L), (Object) pluginMetadata.getDescription());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107479278306863L), (Object) pluginMetadata.getAuthor());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107586652489263L), (Object) pluginMetadata.getVersion());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107552292750895L), (Object) pluginMetadata.getIcon());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107565177652783L), (Object) pluginMetadata.getAppVersion());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107616717260335L), (Object) pluginMetadata.getSdkVersion());
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107736976344623L), (Object) pluginMetadata.getRequirements());
            String string2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-107251645040175L);
            Boolean bool = Boolean.FALSE;
            pyObjectCall.put(string2, (Object) bool);
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107217285301807L), (Object) bool);
            pyObjectCall.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107337544386095L), (Object) null);
            this.pluginInstances.put(pluginId, pyObjectCall);
        } catch (PyException e) {
            throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107814285755951L) + e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0096 A[Catch: all -> 0x0060, PyException -> 0x0063, TryCatch #6 {PyException -> 0x0063, blocks: (B:8:0x0031, B:10:0x003b, B:13:0x0054, B:14:0x0058, B:22:0x0082, B:24:0x0088, B:25:0x0093, B:27:0x0096, B:29:0x00a6, B:30:0x00b4, B:32:0x00d0, B:35:0x00d7, B:37:0x00dd, B:39:0x00e1, B:45:0x0115, B:46:0x011a, B:42:0x010f), top: B:98:0x0031, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6 A[Catch: all -> 0x0060, PyException -> 0x0063, TryCatch #6 {PyException -> 0x0063, blocks: (B:8:0x0031, B:10:0x003b, B:13:0x0054, B:14:0x0058, B:22:0x0082, B:24:0x0088, B:25:0x0093, B:27:0x0096, B:29:0x00a6, B:30:0x00b4, B:32:0x00d0, B:35:0x00d7, B:37:0x00dd, B:39:0x00e1, B:45:0x0115, B:46:0x011a, B:42:0x010f), top: B:98:0x0031, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0115 A[Catch: all -> 0x0060, PyException -> 0x0063, TryCatch #6 {PyException -> 0x0063, blocks: (B:8:0x0031, B:10:0x003b, B:13:0x0054, B:14:0x0058, B:22:0x0082, B:24:0x0088, B:25:0x0093, B:27:0x0096, B:29:0x00a6, B:30:0x00b4, B:32:0x00d0, B:35:0x00d7, B:37:0x00dd, B:39:0x00e1, B:45:0x0115, B:46:0x011a, B:42:0x010f), top: B:98:0x0031, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0130 A[Catch: all -> 0x0136, TryCatch #2 {all -> 0x0136, blocks: (B:48:0x012c, B:50:0x0130, B:53:0x0138), top: B:90:0x012c }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b7 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void unloadPlugin(String pluginId) {
        File file;
        File file2;
        Object objM3291constructorimpl;
        Throwable thM3294exceptionOrNullimpl;
        StringBuilder sb;
        long j;
        File[] fileArrListFiles;
        Object objM3291constructorimpl2;
        PluginsController pluginsController;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-107397673928239L);
        this.settingsCache.remove(pluginId);
        PyObject pyObjectRemove = this.pluginInstances.remove(pluginId);
        Plugin plugin = getPluginsController().getPlugins().get(pluginId);
        if (plugin != null) {
            plugin.setEnabled(false);
        }
        Unit unit = null;
        try {
            if (pyObjectRemove != null) {
                try {
                    if (PyObjectUtils.getBoolean(pyObjectRemove, Deobfuscator$exteraGramDev$TMessagesProj.getString(-107359019222575L), false)) {
                        getPluginsController().getWatchdog().onPluginExecutionStarted(pluginId);
                        try {
                            pyObjectRemove.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-107410558830127L), new Object[0]);
                            pluginsController = getPluginsController();
                        } catch (Throwable th) {
                            try {
                                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-105842895767087L) + pluginId, th);
                                pluginsController = getPluginsController();
                            } catch (Throwable th2) {
                                getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                                throw th2;
                            }
                        }
                        pluginsController.getWatchdog().onPluginExecutionFinished(pluginId);
                    }
                    if (pyObjectRemove != null) {
                        pyObjectRemove.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-105984629687855L), (Object) Boolean.FALSE);
                    }
                    if (pyObjectRemove != null) {
                        pyObjectRemove.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106036169295407L), (Object) Boolean.FALSE);
                    }
                    file = new File(getPluginsController().getPluginsDir(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-105589492696623L));
                    if (file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
                        file2 = null;
                        if (file2 != null) {
                            INSTANCE.deleteFileIfExists(file2);
                        }
                        refreshImportCaches(pluginId, getPluginsController().getPluginsDir());
                        getPluginsController().cleanupPlugin(pluginId);
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            if (pyObjectRemove != null) {
                                pyObjectRemove.close();
                                unit = Unit.INSTANCE;
                            }
                            objM3291constructorimpl = Result.m3291constructorimpl(unit);
                        } catch (Throwable th3) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th3));
                        }
                        thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                        if (thM3294exceptionOrNullimpl == null) {
                            return;
                        }
                        sb = new StringBuilder();
                        j = -105748406486575L;
                    } else {
                        int length = fileArrListFiles.length;
                        for (int i = 0; i < length; i++) {
                            file2 = fileArrListFiles[i];
                            String name = file2.getName();
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-105572312827439L);
                            if (StringsKt.startsWith$default(name, pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-105636737336879L), false, 2, (Object) null)) {
                                break;
                            }
                        }
                        file2 = null;
                        if (file2 != null) {
                        }
                        refreshImportCaches(pluginId, getPluginsController().getPluginsDir());
                        getPluginsController().cleanupPlugin(pluginId);
                        Result.Companion companion3 = Result.INSTANCE;
                        if (pyObjectRemove != null) {
                        }
                        objM3291constructorimpl = Result.m3291constructorimpl(unit);
                        thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                        if (thM3294exceptionOrNullimpl == null) {
                        }
                    }
                } catch (PyException e) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106431306286639L) + pluginId, e);
                    getPluginsController().cleanupPlugin(pluginId);
                    try {
                        Result.Companion companion4 = Result.INSTANCE;
                        if (pyObjectRemove != null) {
                            pyObjectRemove.close();
                            unit = Unit.INSTANCE;
                        }
                        objM3291constructorimpl2 = Result.m3291constructorimpl(unit);
                    } catch (Throwable th4) {
                        Result.Companion companion5 = Result.INSTANCE;
                        objM3291constructorimpl2 = Result.m3291constructorimpl(ResultKt.createFailure(th4));
                    }
                    thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl2);
                    if (thM3294exceptionOrNullimpl == null) {
                        return;
                    }
                    sb = new StringBuilder();
                    j = -106478550926895L;
                }
            } else {
                if (pyObjectRemove != null) {
                }
                if (pyObjectRemove != null) {
                }
                file = new File(getPluginsController().getPluginsDir(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-105589492696623L));
                if (file.exists()) {
                    file2 = null;
                    if (file2 != null) {
                    }
                    refreshImportCaches(pluginId, getPluginsController().getPluginsDir());
                    getPluginsController().cleanupPlugin(pluginId);
                    Result.Companion companion32 = Result.INSTANCE;
                    if (pyObjectRemove != null) {
                    }
                    objM3291constructorimpl = Result.m3291constructorimpl(unit);
                    thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                    if (thM3294exceptionOrNullimpl == null) {
                    }
                }
            }
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(j));
            sb.append(pluginId);
            FileLog.m897e(sb.toString(), thM3294exceptionOrNullimpl);
        } finally {
        }
    }

    private final void refreshImportCaches(String pluginId, File moduleDir) {
        Python python = this.python;
        if (python == null) {
            return;
        }
        try {
            PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-106280982431279L));
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-106298162300463L);
            PyObject pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-106353996875311L));
            if (pyObject != null) {
                evictPluginModule(pyObject, pluginId, moduleDir);
            }
            PyObject pyObject2 = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-106319637136943L));
            if (moduleDir != null && pyObject2 != null) {
                pyObject2.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122348455085615L), moduleDir.getAbsolutePath(), null);
            }
            python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122434354431535L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122408584627759L), new Object[0]);
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122485894039087L) + pluginId, e);
        }
    }

    private final void evictPluginModule(PyObject sysModules, String pluginId, File moduleDir) {
        String strCanonicalPathOrNull;
        PyObject pyObjectCallAttr = sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122172361426479L), pluginId);
        if (pyObjectCallAttr == null) {
            return;
        }
        PyObject pyObject = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-122120821818927L));
        String string = pyObject != null ? pyObject.toString() : null;
        if (moduleDir != null) {
            strCanonicalPathOrNull = INSTANCE.canonicalPathOrNull(new File(moduleDir, pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-122219606066735L)).getAbsolutePath());
        } else {
            strCanonicalPathOrNull = null;
        }
        if (strCanonicalPathOrNull == null || !Intrinsics.areEqual(INSTANCE.canonicalPathOrNull(string), strCanonicalPathOrNull)) {
            StringBuilder sb = new StringBuilder();
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122236785935919L));
            sb.append(pluginId);
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122318390314543L));
            if (string == null) {
                string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-122898210899503L);
            }
            sb.append(string);
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-123057124689455L));
            FileLog.m899w(sb.toString());
            return;
        }
        sysModules.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-123134434100783L), pluginId, null);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void setPluginEnabled(String pluginId, boolean enabled, final Utilities.Callback<String> callback) {
        Plugin plugin;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-123082894493231L);
        try {
            Plugin plugin2 = getPluginsController().getPlugins().get(pluginId);
            if (plugin2 == null) {
                throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122631922927151L) + pluginId);
            }
            if (enabled && ExteraConfig.getPluginsSafeMode()) {
                if (callback != null) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.run(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89444710630959L));
                        }
                    });
                    return;
                }
                return;
            }
            PyObject pyObject = this.pluginInstances.get(pluginId);
            if (enabled && pyObject == null) {
                createPluginInstance(pluginId, getPluginPath(pluginId), plugin2, null);
                pyObject = this.pluginInstances.get(pluginId);
                if (pyObject == null) {
                    throw new Exception(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122722117240367L) + pluginId);
                }
            }
            if ((pyObject != null && PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-122863851161135L), false)) == enabled && !plugin2.hasError()) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
            if (!enabled) {
                SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
                editorEdit.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-121034195093039L) + pluginId, false);
                editorEdit.apply();
                unloadPlugin(pluginId);
            } else {
                if (pyObject == null) {
                    throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-121266123327023L).toString());
                }
                getPluginsController().cleanupPlugin(pluginId);
                getPluginsController().getWatchdog().onPluginExecutionStarted(pluginId);
                try {
                    pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-121313367967279L), new Object[0]);
                    getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                    String string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-121369202542127L);
                    Boolean bool = Boolean.TRUE;
                    pyObject.put(string, (Object) bool);
                    pyObject.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-121489461626415L), (Object) null);
                    plugin2.setError(null);
                    pyObject.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120999835354671L), (Object) bool);
                    plugin2.setEnabled(true);
                    SharedPreferences.Editor editorEdit2 = getPluginsController().getPreferences().edit();
                    editorEdit2.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120965475616303L) + pluginId, true);
                    editorEdit2.apply();
                    getPluginsController().loadPluginSettings(pluginId);
                } catch (Throwable th) {
                    getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                    throw th;
                }
            }
            getPluginsController().notifyPluginsChanged();
            if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(null);
                    }
                });
            }
        } catch (Throwable th2) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-121102914569775L) + pluginId, th2);
            if (enabled && (plugin = getPluginsController().getPlugins().get(pluginId)) != null) {
                plugin.setError(th2);
            }
            SharedPreferences.Editor editorEdit3 = getPluginsController().getPreferences().edit();
            editorEdit3.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-121841648944687L) + pluginId, false);
            editorEdit3.apply();
            unloadPlugin(pluginId);
            if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(AppUtils.stackTraceToString(th2));
                    }
                });
            }
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void deletePlugin(String pluginId, final Utilities.Callback<String> callback) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-121910368421423L);
        unloadPlugin(pluginId);
        try {
            removePluginDependencies(pluginId);
        } catch (Exception e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-122026332538415L) + pluginId, e);
        }
        INSTANCE.deleteFileIfExists(new File(getPluginsController().getPluginsDir(), pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-121571066005039L)));
        PluginsController.Companion companion = PluginsController.INSTANCE;
        if (companion.isPluginPinned(pluginId)) {
            companion.setPluginPinned(pluginId, false);
        }
        getPluginsController().clearPluginSettingsPreferences(pluginId, true);
        getPluginsController().getPlugins().remove(pluginId);
        getPluginsController().notifyPluginsChanged();
        if (callback != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public String getPluginPath(String id) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-121588245874223L);
        return getPluginsController().getPluginsDir().getAbsolutePath() + File.separator + id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-121592540841519L);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openInExternalApp(String id) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-121678440187439L);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        File file = new File(getPluginPath(id));
        if (file.exists()) {
            PluginFileViewer.INSTANCE.open(safeLastFragment, file, id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-121699915023919L));
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void sharePlugin(String id) {
        Activity parentActivity;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-121665555285551L);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null || (parentActivity = safeLastFragment.getParentActivity()) == null) {
            return;
        }
        String pluginPath = getPluginPath(id);
        File file = new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-121738569729583L));
        SimpliFiles.directory(file).create();
        File file2 = new File(file, id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-121768634500655L));
        try {
            SimpliFiles.file(pluginPath).copyTo(file2, OverwritePolicy.REPLACE);
            Uri uriForFile = FileProvider.getUriForFile(parentActivity, ApplicationLoader.getApplicationId() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-121734274762287L), file2);
            Intent intent = new Intent(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120127956993583L));
            intent.setFlags(1);
            intent.putExtra(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120304050652719L), uriForFile);
            intent.setType(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120355590260271L));
            safeLastFragment.startActivityForResult(Intent.createChooser(intent, LocaleController.getString(C2573R.string.ShareFile)), MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
            file2.deleteOnExit();
        } catch (IOException e) {
            FileLog.m898e(e);
        } catch (IllegalArgumentException e2) {
            FileLog.m898e(e2);
        } catch (Exception e3) {
            FileLog.m898e(e3);
        }
    }

    public final void loadPluginFromFile(String filePath, Plugin pluginMetadata, Utilities.Callback<String> callback) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-119973338170927L);
        loadPluginFromFile(filePath, pluginMetadata, callback, null);
    }

    public final void loadPluginFromFile(final String filePath, final Plugin pluginMetadata, final Utilities.Callback<String> callback, final PipController.InstallerDelegate delegate) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-119934683465263L);
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.$r8$lambda$Uz7P7RWb8TcyDXFz8YyO_rscMmI(pluginMetadata, this, filePath, delegate, callback);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ce A[Catch: all -> 0x00a5, TRY_LEAVE, TryCatch #3 {all -> 0x00a5, blocks: (B:19:0x0067, B:26:0x00a8, B:28:0x00ce), top: B:76:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void $r8$lambda$Uz7P7RWb8TcyDXFz8YyO_rscMmI(Plugin plugin, PythonPluginsEngine pythonPluginsEngine, String str, PipController.InstallerDelegate installerDelegate, final Utilities.Callback callback) {
        File file;
        File file2;
        boolean zExists;
        String id;
        String str2 = null;
        file = null;
        File file3 = null;
        boolean z = false;
        if (plugin == null) {
            try {
                PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = pythonPluginsEngine.validatePluginFromFile(str);
                if (pluginValidationResultValidatePluginFromFile.getError() != null) {
                    throw new Exception(pluginValidationResultValidatePluginFromFile.getError());
                }
                plugin = pluginValidationResultValidatePluginFromFile.getPlugin();
                if (plugin == null) {
                    throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89118293116463L).toString());
                }
                id = plugin.getId();
                try {
                    file = new File(pythonPluginsEngine.getPluginsController().getPluginsDir(), id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-89148357887535L));
                    try {
                        zExists = file.exists();
                        if (zExists) {
                            try {
                                pythonPluginsEngine.unloadPlugin(id);
                                file2 = new File(pythonPluginsEngine.getPluginsController().getPluginsDir(), id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-89234257233455L));
                                try {
                                    INSTANCE.deleteFileIfExists(file2);
                                    SimpliFiles.file(file).moveTo(file2, OverwritePolicy.ERROR);
                                    pythonPluginsEngine.removePluginDependencies(id);
                                    file3 = file2;
                                } catch (Throwable th) {
                                    th = th;
                                    str2 = id;
                                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89298681742895L) + str, th);
                                    if (str2 != null) {
                                    }
                                    pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                                    if (callback != null) {
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                file2 = file3;
                            }
                        }
                        SimpliFiles.file(str).copyTo(file, OverwritePolicy.REPLACE);
                        String absolutePath = file.getAbsolutePath();
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-89199897495087L);
                        pythonPluginsEngine.loadPlugin(id, absolutePath, plugin, installerDelegate);
                        INSTANCE.deleteFileIfExists(file3);
                        pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                        if (callback == null) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda20
                                @Override // java.lang.Runnable
                                public final void run() {
                                    callback.run(null);
                                }
                            });
                            return;
                        }
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        file2 = null;
                        zExists = false;
                        str2 = id;
                        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89298681742895L) + str, th);
                        if (str2 != null) {
                        }
                        pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                        if (callback != null) {
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    file = null;
                    file2 = null;
                }
            } catch (Throwable th5) {
                th = th5;
                file = null;
                file2 = null;
                zExists = false;
            }
        } else {
            id = plugin.getId();
            file = new File(pythonPluginsEngine.getPluginsController().getPluginsDir(), id + Deobfuscator$exteraGramDev$TMessagesProj.getString(-89148357887535L));
            zExists = file.exists();
            if (zExists) {
            }
            SimpliFiles.file(str).copyTo(file, OverwritePolicy.REPLACE);
            String absolutePath2 = file.getAbsolutePath();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-89199897495087L);
            pythonPluginsEngine.loadPlugin(id, absolutePath2, plugin, installerDelegate);
            INSTANCE.deleteFileIfExists(file3);
            pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
            if (callback == null) {
            }
        }
        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89298681742895L) + str, th);
        if (str2 != null) {
            INSTANCE.deleteFileIfExists(file);
            if (zExists && file2 != null && file2.exists() && file != null) {
                try {
                    SimpliFiles.file(file2).moveTo(file, OverwritePolicy.REPLACE);
                    try {
                        String absolutePath3 = file.getAbsolutePath();
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-90037416117807L);
                        pythonPluginsEngine.loadPlugin(str2, absolutePath3);
                        Unit unit = Unit.INSTANCE;
                    } catch (Exception e) {
                        try {
                            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-90119020496431L) + str2, e);
                            Plugin plugin2 = pythonPluginsEngine.getPluginsController().getPlugins().get(str2);
                            if (plugin2 != null) {
                                plugin2.setError(e);
                                Unit unit2 = Unit.INSTANCE;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            z = true;
                            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89831257687599L) + str2, e);
                        }
                    }
                    z = true;
                } catch (Exception e3) {
                    e = e3;
                }
            }
            if (!z) {
                pythonPluginsEngine.getPluginsController().cleanupPlugin(str2);
                try {
                    pythonPluginsEngine.removePluginDependencies(str2);
                } catch (Exception e4) {
                    FileLog.m898e(e4);
                }
                PyObject pyObjectRemove = pythonPluginsEngine.pluginInstances.remove(str2);
                if (pyObjectRemove != null) {
                    pyObjectRemove.close();
                }
                pythonPluginsEngine.getPluginsController().clearPluginSettingsPreferences(str2, true);
                pythonPluginsEngine.getPluginsController().getPlugins().remove(str2);
                INSTANCE.deleteFileIfExists(file);
            }
        }
        pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
        if (callback != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    PythonPluginsEngine.loadPluginFromFile$lambda$0$1(callback, th);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadPluginFromFile$lambda$0$1(Utilities.Callback callback, Throwable th) {
        callback.run(AppUtils.stackTraceToString(th));
    }

    private final String findModuleNameOwner(String pluginId) {
        Object obj;
        if (INSTANCE.topLevelModuleNames(SDK_DIR).contains(pluginId)) {
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-120050647582255L);
        }
        Iterator<String> it = PipController.INSTANCE.activeLibraryPaths().iterator();
        while (it.hasNext()) {
            File file = new File(it.next());
            if (INSTANCE.topLevelModuleNames(file).contains(pluginId)) {
                return Deobfuscator$exteraGramDev$TMessagesProj.getString(-120119367058991L) + file.getName();
            }
        }
        Python python = getPython();
        if (python == null) {
            return null;
        }
        try {
            PyObject pyObjectCallAttr = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120780792022575L)).callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120767907120687L), pluginId);
            if (pyObjectCallAttr == null) {
                return null;
            }
            PyObject pyObject = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-120810856793647L));
            String string = pyObject != null ? pyObject.toString() : null;
            if (string != null) {
                Companion companion = INSTANCE;
                if (Intrinsics.areEqual(companion.canonicalPathOrNull(string), companion.canonicalPathOrNull(new File(getPluginsController().getPluginsDir(), pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-120918230976047L)).getAbsolutePath()))) {
                    return null;
                }
                return string;
            }
            PyObject pyObject2 = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-120935410845231L));
            if (pyObject2 == null) {
                return Deobfuscator$exteraGramDev$TMessagesProj.getString(-120424309737007L);
            }
            String strCanonicalPathOrNull = INSTANCE.canonicalPathOrNull(new File(getPluginsController().getPluginsDir(), pluginId).getAbsolutePath());
            List<PyObject> listAsList = python.getBuiltins().callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120587518494255L), pyObject2).asList();
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-120548863788591L);
            List<PyObject> list = listAsList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((PyObject) it2.next()).toString());
            }
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    obj = null;
                    break;
                }
                obj = arrayList.get(i);
                i++;
                if (!Intrinsics.areEqual(INSTANCE.canonicalPathOrNull((String) obj), strCanonicalPathOrNull)) {
                    break;
                }
            }
            return (String) obj;
        } catch (PyException e) {
            FileLog.m899w(Deobfuscator$exteraGramDev$TMessagesProj.getString(-120669122872879L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-119032740333103L) + e.getMessage());
            return Deobfuscator$exteraGramDev$TMessagesProj.getString(-119097164842543L);
        } catch (Throwable th) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-119191654123055L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-118865236608559L), th);
            return null;
        }
    }

    public final PluginsController.PluginValidationResult validatePluginFromFile(String filePath) {
        String string;
        String string2;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-118839466804783L);
        if (!new File(filePath).exists()) {
            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-118938251052591L));
        }
        try {
            Map<String, String> pluginMetadata = parsePluginMetadata(filePath);
            String str = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-118976905758255L));
            String str2 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-118981200725551L));
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (str != null) {
                    if (!new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-119384927651375L)).matches(str)) {
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-119513776670255L));
                    }
                    String strFindModuleNameOwner = findModuleNameOwner(str);
                    if (strFindModuleNameOwner != null) {
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-117881689097775L) + strFindModuleNameOwner + Deobfuscator$exteraGramDev$TMessagesProj.getString(-118689142949423L));
                    }
                    String str3 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-118281121056303L));
                    if (str3 != null) {
                        Matcher matcher = VERSION_PATTERN.matcher(str3);
                        if (!matcher.matches()) {
                            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-118401380140591L) + str3);
                        }
                        String strGroup = matcher.group(1);
                        if (strGroup == null) {
                            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-118414265042479L) + str3);
                        }
                        String strGroup2 = matcher.group(2);
                        if (strGroup2 != null && (string2 = StringsKt.trim((CharSequence) strGroup2).toString()) != null) {
                            if (!AppUtils.compareVersions(strGroup, BuildVars.BUILD_VERSION_STRING, string2)) {
                                return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-117014105703983L) + str3 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-116597493876271L) + BuildVars.BUILD_VERSION_STRING);
                            }
                        }
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116932501325359L) + str3);
                    }
                    String str4 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-116674803287599L));
                    if (str4 != null) {
                        Matcher matcher2 = VERSION_PATTERN.matcher(str4);
                        if (!matcher2.matches()) {
                            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116726342895151L) + str4);
                        }
                        String strGroup3 = matcher2.group(1);
                        if (strGroup3 == null) {
                            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116807947273775L) + str4);
                        }
                        String strGroup4 = matcher2.group(2);
                        if (strGroup4 != null && (string = StringsKt.trim((CharSequence) strGroup4).toString()) != null) {
                            if (!AppUtils.compareVersions(strGroup3, SDK_VERSION, string)) {
                                return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-117469372237359L) + str4 + Deobfuscator$exteraGramDev$TMessagesProj.getString(-117602516223535L) + SDK_VERSION);
                            }
                        }
                        return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-117387767858735L) + str4);
                    }
                    if (str2 != null) {
                        Plugin plugin = new Plugin(str, str2);
                        plugin.setEngine(Deobfuscator$exteraGramDev$TMessagesProj.getString(-117297573545519L));
                        String string3 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-117267508774447L));
                        if (string3 == null) {
                            string3 = LocaleController.getString(C2573R.string.PluginNoAuthor);
                        }
                        plugin.setAuthor(string3);
                        String string4 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-117357703087663L));
                        if (string4 == null) {
                            string4 = LocaleController.getString(C2573R.string.PluginNoDescription);
                        }
                        plugin.setDescription(string4);
                        plugin.setIcon(pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115759975253551L)));
                        String string5 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115790040024623L));
                        if (string5 == null) {
                            string5 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-115755680286255L);
                        }
                        plugin.setVersion(string5);
                        plugin.setAppVersion(str3);
                        plugin.setSdkVersion(str4);
                        String str5 = pluginMetadata.get(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115841579632175L));
                        if (str5 != null && str5.length() != 0) {
                            List<String> listSplit = new Regex(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115820104795695L)).split(str5, 0);
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit, 10));
                            Iterator<T> it = listSplit.iterator();
                            while (it.hasNext()) {
                                arrayList.add(StringsKt.trim((CharSequence) it.next()).toString());
                            }
                            ArrayList arrayList2 = new ArrayList();
                            int size = arrayList.size();
                            int i = 0;
                            while (i < size) {
                                Object obj = arrayList.get(i);
                                i++;
                                if (((String) obj).length() > 0) {
                                    arrayList2.add(obj);
                                }
                            }
                            plugin.setRequirements(arrayList2);
                        }
                        plugin.setEnabled(getPluginsController().getPreferences().getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115970428651055L) + str, false));
                        return new PluginsController.PluginValidationResult(plugin, null);
                    }
                    throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-117130069820975L).toString());
                }
                throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-119354862880303L).toString());
            }
            return new PluginsController.PluginValidationResult(null, Deobfuscator$exteraGramDev$TMessagesProj.getString(-119629740787247L));
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115489392313903L) + filePath + Deobfuscator$exteraGramDev$TMessagesProj.getString(-115545226888751L) + e.getMessage(), e);
            return new PluginsController.PluginValidationResult(null, e.getMessage());
        } catch (Throwable th) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115588176561711L) + filePath, th);
            return new PluginsController.PluginValidationResult(null, th.getMessage());
        }
    }

    public final List<SettingItem> parsePySettingDefinitions(List<? extends PyObject> pyDefinitionsList) throws Throwable {
        Object editTextSetting;
        String string;
        View view;
        Object customSetting;
        String string2;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-116292551198255L);
        ArrayList arrayList = new ArrayList(pyDefinitionsList.size());
        for (PyObject pyObject : pyDefinitionsList) {
            Object headerSetting = null;
            String string3 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116369860609583L), null);
            if (string3 == null) {
                FileLog.m899w(Deobfuscator$exteraGramDev$TMessagesProj.getString(-116468644857391L));
            } else {
                String string4 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116176587081263L), null);
                String string5 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116193766950447L), null);
                String string6 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116137932375599L), null);
                String string7 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-116241011590703L), null);
                PyObject pyObject2 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-116271076361775L));
                PyObject pyObject3 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-114664758593071L));
                String string8 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-114656168658479L), null);
                PyObject pyObject4 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-114694823364143L));
                PyObject pyObject5 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-114797902579247L));
                PyObject pyObject6 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-114776427742767L));
                switch (string3.hashCode()) {
                    case -1866021310:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114407060555311L))) {
                            String string9 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-115214514406959L), null);
                            boolean z = PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-115227399308847L), false);
                            int i = PyObjectUtils.getInt(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-115201629505071L), 256);
                            String string10 = PyObjectUtils.getString(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-115257464079919L), null);
                            if (string4 != null && string9 != null) {
                                if (pyObject4 == null || (string = pyObject4.toString()) == null) {
                                    string = Deobfuscator$exteraGramDev$TMessagesProj.getString(-115270348981807L);
                                }
                                editTextSetting = new EditTextSetting(string4, string9, string, z, i, string10, pyObject2);
                                headerSetting = editTextSetting;
                            }
                        }
                        break;
                    case -1349088399:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114484369966639L))) {
                            PyObject pyObject7 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-115321888589359L));
                            PyObject pyObject8 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-115420672837167L));
                            PyObject pyObject9 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-115433557739055L));
                            PyObject pyObject10 = (PyObject) pyObject.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-115399198000687L));
                            if (pyObject9 != null) {
                                CustomSetting.Factory factory = (CustomSetting.Factory) PyObjectUtils.toJavaCompat(pyObject9, CustomSetting.Factory.class);
                                if (factory != null) {
                                    customSetting = pyObject10 == null ? new CustomSetting((CustomSetting.Factory<?>) factory, pyObject5, pyObject6, pyObject3, string8) : new CustomSetting(factory, pyObject10, pyObject5, pyObject6, pyObject3, string8);
                                    headerSetting = customSetting;
                                }
                            } else if (pyObject8 != null) {
                                UItem uItem = (UItem) PyObjectUtils.toJavaCompat(pyObject8, UItem.class);
                                if (uItem != null) {
                                    customSetting = new CustomSetting(uItem, pyObject5, pyObject6, pyObject3, string8);
                                    headerSetting = customSetting;
                                }
                            } else if (pyObject7 != null && (view = (View) PyObjectUtils.toJavaCompat(pyObject7, View.class)) != null) {
                                customSetting = new CustomSetting(view, pyObject5, pyObject6, pyObject3, string8);
                                headerSetting = customSetting;
                            }
                        }
                        break;
                    case -1221270899:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114437125326383L)) && string5 != null) {
                            headerSetting = new HeaderSetting(string5);
                        }
                        break;
                    case -889473228:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114604629050927L)) && string4 != null && string5 != null && pyObject4 != null) {
                            editTextSetting = new SwitchSetting(string4, string5, pyObject4.toBoolean(), string6, string7, pyObject2, pyObject3, string8);
                            headerSetting = editTextSetting;
                        }
                        break;
                    case 3556653:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114505844803119L))) {
                            boolean z2 = PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-115351953360431L), false);
                            boolean z3 = PyObjectUtils.getBoolean(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-115373428196911L), false);
                            if (string5 != null) {
                                headerSetting = new TextSetting(string5, string6, string7, z2, z3, pyObject5, pyObject6, pyObject3, string8);
                            }
                        }
                        break;
                    case 100358090:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114862327088687L)) && string4 != null && string5 != null) {
                            if (pyObject4 == null || (string2 = pyObject4.toString()) == null) {
                                string2 = Deobfuscator$exteraGramDev$TMessagesProj.getString(-114583154214447L);
                            }
                            editTextSetting = new InputSetting(string4, string5, string2, string6, string7, pyObject2, pyObject3, string8);
                            headerSetting = editTextSetting;
                        }
                        break;
                    case 1191572447:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114544499508783L))) {
                            String[] stringArray = PyObjectUtils.getStringArray(pyObject, Deobfuscator$exteraGramDev$TMessagesProj.getString(-114557384410671L), null);
                            if (string4 != null && string5 != null && stringArray != null && stringArray.length != 0 && pyObject4 != null) {
                                editTextSetting = new SelectorSetting(string4, string5, pyObject4.toInt(), stringArray, string7, pyObject2, pyObject3, string8);
                                headerSetting = editTextSetting;
                            }
                        }
                        break;
                    case 1674318617:
                        if (string3.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114381290751535L))) {
                            headerSetting = new DividerSetting(string5);
                        }
                        break;
                }
                if (headerSetting != null) {
                    arrayList.add(headerSetting);
                }
            }
        }
        return arrayList;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public List<SettingItem> loadPluginSettings(String id) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-114913866696239L);
        try {
            Plugin plugin = getPluginsController().getPlugins().get(id);
            PyObject pyObject = this.pluginInstances.get(id);
            if (getPluginsController().isPluginActive$TMessagesProj(plugin) && pyObject != null) {
                PyObject pyObjectCallAttr = pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-114918161663535L), new Object[0]);
                if (pyObjectCallAttr == null) {
                    return null;
                }
                List<PyObject> listAsList = pyObjectCallAttr.asList();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-114986881140271L);
                if (listAsList.isEmpty()) {
                    return null;
                }
                return parsePySettingDefinitions(listAsList);
            }
            getPluginsController().invalidatePluginSettings(id);
            return null;
        } catch (Exception e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-115038420747823L), e);
            return null;
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void executeOnAppEvent(String eventType) throws Exception {
        Python python;
        PyObject module;
        PyObject pyObject;
        PluginsController pluginsController;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95938701182511L);
        if (!sdkInitialized || ExteraConfig.getPluginsSafeMode() || (python = getPython()) == null || (module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-96050370332207L))) == null || (pyObject = (PyObject) module.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-96033190463023L))) == null) {
            return;
        }
        PyObject pyObjectCall = pyObject.call(eventType);
        try {
            PyObject pyObject2 = this.debuggerListener;
            if (pyObject2 != null) {
                try {
                    pyObject2.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-96131974710831L), pyObjectCall);
                } catch (PyException e) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-96196399220271L), e);
                }
            }
            for (Map.Entry<String, PyObject> entry : this.pluginInstances.entrySet()) {
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-95861391771183L);
                Map.Entry<String, PyObject> entry2 = entry;
                String key = entry2.getKey();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-95904341444143L);
                String str = key;
                PyObject value = entry2.getValue();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-96522816734767L);
                PyObject pyObject3 = value;
                if (getPluginsController().isPluginActive$TMessagesProj(str) && PyObjectUtils.getBoolean(pyObject3, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96591536211503L), false) && PyObjectUtils.getString(pyObject3, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96557176473135L), null) == null) {
                    getPluginsController().getWatchdog().onPluginExecutionStarted(str);
                    try {
                        try {
                            pyObject3.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-96686025492015L), pyObjectCall);
                            pluginsController = getPluginsController();
                        } catch (Throwable th) {
                            getPluginsController().getWatchdog().onPluginExecutionFinished(str);
                            throw th;
                        }
                    } catch (PyException e2) {
                        FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-96733270132271L) + eventType + Deobfuscator$exteraGramDev$TMessagesProj.getString(-96222169024047L) + str, e2);
                        pluginsController = getPluginsController();
                    }
                    pluginsController.getWatchdog().onPluginExecutionFinished(str);
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(pyObjectCall, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.closeFinally(pyObjectCall, th2);
                throw th3;
            }
        }
    }

    private final <T> PluginsController.HookResult<T> executeHook(PyObject pluginInstance, T initialValue, Class<T> valueClass, String pyResultKey, PyMethodCaller<T> caller, Utilities.Callback<PyException> errorLogger) throws Exception {
        PluginsController.HookResult<T> hookResult;
        if (pluginInstance != null) {
            try {
                PyObject pyObjectCall = caller.call(pluginInstance, initialValue);
                if (pyObjectCall != null) {
                    try {
                        String string = PyObjectUtils.getString(pyObjectCall, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96316658304559L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-96278003598895L));
                        if (string != null && StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96381082813999L), false, 2, (Object) null)) {
                            hookResult = new PluginsController.HookResult<>(null, true, false);
                        } else {
                            if (string != null && (StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96351018042927L), false, 2, (Object) null) || StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96372492879407L), false, 2, (Object) null))) {
                                PyObject pyObject = (PyObject) pyObjectCall.get((Object) pyResultKey);
                                if (pyObject != null) {
                                    try {
                                        initialValue = (T) pyObject.toJava(valueClass);
                                        Unit unit = Unit.INSTANCE;
                                        AutoCloseableKt.closeFinally(pyObject, null);
                                    } finally {
                                    }
                                }
                                if (StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-96436917388847L), false, 2, (Object) null)) {
                                    hookResult = new PluginsController.HookResult<>(initialValue, false, true);
                                }
                            }
                            Unit unit2 = Unit.INSTANCE;
                            AutoCloseableKt.closeFinally(pyObjectCall, null);
                        }
                        AutoCloseableKt.closeFinally(pyObjectCall, null);
                        return hookResult;
                    } finally {
                    }
                }
            } catch (PyException e) {
                errorLogger.run(e);
            }
        }
        return new PluginsController.HookResult<>(initialValue, false, false);
    }

    private final <T> PluginsController.HookResult<T> executeHook(String pluginId, T initialValue, Class<T> valueClass, String pyResultKey, PyMethodCaller<T> caller, Utilities.Callback<PyException> errorLogger) {
        return executeHook(this.pluginInstances.get(pluginId), initialValue, valueClass, pyResultKey, caller, errorLogger);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLObject> executePreRequestHook(final String requestName, final int account, TLObject request, final String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-94834894587439L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-94955153671727L);
        return executeHook(pluginId, request, (Class<TLObject>) TLObject.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-94933678835247L), (PyMethodCaller<TLObject>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda23
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return PythonPluginsEngine.$r8$lambda$3HuOhQN3SQ64XZXjHG3mX3zdIqY(requestName, account, pyObject, (TLObject) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-88443983250991L) + pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-88139040572975L) + requestName, (PyException) obj);
            }
        });
    }

    public static PyObject $r8$lambda$3HuOhQN3SQ64XZXjHG3mX3zdIqY(String str, int i, PyObject pyObject, TLObject tLObject) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-88332314101295L);
        return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-88379558741551L), str, Integer.valueOf(i), tLObject);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b5 A[Catch: all -> 0x005b, TRY_LEAVE, TryCatch #4 {all -> 0x005b, blocks: (B:8:0x0027, B:10:0x003b, B:12:0x004b, B:17:0x005e, B:20:0x0077, B:27:0x0082, B:30:0x009b, B:37:0x00a6, B:39:0x00b5, B:35:0x00a2, B:36:0x00a5, B:25:0x007e, B:26:0x0081, B:44:0x00cc, B:33:0x00a0, B:19:0x006f, B:23:0x007c, B:29:0x0093), top: B:61:0x0027, outer: #2, inners: #0, #3, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, org.telegram.tgnet.TLObject] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, org.telegram.tgnet.TLRPC$TL_error] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final PluginsController.HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String requestName, int account, TLObject response, TLRPC.TL_error error, PyObject pluginInstance) throws Exception {
        PyObject pyObject;
        PyObject pyObject2;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95036758050351L);
        ?? r8 = response;
        ?? r9 = error;
        if (pluginInstance != null) {
            try {
                PyObject pyObjectCallAttr = pluginInstance.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-95088297657903L), requestName, Integer.valueOf(account), response, error);
                r8 = response;
                r9 = error;
                if (pyObjectCallAttr != null) {
                    try {
                        String string = PyObjectUtils.getString(pyObjectCallAttr, Deobfuscator$exteraGramDev$TMessagesProj.getString(-94615851255343L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-94577196549679L));
                        ?? r82 = response;
                        ?? r92 = error;
                        if (string != null) {
                            if (!StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-94590081451567L), false, 2, (Object) null)) {
                                r82 = response;
                                r92 = error;
                                if (StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-94680275764783L), false, 2, (Object) null)) {
                                    pyObject = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-94744700274223L));
                                    response = response;
                                    if (pyObject != null) {
                                        try {
                                            response = pyObject.toJava(TLObject.class);
                                            Unit unit = Unit.INSTANCE;
                                            AutoCloseableKt.closeFinally(pyObject, null);
                                            response = response;
                                        } finally {
                                        }
                                    }
                                    pyObject2 = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-94706045568559L));
                                    ?? r93 = error;
                                    if (pyObject2 != null) {
                                        try {
                                            error = pyObject2.toJava(TLRPC.TL_error.class);
                                            Unit unit2 = Unit.INSTANCE;
                                            AutoCloseableKt.closeFinally(pyObject2, null);
                                            r93 = error;
                                        } finally {
                                            try {
                                                throw th;
                                            } finally {
                                            }
                                        }
                                    }
                                    r82 = response;
                                    r92 = r93;
                                    if (StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-94800534849071L), false, 2, (Object) null)) {
                                        PluginsController.HookResult<PluginsHooks.PostRequestResult> hookResult = new PluginsController.HookResult<>(new PluginsHooks.PostRequestResult((TLObject) response, (TLRPC.TL_error) r93), false, true);
                                        AutoCloseableKt.closeFinally(pyObjectCallAttr, null);
                                        return hookResult;
                                    }
                                }
                            } else {
                                pyObject = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-94744700274223L));
                                response = response;
                                if (pyObject != null) {
                                }
                                pyObject2 = (PyObject) pyObjectCallAttr.get((Object) Deobfuscator$exteraGramDev$TMessagesProj.getString(-94706045568559L));
                                ?? r932 = error;
                                if (pyObject2 != null) {
                                }
                                r82 = response;
                                r92 = r932;
                                if (StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-94800534849071L), false, 2, (Object) null)) {
                                }
                            }
                        }
                        Unit unit3 = Unit.INSTANCE;
                        AutoCloseableKt.closeFinally(pyObjectCallAttr, null);
                        r8 = r82;
                        r9 = r92;
                    } finally {
                    }
                }
            } catch (PyException e) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-94796239881775L) + requestName, e);
                r8 = response;
                r9 = error;
            }
        }
        return new PluginsController.HookResult<>(new PluginsHooks.PostRequestResult((TLObject) r8, (TLRPC.TL_error) r9), false, false);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String requestName, int account, TLObject response, TLRPC.TL_error error, String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95582218896943L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95633758504495L);
        return executePostRequestHook(requestName, account, response, error, this.pluginInstances.get(pluginId));
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLRPC.Update> executeUpdateHook(final String updateName, final int account, TLRPC.Update update, String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95612283668015L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95169902036527L);
        return executeHook(pluginId, update, (Class<TLRPC.Update>) TLRPC.Update.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-95217146676783L), (PyMethodCaller<TLRPC.Update>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda3
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return PythonPluginsEngine.$r8$lambda$gogZ8_uy9hbJzmvkveYPLtlEcFs(updateName, account, pyObject, (TLRPC.Update) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-88199170115119L) + updateName, (PyException) obj);
            }
        });
    }

    public static PyObject $r8$lambda$gogZ8_uy9hbJzmvkveYPLtlEcFs(String str, int i, PyObject pyObject, TLRPC.Update update) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-88164810376751L);
        return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-88126155671087L), str, Integer.valueOf(i), update);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLRPC.Updates> executeUpdatesHook(final String containerName, final int account, TLRPC.Updates updates, String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95238621513263L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95298751055407L);
        return executeHook(pluginId, updates, (Class<TLRPC.Updates>) TLRPC.Updates.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-95277276218927L), (PyMethodCaller<TLRPC.Updates>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda9
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return PythonPluginsEngine.$r8$lambda$66nPF4OSjZKgz4yasnWGOzZ1Egk(containerName, account, pyObject, (TLRPC.Updates) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda10
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-89010918934063L) + containerName, (PyException) obj);
            }
        });
    }

    public static PyObject $r8$lambda$66nPF4OSjZKgz4yasnWGOzZ1Egk(String str, int i, PyObject pyObject, TLRPC.Updates updates) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-88980854162991L);
        return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-88942199457327L), str, Integer.valueOf(i), updates);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<SendMessagesHelper.SendMessageParams> executeSendMessageHook(final int account, SendMessagesHelper.SendMessageParams params, final String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-95380355434031L);
        return executeHook(pluginId, params, (Class<SendMessagesHelper.SendMessageParams>) SendMessagesHelper.SendMessageParams.class, Deobfuscator$exteraGramDev$TMessagesProj.getString(-95341700728367L), (PyMethodCaller<SendMessagesHelper.SendMessageParams>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda18
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return PythonPluginsEngine.$r8$lambda$_D6PxQm0hg98qBk_zHO3yV4BGHE(account, pyObject, (SendMessagesHelper.SendMessageParams) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-104777743877679L) + pluginId, (PyException) obj);
            }
        });
    }

    public static PyObject $r8$lambda$_D6PxQm0hg98qBk_zHO3yV4BGHE(int i, PyObject pyObject, SendMessagesHelper.SendMessageParams sendMessageParams) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-88705976256047L);
        return pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-88667321550383L), Integer.valueOf(i), sendMessageParams);
    }

    public final String fetchParameterValue(String filePath, String parameterName) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-93799807469103L);
        if (filePath == null) {
            return null;
        }
        try {
            File file = new File(filePath);
            if (file.exists() && file.isFile()) {
                return parsePluginMetadata(filePath).get(parameterName);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final Map<String, String> parsePluginMetadata(String filePath) {
        HashMap map = new HashMap();
        if (filePath != null) {
            File file = new File(filePath);
            if (file.exists() && file.isFile()) {
                Python python = getPython();
                if (python == null) {
                    FileLog.m896e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93859937011247L) + filePath);
                    return map;
                }
                try {
                    PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93490569823791L));
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-93606533940783L);
                    PyObject pyObjectCallAttr = module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93679548384815L), filePath);
                    if (pyObjectCallAttr != null) {
                        Map<PyObject, PyObject> mapAsMap = pyObjectCallAttr.asMap();
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-94345268315695L);
                        for (Map.Entry<PyObject, PyObject> entry : mapAsMap.entrySet()) {
                            map.put(entry.getKey().toString(), entry.getValue().toString());
                        }
                    }
                } catch (PyException e) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-94401102890543L) + filePath + Deobfuscator$exteraGramDev$TMessagesProj.getString(-94525656942127L) + e.getMessage(), e);
                    throw e;
                }
            }
        }
        return map;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public Object getPluginSetting(String pluginId, String key, Object defaultValue) {
        Object java;
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-94499887138351L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-94066095441455L);
        ConcurrentHashMap<String, Object> concurrentHashMap = this.settingsCache.get(pluginId);
        if (concurrentHashMap != null && concurrentHashMap.containsKey(key)) {
            return concurrentHashMap.get(key);
        }
        Python python = getPython();
        if (python != null) {
            try {
                PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-94014555833903L));
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-94083275310639L);
                PyObject pyObjectCallAttr = module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-94207829362223L), pluginId, key, defaultValue);
                if (pyObjectCallAttr != null) {
                    if (defaultValue instanceof Boolean) {
                        java = Boolean.valueOf(pyObjectCallAttr.toBoolean());
                    } else if (defaultValue instanceof Integer) {
                        java = Integer.valueOf(pyObjectCallAttr.toInt());
                    } else if (defaultValue instanceof String) {
                        java = pyObjectCallAttr.toString();
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-94259368969775L);
                    } else if (defaultValue instanceof Float) {
                        java = Float.valueOf(pyObjectCallAttr.toFloat());
                    } else if (defaultValue instanceof Long) {
                        java = Long.valueOf(pyObjectCallAttr.toLong());
                    } else if (defaultValue == null) {
                        java = pyObjectCallAttr.toJava(Object.class);
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92670231070255L);
                    } else {
                        java = pyObjectCallAttr.toJava(defaultValue.getClass());
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92653051201071L);
                    }
                    ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> concurrentHashMap2 = this.settingsCache;
                    final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PythonPluginsEngine.$r8$lambda$QERKwSD6yL4J8XJCKdmRa2I5DR8((String) obj);
                        }
                    };
                    ConcurrentHashMap<String, Object> concurrentHashMapComputeIfAbsent = concurrentHashMap2.computeIfAbsent(pluginId, new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda26
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return PythonPluginsEngine.$r8$lambda$T5aUeMCGEOtaNiCJriFIVhbHSkA(function1, obj);
                        }
                    });
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-92704590808623L);
                    concurrentHashMapComputeIfAbsent.put(key, java);
                    return java;
                }
            } catch (PyException e) {
                FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-92803375056431L) + pluginId + '/' + key, e);
                return defaultValue;
            }
        }
        return defaultValue;
    }

    public static ConcurrentHashMap $r8$lambda$QERKwSD6yL4J8XJCKdmRa2I5DR8(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-104898002961967L);
        return new ConcurrentHashMap();
    }

    public static ConcurrentHashMap $r8$lambda$T5aUeMCGEOtaNiCJriFIVhbHSkA(Function1 function1, Object obj) {
        return (ConcurrentHashMap) function1.invoke(obj);
    }

    public static ConcurrentHashMap $r8$lambda$H3KBjR7kR4EblHmumAscDlVGoa4(Function1 function1, Object obj) {
        return (ConcurrentHashMap) function1.invoke(obj);
    }

    public static ConcurrentHashMap $r8$lambda$M02QGUTSwEr0Np6WtwhMk889TKc(String str) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-104971017405999L);
        return new ConcurrentHashMap();
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void setPluginSetting(String pluginId, String key, Object value) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92382468261423L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92481252509231L);
        ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> concurrentHashMap = this.settingsCache;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PythonPluginsEngine.$r8$lambda$M02QGUTSwEr0Np6WtwhMk889TKc((String) obj);
            }
        };
        ConcurrentHashMap<String, Object> concurrentHashMapComputeIfAbsent = concurrentHashMap.computeIfAbsent(pluginId, new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return PythonPluginsEngine.$r8$lambda$H3KBjR7kR4EblHmumAscDlVGoa4(function1, obj);
            }
        });
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92429712901679L);
        concurrentHashMapComputeIfAbsent.put(key, value);
        Python python = getPython();
        if (python == null) {
            return;
        }
        try {
            PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-92528497149487L));
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-92597216626223L);
            module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93202807014959L), pluginId, key, value);
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93254346622511L) + pluginId + '/' + key, e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void clearPluginSettings(String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-93451915118127L);
        this.settingsCache.remove(pluginId);
        Python python = getPython();
        if (python == null) {
            return;
        }
        try {
            PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-92949403944495L));
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-93018123421231L);
            module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93005238519343L), pluginId);
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-93078252963375L) + pluginId, e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public Map<String, ?> getAllPluginSettings(String pluginId) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-91648028853807L);
        Python python = getPython();
        if (python == null) {
            return null;
        }
        try {
            PyObject module = python.getModule(Deobfuscator$exteraGramDev$TMessagesProj.getString(-91626554017327L));
            Deobfuscator$exteraGramDev$TMessagesProj.getString(-91695273494063L);
            PyObject pyObjectCallAttr = module.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-91751108068911L), pluginId);
            if (pyObjectCallAttr != null) {
                HashMap map = new HashMap();
                Map<PyObject, PyObject> mapAsMap = pyObjectCallAttr.asMap();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-91282956633647L);
                for (Map.Entry<PyObject, PyObject> entry : mapAsMap.entrySet()) {
                    PyObject key = entry.getKey();
                    PyObject value = entry.getValue();
                    if (key != null) {
                        map.put(key.toString(), value != null ? value.toJava(Object.class) : null);
                    }
                }
                this.settingsCache.put(pluginId, new ConcurrentHashMap<>(map));
                return map;
            }
        } catch (PyException e) {
            FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-91390330816047L) + pluginId, e);
        }
        return null;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void showInstallDialog(final BaseFragment fragment, InstallPluginBottomSheet.PluginInstallParams params) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-91497704998447L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92146245060143L);
        File file = new File(params.getFilePath());
        final String strFetchParameterValue = fetchParameterValue(params.getFilePath(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-92116180289071L));
        if (TextUtils.isEmpty(strFetchParameterValue) && file.exists()) {
            strFetchParameterValue = file.getName();
        }
        final PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = validatePluginFromFile(params.getFilePath());
        if (pluginValidationResultValidatePluginFromFile.getPlugin() != null) {
            new InstallPluginBottomSheet(fragment, pluginValidationResultValidatePluginFromFile, params).show();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment baseFragment = fragment;
                    BulletinFactory.of(baseFragment).createSimpleBulletin(C2573R.raw.error, LocaleController.formatString(C2573R.string.PluginInstallError, strFetchParameterValue), LocaleUtils.createCopySpan(baseFragment), new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda17
                        @Override // java.lang.Runnable
                        public final void run() {
                            PythonPluginsEngine.showInstallDialog$lambda$0$0(pluginValidationResult, baseFragment);
                        }
                    }).show();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInstallDialog$lambda$0$0(PluginsController.PluginValidationResult pluginValidationResult, BaseFragment baseFragment) {
        if (AndroidUtilities.addToClipboard(pluginValidationResult.getError())) {
            BulletinFactory.of(baseFragment).createCopyBulletin(LocaleController.getString(C2573R.string.TextCopied)).show();
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSettings(String id, BaseFragment fragment) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92197784667695L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92219259504175L);
        Plugin plugin = getPluginsController().getPlugins().get(id);
        if (plugin != null) {
            openPluginSettings(plugin, fragment);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSettings(final Plugin plugin, final BaseFragment fragment) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92180604798511L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92287978980911L);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                fragment.presentFragment(new PluginSettingsActivity(plugin));
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSetting(final Plugin plugin, final String linkAlias, final BaseFragment fragment) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92249324275247L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-92356698457647L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-91849892316719L);
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                PythonPluginsEngine.$r8$lambda$tlRSlsg46rHC7NnIW9NYVB_8Z3s(this.f$0, plugin, linkAlias, fragment);
            }
        });
    }

    public static void $r8$lambda$tlRSlsg46rHC7NnIW9NYVB_8Z3s(PythonPluginsEngine pythonPluginsEngine, Plugin plugin, String str, final BaseFragment baseFragment) throws Throwable {
        final PluginSettingsActivity settingsLinkPrefix;
        if (pythonPluginsEngine.getPluginsController().isPluginActive$TMessagesProj(plugin)) {
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-104992492242479L) + plugin.getId() + '/' + str);
            if (!StringsKt.contains$default((CharSequence) str, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-104472801199663L), false, 2, (Object) null)) {
                settingsLinkPrefix = new PluginSettingsActivity(plugin, str);
            } else {
                List<SettingItem> list = pythonPluginsEngine.getPluginsController().getSettings().get(plugin.getId());
                if (list == null) {
                    return;
                }
                String[] strArr = (String[]) StringsKt.split$default((CharSequence) str, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-104481391134255L)}, false, 0, 6, (Object) null).toArray(new String[0]);
                int length = strArr.length - 1;
                List<SettingItem> pySettingDefinitions = list;
                TextSetting textSetting = null;
                for (int i = 0; i < length; i++) {
                    String str2 = strArr[i];
                    Iterator<SettingItem> it = pySettingDefinitions.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        SettingItem next = it.next();
                        if ((next instanceof TextSetting) && Intrinsics.areEqual(str2, next.getLinkAlias())) {
                            textSetting = (TextSetting) next;
                            try {
                                if (!pythonPluginsEngine.getPluginsController().isPluginActive$TMessagesProj(plugin)) {
                                    return;
                                }
                                PyObject createSubFragmentCallback = ((TextSetting) next).getCreateSubFragmentCallback();
                                PyObject pyObjectCall = createSubFragmentCallback != null ? createSubFragmentCallback.call(new Object[0]) : null;
                                if (pyObjectCall != null) {
                                    List<PyObject> listAsList = pyObjectCall.asList();
                                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-104558700545583L);
                                    try {
                                        pySettingDefinitions = pythonPluginsEngine.parsePySettingDefinitions(listAsList);
                                    } catch (Exception unused) {
                                    }
                                }
                            } catch (Exception unused2) {
                            }
                        }
                    }
                    if (textSetting == null && pySettingDefinitions.isEmpty()) {
                        SettingsRegistry.getInstance().onSettingNotFound(baseFragment);
                        return;
                    }
                }
                if (textSetting == null) {
                    return;
                }
                PluginSettingsActivity pluginSettingsActivity = new PluginSettingsActivity(plugin, textSetting.getText(), pySettingDefinitions, textSetting.getCreateSubFragmentCallback(), strArr[strArr.length - 1]);
                Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length - 1);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-104541520676399L);
                settingsLinkPrefix = pluginSettingsActivity.setSettingsLinkPrefix(ArraysKt.joinToString$default(objArrCopyOf, Deobfuscator$exteraGramDev$TMessagesProj.getString(-104593060283951L), (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    baseFragment.presentFragment(settingsLinkPrefix);
                }
            });
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSetting(String pluginId, String linkAlias, BaseFragment fragment) {
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-91811237611055L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-91927201728047L);
        Deobfuscator$exteraGramDev$TMessagesProj.getString(-91901431924271L);
        Plugin plugin = getPluginsController().getPlugins().get(pluginId);
        if (plugin != null) {
            openPluginSetting(plugin, linkAlias, fragment);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Updater {
        private static int TAG;
        private static boolean isLoading;
        private static long lastCheckUpdateTime;
        private static boolean notifyWhenChangeStatus;
        private static int status;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Pattern PYTHON_SDK_APP_VERSION_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-103433419114031L));
        private static final Pattern PYTHON_SDK_APP_VERSION_CODE_PATTERN = Pattern.compile(Deobfuscator$exteraGramDev$TMessagesProj.getString(-103622397675055L));
        private static final Runnable notifyRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginsPySdkInfoChanged, new Object[0]);
            }
        };

        @JvmStatic
        public static final void checkUpdates() {
            INSTANCE.checkUpdates();
        }

        @JvmStatic
        public static final void checkUpdates(boolean z) {
            INSTANCE.checkUpdates(z);
        }

        @JvmStatic
        public static final void deleteSdkUpdateFile() {
            INSTANCE.deleteSdkUpdateFile();
        }

        @JvmStatic
        public static final File getPythonCurrentSdkFile() {
            return INSTANCE.getPythonCurrentSdkFile();
        }

        @JvmStatic
        public static final File getPythonSdkUpdateFile() {
            return INSTANCE.getPythonSdkUpdateFile();
        }

        @JvmStatic
        public static final CharSequence getStateString() {
            return INSTANCE.getStateString();
        }

        @JvmStatic
        public static final CharSequence getVersion() {
            return INSTANCE.getVersion();
        }

        @JvmStatic
        public static final String hashBytes(InputStream inputStream) {
            return INSTANCE.hashBytes(inputStream);
        }

        @JvmStatic
        public static final boolean isAppVersionCodeCompatible(String str, String str2) {
            return INSTANCE.isAppVersionCodeCompatible(str, str2);
        }

        @JvmStatic
        public static final boolean isAppVersionCompatible(String str, String str2) {
            return INSTANCE.isAppVersionCompatible(str, str2);
        }

        @JvmStatic
        public static final boolean isSdkFromApk() {
            return INSTANCE.isSdkFromApk();
        }

        @JvmStatic
        public static final boolean isSdkVersionNewer(String str, boolean z) {
            return INSTANCE.isSdkVersionNewer(str, z);
        }

        @JvmStatic
        public static final Companion.PythonSdkUpdateInfo parsePythonSdkUpdateResponse(TLRPC.messages_Messages messages_messages) {
            return INSTANCE.parsePythonSdkUpdateResponse(messages_messages);
        }

        @JvmStatic
        public static final File requestSdkFromApkFile() {
            return INSTANCE.requestSdkFromApkFile();
        }

        @JvmStatic
        public static final void restoreSdkFromApk() {
            INSTANCE.restoreSdkFromApk();
        }

        @JvmStatic
        public static final void savePythonSdkArchive(TLRPC.Message message, TLRPC.Document document) {
            INSTANCE.savePythonSdkArchive(message, document);
        }

        @JvmStatic
        public static final void savePythonSdkArchive(TLRPC.Message message, TLRPC.Document document, boolean z) {
            INSTANCE.savePythonSdkArchive(message, document, z);
        }

        @JvmStatic
        public static final InputStream sdkFromApk() {
            return INSTANCE.sdkFromApk();
        }

        @JvmStatic
        public static final void setBuildFromApk(boolean z) {
            INSTANCE.setBuildFromApk(z);
        }

        @JvmStatic
        public static final void zipFolder(File file, File file2) {
            INSTANCE.zipFolder(file, file2);
        }

        @Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001GB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u001bH\u0007J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0007J\b\u0010\u001d\u001a\u00020\u001eH\u0007J\b\u0010\u001f\u001a\u00020\u000bH\u0007J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u000bH\u0007J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001eH\u0007J\b\u0010&\u001a\u00020'H\u0007J\b\u0010(\u001a\u00020'H\u0007J\b\u0010)\u001a\u00020'H\u0007J\b\u0010*\u001a\u00020!H\u0007J\b\u0010+\u001a\u00020!H\u0007J\u0010\u0010+\u001a\u00020!2\u0006\u0010,\u001a\u00020\u000bH\u0007J\b\u0010-\u001a\u00020!H\u0007J\u0010\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020'H\u0002J\u0010\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020\rH\u0002J\u0012\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u000205H\u0007J\u0018\u00106\u001a\u00020\u000b2\u0006\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\u000bH\u0007J\u0018\u00109\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020$2\u0006\u0010;\u001a\u00020$H\u0007J\u0018\u0010<\u001a\u00020\u000b2\u0006\u0010:\u001a\u00020$2\u0006\u0010;\u001a\u00020$H\u0007J\u0018\u0010=\u001a\u00020!2\u0006\u0010>\u001a\u00020'2\u0006\u0010?\u001a\u00020'H\u0007J\u0018\u0010@\u001a\u00020!2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u000bH\u0002J\u001c\u0010D\u001a\u00020!2\b\u0010E\u001a\u0004\u0018\u00010F2\b\u0010A\u001a\u0004\u0018\u00010BH\u0007J$\u0010D\u001a\u00020!2\b\u0010E\u001a\u0004\u0018\u00010F2\b\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010C\u001a\u00020\u000bH\u0007R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006H"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "PYTHON_SDK_APP_VERSION_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "PYTHON_SDK_APP_VERSION_CODE_PATTERN", "notifyRunnable", "Ljava/lang/Runnable;", "isLoading", _UrlKt.FRAGMENT_ENCODE_SET, "status", _UrlKt.FRAGMENT_ENCODE_SET, "getStatus", "()I", "setStatus", "(I)V", "notifyWhenChangeStatus", "getNotifyWhenChangeStatus", "()Z", "setNotifyWhenChangeStatus", "(Z)V", "lastCheckUpdateTime", _UrlKt.FRAGMENT_ENCODE_SET, "TAG", "getVersion", _UrlKt.FRAGMENT_ENCODE_SET, "getStateString", "sdkFromApk", "Ljava/io/InputStream;", "isSdkFromApk", "setBuildFromApk", _UrlKt.FRAGMENT_ENCODE_SET, "fromApk", "hashBytes", _UrlKt.FRAGMENT_ENCODE_SET, "inputStream", "getPythonSdkUpdateFile", "Ljava/io/File;", "getPythonCurrentSdkFile", "requestSdkFromApkFile", "deleteSdkUpdateFile", "checkUpdates", "force", "restoreSdkFromApk", "touchFile", "file", "updateStatus", "newStatus", "parsePythonSdkUpdateResponse", "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion$PythonSdkUpdateInfo;", "res", "Lorg/telegram/tgnet/TLRPC$messages_Messages;", "isSdkVersionNewer", "remoteVersion", "isBeta", "isAppVersionCompatible", "operator", "targetVersion", "isAppVersionCodeCompatible", "zipFolder", "sourceDir", "zipFile", "copyArchiveToPluginsDirectory", "document", "Lorg/telegram/tgnet/TLRPC$Document;", "autoRestartEngine", "savePythonSdkArchive", "msg", "Lorg/telegram/tgnet/TLRPC$Message;", "PythonSdkUpdateInfo", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final int getStatus() {
                return Updater.status;
            }

            public final void setStatus(int i) {
                Updater.status = i;
            }

            public final boolean getNotifyWhenChangeStatus() {
                return Updater.notifyWhenChangeStatus;
            }

            public final void setNotifyWhenChangeStatus(boolean z) {
                Updater.notifyWhenChangeStatus = z;
            }

            @JvmStatic
            public final CharSequence getVersion() {
                String sdk_version = (ExteraConfig.getPluginsEngine() && PythonPluginsEngine.sdkInitialized) ? PythonPluginsEngine.INSTANCE.getSDK_VERSION() : null;
                boolean sdk_beta = PythonPluginsEngine.INSTANCE.getSDK_BETA();
                if (sdk_version == null && PythonPluginsEngine.SDK_DIR != null) {
                    File file = new File(PythonPluginsEngine.SDK_DIR, Deobfuscator$exteraGramDev$TMessagesProj.getString(-55188051478063L));
                    if (file.exists()) {
                        String string = StringsKt.trim((CharSequence) SimpliFile.readText$default(SimpliFiles.file(file), 65536L, null, 2, null)).toString();
                        sdk_beta = StringsKt.endsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-55213821281839L), false, 2, (Object) null);
                        sdk_version = StringsKt.substringBefore$default(string, '|', (String) null, 2, (Object) null);
                    }
                }
                if (sdk_version == null) {
                    return Deobfuscator$exteraGramDev$TMessagesProj.getString(-55806526768687L);
                }
                StringBuilder sb = new StringBuilder(RegisterSpec.PREFIX);
                sb.append(sdk_version);
                sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(sdk_beta ? -55836591539759L : -55862361343535L));
                return sb.toString();
            }

            @JvmStatic
            public final CharSequence getStateString() {
                int status = getStatus();
                if (status == 0) {
                    return getVersion();
                }
                if (status == 1) {
                    return LocaleController.getString(C2573R.string.CheckingForUpdates);
                }
                if (status != 2) {
                    if (status == 3) {
                        return LocaleController.getString(C2573R.string.LoadingUpdate);
                    }
                    if (status != 4) {
                        return null;
                    }
                    return LocaleController.getString(C2573R.string.RestartPluginSystemToApplyUpdate);
                }
                return LocaleController.getString(C2573R.string.LatestVersionInstalled) + Deobfuscator$exteraGramDev$TMessagesProj.getString(-55870951278127L) + ((Object) getVersion()) + ')';
            }

            /* JADX INFO: loaded from: classes4.dex */
            @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010%\u001a\u00020&J\u0006\u0010'\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0013\"\u0004\b$\u0010\u0015¨\u0006("}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion$PythonSdkUpdateInfo;", "Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;", "<init>", "()V", "message", "Lorg/telegram/tgnet/TLRPC$Message;", "getMessage", "()Lorg/telegram/tgnet/TLRPC$Message;", "setMessage", "(Lorg/telegram/tgnet/TLRPC$Message;)V", "available", _UrlKt.FRAGMENT_ENCODE_SET, "getAvailable", "()Z", "setAvailable", "(Z)V", "channel", _UrlKt.FRAGMENT_ENCODE_SET, "getChannel", "()Ljava/lang/String;", "setChannel", "(Ljava/lang/String;)V", "appVersionOperator", "getAppVersionOperator", "setAppVersionOperator", "appVersion", "getAppVersion", "setAppVersion", "appVersionCodeOperator", "getAppVersionCodeOperator", "setAppVersionCodeOperator", "appVersionCode", "getAppVersionCode", "setAppVersionCode", "abi", "getAbi", "setAbi", "clear", _UrlKt.FRAGMENT_ENCODE_SET, "canInstall", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
            public static final class PythonSdkUpdateInfo extends TLRPC.TL_help_appUpdate {
                private String abi;
                private String appVersion;
                private String appVersionCode;
                private String appVersionCodeOperator;
                private String appVersionOperator;
                private boolean available;
                private String channel;
                private TLRPC.Message message;

                public PythonSdkUpdateInfo() {
                    clear();
                }

                public final TLRPC.Message getMessage() {
                    return this.message;
                }

                public final void setMessage(TLRPC.Message message) {
                    this.message = message;
                }

                public final boolean getAvailable() {
                    return this.available;
                }

                public final void setAvailable(boolean z) {
                    this.available = z;
                }

                public final String getChannel() {
                    return this.channel;
                }

                public final void setChannel(String str) {
                    this.channel = str;
                }

                public final String getAppVersionOperator() {
                    return this.appVersionOperator;
                }

                public final void setAppVersionOperator(String str) {
                    this.appVersionOperator = str;
                }

                public final String getAppVersion() {
                    return this.appVersion;
                }

                public final void setAppVersion(String str) {
                    this.appVersion = str;
                }

                public final String getAppVersionCodeOperator() {
                    return this.appVersionCodeOperator;
                }

                public final void setAppVersionCodeOperator(String str) {
                    this.appVersionCodeOperator = str;
                }

                public final String getAppVersionCode() {
                    return this.appVersionCode;
                }

                public final void setAppVersionCode(String str) {
                    this.appVersionCode = str;
                }

                public final String getAbi() {
                    return this.abi;
                }

                public final void setAbi(String str) {
                    this.abi = str;
                }

                public final void clear() {
                    this.message = null;
                    this.available = false;
                    this.can_not_skip = false;
                    this.channel = null;
                    this.version = null;
                    this.appVersion = null;
                    this.appVersionOperator = null;
                    this.appVersionCode = null;
                    this.appVersionCodeOperator = null;
                    this.document = null;
                    this.abi = null;
                }

                public final boolean canInstall() {
                    String str = this.appVersion;
                    String str2 = this.appVersionOperator;
                    String str3 = this.appVersionCode;
                    String str4 = this.appVersionCodeOperator;
                    String str5 = this.version;
                    return (str == null || str2 == null || Updater.INSTANCE.isAppVersionCompatible(str2, str)) && (str3 == null || str4 == null || Updater.INSTANCE.isAppVersionCodeCompatible(str4, str3)) && ((str5 == null || Updater.INSTANCE.isSdkVersionNewer(str5, Intrinsics.areEqual(this.channel, Deobfuscator$exteraGramDev$TMessagesProj.getString(-63120856073775L)))) && this.document != null && Intrinsics.areEqual(this.abi, Build.SUPPORTED_ABIS[0]));
                }
            }

            @JvmStatic
            public final InputStream sdkFromApk() throws IOException {
                InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open(Deobfuscator$exteraGramDev$TMessagesProj.getString(-55892426114607L) + Build.SUPPORTED_ABIS[0] + Deobfuscator$exteraGramDev$TMessagesProj.getString(-55965440558639L));
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-56064224806447L);
                return inputStreamOpen;
            }

            @JvmStatic
            public final boolean isSdkFromApk() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-56038455002671L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-55587483436591L)).exists() || requestSdkFromApkFile().exists();
            }

            @JvmStatic
            public final void setBuildFromApk(boolean fromApk) {
                File file = new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-55608958273071L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-55707742520879L));
                if (file.exists() && !fromApk) {
                    PythonPluginsEngine.INSTANCE.deleteFileIfExists(file);
                }
                if (file.exists() || !fromApk) {
                    return;
                }
                touchFile(file);
            }

            @JvmStatic
            public final String hashBytes(InputStream inputStream) {
                int i;
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-55797936834095L);
                try {
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54200208999983L));
                        byte[] bArr = new byte[1048576];
                        while (true) {
                            int i2 = inputStream.read(bArr);
                            if (i2 <= 0) {
                                break;
                            }
                            messageDigest.update(bArr, 0, i2);
                        }
                        byte[] bArrDigest = messageDigest.digest();
                        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
                        for (byte b2 : bArrDigest) {
                            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                            String str = String.format(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54157259327023L), Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1));
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-54170144228911L);
                            sb.append(str);
                        }
                        String string = sb.toString();
                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-54221683836463L);
                        CloseableKt.closeFinally(inputStream, null);
                        return string;
                    } finally {
                    }
                } catch (IOException e) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
                    return null;
                } catch (NoSuchAlgorithmException e2) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m817m(e2);
                    return null;
                }
            }

            @JvmStatic
            public final File getPythonSdkUpdateFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-54350532855343L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-54397777495599L));
            }

            @JvmStatic
            public final File getPythonCurrentSdkFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-54419252332079L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-53916741158447L));
            }

            @JvmStatic
            public final File requestSdkFromApkFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Deobfuscator$exteraGramDev$TMessagesProj.getString(-53886676387375L)), Deobfuscator$exteraGramDev$TMessagesProj.getString(-54002640504367L));
            }

            @JvmStatic
            public final void deleteSdkUpdateFile() {
                File pythonSdkUpdateFile = getPythonSdkUpdateFile();
                if (pythonSdkUpdateFile.exists()) {
                    PythonPluginsEngine.INSTANCE.deleteFileIfExists(pythonSdkUpdateFile);
                    updateStatus(0);
                }
            }

            @JvmStatic
            public final void checkUpdates() {
                checkUpdates(false);
            }

            @JvmStatic
            public final void checkUpdates(boolean force) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if ((getStatus() != 1 || Math.abs(jCurrentTimeMillis - Updater.lastCheckUpdateTime) >= 6000) && getStatus() <= 2) {
                    if (!force) {
                        boolean z = Math.abs(jCurrentTimeMillis - ExteraConfig.getSdkUpdateScheduleTimestamp()) < DurationKt.MILLIS_IN_HOUR;
                        if (!ExteraConfig.getPluginsEngine() || ExteraConfig.getPluginsSafeMode() || z) {
                            return;
                        }
                    }
                    ExteraConfig.setSdkUpdateScheduleTimestamp(jCurrentTimeMillis);
                    updateStatus(1);
                    Updater.lastCheckUpdateTime = jCurrentTimeMillis;
                    RemoteUtils.searchMessages(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54054180111919L), new TLRPC.TL_inputMessagesFilterDocument(), new Utilities.Callback2() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$$ExternalSyntheticLambda1
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            PythonPluginsEngine.Updater.Companion.m2300$r8$lambda$us7HlP4jQnbH6ikxQnBYzBZPGU((TLRPC.messages_Messages) obj, (TLRPC.TL_error) obj2);
                        }
                    }, 3000);
                }
            }

            /* JADX INFO: renamed from: $r8$lambda$us7HlP4jQnbH-6ikxQnBYzBZPGU, reason: not valid java name */
            public static void m2300$r8$lambda$us7HlP4jQnbH6ikxQnBYzBZPGU(TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
                Companion companion;
                final PythonSdkUpdateInfo pythonSdkUpdateResponse;
                boolean z = false;
                if (tL_error != null) {
                    FileLog.m896e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-53409935017519L) + tL_error.text);
                } else if (messages_messages != null && (pythonSdkUpdateResponse = (companion = Updater.INSTANCE).parsePythonSdkUpdateResponse(messages_messages)) != null) {
                    if (!ExteraConfig.getPluginsPySdkAutoUpdate() && !pythonSdkUpdateResponse.can_not_skip) {
                        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                        if (safeLastFragment != null) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PythonPluginsEngine.Updater.Companion.checkUpdates$lambda$0$0(safeLastFragment, pythonSdkUpdateResponse);
                                }
                            });
                        }
                        z = true;
                    }
                    if (!z) {
                        try {
                            companion.savePythonSdkArchive(pythonSdkUpdateResponse.getMessage(), pythonSdkUpdateResponse.document);
                            z = true;
                        } catch (IOException e) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-53775007237679L));
                            sb.append(pythonSdkUpdateResponse.getChannel());
                            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-53341215540783L));
                            TLRPC.Message message = pythonSdkUpdateResponse.getMessage();
                            sb.append(message != null ? Integer.valueOf(message.id) : null);
                            sb.append(')');
                            FileLog.m897e(sb.toString(), e);
                        }
                    }
                }
                if (z) {
                    return;
                }
                Updater.INSTANCE.updateStatus(2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void checkUpdates$lambda$0$0(BaseFragment baseFragment, PythonSdkUpdateInfo pythonSdkUpdateInfo) {
                baseFragment.showDialog(new PythonPluginsEngine$Updater$Companion$checkUpdates$1$1$1(pythonSdkUpdateInfo, baseFragment.getParentActivity(), baseFragment.getCurrentAccount()));
            }

            @JvmStatic
            public final void restoreSdkFromApk() {
                touchFile(requestSdkFromApkFile());
            }

            private final void touchFile(File file) {
                Object objM3291constructorimpl;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(SimpliFiles.file(file).touch());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                if (thM3294exceptionOrNullimpl != null) {
                    FileLog.m898e(thM3294exceptionOrNullimpl);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void updateStatus(int newStatus) {
                setStatus(newStatus);
                if (getNotifyWhenChangeStatus()) {
                    AndroidUtilities.cancelRunOnUIThread(Updater.notifyRunnable);
                    AndroidUtilities.runOnUIThread(Updater.notifyRunnable, newStatus == 1 ? 0L : 600L);
                }
            }

            @JvmStatic
            public final PythonSdkUpdateInfo parsePythonSdkUpdateResponse(TLRPC.messages_Messages res) {
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-54024115340847L);
                PythonSdkUpdateInfo pythonSdkUpdateInfo = new PythonSdkUpdateInfo();
                Iterator<TLRPC.Message> it = res.messages.iterator();
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-54041295210031L);
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TLRPC.Message next = it.next();
                    if (next instanceof TLRPC.TL_message) {
                        TLRPC.TL_message tL_message = (TLRPC.TL_message) next;
                        if (!TextUtils.isEmpty(tL_message.message) && (tL_message.media instanceof TLRPC.TL_messageMediaDocument)) {
                            String str = tL_message.message;
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-54101424752175L);
                            boolean zContains$default = StringsKt.contains$default((CharSequence) str, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-54754259781167L), false, 2, (Object) null);
                            String str2 = tL_message.message;
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-54831569192495L);
                            boolean zContains$default2 = StringsKt.contains$default((CharSequence) str2, (CharSequence) Deobfuscator$exteraGramDev$TMessagesProj.getString(-54797209454127L), false, 2, (Object) null);
                            if (zContains$default || zContains$default2) {
                                if (!zContains$default2 || ExteraConfig.getPluginsPySdkBetaVersions()) {
                                    StringBuilder sb = new StringBuilder();
                                    String str3 = tL_message.message;
                                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-54865928930863L);
                                    Iterator it2 = StringsKt.split$default((CharSequence) str3, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-54969008145967L)}, false, 0, 6, (Object) null).iterator();
                                    boolean z = false;
                                    while (it2.hasNext()) {
                                        String string = StringsKt.trim((CharSequence) it2.next()).toString();
                                        if (!TextUtils.isEmpty(string) || !z) {
                                            if (StringsKt.startsWith$default(string, Deobfuscator$exteraGramDev$TMessagesProj.getString(-54908878603823L), false, 2, (Object) null)) {
                                                pythonSdkUpdateInfo.setChannel(Deobfuscator$exteraGramDev$TMessagesProj.getString(zContains$default2 ? -54479381874223L : -54440727168559L));
                                                z = true;
                                            } else if (z) {
                                                Matcher matcher = Updater.PYTHON_SDK_APP_VERSION_PATTERN.matcher(string);
                                                if (!matcher.matches()) {
                                                    Matcher matcher2 = Updater.PYTHON_SDK_APP_VERSION_CODE_PATTERN.matcher(string);
                                                    if (matcher2.matches()) {
                                                        pythonSdkUpdateInfo.setAppVersionCodeOperator(matcher2.group(1));
                                                        String strGroup = matcher2.group(2);
                                                        pythonSdkUpdateInfo.setAppVersionCode(strGroup != null ? StringsKt.trim((CharSequence) strGroup).toString() : null);
                                                    } else {
                                                        List listSplit$default = StringsKt.split$default((CharSequence) string, new String[]{Deobfuscator$exteraGramDev$TMessagesProj.getString(-54539511416367L)}, false, 2, 2, (Object) null);
                                                        if (listSplit$default.size() == 2) {
                                                            String string2 = StringsKt.trim((CharSequence) listSplit$default.get(0)).toString();
                                                            String string3 = StringsKt.trim((CharSequence) listSplit$default.get(1)).toString();
                                                            int iHashCode = string2.hashCode();
                                                            if (iHashCode != -1085916422) {
                                                                if (iHashCode != 96360) {
                                                                    if (iHashCode == 351608024 && string2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54629705729583L))) {
                                                                        pythonSdkUpdateInfo.version = string3;
                                                                    }
                                                                } else if (string2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54548101350959L))) {
                                                                    pythonSdkUpdateInfo.setAbi(string3);
                                                                }
                                                            } else if (string2.equals(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54496561743407L))) {
                                                                pythonSdkUpdateInfo.can_not_skip = Boolean.parseBoolean(string3);
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    pythonSdkUpdateInfo.setAppVersionOperator(matcher.group(1));
                                                    String strGroup2 = matcher.group(2);
                                                    pythonSdkUpdateInfo.setAppVersion(strGroup2 != null ? StringsKt.trim((CharSequence) strGroup2).toString() : null);
                                                }
                                            } else {
                                                sb.append(string);
                                                sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-54530921481775L));
                                            }
                                        }
                                    }
                                    pythonSdkUpdateInfo.document = tL_message.media.document;
                                    if (!pythonSdkUpdateInfo.canInstall()) {
                                        pythonSdkUpdateInfo.clear();
                                    } else {
                                        pythonSdkUpdateInfo.text = sb.toString();
                                        ArrayList<TLRPC.MessageEntity> arrayList = new ArrayList<>();
                                        Deobfuscator$exteraGramDev$TMessagesProj.getString(-54595345991215L);
                                        for (TLRPC.MessageEntity messageEntity : tL_message.entities) {
                                            if (!(messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                                                arrayList.add(messageEntity);
                                            }
                                        }
                                        pythonSdkUpdateInfo.entities = arrayList;
                                        pythonSdkUpdateInfo.setMessage(next);
                                    }
                                }
                            }
                        }
                    }
                }
                if (pythonSdkUpdateInfo.getMessage() == null) {
                    return null;
                }
                pythonSdkUpdateInfo.setAvailable((pythonSdkUpdateInfo.document == null || TextUtils.isEmpty(pythonSdkUpdateInfo.version)) ? false : true);
                return pythonSdkUpdateInfo;
            }

            @JvmStatic
            public final boolean isSdkVersionNewer(String remoteVersion, boolean isBeta) {
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-54655475533359L);
                if (!ExteraConfig.getPluginsPySdkBetaVersions() && PythonPluginsEngine.INSTANCE.getSDK_BETA()) {
                    return !isBeta;
                }
                Companion companion = PythonPluginsEngine.INSTANCE;
                if (companion.getSDK_VERSION() != null) {
                    return AppUtils.compareVersions(Deobfuscator$exteraGramDev$TMessagesProj.getString(-53066337633839L), remoteVersion, companion.getSDK_VERSION());
                }
                return false;
            }

            @JvmStatic
            public final boolean isAppVersionCompatible(String operator, String targetVersion) {
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-53074927568431L);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-53173711816239L);
                return AppUtils.compareVersions(operator, BuildVars.BUILD_VERSION_STRING, targetVersion);
            }

            @JvmStatic
            public final boolean isAppVersionCodeCompatible(String operator, String targetVersion) {
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-53233841358383L);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-53212366521903L);
                return AppUtils.compareVersions(operator, BuildVars.BUILD_VERSION, Integer.parseInt(targetVersion));
            }

            @JvmStatic
            public final void zipFolder(File sourceDir, File zipFile) {
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-53272496064047L);
                Deobfuscator$exteraGramDev$TMessagesProj.getString(-52834409399855L);
                SimpliFiles.directory(sourceDir).zipTo(zipFile, OverwritePolicy.REPLACE);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void copyArchiveToPluginsDirectory(TLRPC.Document document, boolean autoRestartEngine) {
                File pythonSdkUpdateFile = getPythonSdkUpdateFile();
                try {
                    File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document);
                    Deobfuscator$exteraGramDev$TMessagesProj.getString(-52800049661487L);
                    SimpliFiles.file(pathToAttach).copyTo(pythonSdkUpdateFile, OverwritePolicy.REPLACE);
                    if (autoRestartEngine) {
                        PluginsController.INSTANCE.getInstance().restart();
                    } else {
                        updateStatus(4);
                    }
                } catch (IOException e) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-52950373516847L), e);
                    updateStatus(2);
                } catch (Exception e2) {
                    FileLog.m897e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-53637568284207L), e2);
                    updateStatus(2);
                }
                Updater.isLoading = false;
            }

            @JvmStatic
            public final void savePythonSdkArchive(TLRPC.Message msg, TLRPC.Document document) {
                savePythonSdkArchive(msg, document, false);
            }

            @JvmStatic
            public final void savePythonSdkArchive(TLRPC.Message msg, final TLRPC.Document document, final boolean autoRestartEngine) {
                if (Updater.isLoading || msg == null || document == null) {
                    return;
                }
                MessageObject messageObject = new MessageObject(UserConfig.selectedAccount, msg, false, true);
                Updater.isLoading = true;
                updateStatus(3);
                if (!messageObject.mediaExists) {
                    Updater.TAG = DownloadController.getInstance(UserConfig.selectedAccount).generateObserverTag();
                    FileLoader.getInstance(UserConfig.selectedAccount).loadFile(document, messageObject, 1, 0);
                    DownloadController.getInstance(UserConfig.selectedAccount).addLoadingFileObserver(FileLoader.getAttachFileName(document), messageObject, new DownloadController.FileDownloadProgressListener() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$savePythonSdkArchive$1
                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onProgressDownload(String fileName, long downloadSize, long totalSize) {
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-65362829002287L);
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onProgressUpload(String fileName, long downloadSize, long totalSize, boolean isEncrypted) {
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-64929037305391L);
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onFailedDownload(String fileName, boolean canceled) {
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-65148080637487L);
                            FileLog.m896e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-65264044754479L));
                            PythonPluginsEngine.Updater.isLoading = false;
                            PythonPluginsEngine.Updater.INSTANCE.updateStatus(2);
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onSuccessDownload(String fileName) {
                            Deobfuscator$exteraGramDev$TMessagesProj.getString(-65401483707951L);
                            PythonPluginsEngine.Updater.INSTANCE.copyArchiveToPluginsDirectory(document, autoRestartEngine);
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public int getObserverTag() {
                            return PythonPluginsEngine.Updater.TAG;
                        }
                    });
                    return;
                }
                copyArchiveToPluginsDirectory(document, autoRestartEngine);
            }
        }

        private Updater() {
        }
    }
}
