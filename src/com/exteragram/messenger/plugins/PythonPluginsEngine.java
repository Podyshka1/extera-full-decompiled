package com.exteragram.messenger.plugins;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import androidx.core.content.FileProvider;
import com.android.dx.rop.code.RegisterSpec;
import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
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
import com.exteragram.messenger.plugins.ui.components.PythonSdkUpdateAlert;
import com.exteragram.messenger.plugins.utils.PyObjectUtils;
import com.exteragram.messenger.plugins.utils.SdkSignature;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaTrack;
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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.time.DurationKt;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline1;
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
import org.telegram.messenger.C2807R;
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
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000ú\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000  \u00012\u00020\u0001:\b \u0001¡\u0001¢\u0001£\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001d\u001a\u00020\u001eH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0002J\b\u0010 \u001a\u00020!H\u0002J\u001c\u0010\"\u001a\u00020\u000f2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020\u000fH\u0016J\b\u0010(\u001a\u00020\u0007H\u0002J\u0018\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020\u000fH\u0002J\b\u0010,\u001a\u00020\u000fH\u0002J\b\u0010-\u001a\u00020!H\u0002J \u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$2\u0006\u00100\u001a\u00020\u0006H\u0002J\u0010\u00101\u001a\u00020!2\u0006\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u00020!H\u0016J\b\u00105\u001a\u00020!H\u0002J\b\u00106\u001a\u00020!H\u0002J\r\u00107\u001a\u00020!H\u0000¢\u0006\u0002\b8J\u0010\u00109\u001a\u00020!2\u0006\u00102\u001a\u000203H\u0016J\u0010\u0010:\u001a\u00020!2\b\u00102\u001a\u0004\u0018\u000103J\u0016\u0010;\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u0006J \u0010;\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\b\u0010>\u001a\u0004\u0018\u00010?J*\u0010;\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\b\u0010>\u001a\u0004\u0018\u00010?2\b\u0010@\u001a\u0004\u0018\u00010AJ\"\u0010B\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010C\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010AH\u0002J&\u0010D\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00062\f\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00060GH\u0002J\u0010\u0010H\u001a\u00020!2\u0006\u0010<\u001a\u00020\u0006H\u0002J\b\u0010I\u001a\u00020!H\u0002J\u0018\u0010J\u001a\u00020!2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u0006H\u0002J\b\u0010L\u001a\u00020!H\u0002J\u0018\u0010M\u001a\u00020!2\u0006\u0010N\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u0006H\u0002J*\u0010O\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010=\u001a\u00020\u00062\u0006\u0010C\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u000e\u0010P\u001a\u00020!2\u0006\u0010<\u001a\u00020\u0006J\u0010\u0010Q\u001a\u00020!2\u0006\u0010<\u001a\u00020\u0006H\u0002J\u001a\u0010R\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\b\u0010S\u001a\u0004\u0018\u00010$H\u0002J\"\u0010T\u001a\u00020!2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u00062\b\u0010S\u001a\u0004\u0018\u00010$H\u0002J(\u0010U\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0006\u0010V\u001a\u00020\u000f2\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010WH\u0016J \u0010X\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010WH\u0016J\u0010\u0010Y\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020\u0006H\u0016J\b\u0010[\u001a\u00020\u000fH\u0016J\u0010\u0010\\\u001a\u00020!2\u0006\u0010Z\u001a\u00020\u0006H\u0016J\u0010\u0010]\u001a\u00020!2\u0006\u0010Z\u001a\u00020\u0006H\u0016J(\u0010^\u001a\u00020!2\u0006\u0010=\u001a\u00020\u00062\b\u0010C\u001a\u0004\u0018\u00010?2\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010WJ4\u0010^\u001a\u00020!2\u0006\u0010=\u001a\u00020\u00062\b\u0010C\u001a\u0004\u0018\u00010?2\u000e\u00102\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010W2\b\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u0012\u0010_\u001a\u0004\u0018\u00010\u00062\u0006\u0010<\u001a\u00020\u0006H\u0002J\u000e\u0010`\u001a\u00020a2\u0006\u0010=\u001a\u00020\u0006J\u001a\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\f\u0010e\u001a\b\u0012\u0004\u0012\u00020\u00070cJ\u0018\u0010f\u001a\n\u0012\u0004\u0012\u00020d\u0018\u00010c2\u0006\u0010Z\u001a\u00020\u0006H\u0016J\u0010\u0010g\u001a\u00020!2\u0006\u0010h\u001a\u00020\u0006H\u0016J_\u0010i\u001a\b\u0012\u0004\u0012\u0002Hk0j\"\u0004\b\u0000\u0010k2\b\u0010l\u001a\u0004\u0018\u00010\u00072\b\u0010m\u001a\u0004\u0018\u0001Hk2\f\u0010n\u001a\b\u0012\u0004\u0012\u0002Hk0o2\u0006\u0010p\u001a\u00020\u00062\f\u0010q\u001a\b\u0012\u0004\u0012\u0002Hk0r2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020t0WH\u0002¢\u0006\u0002\u0010uJ]\u0010i\u001a\b\u0012\u0004\u0012\u0002Hk0j\"\u0004\b\u0000\u0010k2\u0006\u0010<\u001a\u00020\u00062\b\u0010m\u001a\u0004\u0018\u0001Hk2\f\u0010n\u001a\b\u0012\u0004\u0012\u0002Hk0o2\u0006\u0010p\u001a\u00020\u00062\f\u0010q\u001a\b\u0012\u0004\u0012\u0002Hk0r2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020t0WH\u0002¢\u0006\u0002\u0010vJ0\u0010w\u001a\b\u0012\u0004\u0012\u00020x0j2\u0006\u0010y\u001a\u00020\u00062\u0006\u0010z\u001a\u00020{2\b\u0010|\u001a\u0004\u0018\u00010x2\u0006\u0010<\u001a\u00020\u0006H\u0016J<\u0010}\u001a\b\u0012\u0004\u0012\u00020~0j2\u0006\u0010y\u001a\u00020\u00062\u0006\u0010z\u001a\u00020{2\b\u0010\u007f\u001a\u0004\u0018\u00010x2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u00012\b\u0010l\u001a\u0004\u0018\u00010\u0007J<\u0010}\u001a\b\u0012\u0004\u0012\u00020~0j2\u0006\u0010y\u001a\u00020\u00062\u0006\u0010z\u001a\u00020{2\b\u0010\u007f\u001a\u0004\u0018\u00010x2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u00012\u0006\u0010<\u001a\u00020\u0006H\u0016J5\u0010\u0082\u0001\u001a\t\u0012\u0005\u0012\u00030\u0083\u00010j2\u0007\u0010\u0084\u0001\u001a\u00020\u00062\u0006\u0010z\u001a\u00020{2\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0083\u00012\u0006\u0010<\u001a\u00020\u0006H\u0016J5\u0010\u0086\u0001\u001a\t\u0012\u0005\u0012\u00030\u0087\u00010j2\u0007\u0010\u0088\u0001\u001a\u00020\u00062\u0006\u0010z\u001a\u00020{2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0087\u00012\u0006\u0010<\u001a\u00020\u0006H\u0016J,\u0010\u008a\u0001\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010j2\u0006\u0010z\u001a\u00020{2\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u0006\u0010<\u001a\u00020\u0006H\u0016J\u001c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u00062\b\u0010=\u001a\u0004\u0018\u00010\u00062\u0007\u0010\u008e\u0001\u001a\u00020\u0006J \u0010\u008f\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0090\u00012\b\u0010=\u001a\u0004\u0018\u00010\u0006H\u0016J'\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u0010<\u001a\u00020\u00062\u0007\u0010\u0092\u0001\u001a\u00020\u00062\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u000bH\u0016J%\u0010\u0094\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0007\u0010\u0092\u0001\u001a\u00020\u00062\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u000bH\u0016J\u0011\u0010\u0096\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020\u0006H\u0016J\u001e\u0010\u0097\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u0003\u0018\u00010\u0090\u00012\u0006\u0010<\u001a\u00020\u0006H\u0016J\u001d\u0010\u0098\u0001\u001a\u00020!2\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\b\u0010\u008c\u0001\u001a\u00030\u009b\u0001H\u0016J\u001b\u0010\u009c\u0001\u001a\u00020!2\u0006\u0010Z\u001a\u00020\u00062\b\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016J\u001c\u0010\u009c\u0001\u001a\u00020!2\u0007\u0010\u009d\u0001\u001a\u00020?2\b\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016J%\u0010\u009e\u0001\u001a\u00020!2\u0007\u0010\u009d\u0001\u001a\u00020?2\u0007\u0010\u009f\u0001\u001a\u00020\u00062\b\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016J$\u0010\u009e\u0001\u001a\u00020!2\u0006\u0010<\u001a\u00020\u00062\u0007\u0010\u009f\u0001\u001a\u00020\u00062\b\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR(\u0010\n\u001a\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000RN\u0010\f\u001aB\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00060\u0006\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u000f0\u000f \u000e* \u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u00060\u0006\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\u000f0\u000f\u0018\u00010\r0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019¨\u0006¤\u0001"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine;", "Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;", "<init>", "()V", "pluginInstances", "Ljava/util/concurrent/ConcurrentHashMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/chaquo/python/PyObject;", "getPluginInstances", "()Ljava/util/concurrent/ConcurrentHashMap;", "settingsCache", _UrlKt.FRAGMENT_ENCODE_SET, "dependencyPaths", "Ljava/util/concurrent/ConcurrentHashMap$KeySetView;", "kotlin.jvm.PlatformType", _UrlKt.FRAGMENT_ENCODE_SET, "lifecycleGeneration", "Ljava/util/concurrent/atomic/AtomicInteger;", PluginsConstants.PYTHON, "Lcom/chaquo/python/Python;", "devServerClass", "debuggerListener", "getDebuggerListener", "()Lcom/chaquo/python/PyObject;", "setDebuggerListener", "(Lcom/chaquo/python/PyObject;)V", "basePluginClass", "getBasePluginClass", "setBasePluginClass", "getPluginsController", "Lcom/exteragram/messenger/plugins/PluginsController;", "getPython", "initPython", _UrlKt.FRAGMENT_ENCODE_SET, "isPlugin", "file", "Ljava/io/File;", "messageObject", "Lorg/telegram/messenger/MessageObject;", "isEngineAvailable", "requireBasePluginClass", "installSdkArchive", "archiveFile", "fromApk", "initSdk", "stopAndUnloadSdk", "removeModulesRecursive", "sysModules", "prefix", "init", Callback.METHOD_NAME, "Ljava/lang/Runnable;", "checkDevServer", "runDevServer", "stopDevServer", "stopPluginTasks", "stopPluginTasks$TMessagesProj", "shutdown", "loadPlugins", "loadPlugin", "pluginId", "filePath", "metadata", "Lcom/exteragram/messenger/plugins/Plugin;", "delegate", "Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;", "installPluginDependencies", "pluginMetadata", "disableShadowedPlugins", "dependencyName", "providedModules", _UrlKt.FRAGMENT_ENCODE_SET, "removePluginDependencies", "pruneDependencyPaths", "removeModulesUnderPath", "path", "removePluginPathsFromSysPath", "removeFromSysPath", "sysPath", "createPluginInstance", "unloadPlugin", "releasePluginObjects", "refreshImportCaches", "moduleDir", "evictPluginModule", "setPluginEnabled", "enabled", "Lorg/telegram/messenger/Utilities$Callback;", "deletePlugin", "getPluginPath", "id", "canOpenInExternalApp", "openInExternalApp", "sharePlugin", "loadPluginFromFile", "findModuleNameOwner", "validatePluginFromFile", "Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;", "parsePySettingDefinitions", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/models/SettingItem;", "pyDefinitionsList", "loadPluginSettings", "executeOnAppEvent", "eventType", "executeHook", "Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "T", "pluginInstance", "initialValue", "valueClass", "Ljava/lang/Class;", "pyResultKey", "caller", "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;", "errorLogger", _UrlKt.FRAGMENT_ENCODE_SET, "(Lcom/chaquo/python/PyObject;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;Lorg/telegram/messenger/Utilities$Callback;)Lcom/exteragram/messenger/plugins/PluginsController$HookResult;", "executePreRequestHook", "Lorg/telegram/tgnet/TLObject;", "requestName", "account", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, "executePostRequestHook", "Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;", PluginsConstants.RESPONSE, "error", "Lorg/telegram/tgnet/TLRPC$TL_error;", "executeUpdateHook", "Lorg/telegram/tgnet/TLRPC$Update;", "updateName", PluginsConstants.UPDATE, "executeUpdatesHook", "Lorg/telegram/tgnet/TLRPC$Updates;", "containerName", PluginsConstants.UPDATES, "executeSendMessageHook", "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;", PluginsConstants.PARAMS, "fetchParameterValue", "parameterName", "parsePluginMetadata", _UrlKt.FRAGMENT_ENCODE_SET, "getPluginSetting", PluginsConstants.Settings.KEY, "defaultValue", "setPluginSetting", "value", "clearPluginSettings", "getAllPluginSettings", "showInstallDialog", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;", "openPluginSettings", "plugin", "openPluginSetting", "linkAlias", "Companion", "PyMethodCaller", "SdkState", "Updater", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPythonPluginsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,2821:1\n1#2:2822\n41#3,12:2823\n41#3,12:2835\n41#3,12:2853\n41#3,12:2868\n41#3,12:2880\n41#3,12:2892\n41#3,12:2921\n1300#4,2:2847\n1315#4,4:2849\n777#4:2865\n873#4,2:2866\n1586#4:2904\n1661#4,3:2905\n296#4,2:2908\n1586#4:2910\n1661#4,3:2911\n777#4:2914\n873#4,2:2915\n1834#4,4:2917\n37#5,2:2933\n*S KotlinDebug\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine\n*L\n508#1:2823,12\n749#1:2835,12\n810#1:2853,12\n1086#1:2868,12\n1091#1:2880,12\n1106#1:2892,12\n1272#1:2921,12\n770#1:2847,2\n770#1:2849,4\n832#1:2865\n832#1:2866,2\n1343#1:2904\n1343#1:2905,3\n1344#1:2908,2\n1462#1:2910\n1462#1:2911,3\n1463#1:2914\n1463#1:2915,2\n679#1:2917,4\n2179#1:2933,2\n*E\n"})
public final class PythonPluginsEngine implements PluginsController.PluginsEngine {
    private static final long MAX_SDK_VERSION_BYTES = 65536;
    private static final String SAFE_MODE_ENABLE_ERROR = "Plugins cannot be enabled while safe mode is active";
    private static boolean SDK_BETA;
    private static File SDK_DIR;
    private static String SDK_VERSION;
    private static volatile boolean sdkInitialized;
    private volatile PyObject basePluginClass;
    private PyObject debuggerListener;
    private PyObject devServerClass;
    private volatile Python python;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Pattern VERSION_PATTERN = Pattern.compile("^(>=|<=|==|>|<)(.+)$");
    private static final String[] SDK_REQUIRED_MODULES = {"_sdk_version", "base_plugin", "plugin_settings"};
    private static final SecurityPolicy SDK_ARCHIVE_POLICY = SecurityPolicy.INSTANCE.builder().maxEntries(100000).maxTotalUncompressedSize(2147483648L).maxSingleFileSize(536870912).maxCompressionRatio(500.0d).build();
    private static final ArchiveExtractionOptions SDK_ARCHIVE_OPTIONS = ArchiveExtractionOptions.INSTANCE.builder().targetPolicy(ExtractionTargetPolicy.REPLACE).build();
    private static volatile SdkState sdkState = SdkState.READY;
    private final ConcurrentHashMap<String, PyObject> pluginInstances = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> settingsCache = new ConcurrentHashMap<>();
    private final ConcurrentHashMap.KeySetView<String, Boolean> dependencyPaths = ConcurrentHashMap.newKeySet();
    private final AtomicInteger lifecycleGeneration = new AtomicInteger();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bâ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J!\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0002\u0010\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "call", "Lcom/chaquo/python/PyObject;", "instance", "value", "(Lcom/chaquo/python/PyObject;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public interface PyMethodCaller<T> {
        PyObject call(PyObject instance, T value);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean canOpenInExternalApp() {
        return true;
    }

    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\"\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0002J\u0018\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020\tH\u0002J\u0012\u0010(\u001a\u00020#2\b\u0010)\u001a\u0004\u0018\u00010\u001eH\u0002J\u0012\u0010*\u001a\u00020\u00182\b\u0010&\u001a\u0004\u0018\u00010\u001eH\u0002J\u0014\u0010+\u001a\u0004\u0018\u00010\t2\b\u0010,\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010-\u001a\b\u0012\u0004\u0012\u00020\t0.2\b\u0010/\u001a\u0004\u0018\u00010\u001eH\u0002R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "VERSION_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "SDK_REQUIRED_MODULES", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", "SDK_ARCHIVE_POLICY", "Lorg/simplifiles/archive/security/SecurityPolicy;", "SDK_ARCHIVE_OPTIONS", "Lorg/simplifiles/archive/ArchiveExtractionOptions;", "MAX_SDK_VERSION_BYTES", _UrlKt.FRAGMENT_ENCODE_SET, "SAFE_MODE_ENABLE_ERROR", "SDK_VERSION", "getSDK_VERSION", "()Ljava/lang/String;", "setSDK_VERSION", "(Ljava/lang/String;)V", "SDK_BETA", _UrlKt.FRAGMENT_ENCODE_SET, "getSDK_BETA", "()Z", "setSDK_BETA", "(Z)V", "SDK_DIR", "Ljava/io/File;", "sdkInitialized", "sdkState", "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$SdkState;", "setSdkState", _UrlKt.FRAGMENT_ENCODE_SET, "state", "sdkModuleExists", "sdkDir", "moduleName", "deleteFileIfExists", "file", "isSdkDirValid", "canonicalPathOrNull", "path", "topLevelModuleNames", _UrlKt.FRAGMENT_ENCODE_SET, "dir", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPythonPluginsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2821:1\n1#2:2822\n*E\n"})
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

        /* JADX INFO: Access modifiers changed from: private */
        public final void setSdkState(SdkState state) {
            PythonPluginsEngine.sdkState = state;
            Updater.INSTANCE.notifySdkStateChanged();
        }

        private final boolean sdkModuleExists(File sdkDir, String moduleName) {
            if (new File(sdkDir, moduleName + ".so").exists()) {
                return true;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(moduleName);
            sb.append(".pyc");
            return new File(sdkDir, sb.toString()).exists();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void deleteFileIfExists(File file) {
            Object objM3608constructorimpl;
            if (file == null || !file.exists()) {
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(Boolean.valueOf(SimpliFiles.file(file).delete()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
            if (thM3611exceptionOrNullimpl != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl);
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
            Object objM3608constructorimpl;
            if (path == null || path.length() == 0) {
                return null;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(new File(path).getCanonicalPath());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            return (String) (Result.m3614isFailureimpl(objM3608constructorimpl) ? null : objM3608constructorimpl);
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
                    if (!Intrinsics.areEqual(name, "__pycache__") && !StringsKt.endsWith$default(name, ".dist-info", false, 2, (Object) null) && !StringsKt.endsWith$default(name, ".data", false, 2, (Object) null)) {
                        hashSet.add(name);
                    }
                } else if (StringsKt.endsWith$default(name, ".py", false, 2, (Object) null) || StringsKt.endsWith$default(name, ".pyc", false, 2, (Object) null) || StringsKt.endsWith$default(name, ".so", false, 2, (Object) null)) {
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
                FileLog.m1038e("Python initialization failed, unable to proceed.");
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
        } catch (Throwable th) {
            FileLog.m1039e("Failed to initialize Python", th);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean isPlugin(File file, MessageObject messageObject) {
        return file != null && StringsKt.endsWith$default(file.getName().toLowerCase(Locale.ROOT), PluginsConstants.PLUGINS_EXT, false, 2, (Object) null);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public boolean isEngineAvailable() {
        return (this.python == null || !sdkInitialized || this.basePluginClass == null) ? false : true;
    }

    private final synchronized PyObject requireBasePluginClass() {
        try {
            if (ExteraConfig.getPluginsSafeMode()) {
                throw new Exception(SAFE_MODE_ENABLE_ERROR);
            }
            if (!sdkInitialized) {
                throw new Exception("Python plugin SDK is not initialized");
            }
            PyObject pyObject = this.basePluginClass;
            if (pyObject != null) {
                return pyObject;
            }
            Python python = this.python;
            if (python == null) {
                throw new Exception("Python interpreter is not initialized");
            }
            try {
                PyObject pyObject2 = (PyObject) python.getModule("base_plugin").get((Object) "BasePlugin");
                if (pyObject2 != null) {
                    this.basePluginClass = pyObject2;
                    return pyObject2;
                }
                throw new Exception("BasePlugin class is missing from the Python SDK");
            } catch (Throwable th) {
                throw new Exception("Failed to initialize Python plugin runtime", th);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private final void installSdkArchive(File archiveFile, boolean fromApk) {
        Object objM3608constructorimpl;
        File file = SDK_DIR;
        if (file == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
            return;
        }
        File file2 = new File(file.getParentFile(), "plugins-sdk.tmp");
        try {
            SimpliFiles.archive(archiveFile).withPolicy(SDK_ARCHIVE_POLICY).extractToDirectory(file2, SDK_ARCHIVE_OPTIONS);
            if (!INSTANCE.isSdkDirValid(file2)) {
                throw new IOException("Python SDK archive unpacked with missing required files");
            }
            SimpliFiles.directory(file2).moveTo(file, OverwritePolicy.REPLACE);
            Updater.INSTANCE.setBuildFromApk(fromApk);
        } finally {
            if (file2.exists()) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(Boolean.valueOf(SimpliFiles.directory(file2).deleteRecursively()));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
                if (thM3611exceptionOrNullimpl != null) {
                    FileLog.m1040e(thM3611exceptionOrNullimpl);
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
        StringBuilder sb;
        Updater.Companion companion;
        sdkInitialized = false;
        Python python = this.python;
        if (python == null) {
            return false;
        }
        if (SDK_DIR == null) {
            File fileSdkDirFile = Updater.INSTANCE.sdkDirFile();
            SDK_DIR = fileSdkDirFile;
            if (fileSdkDirFile != null) {
                if (!fileSdkDirFile.exists()) {
                    File file = SDK_DIR;
                    if (file == null) {
                        f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
                        return false;
                    }
                    SimpliFiles.directory(file).create();
                }
            } else {
                f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
                return false;
            }
        }
        File file2 = SDK_DIR;
        if (file2 == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
            return false;
        }
        Updater.Companion companion2 = Updater.INSTANCE;
        File fileRequestSdkFromApkFile = companion2.requestSdkFromApkFile();
        File pythonSdkUpdateFile = companion2.getPythonSdkUpdateFile();
        File pythonCurrentSdkFile = companion2.getPythonCurrentSdkFile();
        boolean zExists = fileRequestSdkFromApkFile.exists();
        if (zExists) {
            SimpliFiles.directory(file2).clean();
            INSTANCE.deleteFileIfExists(fileRequestSdkFromApkFile);
        }
        boolean z = true;
        if (!zExists && pythonSdkUpdateFile.exists()) {
            if (!companion2.isPendingUpdateVerified(pythonSdkUpdateFile)) {
                FileLog.m1038e("Discarding Python SDK update that failed signature verification");
                companion2.deleteSdkUpdateFile();
            } else {
                try {
                    SimpliFiles.file(pythonSdkUpdateFile).copyTo(pythonCurrentSdkFile, OverwritePolicy.REPLACE);
                    installSdkArchive(pythonCurrentSdkFile, false);
                } catch (IOException e) {
                    FileLog.m1039e("Failed to install updated Python SDK archive", e);
                    zExists = true;
                }
            }
        }
        File file3 = new File(file2, "v.txt");
        if (file3.exists()) {
            String string = StringsKt.trim((CharSequence) SimpliFile.readText$default(SimpliFiles.file(file3), 65536L, null, 2, null)).toString();
            boolean zEndsWith$default = StringsKt.endsWith$default(string, "|1", false, 2, (Object) null);
            String strSubstringBefore$default = StringsKt.substringBefore$default(string, '|', (String) null, 2, (Object) null);
            try {
                InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open("plugins_pysdk/v.txt");
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, StandardCharsets.UTF_8));
                    try {
                        sb = new StringBuilder();
                    } finally {
                    }
                } finally {
                }
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                    sb.append('\n');
                }
                String string2 = StringsKt.trim((CharSequence) sb.toString()).toString();
                try {
                    companion = Updater.INSTANCE;
                } catch (NumberFormatException e2) {
                    FileLog.m1039e("Invalid Python SDK version file. Restoring SDK from APK.", e2);
                }
                if (AppUtils.compareVersions((companion.isSdkFromCurrentApk() || !(zEndsWith$default || companion.isSdkFromApk())) ? ">" : ">=", string2, strSubstringBefore$default)) {
                    zExists = true;
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(bufferedReader, null);
                CloseableKt.closeFinally(inputStreamOpen, null);
            } catch (IOException e3) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("Failed to read Python SDK version (v.txt) from APK assets", e3);
                return false;
            }
        }
        if (zExists || !INSTANCE.isSdkDirValid(file2)) {
            if (!zExists) {
                FileLog.m1041w("Python SDK directory is missing required files. Restoring SDK from APK.");
            }
            SimpliFiles.directory(file2).clean();
            try {
                InputStream inputStreamSdkFromApk = Updater.INSTANCE.sdkFromApk();
                try {
                    SimpliFile.writeFromAtomic$default(SimpliFiles.file(pythonCurrentSdkFile), inputStreamSdkFromApk, 0L, 2, null);
                    CloseableKt.closeFinally(inputStreamSdkFromApk, null);
                    installSdkArchive(pythonCurrentSdkFile, true);
                } finally {
                }
            } catch (IOException e4) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("Failed to install Python SDK from APK", e4);
                return false;
            }
        }
        Updater.INSTANCE.deleteSdkUpdateFile();
        PyObject pyObject = (PyObject) python.getModule("sys").get((Object) "path");
        if (pyObject != null) {
            pyObject.callAttr("append", file2.getAbsolutePath());
        }
        try {
            PyObject module = python.getModule("_sdk_version");
            PyObject pyObjectCallAttr = module.callAttr("__start__", new Object[0]);
            if (pyObjectCallAttr == null || !pyObjectCallAttr.toBoolean()) {
                z = false;
            }
            sdkInitialized = z;
            PyObject pyObject2 = (PyObject) module.get((Object) "__version__");
            if (pyObject2 == null || (str = (String) pyObject2.toJava(String.class)) == null) {
                str = SDK_VERSION;
            }
            SDK_VERSION = str;
            PyObject pyObject3 = (PyObject) module.get((Object) "__beta__");
            SDK_BETA = (pyObject3 == null || (bool = (Boolean) pyObject3.toJava(Boolean.TYPE)) == null) ? SDK_BETA : bool.booleanValue();
            if (this.basePluginClass == null && sdkInitialized && !ExteraConfig.getPluginsSafeMode()) {
                try {
                    requireBasePluginClass();
                } catch (Exception e5) {
                    FileLog.m1039e("Failed to load BasePlugin class", e5);
                }
            }
            return sdkInitialized;
        } catch (Throwable th) {
            FileLog.m1039e("Failed to initialize Python SDK bootstrap", th);
            try {
                Updater.INSTANCE.restoreSdkFromApk();
            } catch (Throwable th2) {
                FileLog.m1039e("Failed to schedule Python SDK restore from APK", th2);
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
        PyObject module = python.getModule("sys");
        PyObject pyObject = (PyObject) module.get((Object) "modules");
        if (pyObject != null) {
            try {
                PyObject pyObjectCallAttr = pyObject.callAttr("get", "_sdk_version");
                if (pyObjectCallAttr != null) {
                    pyObjectCallAttr.callAttr("__stop__", new Object[0]);
                }
            } catch (Throwable th) {
                FileLog.m1039e("Failed to stop Python SDK bootstrap", th);
            }
        }
        sdkInitialized = false;
        File file = SDK_DIR;
        PyObject pyObject2 = (PyObject) module.get((Object) "path");
        if (file != null && pyObject2 != null && pyObject2.callAttr("__contains__", file.getAbsolutePath()).toBoolean()) {
            pyObject2.callAttr("remove", file.getAbsolutePath());
        }
        if (file == null || pyObject == null) {
            return;
        }
        removeModulesRecursive(pyObject, file, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    private final void removeModulesRecursive(PyObject sysModules, File file, String prefix) {
        if (Intrinsics.areEqual(prefix, "plugins-sdk.")) {
            prefix = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (file.isDirectory()) {
            if (sysModules.callAttr("__contains__", prefix + file.getName()).toBoolean()) {
                sysModules.callAttr("pop", prefix + file.getName());
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            Iterator it = ArrayIteratorKt.iterator(fileArrListFiles);
            while (it.hasNext()) {
                removeModulesRecursive(sysModules, (File) it.next(), file.getName() + ".");
            }
        }
        String strSubstringBefore$default = StringsKt.substringBefore$default(file.getName(), '.', (String) null, 2, (Object) null);
        if (file.isDirectory()) {
            return;
        }
        if (sysModules.callAttr("__contains__", prefix + strSubstringBefore$default).toBoolean()) {
            sysModules.callAttr("pop", prefix + strSubstringBefore$default);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void init(Runnable callback) {
        this.lifecycleGeneration.incrementAndGet();
        Companion companion = INSTANCE;
        companion.setSdkState(SdkState.STARTING);
        if (getPython() == null) {
            companion.setSdkState(SdkState.PYTHON_FAILED);
            callback.run();
            return;
        }
        try {
            if (!initSdk()) {
                companion.setSdkState(SdkState.START_FAILED);
                callback.run();
                return;
            }
            companion.setSdkState(SdkState.READY);
            if (!ExteraConfig.getPluginsSafeMode()) {
                final Updater.Companion companion2 = Updater.INSTANCE;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        companion2.checkUpdates();
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
                    String[] strArr = (String[]) python.getModule("plugin_settings").callAttr("init", getPluginsController().getPluginsDir().getAbsolutePath(), getPluginsController().getPreferences().getAll()).toJava(String[].class);
                    if (!(strArr.length == 0)) {
                        SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
                        for (String str : strArr) {
                            editorEdit.remove(str);
                        }
                        editorEdit.apply();
                        FileLog.m1037d("Migrated " + strArr.length + " plugin settings from SharedPreferences to JSON.");
                    }
                } catch (PyException e) {
                    FileLog.m1039e("Failed to initialize plugin_settings module", e);
                }
            }
            PipController.INSTANCE.cleanup();
            loadPlugins(callback);
            checkDevServer();
        } catch (Throwable th) {
            FileLog.m1039e("Failed to initialize Python plugins engine", th);
            INSTANCE.setSdkState(SdkState.INSTALL_FAILED);
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
            PyObject pyObject = (PyObject) python.getModule(PluginsConstants.DevServer.MODULE).get(PluginsConstants.DevServer.CLASS);
            this.devServerClass = pyObject;
            if (pyObject == null) {
                return;
            }
            if (pyObject != null) {
                pyObject.callAttrThrows(PluginsConstants.DevServer.START_SERVER, new Object[0]);
            }
            FileLog.m1037d("Dev server started successfully.");
        } catch (Throwable th) {
            FileLog.m1039e("Failed to initialize dev server", th);
            this.devServerClass = null;
        }
    }

    private final void stopDevServer() {
        PyObject pyObject = this.devServerClass;
        if (pyObject == null) {
            return;
        }
        try {
            pyObject.callAttrThrows(PluginsConstants.DevServer.STOP_SERVER, new Object[0]);
            FileLog.m1037d("Dev server stopped successfully.");
        } catch (Throwable th) {
            try {
                FileLog.m1039e("Failed to stop dev server", th);
            } finally {
                this.devServerClass = null;
            }
        }
    }

    public final void stopPluginTasks$TMessagesProj() {
        Object objM3608constructorimpl;
        PyObject pyObject;
        this.lifecycleGeneration.incrementAndGet();
        try {
            Result.Companion companion = Result.INSTANCE;
            PyObject pyObject2 = this.basePluginClass;
            PyObjectUtils.closeSafely((pyObject2 == null || (pyObject = (PyObject) pyObject2.get((Object) "_stop_all_lifecycles")) == null) ? null : pyObject.call(new Object[0]));
            objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
        if (thM3611exceptionOrNullimpl != null) {
            FileLog.m1039e("Failed to stop plugin tasks", thM3611exceptionOrNullimpl);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void shutdown(Runnable callback) {
        Object objM3608constructorimpl;
        Object objM3608constructorimpl2;
        Object objM3608constructorimpl3;
        Object objM3608constructorimpl4;
        Unit unit;
        Object objM3608constructorimpl5;
        try {
            stopPluginTasks$TMessagesProj();
            try {
                Result.Companion companion = Result.INSTANCE;
                stopDevServer();
                objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
            if (thM3611exceptionOrNullimpl != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl);
            }
            for (String str : new ArrayList(this.pluginInstances.keySet())) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    unloadPlugin(str);
                    objM3608constructorimpl5 = Result.m3608constructorimpl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM3608constructorimpl5 = Result.m3608constructorimpl(ResultKt.createFailure(th2));
                }
                Throwable thM3611exceptionOrNullimpl2 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl5);
                if (thM3611exceptionOrNullimpl2 != null) {
                    FileLog.m1039e("Failed to unload plugin " + str, thM3611exceptionOrNullimpl2);
                }
            }
            try {
                Result.Companion companion5 = Result.INSTANCE;
                PyObject pyObject = this.debuggerListener;
                if (pyObject != null) {
                    pyObject.close();
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                objM3608constructorimpl2 = Result.m3608constructorimpl(unit);
            } catch (Throwable th3) {
                Result.Companion companion6 = Result.INSTANCE;
                objM3608constructorimpl2 = Result.m3608constructorimpl(ResultKt.createFailure(th3));
            }
            Throwable thM3611exceptionOrNullimpl3 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl2);
            if (thM3611exceptionOrNullimpl3 != null) {
                FileLog.m1040e(thM3611exceptionOrNullimpl3);
            }
            this.debuggerListener = null;
            this.pluginInstances.clear();
            synchronized (this) {
                try {
                    removePluginPathsFromSysPath();
                    objM3608constructorimpl3 = Result.m3608constructorimpl(Unit.INSTANCE);
                } finally {
                }
                Throwable thM3611exceptionOrNullimpl4 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl3);
                if (thM3611exceptionOrNullimpl4 != null) {
                    FileLog.m1040e(thM3611exceptionOrNullimpl4);
                }
                try {
                    stopAndUnloadSdk();
                    objM3608constructorimpl4 = Result.m3608constructorimpl(Unit.INSTANCE);
                } catch (Throwable th4) {
                }
                Throwable thM3611exceptionOrNullimpl5 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl4);
                if (thM3611exceptionOrNullimpl5 != null) {
                    FileLog.m1040e(thM3611exceptionOrNullimpl5);
                }
                this.python = null;
                sdkInitialized = false;
                Unit unit2 = Unit.INSTANCE;
            }
            INSTANCE.setSdkState(SdkState.READY);
            FileLog.m1037d("Python plugin engine shut down.");
            callback.run();
        } catch (Throwable th5) {
            callback.run();
            throw th5;
        }
    }

    public final void loadPlugins(final Runnable callback) {
        final int i = this.lifecycleGeneration.get();
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.m3042$r8$lambda$RV8K0RBdTAlfldGEGnoJyoyk(this.f$0, i, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$RV8K0-RBdTAlf-ldGEGno-Jyoyk, reason: not valid java name */
    public static void m3042$r8$lambda$RV8K0RBdTAlfldGEGnoJyoyk(PythonPluginsEngine pythonPluginsEngine, int i, Runnable runnable) {
        PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile;
        Plugin plugin;
        Python python = pythonPluginsEngine.python;
        if (python == null || i != pythonPluginsEngine.lifecycleGeneration.get()) {
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
            return;
        }
        try {
            PyObject pyObject = (PyObject) python.getModule("sys").get((Object) "path");
            String absolutePath = pythonPluginsEngine.getPluginsController().getPluginsDir().getAbsolutePath();
            if (!ExteraConfig.getPluginsSafeMode() && pyObject != null && !pyObject.callAttr("__contains__", absolutePath).toBoolean()) {
                pyObject.callAttr("append", absolutePath);
            }
            File[] fileArrListFiles = pythonPluginsEngine.getPluginsController().getPluginsDir().listFiles(new FilenameFilter() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda27
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return StringsKt.endsWith$default(str.toLowerCase(Locale.ROOT), ".py", false, 2, (Object) null);
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
            Iterator it = ArrayIteratorKt.iterator(fileArrListFiles);
            while (true) {
                int i2 = 0;
                if (it.hasNext()) {
                    File file = (File) it.next();
                    String strSubstring = file.getName().substring(0, file.getName().length() - 3);
                    try {
                        pluginValidationResultValidatePluginFromFile = pythonPluginsEngine.validatePluginFromFile(file.getAbsolutePath());
                    } catch (Throwable th) {
                        th = th;
                        pluginValidationResultValidatePluginFromFile = null;
                    }
                    try {
                        if (pluginValidationResultValidatePluginFromFile.getError() != null) {
                            throw new Exception(pluginValidationResultValidatePluginFromFile.getError());
                        }
                        pythonPluginsEngine.loadPlugin(strSubstring, file.getAbsolutePath(), pluginValidationResultValidatePluginFromFile.getPlugin());
                    } catch (Throwable th2) {
                        th = th2;
                        FileLog.m1039e("Failed to load plugin " + file.getName() + ". Reason: " + th.getMessage(), th);
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
                            plugin.setAuthor(LocaleController.getString(C2807R.string.PluginNoAuthor));
                            plugin.setVersion("1.0");
                            plugin.setEngine(PluginsConstants.PYTHON);
                        }
                        plugin.setError(th);
                        plugin.setEnabled(false);
                        pythonPluginsEngine.getPluginsController().getPlugins().put(strSubstring, plugin);
                    }
                } else {
                    pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                    Collection<Plugin> collectionValues = pythonPluginsEngine.getPluginsController().getPlugins().values();
                    if (!collectionValues.isEmpty()) {
                        Iterator<T> it2 = collectionValues.iterator();
                        while (it2.hasNext()) {
                            if (((Plugin) it2.next()).isEnabled() && (i2 = i2 + 1) < 0) {
                                CollectionsKt.throwCountOverflow();
                            }
                        }
                    }
                    FileLog.m1037d("Python plugin system initialized. Total: " + pythonPluginsEngine.getPluginsController().getPlugins().size() + ", Enabled: " + i2);
                    if (runnable != null) {
                        AndroidUtilities.runOnUIThread(runnable);
                        return;
                    }
                    return;
                }
            }
        } catch (PyException e) {
            FileLog.m1039e("Failed to setup Python environment for plugins", e);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    public final void loadPlugin(String pluginId, String filePath) throws Exception {
        loadPlugin(pluginId, filePath, null, null);
    }

    public final void loadPlugin(String pluginId, String filePath, Plugin metadata) throws Exception {
        loadPlugin(pluginId, filePath, metadata, null);
    }

    public final void loadPlugin(String pluginId, String filePath, Plugin metadata, PipController.InstallerDelegate delegate) throws Exception {
        boolean z = getPluginsController().getPreferences().getBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + pluginId, false);
        File file = new File(filePath);
        if (!file.exists() || !file.isFile()) {
            throw new Exception("Plugin file not found: " + filePath);
        }
        if (metadata == null) {
            PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = validatePluginFromFile(filePath);
            if (pluginValidationResultValidatePluginFromFile.getError() != null) {
                throw new Exception(pluginValidationResultValidatePluginFromFile.getError());
            }
            metadata = pluginValidationResultValidatePluginFromFile.getPlugin();
        }
        if (metadata == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
            return;
        }
        if (!Intrinsics.areEqual(pluginId, metadata.getId())) {
            throw new Exception("Plugin ID mismatch. Expected: " + pluginId + ", but found: " + metadata.getId() + " in metadata.");
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
        if (!z) {
            if (delegate != null) {
                installPluginDependencies(pluginId, metadata, delegate);
                return;
            }
            return;
        }
        try {
            createPluginInstance(pluginId, filePath, metadata, delegate);
            setPluginEnabled(pluginId, true, null);
        } catch (Throwable th) {
            SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
            editorEdit.putBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + pluginId, false);
            editorEdit.apply();
            unloadPlugin(pluginId);
            throw th;
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
                throw new Exception("Dependency " + new File(str).getName() + " of " + pluginId + " provides " + CollectionsKt.joinToString$default(setIntersect, null, null, null, 0, null, null, 63, null) + ", which would replace the plugins SDK module of the same name.");
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            disableShadowedPlugins(pluginId, new File((String) entry2.getKey()).getName(), (Set) entry2.getValue());
        }
        Python python = getPython();
        PyObject pyObject = (python == null || (module = python.getModule("sys")) == null) ? null : (PyObject) module.get("path");
        if (pyObject == null) {
            return;
        }
        int size = listInstallDependencies.size();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            }
            String str2 = listInstallDependencies.get(size);
            removeFromSysPath(pyObject, str2);
            pyObject.callAttr("insert", 0, str2);
            this.dependencyPaths.add(str2);
        }
    }

    private final void disableShadowedPlugins(String pluginId, String dependencyName, Set<String> providedModules) {
        for (String str : providedModules) {
            if (!Intrinsics.areEqual(str, pluginId)) {
                if (new File(getPluginsController().getPluginsDir(), str + ".py").exists()) {
                    FileLog.m1041w("Disabling plugin '" + str + "': dependency " + dependencyName + " of " + pluginId + " now owns that module name");
                    unloadPlugin(str);
                    SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
                    StringBuilder sb = new StringBuilder(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX);
                    sb.append(str);
                    editorEdit.putBoolean(sb.toString(), false);
                    editorEdit.apply();
                    Plugin plugin = getPluginsController().getPlugins().get(str);
                    if (plugin != null) {
                        plugin.setError(new Exception("Plugin id '" + str + "' is now provided by " + dependencyName + ", a dependency of '" + pluginId + "'. Rename or delete one of them."));
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
            PyObject module2 = python != null ? python.getModule("sys") : null;
            PyObject pyObject = module2 != null ? (PyObject) module2.get((Object) "path") : null;
            PyObject pyObject2 = module2 != null ? (PyObject) module2.get((Object) "modules") : null;
            PyObject pyObject3 = module2 != null ? (PyObject) module2.get((Object) "path_importer_cache") : null;
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
                    pyObject3.callAttr("pop", str, null);
                }
                if (pyObject2 != null) {
                    removeModulesUnderPath(pyObject2, str);
                }
                this.dependencyPaths.remove(str);
            }
            Python python2 = this.python;
            if (python2 == null || (module = python2.getModule("importlib")) == null) {
                return;
            }
            module.callAttr("invalidate_caches", new Object[0]);
        } catch (PyException e) {
            FileLog.m1039e("Failed to drop unused dependency paths from the Python environment", e);
        }
    }

    private final void removeModulesUnderPath(PyObject sysModules, String path) {
        String string;
        PyObject pyObjectCallAttr;
        Object objM3608constructorimpl;
        String string2;
        List<PyObject> listAsList;
        PyObject pyObject;
        String strCanonicalPathOrNull;
        Python python = this.python;
        if (python == null) {
            return;
        }
        String str = File.separator;
        String str2 = path + str;
        String strCanonicalPathOrNull2 = INSTANCE.canonicalPathOrNull(path);
        String str3 = strCanonicalPathOrNull2 != null ? strCanonicalPathOrNull2 + str : str2;
        ArrayList arrayList = new ArrayList();
        for (PyObject pyObject2 : python.getBuiltins().callAttr("list", sysModules).asList()) {
            if (pyObject2 != null && (string = pyObject2.toString()) != null && (pyObjectCallAttr = sysModules.callAttr("get", string)) != null) {
                PyObject pyObject3 = (PyObject) pyObjectCallAttr.get("__file__");
                if (pyObject3 == null || (string2 = pyObject3.toString()) == null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        PyObject pyObject4 = (PyObject) pyObjectCallAttr.get("__path__");
                        objM3608constructorimpl = Result.m3608constructorimpl((pyObject4 == null || (listAsList = pyObject4.asList()) == null || (pyObject = (PyObject) CollectionsKt.firstOrNull((List) listAsList)) == null) ? null : pyObject.toString());
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m3614isFailureimpl(objM3608constructorimpl)) {
                        objM3608constructorimpl = null;
                    }
                    string2 = (String) objM3608constructorimpl;
                    if (string2 == null) {
                    }
                }
                if (StringsKt.startsWith$default(string2, str2, false, 2, (Object) null) || ((strCanonicalPathOrNull = INSTANCE.canonicalPathOrNull(string2)) != null && StringsKt.startsWith$default(strCanonicalPathOrNull, str3, false, 2, (Object) null))) {
                    arrayList.add(string);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sysModules.callAttr("pop", (String) it.next(), null);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        FileLog.m1037d("Unloaded " + arrayList.size() + " module(s) belonging to removed dependency " + new File(path).getName());
    }

    private final void removePluginPathsFromSysPath() {
        PyObject module;
        PyObject pyObject;
        Python python = this.python;
        if (python == null || (module = python.getModule("sys")) == null || (pyObject = (PyObject) module.get((Object) "path")) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.dependencyPaths);
        arrayList.add(getPluginsController().getPluginsDir().getAbsolutePath());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeFromSysPath(pyObject, (String) it.next());
        }
        this.dependencyPaths.clear();
    }

    private final void removeFromSysPath(PyObject sysPath, String path) {
        while (sysPath.callAttr("__contains__", path).toBoolean()) {
            sysPath.callAttr("remove", path);
        }
    }

    private final void createPluginInstance(String pluginId, String filePath, Plugin pluginMetadata, PipController.InstallerDelegate delegate) throws Exception {
        PyObject module;
        PyObject pyObjectRequireBasePluginClass = requireBasePluginClass();
        installPluginDependencies(pluginId, pluginMetadata, delegate);
        refreshImportCaches(pluginId, new File(filePath).getParentFile());
        PyObject pyObject = (PyObject) pyObjectRequireBasePluginClass.get("_begin_lifecycle");
        PyObjectUtils.closeSafely(pyObject != null ? pyObject.call(pluginId) : null);
        getPluginsController().getWatchdog().onPluginExecutionStarted(pluginId);
        try {
            try {
                Python python = getPython();
                if (python == null || (module = python.getModule(pluginId)) == null) {
                    throw new Exception("Failed to import plugin module: " + pluginId);
                }
                getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                PyObject pyObject2 = (PyObject) module.get("__file__");
                String string = pyObject2 != null ? pyObject2.toString() : null;
                Companion companion = INSTANCE;
                if (!Intrinsics.areEqual(companion.canonicalPathOrNull(string), companion.canonicalPathOrNull(filePath))) {
                    if (string == null) {
                        string = "built into the runtime";
                    }
                    throw new Exception("Plugin id '" + pluginId + "' is already taken by the Python module " + string + ". Change '__id__' to a name that no other module uses.");
                }
                PyObject pyObjectCallAttr = pyObjectRequireBasePluginClass.callAttr("_findPluginClass", module);
                if (pyObjectCallAttr == null) {
                    throw new Exception("Could not find a class inheriting from BasePlugin in " + pluginId + ".py. Make sure your main plugin class extends BasePlugin.");
                }
                PyObject pyObjectCall = pyObjectCallAttr.call(new Object[0]);
                pyObjectCall.put("id", (Object) pluginMetadata.getId());
                pyObjectCall.put("name", (Object) pluginMetadata.getName());
                pyObjectCall.put(MediaTrack.ROLE_DESCRIPTION, (Object) pluginMetadata.getDescription());
                pyObjectCall.put("author", (Object) pluginMetadata.getAuthor());
                pyObjectCall.put("version", (Object) pluginMetadata.getVersion());
                pyObjectCall.put("icon", (Object) pluginMetadata.getIcon());
                pyObjectCall.put("app_version", (Object) pluginMetadata.getAppVersion());
                pyObjectCall.put("sdk_version", (Object) pluginMetadata.getSdkVersion());
                pyObjectCall.put(Common.ASSET_REQUIREMENTS, (Object) pluginMetadata.getRequirements());
                Boolean bool = Boolean.FALSE;
                pyObjectCall.put("enabled", (Object) bool);
                pyObjectCall.put("initialized", (Object) bool);
                pyObjectCall.put("error_message", (Object) null);
                this.pluginInstances.put(pluginId, pyObjectCall);
                return;
            } catch (PyException e) {
                throw new Exception("Failed to import plugin module: " + e.getMessage(), e);
            }
        } catch (Throwable th) {
            getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
            throw th;
        }
        getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
        throw th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:129:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0286 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02a0 A[DONT_GENERATE, FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0317 A[DONT_GENERATE, FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x01ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:192:? A[DONT_GENERATE, FINALLY_INSNS, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012a A[Catch: all -> 0x006a, PyException -> 0x006d, TryCatch #11 {PyException -> 0x006d, blocks: (B:19:0x0062, B:28:0x0073, B:30:0x007a, B:33:0x0085, B:40:0x00ae, B:41:0x00b2, B:45:0x00cb, B:44:0x00c6, B:47:0x00d0, B:48:0x00db, B:49:0x00dc, B:51:0x00f4, B:54:0x00fb, B:56:0x0101, B:58:0x0105, B:64:0x012a, B:65:0x012f, B:61:0x0124), top: B:183:0x0062, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void unloadPlugin(String pluginId) {
        Object objM3608constructorimpl;
        Object objM3608constructorimpl2;
        Object objM3608constructorimpl3;
        Throwable thM3611exceptionOrNullimpl;
        StringBuilder sb;
        PyObject pyObject;
        File file;
        Object objM3608constructorimpl4;
        Throwable thM3611exceptionOrNullimpl2;
        Object objM3608constructorimpl5;
        Throwable thM3611exceptionOrNullimpl3;
        Object objM3608constructorimpl6;
        PyObject pyObject2;
        File[] fileArrListFiles;
        PluginsController pluginsController;
        PyObject pyObject3;
        this.settingsCache.remove(pluginId);
        PyObject pyObjectRemove = this.pluginInstances.remove(pluginId);
        Plugin plugin = getPluginsController().getPlugins().get(pluginId);
        if (plugin != null) {
            plugin.setEnabled(false);
        }
        Unit unit = null;
        try {
            PyObject pyObject4 = this.basePluginClass;
            PyObjectUtils.closeSafely((pyObject4 == null || (pyObject3 = (PyObject) pyObject4.get((Object) "_stop_lifecycle")) == null) ? null : pyObject3.call(pluginId));
        } catch (Throwable th) {
            FileLog.m1039e("Failed to stop plugin tasks for " + pluginId, th);
        }
        try {
            if (pyObjectRemove != null) {
                try {
                    boolean z = PyObjectUtils.getBoolean(pyObjectRemove, "initialized", false);
                    if (pyObjectRemove != null) {
                        pyObjectRemove.put("initialized", (Object) Boolean.FALSE);
                    }
                    if (pyObjectRemove != null) {
                        pyObjectRemove.put("enabled", (Object) Boolean.FALSE);
                    }
                    if (pyObjectRemove != null && z) {
                        getPluginsController().getWatchdog().onPluginExecutionStarted(pluginId);
                        try {
                            if (pyObjectRemove.get((Object) "_invoke_plugin_unload") != null) {
                                PyObjectUtils.closeSafely(pyObjectRemove.callAttr("_invoke_plugin_unload", new Object[0]));
                            } else {
                                PyObjectUtils.closeSafely(pyObjectRemove.callAttr(PluginsConstants.ON_PLUGIN_UNLOAD, new Object[0]));
                            }
                            pluginsController = getPluginsController();
                        } catch (Throwable th2) {
                            try {
                                FileLog.m1039e("Error during on_plugin_unload for " + pluginId, th2);
                                pluginsController = getPluginsController();
                            } catch (Throwable th3) {
                                getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                                throw th3;
                            }
                        }
                        pluginsController.getWatchdog().onPluginExecutionFinished(pluginId);
                    }
                    releasePluginObjects(pluginId);
                    File file2 = new File(getPluginsController().getPluginsDir(), "__pycache__");
                    if (file2.exists() && file2.isDirectory() && (fileArrListFiles = file2.listFiles()) != null) {
                        int length = fileArrListFiles.length;
                        for (int i = 0; i < length; i++) {
                            file = fileArrListFiles[i];
                            if (StringsKt.startsWith$default(file.getName(), pluginId + ".cpython-", false, 2, (Object) null)) {
                                break;
                            }
                        }
                        file = null;
                        if (file != null) {
                        }
                        refreshImportCaches(pluginId, getPluginsController().getPluginsDir());
                        Result.Companion companion = Result.INSTANCE;
                        PyObject pyObject5 = this.basePluginClass;
                        if (pyObject5 != null) {
                            PyObjectUtils.closeSafely((pyObject5 != null || (pyObject2 = (PyObject) pyObject5.get((Object) "_cleanup")) == null) ? null : pyObject2.call(pluginId));
                            objM3608constructorimpl4 = Result.m3608constructorimpl(Unit.INSTANCE);
                            thM3611exceptionOrNullimpl2 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl4);
                            if (thM3611exceptionOrNullimpl2 != null) {
                            }
                            getPluginsController().cleanupPlugin(pluginId);
                            objM3608constructorimpl5 = Result.m3608constructorimpl(Unit.INSTANCE);
                            thM3611exceptionOrNullimpl3 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl5);
                            if (thM3611exceptionOrNullimpl3 != null) {
                            }
                            if (pyObjectRemove != null) {
                            }
                            objM3608constructorimpl6 = Result.m3608constructorimpl(unit);
                            thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl6);
                            if (thM3611exceptionOrNullimpl != null) {
                            }
                        }
                    } else {
                        file = null;
                        if (file != null) {
                            INSTANCE.deleteFileIfExists(file);
                        }
                        refreshImportCaches(pluginId, getPluginsController().getPluginsDir());
                        try {
                            Result.Companion companion2 = Result.INSTANCE;
                            PyObject pyObject52 = this.basePluginClass;
                            PyObjectUtils.closeSafely((pyObject52 != null || (pyObject2 = (PyObject) pyObject52.get((Object) "_cleanup")) == null) ? null : pyObject2.call(pluginId));
                            objM3608constructorimpl4 = Result.m3608constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th4) {
                            Result.Companion companion3 = Result.INSTANCE;
                            objM3608constructorimpl4 = Result.m3608constructorimpl(ResultKt.createFailure(th4));
                        }
                        thM3611exceptionOrNullimpl2 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl4);
                        if (thM3611exceptionOrNullimpl2 != null) {
                            FileLog.m1039e("Failed to clean up SDK resources for " + pluginId, thM3611exceptionOrNullimpl2);
                        }
                        try {
                            getPluginsController().cleanupPlugin(pluginId);
                            objM3608constructorimpl5 = Result.m3608constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th5) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM3608constructorimpl5 = Result.m3608constructorimpl(ResultKt.createFailure(th5));
                        }
                        thM3611exceptionOrNullimpl3 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl5);
                        if (thM3611exceptionOrNullimpl3 != null) {
                            FileLog.m1039e("Failed to clean up plugin " + pluginId, thM3611exceptionOrNullimpl3);
                        }
                        if (pyObjectRemove != null) {
                            try {
                                pyObjectRemove.close();
                                unit = Unit.INSTANCE;
                            } catch (Throwable th6) {
                                Result.Companion companion5 = Result.INSTANCE;
                                objM3608constructorimpl6 = Result.m3608constructorimpl(ResultKt.createFailure(th6));
                            }
                        }
                        objM3608constructorimpl6 = Result.m3608constructorimpl(unit);
                        thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl6);
                        if (thM3611exceptionOrNullimpl != null) {
                            return;
                        } else {
                            sb = new StringBuilder("Failed to close plugin instance ");
                        }
                    }
                } catch (PyException e) {
                    FileLog.m1039e("Failed to unload plugin " + pluginId, e);
                    try {
                        Result.Companion companion6 = Result.INSTANCE;
                        PyObject pyObject6 = this.basePluginClass;
                        PyObjectUtils.closeSafely((pyObject6 == null || (pyObject = (PyObject) pyObject6.get((Object) "_cleanup")) == null) ? null : pyObject.call(pluginId));
                        objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th7) {
                        Result.Companion companion7 = Result.INSTANCE;
                        objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th7));
                    }
                    Throwable thM3611exceptionOrNullimpl4 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
                    if (thM3611exceptionOrNullimpl4 != null) {
                        FileLog.m1039e("Failed to clean up SDK resources for " + pluginId, thM3611exceptionOrNullimpl4);
                    }
                    try {
                        getPluginsController().cleanupPlugin(pluginId);
                        objM3608constructorimpl2 = Result.m3608constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th8) {
                        Result.Companion companion8 = Result.INSTANCE;
                        objM3608constructorimpl2 = Result.m3608constructorimpl(ResultKt.createFailure(th8));
                    }
                    Throwable thM3611exceptionOrNullimpl5 = Result.m3611exceptionOrNullimpl(objM3608constructorimpl2);
                    if (thM3611exceptionOrNullimpl5 != null) {
                        FileLog.m1039e("Failed to clean up plugin " + pluginId, thM3611exceptionOrNullimpl5);
                    }
                    if (pyObjectRemove != null) {
                        try {
                            pyObjectRemove.close();
                            unit = Unit.INSTANCE;
                        } catch (Throwable th9) {
                            Result.Companion companion9 = Result.INSTANCE;
                            objM3608constructorimpl3 = Result.m3608constructorimpl(ResultKt.createFailure(th9));
                            thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl3);
                            if (thM3611exceptionOrNullimpl == null) {
                                sb = new StringBuilder("Failed to close plugin instance ");
                                sb.append(pluginId);
                                FileLog.m1039e(sb.toString(), thM3611exceptionOrNullimpl);
                            }
                            return;
                        }
                    }
                    objM3608constructorimpl3 = Result.m3608constructorimpl(unit);
                    thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl3);
                    if (thM3611exceptionOrNullimpl == null) {
                    }
                }
            }
            sb.append(pluginId);
            FileLog.m1039e(sb.toString(), thM3611exceptionOrNullimpl);
        } finally {
        }
    }

    private final void releasePluginObjects(String pluginId) {
        Python python = this.python;
        if (python == null) {
            return;
        }
        try {
            PyObject pyObject = (PyObject) python.getModule("extera_utils.classes").get((Object) "release_plugin");
            if (pyObject == null) {
                return;
            }
            pyObject.call(pluginId);
        } catch (PyException e) {
            FileLog.m1039e("Failed to release objects of plugin " + pluginId, e);
        }
    }

    private final void refreshImportCaches(String pluginId, File moduleDir) {
        Python python = this.python;
        if (python == null) {
            return;
        }
        try {
            PyObject module = python.getModule("sys");
            PyObject pyObject = (PyObject) module.get((Object) "modules");
            if (pyObject != null) {
                evictPluginModule(pyObject, pluginId, moduleDir);
            }
            PyObject pyObject2 = (PyObject) module.get((Object) "path_importer_cache");
            if (moduleDir != null && pyObject2 != null) {
                pyObject2.callAttr("pop", moduleDir.getAbsolutePath(), null);
            }
            python.getModule("importlib").callAttr("invalidate_caches", new Object[0]);
        } catch (PyException e) {
            FileLog.m1039e("Failed to refresh import caches for " + pluginId, e);
        }
    }

    private final void evictPluginModule(PyObject sysModules, String pluginId, File moduleDir) {
        String strCanonicalPathOrNull;
        PyObject pyObjectCallAttr = sysModules.callAttr("get", pluginId);
        if (pyObjectCallAttr == null) {
            return;
        }
        PyObject pyObject = (PyObject) pyObjectCallAttr.get("__file__");
        String string = pyObject != null ? pyObject.toString() : null;
        if (moduleDir != null) {
            strCanonicalPathOrNull = INSTANCE.canonicalPathOrNull(new File(moduleDir, pluginId + ".py").getAbsolutePath());
        } else {
            strCanonicalPathOrNull = null;
        }
        if (strCanonicalPathOrNull != null && Intrinsics.areEqual(INSTANCE.canonicalPathOrNull(string), strCanonicalPathOrNull)) {
            sysModules.callAttr("pop", pluginId, null);
            return;
        }
        if (string == null) {
            string = "the Python runtime";
        }
        FileLog.m1041w("Keeping module '" + pluginId + "' loaded: it belongs to " + string + ", not to a plugin");
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void setPluginEnabled(String pluginId, boolean enabled, final Utilities.Callback<String> callback) {
        Plugin plugin;
        try {
            Plugin plugin2 = getPluginsController().getPlugins().get(pluginId);
            if (plugin2 == null) {
                throw new Exception("Plugin not found: " + pluginId);
            }
            if (enabled && ExteraConfig.getPluginsSafeMode()) {
                if (callback != null) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.run(PythonPluginsEngine.SAFE_MODE_ENABLE_ERROR);
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
                    throw new Exception("Failed to create plugin instance: " + pluginId);
                }
            }
            if ((pyObject != null && PyObjectUtils.getBoolean(pyObject, "initialized", false)) == enabled && !plugin2.hasError()) {
                if (callback != null) {
                    callback.run(null);
                    return;
                }
                return;
            }
            if (!enabled) {
                SharedPreferences.Editor editorEdit = getPluginsController().getPreferences().edit();
                editorEdit.putBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + pluginId, false);
                editorEdit.apply();
                unloadPlugin(pluginId);
            } else {
                if (pyObject == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                getPluginsController().cleanupPlugin(pluginId);
                getPluginsController().getWatchdog().onPluginExecutionStarted(pluginId);
                try {
                    pyObject.callAttr(PluginsConstants.ON_PLUGIN_LOAD, new Object[0]);
                    getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                    Boolean bool = Boolean.TRUE;
                    pyObject.put("initialized", (Object) bool);
                    pyObject.put("error_message", (Object) null);
                    plugin2.setError(null);
                    pyObject.put("enabled", (Object) bool);
                    plugin2.setEnabled(true);
                    SharedPreferences.Editor editorEdit2 = getPluginsController().getPreferences().edit();
                    editorEdit2.putBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + pluginId, true);
                    editorEdit2.apply();
                    getPluginsController().loadPluginSettings(pluginId);
                } catch (Throwable th) {
                    getPluginsController().getWatchdog().onPluginExecutionFinished(pluginId);
                    throw th;
                }
            }
            getPluginsController().notifyPluginsChanged();
            if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(null);
                    }
                });
            }
        } catch (Throwable th2) {
            FileLog.m1039e("Unexpected error setting enabled state for " + pluginId, th2);
            if (enabled && (plugin = getPluginsController().getPlugins().get(pluginId)) != null) {
                plugin.setError(th2);
            }
            SharedPreferences.Editor editorEdit3 = getPluginsController().getPreferences().edit();
            editorEdit3.putBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + pluginId, false);
            editorEdit3.apply();
            unloadPlugin(pluginId);
            if (callback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda18
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
        unloadPlugin(pluginId);
        try {
            removePluginDependencies(pluginId);
        } catch (Exception e) {
            FileLog.m1039e("Failed to uninstall dependencies for " + pluginId, e);
        }
        INSTANCE.deleteFileIfExists(new File(getPluginsController().getPluginsDir(), pluginId + ".py"));
        PluginsController.Companion companion = PluginsController.INSTANCE;
        if (companion.isPluginPinned(pluginId)) {
            companion.setPluginPinned(pluginId, false);
        }
        getPluginsController().clearPluginSettingsPreferences(pluginId, true);
        getPluginsController().getPlugins().remove(pluginId);
        getPluginsController().notifyPluginsChanged();
        if (callback != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public String getPluginPath(String id) {
        return getPluginsController().getPluginsDir().getAbsolutePath() + File.separator + id + ".py";
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openInExternalApp(String id) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        File file = new File(getPluginPath(id));
        if (file.exists()) {
            PluginFileViewer.INSTANCE.open(safeLastFragment, file, id + PluginsConstants.PLUGINS_EXT);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void sharePlugin(String id) {
        Activity parentActivity;
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null || (parentActivity = safeLastFragment.getParentActivity()) == null) {
            return;
        }
        String pluginPath = getPluginPath(id);
        File file = new File(ApplicationLoader.getFilesDirFixed(), "temp");
        SimpliFiles.directory(file).create();
        File file2 = new File(file, id + PluginsConstants.PLUGINS_EXT);
        try {
            SimpliFiles.file(pluginPath).copyTo(file2, OverwritePolicy.REPLACE);
            Uri uriForFile = FileProvider.getUriForFile(parentActivity, ApplicationLoader.getApplicationId() + ".provider", file2);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setFlags(1);
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
            intent.setType("application/x-plugin");
            safeLastFragment.startActivityForResult(Intent.createChooser(intent, LocaleController.getString(C2807R.string.ShareFile)), MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
            file2.deleteOnExit();
        } catch (IOException e) {
            FileLog.m1040e(e);
        } catch (IllegalArgumentException e2) {
            FileLog.m1040e(e2);
        } catch (Exception e3) {
            FileLog.m1040e(e3);
        }
    }

    public final void loadPluginFromFile(String filePath, Plugin pluginMetadata, Utilities.Callback<String> callback) {
        loadPluginFromFile(filePath, pluginMetadata, callback, null);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void loadPluginFromFile(final String filePath, final Plugin pluginMetadata, final Utilities.Callback<String> callback, final PipController.InstallerDelegate delegate) {
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.m3045$r8$lambda$ntptHYkrJR_BTgA1KYYOzCptFM(pluginMetadata, this, filePath, delegate, callback);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: $r8$lambda$ntpt-HYkrJR_BTgA1KYYOzCptFM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m3045$r8$lambda$ntptHYkrJR_BTgA1KYYOzCptFM(Plugin plugin, PythonPluginsEngine pythonPluginsEngine, String str, PipController.InstallerDelegate installerDelegate, final Utilities.Callback callback) {
        String id;
        File file;
        Plugin plugin2;
        File file2;
        boolean z;
        boolean zExists;
        File file3 = null;
        boolean z2 = false;
        if (plugin == null) {
            try {
                PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = pythonPluginsEngine.validatePluginFromFile(str);
                if (pluginValidationResultValidatePluginFromFile.getError() != null) {
                    throw new Exception(pluginValidationResultValidatePluginFromFile.getError());
                }
                plugin2 = pluginValidationResultValidatePluginFromFile.getPlugin();
                if (plugin2 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
            } catch (Throwable th) {
                th = th;
                id = null;
                file = null;
                file2 = file;
                z = false;
                zExists = false;
                final Throwable th2 = th;
                FileLog.m1039e("Unexpected error loading plugin from file: " + str, th2);
                if (id != null) {
                }
                pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                if (callback != null) {
                }
            }
        } else {
            plugin2 = plugin;
        }
        id = plugin2.getId();
        try {
            z = pythonPluginsEngine.getPluginsController().getPreferences().getBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + ((Object) id), false);
            try {
                file = new File(pythonPluginsEngine.getPluginsController().getPluginsDir(), ((Object) id) + ".py");
                try {
                    zExists = file.exists();
                    if (zExists) {
                        try {
                            pythonPluginsEngine.unloadPlugin(id);
                            file2 = new File(pythonPluginsEngine.getPluginsController().getPluginsDir(), ((Object) id) + ".py.bak");
                            try {
                                INSTANCE.deleteFileIfExists(file2);
                                SimpliFiles.file(file).moveTo(file2, OverwritePolicy.ERROR);
                                pythonPluginsEngine.removePluginDependencies(id);
                                file3 = file2;
                            } catch (Throwable th3) {
                                th = th3;
                                final Throwable th22 = th;
                                FileLog.m1039e("Unexpected error loading plugin from file: " + str, th22);
                                if (id != null) {
                                    INSTANCE.deleteFileIfExists(file);
                                    if (zExists && file2 != null && file2.exists() && file != null) {
                                        try {
                                            SimpliFiles.file(file2).moveTo(file, OverwritePolicy.REPLACE);
                                            try {
                                                SharedPreferences.Editor editorEdit = pythonPluginsEngine.getPluginsController().getPreferences().edit();
                                                editorEdit.putBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + ((Object) id), z);
                                                editorEdit.apply();
                                                try {
                                                    pythonPluginsEngine.loadPlugin(id, file.getAbsolutePath());
                                                    Unit unit = Unit.INSTANCE;
                                                } catch (Exception e) {
                                                    FileLog.m1039e("Failed to reload original plugin after update failure for " + ((Object) id), e);
                                                    Plugin plugin3 = pythonPluginsEngine.getPluginsController().getPlugins().get(id);
                                                    if (plugin3 != null) {
                                                        plugin3.setError(e);
                                                        Unit unit2 = Unit.INSTANCE;
                                                    }
                                                }
                                                z2 = true;
                                            } catch (Exception e2) {
                                                e = e2;
                                                z2 = true;
                                                FileLog.m1039e("Failed to restore backup for plugin " + ((Object) id), e);
                                                if (!z2) {
                                                }
                                                pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                                                if (callback != null) {
                                                }
                                            }
                                        } catch (Exception e3) {
                                            e = e3;
                                        }
                                    }
                                    if (!z2) {
                                        pythonPluginsEngine.getPluginsController().cleanupPlugin(id);
                                        try {
                                            pythonPluginsEngine.removePluginDependencies(id);
                                        } catch (Exception e4) {
                                            FileLog.m1040e(e4);
                                        }
                                        PyObject pyObjectRemove = pythonPluginsEngine.pluginInstances.remove(id);
                                        if (pyObjectRemove != null) {
                                            pyObjectRemove.close();
                                        }
                                        pythonPluginsEngine.getPluginsController().clearPluginSettingsPreferences(id, true);
                                        pythonPluginsEngine.getPluginsController().getPlugins().remove(id);
                                        INSTANCE.deleteFileIfExists(file);
                                    }
                                }
                                pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                                if (callback != null) {
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda3
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            callback.run(AppUtils.stackTraceToString(th22));
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            file2 = null;
                        }
                    }
                    if (!new File(str).exists()) {
                        throw new Exception("Plugin file is no longer available. It may have been moved or deleted.");
                    }
                    SimpliFiles.file(str).copyTo(file, OverwritePolicy.REPLACE);
                    pythonPluginsEngine.loadPlugin(id, file.getAbsolutePath(), plugin2, installerDelegate);
                    INSTANCE.deleteFileIfExists(file3);
                    pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                    if (callback != null) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                callback.run(null);
                            }
                        });
                    }
                } catch (Throwable th5) {
                    th = th5;
                    file2 = null;
                    zExists = false;
                    final Throwable th222 = th;
                    FileLog.m1039e("Unexpected error loading plugin from file: " + str, th222);
                    if (id != null) {
                    }
                    pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
                    if (callback != null) {
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                file = null;
                file2 = null;
            }
        } catch (Throwable th7) {
            th = th7;
            file = null;
            file2 = file;
            z = false;
            zExists = false;
            final Throwable th2222 = th;
            FileLog.m1039e("Unexpected error loading plugin from file: " + str, th2222);
            if (id != null) {
            }
            pythonPluginsEngine.getPluginsController().notifyPluginsChanged();
            if (callback != null) {
            }
        }
    }

    private final String findModuleNameOwner(String pluginId) {
        Object obj;
        if (INSTANCE.topLevelModuleNames(SDK_DIR).contains(pluginId)) {
            return "the plugins SDK";
        }
        Iterator<String> it = PipController.INSTANCE.activeLibraryPaths().iterator();
        while (it.hasNext()) {
            File file = new File(it.next());
            if (INSTANCE.topLevelModuleNames(file).contains(pluginId)) {
                return "the installed dependency " + file.getName();
            }
        }
        Python python = getPython();
        if (python == null) {
            return null;
        }
        try {
            PyObject pyObjectCallAttr = python.getModule("importlib.util").callAttr("find_spec", pluginId);
            if (pyObjectCallAttr == null) {
                return null;
            }
            PyObject pyObject = (PyObject) pyObjectCallAttr.get("origin");
            String string = pyObject != null ? pyObject.toString() : null;
            if (string != null) {
                Companion companion = INSTANCE;
                if (Intrinsics.areEqual(companion.canonicalPathOrNull(string), companion.canonicalPathOrNull(new File(getPluginsController().getPluginsDir(), pluginId + ".py").getAbsolutePath()))) {
                    return null;
                }
                return string;
            }
            PyObject pyObject2 = (PyObject) pyObjectCallAttr.get("submodule_search_locations");
            if (pyObject2 != null) {
                String strCanonicalPathOrNull = INSTANCE.canonicalPathOrNull(new File(getPluginsController().getPluginsDir(), pluginId).getAbsolutePath());
                List<PyObject> listAsList = python.getBuiltins().callAttr("list", pyObject2).asList();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listAsList, 10));
                Iterator<T> it2 = listAsList.iterator();
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
            }
            return "another Python module";
        } catch (PyException e) {
            FileLog.m1041w("Treating plugin id '" + pluginId + "' as taken: " + e.getMessage());
            return "another Python module";
        } catch (Throwable th) {
            FileLog.m1039e("Failed to check whether plugin id '" + pluginId + "' is free", th);
            return null;
        }
    }

    public final PluginsController.PluginValidationResult validatePluginFromFile(String filePath) {
        String string;
        String string2;
        if (!new File(filePath).exists()) {
            return new PluginsController.PluginValidationResult(null, "Plugin file not found.");
        }
        try {
            Map<String, String> pluginMetadata = parsePluginMetadata(filePath);
            String str = pluginMetadata.get("id");
            String str2 = pluginMetadata.get("name");
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return new PluginsController.PluginValidationResult(null, "Plugin metadata must contain non-empty '__id__' and '__name__'.");
            }
            if (str == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            if (!new Regex("^[a-zA-Z][a-zA-Z0-9_-]{1,31}$").matches(str)) {
                return new PluginsController.PluginValidationResult(null, "Plugin '__id__' must be 2-32 characters long, start with a letter, and contain only latin letters, numbers, dashes and underscores.");
            }
            String strFindModuleNameOwner = findModuleNameOwner(str);
            if (strFindModuleNameOwner != null) {
                return new PluginsController.PluginValidationResult(null, "Plugin '__id__' is already used as a Python module name by " + strFindModuleNameOwner + ". Choose a different '__id__'.");
            }
            String str3 = pluginMetadata.get("app_version");
            if (str3 != null) {
                Matcher matcher = VERSION_PATTERN.matcher(str3);
                if (!matcher.matches()) {
                    return new PluginsController.PluginValidationResult(null, "Invalid appVersion: ".concat(str3));
                }
                String strGroup = matcher.group(1);
                if (strGroup == null) {
                    return new PluginsController.PluginValidationResult(null, "Invalid appVersion: ".concat(str3));
                }
                String strGroup2 = matcher.group(2);
                if (strGroup2 != null && (string2 = StringsKt.trim((CharSequence) strGroup2).toString()) != null) {
                    if (!AppUtils.compareVersions(strGroup, BuildVars.BUILD_VERSION_STRING, string2)) {
                        return new PluginsController.PluginValidationResult(null, "Plugin requires app version " + str3 + ", but current is " + BuildVars.BUILD_VERSION_STRING);
                    }
                }
                return new PluginsController.PluginValidationResult(null, "Invalid appVersion: ".concat(str3));
            }
            String str4 = pluginMetadata.get("sdk_version");
            if (str4 != null) {
                Matcher matcher2 = VERSION_PATTERN.matcher(str4);
                if (!matcher2.matches()) {
                    return new PluginsController.PluginValidationResult(null, "Invalid sdkVersion: ".concat(str4));
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    return new PluginsController.PluginValidationResult(null, "Invalid sdkVersion: ".concat(str4));
                }
                String strGroup4 = matcher2.group(2);
                if (strGroup4 != null && (string = StringsKt.trim((CharSequence) strGroup4).toString()) != null) {
                    if (!AppUtils.compareVersions(strGroup3, SDK_VERSION, string)) {
                        return new PluginsController.PluginValidationResult(null, "Plugin requires sdk version " + str4 + ", but current is " + SDK_VERSION);
                    }
                }
                return new PluginsController.PluginValidationResult(null, "Invalid sdkVersion: ".concat(str4));
            }
            if (str2 != null) {
                Plugin plugin = new Plugin(str, str2);
                plugin.setEngine(PluginsConstants.PYTHON);
                String string3 = pluginMetadata.get("author");
                if (string3 == null) {
                    string3 = LocaleController.getString(C2807R.string.PluginNoAuthor);
                }
                plugin.setAuthor(string3);
                String string4 = pluginMetadata.get(MediaTrack.ROLE_DESCRIPTION);
                if (string4 == null) {
                    string4 = LocaleController.getString(C2807R.string.PluginNoDescription);
                }
                plugin.setDescription(string4);
                plugin.setIcon(pluginMetadata.get("icon"));
                String str5 = pluginMetadata.get("version");
                if (str5 == null) {
                    str5 = "1.0";
                }
                plugin.setVersion(str5);
                plugin.setAppVersion(str3);
                plugin.setSdkVersion(str4);
                String str6 = pluginMetadata.get(Common.ASSET_REQUIREMENTS);
                if (str6 != null && str6.length() != 0) {
                    List<String> listSplit = new Regex(",(?!\\s*[<>=!~(])").split(str6, 0);
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
                plugin.setEnabled(getPluginsController().getPreferences().getBoolean(PluginsController.PREF_PLUGIN_ENABLED_KEY_PREFIX + str, false));
                return new PluginsController.PluginValidationResult(plugin, null);
            }
            throw new IllegalArgumentException("Required value was null.");
        } catch (PyException e) {
            FileLog.m1039e("Failed to parse metadata from " + filePath + ". Error: " + e.getMessage(), e);
            return new PluginsController.PluginValidationResult(null, e.getMessage());
        } catch (Throwable th) {
            FileLog.m1039e("Unexpected error validating plugin " + filePath, th);
            return new PluginsController.PluginValidationResult(null, th.getMessage());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<SettingItem> parsePySettingDefinitions(List<? extends PyObject> pyDefinitionsList) {
        Object headerSetting;
        Object editTextSetting;
        String string;
        View view;
        Object customSetting;
        String string2;
        ArrayList arrayList = new ArrayList(pyDefinitionsList.size());
        for (PyObject pyObject : pyDefinitionsList) {
            String string3 = PyObjectUtils.getString(pyObject, "type", null);
            if (string3 == null) {
                FileLog.m1041w("A setting item in a plugin is missing its 'type'. Skipping.");
            } else {
                String string4 = PyObjectUtils.getString(pyObject, PluginsConstants.Settings.KEY, null);
                String string5 = PyObjectUtils.getString(pyObject, "text", null);
                String string6 = PyObjectUtils.getString(pyObject, "subtext", null);
                String string7 = PyObjectUtils.getString(pyObject, "icon", null);
                PyObject pyObject2 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.ON_CHANGE);
                PyObject pyObject3 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.ON_LONG_CLICK);
                String string8 = PyObjectUtils.getString(pyObject, PluginsConstants.Settings.LINK_ALIAS, null);
                PyObject pyObject4 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.DEFAULT);
                PyObject pyObject5 = (PyObject) pyObject.get((Object) "on_click");
                PyObject pyObject6 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.CREATE_SUB_FRAGMENT);
                switch (string3.hashCode()) {
                    case -1866021310:
                        if (string3.equals(PluginsConstants.Settings.TYPE_EDIT_TEXT)) {
                            editTextSetting = null;
                            String string9 = PyObjectUtils.getString(pyObject, PluginsConstants.Settings.HINT, null);
                            boolean z = PyObjectUtils.getBoolean(pyObject, PluginsConstants.Settings.MULTILINE, false);
                            int i = PyObjectUtils.getInt(pyObject, PluginsConstants.Settings.MAX_LENGTH, 256);
                            String string10 = PyObjectUtils.getString(pyObject, PluginsConstants.Settings.MASK, null);
                            if (string4 != null && string9 != null) {
                                editTextSetting = new EditTextSetting(string4, string9, (pyObject4 == null || (string = pyObject4.toString()) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : string, z, i, string10, pyObject2);
                            }
                            headerSetting = editTextSetting;
                        }
                        headerSetting = null;
                        break;
                    case -1349088399:
                        if (string3.equals(PluginsConstants.Settings.TYPE_CUSTOM)) {
                            PyObject pyObject7 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.VIEW);
                            PyObject pyObject8 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.ITEM);
                            PyObject pyObject9 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.FACTORY);
                            PyObject pyObject10 = (PyObject) pyObject.get((Object) PluginsConstants.Settings.FACTORY_ARGS);
                            if (pyObject9 != null) {
                                CustomSetting.Factory factory = (CustomSetting.Factory) PyObjectUtils.toJavaCompat(pyObject9, CustomSetting.Factory.class);
                                if (factory != null) {
                                    customSetting = pyObject10 == null ? new CustomSetting((CustomSetting.Factory<?>) factory, pyObject5, pyObject6, pyObject3, string8) : new CustomSetting(factory, pyObject10, pyObject5, pyObject6, pyObject3, string8);
                                    headerSetting = customSetting;
                                }
                                headerSetting = null;
                            } else if (pyObject8 != null) {
                                UItem uItem = (UItem) PyObjectUtils.toJavaCompat(pyObject8, UItem.class);
                                if (uItem != null) {
                                    customSetting = new CustomSetting(uItem, pyObject5, pyObject6, pyObject3, string8);
                                    headerSetting = customSetting;
                                }
                                headerSetting = null;
                            } else {
                                if (pyObject7 != null && (view = (View) PyObjectUtils.toJavaCompat(pyObject7, View.class)) != null) {
                                    customSetting = new CustomSetting(view, pyObject5, pyObject6, pyObject3, string8);
                                    headerSetting = customSetting;
                                }
                                headerSetting = null;
                            }
                        } else {
                            headerSetting = null;
                        }
                        break;
                    case -1221270899:
                        if (string3.equals(PluginsConstants.Settings.TYPE_HEADER) && string5 != null) {
                            headerSetting = new HeaderSetting(string5);
                            break;
                        }
                        break;
                    case -889473228:
                        if (string3.equals(PluginsConstants.Settings.TYPE_SWITCH) && string4 != null && string5 != null && pyObject4 != null) {
                            editTextSetting = new SwitchSetting(string4, string5, pyObject4.toBoolean(), string6, string7, pyObject2, pyObject3, string8);
                            headerSetting = editTextSetting;
                        }
                        headerSetting = null;
                        break;
                    case 3556653:
                        if (string3.equals("text")) {
                            boolean z2 = PyObjectUtils.getBoolean(pyObject, PluginsConstants.Settings.ACCENT, false);
                            boolean z3 = PyObjectUtils.getBoolean(pyObject, PluginsConstants.Settings.RED, false);
                            if (string5 != null) {
                                headerSetting = new TextSetting(string5, string6, string7, z2, z3, pyObject5, pyObject6, pyObject3, string8);
                                break;
                            }
                        }
                        break;
                    case 100358090:
                        if (string3.equals(PluginsConstants.Settings.TYPE_INPUT) && string4 != null && string5 != null) {
                            editTextSetting = new InputSetting(string4, string5, (pyObject4 == null || (string2 = pyObject4.toString()) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : string2, string6, string7, pyObject2, pyObject3, string8);
                            headerSetting = editTextSetting;
                        }
                        headerSetting = null;
                        break;
                    case 1191572447:
                        if (string3.equals(PluginsConstants.Settings.TYPE_SELECTOR)) {
                            String[] stringArray = PyObjectUtils.getStringArray(pyObject, PluginsConstants.Settings.ITEMS, null);
                            if (string4 != null && string5 != null && stringArray != null && stringArray.length != 0 && pyObject4 != null) {
                                editTextSetting = new SelectorSetting(string4, string5, pyObject4.toInt(), stringArray, string7, pyObject2, pyObject3, string8);
                                headerSetting = editTextSetting;
                            }
                        }
                        headerSetting = null;
                        break;
                    case 1674318617:
                        if (string3.equals(PluginsConstants.Settings.TYPE_DIVIDER)) {
                            headerSetting = new DividerSetting(string5);
                            break;
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
        try {
            Plugin plugin = getPluginsController().getPlugins().get(id);
            PyObject pyObject = this.pluginInstances.get(id);
            if (getPluginsController().isPluginActive$TMessagesProj(plugin) && pyObject != null) {
                PyObject pyObjectCallAttr = pyObject.callAttr(PluginsConstants.CREATE_SETTINGS, new Object[0]);
                if (pyObjectCallAttr == null) {
                    return null;
                }
                List<PyObject> listAsList = pyObjectCallAttr.asList();
                if (listAsList.isEmpty()) {
                    return null;
                }
                return parsePySettingDefinitions(listAsList);
            }
            getPluginsController().invalidatePluginSettings(id);
            return null;
        } catch (Exception e) {
            FileLog.m1039e("Failed to load plugin settings", e);
            return null;
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void executeOnAppEvent(String eventType) {
        Python python;
        PyObject module;
        PyObject pyObject;
        PluginsController pluginsController;
        if (!sdkInitialized || ExteraConfig.getPluginsSafeMode() || (python = getPython()) == null || (module = python.getModule("base_plugin")) == null || (pyObject = (PyObject) module.get("AppEvent")) == null) {
            return;
        }
        PyObject pyObjectCall = pyObject.call(eventType);
        try {
            PyObject pyObject2 = this.debuggerListener;
            if (pyObject2 != null) {
                try {
                    pyObject2.callAttr(PluginsConstants.ON_APP_EVENT, pyObjectCall);
                } catch (PyException e) {
                    FileLog.m1039e("Failed to execute app event for debugger listener", e);
                }
            }
            for (Map.Entry<String, PyObject> entry : this.pluginInstances.entrySet()) {
                String key = entry.getKey();
                PyObject value = entry.getValue();
                if (getPluginsController().isPluginActive$TMessagesProj(key)) {
                    getPluginsController().getWatchdog().onPluginExecutionStarted(key);
                    try {
                        try {
                            value.callAttr(PluginsConstants.ON_APP_EVENT, pyObjectCall);
                            pluginsController = getPluginsController();
                        } catch (PyException e2) {
                            FileLog.m1039e("Failed to execute app " + eventType + " for " + key, e2);
                            pluginsController = getPluginsController();
                        }
                        pluginsController.getWatchdog().onPluginExecutionFinished(key);
                    } catch (Throwable th) {
                        getPluginsController().getWatchdog().onPluginExecutionFinished(key);
                        throw th;
                    }
                }
            }
        } finally {
            PyObjectUtils.closeSafely(pyObjectCall);
        }
    }

    private final <T> PluginsController.HookResult<T> executeHook(PyObject pluginInstance, T initialValue, Class<T> valueClass, String pyResultKey, PyMethodCaller<T> caller, Utilities.Callback<Throwable> errorLogger) {
        if (pluginInstance != null) {
            try {
                PyObject pyObjectCall = caller.call(pluginInstance, initialValue);
                if (pyObjectCall != null) {
                    try {
                        String string = PyObjectUtils.getString(pyObjectCall, PluginsConstants.STRATEGY, PluginsConstants.Strategy.DEFAULT);
                        if (string != null && StringsKt.endsWith$default(string, PluginsConstants.Strategy.CANCEL, false, 2, (Object) null)) {
                            return new PluginsController.HookResult<>(null, true, false);
                        }
                        if (string != null && (StringsKt.endsWith$default(string, PluginsConstants.Strategy.MODIFY, false, 2, (Object) null) || StringsKt.endsWith$default(string, PluginsConstants.Strategy.MODIFY_FINAL, false, 2, (Object) null))) {
                            PyObject pyObject = (PyObject) pyObjectCall.get((Object) pyResultKey);
                            if (pyObject != null) {
                                try {
                                    initialValue = (T) pyObject.toJava(valueClass);
                                } catch (ClassCastException e) {
                                    errorLogger.run(e);
                                }
                            }
                            if (StringsKt.endsWith$default(string, PluginsConstants.Strategy.MODIFY_FINAL, false, 2, (Object) null)) {
                                return new PluginsController.HookResult<>(initialValue, false, true);
                            }
                        }
                        PyObjectUtils.closeSafely(pyObjectCall);
                    } finally {
                        PyObjectUtils.closeSafely(pyObjectCall);
                    }
                }
            } catch (Throwable th) {
                errorLogger.run(th);
            }
        }
        return new PluginsController.HookResult<>(initialValue, false, false);
    }

    private final <T> PluginsController.HookResult<T> executeHook(String pluginId, T initialValue, Class<T> valueClass, String pyResultKey, PyMethodCaller<T> caller, Utilities.Callback<Throwable> errorLogger) {
        return executeHook(this.pluginInstances.get(pluginId), initialValue, valueClass, pyResultKey, caller, errorLogger);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLObject> executePreRequestHook(final String requestName, final int account, TLObject request, final String pluginId) {
        return executeHook(pluginId, request, (Class<TLObject>) TLObject.class, PluginsConstants.REQUEST, (PyMethodCaller<TLObject>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda23
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr("pre_request_hook", requestName, Integer.valueOf(account), (TLObject) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1039e("Failed to execute pre_request_hook in " + pluginId + " for " + requestName, (Throwable) obj);
            }
        });
    }

    public final PluginsController.HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String requestName, int account, TLObject response, TLRPC.TL_error error, PyObject pluginInstance) {
        if (pluginInstance != null) {
            try {
                PyObject pyObjectCallAttr = pluginInstance.callAttr("post_request_hook", requestName, Integer.valueOf(account), response, error);
                if (pyObjectCallAttr != null) {
                    try {
                        String string = PyObjectUtils.getString(pyObjectCallAttr, PluginsConstants.STRATEGY, _UrlKt.FRAGMENT_ENCODE_SET);
                        if (string != null && (StringsKt.endsWith$default(string, PluginsConstants.Strategy.MODIFY, false, 2, (Object) null) || StringsKt.endsWith$default(string, PluginsConstants.Strategy.MODIFY_FINAL, false, 2, (Object) null))) {
                            PyObject pyObject = (PyObject) pyObjectCallAttr.get(PluginsConstants.RESPONSE);
                            if (pyObject != null) {
                                try {
                                    response = (TLObject) pyObject.toJava(TLObject.class);
                                } catch (ClassCastException e) {
                                    FileLog.m1039e("Bad response type from post_request_hook for " + requestName, e);
                                }
                            }
                            PyObject pyObject2 = (PyObject) pyObjectCallAttr.get("error");
                            if (pyObject2 != null) {
                                try {
                                    error = (TLRPC.TL_error) pyObject2.toJava(TLRPC.TL_error.class);
                                } catch (ClassCastException e2) {
                                    FileLog.m1039e("Bad error type from post_request_hook for " + requestName, e2);
                                }
                            }
                            if (StringsKt.endsWith$default(string, PluginsConstants.Strategy.MODIFY_FINAL, false, 2, (Object) null)) {
                                PluginsController.HookResult<PluginsHooks.PostRequestResult> hookResult = new PluginsController.HookResult<>(new PluginsHooks.PostRequestResult(response, error), false, true);
                                PyObjectUtils.closeSafely(pyObjectCallAttr);
                                return hookResult;
                            }
                        }
                        PyObjectUtils.closeSafely(pyObjectCallAttr);
                    } catch (Throwable th) {
                        PyObjectUtils.closeSafely(pyObjectCallAttr);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                FileLog.m1039e("Failed to execute post_request_hook for " + requestName, th2);
            }
        }
        return new PluginsController.HookResult<>(new PluginsHooks.PostRequestResult(response, error), false, false);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<PluginsHooks.PostRequestResult> executePostRequestHook(String requestName, int account, TLObject response, TLRPC.TL_error error, String pluginId) {
        return executePostRequestHook(requestName, account, response, error, this.pluginInstances.get(pluginId));
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLRPC.Update> executeUpdateHook(final String updateName, final int account, TLRPC.Update update, String pluginId) {
        return executeHook(pluginId, update, (Class<TLRPC.Update>) TLRPC.Update.class, PluginsConstants.UPDATE, (PyMethodCaller<TLRPC.Update>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda4
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr("on_update_hook", updateName, Integer.valueOf(account), (TLRPC.Update) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1039e("Failed to execute on_update_hook for " + updateName, (Throwable) obj);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<TLRPC.Updates> executeUpdatesHook(final String containerName, final int account, TLRPC.Updates updates, String pluginId) {
        return executeHook(pluginId, updates, (Class<TLRPC.Updates>) TLRPC.Updates.class, PluginsConstants.UPDATES, (PyMethodCaller<TLRPC.Updates>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda11
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr("on_updates_hook", containerName, Integer.valueOf(account), (TLRPC.Updates) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1039e("Failed to execute on_updates_hook for " + containerName, (Throwable) obj);
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public PluginsController.HookResult<SendMessagesHelper.SendMessageParams> executeSendMessageHook(final int account, SendMessagesHelper.SendMessageParams params, final String pluginId) {
        return executeHook(pluginId, params, (Class<SendMessagesHelper.SendMessageParams>) SendMessagesHelper.SendMessageParams.class, PluginsConstants.PARAMS, (PyMethodCaller<SendMessagesHelper.SendMessageParams>) new PyMethodCaller() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda20
            @Override // com.exteragram.messenger.plugins.PythonPluginsEngine.PyMethodCaller
            public final PyObject call(PyObject pyObject, Object obj) {
                return pyObject.callAttr("on_send_message_hook", Integer.valueOf(account), (SendMessagesHelper.SendMessageParams) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                FileLog.m1039e("Failed to execute on_send_message_hook for " + pluginId, (Throwable) obj);
            }
        });
    }

    public final String fetchParameterValue(String filePath, String parameterName) {
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

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public Map<String, String> parsePluginMetadata(String filePath) {
        HashMap map = new HashMap();
        if (filePath != null) {
            File file = new File(filePath);
            if (file.exists() && file.isFile()) {
                Python python = getPython();
                if (python == null) {
                    FileLog.m1038e("Python engine not initialized, cannot parse metadata for ".concat(filePath));
                    return map;
                }
                try {
                    PyObject pyObjectCallAttr = python.getModule("extera_utils.metadata_parser").callAttr("get_metadata", filePath);
                    if (pyObjectCallAttr != null) {
                        for (Map.Entry<PyObject, PyObject> entry : pyObjectCallAttr.asMap().entrySet()) {
                            map.put(entry.getKey().toString(), entry.getValue().toString());
                        }
                    }
                } catch (PyException e) {
                    FileLog.m1039e("Failed to parse metadata from " + filePath + ". Error: " + e.getMessage(), e);
                    throw e;
                }
            }
        }
        return map;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public Object getPluginSetting(String pluginId, String key, Object defaultValue) {
        Object java2;
        ConcurrentHashMap<String, Object> concurrentHashMap = this.settingsCache.get(pluginId);
        if (concurrentHashMap != null && concurrentHashMap.containsKey(key)) {
            return concurrentHashMap.get(key);
        }
        Python python = getPython();
        if (python != null) {
            try {
                PyObject pyObjectCallAttr = python.getModule("plugin_settings").callAttr("get_setting", pluginId, key, defaultValue);
                if (pyObjectCallAttr != null) {
                    if (defaultValue instanceof Boolean) {
                        java2 = Boolean.valueOf(pyObjectCallAttr.toBoolean());
                    } else if (defaultValue instanceof Integer) {
                        java2 = Integer.valueOf(pyObjectCallAttr.toInt());
                    } else if (defaultValue instanceof String) {
                        java2 = pyObjectCallAttr.toString();
                    } else if (defaultValue instanceof Float) {
                        java2 = Float.valueOf(pyObjectCallAttr.toFloat());
                    } else if (defaultValue instanceof Long) {
                        java2 = Long.valueOf(pyObjectCallAttr.toLong());
                    } else if (defaultValue == null) {
                        java2 = pyObjectCallAttr.toJava(Object.class);
                    } else {
                        java2 = pyObjectCallAttr.toJava(defaultValue.getClass());
                    }
                    ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> concurrentHashMap2 = this.settingsCache;
                    final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda25
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PythonPluginsEngine.m3037$r8$lambda$BnCazs149WScbG3VFjlFmt8ONU((String) obj);
                        }
                    };
                    concurrentHashMap2.computeIfAbsent(pluginId, new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda26
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return PythonPluginsEngine.m3044$r8$lambda$mWa3J6wo5y4lMrM_F3QYyLfwRo(function1, obj);
                        }
                    }).put(key, java2);
                    return java2;
                }
            } catch (PyException e) {
                FileLog.m1039e("Failed to get plugin setting " + pluginId + "/" + key, e);
                return defaultValue;
            }
        }
        return defaultValue;
    }

    /* JADX INFO: renamed from: $r8$lambda$Bn-Cazs149WScbG3VFjlFmt8ONU, reason: not valid java name */
    public static ConcurrentHashMap m3037$r8$lambda$BnCazs149WScbG3VFjlFmt8ONU(String str) {
        return new ConcurrentHashMap();
    }

    /* JADX INFO: renamed from: $r8$lambda$mWa3J6wo5y4lMrM_F-3QYyLfwRo, reason: not valid java name */
    public static ConcurrentHashMap m3044$r8$lambda$mWa3J6wo5y4lMrM_F3QYyLfwRo(Function1 function1, Object obj) {
        return (ConcurrentHashMap) function1.invoke(obj);
    }

    public static ConcurrentHashMap $r8$lambda$OzxiW6_MfzlvelZei_SBz_Q8Wv8(String str) {
        return new ConcurrentHashMap();
    }

    public static ConcurrentHashMap $r8$lambda$_M8g8Sw5ovyJIYMmPx9xCzPeulk(Function1 function1, Object obj) {
        return (ConcurrentHashMap) function1.invoke(obj);
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void setPluginSetting(String pluginId, String key, Object value) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, Object>> concurrentHashMap = this.settingsCache;
        final Function1 function1 = new Function1() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PythonPluginsEngine.$r8$lambda$OzxiW6_MfzlvelZei_SBz_Q8Wv8((String) obj);
            }
        };
        concurrentHashMap.computeIfAbsent(pluginId, new Function() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return PythonPluginsEngine.$r8$lambda$_M8g8Sw5ovyJIYMmPx9xCzPeulk(function1, obj);
            }
        }).put(key, value);
        Python python = getPython();
        if (python == null) {
            return;
        }
        try {
            python.getModule("plugin_settings").callAttr("set_setting", pluginId, key, value);
        } catch (PyException e) {
            FileLog.m1039e("Failed to set plugin setting " + pluginId + "/" + key, e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void clearPluginSettings(String pluginId) {
        this.settingsCache.remove(pluginId);
        Python python = getPython();
        if (python == null) {
            return;
        }
        try {
            python.getModule("plugin_settings").callAttr("clear_settings", pluginId);
        } catch (PyException e) {
            FileLog.m1039e("Failed to clear plugin settings for " + pluginId, e);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public Map<String, ?> getAllPluginSettings(String pluginId) {
        Python python = getPython();
        if (python == null) {
            return null;
        }
        try {
            PyObject pyObjectCallAttr = python.getModule("plugin_settings").callAttr("get_all_settings", pluginId);
            if (pyObjectCallAttr != null) {
                HashMap map = new HashMap();
                for (Map.Entry<PyObject, PyObject> entry : pyObjectCallAttr.asMap().entrySet()) {
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
            FileLog.m1039e("Failed to get all plugin settings for " + pluginId, e);
        }
        return null;
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void showInstallDialog(final BaseFragment fragment, final InstallPluginBottomSheet.PluginInstallParams params) {
        final Activity parentActivity = fragment.getParentActivity();
        if (parentActivity == null) {
            return;
        }
        final int currentAccount = fragment.getCurrentAccount();
        final String filePath = params.getFilePath();
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.m3040$r8$lambda$LiFKmdzDBLJP6MfAnjiwSBwDj4(this.f$0, filePath, fragment, parentActivity, currentAccount, params);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$LiFKmdzDBLJP6MfAnjiwSBw-Dj4, reason: not valid java name */
    public static void m3040$r8$lambda$LiFKmdzDBLJP6MfAnjiwSBwDj4(PythonPluginsEngine pythonPluginsEngine, String str, final BaseFragment baseFragment, final Activity activity, final int i, final InstallPluginBottomSheet.PluginInstallParams pluginInstallParams) {
        final PluginsController.PluginValidationResult pluginValidationResultValidatePluginFromFile = pythonPluginsEngine.validatePluginFromFile(str);
        final String name = new File(str).getName();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.m3035$r8$lambda$7wzgHVd0HkPhRj8FHEZgor0MeY(baseFragment, activity, i, pluginValidationResultValidatePluginFromFile, pluginInstallParams, name);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$7wzgHV-d0HkPhRj8FHEZgor0MeY, reason: not valid java name */
    public static void m3035$r8$lambda$7wzgHVd0HkPhRj8FHEZgor0MeY(final BaseFragment baseFragment, Activity activity, int i, final PluginsController.PluginValidationResult pluginValidationResult, InstallPluginBottomSheet.PluginInstallParams pluginInstallParams, String str) {
        if (!baseFragment.isFinished && !baseFragment.isPaused() && baseFragment.getParentActivity() == activity && baseFragment.getCurrentAccount() == i && AndroidUtilities.isActivityRunning(activity)) {
            if (pluginValidationResult.getPlugin() != null) {
                new InstallPluginBottomSheet(baseFragment, pluginValidationResult, pluginInstallParams).show();
            } else {
                BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.formatString(C2807R.string.PluginInstallError, str), LocaleUtils.createCopySpan(baseFragment), new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        PythonPluginsEngine.m3041$r8$lambda$RICVGZuhirUBe_UACigu18EuCo(pluginValidationResult, baseFragment);
                    }
                }).show();
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$RI-CVGZuhirUBe_UACigu18EuCo, reason: not valid java name */
    public static void m3041$r8$lambda$RICVGZuhirUBe_UACigu18EuCo(PluginsController.PluginValidationResult pluginValidationResult, BaseFragment baseFragment) {
        if (AndroidUtilities.addToClipboard(pluginValidationResult.getError())) {
            BulletinFactory.of(baseFragment).createCopyBulletin(LocaleController.getString(C2807R.string.TextCopied)).show();
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSettings(String id, BaseFragment fragment) {
        Plugin plugin = getPluginsController().getPlugins().get(id);
        if (plugin != null) {
            openPluginSettings(plugin, fragment);
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSettings(final Plugin plugin, final BaseFragment fragment) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                fragment.presentFragment(new PluginSettingsActivity(plugin, (String) null, 2, (DefaultConstructorMarker) (0 == true ? 1 : 0)));
            }
        });
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSetting(final Plugin plugin, final String linkAlias, final BaseFragment fragment) {
        PluginsController.INSTANCE.runOnPluginsQueue(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                PythonPluginsEngine.$r8$lambda$RfcEB9KJA_anfi6_hBn_f0PRfBA(this.f$0, plugin, linkAlias, fragment);
            }
        });
    }

    public static void $r8$lambda$RfcEB9KJA_anfi6_hBn_f0PRfBA(PythonPluginsEngine pythonPluginsEngine, Plugin plugin, String str, final BaseFragment baseFragment) {
        final PluginSettingsActivity settingsLinkPrefix;
        if (pythonPluginsEngine.getPluginsController().isPluginActive$TMessagesProj(plugin)) {
            FileLog.m1037d("Opening plugin setting: " + plugin.getId() + "/" + str);
            if (!StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
                settingsLinkPrefix = new PluginSettingsActivity(plugin, str);
            } else {
                List<SettingItem> list = pythonPluginsEngine.getPluginsController().getSettings().get(plugin.getId());
                if (list == null) {
                    return;
                }
                String[] strArr = (String[]) StringsKt.split$default((CharSequence) str, new String[]{":"}, false, 0, 6, (Object) null).toArray(new String[0]);
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
                                    try {
                                        pySettingDefinitions = pythonPluginsEngine.parsePySettingDefinitions(pyObjectCall.asList());
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
                } else {
                    settingsLinkPrefix = new PluginSettingsActivity(plugin, textSetting.getText(), pySettingDefinitions, textSetting.getCreateSubFragmentCallback(), strArr[strArr.length - 1]).setSettingsLinkPrefix(ArraysKt.joinToString$default(Arrays.copyOf(strArr, strArr.length - 1), ":", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    baseFragment.presentFragment(settingsLinkPrefix);
                }
            });
        }
    }

    @Override // com.exteragram.messenger.plugins.PluginsController.PluginsEngine
    public void openPluginSetting(String pluginId, String linkAlias, BaseFragment fragment) {
        Plugin plugin = getPluginsController().getPlugins().get(pluginId);
        if (plugin != null) {
            openPluginSetting(plugin, linkAlias, fragment);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$SdkState;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "READY", "STARTING", "PYTHON_FAILED", "INSTALL_FAILED", "START_FAILED", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class SdkState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SdkState[] $VALUES;
        public static final SdkState READY = new SdkState("READY", 0);
        public static final SdkState STARTING = new SdkState("STARTING", 1);
        public static final SdkState PYTHON_FAILED = new SdkState("PYTHON_FAILED", 2);
        public static final SdkState INSTALL_FAILED = new SdkState("INSTALL_FAILED", 3);
        public static final SdkState START_FAILED = new SdkState("START_FAILED", 4);

        private static final /* synthetic */ SdkState[] $values() {
            return new SdkState[]{READY, STARTING, PYTHON_FAILED, INSTALL_FAILED, START_FAILED};
        }

        public static EnumEntries<SdkState> getEntries() {
            return $ENTRIES;
        }

        public static SdkState valueOf(String str) {
            return (SdkState) Enum.valueOf(SdkState.class, str);
        }

        public static SdkState[] values() {
            return (SdkState[]) $VALUES.clone();
        }

        private SdkState(String str, int i) {
        }

        static {
            SdkState[] sdkStateArr$values = $values();
            $VALUES = sdkStateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(sdkStateArr$values);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPythonPluginsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine$Updater\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2821:1\n1401#2:2822\n1402#2:2824\n1#3:2823\n*S KotlinDebug\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine$Updater\n*L\n2358#1:2822\n2358#1:2824\n*E\n"})
    public static final class Updater {
        private static int TAG;
        private static DownloadController.FileDownloadProgressListener downloadListener;
        private static volatile boolean isLoading;
        private static long lastCheckUpdateTime;
        private static boolean notifyWhenChangeStatus;
        private static int status;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Pattern PYTHON_SDK_APP_VERSION_PATTERN = Pattern.compile("^app_version(>=|<=|==)(.+)$");
        private static final Pattern PYTHON_SDK_APP_VERSION_CODE_PATTERN = Pattern.compile("^app_version_code(>=|<=|==)(.+)$");
        private static final Runnable notifyRunnable = new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pluginsPySdkInfoChanged, new Object[0]);
            }
        };
        private static final Lazy<String> sdkAbi$delegate = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PythonPluginsEngine.Updater.$r8$lambda$JuR13UJDt15dZx4WfbbKpgyB9_k();
            }
        });

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
        public static final void enableAutoUpdate() {
            INSTANCE.enableAutoUpdate();
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
        public static final File getPythonSdkUpdateMetaFile() {
            return INSTANCE.getPythonSdkUpdateMetaFile();
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
        public static final boolean isPendingUpdateVerified(File file) {
            return INSTANCE.isPendingUpdateVerified(file);
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
        public static final void savePythonSdkArchive(Companion.PythonSdkUpdateInfo pythonSdkUpdateInfo, boolean z) {
            INSTANCE.savePythonSdkArchive(pythonSdkUpdateInfo, z);
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

        @Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001WB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001c\u001a\u00020\u001dH\u0007J\n\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002J\u0006\u0010 \u001a\u00020!J\n\u0010\"\u001a\u0004\u0018\u00010\u001dH\u0007J\b\u0010(\u001a\u00020)H\u0007J\u0006\u0010*\u001a\u00020+J\b\u0010,\u001a\u00020\u000bH\u0007J\u0006\u0010-\u001a\u00020\u000bJ\u0010\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020\u000bH\u0007J\b\u00100\u001a\u00020+H\u0002J\b\u00101\u001a\u00020\u001fH\u0002J\u0010\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020)H\u0007J\b\u00104\u001a\u00020+H\u0007J\b\u00105\u001a\u00020+H\u0007J\b\u00106\u001a\u00020+H\u0007J\u0010\u00107\u001a\u00020\u000b2\u0006\u00108\u001a\u00020+H\u0007J\b\u00109\u001a\u00020+H\u0007J\b\u0010:\u001a\u00020!H\u0007J\b\u0010;\u001a\u00020!H\u0007J\b\u0010<\u001a\u00020!H\u0007J\u0010\u0010<\u001a\u00020!2\u0006\u0010=\u001a\u00020\u000bH\u0007J\b\u0010>\u001a\u00020!H\u0007J\u0010\u0010?\u001a\u00020!2\u0006\u0010@\u001a\u00020+H\u0002J\u0010\u0010A\u001a\u00020!2\u0006\u0010B\u001a\u00020\rH\u0002J\u0012\u0010C\u001a\u0004\u0018\u00010D2\u0006\u0010E\u001a\u00020FH\u0007J\u0018\u0010G\u001a\u00020\u000b2\u0006\u0010H\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u000bH\u0007J\u0018\u0010J\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020\u001f2\u0006\u0010L\u001a\u00020\u001fH\u0007J\u0018\u0010M\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020\u001f2\u0006\u0010L\u001a\u00020\u001fH\u0007J\u0018\u0010N\u001a\u00020!2\u0006\u0010O\u001a\u00020+2\u0006\u0010P\u001a\u00020+H\u0007J \u0010Q\u001a\u00020!2\u0006\u0010R\u001a\u00020D2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020\u000bH\u0002J\u001a\u0010V\u001a\u00020!2\u0006\u0010R\u001a\u00020D2\b\b\u0002\u0010U\u001a\u00020\u000bH\u0007R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010#\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b$\u0010%¨\u0006X"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "PYTHON_SDK_APP_VERSION_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "PYTHON_SDK_APP_VERSION_CODE_PATTERN", "notifyRunnable", "Ljava/lang/Runnable;", "isLoading", _UrlKt.FRAGMENT_ENCODE_SET, "status", _UrlKt.FRAGMENT_ENCODE_SET, "getStatus", "()I", "setStatus", "(I)V", "notifyWhenChangeStatus", "getNotifyWhenChangeStatus", "()Z", "setNotifyWhenChangeStatus", "(Z)V", "lastCheckUpdateTime", _UrlKt.FRAGMENT_ENCODE_SET, "TAG", "downloadListener", "Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;", "getVersion", _UrlKt.FRAGMENT_ENCODE_SET, "getSdkStateText", _UrlKt.FRAGMENT_ENCODE_SET, "notifySdkStateChanged", _UrlKt.FRAGMENT_ENCODE_SET, "getStateString", "sdkAbi", "getSdkAbi", "()Ljava/lang/String;", "sdkAbi$delegate", "Lkotlin/Lazy;", "sdkFromApk", "Ljava/io/InputStream;", "sdkDirFile", "Ljava/io/File;", "isSdkFromApk", "isSdkFromCurrentApk", "setBuildFromApk", "fromApk", "sdkFromApkMarker", "currentApkStamp", "hashBytes", "inputStream", "getPythonSdkUpdateFile", "getPythonCurrentSdkFile", "getPythonSdkUpdateMetaFile", "isPendingUpdateVerified", "archive", "requestSdkFromApkFile", "deleteSdkUpdateFile", "enableAutoUpdate", "checkUpdates", "force", "restoreSdkFromApk", "touchFile", "file", "updateStatus", "newStatus", "parsePythonSdkUpdateResponse", "Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion$PythonSdkUpdateInfo;", "res", "Lorg/telegram/tgnet/TLRPC$messages_Messages;", "isSdkVersionNewer", "remoteVersion", "isBeta", "isAppVersionCompatible", "operator", "targetVersion", "isAppVersionCodeCompatible", "zipFolder", "sourceDir", "zipFile", "copyArchiveToPluginsDirectory", PluginsConstants.UPDATE, "document", "Lorg/telegram/tgnet/TLRPC$Document;", "autoRestartEngine", "savePythonSdkArchive", "PythonSdkUpdateInfo", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nPythonPluginsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PythonPluginsEngine.kt\ncom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2821:1\n1#2:2822\n*E\n"})
        public static final class Companion {

            /* JADX INFO: loaded from: classes4.dex */
            @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
            public static final /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[SdkState.values().length];
                    try {
                        iArr[SdkState.READY.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[SdkState.STARTING.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[SdkState.PYTHON_FAILED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[SdkState.INSTALL_FAILED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[SdkState.START_FAILED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

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
                String str;
                String sdk_version = (ExteraConfig.getPluginsEngine() && PythonPluginsEngine.sdkInitialized) ? PythonPluginsEngine.INSTANCE.getSDK_VERSION() : null;
                boolean sdk_beta = PythonPluginsEngine.INSTANCE.getSDK_BETA();
                if (sdk_version == null) {
                    File fileSdkDirFile = PythonPluginsEngine.SDK_DIR;
                    if (fileSdkDirFile == null) {
                        fileSdkDirFile = sdkDirFile();
                    }
                    File file = new File(fileSdkDirFile, "v.txt");
                    if (file.exists()) {
                        String string = StringsKt.trim((CharSequence) SimpliFile.readText$default(SimpliFiles.file(file), 65536L, null, 2, null)).toString();
                        sdk_beta = StringsKt.endsWith$default(string, "|1", false, 2, (Object) null);
                        sdk_version = StringsKt.substringBefore$default(string, '|', (String) null, 2, (Object) null);
                    }
                }
                if (sdk_version != null) {
                    str = RegisterSpec.PREFIX + sdk_version + (sdk_beta ? "-beta" : _UrlKt.FRAGMENT_ENCODE_SET);
                } else {
                    str = null;
                }
                String sdkStateText = ExteraConfig.getPluginsEngine() ? getSdkStateText() : null;
                if (sdkStateText == null || str == null) {
                    return sdkStateText != null ? sdkStateText : str != null ? str : !ExteraConfig.getPluginsEngine() ? LocaleController.getString(C2807R.string.PluginsPySdkEngineDisabled) : LocaleController.getString(C2807R.string.PluginsPySdkNotInstalled);
                }
                return sdkStateText + " (" + str + ")";
            }

            private final String getSdkStateText() {
                int i = WhenMappings.$EnumSwitchMapping$0[PythonPluginsEngine.sdkState.ordinal()];
                if (i == 1) {
                    return null;
                }
                if (i == 2) {
                    return LocaleController.getString(C2807R.string.PluginsPySdkStarting);
                }
                if (i == 3) {
                    return LocaleController.getString(C2807R.string.PluginsPySdkPythonFailed);
                }
                if (i == 4) {
                    return LocaleController.getString(C2807R.string.PluginsPySdkInstallFailed);
                }
                if (i != 5) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                    return null;
                }
                return LocaleController.getString(C2807R.string.PluginsPySdkStartFailed);
            }

            public final void notifySdkStateChanged() {
                if (getNotifyWhenChangeStatus()) {
                    AndroidUtilities.runOnUIThread(Updater.notifyRunnable);
                }
            }

            @JvmStatic
            public final CharSequence getStateString() {
                int status = getStatus();
                if (status == 0) {
                    return getVersion();
                }
                if (status == 1) {
                    return LocaleController.getString(C2807R.string.CheckingForUpdates);
                }
                if (status != 2) {
                    if (status == 3) {
                        return LocaleController.getString(C2807R.string.LoadingUpdate);
                    }
                    if (status != 4) {
                        return null;
                    }
                    return LocaleController.getString(C2807R.string.RestartPluginSystemToApplyUpdate);
                }
                return LocaleController.getString(C2807R.string.LatestVersionInstalled) + " (" + ((Object) getVersion()) + ")";
            }

            /* JADX INFO: loaded from: classes4.dex */
            @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0013\"\u0004\b$\u0010\u0015R\u001c\u0010%\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015¨\u0006+"}, d2 = {"Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$Companion$PythonSdkUpdateInfo;", "Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;", "<init>", "()V", "message", "Lorg/telegram/tgnet/TLRPC$Message;", "getMessage", "()Lorg/telegram/tgnet/TLRPC$Message;", "setMessage", "(Lorg/telegram/tgnet/TLRPC$Message;)V", "available", _UrlKt.FRAGMENT_ENCODE_SET, "getAvailable", "()Z", "setAvailable", "(Z)V", "channel", _UrlKt.FRAGMENT_ENCODE_SET, "getChannel", "()Ljava/lang/String;", "setChannel", "(Ljava/lang/String;)V", "appVersionOperator", "getAppVersionOperator", "setAppVersionOperator", "appVersion", "getAppVersion", "setAppVersion", "appVersionCodeOperator", "getAppVersionCodeOperator", "setAppVersionCodeOperator", "appVersionCode", "getAppVersionCode", "setAppVersionCode", "abi", "getAbi", "setAbi", "signature", "getSignature", "setSignature", "clear", _UrlKt.FRAGMENT_ENCODE_SET, "canInstall", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
            public static final class PythonSdkUpdateInfo extends TLRPC.TL_help_appUpdate {
                private String abi;
                private String appVersion;
                private String appVersionCode;
                private String appVersionCodeOperator;
                private String appVersionOperator;
                private boolean available;
                private String channel;
                private TLRPC.Message message;
                private String signature;

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

                public final String getSignature() {
                    return this.signature;
                }

                public final void setSignature(String str) {
                    this.signature = str;
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
                    this.signature = null;
                }

                public final boolean canInstall() {
                    String str;
                    String str2;
                    String str3 = this.appVersion;
                    String str4 = this.appVersionOperator;
                    String str5 = this.appVersionCode;
                    String str6 = this.appVersionCodeOperator;
                    String str7 = this.version;
                    if (str3 != null && str4 != null && !Updater.INSTANCE.isAppVersionCompatible(str4, str3)) {
                        return false;
                    }
                    if ((str5 != null && str6 != null && !Updater.INSTANCE.isAppVersionCodeCompatible(str6, str5)) || str7 == null || str7.length() == 0) {
                        return false;
                    }
                    Companion companion = Updater.INSTANCE;
                    return (!companion.isSdkVersionNewer(str7, Intrinsics.areEqual(this.channel, "beta")) || this.document == null || (str = this.abi) == null || !Intrinsics.areEqual(str, companion.getSdkAbi()) || (str2 = this.signature) == null || str2.length() == 0) ? false : true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final String getSdkAbi() {
                return (String) Updater.sdkAbi$delegate.getValue();
            }

            @JvmStatic
            public final InputStream sdkFromApk() throws IOException {
                String sdkAbi = getSdkAbi();
                if (sdkAbi == null) {
                    ZipFilesKt$$ExternalSyntheticBUOutline1.m980m("APK has no Python SDK for ", ArraysKt.joinToString$default(Build.SUPPORTED_ABIS, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null));
                    return null;
                }
                return ApplicationLoader.applicationContext.getAssets().open("plugins_pysdk/sdk-" + sdkAbi + ".zip");
            }

            public final File sdkDirFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Common.ASSET_DIR), PluginsConstants.PLUGINS_SDK);
            }

            @JvmStatic
            public final boolean isSdkFromApk() {
                return sdkFromApkMarker().exists() || requestSdkFromApkFile().exists();
            }

            public final boolean isSdkFromCurrentApk() {
                Object objM3608constructorimpl;
                File fileSdkFromApkMarker = sdkFromApkMarker();
                if (fileSdkFromApkMarker.exists()) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM3608constructorimpl = Result.m3608constructorimpl(SimpliFile.readText$default(SimpliFiles.file(fileSdkFromApkMarker), 65536L, null, 2, null));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m3614isFailureimpl(objM3608constructorimpl)) {
                        objM3608constructorimpl = null;
                    }
                    if (Intrinsics.areEqual(objM3608constructorimpl, currentApkStamp())) {
                        return true;
                    }
                }
                return false;
            }

            @JvmStatic
            public final void setBuildFromApk(boolean fromApk) {
                Object objM3608constructorimpl;
                File fileSdkFromApkMarker = sdkFromApkMarker();
                if (!fromApk) {
                    PythonPluginsEngine.INSTANCE.deleteFileIfExists(fileSdkFromApkMarker);
                    return;
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    SimpliFile.writeTextAtomic$default(SimpliFiles.file(fileSdkFromApkMarker), currentApkStamp(), null, 2, null);
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

            private final File sdkFromApkMarker() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Common.ASSET_DIR), ".currentSdkFromApk");
            }

            private final String currentApkStamp() {
                String str = ApplicationLoader.applicationContext.getApplicationInfo().sourceDir;
                return str + ":" + new File(str).lastModified();
            }

            @JvmStatic
            public final String hashBytes(InputStream inputStream) {
                int i;
                try {
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
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
                            sb.append(String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b2)}, 1)));
                        }
                        String string = sb.toString();
                        CloseableKt.closeFinally(inputStream, null);
                        return string;
                    } finally {
                    }
                } catch (IOException e) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
                    return null;
                } catch (NoSuchAlgorithmException e2) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m947m(e2);
                    return null;
                }
            }

            @JvmStatic
            public final File getPythonSdkUpdateFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Common.ASSET_DIR), "newSdk");
            }

            @JvmStatic
            public final File getPythonCurrentSdkFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Common.ASSET_DIR), "currentSdk");
            }

            @JvmStatic
            public final File getPythonSdkUpdateMetaFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Common.ASSET_DIR), "newSdk.meta");
            }

            @JvmStatic
            public final boolean isPendingUpdateVerified(File archive) {
                File pythonSdkUpdateMetaFile = getPythonSdkUpdateMetaFile();
                if (!pythonSdkUpdateMetaFile.exists()) {
                    FileLog.m1038e("Pending Python SDK update has no signature");
                    return false;
                }
                try {
                    List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.trim((CharSequence) SimpliFile.readText$default(SimpliFiles.file(pythonSdkUpdateMetaFile), 65536L, null, 2, null)).toString(), new String[]{"|"}, false, 0, 6, (Object) null);
                    if (listSplit$default.size() != 3) {
                        FileLog.m1038e("Malformed signature of a pending Python SDK update");
                        return false;
                    }
                    if (!Intrinsics.areEqual(listSplit$default.get(1), getSdkAbi())) {
                        FileLog.m1038e("Pending Python SDK update is built for " + listSplit$default.get(1) + ", but the app runs " + getSdkAbi());
                        return false;
                    }
                    return SdkSignature.verify(archive, (String) listSplit$default.get(0), (String) listSplit$default.get(1), (String) listSplit$default.get(2));
                } catch (IOException e) {
                    FileLog.m1039e("Failed to read pending Python SDK update signature", e);
                    return false;
                }
            }

            @JvmStatic
            public final File requestSdkFromApkFile() {
                return new File(new File(ApplicationLoader.getFilesDirFixed(), Common.ASSET_DIR), ".restoreSdk");
            }

            @JvmStatic
            public final void deleteSdkUpdateFile() {
                Companion companion = PythonPluginsEngine.INSTANCE;
                companion.deleteFileIfExists(getPythonSdkUpdateMetaFile());
                File pythonSdkUpdateFile = getPythonSdkUpdateFile();
                if (pythonSdkUpdateFile.exists()) {
                    companion.deleteFileIfExists(pythonSdkUpdateFile);
                    updateStatus(0);
                }
            }

            @JvmStatic
            public final void enableAutoUpdate() {
                ExteraConfig.setPluginsPySdkAutoUpdate(true);
                if (getNotifyWhenChangeStatus()) {
                    Updater.notifyRunnable.run();
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
                    RemoteUtils.searchMessages("python_sdk", new TLRPC.TL_inputMessagesFilterDocument(), new Utilities.Callback2() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PythonPluginsEngine.Updater.Companion.$r8$lambda$mgD7LsLu3zhuF5NPEyXI2CgMRNo(tL_error, messages_messages);
                                }
                            });
                        }
                    }, 3000);
                }
            }

            public static void $r8$lambda$mgD7LsLu3zhuF5NPEyXI2CgMRNo(TLRPC.TL_error tL_error, TLRPC.messages_Messages messages_messages) {
                Companion companion;
                PythonSdkUpdateInfo pythonSdkUpdateResponse;
                boolean z;
                boolean z2 = false;
                if (tL_error != null) {
                    FileLog.m1038e("Failed to search messages with sdk updates: " + tL_error.text);
                } else if (messages_messages != null && (pythonSdkUpdateResponse = (companion = Updater.INSTANCE).parsePythonSdkUpdateResponse(messages_messages)) != null) {
                    if (ExteraConfig.getPluginsPySdkAutoUpdate()) {
                        z = false;
                    } else {
                        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                        if (safeLastFragment != null) {
                            safeLastFragment.showDialog(new PythonSdkUpdateAlert(safeLastFragment, pythonSdkUpdateResponse));
                        }
                        companion.updateStatus(0);
                        z = true;
                    }
                    if (z) {
                        z2 = z;
                    } else {
                        try {
                            savePythonSdkArchive$default(companion, pythonSdkUpdateResponse, false, 2, null);
                            z2 = true;
                        } catch (IOException e) {
                            String channel = pythonSdkUpdateResponse.getChannel();
                            TLRPC.Message message = pythonSdkUpdateResponse.getMessage();
                            FileLog.m1039e("Failed to load python-plugins-sdk file (" + channel + ", message id = " + (message != null ? Integer.valueOf(message.id) : null) + ")", e);
                            z2 = z;
                        }
                    }
                }
                if (z2) {
                    return;
                }
                Updater.INSTANCE.updateStatus(2);
            }

            @JvmStatic
            public final void restoreSdkFromApk() {
                touchFile(requestSdkFromApkFile());
            }

            private final void touchFile(File file) {
                Object objM3608constructorimpl;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(SimpliFiles.file(file).touch());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3611exceptionOrNullimpl = Result.m3611exceptionOrNullimpl(objM3608constructorimpl);
                if (thM3611exceptionOrNullimpl != null) {
                    FileLog.m1040e(thM3611exceptionOrNullimpl);
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

            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @JvmStatic
            public final PythonSdkUpdateInfo parsePythonSdkUpdateResponse(TLRPC.messages_Messages res) {
                boolean z;
                PythonSdkUpdateInfo pythonSdkUpdateInfo = new PythonSdkUpdateInfo();
                Iterator<TLRPC.Message> it = res.messages.iterator();
                while (true) {
                    if (it.hasNext()) {
                        TLRPC.Message next = it.next();
                        if (next instanceof TLRPC.TL_message) {
                            TLRPC.TL_message tL_message = (TLRPC.TL_message) next;
                            if (!TextUtils.isEmpty(tL_message.message) && (tL_message.media instanceof TLRPC.TL_messageMediaDocument)) {
                                boolean zContains$default = StringsKt.contains$default((CharSequence) tL_message.message, (CharSequence) "python_sdk_stable", false, 2, (Object) null);
                                boolean zContains$default2 = StringsKt.contains$default((CharSequence) tL_message.message, (CharSequence) "python_sdk_beta", false, 2, (Object) null);
                                if (zContains$default || zContains$default2) {
                                    if (!zContains$default2 || ExteraConfig.getPluginsPySdkBetaVersions()) {
                                        StringBuilder sb = new StringBuilder();
                                        Iterator it2 = StringsKt.split$default((CharSequence) tL_message.message, new String[]{"\n"}, false, 0, 6, (Object) null).iterator();
                                        boolean z2 = false;
                                        while (it2.hasNext()) {
                                            String string = StringsKt.trim((CharSequence) it2.next()).toString();
                                            if (!TextUtils.isEmpty(string) || !z2) {
                                                if (StringsKt.startsWith$default(string, "python_sdk_", false, 2, (Object) null)) {
                                                    pythonSdkUpdateInfo.setChannel(zContains$default2 ? "beta" : "stable");
                                                    z2 = true;
                                                } else if (z2) {
                                                    Matcher matcher = Updater.PYTHON_SDK_APP_VERSION_PATTERN.matcher(string);
                                                    if (!matcher.matches()) {
                                                        Matcher matcher2 = Updater.PYTHON_SDK_APP_VERSION_CODE_PATTERN.matcher(string);
                                                        if (!matcher2.matches()) {
                                                            List listSplit$default = StringsKt.split$default((CharSequence) string, new String[]{"="}, false, 2, 2, (Object) null);
                                                            if (listSplit$default.size() == 2) {
                                                                String string2 = StringsKt.trim((CharSequence) listSplit$default.get(0)).toString();
                                                                String string3 = StringsKt.trim((CharSequence) listSplit$default.get(1)).toString();
                                                                switch (string2.hashCode()) {
                                                                    case -1085916422:
                                                                        if (string2.equals("can_not_skip")) {
                                                                            pythonSdkUpdateInfo.can_not_skip = Boolean.parseBoolean(string3);
                                                                        }
                                                                        break;
                                                                    case 96360:
                                                                        if (string2.equals("abi")) {
                                                                            pythonSdkUpdateInfo.setAbi(string3);
                                                                        }
                                                                        break;
                                                                    case 351608024:
                                                                        if (string2.equals("version")) {
                                                                            pythonSdkUpdateInfo.version = string3;
                                                                        }
                                                                        break;
                                                                    case 1073584312:
                                                                        if (string2.equals("signature")) {
                                                                            pythonSdkUpdateInfo.setSignature(string3);
                                                                        }
                                                                        break;
                                                                }
                                                            }
                                                        } else {
                                                            pythonSdkUpdateInfo.setAppVersionCodeOperator(matcher2.group(1));
                                                            String strGroup = matcher2.group(2);
                                                            pythonSdkUpdateInfo.setAppVersionCode(strGroup != null ? StringsKt.trim((CharSequence) strGroup).toString() : null);
                                                        }
                                                    } else {
                                                        pythonSdkUpdateInfo.setAppVersionOperator(matcher.group(1));
                                                        String strGroup2 = matcher.group(2);
                                                        pythonSdkUpdateInfo.setAppVersion(strGroup2 != null ? StringsKt.trim((CharSequence) strGroup2).toString() : null);
                                                    }
                                                } else {
                                                    sb.append(string);
                                                    sb.append("\n");
                                                }
                                            }
                                        }
                                        z = true;
                                        pythonSdkUpdateInfo.document = tL_message.media.document;
                                        if (pythonSdkUpdateInfo.canInstall()) {
                                            pythonSdkUpdateInfo.text = sb.toString();
                                            ArrayList<TLRPC.MessageEntity> arrayList = new ArrayList<>();
                                            for (TLRPC.MessageEntity messageEntity : tL_message.entities) {
                                                if (!(messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                                                    arrayList.add(messageEntity);
                                                }
                                            }
                                            pythonSdkUpdateInfo.entities = arrayList;
                                            pythonSdkUpdateInfo.setMessage(next);
                                        } else {
                                            pythonSdkUpdateInfo.clear();
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        z = true;
                    }
                }
                if (pythonSdkUpdateInfo.getMessage() == null) {
                    return null;
                }
                pythonSdkUpdateInfo.setAvailable((pythonSdkUpdateInfo.document == null || TextUtils.isEmpty(pythonSdkUpdateInfo.version)) ? false : z);
                return pythonSdkUpdateInfo;
            }

            @JvmStatic
            public final boolean isSdkVersionNewer(String remoteVersion, boolean isBeta) {
                if (!ExteraConfig.getPluginsPySdkBetaVersions() && PythonPluginsEngine.INSTANCE.getSDK_BETA() && !isSdkFromCurrentApk()) {
                    return !isBeta;
                }
                Companion companion = PythonPluginsEngine.INSTANCE;
                if (companion.getSDK_VERSION() != null) {
                    return AppUtils.compareVersions(">", remoteVersion, companion.getSDK_VERSION());
                }
                return false;
            }

            @JvmStatic
            public final boolean isAppVersionCompatible(String operator, String targetVersion) {
                return AppUtils.compareVersions(operator, BuildVars.BUILD_VERSION_STRING, targetVersion);
            }

            @JvmStatic
            public final boolean isAppVersionCodeCompatible(String operator, String targetVersion) {
                return AppUtils.compareVersions(operator, BuildVars.BUILD_VERSION, Integer.parseInt(targetVersion));
            }

            @JvmStatic
            public final void zipFolder(File sourceDir, File zipFile) {
                SimpliFiles.directory(sourceDir).zipTo(zipFile, OverwritePolicy.REPLACE);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void copyArchiveToPluginsDirectory(final PythonSdkUpdateInfo update, TLRPC.Document document, final boolean autoRestartEngine) {
                final File pythonSdkUpdateFile = getPythonSdkUpdateFile();
                final File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document);
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        PythonPluginsEngine.Updater.Companion.m3049$r8$lambda$o94czEXBbhoKNVN8ekUm0orzW8(pathToAttach, update, pythonSdkUpdateFile, autoRestartEngine);
                    }
                });
            }

            /* JADX INFO: renamed from: $r8$lambda$o94czEXBbhoKNVN8ekUm0orz-W8, reason: not valid java name */
            public static void m3049$r8$lambda$o94czEXBbhoKNVN8ekUm0orzW8(File file, PythonSdkUpdateInfo pythonSdkUpdateInfo, File file2, final boolean z) {
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                if (!SdkSignature.verify(file, pythonSdkUpdateInfo.version, pythonSdkUpdateInfo.getAbi(), pythonSdkUpdateInfo.getSignature())) {
                    String channel = pythonSdkUpdateInfo.getChannel();
                    TLRPC.Message message = pythonSdkUpdateInfo.getMessage();
                    FileLog.m1038e("Rejected Python SDK update with an invalid signature (" + channel + ", message id = " + (message != null ? Integer.valueOf(message.id) : null) + ")");
                } else {
                    try {
                        SimpliFiles.file(file).copyTo(file2, OverwritePolicy.REPLACE);
                        SimpliFile.writeTextAtomic$default(SimpliFiles.file(Updater.INSTANCE.getPythonSdkUpdateMetaFile()), pythonSdkUpdateInfo.version + "|" + pythonSdkUpdateInfo.getAbi() + "|" + pythonSdkUpdateInfo.getSignature(), null, 2, null);
                        booleanRef.element = true;
                    } catch (Exception e) {
                        FileLog.m1039e("Failed to copy plugins-sdk file", e);
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        PythonPluginsEngine.Updater.Companion.m3050$r8$lambda$qJjoqrqPp_XBVdedlOFp_X2W2A(booleanRef, z);
                    }
                });
            }

            /* JADX INFO: renamed from: $r8$lambda$qJjoqrqPp_XBVdedlO-Fp_X2W2A, reason: not valid java name */
            public static void m3050$r8$lambda$qJjoqrqPp_XBVdedlOFp_X2W2A(Ref.BooleanRef booleanRef, boolean z) {
                Updater.isLoading = false;
                if (!booleanRef.element) {
                    Updater.INSTANCE.updateStatus(2);
                } else if (z) {
                    PluginsController.INSTANCE.getInstance().restart();
                } else {
                    Updater.INSTANCE.updateStatus(4);
                }
            }

            public static /* synthetic */ void savePythonSdkArchive$default(Companion companion, PythonSdkUpdateInfo pythonSdkUpdateInfo, boolean z, int i, Object obj) {
                if ((i & 2) != 0) {
                    z = false;
                }
                companion.savePythonSdkArchive(pythonSdkUpdateInfo, z);
            }

            @JvmStatic
            public final void savePythonSdkArchive(final PythonSdkUpdateInfo update, final boolean autoRestartEngine) {
                TLRPC.Message message = update.getMessage();
                final TLRPC.Document document = update.document;
                if (Updater.isLoading || message == null || document == null) {
                    return;
                }
                MessageObject messageObject = new MessageObject(UserConfig.selectedAccount, message, false, true);
                Updater.isLoading = true;
                updateStatus(3);
                if (!messageObject.mediaExists) {
                    Updater.TAG = DownloadController.getInstance(UserConfig.selectedAccount).generateObserverTag();
                    FileLoader.getInstance(UserConfig.selectedAccount).loadFile(document, messageObject, 1, 0);
                    DownloadController.FileDownloadProgressListener fileDownloadProgressListener = new DownloadController.FileDownloadProgressListener() { // from class: com.exteragram.messenger.plugins.PythonPluginsEngine$Updater$Companion$savePythonSdkArchive$listener$1
                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onProgressDownload(String fileName, long downloadSize, long totalSize) {
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onProgressUpload(String fileName, long downloadSize, long totalSize, boolean isEncrypted) {
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onFailedDownload(String fileName, boolean canceled) {
                            if (PythonPluginsEngine.Updater.downloadListener != this) {
                                return;
                            }
                            PythonPluginsEngine.Updater.downloadListener = null;
                            FileLog.m1038e("Failed to load plugins-sdk file");
                            PythonPluginsEngine.Updater.isLoading = false;
                            PythonPluginsEngine.Updater.INSTANCE.updateStatus(2);
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public void onSuccessDownload(String fileName) {
                            if (PythonPluginsEngine.Updater.downloadListener != this) {
                                return;
                            }
                            PythonPluginsEngine.Updater.downloadListener = null;
                            PythonPluginsEngine.Updater.INSTANCE.copyArchiveToPluginsDirectory(update, document, autoRestartEngine);
                        }

                        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
                        public int getObserverTag() {
                            return PythonPluginsEngine.Updater.TAG;
                        }
                    };
                    Updater.downloadListener = fileDownloadProgressListener;
                    DownloadController.getInstance(UserConfig.selectedAccount).addLoadingFileObserver(FileLoader.getAttachFileName(document), messageObject, fileDownloadProgressListener);
                    return;
                }
                copyArchiveToPluginsDirectory(update, document, autoRestartEngine);
            }
        }

        private Updater() {
        }

        public static String $r8$lambda$JuR13UJDt15dZx4WfbbKpgyB9_k() {
            Object objM3608constructorimpl;
            AssetManager assets = ApplicationLoader.applicationContext.getAssets();
            for (String str : Build.SUPPORTED_ABIS) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    assets.open("plugins_pysdk/sdk-" + str + ".zip").close();
                    objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m3615isSuccessimpl(objM3608constructorimpl)) {
                    return str;
                }
            }
            return null;
        }
    }
}
