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
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRouteProviderProtocol;
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
import org.telegram.messenger.C2573R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008c\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0004\u0091\u0001\u0094\u0001\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004¤\u0001¥\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J?\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001e\u001a\u00020\u00192\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0012H\u0002¢\u0006\u0004\b \u0010\u0003J%\u0010#\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\n0\u001cH\u0002¢\u0006\u0004\b#\u0010$J!\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010*JM\u00100\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\f\u0010-\u001a\b\u0018\u00010+R\u00020,2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010/\u001a\u00020\u0019H\u0002¢\u0006\u0004\b0\u00101J\u000f\u00103\u001a\u000202H\u0007¢\u0006\u0004\b3\u00104J\u000f\u00106\u001a\u000205H\u0007¢\u0006\u0004\b6\u00107J\u0017\u0010:\u001a\u00020\f2\u0006\u00109\u001a\u000208H\u0002¢\u0006\u0004\b:\u0010;J\u001f\u0010>\u001a\u00020\u00122\u0006\u0010=\u001a\u00020<2\u0006\u00109\u001a\u000208H\u0002¢\u0006\u0004\b>\u0010?J\u0015\u0010A\u001a\u00020\u00192\u0006\u0010@\u001a\u00020\f¢\u0006\u0004\bA\u0010BJ\r\u0010C\u001a\u00020\u0012¢\u0006\u0004\bC\u0010\u0003J-\u0010E\u001a\u0004\u0018\u00010D2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\f\u0010-\u001a\b\u0018\u00010+R\u00020,¢\u0006\u0004\bE\u0010FJ\u001f\u0010G\u001a\u0004\u0018\u00010D2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bG\u0010HJ5\u0010K\u001a\u0004\u0018\u00010\u00172\u0006\u0010I\u001a\u00020\f2\u0006\u0010J\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\f\u0010-\u001a\b\u0018\u00010+R\u00020,¢\u0006\u0004\bK\u0010LJ/\u0010O\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010M\u001a\u00020&2\b\u0010N\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bO\u0010PJ\u001d\u0010Q\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bQ\u0010\u0014J\u0015\u0010R\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020\u00122\b\b\u0002\u0010T\u001a\u00020\u0019¢\u0006\u0004\bU\u0010VJ\u0017\u0010W\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bW\u0010XJ\u0017\u0010Y\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\bY\u0010ZJ\u0017\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b[\u0010\\J\u0015\u0010^\u001a\u00020\u00192\u0006\u0010]\u001a\u00020\n¢\u0006\u0004\b^\u0010_J\u0015\u0010`\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b`\u0010XJ\u0017\u0010c\u001a\u00020\u00192\b\u0010b\u001a\u0004\u0018\u00010a¢\u0006\u0004\bc\u0010dJ\u001d\u0010e\u001a\u00020\u00122\u0006\u0010=\u001a\u00020<2\u0006\u0010b\u001a\u00020a¢\u0006\u0004\be\u0010fJ\u001d\u0010e\u001a\u00020\u00122\u0006\u0010=\u001a\u00020<2\u0006\u0010I\u001a\u00020\f¢\u0006\u0004\be\u0010gJ'\u0010l\u001a\u00020\u00192\u0006\u0010h\u001a\u00020\u00042\u0006\u0010i\u001a\u00020\u00042\b\u0010k\u001a\u0004\u0018\u00010j¢\u0006\u0004\bl\u0010mJ3\u0010t\u001a\u00020\u00122\u0006\u0010o\u001a\u00020n2\u0006\u0010p\u001a\u00020\u00192\u0014\u0010s\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010r\u0012\u0004\u0012\u00020\u00120q¢\u0006\u0004\bt\u0010uJ+\u0010x\u001a\u00020\u00122\u0006\u0010w\u001a\u00020v2\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\bx\u0010yJ\u0015\u0010|\u001a\u00020\u00192\u0006\u0010{\u001a\u00020z¢\u0006\u0004\b|\u0010}R\u0015\u0010\u007f\u001a\u00020~8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0082\u0001\u001a\u00030\u0081\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001e\u0010\u0085\u0001\u001a\t\u0012\u0004\u0012\u00020\f0\u0084\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R)\u0010\u0088\u0001\u001a\u000f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00040\u0087\u00018\u0006¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R)\u0010\u008c\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\u0087\u00018\u0006¢\u0006\u0010\n\u0006\b\u008c\u0001\u0010\u0089\u0001\u001a\u0006\b\u008d\u0001\u0010\u008b\u0001R\u0017\u0010\u008e\u0001\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0017\u0010\u0090\u0001\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u008f\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u0091\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001a\u0010\u0095\u0001\u001a\u00030\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001e\u0010\u0098\u0001\u001a\t\u0012\u0004\u0012\u00020\n0\u0097\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R$\u0010\u009a\u0001\u001a\u000f\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\n0\u0087\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0089\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009d\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R,\u0010¢\u0001\u001a\u0017\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010r\u0012\u0004\u0012\u00020\u00120q0¡\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001¨\u0006¦\u0001"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "resId", "density", _UrlKt.FRAGMENT_ENCODE_SET, "resolvedCacheKey", "(II)J", "Lcom/exteragram/messenger/icons/IconPack;", "pack", _UrlKt.FRAGMENT_ENCODE_SET, "fileName", "Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", "sourceCacheKey", "(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;II)Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", "packId", _UrlKt.FRAGMENT_ENCODE_SET, "invalidateIconCaches", "(Ljava/lang/String;I)V", "generation", "resourceName", "Landroid/graphics/Bitmap;", "bitmap", _UrlKt.FRAGMENT_ENCODE_SET, "publishBitmap", "(JLjava/lang/String;Lcom/exteragram/messenger/icons/IconPack;IILandroid/graphics/Bitmap;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "packs", "syncInstalledCustomPacks", "(Ljava/util/List;)Z", "rebuildOwnerMap", "newActivePacks", "Lcom/exteragram/messenger/icons/IconManager$ActivePacksUpdate;", "updateActivePacks", "(JLjava/util/List;)Lcom/exteragram/messenger/icons/IconManager$ActivePacksUpdate;", "iconFileName", "Ljava/io/File;", "resolvePackIconFile", "(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;)Ljava/io/File;", "launchPrewarm", "(J)V", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "theme", "knownResourceName", "cacheResult", "getPackIconBitmap", "(Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;Z)Landroid/graphics/Bitmap;", "Landroidx/core/graphics/drawable/IconCompat;", "getNotificationIcon", "()Landroidx/core/graphics/drawable/IconCompat;", "Landroid/graphics/drawable/Icon;", "getNotificationSystemIcon", "()Landroid/graphics/drawable/Icon;", "Lcom/exteragram/messenger/icons/IconPackStorageError;", MediaRouteProviderProtocol.SERVICE_DATA_ERROR, "iconPackErrorText", "(Lcom/exteragram/messenger/icons/IconPackStorageError;)Ljava/lang/String;", "Lorg/telegram/ui/ActionBar/BaseFragment;", "baseFragment", "showIconPackError", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/icons/IconPackStorageError;)V", "name", "isBlacklisted", "(Ljava/lang/String;)Z", "prefetchCustomPacks", "Landroid/graphics/drawable/Drawable;", "getDrawable", "(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;", "getPackIconDrawable", "(Lcom/exteragram/messenger/icons/IconPack;I)Landroid/graphics/drawable/Drawable;", "path", "originalResId", "createBitmapFromFile", "(Ljava/lang/String;IILandroid/content/res/Resources$Theme;)Landroid/graphics/Bitmap;", "tempFile", "originalName", "saveCustomIcon", "(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;)V", "resetCustomIcon", "getIcon", "(I)I", "update", "initialize", "(Z)V", "setActiveCustomPack", "(Ljava/lang/String;)V", "findPackById", "(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;", "bundlePackBlocking", "(Ljava/lang/String;)Ljava/io/File;", "iconPack", "saveIconPackMetadata", "(Lcom/exteragram/messenger/icons/IconPack;)Z", "deletePack", "Lorg/telegram/messenger/MessageObject;", "messageObject", "isIconPack", "(Lorg/telegram/messenger/MessageObject;)Z", "handleIconPack", "(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V", "(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)Z", "Landroid/app/Activity;", "activity", "selectFromFiles", "Lkotlin/Function1;", "Landroid/net/Uri;", Callback.METHOD_NAME, "startIconPicker", "(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)V", "Landroid/content/Context;", "context", "showReplaceAlert", "(Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;)V", "Lcom/exteragram/messenger/IconPackType;", "basePackType", "isBasePackOnly", "(Lcom/exteragram/messenger/IconPackType;)Z", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/CoroutineDispatcher;", "mutationDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", _UrlKt.FRAGMENT_ENCODE_SET, "blacklistedIcons", "Ljava/util/Set;", "Ljava/util/concurrent/ConcurrentHashMap;", "systemIcons", "Ljava/util/concurrent/ConcurrentHashMap;", "getSystemIcons", "()Ljava/util/concurrent/ConcurrentHashMap;", "systemNames", "getSystemNames", "maxMemory", "I", "cacheSize", "com/exteragram/messenger/icons/IconManager$resolvedCache$1", "resolvedCache", "Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;", "com/exteragram/messenger/icons/IconManager$sourceCache$1", "sourceCache", "Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "activePacks", "Ljava/util/concurrent/CopyOnWriteArrayList;", "iconOwnerMap", "Lkotlinx/coroutines/Job;", "initializationJob", "Lkotlinx/coroutines/Job;", "prewarmJob", "initializationGeneration", "J", "Landroid/util/SparseArray;", "resultCallbacks", "Landroid/util/SparseArray;", "SourceCacheKey", "ActivePacksUpdate", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,853:1\n777#2:854\n873#2,2:855\n1915#2,2:857\n777#2:859\n873#2,2:860\n1915#2,2:862\n296#2,2:880\n296#2,2:882\n2792#2,3:884\n27#3:864\n27#3:865\n27#3:866\n27#3:867\n1#4:868\n83#5,6:869\n71#5:875\n184#6,2:876\n184#6,2:878\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager\n*L\n166#1:854\n166#1:855,2\n167#1:857,2\n169#1:859\n169#1:860,2\n170#1:862,2\n840#1:880,2\n842#1:882,2\n850#1:884,3\n282#1:864\n297#1:865\n306#1:866\n311#1:867\n364#1:869,6\n400#1:875\n539#1:876,2\n567#1:878,2\n*E\n"})
public final class IconManager {
    public static final IconManager INSTANCE;
    private static final CopyOnWriteArrayList<IconPack> activePacks;
    private static final Set<String> blacklistedIcons;
    private static final int cacheSize;
    private static final ConcurrentHashMap<String, IconPack> iconOwnerMap;
    private static volatile long initializationGeneration;
    private static Job initializationJob;
    private static final int maxMemory;
    private static final CoroutineDispatcher mutationDispatcher;
    private static Job prewarmJob;
    private static IconManager$resolvedCache$1 resolvedCache;
    private static final SparseArray<Function1<Uri, Unit>> resultCallbacks;
    private static final CoroutineScope scope;
    private static IconManager$sourceCache$1 sourceCache;
    private static final ConcurrentHashMap<String, Integer> systemIcons;
    private static final ConcurrentHashMap<Integer, String> systemNames;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
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

    /* JADX WARN: Type inference failed for: r4v2, types: [com.exteragram.messenger.icons.IconManager$sourceCache$1] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.exteragram.messenger.icons.IconManager$resolvedCache$1] */
    static {
        IconManager iconManager = new IconManager();
        INSTANCE = iconManager;
        scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
        mutationDispatcher = CoroutineDispatcher.limitedParallelism$default(Dispatchers.getIO(), 1, null, 2, null);
        blacklistedIcons = SetsKt.setOf((Object[]) new String[]{"blockpanel", "vd_flip", "system", "smiles_popup", "camera_btn", "cancel_big", "chats_archive_box", "chats_archive_arrow", "chats_archive_muted", "chats_archive_pin", "chats_widget_preview", "circle_big", "clone", "contacts_widget_preview", "equals", "etg_splash", "ev_minus", "ev_plus", "fast_scroll_empty", "filled_chatlink_large", "field_carret_empty", "finalize", "dice", "dino_pic", "circle", "widgets_light_badgebg", "greydivider", "greydivider_bottom", "greydivider_top", "groups_limit1", "ic_ab_new", "ic_ab_reply_2", "ic_chatlist_add_2", "ic_foreground", "ic_foreground_monet", "ic_player", "ic_reply_icon", "icon_background_clip", "icon_background_clip_round", "icon_plane", "icplaceholder", "large_ads_info", "large_away", "large_greeting", "large_log_actions", "large_monetize", "large_quickreplies", "list_selector_ex", "livepin", "load_big", "location_empty", "login_arrow1", "login_phone1", "logo_middle", "map_pin3", "map_pin_photo", "msg_media_gallery", "music_empty", "no_passport", "no_password", "nophotos", "notify", "paint_elliptical_brush", "paint_neon_brush", "paint_radial_brush", "phone_activate", "photo_placeholder_in", "photo_tooltip2", "photoview_placeholder", "screencast_big", "screencast_big_remix", "screencast_solar", "scrollbar_vertical_thumb", "scrollbar_vertical_thumb_inset", "places_btn", "newmsg_divider", "ic_launcher_dr", "smiles_info", "sms_bubble", "sms_devices", "stats_tooltip", "sticker", "story_camera", "theme_preview_image", "ton", "transparent", "venue_tooltip", "wait", "videopreview"});
        systemIcons = new ConcurrentHashMap<>();
        systemNames = new ConcurrentHashMap<>();
        int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
        maxMemory = iMaxMemory;
        int iMax = Math.max(1024, iMaxMemory / 8);
        cacheSize = iMax;
        final int i = iMax / 2;
        resolvedCache = new LruCache<Long, Bitmap>(i) { // from class: com.exteragram.messenger.icons.IconManager$resolvedCache$1
            @Override // androidx.collection.LruCache
            public /* bridge */ /* synthetic */ int sizeOf(Long l, Bitmap bitmap) {
                return sizeOf(l.longValue(), bitmap);
            }

            public int sizeOf(long key, Bitmap value) {
                return value.getByteCount() / 1024;
            }
        };
        final int i2 = iMax / 2;
        sourceCache = new LruCache<SourceCacheKey, Bitmap>(i2) { // from class: com.exteragram.messenger.icons.IconManager$sourceCache$1
            @Override // androidx.collection.LruCache
            public int sizeOf(IconManager.SourceCacheKey key, Bitmap value) {
                return value.getByteCount() / 1024;
            }
        };
        activePacks = new CopyOnWriteArrayList<>();
        iconOwnerMap = new ConcurrentHashMap<>();
        initialize$default(iconManager, false, 1, null);
        resultCallbacks = new SparseArray<>();
    }

    public final boolean isBlacklisted(String name) {
        return blacklistedIcons.contains(name) || StringsKt.contains$default((CharSequence) name, (CharSequence) "avd", false, 2, (Object) null) || StringsKt.endsWith$default(name, "_solar", false, 2, (Object) null) || StringsKt.endsWith$default(name, "_remix", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "$", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "animationpin", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "googlepay", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "shadow", false, 2, (Object) null) || StringsKt.startsWith$default(name, "ic_monochrome", false, 2, (Object) null) || StringsKt.startsWith$default(name, "nocover", false, 2, (Object) null) || StringsKt.startsWith$default(name, "gradient_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "stickers_back_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "media_doc_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "loading_animation", false, 2, (Object) null) || StringsKt.startsWith$default(name, "intro_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "minibubble_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "book_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "call_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "groupsintro", false, 2, (Object) null) || StringsKt.startsWith$default(name, "profile_level", false, 2, (Object) null) || StringsKt.startsWith$default(name, "widget_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "zoom_slide", false, 2, (Object) null) || StringsKt.startsWith$default(name, "zoom_round", false, 2, (Object) null) || StringsKt.startsWith$default(name, "popup_fixed_alert", false, 2, (Object) null) || StringsKt.startsWith$default(name, "search_dark", false, 2, (Object) null) || StringsKt.startsWith$default(name, "bar_selector", false, 2, (Object) null);
    }

    public final ConcurrentHashMap<String, Integer> getSystemIcons() {
        return systemIcons;
    }

    public final ConcurrentHashMap<Integer, String> getSystemNames() {
        return systemNames;
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\r\b\u0082\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u000eR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u001a\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u001b\u0010\u000eR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u0010R\u0017\u0010\n\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001c\u001a\u0004\b\u001e\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager$SourceCacheKey;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "generation", _UrlKt.FRAGMENT_ENCODE_SET, "packId", "location", "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "resId", "density", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "J", "getGeneration", "()J", "Ljava/lang/String;", "getPackId", "getLocation", "getFileName", "I", "getResId", "getDensity", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
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
            return "SourceCacheKey(generation=" + this.generation + ", packId=" + this.packId + ", location=" + this.location + ", fileName=" + this.fileName + ", resId=" + this.resId + ", density=" + this.density + ')';
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

    private final SourceCacheKey sourceCacheKey(IconPack pack, String fileName, int resId, int density) {
        long j = initializationGeneration;
        String id = pack.getId();
        File location = pack.getLocation();
        return new SourceCacheKey(j, id, location != null ? location.getAbsolutePath() : null, fileName, resId, density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateIconCaches(String packId, int resId) {
        Set<Long> setKeySet = resolvedCache.snapshot().keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (((int) (((Number) obj).longValue() >> 32)) == resId) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            resolvedCache.remove(Long.valueOf(((Number) obj2).longValue()));
        }
        Set<SourceCacheKey> setKeySet2 = sourceCache.snapshot().keySet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : setKeySet2) {
            SourceCacheKey sourceCacheKey = (SourceCacheKey) obj3;
            if (Intrinsics.areEqual(sourceCacheKey.getPackId(), packId) && sourceCacheKey.getResId() == resId) {
                arrayList2.add(obj3);
            }
        }
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj4 = arrayList2.get(i);
            i++;
            sourceCache.remove((SourceCacheKey) obj4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean publishBitmap(long generation, String resourceName, IconPack pack, int resId, int density, Bitmap bitmap) {
        if (generation == initializationGeneration && Intrinsics.areEqual(iconOwnerMap.get(resourceName), pack)) {
            String str = pack.getIcons().get(resourceName);
            if (str == null) {
                return false;
            }
            sourceCache.put(sourceCacheKey(pack, str, resId, density), bitmap);
            resolvedCache.put(Long.valueOf(resolvedCacheKey(resId, density)), bitmap);
            return true;
        }
        return false;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/icons/IconManager$ActivePacksUpdate;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "STALE", "UNCHANGED", "CHANGED", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ActivePacksUpdate {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ActivePacksUpdate[] $VALUES;
        public static final ActivePacksUpdate STALE = new ActivePacksUpdate("STALE", 0);
        public static final ActivePacksUpdate UNCHANGED = new ActivePacksUpdate("UNCHANGED", 1);
        public static final ActivePacksUpdate CHANGED = new ActivePacksUpdate("CHANGED", 2);

        private static final /* synthetic */ ActivePacksUpdate[] $values() {
            return new ActivePacksUpdate[]{STALE, UNCHANGED, CHANGED};
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
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$prefetchCustomPacks$1", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10991 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C10991(Continuation<? super C10991> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10991(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10991) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                IconManager.INSTANCE.syncInstalledCustomPacks(IconPackStorage.INSTANCE.getCustomPacks());
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public final void prefetchCustomPacks() {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10991(null), 3, null);
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
        if (size < 0) {
            return;
        }
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
                return;
            } else {
                size = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized ActivePacksUpdate updateActivePacks(long generation, List<IconPack> newActivePacks) {
        if (generation != initializationGeneration) {
            return ActivePacksUpdate.STALE;
        }
        CopyOnWriteArrayList<IconPack> copyOnWriteArrayList = activePacks;
        if (Intrinsics.areEqual(copyOnWriteArrayList, newActivePacks)) {
            return ActivePacksUpdate.UNCHANGED;
        }
        copyOnWriteArrayList.clear();
        copyOnWriteArrayList.addAll(newActivePacks);
        rebuildOwnerMap();
        resolvedCache.evictAll();
        sourceCache.evictAll();
        return ActivePacksUpdate.CHANGED;
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
            FileLog.m897e("Failed to resolve icon file for pack " + pack.getId(), e);
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
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            prewarmJob = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10981(generation, null), 3, null);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$launchPrewarm$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$launchPrewarm$1", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10981 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $generation;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10981(long j, Continuation<? super C10981> continuation) {
            super(2, continuation);
            this.$generation = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10981 c10981 = new C10981(this.$generation, continuation);
            c10981.L$0 = obj;
            return c10981;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10981) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            int i = AndroidUtilities.displayMetrics.densityDpi;
            int i2 = 0;
            for (Map.Entry entry : IconManager.iconOwnerMap.entrySet()) {
                String str = (String) entry.getKey();
                IconPack iconPack = (IconPack) entry.getValue();
                if (!CoroutineScopeKt.isActive(coroutineScope) || this.$generation != IconManager.initializationGeneration) {
                    return Unit.INSTANCE;
                }
                int i3 = i2;
                IconManager iconManager = IconManager.INSTANCE;
                Integer num = iconManager.getSystemIcons().get(str);
                if (num != null) {
                    int iIntValue = num.intValue();
                    int i4 = i3 + 1;
                    if (i3 < 512) {
                        Bitmap packIconBitmap = iconManager.getPackIconBitmap(iconPack, iIntValue, i, null, str, false);
                        if (packIconBitmap != null) {
                            if (CoroutineScopeKt.isActive(coroutineScope) && this.$generation == IconManager.initializationGeneration) {
                                int i5 = i;
                                iconManager.publishBitmap(this.$generation, str, iconPack, iIntValue, i5, packIconBitmap);
                                i = i5;
                            } else {
                                return Unit.INSTANCE;
                            }
                        }
                        i2 = i4;
                    } else {
                        return Unit.INSTANCE;
                    }
                } else {
                    i2 = i3;
                }
            }
            return Unit.INSTANCE;
        }
    }

    public final Drawable getDrawable(int resId, int density, Resources.Theme theme) {
        if (density == 0) {
            density = AndroidUtilities.displayMetrics.densityDpi;
        }
        int i = density;
        Bitmap bitmap = resolvedCache.get(Long.valueOf(resolvedCacheKey(resId, i)));
        if (bitmap != null) {
            return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), bitmap);
        }
        String resourceEntryName = systemNames.get(Integer.valueOf(resId));
        if (resourceEntryName == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
            } catch (Exception unused) {
                return null;
            }
        }
        String str = resourceEntryName;
        IconPack iconPack = iconOwnerMap.get(str);
        if (iconPack != null) {
            long j = initializationGeneration;
            Bitmap packIconBitmap = getPackIconBitmap(iconPack, resId, i, theme, str, false);
            if (packIconBitmap != null) {
                publishBitmap(j, str, iconPack, resId, i, packIconBitmap);
                return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), packIconBitmap);
            }
        }
        return null;
    }

    public final Drawable getPackIconDrawable(IconPack pack, int resId) {
        Bitmap packIconBitmap$default = getPackIconBitmap$default(this, pack, resId, AndroidUtilities.displayMetrics.densityDpi, null, null, false, 48, null);
        if (packIconBitmap$default != null) {
            return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), packIconBitmap$default);
        }
        return null;
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
        if (knownResourceName == null && (knownResourceName = systemNames.get(Integer.valueOf(resId))) == null) {
            try {
                knownResourceName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
            } catch (Exception unused) {
                return null;
            }
        }
        String str = pack.getIcons().get(knownResourceName);
        if (str == null) {
            return null;
        }
        SourceCacheKey sourceCacheKey = sourceCacheKey(pack, str, resId, density);
        Bitmap bitmap = sourceCache.get(sourceCacheKey);
        if (bitmap != null) {
            return bitmap;
        }
        File fileResolvePackIconFile = resolvePackIconFile(pack, str);
        if (fileResolvePackIconFile == null) {
            return null;
        }
        Bitmap bitmapCreateBitmapFromFile = createBitmapFromFile(fileResolvePackIconFile.getAbsolutePath(), resId, density, theme);
        if (bitmapCreateBitmapFromFile != null && cacheResult) {
            sourceCache.put(sourceCacheKey, bitmapCreateBitmapFromFile);
        }
        return bitmapCreateBitmapFromFile;
    }

    public final Bitmap createBitmapFromFile(String path, int originalResId, int density, Resources.Theme theme) {
        Drawable drawableForDensity;
        int i;
        try {
            Resources resources = ApplicationLoader.applicationContext.getResources();
            ExteraResources exteraResources = resources instanceof ExteraResources ? (ExteraResources) resources : null;
            if (exteraResources == null || (drawableForDensity = exteraResources.getOriginalDrawable(originalResId)) == null) {
                drawableForDensity = ResourcesCompat.getDrawableForDensity(ApplicationLoader.applicationContext.getResources(), originalResId, density, theme);
            }
            int iMax = Math.max(1, drawableForDensity != null ? drawableForDensity.getIntrinsicWidth() : AndroidUtilities.dp(24.0f));
            int iMax2 = Math.max(1, drawableForDensity != null ? drawableForDensity.getIntrinsicHeight() : AndroidUtilities.dp(24.0f));
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
                    return bitmapCreateBitmap;
                } finally {
                }
            } else {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(path, options);
                int i2 = options.outWidth;
                if (i2 > 0 && (i = options.outHeight) > 0 && ((long) i2) * ((long) i) <= 100000000) {
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
                        if ((((j + ((long) i6)) - 1) / ((long) i6)) * (((((long) options.outHeight) + ((long) i6)) - 1) / ((long) i6)) <= jMax) {
                            break;
                        }
                        options.inSampleSize = i6 * 2;
                    }
                    options.inJustDecodeBounds = false;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(path, options);
                    if (bitmapDecodeFile == null) {
                        return null;
                    }
                    if (bitmapDecodeFile.getWidth() == iMax && bitmapDecodeFile.getHeight() == iMax2) {
                        bitmapDecodeFile.setDensity(density);
                        return bitmapDecodeFile;
                    }
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, iMax, iMax2, true);
                    if (!Intrinsics.areEqual(bitmapCreateScaledBitmap, bitmapDecodeFile)) {
                        bitmapDecodeFile.recycle();
                    }
                    bitmapCreateScaledBitmap.setDensity(density);
                    return bitmapCreateScaledBitmap;
                }
                return null;
            }
        } catch (Exception e) {
            FileLog.m897e("Error loading icon bitmap: " + path, e);
            return null;
        } catch (OutOfMemoryError e2) {
            FileLog.m897e("Out of memory loading icon bitmap: " + path, e2);
            return null;
        }
    }

    public final void saveCustomIcon(String packId, int resId, File tempFile, String originalName) {
        String resourceEntryName = systemNames.get(Integer.valueOf(resId));
        if (resourceEntryName == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
            } catch (Exception unused) {
                return;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(scope, mutationDispatcher, null, new C11011(packId, tempFile, originalName, resourceEntryName, resId, null), 2, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveCustomIcon$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$saveCustomIcon$1", m766f = "IconManager.kt", m767i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, m768l = {460}, m769m = "invokeSuspend", m770n = {"$this$launch", "packToEdit", "ext", "sanitized", "baseName", "stem", "packDirectory", "destination", "updatedMap", "previousFileName", "updatedPack", "preDecoded", "density"}, m771s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "L$9", "L$10", "L$11", "I$0"}, m772v = 1)
    @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,853:1\n1#2:854\n392#3,4:855\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1\n*L\n434#1:855,4\n*E\n"})
    public static final class C11011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
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
        public C11011(String str, File file, String str2, String str3, int i, Continuation<? super C11011> continuation) {
            super(2, continuation);
            this.$packId = str;
            this.$tempFile = file;
            this.$originalName = str2;
            this.$resourceName = str3;
            this.$resId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C11011 c11011 = new C11011(this.$packId, this.$tempFile, this.$originalName, this.$resourceName, this.$resId, continuation);
            c11011.L$0 = obj;
            return c11011;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C11011) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(1:155)|(1:(2:5|6)(2:12|13))(3:14|15|(7:17|18|162|19|(1:21)|24|25)(19:28|(1:30)(1:32)|33|(1:35)(1:36)|37|(1:39)(1:40)|41|(1:43)|44|(2:45|(1:179)(2:47|(2:178|49)(1:50)))|51|(1:52)|54|55|174|56|(12:58|59|160|60|(1:62)|65|158|68|(1:70)|73|76|77)(3:(7:166|87|(1:89)|92|95|(1:97)|98)|99|(1:101))|133|134))|102|156|103|(1:105)|106|133|134|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0286, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0287, code lost:
        
            r1 = kotlin.Result.INSTANCE;
            kotlin.Result.m3291constructorimpl(kotlin.ResultKt.createFailure(r0));
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0291, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x0292, code lost:
        
            r20 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x0296, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0297, code lost:
        
            r20 = r11;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Throwable {
            Throwable th;
            Object objM3291constructorimpl;
            Object objM3291constructorimpl2;
            File file;
            File fileResolvePackIconFile;
            Object objM3291constructorimpl3;
            Object objM3291constructorimpl4;
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
                        Result.m3291constructorimpl(unit);
                        return unit;
                    } catch (Throwable th3) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m3291constructorimpl(ResultKt.createFailure(th3));
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
                    file = simpliDirectoryCreate.file(strSubstring + '_' + UUID.randomUUID() + '.' + extension).getFile();
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
                            Result.m3291constructorimpl(unit2);
                        } catch (Throwable th4) {
                            Result.Companion companion4 = Result.INSTANCE;
                            Result.m3291constructorimpl(ResultKt.createFailure(th4));
                        }
                        try {
                            if (file4.exists()) {
                                SimpliFiles.file(file4).delete();
                            }
                            objM3291constructorimpl4 = Result.m3291constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th5) {
                            Result.Companion companion5 = Result.INSTANCE;
                            objM3291constructorimpl4 = Result.m3291constructorimpl(ResultKt.createFailure(th5));
                        }
                        Result.m3290boximpl(objM3291constructorimpl4);
                        return unit2;
                    }
                    if (str5 != null && !mutableMap.values().contains(str5) && (fileResolvePackIconFile = IconManager.INSTANCE.resolvePackIconFile(iconPackFindPackById, str5)) != null) {
                        try {
                            Result.Companion companion6 = Result.INSTANCE;
                            if (fileResolvePackIconFile.exists()) {
                                SimpliFiles.file(fileResolvePackIconFile).delete();
                            }
                            objM3291constructorimpl3 = Result.m3291constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th6) {
                            Result.Companion companion7 = Result.INSTANCE;
                            objM3291constructorimpl3 = Result.m3291constructorimpl(ResultKt.createFailure(th6));
                        }
                        Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl3);
                        if (thM3294exceptionOrNullimpl != null) {
                            FileLog.m897e("Failed to delete old icon", thM3294exceptionOrNullimpl);
                        }
                        Result.m3290boximpl(objM3291constructorimpl3);
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
                    FileLog.m897e("Failed to save custom icon", e);
                    File file6 = this.$tempFile;
                    try {
                        Result.Companion companion8 = Result.INSTANCE;
                        if (file6.exists()) {
                            SimpliFiles.file(file6).delete();
                        }
                        Result.m3291constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th7) {
                        Result.Companion companion9 = Result.INSTANCE;
                        Result.m3291constructorimpl(ResultKt.createFailure(th7));
                    }
                    if (file2 != null) {
                        try {
                            if (file2.exists()) {
                                SimpliFiles.file(file2).delete();
                            }
                            objM3291constructorimpl2 = Result.m3291constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th8) {
                            Result.Companion companion10 = Result.INSTANCE;
                            objM3291constructorimpl2 = Result.m3291constructorimpl(ResultKt.createFailure(th8));
                        }
                        Result.m3290boximpl(objM3291constructorimpl2);
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
                        Result.m3291constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th10) {
                        Result.Companion companion12 = Result.INSTANCE;
                        Result.m3291constructorimpl(ResultKt.createFailure(th10));
                    }
                    if (file2 == null) {
                        throw th;
                    }
                    try {
                        if (file2.exists()) {
                            SimpliFiles.file(file2).delete();
                        }
                        objM3291constructorimpl = Result.m3291constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th11) {
                        Result.Companion companion13 = Result.INSTANCE;
                        objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th11));
                    }
                    Result.m3290boximpl(objM3291constructorimpl);
                    throw th;
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            File file8 = this.$tempFile;
            Result.Companion companion14 = Result.INSTANCE;
            if (file8.exists()) {
                SimpliFiles.file(file8).delete();
            }
            Result.m3291constructorimpl(Unit.INSTANCE);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveCustomIcon$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$saveCustomIcon$1$2", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,853:1\n363#2,7:854\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveCustomIcon$1$2\n*L\n461#1:854,7\n*E\n"})
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }
    }

    public final void resetCustomIcon(String packId, int resId) {
        String resourceEntryName = systemNames.get(Integer.valueOf(resId));
        if (resourceEntryName == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(resId);
            } catch (Exception unused) {
                return;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(scope, mutationDispatcher, null, new C11001(packId, resourceEntryName, resId, null), 2, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$resetCustomIcon$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$resetCustomIcon$1", m766f = "IconManager.kt", m767i = {0, 0, 0, 0, 0}, m768l = {506}, m769m = "invokeSuspend", m770n = {"$this$launch", "packToEdit", "iconFileName", "updatedMap", "updatedPack"}, m771s = {"L$0", "L$1", "L$2", "L$3", "L$4"}, m772v = 1)
    @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$resetCustomIcon$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"})
    public static final class C11001 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
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
        public C11001(String str, String str2, int i, Continuation<? super C11001> continuation) {
            super(2, continuation);
            this.$packId = str;
            this.$resourceName = str2;
            this.$resId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C11001 c11001 = new C11001(this.$packId, this.$resourceName, this.$resId, continuation);
            c11001.L$0 = obj;
            return c11001;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C11001) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String str;
            Object objM3291constructorimpl;
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
                            objM3291constructorimpl = Result.m3291constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
                        }
                        Throwable thM3294exceptionOrNullimpl = Result.m3294exceptionOrNullimpl(objM3291constructorimpl);
                        if (thM3294exceptionOrNullimpl != null) {
                            FileLog.m897e("Failed to delete old icon", thM3294exceptionOrNullimpl);
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$resetCustomIcon$1$3, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$resetCustomIcon$1$3", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$resetCustomIcon$1$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,853:1\n363#2,7:854\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$resetCustomIcon$1$3\n*L\n507#1:854,7\n*E\n"})
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        }
    }

    public final int getIcon(int resId) {
        int i;
        for (IconPack iconPack : activePacks) {
            if (iconPack.isBase() && iconPack.getPreinstalledMap() != null && (i = iconPack.getPreinstalledMap().get(resId, -1)) != -1) {
                return i;
            }
        }
        return resId;
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
                            FileLog.m898e(e);
                        }
                        iconCompatCreateWithBitmap = IconCompat.createWithContentUri(iconUri);
                    } else {
                        iconCompatCreateWithBitmap = null;
                    }
                    if (iconCompatCreateWithBitmap != null) {
                        return iconCompatCreateWithBitmap;
                    }
                } else {
                    Bitmap packIconBitmap$default = getPackIconBitmap$default(INSTANCE, iconPack, C2573R.drawable.notification, AndroidUtilities.displayMetrics.densityDpi, null, "notification", false, 32, null);
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
                    return IconManager.$r8$lambda$XcViHtMKy9sgd3Qw8wHxNP7dlig((String) obj2);
                }
            }), new Function1() { // from class: com.exteragram.messenger.icons.IconManager$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Integer.valueOf(((SparseIntArray) obj2).get(C2573R.drawable.notification, -1));
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
                iIntValue = C2573R.drawable.notification;
            }
            return IconCompat.createWithResource(ApplicationLoader.applicationContext, iIntValue);
        } catch (Exception e2) {
            FileLog.m897e("Failed to resolve notification icon", e2);
            return IconCompat.createWithResource(ApplicationLoader.applicationContext, C2573R.drawable.notification);
        }
    }

    public static SparseIntArray $r8$lambda$XcViHtMKy9sgd3Qw8wHxNP7dlig(String str) {
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
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            Job job3 = prewarmJob;
            if (job3 != null) {
                Job.DefaultImpls.cancel$default(job3, null, 1, null);
            }
            initializationGeneration++;
            initializationJob = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10971(initializationGeneration, update, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$initialize$1", m766f = "IconManager.kt", m767i = {0, 1}, m768l = {634, 648}, m769m = "invokeSuspend", m770n = {"newActivePacks", "newActivePacks"}, m771s = {"L$0", "L$0"}, m772v = 1)
    public static final class C10971 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $generation;
        final /* synthetic */ boolean $update;
        Object L$0;
        int label;

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$WhenMappings */
        @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
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
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10971(long j, boolean z, Continuation<? super C10971> continuation) {
            super(2, continuation);
            this.$generation = j;
            this.$update = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10971(this.$generation, this.$update, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10971) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x00f1, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r4, r12) == r0) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x012b, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r12) == r0) goto L55;
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                IconManager.INSTANCE.launchPrewarm(this.$generation);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            ExteraConfig.loadConfig();
            if (IconManager.INSTANCE.getSystemIcons().isEmpty()) {
                try {
                    for (Field field : C2573R.drawable.class.getFields()) {
                        String name = field.getName();
                        IconManager iconManager = IconManager.INSTANCE;
                        if (!iconManager.isBlacklisted(name)) {
                            int i2 = field.getInt(null);
                            iconManager.getSystemIcons().put(name, Boxing.boxInt(i2));
                            iconManager.getSystemNames().put(Boxing.boxInt(i2), name);
                        }
                    }
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
            if (this.$generation != IconManager.initializationGeneration) {
                return Unit.INSTANCE;
            }
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
            if (this.$generation == IconManager.initializationGeneration) {
                int i3 = WhenMappings.$EnumSwitchMapping$0[IconManager.INSTANCE.updateActivePacks(this.$generation, arrayList).ordinal()];
                if (i3 == 1) {
                    return Unit.INSTANCE;
                }
                if (i3 == 2) {
                    if (this.$update) {
                        IconManager.resolvedCache.evictAll();
                        IconManager.sourceCache.evictAll();
                        MainCoroutineDispatcher main = Dispatchers.getMain();
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$generation, null);
                        this.L$0 = SpillingKt.nullOutSpilledVariable(arrayList);
                        this.label = 1;
                    }
                    IconManager.INSTANCE.launchPrewarm(this.$generation);
                    return Unit.INSTANCE;
                }
                if (i3 != 3) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                    return null;
                }
                MainCoroutineDispatcher main2 = Dispatchers.getMain();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$generation, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(arrayList);
                this.label = 2;
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$initialize$1$1", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$initialize$1$2", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
        @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$initialize$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,853:1\n296#2,2:854\n296#2,2:856\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$initialize$1$2\n*L\n653#1:854,2\n654#1:856,2\n*E\n"})
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ long $generation;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(long j, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$generation = j;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.$generation, continuation);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                BaseFragment safeLastFragment3 = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment3 != null) {
                    Theme.reloadAllResources(safeLastFragment3.getParentActivity());
                    INavigationLayout parentLayout = safeLastFragment3.getParentLayout();
                    if (parentLayout != null) {
                        parentLayout.rebuildFragments(0);
                    }
                }
                return Unit.INSTANCE;
            }
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
        IconPack iconPack2 = (IconPack) BuildersKt.runBlocking(mutationDispatcher, new IconManager$saveIconPackMetadata$savedPack$1(iconPack, null));
        if (iconPack2 == null) {
            return false;
        }
        BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getMain(), null, new C11021(iconPack2, null), 2, null);
        return true;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveIconPackMetadata$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$saveIconPackMetadata$1", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nIconManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveIconPackMetadata$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,853:1\n363#2,7:854\n*S KotlinDebug\n*F\n+ 1 IconManager.kt\ncom/exteragram/messenger/icons/IconManager$saveIconPackMetadata$1\n*L\n707#1:854,7\n*E\n"})
    public static final class C11021 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ IconPack $savedPack;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11021(IconPack iconPack, Continuation<? super C11021> continuation) {
            super(2, continuation);
            this.$savedPack = iconPack;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C11021(this.$savedPack, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C11021) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    IconManager.resolvedCache.evictAll();
                    IconManager.sourceCache.evictAll();
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$deletePack$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$deletePack$1", m766f = "IconManager.kt", m767i = {}, m768l = {723}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10941 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $packId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10941(String str, Continuation<? super C10941> continuation) {
            super(2, continuation);
            this.$packId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10941(this.$packId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10941) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$deletePack$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$deletePack$1$1", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
        BuildersKt__Builders_commonKt.launch$default(scope, mutationDispatcher, null, new C10941(packId, null), 2, null);
    }

    public final boolean isIconPack(MessageObject messageObject) {
        String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
        return (messageObject == null || messageObject.getDocumentName() == null || TextUtils.isEmpty(pathToMessage) || !StringsKt.endsWith$default(pathToMessage, ".icons", false, 2, (Object) null)) ? false : true;
    }

    public final void handleIconPack(BaseFragment baseFragment, MessageObject messageObject) {
        handleIconPack(baseFragment, ChatUtils.getInstance().getPathToMessage(messageObject));
    }

    private final String iconPackErrorText(IconPackStorageError error) {
        int i;
        switch (WhenMappings.$EnumSwitchMapping$0[error.ordinal()]) {
            case 1:
                i = C2573R.string.IconPackErrorInvalidArchive;
                break;
            case 2:
                i = C2573R.string.IconPackErrorMissingMetadata;
                break;
            case 3:
                i = C2573R.string.IconPackErrorMetadataTooLarge;
                break;
            case 4:
                i = C2573R.string.IconPackErrorInvalidMetadata;
                break;
            case 5:
                i = C2573R.string.IconPackErrorTooManyFiles;
                break;
            case 6:
                i = C2573R.string.IconPackErrorArchiveTooLarge;
                break;
            case 7:
                i = C2573R.string.IconPackErrorFileTooLarge;
                break;
            case 8:
                i = C2573R.string.IconPackErrorCompressionRatioTooHigh;
                break;
            case 9:
                i = C2573R.string.IconPackErrorStorage;
                break;
            case 10:
                i = C2573R.string.UnknownError;
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return null;
        }
        return LocaleController.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showIconPackError(BaseFragment baseFragment, IconPackStorageError error) {
        BulletinFactory.of(baseFragment).createSimpleBulletin(C2573R.raw.error, iconPackErrorText(error)).show();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$handleIconPack$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$handleIconPack$1", m766f = "IconManager.kt", m767i = {0, 1, 1}, m768l = {768, GlobalMediaRouter.CallbackHandler.MSG_ROUTER_PARAMS_CHANGED}, m769m = "invokeSuspend", m770n = {"file", "file", "packResult"}, m771s = {"L$0", "L$0", "L$1"}, m772v = 1)
    public static final class C10951 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BaseFragment $baseFragment;
        final /* synthetic */ String $path;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10951(String str, BaseFragment baseFragment, Continuation<? super C10951> continuation) {
            super(2, continuation);
            this.$path = str;
            this.$baseFragment = baseFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10951(this.$path, this.$baseFragment, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10951) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 2, 0}, xi = 48)
        @DebugMetadata(m765c = "com.exteragram.messenger.icons.IconManager$handleIconPack$1$1", m766f = "IconManager.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
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
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                    return null;
                }
                return Unit.INSTANCE;
            }
        }
    }

    public final void handleIconPack(BaseFragment baseFragment, String path) {
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C10951(path, baseFragment, null), 3, null);
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
