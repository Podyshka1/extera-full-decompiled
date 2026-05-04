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
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.activity.result.PickVisualMediaRequestKt;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import com.caverock.androidsvg.SVG;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.output.FileManager;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.p012ui.components.InstallIconPackBottomSheet;
import com.exteragram.messenger.icons.p012ui.components.ReplaceIconBottomSheet;
import com.exteragram.messenger.icons.p012ui.picker.IconPickerController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlin.p024io.FilesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.SupervisorKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.LaunchActivity;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class IconManager {
    public static final IconManager INSTANCE;
    private static final CopyOnWriteArrayList activePacks;
    private static final Set blacklistedIcons;
    private static final int cacheSize;
    private static final ConcurrentHashMap iconOwnerMap;
    private static Job initializationJob;
    private static final int maxMemory;
    private static IconManager$resolvedCache$1 resolvedCache;
    private static final SparseArray resultCallbacks;
    private static final CoroutineScope scope;
    private static IconManager$sourceCache$1 sourceCache;
    private static final ConcurrentHashMap systemIcons;
    private static final ConcurrentHashMap systemNames;

    public final void showReplaceAlert(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        showReplaceAlert$default(this, context, i, null, 4, null);
    }

    private IconManager() {
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [com.exteragram.messenger.icons.IconManager$sourceCache$1] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.exteragram.messenger.icons.IconManager$resolvedCache$1] */
    static {
        IconManager iconManager = new IconManager();
        INSTANCE = iconManager;
        scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
        blacklistedIcons = SetsKt.setOf((Object[]) new String[]{"blockpanel", "vd_flip", "system", "smiles_popup", "camera_btn", "cancel_big", "chats_archive_box", "chats_archive_arrow", "chats_archive_muted", "chats_archive_pin", "chats_widget_preview", "circle_big", "clone", "contacts_widget_preview", "equals", "etg_splash", "ev_minus", "ev_plus", "fast_scroll_empty", "filled_chatlink_large", "field_carret_empty", "finalize", "dice", "dino_pic", "circle", "widgets_light_badgebg", "greydivider", "greydivider_bottom", "greydivider_top", "groups_limit1", "ic_ab_new", "ic_ab_reply_2", "ic_chatlist_add_2", "ic_foreground", "ic_foreground_monet", "ic_player", "ic_reply_icon", "icon_background_clip", "icon_background_clip_round", "icon_plane", "icplaceholder", "large_ads_info", "large_away", "large_greeting", "large_log_actions", "large_monetize", "large_quickreplies", "list_selector_ex", "livepin", "load_big", "location_empty", "login_arrow1", "login_phone1", "logo_middle", "map_pin3", "map_pin_photo", "msg_media_gallery", "music_empty", "no_passport", "no_password", "nophotos", "notify", "paint_elliptical_brush", "paint_neon_brush", "paint_radial_brush", "phone_activate", "photo_placeholder_in", "photo_tooltip2", "photoview_placeholder", "screencast_big", "screencast_big_remix", "screencast_solar", "scrollbar_vertical_thumb", "scrollbar_vertical_thumb_inset", "places_btn", "newmsg_divider", "ic_launcher_dr", "smiles_info", "sms_bubble", "sms_devices", "stats_tooltip", "sticker", "story_camera", "theme_preview_image", "ton", "transparent", "venue_tooltip", "wait", "videopreview"});
        systemIcons = new ConcurrentHashMap();
        systemNames = new ConcurrentHashMap();
        int iMaxMemory = (int) (Runtime.getRuntime().maxMemory() / ((long) 1024));
        maxMemory = iMaxMemory;
        int iMax = Math.max(1024, iMaxMemory / 8);
        cacheSize = iMax;
        final int i = iMax / 2;
        resolvedCache = new LruCache(i) { // from class: com.exteragram.messenger.icons.IconManager$resolvedCache$1
            @Override // androidx.collection.LruCache
            public /* bridge */ /* synthetic */ int sizeOf(Object obj, Object obj2) {
                return sizeOf(((Number) obj).intValue(), (Bitmap) obj2);
            }

            protected int sizeOf(int i2, Bitmap value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.getByteCount() / 1024;
            }
        };
        final int i2 = iMax / 2;
        sourceCache = new LruCache(i2) { // from class: com.exteragram.messenger.icons.IconManager$sourceCache$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.collection.LruCache
            public int sizeOf(String key, Bitmap value) {
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                return value.getByteCount() / 1024;
            }
        };
        activePacks = new CopyOnWriteArrayList();
        iconOwnerMap = new ConcurrentHashMap();
        initialize$default(iconManager, false, 1, null);
        resultCallbacks = new SparseArray();
    }

    public final boolean isBlacklisted(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return blacklistedIcons.contains(name) || StringsKt.contains$default((CharSequence) name, (CharSequence) "avd", false, 2, (Object) null) || StringsKt.endsWith$default(name, "_solar", false, 2, (Object) null) || StringsKt.endsWith$default(name, "_remix", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "$", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "animationpin", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "googlepay", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) name, (CharSequence) "shadow", false, 2, (Object) null) || StringsKt.startsWith$default(name, "ic_monochrome", false, 2, (Object) null) || StringsKt.startsWith$default(name, "nocover", false, 2, (Object) null) || StringsKt.startsWith$default(name, "gradient_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "stickers_back_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "media_doc_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "loading_animation", false, 2, (Object) null) || StringsKt.startsWith$default(name, "intro_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "minibubble_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "book_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "call_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "groupsintro", false, 2, (Object) null) || StringsKt.startsWith$default(name, "profile_level", false, 2, (Object) null) || StringsKt.startsWith$default(name, "widget_", false, 2, (Object) null) || StringsKt.startsWith$default(name, "zoom_slide", false, 2, (Object) null) || StringsKt.startsWith$default(name, "zoom_round", false, 2, (Object) null) || StringsKt.startsWith$default(name, "popup_fixed_alert", false, 2, (Object) null) || StringsKt.startsWith$default(name, "search_dark", false, 2, (Object) null) || StringsKt.startsWith$default(name, "bar_selector", false, 2, (Object) null);
    }

    public final ConcurrentHashMap getSystemIcons() {
        return systemIcons;
    }

    public final ConcurrentHashMap getSystemNames() {
        return systemNames;
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
            IconPack iconPack = (IconPack) activePacks.get(size);
            if (!iconPack.isBase()) {
                Iterator it = iconPack.getIcons().keySet().iterator();
                while (it.hasNext()) {
                    iconOwnerMap.put((String) it.next(), iconPack);
                }
            }
            if (i < 0) {
                return;
            } else {
                size = i;
            }
        }
    }

    public final Drawable getDrawable(int i, int i2, Resources.Theme theme) {
        Bitmap packIconBitmap;
        Bitmap bitmap = (Bitmap) resolvedCache.get(Integer.valueOf(i));
        if (bitmap != null) {
            Resources resources = ApplicationLoader.applicationContext.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
            return new BitmapDrawable(resources, bitmap);
        }
        String resourceEntryName = (String) systemNames.get(Integer.valueOf(i));
        if (resourceEntryName == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(i);
            } catch (Exception unused) {
                return null;
            }
        }
        String str = resourceEntryName;
        IconPack iconPack = (IconPack) iconOwnerMap.get(str);
        if (iconPack == null || (packIconBitmap = getPackIconBitmap(iconPack, i, i2, theme, str)) == null) {
            return null;
        }
        resolvedCache.put(Integer.valueOf(i), packIconBitmap);
        Resources resources2 = ApplicationLoader.applicationContext.getResources();
        Intrinsics.checkNotNullExpressionValue(resources2, "getResources(...)");
        return new BitmapDrawable(resources2, packIconBitmap);
    }

    public final Drawable getPackIconDrawable(IconPack pack, int i) {
        Intrinsics.checkNotNullParameter(pack, "pack");
        Bitmap packIconBitmap$default = getPackIconBitmap$default(this, pack, i, AndroidUtilities.displayMetrics.densityDpi, null, null, 16, null);
        if (packIconBitmap$default == null) {
            return null;
        }
        Resources resources = ApplicationLoader.applicationContext.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        return new BitmapDrawable(resources, packIconBitmap$default);
    }

    static /* synthetic */ Bitmap getPackIconBitmap$default(IconManager iconManager, IconPack iconPack, int i, int i2, Resources.Theme theme, String str, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            str = null;
        }
        return iconManager.getPackIconBitmap(iconPack, i, i2, theme, str);
    }

    private final Bitmap getPackIconBitmap(IconPack iconPack, int i, int i2, Resources.Theme theme, String str) {
        StringBuilder sb;
        String id;
        File file;
        if (iconPack.getLocation() != null) {
            sb = new StringBuilder();
            sb.append(iconPack.getId());
            sb.append(':');
            id = iconPack.getLocation().getAbsolutePath();
        } else {
            sb = new StringBuilder();
            id = iconPack.getId();
        }
        sb.append(id);
        sb.append(':');
        sb.append(i);
        String string = sb.toString();
        Bitmap bitmap = (Bitmap) sourceCache.get(string);
        if (bitmap != null) {
            return bitmap;
        }
        if (str == null && (str = (String) systemNames.get(Integer.valueOf(i))) == null) {
            try {
                str = ApplicationLoader.applicationContext.getResources().getResourceEntryName(i);
            } catch (Exception unused) {
                return null;
            }
        }
        String str2 = (String) iconPack.getIcons().get(str);
        if (str2 == null) {
            return null;
        }
        if (iconPack.getLocation() != null) {
            file = new File(iconPack.getLocation(), str2);
        } else {
            file = new File(IconPackStorage.INSTANCE.getIconPacksDirectory(), iconPack.getId() + '/' + str2);
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        Bitmap bitmapCreateBitmapFromFile = createBitmapFromFile(absolutePath, i, i2, theme);
        if (bitmapCreateBitmapFromFile != null) {
            sourceCache.put(string, bitmapCreateBitmapFromFile);
        }
        return bitmapCreateBitmapFromFile;
    }

    public final Bitmap createBitmapFromFile(String path, int i, int i2, Resources.Theme theme) {
        Drawable drawableForDensity;
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            Resources resources = ApplicationLoader.applicationContext.getResources();
            ExteraResources exteraResources = resources instanceof ExteraResources ? (ExteraResources) resources : null;
            if (exteraResources == null || (drawableForDensity = exteraResources.getOriginalDrawable(i)) == null) {
                drawableForDensity = ResourcesCompat.getDrawableForDensity(ApplicationLoader.applicationContext.getResources(), i, i2, theme);
            }
            int intrinsicWidth = drawableForDensity != null ? drawableForDensity.getIntrinsicWidth() : AndroidUtilities.m1124dp(24.0f);
            int intrinsicHeight = drawableForDensity != null ? drawableForDensity.getIntrinsicHeight() : AndroidUtilities.m1124dp(24.0f);
            if (StringsKt.endsWith(path, ".svg", true)) {
                FileInputStream fileInputStream = new FileInputStream(path);
                try {
                    SVG fromInputStream = SVG.getFromInputStream(fileInputStream);
                    CloseableKt.closeFinally(fileInputStream, null);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    fromInputStream.setDocumentWidth(intrinsicWidth);
                    fromInputStream.setDocumentHeight(intrinsicHeight);
                    fromInputStream.renderToCanvas(canvas);
                    bitmapCreateBitmap.setDensity(i2);
                    return bitmapCreateBitmap;
                } finally {
                }
            } else {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(path, options);
                options.inSampleSize = 1;
                int i3 = options.outHeight;
                if (i3 > intrinsicHeight || options.outWidth > intrinsicWidth) {
                    int i4 = i3 / 2;
                    int i5 = options.outWidth / 2;
                    while (true) {
                        int i6 = options.inSampleSize;
                        if (i4 / i6 < intrinsicHeight || i5 / i6 < intrinsicWidth) {
                            break;
                        }
                        options.inSampleSize = i6 * 2;
                    }
                }
                options.inJustDecodeBounds = false;
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(path, options);
                if (bitmapDecodeFile == null) {
                    return null;
                }
                if (bitmapDecodeFile.getWidth() == intrinsicWidth && bitmapDecodeFile.getHeight() == intrinsicHeight) {
                    bitmapDecodeFile.setDensity(i2);
                    return bitmapDecodeFile;
                }
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, intrinsicWidth, intrinsicHeight, true);
                if (!Intrinsics.areEqual(bitmapCreateScaledBitmap, bitmapDecodeFile)) {
                    bitmapDecodeFile.recycle();
                }
                bitmapCreateScaledBitmap.setDensity(i2);
                return bitmapCreateScaledBitmap;
            }
        } catch (Exception e) {
            FileLog.m1135e("Error loading icon bitmap: " + path, e);
            return null;
        }
    }

    public final void saveCustomIcon(String packId, int i, File tempFile, String str) {
        Object next;
        Intrinsics.checkNotNullParameter(packId, "packId");
        Intrinsics.checkNotNullParameter(tempFile, "tempFile");
        Iterator it = activePacks.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(((IconPack) next).getId(), packId)) {
                    break;
                }
            }
        }
        IconPack iconPack = (IconPack) next;
        if (iconPack == null) {
            return;
        }
        String resourceEntryName = (String) systemNames.get(Integer.valueOf(i));
        if (resourceEntryName == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(i);
            } catch (Exception unused) {
                return;
            }
        }
        BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getIO(), null, new C11221(tempFile, resourceEntryName, str, iconPack, i, null), 2, null);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveCustomIcon$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C11221 extends SuspendLambda implements Function2 {
        final /* synthetic */ String $originalName;
        final /* synthetic */ IconPack $packToEdit;
        final /* synthetic */ int $resId;
        final /* synthetic */ String $resourceName;
        final /* synthetic */ File $tempFile;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C11221(File file, String str, String str2, IconPack iconPack, int i, Continuation continuation) {
            super(2, continuation);
            this.$tempFile = file;
            this.$resourceName = str;
            this.$originalName = str2;
            this.$packToEdit = iconPack;
            this.$resId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C11221(this.$tempFile, this.$resourceName, this.$originalName, this.$packToEdit, this.$resId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C11221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String extension = FilesKt.getExtension(this.$tempFile);
                String str = this.$resourceName;
                String str2 = this.$originalName;
                if (str2 != null) {
                    String strFileNameFromUserString = FileManager.fileNameFromUserString(str2);
                    Intrinsics.checkNotNull(strFileNameFromUserString);
                    if (strFileNameFromUserString.length() > 0) {
                        if (StringsKt.endsWith(strFileNameFromUserString, '.' + extension, true)) {
                            str = strFileNameFromUserString;
                        } else {
                            int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) strFileNameFromUserString, '.', 0, false, 6, (Object) null);
                            if (iLastIndexOf$default != -1) {
                                strFileNameFromUserString = strFileNameFromUserString.substring(0, iLastIndexOf$default);
                                Intrinsics.checkNotNullExpressionValue(strFileNameFromUserString, "substring(...)");
                            }
                            str = strFileNameFromUserString + '.' + extension;
                        }
                    }
                } else {
                    str = str + '.' + extension;
                }
                IconPackStorage iconPackStorage = IconPackStorage.INSTANCE;
                File file = new File(iconPackStorage.getIconPacksDirectory(), this.$packToEdit.getId() + '/' + str);
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    Boxing.boxBoolean(parentFile.mkdirs());
                }
                FilesKt.copyTo$default(this.$tempFile, file, true, 0, 4, null);
                this.$tempFile.delete();
                Map mutableMap = MapsKt.toMutableMap(this.$packToEdit.getIcons());
                mutableMap.put(this.$resourceName, file.getName());
                IconPack iconPackCopy$default = IconPack.copy$default(this.$packToEdit, null, null, null, null, mutableMap, null, null, 111, null);
                iconPackStorage.saveIconPackMetadata(iconPackCopy$default);
                IconManager iconManager = IconManager.INSTANCE;
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                Bitmap bitmapCreateBitmapFromFile = iconManager.createBitmapFromFile(absolutePath, this.$resId, AndroidUtilities.displayMetrics.densityDpi, null);
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(bitmapCreateBitmapFromFile, this.$resId, this.$packToEdit, iconPackCopy$default, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(extension);
                this.L$1 = SpillingKt.nullOutSpilledVariable(str);
                this.L$2 = SpillingKt.nullOutSpilledVariable(file);
                this.L$3 = SpillingKt.nullOutSpilledVariable(mutableMap);
                this.L$4 = SpillingKt.nullOutSpilledVariable(iconPackCopy$default);
                this.L$5 = SpillingKt.nullOutSpilledVariable(bitmapCreateBitmapFromFile);
                this.label = 1;
                if (BuildersKt.withContext(main, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$saveCustomIcon$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ IconPack $packToEdit;
            final /* synthetic */ Bitmap $preDecoded;
            final /* synthetic */ int $resId;
            final /* synthetic */ IconPack $updatedPack;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Bitmap bitmap, int i, IconPack iconPack, IconPack iconPack2, Continuation continuation) {
                super(2, continuation);
                this.$preDecoded = bitmap;
                this.$resId = i;
                this.$packToEdit = iconPack;
                this.$updatedPack = iconPack2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$preDecoded, this.$resId, this.$packToEdit, this.$updatedPack, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (this.$preDecoded != null) {
                }
                IconManager.sourceCache.remove(this.$packToEdit.getId() + ':' + this.$resId);
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
                    IconManager.INSTANCE.rebuildOwnerMap();
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                return Unit.INSTANCE;
            }
        }
    }

    public final void resetCustomIcon(String packId, int i) {
        Object next;
        Intrinsics.checkNotNullParameter(packId, "packId");
        Iterator it = activePacks.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(((IconPack) next).getId(), packId)) {
                    break;
                }
            }
        }
        IconPack iconPack = (IconPack) next;
        if (iconPack == null) {
            return;
        }
        String resourceEntryName = (String) systemNames.get(Integer.valueOf(i));
        if (resourceEntryName == null) {
            try {
                resourceEntryName = ApplicationLoader.applicationContext.getResources().getResourceEntryName(i);
            } catch (Exception unused) {
                return;
            }
        }
        String str = resourceEntryName;
        if (iconPack.getIcons().containsKey(str)) {
            BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getIO(), null, new C11211(iconPack, str, (String) iconPack.getIcons().get(str), i, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$resetCustomIcon$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C11211 extends SuspendLambda implements Function2 {
        final /* synthetic */ String $iconFileName;
        final /* synthetic */ IconPack $packToEdit;
        final /* synthetic */ int $resId;
        final /* synthetic */ String $resourceName;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C11211(IconPack iconPack, String str, String str2, int i, Continuation continuation) {
            super(2, continuation);
            this.$packToEdit = iconPack;
            this.$resourceName = str;
            this.$iconFileName = str2;
            this.$resId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C11211(this.$packToEdit, this.$resourceName, this.$iconFileName, this.$resId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C11211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
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
                Map mutableMap = MapsKt.toMutableMap(this.$packToEdit.getIcons());
                mutableMap.remove(this.$resourceName);
                if (this.$iconFileName != null) {
                    Collection collectionValues = mutableMap.values();
                    String str = this.$iconFileName;
                    if ((collectionValues instanceof Collection) && collectionValues.isEmpty()) {
                        file = new File(IconPackStorage.INSTANCE.getIconPacksDirectory(), this.$packToEdit.getId() + '/' + this.$iconFileName);
                        if (file.exists()) {
                        }
                    } else {
                        Iterator it = collectionValues.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.areEqual((String) it.next(), str)) {
                                break;
                            }
                        }
                        file = new File(IconPackStorage.INSTANCE.getIconPacksDirectory(), this.$packToEdit.getId() + '/' + this.$iconFileName);
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                }
                IconPack iconPackCopy$default = IconPack.copy$default(this.$packToEdit, null, null, null, null, mutableMap, null, null, 111, null);
                IconPackStorage.INSTANCE.saveIconPackMetadata(iconPackCopy$default);
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$resId, this.$packToEdit, iconPackCopy$default, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(mutableMap);
                this.L$1 = SpillingKt.nullOutSpilledVariable(iconPackCopy$default);
                this.label = 1;
                if (BuildersKt.withContext(main, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$resetCustomIcon$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ IconPack $packToEdit;
            final /* synthetic */ int $resId;
            final /* synthetic */ IconPack $updatedPack;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(int i, IconPack iconPack, IconPack iconPack2, Continuation continuation) {
                super(2, continuation);
                this.$resId = i;
                this.$packToEdit = iconPack;
                this.$updatedPack = iconPack2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$resId, this.$packToEdit, this.$updatedPack, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    IconManager.resolvedCache.remove(Boxing.boxInt(this.$resId));
                    IconManager.sourceCache.remove(this.$packToEdit.getId() + ':' + this.$resId);
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
                        IconManager.INSTANCE.rebuildOwnerMap();
                    }
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final int getIcon(int i) {
        int i2;
        Iterator it = activePacks.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            IconPack iconPack = (IconPack) it.next();
            if (iconPack.isBase() && iconPack.getPreinstalledMap() != null && (i2 = iconPack.getPreinstalledMap().get(i, -1)) != -1) {
                return i2;
            }
        }
        return i;
    }

    public static /* synthetic */ void initialize$default(IconManager iconManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        iconManager.initialize(z);
    }

    public final synchronized void initialize(boolean z) {
        Job job = initializationJob;
        if (job == null || !job.isActive() || z) {
            initializationJob = BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C11201(z, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1 */
    static final class C11201 extends SuspendLambda implements Function2 {
        final /* synthetic */ boolean $update;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C11201(boolean z, Continuation continuation) {
            super(2, continuation);
            this.$update = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C11201(this.$update, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C11201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x0123, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r2, r12) == r0) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x019f, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r12) == r0) goto L78;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object next;
            Object next2;
            IconPack iconPackFindPackById;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            int i2 = 2;
            int i3 = 1;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            if (IconManager.INSTANCE.getSystemIcons().isEmpty()) {
                try {
                    Field[] fields = C2888R.drawable.class.getFields();
                    Intrinsics.checkNotNull(fields);
                    for (Field field : fields) {
                        String name = field.getName();
                        IconManager iconManager = IconManager.INSTANCE;
                        Intrinsics.checkNotNull(name);
                        if (!iconManager.isBlacklisted(name)) {
                            int i4 = field.getInt(null);
                            iconManager.getSystemIcons().put(name, Boxing.boxInt(i4));
                            iconManager.getSystemNames().put(Boxing.boxInt(i4), name);
                        }
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ExteraConfig.iconPacksLayout.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                String str = (String) it.next();
                Intrinsics.checkNotNull(str);
                if (StringsKt.startsWith$default(str, "base.", false, 2, (Object) null)) {
                    iconPackFindPackById = BaseIconPacks.INSTANCE.getBasePack(str);
                } else {
                    iconPackFindPackById = IconPackStorage.INSTANCE.findPackById(str);
                }
                if (iconPackFindPackById != null) {
                    arrayList.add(iconPackFindPackById);
                }
            }
            if (!Intrinsics.areEqual(IconManager.activePacks, arrayList)) {
                IconManager.activePacks.clear();
                IconManager.activePacks.addAll(arrayList);
                IconManager.INSTANCE.rebuildOwnerMap();
                Iterator it2 = IconManager.activePacks.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    if (((IconPack) next).isBase()) {
                        break;
                    }
                }
                IconPack iconPack = (IconPack) next;
                String id = iconPack != null ? iconPack.getId() : null;
                if (!Intrinsics.areEqual(id, "base.solar")) {
                    i3 = Intrinsics.areEqual(id, "base.remix") ? 2 : 0;
                }
                ExteraConfig.iconPack = i3;
                IconManager.resolvedCache.evictAll();
                IconManager.sourceCache.evictAll();
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(arrayList);
                this.L$1 = SpillingKt.nullOutSpilledVariable(iconPack);
                this.label = 2;
            } else {
                Iterator it3 = IconManager.activePacks.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                    if (((IconPack) next2).isBase()) {
                        break;
                    }
                }
                IconPack iconPack2 = (IconPack) next2;
                String id2 = iconPack2 != null ? iconPack2.getId() : null;
                if (Intrinsics.areEqual(id2, "base.solar")) {
                    i2 = 1;
                } else if (!Intrinsics.areEqual(id2, "base.remix")) {
                    i2 = 0;
                }
                ExteraConfig.iconPack = i2;
                if (this.$update) {
                    MainCoroutineDispatcher main2 = Dispatchers.getMain();
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                    this.L$0 = SpillingKt.nullOutSpilledVariable(arrayList);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(iconPack2);
                    this.label = 1;
                }
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            int label;

            AnonymousClass1(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.iconPackUpdated, new Object[0]);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$initialize$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends SuspendLambda implements Function2 {
            int label;

            AnonymousClass2(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:36:0x0080  */
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (ExteraConfig.editingIconPackId != null) {
                    Iterator it = IconManager.activePacks.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (Intrinsics.areEqual(((IconPack) next).getId(), ExteraConfig.editingIconPackId)) {
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
                            ExteraConfig.editingIconPackId = null;
                            ExteraConfig.editor.putString("editingIconPackId", null).apply();
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

    public final void setActiveCustomPack(String str) {
        if (str == null || ExteraConfig.iconPacksLayout.contains(str)) {
            return;
        }
        ExteraConfig.iconPacksLayout.add(str);
        ExteraConfig.iconPacksHidden.remove(str);
        ExteraConfig.saveIconPacksLayout();
        initialize(true);
    }

    public final IconPack findPackById(String packId) {
        Intrinsics.checkNotNullParameter(packId, "packId");
        return IconPackStorage.INSTANCE.findPackById(packId);
    }

    public final File bundlePackBlocking(String packId) {
        Intrinsics.checkNotNullParameter(packId, "packId");
        return IconPackStorage.INSTANCE.bundlePackBlocking(packId);
    }

    public final List getCustomPacks() {
        return IconPackStorage.INSTANCE.getCustomPacks();
    }

    public final void saveIconPackMetadata(IconPack iconPack) {
        Intrinsics.checkNotNullParameter(iconPack, "iconPack");
        IconPackStorage.INSTANCE.saveIconPackMetadata(iconPack);
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$deletePack$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C11171 extends SuspendLambda implements Function2 {
        final /* synthetic */ String $packId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C11171(String str, Continuation continuation) {
            super(2, continuation);
            this.$packId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C11171(this.$packId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C11171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$deletePack$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ String $packId;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(String str, Continuation continuation) {
                super(2, continuation);
                this.$packId = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$packId, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (ExteraConfig.iconPacksLayout.contains(this.$packId) || ExteraConfig.iconPacksHidden.contains(this.$packId)) {
                    ExteraConfig.iconPacksLayout.remove(this.$packId);
                    ExteraConfig.iconPacksHidden.remove(this.$packId);
                    ExteraConfig.saveIconPacksLayout();
                }
                IconManager.INSTANCE.initialize(true);
                return Unit.INSTANCE;
            }
        }
    }

    public final void deletePack(String packId) {
        Intrinsics.checkNotNullParameter(packId, "packId");
        BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getIO(), null, new C11171(packId, null), 2, null);
    }

    public final boolean isIconPack(MessageObject messageObject) {
        String pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject);
        if (messageObject != null && messageObject.getDocumentName() != null && !TextUtils.isEmpty(pathToMessage)) {
            Intrinsics.checkNotNull(pathToMessage);
            if (StringsKt.endsWith$default(pathToMessage, ".icons", false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$handleIconPack$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C11181 extends SuspendLambda implements Function2 {
        final /* synthetic */ BaseFragment $baseFragment;
        final /* synthetic */ String $path;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C11181(String str, BaseFragment baseFragment, Continuation continuation) {
            super(2, continuation);
            this.$path = str;
            this.$baseFragment = baseFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C11181(this.$path, this.$baseFragment, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C11181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0061, code lost:
        
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            file = (File) this.L$0;
            ResultKt.throwOnFailure(obj);
            IconPack iconPack = (IconPack) obj;
            MainCoroutineDispatcher main = Dispatchers.getMain();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(iconPack, this.$baseFragment, file, null);
            this.L$0 = SpillingKt.nullOutSpilledVariable(file);
            this.L$1 = SpillingKt.nullOutSpilledVariable(iconPack);
            this.label = 2;
        }

        /* JADX INFO: renamed from: com.exteragram.messenger.icons.IconManager$handleIconPack$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ BaseFragment $baseFragment;
            final /* synthetic */ File $file;
            final /* synthetic */ IconPack $pack;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(IconPack iconPack, BaseFragment baseFragment, File file, Continuation continuation) {
                super(2, continuation);
                this.$pack = iconPack;
                this.$baseFragment = baseFragment;
                this.$file = file;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.$pack, this.$baseFragment, this.$file, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (this.$pack != null) {
                    Activity parentActivity = this.$baseFragment.getParentActivity();
                    Intrinsics.checkNotNullExpressionValue(parentActivity, "getParentActivity(...)");
                    final IconPack iconPack = this.$pack;
                    final File file = this.$file;
                    final BaseFragment baseFragment = this.$baseFragment;
                    this.$baseFragment.showDialog(new InstallIconPackBottomSheet(parentActivity, iconPack, new InstallIconPackBottomSheet.InstallDelegate() { // from class: com.exteragram.messenger.icons.IconManager$handleIconPack$1$1$$ExternalSyntheticLambda0
                        @Override // com.exteragram.messenger.icons.ui.components.InstallIconPackBottomSheet.InstallDelegate
                        public final void onInstall(boolean z, boolean z2) {
                            IconManager.C11181.AnonymousClass1.invokeSuspend$lambda$0(file, baseFragment, iconPack, z, z2);
                        }
                    }));
                } else {
                    BulletinFactory.m1246of(this.$baseFragment).createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.UnknownError)).show();
                }
                return Unit.INSTANCE;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void invokeSuspend$lambda$0(File file, BaseFragment baseFragment, IconPack iconPack, boolean z, boolean z2) {
                BuildersKt__Builders_commonKt.launch$default(IconManager.scope, null, null, new IconManager$handleIconPack$1$1$bottomSheet$1$1(file, baseFragment, z2, iconPack, z, null), 3, null);
            }
        }
    }

    public final void handleIconPack(BaseFragment baseFragment, MessageObject messageObject) {
        Intrinsics.checkNotNullParameter(baseFragment, "baseFragment");
        Intrinsics.checkNotNullParameter(messageObject, "messageObject");
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C11181(ChatUtils.getInstance().getPathToMessage(messageObject), baseFragment, null), 3, null);
    }

    public final boolean onActivityResult(int i, int i2, Intent intent) {
        SparseArray sparseArray = resultCallbacks;
        Function1 function1 = (Function1) sparseArray.get(i);
        if (function1 == null) {
            return false;
        }
        sparseArray.remove(i);
        function1.invoke(intent != null ? intent.getData() : null);
        return true;
    }

    public final void startIconPicker(Activity activity, boolean z, Function1 callback) {
        Intent intentCreateIntent;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(callback, "callback");
        resultCallbacks.put(43, callback);
        if (ActivityResultContracts$PickVisualMedia.Companion.isPhotoPickerAvailable(activity) && !z) {
            intentCreateIntent = new ActivityResultContracts$PickVisualMedia().createIntent((Context) activity, PickVisualMediaRequestKt.PickVisualMediaRequest(ActivityResultContracts$PickVisualMedia.ImageOnly.INSTANCE));
        } else {
            Intent intent = new Intent(z ? "android.intent.action.OPEN_DOCUMENT" : "android.intent.action.GET_CONTENT");
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "image/svg+xml"});
            if (z) {
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

    public final void showReplaceAlert(Context context, int i, IconPack iconPack) {
        IconPack iconPack2;
        Intrinsics.checkNotNullParameter(context, "context");
        if (iconPack == null) {
            Object obj = null;
            if (ExteraConfig.editingIconPackId != null) {
                Iterator it = activePacks.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Intrinsics.areEqual(((IconPack) next).getId(), ExteraConfig.editingIconPackId)) {
                        obj = next;
                        break;
                    }
                }
                iconPack2 = (IconPack) obj;
            } else {
                Iterator it2 = activePacks.iterator();
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
                iconPack2 = (IconPack) obj;
            }
            iconPack = iconPack2;
            if (iconPack == null) {
                return;
            }
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        safeLastFragment.showDialog(new ReplaceIconBottomSheet(context, i, iconPack));
    }

    public final boolean isBasePackOnly(int i) {
        if (ExteraConfig.iconPack != i) {
            return false;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = activePacks;
        if (OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(copyOnWriteArrayList) && copyOnWriteArrayList.isEmpty()) {
            return true;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (!((IconPack) it.next()).isBase()) {
                return false;
            }
        }
        return true;
    }
}
