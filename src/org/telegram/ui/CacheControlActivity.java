package org.telegram.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.core.PillType;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.CacheByChatsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.FilesMigrationService;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda7;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.CacheControlActivity;
import org.telegram.ui.CachedMediaLayout;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextCheckBoxCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CacheChart;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.HideViewAfterAnimation;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.NestedSizeNotifierLayout;
import org.telegram.ui.Components.RLottieImageView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.SlideChooseView;
import org.telegram.ui.Components.StorageDiagramView;
import org.telegram.ui.Components.StorageUsageView;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.DialogCacheBottomSheet;
import org.telegram.ui.KeepMediaPopupView;
import org.telegram.ui.Storage.CacheModel;

/* JADX INFO: loaded from: classes.dex */
public class CacheControlActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static int LISTDIR_DOCTYPE2_EMOJI = 3;
    private static int LISTDIR_DOCTYPE2_OTHER = 5;
    private static int LISTDIR_DOCTYPE2_TEMP = 4;
    private static int LISTDIR_DOCTYPE_MUSIC = 2;
    private static int LISTDIR_DOCTYPE_OTHER_THAN_MUSIC = 1;
    public static volatile boolean canceled = false;
    private static Long lastDeviceTotalFreeSize;
    private static Long lastDeviceTotalSize;
    private static Long lastTotalSizeCalculated;
    private static long lastTotalSizeCalculatedTime;
    private ValueAnimator actionBarAnimator;
    private boolean actionBarShown;
    private float actionBarShownT;
    private ActionBarMenu actionMode;
    private TextView actionModeClearButton;
    private AnimatedTextView actionModeSubtitle;
    private AnimatedTextView actionModeTitle;
    private View actionTextView;
    private BottomSheet bottomSheet;
    private View bottomSheetView;
    private CacheChart cacheChart;
    private CacheChartHeader cacheChartHeader;
    CacheModel cacheModel;
    private CachedMediaLayout cachedMediaLayout;
    private boolean changeStatusBar;
    private ClearCacheButtonInternal clearCacheButton;
    private ActionBarMenuSubItem clearDatabaseItem;
    long fragmentCreateTime;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private boolean loadingDialogs;
    private NestedSizeNotifierLayout nestedSizeNotifierLayout;
    private int[] percents;
    AlertDialog progressDialog;
    private ActionBarMenuSubItem resetDatabaseItem;
    private float[] tempSizes;
    private boolean updateDatabaseSize;
    private boolean[] selected = {true, true, true, true, true, true, true, true, true, true, true};
    private long databaseSize = -1;
    private long cacheSize = -1;
    private long cacheEmojiSize = -1;
    private long cacheTempSize = -1;
    private long documentsSize = -1;
    private long audioSize = -1;
    private long storiesSize = -1;
    private long musicSize = -1;
    private long photoSize = -1;
    private long videoSize = -1;
    private long logsSize = -1;
    private long stickersCacheSize = -1;
    private long totalSize = -1;
    private long totalDeviceSize = -1;
    private long totalDeviceFreeSize = -1;
    private long migrateOldFolderRow = -1;
    private boolean calculating = true;
    private boolean collapsed = true;
    private int sectionsStartRow = -1;
    private int sectionsEndRow = -1;
    private ArrayList<ItemInner> oldItems = new ArrayList<>();
    private ArrayList<ItemInner> itemInners = new ArrayList<>();
    private float actionBarShadowAlpha = 1.0f;

    /* JADX INFO: loaded from: classes6.dex */
    public static class FileEntities {
        public int count;
        public ArrayList<CacheModel.FileInfo> files = new ArrayList<>();
        public long totalSize;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    private void updateDatabaseItemSize() {
        if (this.clearDatabaseItem != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.ClearLocalDatabase));
            this.clearDatabaseItem.setText(spannableStringBuilder);
        }
    }

    public static void calculateTotalSize(final Utilities.Callback<Long> callback) {
        if (callback == null) {
            return;
        }
        Long l = lastTotalSizeCalculated;
        if (l != null) {
            callback.run(l);
            if (System.currentTimeMillis() - lastTotalSizeCalculatedTime < 5000) {
                return;
            }
        }
        Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.m7541$r8$lambda$fNB1ypvT1aLKISN4xQOCLaHAGk(callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$fNB1ypvT1aLKISN4x-QOCLaHAGk, reason: not valid java name */
    public static /* synthetic */ void m7541$r8$lambda$fNB1ypvT1aLKISN4xQOCLaHAGk(final Utilities.Callback callback) {
        canceled = false;
        long directorySize = getDirectorySize(FileLoader.checkDirectory(4), 5);
        long directorySize2 = getDirectorySize(FileLoader.checkDirectory(4), 4);
        long directorySize3 = getDirectorySize(FileLoader.checkDirectory(0), 0) + getDirectorySize(FileLoader.checkDirectory(100), 0);
        long directorySize4 = getDirectorySize(FileLoader.checkDirectory(2), 0) + getDirectorySize(FileLoader.checkDirectory(101), 0);
        long directorySize5 = getDirectorySize(FileLoader.checkDirectory(3), 1) + getDirectorySize(FileLoader.checkDirectory(5), 1);
        long directorySize6 = getDirectorySize(FileLoader.checkDirectory(3), 2) + getDirectorySize(FileLoader.checkDirectory(5), 2);
        long directorySize7 = getDirectorySize(new File(FileLoader.checkDirectory(4), "acache"), 0) + getDirectorySize(FileLoader.checkDirectory(4), 3);
        long directorySize8 = getDirectorySize(FileLoader.checkDirectory(1), 0);
        long directorySize9 = getDirectorySize(FileLoader.checkDirectory(6), 0);
        long directorySize10 = getDirectorySize(AndroidUtilities.getLogsDir(), 1);
        if (!BuildVars.DEBUG_VERSION && directorySize10 < 268435456) {
            directorySize10 = 0;
        }
        final long j = directorySize + directorySize2 + directorySize4 + directorySize8 + directorySize3 + directorySize5 + directorySize6 + directorySize7 + directorySize9 + directorySize10;
        lastTotalSizeCalculated = Long.valueOf(j);
        lastTotalSizeCalculatedTime = System.currentTimeMillis();
        if (canceled) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(Long.valueOf(j));
            }
        });
    }

    public static void resetCalculatedTotalSIze() {
        lastTotalSizeCalculated = null;
        lastDeviceTotalSize = null;
        lastDeviceTotalFreeSize = null;
    }

    public static void getDeviceTotalSize(final Utilities.Callback2<Long, Long> callback2) {
        Long l;
        Long l2 = lastDeviceTotalSize;
        if (l2 == null || (l = lastDeviceTotalFreeSize) == null) {
            Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    CacheControlActivity.$r8$lambda$grxg2OghdSPw3knSzVegOKrV24A(callback2);
                }
            });
        } else if (callback2 != null) {
            callback2.run(l2, l);
        }
    }

    public static /* synthetic */ void $r8$lambda$grxg2OghdSPw3knSzVegOKrV24A(final Utilities.Callback2 callback2) {
        ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
        int i = 0;
        File file = rootDirs.get(0);
        file.getAbsolutePath();
        if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
            int size = rootDirs.size();
            while (true) {
                if (i < size) {
                    File file2 = rootDirs.get(i);
                    if (file2.getAbsolutePath().startsWith(SharedConfig.storageCacheDir) && file2.canWrite()) {
                        file = file2;
                        break;
                    }
                    i++;
                }
            }
        }
        try {
            StatFs statFs = new StatFs(file.getPath());
            final long blockSizeLong = statFs.getBlockSizeLong();
            final long availableBlocksLong = statFs.getAvailableBlocksLong();
            final long blockCountLong = statFs.getBlockCountLong();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    CacheControlActivity.$r8$lambda$lUCQY1FVKLfoB8YXalotnZNOkYA(blockCountLong, blockSizeLong, availableBlocksLong, callback2);
                }
            });
        } catch (Exception e) {
            FileLog.m898e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$lUCQY1FVKLfoB8YXalotnZNOkYA(long j, long j2, long j3, Utilities.Callback2 callback2) {
        lastDeviceTotalSize = Long.valueOf(j * j2);
        Long lValueOf = Long.valueOf(j3 * j2);
        lastDeviceTotalFreeSize = lValueOf;
        if (callback2 != null) {
            callback2.run(lastDeviceTotalSize, lValueOf);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        canceled = false;
        getNotificationCenter().addObserver(this, NotificationCenter.didClearDatabase);
        this.databaseSize = MessagesStorage.getInstance(this.currentAccount).getDatabaseSize();
        this.loadingDialogs = true;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFragmentCreate$5();
            }
        });
        this.fragmentCreateTime = System.currentTimeMillis();
        updateRows(false);
        updateChart();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$5() {
        this.cacheSize = getDirectorySize(FileLoader.checkDirectory(4), 5);
        if (canceled) {
            return;
        }
        this.cacheTempSize = getDirectorySize(FileLoader.checkDirectory(4), 4);
        if (canceled) {
            return;
        }
        int i = 0;
        long directorySize = getDirectorySize(FileLoader.checkDirectory(0), 0);
        this.photoSize = directorySize;
        this.photoSize = directorySize + getDirectorySize(FileLoader.checkDirectory(100), 0);
        if (canceled) {
            return;
        }
        long directorySize2 = getDirectorySize(FileLoader.checkDirectory(2), 0);
        this.videoSize = directorySize2;
        this.videoSize = directorySize2 + getDirectorySize(FileLoader.checkDirectory(101), 0);
        if (canceled) {
            return;
        }
        long directorySize3 = getDirectorySize(AndroidUtilities.getLogsDir(), 1);
        this.logsSize = directorySize3;
        if (!BuildVars.DEBUG_VERSION && directorySize3 < 268435456) {
            this.logsSize = 0L;
        }
        if (canceled) {
            return;
        }
        long directorySize4 = getDirectorySize(FileLoader.checkDirectory(3), 1);
        this.documentsSize = directorySize4;
        this.documentsSize = directorySize4 + getDirectorySize(FileLoader.checkDirectory(5), 1);
        if (canceled) {
            return;
        }
        long directorySize5 = getDirectorySize(FileLoader.checkDirectory(3), 2);
        this.musicSize = directorySize5;
        this.musicSize = directorySize5 + getDirectorySize(FileLoader.checkDirectory(5), 2);
        if (canceled) {
            return;
        }
        this.stickersCacheSize = getDirectorySize(new File(FileLoader.checkDirectory(4), "acache"), 0);
        if (canceled) {
            return;
        }
        this.cacheEmojiSize = getDirectorySize(FileLoader.checkDirectory(4), 3);
        if (canceled) {
            return;
        }
        this.stickersCacheSize += this.cacheEmojiSize;
        this.audioSize = getDirectorySize(FileLoader.checkDirectory(1), 0);
        this.storiesSize = getDirectorySize(FileLoader.checkDirectory(6), 0);
        if (canceled) {
            return;
        }
        long j = this.cacheSize + this.cacheTempSize + this.videoSize + this.logsSize + this.audioSize + this.photoSize + this.documentsSize + this.musicSize + this.storiesSize + this.stickersCacheSize;
        lastTotalSizeCalculated = Long.valueOf(j);
        this.totalSize = j;
        lastTotalSizeCalculatedTime = System.currentTimeMillis();
        ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
        File file = rootDirs.get(0);
        file.getAbsolutePath();
        if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
            int size = rootDirs.size();
            while (true) {
                if (i < size) {
                    File file2 = rootDirs.get(i);
                    if (file2.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                        file = file2;
                        break;
                    }
                    i++;
                }
            }
        }
        try {
            StatFs statFs = new StatFs(file.getPath());
            long blockSizeLong = statFs.getBlockSizeLong();
            long availableBlocksLong = statFs.getAvailableBlocksLong();
            this.totalDeviceSize = statFs.getBlockCountLong() * blockSizeLong;
            this.totalDeviceFreeSize = availableBlocksLong * blockSizeLong;
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFragmentCreate$4();
            }
        });
        loadDialogEntities();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$4() {
        resumeDelayedFragmentAnimation();
        this.calculating = false;
        updateRows(true);
        updateChart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChart() {
        CacheChart cacheChart = this.cacheChart;
        if (cacheChart != null) {
            boolean z = this.calculating;
            if (!z && this.totalSize > 0) {
                CacheChart.SegmentSize[] segmentSizeArr = new CacheChart.SegmentSize[11];
                for (int i = 0; i < this.itemInners.size(); i++) {
                    ItemInner itemInner = this.itemInners.get(i);
                    if (itemInner.viewType == 11) {
                        int i2 = itemInner.index;
                        if (i2 < 0) {
                            if (this.collapsed) {
                                segmentSizeArr[10] = CacheChart.SegmentSize.of(itemInner.size, this.selected[10]);
                            }
                        } else {
                            segmentSizeArr[i2] = CacheChart.SegmentSize.of(itemInner.size, this.selected[i2]);
                        }
                    }
                }
                if (System.currentTimeMillis() - this.fragmentCreateTime < 80) {
                    this.cacheChart.loadingFloat.set(0.0f, true);
                }
                this.cacheChart.setSegments(this.totalSize, true, segmentSizeArr);
            } else if (z) {
                cacheChart.setSegments(-1L, true, new CacheChart.SegmentSize[0]);
            } else {
                cacheChart.setSegments(0L, true, new CacheChart.SegmentSize[0]);
            }
        }
        ClearCacheButtonInternal clearCacheButtonInternal = this.clearCacheButton;
        if (clearCacheButtonInternal == null || this.calculating) {
            return;
        }
        clearCacheButtonInternal.updateSize();
    }

    private void loadDialogEntities() {
        getFileLoader().getFileDatabase().getQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadDialogEntities$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogEntities$8() {
        getFileLoader().getFileDatabase().ensureDatabaseCreated();
        final CacheModel cacheModel = new CacheModel(false);
        LongSparseArray<DialogFileEntities> longSparseArray = new LongSparseArray<>();
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(4), 6, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(0), 0, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(100), 0, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(2), 1, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(101), 1, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(1), 4, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(6), 6, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(3), 2, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(5), 2, longSparseArray, cacheModel);
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < longSparseArray.size(); i++) {
            DialogFileEntities dialogFileEntitiesValueAt = longSparseArray.valueAt(i);
            arrayList.add(dialogFileEntitiesValueAt);
            if (getMessagesController().getUserOrChat(((DialogFileEntities) arrayList.get(i)).dialogId) == null) {
                long j = dialogFileEntitiesValueAt.dialogId;
                if (j > 0) {
                    arrayList2.add(Long.valueOf(j));
                } else {
                    arrayList3.add(Long.valueOf(j));
                }
            }
        }
        cacheModel.sortBySize();
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadDialogEntities$7(arrayList2, arrayList3, arrayList, cacheModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogEntities$7(ArrayList arrayList, ArrayList arrayList2, final ArrayList arrayList3, final CacheModel cacheModel) {
        final ArrayList<TLRPC.User> arrayList4 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList5 = new ArrayList<>();
        if (!arrayList.isEmpty()) {
            try {
                getMessagesStorage().getUsersInternal((ArrayList<Long>) arrayList, arrayList4);
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
        if (!arrayList2.isEmpty()) {
            try {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList2), arrayList5);
            } catch (Exception e2) {
                FileLog.m898e(e2);
            }
        }
        int i = 0;
        while (i < arrayList3.size()) {
            if (((DialogFileEntities) arrayList3.get(i)).totalSize <= 0) {
                arrayList3.remove(i);
                i--;
            }
            i++;
        }
        sort(arrayList3);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadDialogEntities$6(arrayList4, arrayList5, arrayList3, cacheModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogEntities$6(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, CacheModel cacheModel) {
        boolean z;
        this.loadingDialogs = false;
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        DialogFileEntities dialogFileEntities = null;
        int i = 0;
        while (i < arrayList3.size()) {
            DialogFileEntities dialogFileEntities2 = (DialogFileEntities) arrayList3.get(i);
            if (getMessagesController().getUserOrChat(dialogFileEntities2.dialogId) == null) {
                dialogFileEntities2.dialogId = LongCompanionObject.MAX_VALUE;
                if (dialogFileEntities != null) {
                    dialogFileEntities.merge(dialogFileEntities2);
                    arrayList3.remove(i);
                    i--;
                    z = true;
                } else {
                    dialogFileEntities = dialogFileEntities2;
                    z = false;
                }
                if (z) {
                    sort(arrayList3);
                }
            }
            i++;
        }
        cacheModel.setEntities(arrayList3);
        if (canceled) {
            return;
        }
        setCacheModel(cacheModel);
        updateRows();
        updateChart();
        if (this.cacheChartHeader == null || this.calculating || System.currentTimeMillis() - this.fragmentCreateTime <= 120) {
            return;
        }
        CacheChartHeader cacheChartHeader = this.cacheChartHeader;
        long j = this.totalSize;
        boolean z2 = j > 0;
        long j2 = this.totalDeviceSize;
        float f = 0.0f;
        float f2 = j2 <= 0 ? 0.0f : j / j2;
        if (this.totalDeviceFreeSize > 0 && j2 > 0) {
            f = (j2 - r9) / j2;
        }
        cacheChartHeader.setData(z2, f2, f);
    }

    private void sort(ArrayList<DialogFileEntities> arrayList) {
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda21
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return CacheControlActivity.$r8$lambda$RqrFx06wc9E0AZr9SO9vAVjU2Gk((CacheControlActivity.DialogFileEntities) obj, (CacheControlActivity.DialogFileEntities) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$RqrFx06wc9E0AZr9SO9vAVjU2Gk(DialogFileEntities dialogFileEntities, DialogFileEntities dialogFileEntities2) {
        long j = dialogFileEntities2.totalSize;
        long j2 = dialogFileEntities.totalSize;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    public void setCacheModel(CacheModel cacheModel) {
        this.cacheModel = cacheModel;
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.setCacheModel(cacheModel);
        }
    }

    public void fillDialogsEntitiesRecursive(File file, int i, LongSparseArray<DialogFileEntities> longSparseArray, CacheModel cacheModel) {
        File[] fileArrListFiles;
        if (file == null || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (canceled) {
                return;
            }
            if (file2.isDirectory()) {
                fillDialogsEntitiesRecursive(file2, i, longSparseArray, cacheModel);
            } else if (!file2.getName().equals(".nomedia")) {
                FilePathDatabase.FileMeta fileDialogId = getFileLoader().getFileDatabase().getFileDialogId(file2, null);
                String lowerCase = file2.getName().toLowerCase();
                int i2 = (lowerCase.endsWith(".mp3") || lowerCase.endsWith(".m4a")) ? 3 : i;
                CacheModel.FileInfo fileInfo = new CacheModel.FileInfo(file2);
                long length = file2.length();
                fileInfo.size = length;
                if (fileDialogId != null) {
                    fileInfo.dialogId = fileDialogId.dialogId;
                    fileInfo.messageId = fileDialogId.messageId;
                    int i3 = fileDialogId.messageType;
                    fileInfo.messageType = i3;
                    if (i3 == 23 && length > 0) {
                        i2 = 7;
                    }
                }
                fileInfo.type = i2;
                long j = fileInfo.dialogId;
                if (j != 0) {
                    DialogFileEntities dialogFileEntities = longSparseArray.get(j, null);
                    if (dialogFileEntities == null) {
                        dialogFileEntities = new DialogFileEntities(fileInfo.dialogId);
                        longSparseArray.put(fileInfo.dialogId, dialogFileEntities);
                    }
                    dialogFileEntities.addFile(fileInfo, i2);
                }
                if (cacheModel != null && i2 != 6) {
                    cacheModel.add(i2, fileInfo);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatPercent(float f) {
        return formatPercent(f, true);
    }

    private String formatPercent(float f, boolean z) {
        if (z && f < 0.001f) {
            return String.format("<%.1f%%", Float.valueOf(0.1f));
        }
        float fRound = Math.round(f * 100.0f);
        if (z && fRound <= 0.0f) {
            return String.format("<%d%%", 1);
        }
        return String.format("%d%%", Integer.valueOf((int) fRound));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getCheckBoxTitle(CharSequence charSequence, int i, boolean z) {
        SpannableString spannableString = new SpannableString(i <= 0 ? String.format("<%.1f%%", Float.valueOf(1.0f)) : String.format("%d%%", Integer.valueOf(i)));
        spannableString.setSpan(new RelativeSizeSpan(0.834f), 0, spannableString.length(), 33);
        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.append((CharSequence) "  ");
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        updateRows(true);
    }

    private void updateRows(boolean z) {
        char c2;
        long j;
        boolean z2;
        float[] fArr;
        CacheModel cacheModel;
        boolean z3 = (!z || System.currentTimeMillis() - this.fragmentCreateTime >= 80) ? z : false;
        this.oldItems.clear();
        this.oldItems.addAll(this.itemInners);
        this.itemInners.clear();
        this.itemInners.add(new ItemInner(9, null, null));
        this.itemInners.add(new ItemInner(10, null, null));
        this.sectionsStartRow = this.itemInners.size();
        if (this.calculating) {
            this.itemInners.add(new ItemInner(12, null, null));
            this.itemInners.add(new ItemInner(12, null, null));
            this.itemInners.add(new ItemInner(12, null, null));
            this.itemInners.add(new ItemInner(12, null, null));
            this.itemInners.add(new ItemInner(12, null, null));
            z2 = true;
            j = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            if (this.photoSize > 0) {
                c2 = '\n';
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalPhotoCache), 0, this.photoSize, Theme.key_statisticChartLine_lightblue));
            } else {
                c2 = '\n';
            }
            if (this.videoSize > 0) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalVideoCache), 1, this.videoSize, Theme.key_statisticChartLine_blue));
            }
            if (this.documentsSize > 0) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalDocumentCache), 2, this.documentsSize, Theme.key_statisticChartLine_green));
            }
            if (this.musicSize > 0) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalMusicCache), 3, this.musicSize, Theme.key_statisticChartLine_purple));
            }
            if (this.audioSize > 0) {
                j = 0;
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalAudioCache), 4, this.audioSize, Theme.key_statisticChartLine_lightgreen));
            } else {
                j = 0;
            }
            if (this.storiesSize > j) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalStoriesCache), 5, this.storiesSize, Theme.key_statisticChartLine_red));
            }
            if (this.stickersCacheSize > j) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalStickersCache), 6, this.stickersCacheSize, Theme.key_statisticChartLine_orange));
            }
            if (this.cacheSize > j) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalProfilePhotosCache), 7, this.cacheSize, Theme.key_statisticChartLine_cyan));
            }
            if (this.cacheTempSize > j) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalMiscellaneousCache), 8, this.cacheTempSize, Theme.key_statisticChartLine_purple));
            }
            if (this.logsSize > j) {
                arrayList.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalLogsCache), 9, this.logsSize, Theme.key_statisticChartLine_golden));
            }
            if (arrayList.isEmpty()) {
                z2 = false;
            } else {
                Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda2
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Long.compare(((CacheControlActivity.ItemInner) obj2).size, ((CacheControlActivity.ItemInner) obj).size);
                    }
                });
                ((ItemInner) arrayList.get(arrayList.size() - 1)).last = true;
                if (this.tempSizes == null) {
                    this.tempSizes = new float[11];
                }
                int i = 0;
                while (true) {
                    fArr = this.tempSizes;
                    if (i >= fArr.length) {
                        break;
                    }
                    fArr[i] = size(i);
                    i++;
                }
                if (this.percents == null) {
                    this.percents = new int[11];
                }
                AndroidUtilities.roundPercents(fArr, this.percents);
                int size = arrayList.size();
                ArrayList<ItemInner> arrayList2 = this.itemInners;
                if (size > 5) {
                    arrayList2.addAll(arrayList.subList(0, 4));
                    int i2 = 0;
                    long j2 = j;
                    for (int i3 = 4; i3 < arrayList.size(); i3++) {
                        ((ItemInner) arrayList.get(i3)).pad = true;
                        j2 += ((ItemInner) arrayList.get(i3)).size;
                        i2 += this.percents[((ItemInner) arrayList.get(i3)).index];
                    }
                    this.percents[c2] = i2;
                    this.itemInners.add(ItemInner.asCheckBox(LocaleController.getString(C2573R.string.LocalOther), -1, j2, Theme.key_statisticChartLine_golden));
                    if (!this.collapsed) {
                        this.itemInners.addAll(arrayList.subList(4, arrayList.size()));
                    }
                } else {
                    arrayList2.addAll(arrayList);
                }
                z2 = true;
            }
        }
        if (z2) {
            this.sectionsEndRow = this.itemInners.size();
            this.itemInners.add(new ItemInner(13, null, null));
            this.itemInners.add(ItemInner.asInfo(LocaleController.getString(C2573R.string.StorageUsageInfo)));
        } else {
            this.sectionsEndRow = -1;
        }
        this.itemInners.add(new ItemInner(3, LocaleController.getString(C2573R.string.AutoDeleteCachedMedia), null));
        this.itemInners.add(new ItemInner(7, 0));
        this.itemInners.add(new ItemInner(7, 1));
        this.itemInners.add(new ItemInner(7, 2));
        this.itemInners.add(new ItemInner(7, 3));
        this.itemInners.add(ItemInner.asInfo(LocaleController.getString(C2573R.string.KeepMediaInfoPart)));
        if (this.totalDeviceSize > j) {
            this.itemInners.add(new ItemInner(3, LocaleController.getString(C2573R.string.MaxCacheSize), null));
            this.itemInners.add(new ItemInner(14));
            this.itemInners.add(ItemInner.asInfo(LocaleController.getString(C2573R.string.MaxCacheSizeInfo)));
        }
        if (z2 && (cacheModel = this.cacheModel) != null && !cacheModel.isEmpty()) {
            this.itemInners.add(new ItemInner(8, null, null));
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            if (z3) {
                listAdapter.setItems(this.oldItems, this.itemInners);
            } else {
                listAdapter.notifyDataSetChanged();
            }
        }
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.update();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.didClearDatabase);
        try {
            AlertDialog alertDialog = this.progressDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
        } catch (Exception unused) {
        }
        this.progressDialog = null;
        canceled = true;
    }

    private static long getDirectorySize(File file, int i) {
        if (file != null && !canceled) {
            if (file.isDirectory()) {
                return Utilities.getDirSize(file.getAbsolutePath(), i, false);
            }
            if (file.isFile()) {
                return file.length();
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupFolders(final Utilities.Callback2<Float, Boolean> callback2, final Runnable runnable) {
        CacheModel cacheModel = this.cacheModel;
        if (cacheModel != null) {
            cacheModel.clearSelection();
        }
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.updateVisibleRows();
            this.cachedMediaLayout.showActionMode(false);
        }
        getFileLoader().cancelLoadAllFiles();
        getFileLoader().getFileLoaderQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupFolders$12(callback2, runnable);
            }
        });
        setCacheModel(null);
        this.loadingDialogs = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupFolders$12(final Utilities.Callback2 callback2, final Runnable runnable) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupFolders$11(callback2, runnable);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int countDirJava(String str, int i) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return 0;
        }
        int iCountDirJava = 0;
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (!".".equals(name)) {
                if (i > 0 && name.length() >= 4) {
                    String lowerCase = name.toLowerCase();
                    boolean z = true;
                    boolean z2 = lowerCase.endsWith(".mp3") || lowerCase.endsWith(".m4a");
                    boolean z3 = lowerCase.endsWith(".tgs") || lowerCase.endsWith(".webm");
                    if (!lowerCase.endsWith(".tmp") && !lowerCase.endsWith(".temp") && !lowerCase.endsWith(".preload")) {
                        z = false;
                    }
                    if ((!z2 || i != LISTDIR_DOCTYPE_OTHER_THAN_MUSIC) && ((z2 || i != LISTDIR_DOCTYPE_MUSIC) && ((!z3 || i != LISTDIR_DOCTYPE2_OTHER) && ((z3 || i != LISTDIR_DOCTYPE2_EMOJI) && ((!z || i != LISTDIR_DOCTYPE2_OTHER) && (z || i != LISTDIR_DOCTYPE2_TEMP)))))) {
                    }
                } else if (file2.isDirectory()) {
                    iCountDirJava += countDirJava(str + "/" + name, i);
                } else {
                    iCountDirJava++;
                }
            }
        }
        return iCountDirJava;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void cleanDirJava(String str, int i, int[] iArr, Utilities.Callback<Float> callback) {
        File[] fileArrListFiles;
        int iCountDirJava = countDirJava(str, i);
        if (iArr == null) {
            iArr = new int[]{0};
        }
        File file = new File(str);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (!".".equals(name)) {
                if (i > 0 && name.length() >= 4) {
                    String lowerCase = name.toLowerCase();
                    boolean z = lowerCase.endsWith(".mp3") || lowerCase.endsWith(".m4a");
                    boolean z2 = lowerCase.endsWith(".tgs") || lowerCase.endsWith(".webm");
                    boolean z3 = lowerCase.endsWith(".tmp") || lowerCase.endsWith(".temp") || lowerCase.endsWith(".preload");
                    if ((!z || i != LISTDIR_DOCTYPE_OTHER_THAN_MUSIC) && ((z || i != LISTDIR_DOCTYPE_MUSIC) && ((!z2 || i != LISTDIR_DOCTYPE2_OTHER) && ((z2 || i != LISTDIR_DOCTYPE2_EMOJI) && ((!z3 || i != LISTDIR_DOCTYPE2_OTHER) && (z3 || i != LISTDIR_DOCTYPE2_TEMP)))))) {
                    }
                } else if (file2.isDirectory()) {
                    if (!"drafts".equals(file2.getName())) {
                        cleanDirJava(str + "/" + name, i, iArr, callback);
                    }
                } else {
                    file2.delete();
                    int i2 = iArr[0] + 1;
                    iArr[0] = i2;
                    if (callback != null) {
                        callback.run(Float.valueOf(i2 / iCountDirJava));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fa A[PHI: r15 r18
  0x00fa: PHI (r15v21 int) = (r15v12 int), (r15v17 int), (r15v20 int) binds: [B:57:0x00f8, B:112:0x0214, B:98:0x01a6] A[DONT_GENERATE, DONT_INLINE]
  0x00fa: PHI (r18v16 int) = (r18v10 int), (r18v13 int), (r18v10 int) binds: [B:57:0x00f8, B:112:0x0214, B:98:0x01a6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fe  */
    /* JADX INFO: renamed from: cleanupFoldersInternal, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$cleanupFolders$11(final Utilities.Callback2<Float, Boolean> callback2, final Runnable runnable) {
        int i;
        int i2;
        int i3;
        File fileCheckDirectory;
        char c2;
        int i4 = 1;
        final int[] iArr = {0};
        boolean[] zArr = this.selected;
        int i5 = 2;
        int i6 = 3;
        int i7 = 4;
        int i8 = 5;
        final int i9 = (zArr[0] ? 2 : 0) + (zArr[1] ? 2 : 0) + (zArr[2] ? 2 : 0) + (zArr[3] ? 2 : 0) + (zArr[4] ? 1 : 0) + (zArr[5] ? 2 : 0) + (zArr[6] ? 1 : 0) + (zArr[7] ? 1 : 0) + (zArr[8] ? 1 : 0) + (zArr[9] ? 1 : 0);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CacheControlActivity.$r8$lambda$IdWc5CO7rxuAs1Jpx9IxM5ueG7I(callback2, iArr, i9, (Float) obj);
            }
        };
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                Utilities.Callback2 callback22 = callback2;
                int[] iArr2 = iArr;
                callback22.run(Float.valueOf(iArr2[0] / i9), Boolean.valueOf(System.currentTimeMillis() - jCurrentTimeMillis > 250));
            }
        };
        long j = 0;
        boolean z = true;
        int i10 = 0;
        int i11 = 0;
        while (i10 < 10) {
            if (this.selected[i10]) {
                if (i10 == 0) {
                    j += this.photoSize;
                    i2 = i7;
                    i3 = i8;
                    i7 = 0;
                } else {
                    if (i10 == i4) {
                        j += this.videoSize;
                        i2 = i7;
                        i3 = i8;
                        i8 = 0;
                        i = 9;
                        i7 = i5;
                    } else {
                        if (i10 == i5) {
                            j += this.documentsSize;
                            i2 = i7;
                            i3 = i8;
                            i = 9;
                            i8 = i4;
                        } else if (i10 == i6) {
                            j += this.musicSize;
                            i2 = i7;
                            i3 = i8;
                            i = 9;
                            i8 = i5;
                        } else if (i10 == i7) {
                            j += this.audioSize;
                            i2 = i7;
                            i3 = i8;
                            i8 = 0;
                            i = 9;
                            i7 = i4;
                        } else if (i10 == i8) {
                            j += this.storiesSize;
                            i2 = i7;
                            i3 = i8;
                            i7 = 6;
                        } else if (i10 == 6) {
                            j += this.stickersCacheSize;
                            i2 = i7;
                            i3 = i8;
                            i7 = 100;
                        } else if (i10 == 7) {
                            j += this.cacheSize;
                            i2 = i7;
                            i3 = i8;
                            i = 9;
                        } else if (i10 == 8) {
                            j += this.cacheTempSize;
                            i2 = i7;
                            i3 = i8;
                            i = 9;
                            i8 = i2;
                        } else {
                            i = 9;
                            i2 = i7;
                            i3 = i8;
                            if (i10 == 9) {
                                j += this.logsSize;
                                i8 = i4;
                                i7 = 0;
                            } else {
                                i7 = -1;
                                i8 = 0;
                            }
                        }
                        i7 = i6;
                    }
                    if (i7 == -1) {
                        int i12 = i2;
                        int i13 = i4;
                        if (i10 == 7) {
                            try {
                                cleanDirJava(ApplicationLoader.getFilesDirFixed("rasterized/wallpaper").getAbsolutePath(), 0, null, null);
                            } catch (Exception e) {
                                FileLog.m898e(e);
                            }
                        }
                        if (i10 == i) {
                            fileCheckDirectory = AndroidUtilities.getLogsDir();
                        } else if (i7 == 100) {
                            fileCheckDirectory = new File(FileLoader.checkDirectory(i12), "acache");
                        } else {
                            fileCheckDirectory = FileLoader.checkDirectory(i7);
                        }
                        if (fileCheckDirectory != null) {
                            cleanDirJava(fileCheckDirectory.getAbsolutePath(), i8, null, callback);
                        }
                        iArr[0] = iArr[0] + 1;
                        runnable2.run();
                        if (i7 == 100) {
                            File fileCheckDirectory2 = FileLoader.checkDirectory(i12);
                            if (fileCheckDirectory2 != null) {
                                cleanDirJava(fileCheckDirectory2.getAbsolutePath(), i6, null, callback);
                            }
                            iArr[0] = iArr[0] + 1;
                            runnable2.run();
                        }
                        if (i7 == 0 || i7 == i5) {
                            File fileCheckDirectory3 = FileLoader.checkDirectory(i7 == 0 ? 100 : 101);
                            if (fileCheckDirectory3 != null) {
                                cleanDirJava(fileCheckDirectory3.getAbsolutePath(), i8, null, callback);
                            }
                            c2 = 0;
                            iArr[0] = iArr[0] + 1;
                            runnable2.run();
                        } else {
                            c2 = 0;
                        }
                        if (i7 == i6) {
                            File fileCheckDirectory4 = FileLoader.checkDirectory(i3);
                            if (fileCheckDirectory4 != null) {
                                cleanDirJava(fileCheckDirectory4.getAbsolutePath(), i8, null, callback);
                            }
                            iArr[c2] = iArr[c2] + 1;
                            runnable2.run();
                        }
                        if (i10 == 9) {
                            this.logsSize = getDirectorySize(AndroidUtilities.getLogsDir(), i13);
                            i2 = i12;
                        } else {
                            if (i7 == i12) {
                                this.cacheSize = getDirectorySize(FileLoader.checkDirectory(i12), i3);
                                this.cacheTempSize = getDirectorySize(FileLoader.checkDirectory(i12), i12);
                                i11 = i13;
                            } else if (i7 == i13) {
                                this.audioSize = getDirectorySize(FileLoader.checkDirectory(i13), i8);
                            } else if (i7 == 6) {
                                this.storiesSize = getDirectorySize(FileLoader.checkDirectory(6), i8);
                            } else if (i7 == i6) {
                                if (i8 == i13) {
                                    long directorySize = getDirectorySize(FileLoader.checkDirectory(i6), i8);
                                    this.documentsSize = directorySize;
                                    i3 = 5;
                                    this.documentsSize = directorySize + getDirectorySize(FileLoader.checkDirectory(5), i8);
                                } else {
                                    i3 = 5;
                                    long directorySize2 = getDirectorySize(FileLoader.checkDirectory(i6), i8);
                                    this.musicSize = directorySize2;
                                    this.musicSize = directorySize2 + getDirectorySize(FileLoader.checkDirectory(5), i8);
                                }
                                i2 = 4;
                            } else {
                                i3 = 5;
                                if (i7 == 0) {
                                    long directorySize3 = getDirectorySize(FileLoader.checkDirectory(0), i8);
                                    this.photoSize = directorySize3;
                                    this.photoSize = directorySize3 + getDirectorySize(FileLoader.checkDirectory(100), i8);
                                    i11 = 1;
                                } else if (i7 == i5) {
                                    long directorySize4 = getDirectorySize(FileLoader.checkDirectory(i5), i8);
                                    this.videoSize = directorySize4;
                                    this.videoSize = directorySize4 + getDirectorySize(FileLoader.checkDirectory(101), i8);
                                } else if (i7 == 100) {
                                    i2 = 4;
                                    this.stickersCacheSize = getDirectorySize(new File(FileLoader.checkDirectory(4), "acache"), i8);
                                    long directorySize5 = getDirectorySize(FileLoader.checkDirectory(4), i6);
                                    this.cacheEmojiSize = directorySize5;
                                    this.stickersCacheSize += directorySize5;
                                    i11 = 1;
                                }
                                i2 = 4;
                            }
                            i2 = 4;
                            i3 = 5;
                        }
                    }
                }
                i8 = 0;
                i = 9;
                if (i7 == -1) {
                }
            } else {
                i2 = i7;
                i3 = i8;
                z = false;
            }
            i10++;
            i7 = i2;
            i8 = i3;
            i4 = 1;
            i5 = 2;
            i6 = 3;
        }
        long j2 = this.cacheSize + this.cacheTempSize + this.logsSize + this.videoSize + this.audioSize + this.photoSize + this.documentsSize + this.musicSize + this.stickersCacheSize + this.storiesSize;
        lastTotalSizeCalculated = Long.valueOf(j2);
        this.totalSize = j2;
        lastTotalSizeCalculatedTime = System.currentTimeMillis();
        Arrays.fill(this.selected, true);
        if (BuildVars.LOGS_ENABLED) {
            FileLog.cleanupLogs();
        }
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockSizeLong = statFs.getBlockSizeLong();
        long availableBlocksLong = statFs.getAvailableBlocksLong();
        this.totalDeviceSize = statFs.getBlockCountLong() * blockSizeLong;
        this.totalDeviceFreeSize = availableBlocksLong * blockSizeLong;
        if (z) {
            FileLoader.getInstance(this.currentAccount).clearFilePaths();
        }
        FileLoader.getInstance(this.currentAccount).checkCurrentDownloadsFiles();
        final long j3 = j;
        final boolean z2 = i11;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupFoldersInternal$16(z2, j3, runnable);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$IdWc5CO7rxuAs1Jpx9IxM5ueG7I(Utilities.Callback2 callback2, int[] iArr, int i, Float f) {
        float f2 = i;
        callback2.run(Float.valueOf((iArr[0] / f2) + ((1.0f / f2) * MathUtils.clamp(f.floatValue(), 0.0f, 1.0f))), Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupFoldersInternal$16(boolean z, final long j, Runnable runnable) {
        if (z) {
            ImageLoader.getInstance().clearMemory();
        }
        try {
            AlertDialog alertDialog = this.progressDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.progressDialog = null;
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        getMediaDataController().ringtoneDataStore.checkRingtoneSoundsLoaded();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupFoldersInternal$15(j);
            }
        }, 150L);
        MediaDataController.getInstance(this.currentAccount).checkAllMedia(true);
        loadDialogEntities();
        PillStackConfig.notifySettingsChanged(PillType.CACHE.getId());
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupFoldersInternal$15(long j) {
        Bulletin bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.ic_delete, LocaleController.formatString(C2573R.string.CacheWasCleared, AndroidUtilities.formatFileSize(j)));
        bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
        bulletinCreateSimpleBulletin.show();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        if (f > 0.5f && !this.changeStatusBar) {
            this.changeStatusBar = true;
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        }
        super.onTransitionAnimationProgress(z, f);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (this.changeStatusBar) {
            return AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundGray)) > 0.721f;
        }
        return super.isLightStatusBar();
    }

    private long size(int i) {
        switch (i) {
            case 0:
                return this.photoSize;
            case 1:
                return this.videoSize;
            case 2:
                return this.documentsSize;
            case 3:
                return this.musicSize;
            case 4:
                return this.audioSize;
            case 5:
                return this.storiesSize;
            case 6:
                return this.stickersCacheSize;
            case 7:
                return this.cacheSize;
            case 8:
                return this.cacheTempSize;
            case 9:
                return this.logsSize;
            default:
                return 0L;
        }
    }

    private int sectionsSelected() {
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            if (this.selected[i2] && size(i2) > 0) {
                i++;
            }
        }
        return i;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackgroundDrawable(null);
        this.actionBar.setCastShadows(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(true);
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar.setTitleColor(ColorUtils.setAlphaComponent(Theme.getColor(i), 0));
        this.actionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_listSelector), false);
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(false);
        this.actionBar.setTitle(LocaleController.getString(C2573R.string.StorageUsage));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.CacheControlActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 != -1) {
                    if (i2 == 1) {
                        CacheControlActivity.this.clearSelectedFiles();
                        return;
                    } else if (i2 == 3) {
                        CacheControlActivity.this.clearDatabase(false);
                        return;
                    } else {
                        if (i2 == 4) {
                            CacheControlActivity.this.clearDatabase(true);
                            return;
                        }
                        return;
                    }
                }
                boolean zIsActionModeShowed = ((BaseFragment) CacheControlActivity.this).actionBar.isActionModeShowed();
                CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                if (zIsActionModeShowed) {
                    CacheModel cacheModel = cacheControlActivity.cacheModel;
                    if (cacheModel != null) {
                        cacheModel.clearSelection();
                    }
                    if (CacheControlActivity.this.cachedMediaLayout != null) {
                        CacheControlActivity.this.cachedMediaLayout.showActionMode(false);
                        CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                        return;
                    }
                    return;
                }
                cacheControlActivity.finishFragment();
            }
        });
        this.actionMode = this.actionBar.createActionMode();
        FrameLayout frameLayout = new FrameLayout(context);
        this.actionMode.addView(frameLayout, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.actionModeTitle = animatedTextView;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        animatedTextView.setAnimationProperties(0.35f, 0L, 350L, cubicBezierInterpolator);
        this.actionModeTitle.setTextSize(AndroidUtilities.dp(18.0f));
        this.actionModeTitle.setTypeface(AndroidUtilities.bold());
        this.actionModeTitle.setTextColor(Theme.getColor(i));
        frameLayout.addView(this.actionModeTitle, LayoutHelper.createFrame(-1, 18.0f, 19, 0.0f, -11.0f, 18.0f, 0.0f));
        AnimatedTextView animatedTextView2 = new AnimatedTextView(context, true, true, true);
        this.actionModeSubtitle = animatedTextView2;
        animatedTextView2.setAnimationProperties(0.35f, 0L, 350L, cubicBezierInterpolator);
        this.actionModeSubtitle.setTextSize(AndroidUtilities.dp(14.0f));
        this.actionModeSubtitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        frameLayout.addView(this.actionModeSubtitle, LayoutHelper.createFrame(-1, 18.0f, 19, 0.0f, 10.0f, 18.0f, 0.0f));
        TextView textView = new TextView(context);
        this.actionModeClearButton = textView;
        textView.setTextSize(1, 14.0f);
        this.actionModeClearButton.setPadding(AndroidUtilities.dp(14.0f), 0, AndroidUtilities.dp(14.0f), 0);
        this.actionModeClearButton.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.actionModeClearButton.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 6.0f));
        this.actionModeClearButton.setTypeface(AndroidUtilities.bold());
        this.actionModeClearButton.setGravity(17);
        this.actionModeClearButton.setText(LocaleController.getString(C2573R.string.CacheClear));
        this.actionModeClearButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$17(view);
            }
        });
        boolean z = LocaleController.isRTL;
        TextView textView2 = this.actionModeClearButton;
        if (z) {
            frameLayout.addView(textView2, LayoutHelper.createFrame(-2, 28.0f, 19, 0.0f, 0.0f, 0.0f, 0.0f));
        } else {
            frameLayout.addView(textView2, LayoutHelper.createFrame(-2, 28.0f, 21, 0.0f, 0.0f, 14.0f, 0.0f));
        }
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(2, C2573R.drawable.ic_ab_other);
        ActionBarMenuSubItem actionBarMenuSubItemAddSubItem = actionBarMenuItemAddItem.addSubItem(3, C2573R.drawable.msg_delete, LocaleController.getString(C2573R.string.ClearLocalDatabase));
        this.clearDatabaseItem = actionBarMenuSubItemAddSubItem;
        int i2 = Theme.key_text_RedRegular;
        actionBarMenuSubItemAddSubItem.setIconColor(Theme.getColor(i2));
        ActionBarMenuSubItem actionBarMenuSubItem = this.clearDatabaseItem;
        int i3 = Theme.key_text_RedBold;
        actionBarMenuSubItem.setTextColor(Theme.getColor(i3));
        this.clearDatabaseItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i2), 0.12f));
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem2 = actionBarMenuItemAddItem.addSubItem(4, C2573R.drawable.msg_delete, "Full Reset Database");
            this.resetDatabaseItem = actionBarMenuSubItemAddSubItem2;
            actionBarMenuSubItemAddSubItem2.setIconColor(Theme.getColor(i2));
            this.resetDatabaseItem.setTextColor(Theme.getColor(i3));
            this.resetDatabaseItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i2), 0.12f));
        }
        updateDatabaseItemSize();
        this.listAdapter = new ListAdapter(context);
        NestedSizeNotifierLayout nestedSizeNotifierLayout = new NestedSizeNotifierLayout(context) { // from class: org.telegram.ui.CacheControlActivity.2
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                boolean zIsPinnedToTop = isPinnedToTop();
                if (zIsPinnedToTop && CacheControlActivity.this.actionBarShadowAlpha != 0.0f) {
                    CacheControlActivity.this.actionBarShadowAlpha -= 0.16f;
                    invalidate();
                } else if (!zIsPinnedToTop && CacheControlActivity.this.actionBarShadowAlpha != 1.0f) {
                    CacheControlActivity.this.actionBarShadowAlpha += 0.16f;
                    invalidate();
                }
                CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                cacheControlActivity.actionBarShadowAlpha = Utilities.clamp(cacheControlActivity.actionBarShadowAlpha, 1.0f, 0.0f);
                if (((BaseFragment) CacheControlActivity.this).parentLayout != null) {
                    ((BaseFragment) CacheControlActivity.this).parentLayout.drawHeaderShadow(canvas, (int) (CacheControlActivity.this.actionBarShownT * 255.0f * CacheControlActivity.this.actionBarShadowAlpha), AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight());
                }
            }
        };
        this.nestedSizeNotifierLayout = nestedSizeNotifierLayout;
        this.fragmentView = nestedSizeNotifierLayout;
        nestedSizeNotifierLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.CacheControlActivity.3
            @Override // org.telegram.ui.Components.RecyclerListView
            public boolean allowSelectChildAtPosition(View view) {
                return view != CacheControlActivity.this.cacheChart;
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setPadding(0, AndroidUtilities.statusBarHeight + (ActionBar.getCurrentActionBarHeight() / 2), 0, 0);
        this.listView.setClipToPadding(false);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        nestedSizeNotifierLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setAdapter(this.listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.CacheControlActivity.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                CacheControlActivity.this.listView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(cubicBezierInterpolator);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i4, float f, float f2) {
                this.f$0.lambda$createView$19(view, i4, f, f2);
            }
        });
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.CacheControlActivity.5
            boolean pinned;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                super.onScrolled(recyclerView, i4, i5);
                CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                cacheControlActivity.updateActionBar(cacheControlActivity.layoutManager.findFirstVisibleItemPosition() > 0 || ((BaseFragment) CacheControlActivity.this).actionBar.isActionModeShowed());
                if (this.pinned != CacheControlActivity.this.nestedSizeNotifierLayout.isPinnedToTop()) {
                    this.pinned = CacheControlActivity.this.nestedSizeNotifierLayout.isPinnedToTop();
                    CacheControlActivity.this.nestedSizeNotifierLayout.invalidate();
                }
            }
        });
        nestedSizeNotifierLayout.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
        this.nestedSizeNotifierLayout.setTargetListView(this.listView);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17(View view) {
        clearSelectedFiles();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(View view, int i, float f, float f2) {
        if (getParentActivity() != null && i >= 0 && i < this.itemInners.size()) {
            ItemInner itemInner = this.itemInners.get(i);
            if (itemInner.viewType == 11 && (view instanceof CheckBoxCell)) {
                if (itemInner.index < 0) {
                    this.collapsed = !this.collapsed;
                    updateRows();
                    updateChart();
                    return;
                }
                toggleSection(itemInner, view);
                return;
            }
            DialogFileEntities dialogFileEntities = itemInner.entities;
            if (dialogFileEntities != null) {
                showClearCacheDialog(dialogFileEntities);
                return;
            }
            if (itemInner.keepMediaType >= 0) {
                KeepMediaPopupView keepMediaPopupView = new KeepMediaPopupView(this, view.getContext());
                ActionBarPopupWindow actionBarPopupWindowCreateSimplePopup = AlertsCreator.createSimplePopup(this, keepMediaPopupView, view, f, f2);
                keepMediaPopupView.update(this.itemInners.get(i).keepMediaType);
                keepMediaPopupView.setParentWindow(actionBarPopupWindowCreateSimplePopup);
                keepMediaPopupView.setCallback(new KeepMediaPopupView.Callback() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda9
                    @Override // org.telegram.ui.KeepMediaPopupView.Callback
                    public final void onKeepMediaChange(int i2, int i3) {
                        this.f$0.lambda$createView$18(i2, i3);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(int i, int i2) {
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelectedFiles() {
        if (this.cacheModel.getSelectedFiles() == 0 || getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getString(C2573R.string.ClearCache));
        builder.setMessage(LocaleController.getString(C2573R.string.ClearCacheForChats));
        builder.setPositiveButton(LocaleController.getString(C2573R.string.Clear), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$clearSelectedFiles$20(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearSelectedFiles$20(AlertDialog alertDialog, int i) {
        DialogFileEntities dialogFileEntitiesRemoveSelectedFiles = this.cacheModel.removeSelectedFiles();
        if (dialogFileEntitiesRemoveSelectedFiles.totalSize > 0) {
            cleanupDialogFiles(dialogFileEntitiesRemoveSelectedFiles, null, null);
        }
        this.cacheModel.clearSelection();
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.update();
            this.cachedMediaLayout.showActionMode(false);
        }
        updateRows();
        updateChart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBar(boolean z) {
        if (z != this.actionBarShown) {
            ValueAnimator valueAnimator = this.actionBarAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float f = this.actionBarShownT;
            this.actionBarShown = z;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, z ? 1.0f : 0.0f);
            this.actionBarAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda14
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateActionBar$21(valueAnimator2);
                }
            });
            this.actionBarAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.actionBarAnimator.setDuration(380L);
            this.actionBarAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateActionBar$21(ValueAnimator valueAnimator) {
        this.actionBarShownT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.actionBar.setTitleColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), (int) (this.actionBarShownT * 255.0f)));
        this.actionBar.setBackgroundColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite), (int) (this.actionBarShownT * 255.0f)));
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClearCacheDialog(final DialogFileEntities dialogFileEntities) {
        if (this.totalSize <= 0 || getParentActivity() == null) {
            return;
        }
        DialogCacheBottomSheet dialogCacheBottomSheet = new DialogCacheBottomSheet(this, dialogFileEntities, dialogFileEntities.createCacheModel(), new DialogCacheBottomSheet.Delegate() { // from class: org.telegram.ui.CacheControlActivity.6
            @Override // org.telegram.ui.DialogCacheBottomSheet.Delegate
            public void onAvatarClick() {
                CacheControlActivity.this.bottomSheet.dismiss();
                Bundle bundle = new Bundle();
                long j = dialogFileEntities.dialogId;
                if (j > 0) {
                    bundle.putLong("user_id", j);
                } else {
                    bundle.putLong("chat_id", -j);
                }
                CacheControlActivity.this.presentFragment(new ProfileActivity(bundle, null));
            }

            @Override // org.telegram.ui.DialogCacheBottomSheet.Delegate
            public void cleanupDialogFiles(DialogFileEntities dialogFileEntities2, StorageDiagramView.ClearViewData[] clearViewDataArr, CacheModel cacheModel) {
                CacheControlActivity.this.cleanupDialogFiles(dialogFileEntities2, clearViewDataArr, cacheModel);
            }
        });
        this.bottomSheet = dialogCacheBottomSheet;
        showDialog(dialogCacheBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupDialogFiles(DialogFileEntities dialogFileEntities, StorageDiagramView.ClearViewData[] clearViewDataArr, CacheModel cacheModel) {
        FileEntities fileEntities;
        StorageDiagramView.ClearViewData clearViewData;
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.showDelayed(500L);
        HashSet hashSet = new HashSet();
        long j = this.totalSize;
        for (int i = 0; i < 8; i++) {
            if ((clearViewDataArr == null || ((clearViewData = clearViewDataArr[i]) != null && clearViewData.clear)) && (fileEntities = dialogFileEntities.entitiesByType.get(i)) != null) {
                hashSet.addAll(fileEntities.files);
                long j2 = dialogFileEntities.totalSize;
                long j3 = fileEntities.totalSize;
                dialogFileEntities.totalSize = j2 - j3;
                this.totalSize -= j3;
                this.totalDeviceFreeSize += j3;
                dialogFileEntities.entitiesByType.delete(i);
                if (i == 0) {
                    this.photoSize -= fileEntities.totalSize;
                } else if (i == 1) {
                    this.videoSize -= fileEntities.totalSize;
                } else if (i == 2) {
                    this.documentsSize -= fileEntities.totalSize;
                } else if (i == 3) {
                    this.musicSize -= fileEntities.totalSize;
                } else if (i == 4) {
                    this.audioSize -= fileEntities.totalSize;
                } else if (i == 5) {
                    this.stickersCacheSize -= fileEntities.totalSize;
                } else if (i == 7) {
                    for (int i2 = 0; i2 < fileEntities.files.size(); i2++) {
                        CacheModel.FileInfo fileInfo = fileEntities.files.get(i2);
                        int typeByPath = getTypeByPath(fileEntities.files.get(i2).file.getAbsolutePath());
                        if (typeByPath == 7) {
                            this.storiesSize -= fileInfo.size;
                        } else if (typeByPath == 0) {
                            this.photoSize -= fileInfo.size;
                        } else if (typeByPath == 1) {
                            this.videoSize -= fileInfo.size;
                        } else {
                            this.cacheSize -= fileInfo.size;
                        }
                    }
                } else {
                    this.cacheSize -= fileEntities.totalSize;
                }
            }
        }
        if (dialogFileEntities.entitiesByType.size() == 0) {
            this.cacheModel.remove(dialogFileEntities);
        }
        updateRows();
        if (cacheModel != null) {
            for (CacheModel.FileInfo fileInfo2 : cacheModel.selectedFiles) {
                if (!hashSet.contains(fileInfo2)) {
                    long j4 = this.totalSize;
                    long j5 = fileInfo2.size;
                    this.totalSize = j4 - j5;
                    this.totalDeviceFreeSize += j5;
                    hashSet.add(fileInfo2);
                    dialogFileEntities.removeFile(fileInfo2);
                    int i3 = fileInfo2.type;
                    if (i3 == 0) {
                        this.photoSize -= fileInfo2.size;
                    } else if (i3 == 1) {
                        this.videoSize -= fileInfo2.size;
                    } else if (i3 == 2) {
                        this.documentsSize -= fileInfo2.size;
                    } else if (i3 == 3) {
                        this.musicSize -= fileInfo2.size;
                    } else if (i3 == 4) {
                        this.audioSize -= fileInfo2.size;
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            this.cacheModel.onFileDeleted((CacheModel.FileInfo) it.next());
        }
        Bulletin bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.ic_delete, LocaleController.formatString(C2573R.string.CacheWasCleared, AndroidUtilities.formatFileSize(j - this.totalSize)));
        bulletinCreateSimpleBulletin.hideAfterBottomSheet = false;
        bulletinCreateSimpleBulletin.show();
        final ArrayList arrayList = new ArrayList(hashSet);
        getFileLoader().getFileDatabase().removeFiles(arrayList);
        getFileLoader().cancelLoadAllFiles();
        getFileLoader().getFileLoaderQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupDialogFiles$23(arrayList, alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupDialogFiles$23(ArrayList arrayList, final AlertDialog alertDialog) {
        for (int i = 0; i < arrayList.size(); i++) {
            ((CacheModel.FileInfo) arrayList.get(i)).file.delete();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupDialogFiles$22(alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupDialogFiles$22(AlertDialog alertDialog) {
        FileLoader.getInstance(this.currentAccount).checkCurrentDownloadsFiles();
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        PillStackConfig.notifySettingsChanged(PillType.CACHE.getId());
    }

    private int getTypeByPath(String str) {
        if (pathContains(str, 6)) {
            return 7;
        }
        if (pathContains(str, 0) || pathContains(str, 100)) {
            return 0;
        }
        return (pathContains(str, 2) || pathContains(str, 101)) ? 1 : 6;
    }

    private boolean pathContains(String str, int i) {
        if (str == null || FileLoader.checkDirectory(i) == null) {
            return false;
        }
        return str.contains(FileLoader.checkDirectory(i).getAbsolutePath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDatabase(final boolean z) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2573R.string.LocalDatabaseClearTextTitle));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2573R.string.LocalDatabaseClearText));
        spannableStringBuilder.append((CharSequence) "\n\n");
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("LocalDatabaseClearText2", C2573R.string.LocalDatabaseClearText2, AndroidUtilities.formatFileSize(this.databaseSize))));
        builder.setMessage(spannableStringBuilder);
        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString(C2573R.string.CacheClear), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$clearDatabase$24(z, alertDialog, i);
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearDatabase$24(boolean z, AlertDialog alertDialog, int i) {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog alertDialog2 = new AlertDialog(getParentActivity(), 3);
        this.progressDialog = alertDialog2;
        alertDialog2.setCanCancel(false);
        this.progressDialog.showDelayed(500L);
        MessagesController.getInstance(this.currentAccount).clearQueryTime();
        if (z) {
            getMessagesStorage().fullReset();
        } else {
            getMessagesStorage().clearLocalDatabase();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.listAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didClearDatabase) {
            try {
                AlertDialog alertDialog = this.progressDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            } catch (Exception e) {
                FileLog.m898e(e);
            }
            this.progressDialog = null;
            if (this.listAdapter != null) {
                this.databaseSize = MessagesStorage.getInstance(this.currentAccount).getDatabaseSize();
                this.updateDatabaseSize = true;
                updateDatabaseItemSize();
                updateRows();
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class CacheChartHeader extends FrameLayout {
        boolean firstSet;
        Paint loadingBackgroundPaint;
        LoadingDrawable loadingDrawable;
        AnimatedFloat loadingFloat;
        Float percent;
        AnimatedFloat percentAnimated;
        Paint percentPaint;
        RectF progressRect;
        private float[] radii;
        private Path roundPath;
        TextView[] subtitle;
        AnimatedTextView title;
        Float usedPercent;
        AnimatedFloat usedPercentAnimated;
        Paint usedPercentPaint;

        public CacheChartHeader(Context context) {
            super(context);
            this.subtitle = new TextView[3];
            this.progressRect = new RectF();
            this.loadingDrawable = new LoadingDrawable();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.percentAnimated = new AnimatedFloat(this, 450L, cubicBezierInterpolator);
            this.usedPercentAnimated = new AnimatedFloat(this, 450L, cubicBezierInterpolator);
            this.loadingFloat = new AnimatedFloat(this, 450L, cubicBezierInterpolator);
            this.loadingBackgroundPaint = new Paint(1);
            this.percentPaint = new Paint(1);
            this.usedPercentPaint = new Paint(1);
            this.firstSet = true;
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.title = animatedTextView;
            animatedTextView.setAnimationProperties(0.35f, 0L, 350L, cubicBezierInterpolator);
            this.title.setTypeface(AndroidUtilities.bold());
            this.title.setTextSize(AndroidUtilities.dp(20.0f));
            this.title.setText(LocaleController.getString(C2573R.string.StorageUsage));
            this.title.setGravity(17);
            this.title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(this.title, LayoutHelper.createFrame(-2, 26, 49));
            int i = 0;
            while (i < 3) {
                this.subtitle[i] = new TextView(context);
                this.subtitle[i].setTextSize(1, 13.0f);
                this.subtitle[i].setGravity(17);
                this.subtitle[i].setPadding(AndroidUtilities.dp(24.0f), 0, AndroidUtilities.dp(24.0f), 0);
                if (i == 0) {
                    this.subtitle[i].setText(LocaleController.getString(C2573R.string.StorageUsageCalculating));
                } else if (i == 1) {
                    this.subtitle[i].setAlpha(0.0f);
                    this.subtitle[i].setText(LocaleController.getString(C2573R.string.StorageUsageTelegram));
                    this.subtitle[i].setVisibility(4);
                } else if (i == 2) {
                    this.subtitle[i].setText(LocaleController.getString(C2573R.string.StorageCleared2));
                    this.subtitle[i].setAlpha(0.0f);
                    this.subtitle[i].setVisibility(4);
                }
                this.subtitle[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
                addView(this.subtitle[i], LayoutHelper.createFrame(-2, -2.0f, 17, 0.0f, i == 2 ? 12.0f : -6.0f, 0.0f, 0.0f));
                i++;
            }
            this.loadingDrawable.setColors(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4), 0.2f));
            this.loadingDrawable.setRadiiDp(4.0f);
            this.loadingDrawable.setCallback(this);
        }

        public void setData(boolean z, float f, float f2) {
            String string;
            AnimatedTextView animatedTextView = this.title;
            if (z) {
                string = LocaleController.getString(C2573R.string.StorageUsage);
            } else {
                string = LocaleController.getString(C2573R.string.StorageCleared);
            }
            animatedTextView.setText(string);
            if (z) {
                TextView[] textViewArr = this.subtitle;
                if (f < 0.01f) {
                    textViewArr[1].setText(LocaleController.formatString(C2573R.string.StorageUsageTelegramLess, CacheControlActivity.this.formatPercent(f)));
                } else {
                    textViewArr[1].setText(LocaleController.formatString(C2573R.string.StorageUsageTelegram, CacheControlActivity.this.formatPercent(f)));
                }
                switchSubtitle(1);
            } else {
                switchSubtitle(2);
            }
            this.firstSet = false;
            this.percent = Float.valueOf(f);
            this.usedPercent = Float.valueOf(f2);
            invalidate();
        }

        private void switchSubtitle(int i) {
            boolean z = System.currentTimeMillis() - CacheControlActivity.this.fragmentCreateTime > 40;
            updateViewVisible(this.subtitle[0], i == 0, z);
            updateViewVisible(this.subtitle[1], i == 1, z);
            updateViewVisible(this.subtitle[2], i == 2, z);
        }

        private void updateViewVisible(View view, boolean z, boolean z2) {
            if (view == null) {
                return;
            }
            if (view.getParent() == null) {
                z2 = false;
            }
            view.animate().setListener(null).cancel();
            if (!z2) {
                view.setVisibility(z ? 0 : 4);
                view.setTag(z ? 1 : null);
                view.setAlpha(z ? 1.0f : 0.0f);
                view.setTranslationY(z ? 0.0f : AndroidUtilities.dp(8.0f));
                invalidate();
                return;
            }
            if (z) {
                if (view.getVisibility() != 0) {
                    view.setVisibility(0);
                    view.setAlpha(0.0f);
                    view.setTranslationY(AndroidUtilities.dp(8.0f));
                }
                view.animate().alpha(1.0f).translationY(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CacheControlActivity$CacheChartHeader$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$updateViewVisible$0(valueAnimator);
                    }
                }).start();
                return;
            }
            view.animate().alpha(0.0f).translationY(AndroidUtilities.dp(8.0f)).setListener(new HideViewAfterAnimation(view)).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CacheControlActivity$CacheChartHeader$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$updateViewVisible$1(valueAnimator);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateViewVisible$0(ValueAnimator valueAnimator) {
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateViewVisible$1(ValueAnimator valueAnimator) {
            invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int iMin = (int) Math.min(AndroidUtilities.dp(174.0f), ((double) size) * 0.8d);
            super.measureChildren(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), i2);
            int iDp = AndroidUtilities.dp(72.0f);
            int i3 = 0;
            int iMax = 0;
            while (true) {
                TextView[] textViewArr = this.subtitle;
                if (i3 >= textViewArr.length) {
                    setMeasuredDimension(size, iDp + iMax);
                    this.progressRect.set((size - iMin) / 2.0f, r8 - AndroidUtilities.dp(30.0f), (size + iMin) / 2.0f, r8 - AndroidUtilities.dp(26.0f));
                    return;
                }
                iMax = Math.max(iMax, textViewArr[i3].getMeasuredHeight() - (i3 == 2 ? AndroidUtilities.dp(16.0f) : 0));
                i3++;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            RectF rectF;
            float alpha = 1.0f - this.subtitle[2].getAlpha();
            float f = this.loadingFloat.set(this.percent == null ? 1.0f : 0.0f);
            AnimatedFloat animatedFloat = this.percentAnimated;
            Float f2 = this.percent;
            float f3 = animatedFloat.set(f2 == null ? 0.0f : f2.floatValue());
            AnimatedFloat animatedFloat2 = this.usedPercentAnimated;
            Float f4 = this.usedPercent;
            float f5 = animatedFloat2.set(f4 == null ? 0.0f : f4.floatValue());
            Paint paint = this.loadingBackgroundPaint;
            int i = Theme.key_actionBarActionModeDefaultSelector;
            paint.setColor(Theme.getColor(i));
            this.loadingBackgroundPaint.setAlpha((int) (r1.getAlpha() * alpha));
            RectF rectF2 = AndroidUtilities.rectTmp;
            float f6 = 1.0f - f;
            float fMax = Math.max(this.progressRect.left + (Math.max(AndroidUtilities.dp(4.0f), this.progressRect.width() * f5) * f6), this.progressRect.left + (Math.max(AndroidUtilities.dp(4.0f), this.progressRect.width() * f3) * f6)) + AndroidUtilities.dp(1.0f);
            RectF rectF3 = this.progressRect;
            rectF2.set(fMax, rectF3.top, rectF3.right, rectF3.bottom);
            if (rectF2.left >= rectF2.right || rectF2.width() <= AndroidUtilities.dp(3.0f)) {
                rectF = rectF2;
            } else {
                rectF = rectF2;
                drawRoundRect(canvas, rectF, AndroidUtilities.dp(AndroidUtilities.lerp(1, 2, f)), AndroidUtilities.dp(2.0f), this.loadingBackgroundPaint);
            }
            this.loadingDrawable.setBounds(this.progressRect);
            this.loadingDrawable.setAlpha((int) (255.0f * alpha * f));
            this.loadingDrawable.draw(canvas);
            this.usedPercentPaint.setColor(Theme.isCurrentThemeMonet() ? Theme.getColor(Theme.key_statisticChartLine_red) : ColorUtils.blendARGB(Theme.getColor(Theme.key_radioBackgroundChecked), Theme.getColor(i), 0.75f));
            this.usedPercentPaint.setAlpha((int) (r1.getAlpha() * alpha));
            float fMax2 = this.progressRect.left + (Math.max(AndroidUtilities.dp(4.0f), this.progressRect.width() * f3) * f6) + AndroidUtilities.dp(1.0f);
            RectF rectF4 = this.progressRect;
            rectF.set(fMax2, rectF4.top, rectF4.left + (Math.max(AndroidUtilities.dp(4.0f), this.progressRect.width() * f5) * f6), this.progressRect.bottom);
            if (rectF.width() > AndroidUtilities.dp(3.0f)) {
                drawRoundRect(canvas, rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(f5 > 0.97f ? 2.0f : 1.0f), this.usedPercentPaint);
            }
            this.percentPaint.setColor(Theme.getColor(Theme.key_radioBackgroundChecked));
            this.percentPaint.setAlpha((int) (r1.getAlpha() * alpha));
            RectF rectF5 = this.progressRect;
            float f7 = rectF5.left;
            rectF.set(f7, rectF5.top, (f6 * Math.max(AndroidUtilities.dp(4.0f), this.progressRect.width() * f3)) + f7, this.progressRect.bottom);
            drawRoundRect(canvas, rectF, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(f3 > 0.97f ? 2.0f : 1.0f), this.percentPaint);
            if (f > 0.0f || this.percentAnimated.isInProgress()) {
                invalidate();
            }
            super.dispatchDraw(canvas);
        }

        private void drawRoundRect(Canvas canvas, RectF rectF, float f, float f2, Paint paint) {
            Path path = this.roundPath;
            if (path == null) {
                this.roundPath = new Path();
            } else {
                path.rewind();
            }
            if (this.radii == null) {
                this.radii = new float[8];
            }
            float[] fArr = this.radii;
            fArr[7] = f;
            fArr[6] = f;
            fArr[1] = f;
            fArr[0] = f;
            fArr[5] = f2;
            fArr[4] = f2;
            fArr[3] = f2;
            fArr[2] = f2;
            this.roundPath.addRoundRect(rectF, fArr, Path.Direction.CW);
            canvas.drawPath(this.roundPath, paint);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class ClearingCacheView extends FrameLayout {
        RLottieImageView imageView;
        AnimatedTextView percentsTextView;
        ProgressView progressView;
        TextView subtitle;
        TextView title;

        public ClearingCacheView(Context context) {
            super(context);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.imageView = rLottieImageView;
            rLottieImageView.setAutoRepeat(true);
            this.imageView.setAnimation(C2573R.raw.utyan_cache, 150, 150);
            addView(this.imageView, LayoutHelper.createFrame(150, 150.0f, 49, 0.0f, 16.0f, 0.0f, 0.0f));
            this.imageView.playAnimation();
            AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true);
            this.percentsTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.35f, 0L, 120L, CubicBezierInterpolator.EASE_OUT);
            this.percentsTextView.setGravity(1);
            AnimatedTextView animatedTextView2 = this.percentsTextView;
            int i = Theme.key_dialogTextBlack;
            animatedTextView2.setTextColor(Theme.getColor(i));
            this.percentsTextView.setTextSize(AndroidUtilities.dp(24.0f));
            this.percentsTextView.setTypeface(AndroidUtilities.bold());
            addView(this.percentsTextView, LayoutHelper.createFrame(-1, 32.0f, 49, 0.0f, 176.0f, 0.0f, 0.0f));
            ProgressView progressView = new ProgressView(context);
            this.progressView = progressView;
            addView(progressView, LayoutHelper.createFrame(240, 5.0f, 49, 0.0f, 226.0f, 0.0f, 0.0f));
            TextView textView = new TextView(context);
            this.title = textView;
            textView.setGravity(1);
            this.title.setTextColor(Theme.getColor(i));
            this.title.setTextSize(1, 16.0f);
            this.title.setTypeface(AndroidUtilities.bold());
            this.title.setText(LocaleController.getString(C2573R.string.ClearingCache));
            addView(this.title, LayoutHelper.createFrame(-1, -2.0f, 49, 0.0f, 261.0f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.subtitle = textView2;
            textView2.setGravity(1);
            this.subtitle.setTextColor(Theme.getColor(i));
            this.subtitle.setTextSize(1, 14.0f);
            this.subtitle.setText(LocaleController.getString(C2573R.string.ClearingCacheDescription));
            addView(this.subtitle, LayoutHelper.createFrame(240, -2.0f, 49, 0.0f, 289.0f, 0.0f, 0.0f));
            setProgress(0.0f);
        }

        public void setProgress(float f) {
            this.percentsTextView.cancelAnimation();
            this.percentsTextView.setText(String.format("%d%%", Integer.valueOf((int) Math.ceil(MathUtils.clamp(f, 0.0f, 1.0f) * 100.0f))), !LocaleController.isRTL);
            this.progressView.setProgress(f);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(350.0f), TLObject.FLAG_30));
        }

        public class ProgressView extends View {
            Paint in;
            Paint out;
            float progress;
            AnimatedFloat progressT;

            public ProgressView(Context context) {
                super(context);
                this.in = new Paint(1);
                this.out = new Paint(1);
                this.progressT = new AnimatedFloat(this, 350L, CubicBezierInterpolator.EASE_OUT);
                Paint paint = this.in;
                int i = Theme.key_switchTrackChecked;
                paint.setColor(Theme.getColor(i));
                this.out.setColor(Theme.multAlpha(Theme.getColor(i), 0.2f));
            }

            public void setProgress(float f) {
                this.progress = f;
                invalidate();
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), this.out);
                rectF.set(0.0f, 0.0f, getMeasuredWidth() * this.progressT.set(this.progress), getMeasuredHeight());
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), this.in);
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class ClearCacheButtonInternal extends ClearCacheButton {
        public ClearCacheButtonInternal(Context context) {
            super(context);
            ((ViewGroup.MarginLayoutParams) this.button.getLayoutParams()).topMargin = AndroidUtilities.dp(5.0f);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            String str;
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            StringBuilder sb = new StringBuilder();
            sb.append(LocaleController.getString(C2573R.string.ClearCache));
            if (TextUtils.isEmpty(this.valueTextView.getText())) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str = " (" + ((Object) this.valueTextView.getText()) + ")";
            }
            sb.append(str);
            AlertDialog alertDialogCreate = builder.setTitle(sb.toString()).setMessage(LocaleController.getString(C2573R.string.StorageUsageInfo)).setPositiveButton(this.textView.getText(), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$0(alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null).create();
            CacheControlActivity.this.showDialog(alertDialogCreate);
            View button = alertDialogCreate.getButton(-1);
            if (button instanceof TextView) {
                int i = Theme.key_text_RedRegular;
                ((TextView) button).setTextColor(Theme.getColor(i));
                button.setBackground(Theme.getRoundRectSelectorDrawable(AndroidUtilities.dp(6.0f), Theme.multAlpha(Theme.getColor(i), 0.12f)));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(AlertDialog alertDialog, int i) {
            doClearCache();
        }

        private void doClearCache() {
            final BottomSheet bottomSheet = new BottomSheet(getContext(), false) { // from class: org.telegram.ui.CacheControlActivity.ClearCacheButtonInternal.1
                @Override // org.telegram.ui.ActionBar.BottomSheet
                public boolean canDismissWithTouchOutside() {
                    return false;
                }
            };
            bottomSheet.fixNavigationBar();
            bottomSheet.setCanDismissWithSwipe(false);
            bottomSheet.setCancelable(false);
            final ClearingCacheView clearingCacheView = CacheControlActivity.this.new ClearingCacheView(getContext());
            bottomSheet.setCustomView(clearingCacheView);
            final boolean[] zArr = {false};
            final float[] fArr = {0.0f};
            final boolean[] zArr2 = {false};
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doClearCache$2(clearingCacheView, fArr, zArr2);
                }
            };
            final long[] jArr = {-1};
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$doClearCache$3(zArr, jArr, bottomSheet);
                }
            }, 150L);
            CacheControlActivity.this.cleanupFolders(new Utilities.Callback2() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    CacheControlActivity.ClearCacheButtonInternal.$r8$lambda$jiEY1mweDAysKlRZVBoQ2OpeaxU(fArr, zArr2, runnable, (Float) obj, (Boolean) obj2);
                }
            }, new Runnable() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            CacheControlActivity.ClearCacheButtonInternal.$r8$lambda$UDpypPP37Y0E3UtNqXWab46cjrU(zArr, clearingCacheView, jArr, bottomSheet);
                        }
                    });
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doClearCache$2(ClearingCacheView clearingCacheView, float[] fArr, boolean[] zArr) {
            clearingCacheView.setProgress(fArr[0]);
            if (zArr[0]) {
                CacheControlActivity.this.updateRows();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doClearCache$3(boolean[] zArr, long[] jArr, BottomSheet bottomSheet) {
            if (zArr[0]) {
                return;
            }
            jArr[0] = System.currentTimeMillis();
            CacheControlActivity.this.showDialog(bottomSheet);
        }

        public static /* synthetic */ void $r8$lambda$jiEY1mweDAysKlRZVBoQ2OpeaxU(float[] fArr, boolean[] zArr, Runnable runnable, Float f, Boolean bool) {
            fArr[0] = f.floatValue();
            zArr[0] = bool.booleanValue();
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(runnable);
        }

        public static /* synthetic */ void $r8$lambda$UDpypPP37Y0E3UtNqXWab46cjrU(boolean[] zArr, ClearingCacheView clearingCacheView, long[] jArr, BottomSheet bottomSheet) {
            zArr[0] = true;
            clearingCacheView.setProgress(1.0f);
            if (jArr[0] > 0) {
                Objects.requireNonNull(bottomSheet);
                AndroidUtilities.runOnUIThread(new BottomSheet$$ExternalSyntheticLambda7(bottomSheet), Math.max(0L, 1000 - (System.currentTimeMillis() - jArr[0])));
            } else {
                bottomSheet.dismiss();
            }
        }

        public void updateSize() {
            setSize(CacheControlActivity.this.isAllSectionsSelected(), (CacheControlActivity.this.selected[0] ? CacheControlActivity.this.photoSize : 0L) + (CacheControlActivity.this.selected[1] ? CacheControlActivity.this.videoSize : 0L) + (CacheControlActivity.this.selected[2] ? CacheControlActivity.this.documentsSize : 0L) + (CacheControlActivity.this.selected[3] ? CacheControlActivity.this.musicSize : 0L) + (CacheControlActivity.this.selected[4] ? CacheControlActivity.this.audioSize : 0L) + (CacheControlActivity.this.selected[5] ? CacheControlActivity.this.storiesSize : 0L) + (CacheControlActivity.this.selected[6] ? CacheControlActivity.this.stickersCacheSize : 0L) + (CacheControlActivity.this.selected[7] ? CacheControlActivity.this.cacheSize : 0L) + (CacheControlActivity.this.selected[8] ? CacheControlActivity.this.cacheTempSize : 0L) + (CacheControlActivity.this.selected[9] ? CacheControlActivity.this.logsSize : 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAllSectionsSelected() {
        for (int i = 0; i < this.itemInners.size(); i++) {
            ItemInner itemInner = this.itemInners.get(i);
            if (itemInner.viewType == 11) {
                int length = itemInner.index;
                if (length < 0) {
                    length = this.selected.length - 1;
                }
                if (!this.selected[length]) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class ClearCacheButton extends FrameLayout {
        FrameLayout button;
        TextView rtlTextView;
        AnimatedTextView.AnimatedTextDrawable textView;
        AnimatedTextView.AnimatedTextDrawable valueTextView;

        public ClearCacheButton(Context context) {
            super(context);
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.CacheControlActivity.ClearCacheButton.1
                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    int measuredWidth = (((getMeasuredWidth() - AndroidUtilities.dp(8.0f)) - ((int) ClearCacheButton.this.valueTextView.getCurrentWidth())) + ((int) ClearCacheButton.this.textView.getCurrentWidth())) / 2;
                    if (LocaleController.isRTL) {
                        super.dispatchDraw(canvas);
                        return;
                    }
                    ClearCacheButton.this.textView.setBounds(0, 0, measuredWidth, getHeight());
                    ClearCacheButton.this.textView.draw(canvas);
                    ClearCacheButton.this.valueTextView.setBounds(measuredWidth + AndroidUtilities.dp(8.0f), 0, getWidth(), getHeight());
                    ClearCacheButton.this.valueTextView.draw(canvas);
                }

                @Override // android.view.View
                public boolean verifyDrawable(Drawable drawable) {
                    ClearCacheButton clearCacheButton = ClearCacheButton.this;
                    return drawable == clearCacheButton.valueTextView || drawable == clearCacheButton.textView || super.verifyDrawable(drawable);
                }

                @Override // android.view.View
                public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setClassName("android.widget.Button");
                }

                @Override // android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    super.onInterceptTouchEvent(motionEvent);
                    return true;
                }
            };
            this.button = frameLayout;
            int i = Theme.key_featuredStickers_addButton;
            frameLayout.setBackground(Theme.AdaptiveRipple.filledRectByKey(i, 24.0f));
            this.button.setImportantForAccessibility(1);
            ScaleStateListAnimator.apply(this.button, 0.02f, 1.2f);
            if (LocaleController.isRTL) {
                TextView textView = new TextView(context);
                this.rtlTextView = textView;
                textView.setText(LocaleController.getString(C2573R.string.ClearCache));
                this.rtlTextView.setGravity(17);
                this.rtlTextView.setTextSize(1, 14.0f);
                this.rtlTextView.setTypeface(AndroidUtilities.bold());
                this.rtlTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
                this.button.addView(this.rtlTextView, LayoutHelper.createFrame(-2, -1, 17));
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.textView = animatedTextDrawable;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            animatedTextDrawable.setAnimationProperties(0.25f, 0L, 300L, cubicBezierInterpolator);
            this.textView.setCallback(this.button);
            this.textView.setTextSize(AndroidUtilities.dp(14.0f));
            this.textView.setText(LocaleController.getString(C2573R.string.ClearCache));
            this.textView.setGravity(5);
            this.textView.setTypeface(AndroidUtilities.bold());
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.textView;
            int i2 = Theme.key_featuredStickers_buttonText;
            animatedTextDrawable2.setTextColor(Theme.getColor(i2));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable3 = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.valueTextView = animatedTextDrawable3;
            animatedTextDrawable3.setAnimationProperties(0.25f, 0L, 300L, cubicBezierInterpolator);
            this.valueTextView.setCallback(this.button);
            this.valueTextView.setTextSize(AndroidUtilities.dp(14.0f));
            this.valueTextView.setTypeface(AndroidUtilities.bold());
            this.valueTextView.setTextColor(Theme.blendOver(Theme.getColor(i), Theme.multAlpha(Theme.getColor(i2), 0.7f)));
            this.valueTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.button.setContentDescription(TextUtils.concat(this.textView.getText(), "\t", this.valueTextView.getText()));
            addView(this.button, LayoutHelper.createFrame(-1, 48.0f, 119, 16.0f, 16.0f, 16.0f, 16.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        public void setSize(boolean z, long j) {
            String string;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.textView;
            if (z) {
                string = LocaleController.getString(C2573R.string.ClearCache);
            } else {
                string = LocaleController.getString(C2573R.string.ClearSelectedCache);
            }
            animatedTextDrawable.setText(string);
            this.valueTextView.setText(j <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : AndroidUtilities.formatFileSize(j));
            setDisabled(j <= 0);
            this.button.invalidate();
            this.button.setContentDescription(TextUtils.concat(this.textView.getText(), "\t", this.valueTextView.getText()));
        }

        public void setDisabled(boolean z) {
            this.button.animate().cancel();
            this.button.animate().alpha(z ? 0.65f : 1.0f).start();
            this.button.setClickable(!z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOtherSelected() {
        int i;
        int length = this.selected.length;
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < this.itemInners.size(); i2++) {
            ItemInner itemInner = this.itemInners.get(i2);
            if (itemInner.viewType == 11 && !itemInner.pad && (i = itemInner.index) >= 0) {
                zArr[i] = true;
            }
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (!zArr[i3] && !this.selected[i3]) {
                return false;
            }
        }
        return true;
    }

    private void toggleSection(ItemInner itemInner, View view) {
        int childAdapterPosition;
        int i = itemInner.index;
        if (i < 0) {
            toggleOtherSelected(view);
            return;
        }
        if (this.selected[i] && sectionsSelected() <= 1) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            if (view != null) {
                AndroidUtilities.shakeViewSpring(view, -3.0f);
                return;
            }
            return;
        }
        boolean z = view instanceof CheckBoxCell;
        boolean[] zArr = this.selected;
        int i2 = 0;
        if (z) {
            int i3 = itemInner.index;
            boolean z2 = !zArr[i3];
            zArr[i3] = z2;
            ((CheckBoxCell) view).setChecked(z2, true);
        } else {
            zArr[itemInner.index] = !zArr[r8];
            int iIndexOf = this.itemInners.indexOf(itemInner);
            if (iIndexOf >= 0) {
                for (int i4 = 0; i4 < this.listView.getChildCount(); i4++) {
                    View childAt = this.listView.getChildAt(i4);
                    if ((childAt instanceof CheckBoxCell) && iIndexOf == this.listView.getChildAdapterPosition(childAt)) {
                        ((CheckBoxCell) childAt).setChecked(this.selected[itemInner.index], true);
                    }
                }
            }
        }
        if (itemInner.pad) {
            while (true) {
                if (i2 >= this.listView.getChildCount()) {
                    break;
                }
                View childAt2 = this.listView.getChildAt(i2);
                if ((childAt2 instanceof CheckBoxCell) && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt2)) >= 0 && childAdapterPosition < this.itemInners.size() && this.itemInners.get(childAdapterPosition).index < 0) {
                    ((CheckBoxCell) childAt2).setChecked(isOtherSelected(), true);
                    break;
                }
                i2++;
            }
        }
        updateChart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleOtherSelected(View view) {
        int i;
        int childAdapterPosition;
        int i2;
        int i3;
        boolean zIsOtherSelected = isOtherSelected();
        if (zIsOtherSelected) {
            for (int i4 = 0; i4 < this.itemInners.size(); i4++) {
                ItemInner itemInner = this.itemInners.get(i4);
                if (itemInner.viewType != 11 || itemInner.pad || (i3 = itemInner.index) < 0 || !this.selected[i3]) {
                }
            }
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            if (view != null) {
                AndroidUtilities.shakeViewSpring(view, -3.0f);
                return;
            }
            return;
        }
        if (this.collapsed) {
            int length = this.selected.length;
            boolean[] zArr = new boolean[length];
            for (int i5 = 0; i5 < this.itemInners.size(); i5++) {
                ItemInner itemInner2 = this.itemInners.get(i5);
                if (itemInner2.viewType == 11 && !itemInner2.pad && (i2 = itemInner2.index) >= 0) {
                    zArr[i2] = true;
                }
            }
            for (int i6 = 0; i6 < length; i6++) {
                if (!zArr[i6]) {
                    this.selected[i6] = !zIsOtherSelected;
                }
            }
        } else {
            for (int i7 = 0; i7 < this.itemInners.size(); i7++) {
                ItemInner itemInner3 = this.itemInners.get(i7);
                if (itemInner3.viewType == 11 && itemInner3.pad && (i = itemInner3.index) >= 0) {
                    this.selected[i] = !zIsOtherSelected;
                }
            }
        }
        for (int i8 = 0; i8 < this.listView.getChildCount(); i8++) {
            View childAt = this.listView.getChildAt(i8);
            if ((childAt instanceof CheckBoxCell) && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt)) >= 0) {
                ItemInner itemInner4 = this.itemInners.get(childAdapterPosition);
                if (itemInner4.viewType == 11) {
                    int i9 = itemInner4.index;
                    if (i9 < 0) {
                        ((CheckBoxCell) childAt).setChecked(!zIsOtherSelected, true);
                    } else {
                        ((CheckBoxCell) childAt).setChecked(this.selected[i9], true);
                    }
                }
            }
        }
        updateChart();
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class ListAdapter extends AdapterWithDiffUtils {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() != CacheControlActivity.this.migrateOldFolderRow) {
                return (viewHolder.getItemViewType() == 2 && CacheControlActivity.this.totalSize > 0 && !CacheControlActivity.this.calculating) || viewHolder.getItemViewType() == 5 || viewHolder.getItemViewType() == 7 || viewHolder.getItemViewType() == 11;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CacheControlActivity.this.itemInners.size();
        }

        public static /* synthetic */ void $r8$lambda$MneyMouiRs9T1ldLrg7wDq6TCTc(int i) {
            if (i == 0) {
                SharedConfig.setKeepMedia(4);
                return;
            }
            if (i == 1) {
                SharedConfig.setKeepMedia(3);
                return;
            }
            if (i == 2) {
                SharedConfig.setKeepMedia(0);
            } else if (i == 3) {
                SharedConfig.setKeepMedia(1);
            } else if (i == 4) {
                SharedConfig.setKeepMedia(2);
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.CacheControlActivity$ListAdapter$1 */
        public class C29431 extends CacheChart {
            public static /* synthetic */ int $r8$lambda$iMXUJM708KRukDjxcnPvpwfmnk0(int i) {
                return i;
            }

            @Override // org.telegram.ui.Components.CacheChart
            public void onSectionClick(int i) {
            }

            public C29431(Context context) {
                super(context);
            }

            @Override // org.telegram.ui.Components.CacheChart
            public void onSectionDown(int i, boolean z) {
                if (!z) {
                    CacheControlActivity.this.listView.removeHighlightRow();
                    return;
                }
                final int i2 = -1;
                if (i == 8) {
                    i = -1;
                }
                int i3 = 0;
                while (true) {
                    if (i3 < CacheControlActivity.this.itemInners.size()) {
                        ItemInner itemInner = (ItemInner) CacheControlActivity.this.itemInners.get(i3);
                        if (itemInner != null && itemInner.viewType == 11 && itemInner.index == i) {
                            i2 = i3;
                            break;
                        }
                        i3++;
                    } else {
                        break;
                    }
                }
                ListAdapter listAdapter = ListAdapter.this;
                if (i2 >= 0) {
                    CacheControlActivity.this.listView.highlightRow(new RecyclerListView.IntReturnCallback() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$1$$ExternalSyntheticLambda0
                        @Override // org.telegram.ui.Components.RecyclerListView.IntReturnCallback
                        public final int run() {
                            return CacheControlActivity.ListAdapter.C29431.$r8$lambda$iMXUJM708KRukDjxcnPvpwfmnk0(i2);
                        }
                    }, 0);
                } else {
                    CacheControlActivity.this.listView.removeHighlightRow();
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textSettingsCell;
            View view;
            View view2;
            if (i == 0) {
                textSettingsCell = new TextSettingsCell(this.mContext);
            } else {
                switch (i) {
                    case 2:
                        textSettingsCell = new StorageUsageView(this.mContext);
                        break;
                    case 3:
                        textSettingsCell = new HeaderCell(this.mContext);
                        break;
                    case 4:
                        SlideChooseView slideChooseView = new SlideChooseView(this.mContext);
                        slideChooseView.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda2
                            @Override // org.telegram.ui.Components.SlideChooseView.Callback
                            public final void onOptionSelected(int i2) {
                                CacheControlActivity.ListAdapter.$r8$lambda$MneyMouiRs9T1ldLrg7wDq6TCTc(i2);
                            }
                        });
                        int i2 = SharedConfig.keepMedia;
                        slideChooseView.setOptions(i2 == 3 ? 1 : i2 == 4 ? 0 : i2 + 2, LocaleController.formatPluralString("Days", 3, new Object[0]), LocaleController.formatPluralString("Weeks", 1, new Object[0]), LocaleController.formatPluralString("Months", 1, new Object[0]), LocaleController.getString(C2573R.string.KeepMediaForever));
                        textSettingsCell = slideChooseView;
                        break;
                    case 5:
                        textSettingsCell = new UserCell(CacheControlActivity.this.getContext(), CacheControlActivity.this.getResourceProvider());
                        break;
                    case 6:
                        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(CacheControlActivity.this.getContext());
                        flickerLoadingView.setIsSingleCell(true);
                        flickerLoadingView.setItemsCount(3);
                        flickerLoadingView.setIgnoreHeightCheck(true);
                        flickerLoadingView.setViewType(25);
                        textSettingsCell = flickerLoadingView;
                        break;
                    case 7:
                        textSettingsCell = new TextCell(this.mContext);
                        break;
                    case 8:
                        CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                        CachedMediaLayout cachedMediaLayout = new CachedMediaLayout(this.mContext, CacheControlActivity.this) { // from class: org.telegram.ui.CacheControlActivity.ListAdapter.2
                            @Override // org.telegram.ui.CachedMediaLayout, android.widget.FrameLayout, android.view.View
                            public void onMeasure(int i3, int i4) {
                                super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i4) - (ActionBar.getCurrentActionBarHeight() / 2)) - AndroidUtilities.dp(12.0f), TLObject.FLAG_30));
                            }

                            @Override // org.telegram.ui.CachedMediaLayout
                            public void showActionMode(boolean z) {
                                ListAdapter listAdapter = ListAdapter.this;
                                if (!z) {
                                    ((BaseFragment) CacheControlActivity.this).actionBar.hideActionMode();
                                } else {
                                    CacheControlActivity.this.updateActionBar(true);
                                    ((BaseFragment) CacheControlActivity.this).actionBar.showActionMode();
                                }
                            }
                        };
                        cacheControlActivity.cachedMediaLayout = cachedMediaLayout;
                        CacheControlActivity.this.cachedMediaLayout.setDelegate(new CachedMediaLayout.Delegate() { // from class: org.telegram.ui.CacheControlActivity.ListAdapter.3
                            @Override // org.telegram.ui.CachedMediaLayout.Delegate
                            public void onItemSelected(DialogFileEntities dialogFileEntities, CacheModel.FileInfo fileInfo, boolean z) {
                                if (dialogFileEntities == null) {
                                    if (fileInfo != null) {
                                        CacheControlActivity.this.cacheModel.toggleSelect(fileInfo);
                                        CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                                        CacheControlActivity.this.updateActionMode();
                                        return;
                                    }
                                    return;
                                }
                                if (CacheControlActivity.this.cacheModel.getSelectedFiles() > 0 || z) {
                                    CacheControlActivity.this.cacheModel.toggleSelect(dialogFileEntities);
                                    CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                                    CacheControlActivity.this.updateActionMode();
                                    return;
                                }
                                CacheControlActivity.this.showClearCacheDialog(dialogFileEntities);
                            }

                            @Override // org.telegram.ui.CachedMediaLayout.Delegate
                            public void clear() {
                                CacheControlActivity.this.clearSelectedFiles();
                            }

                            @Override // org.telegram.ui.CachedMediaLayout.Delegate
                            public void clearSelection() {
                                CacheModel cacheModel = CacheControlActivity.this.cacheModel;
                                if (cacheModel == null || cacheModel.getSelectedFiles() <= 0) {
                                    return;
                                }
                                CacheControlActivity.this.cacheModel.clearSelection();
                                if (CacheControlActivity.this.cachedMediaLayout != null) {
                                    CacheControlActivity.this.cachedMediaLayout.showActionMode(false);
                                    CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                                }
                            }
                        });
                        CacheControlActivity.this.cachedMediaLayout.setCacheModel(CacheControlActivity.this.cacheModel);
                        CacheControlActivity.this.nestedSizeNotifierLayout.setChildLayout(CacheControlActivity.this.cachedMediaLayout, AndroidUtilities.dp(40.0f));
                        cachedMediaLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                        view2 = cachedMediaLayout;
                        textSettingsCell = view2;
                        break;
                    case 9:
                        CacheControlActivity cacheControlActivity2 = CacheControlActivity.this;
                        C29431 c29431 = new C29431(this.mContext);
                        cacheControlActivity2.cacheChart = c29431;
                        c29431.setTag(-33024);
                        view = c29431;
                        textSettingsCell = view;
                        break;
                    case 10:
                        CacheControlActivity cacheControlActivity3 = CacheControlActivity.this;
                        CacheChartHeader cacheChartHeader = CacheControlActivity.this.new CacheChartHeader(this.mContext);
                        cacheControlActivity3.cacheChartHeader = cacheChartHeader;
                        cacheChartHeader.setTag(-33024);
                        view = cacheChartHeader;
                        textSettingsCell = view;
                        break;
                    case 11:
                        textSettingsCell = new CheckBoxCell(this.mContext, 4, 21, CacheControlActivity.this.getResourceProvider());
                        break;
                    case 12:
                        FlickerLoadingView flickerLoadingView2 = new FlickerLoadingView(CacheControlActivity.this.getContext());
                        flickerLoadingView2.setIsSingleCell(true);
                        flickerLoadingView2.setItemsCount(1);
                        flickerLoadingView2.setIgnoreHeightCheck(true);
                        flickerLoadingView2.setViewType(26);
                        textSettingsCell = flickerLoadingView2;
                        break;
                    case 13:
                        CacheControlActivity cacheControlActivity4 = CacheControlActivity.this;
                        ClearCacheButtonInternal clearCacheButtonInternal = CacheControlActivity.this.new ClearCacheButtonInternal(this.mContext);
                        cacheControlActivity4.clearCacheButton = clearCacheButtonInternal;
                        view2 = clearCacheButtonInternal;
                        textSettingsCell = view2;
                        break;
                    case 14:
                        SlideChooseView slideChooseView2 = new SlideChooseView(this.mContext);
                        float f = ((int) ((CacheControlActivity.this.totalDeviceSize / 1024) / 1024)) / 1000.0f;
                        final ArrayList arrayList = new ArrayList();
                        if (f <= 17.0f) {
                            arrayList.add(2);
                        }
                        if (f > 5.0f) {
                            arrayList.add(5);
                        }
                        if (f > 16.0f) {
                            arrayList.add(16);
                        }
                        if (f > 32.0f) {
                            arrayList.add(32);
                        }
                        arrayList.add(Integer.MAX_VALUE);
                        String[] strArr = new String[arrayList.size()];
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            if (((Integer) arrayList.get(i3)).intValue() == 1) {
                                strArr[i3] = String.format("300 MB", new Object[0]);
                            } else if (((Integer) arrayList.get(i3)).intValue() == Integer.MAX_VALUE) {
                                strArr[i3] = LocaleController.getString(C2573R.string.NoLimit);
                            } else {
                                strArr[i3] = String.format("%d GB", arrayList.get(i3));
                            }
                        }
                        slideChooseView2.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda3
                            @Override // org.telegram.ui.Components.SlideChooseView.Callback
                            public final void onOptionSelected(int i4) {
                                SharedConfig.getPreferences().edit().putInt("cache_limit", ((Integer) arrayList.get(i4)).intValue()).apply();
                            }
                        });
                        int iIndexOf = arrayList.indexOf(Integer.valueOf(SharedConfig.getPreferences().getInt("cache_limit", Integer.MAX_VALUE)));
                        if (iIndexOf < 0) {
                            iIndexOf = arrayList.size() - 1;
                        }
                        slideChooseView2.setOptions(iIndexOf, strArr);
                        textSettingsCell = slideChooseView2;
                        break;
                    default:
                        textSettingsCell = new TextInfoPrivacyCell(this.mContext);
                        break;
                }
            }
            return new RecyclerListView.Holder(textSettingsCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean zIsOtherSelected;
            ItemInner itemInner = (ItemInner) CacheControlActivity.this.itemInners.get(i);
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (i == CacheControlActivity.this.migrateOldFolderRow) {
                    textSettingsCell.setTextAndValue(LocaleController.getString(C2573R.string.MigrateOldFolder), null, false);
                    return;
                }
                return;
            }
            if (itemViewType == 1) {
                ((TextInfoPrivacyCell) viewHolder.itemView).setText(AndroidUtilities.replaceTags(itemInner.text));
                return;
            }
            if (itemViewType == 2) {
                ((StorageUsageView) viewHolder.itemView).setStorageUsage(CacheControlActivity.this.calculating, CacheControlActivity.this.databaseSize, CacheControlActivity.this.totalSize, CacheControlActivity.this.totalDeviceFreeSize, CacheControlActivity.this.totalDeviceSize);
                return;
            }
            if (itemViewType == 3) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                headerCell.setText(((ItemInner) CacheControlActivity.this.itemInners.get(i)).headerName);
                headerCell.setTopMargin(((ItemInner) CacheControlActivity.this.itemInners.get(i)).headerTopMargin);
                headerCell.setBottomMargin(((ItemInner) CacheControlActivity.this.itemInners.get(i)).headerBottomMargin);
                return;
            }
            if (itemViewType != 7) {
                switch (itemViewType) {
                    case 9:
                        CacheControlActivity.this.updateChart();
                        break;
                    case 10:
                        if (CacheControlActivity.this.cacheChartHeader != null && !CacheControlActivity.this.calculating) {
                            CacheChartHeader cacheChartHeader = CacheControlActivity.this.cacheChartHeader;
                            z = CacheControlActivity.this.totalSize > 0;
                            float f = 0.0f;
                            float f2 = CacheControlActivity.this.totalDeviceSize <= 0 ? 0.0f : CacheControlActivity.this.totalSize / CacheControlActivity.this.totalDeviceSize;
                            if (CacheControlActivity.this.totalDeviceFreeSize > 0 && CacheControlActivity.this.totalDeviceSize > 0) {
                                f = (CacheControlActivity.this.totalDeviceSize - CacheControlActivity.this.totalDeviceFreeSize) / CacheControlActivity.this.totalDeviceSize;
                            }
                            cacheChartHeader.setData(z, f2, f);
                            break;
                        }
                        break;
                    case 11:
                        final CheckBoxCell checkBoxCell = (CheckBoxCell) viewHolder.itemView;
                        int i2 = itemInner.index;
                        CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                        if (i2 < 0) {
                            zIsOtherSelected = cacheControlActivity.isOtherSelected();
                        } else {
                            zIsOtherSelected = cacheControlActivity.selected[itemInner.index];
                        }
                        CacheControlActivity cacheControlActivity2 = CacheControlActivity.this;
                        CharSequence charSequence = itemInner.headerName;
                        int[] iArr = cacheControlActivity2.percents;
                        int i3 = itemInner.index;
                        CharSequence checkBoxTitle = cacheControlActivity2.getCheckBoxTitle(charSequence, iArr[i3 < 0 ? 9 : i3], i3 < 0);
                        String fileSize = AndroidUtilities.formatFileSize(itemInner.size);
                        if (itemInner.index >= 0 ? !itemInner.last : !CacheControlActivity.this.collapsed) {
                            z = true;
                        }
                        checkBoxCell.setText(checkBoxTitle, fileSize, zIsOtherSelected, z);
                        checkBoxCell.setCheckBoxColor(itemInner.colorKey, Theme.key_windowBackgroundWhiteGrayIcon, Theme.key_checkboxCheck);
                        checkBoxCell.setCollapsed(itemInner.index < 0 ? Boolean.valueOf(CacheControlActivity.this.collapsed) : null);
                        if (itemInner.index == -1) {
                            checkBoxCell.setOnSectionsClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda0
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$onBindViewHolder$2(view);
                                }
                            }, new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda1
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    this.f$0.lambda$onBindViewHolder$3(checkBoxCell, view);
                                }
                            });
                        } else {
                            checkBoxCell.setOnSectionsClickListener(null, null);
                        }
                        checkBoxCell.setPad(itemInner.pad ? 1 : 0);
                        break;
                }
                return;
            }
            TextCell textCell = (TextCell) viewHolder.itemView;
            CacheByChatsController cacheByChatsController = CacheControlActivity.this.getMessagesController().getCacheByChatsController();
            int i4 = itemInner.keepMediaType;
            int size = cacheByChatsController.getKeepMediaExceptions(((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType).size();
            String pluralString = size > 0 ? LocaleController.formatPluralString("ExceptionShort", size, Integer.valueOf(size)) : null;
            String keepMediaString = CacheByChatsController.getKeepMediaString(cacheByChatsController.getKeepMedia(i4));
            if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType == 0) {
                textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2573R.string.PrivateChats), keepMediaString, true, C2573R.drawable.msg_filled_menu_users, -11565578, -13276952, true);
            } else if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType == 1) {
                textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2573R.string.GroupChats), keepMediaString, true, C2573R.drawable.msg_filled_menu_groups, -11154873, -14175180, true);
            } else if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType == 2) {
                textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2573R.string.CacheChannels), keepMediaString, true, C2573R.drawable.msg_filled_menu_channels, -1007845, -1996271, true);
            } else if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType == 3) {
                textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2573R.string.CacheStories), keepMediaString, false, C2573R.drawable.msg_filled_stories, -765355, -2148011, false);
            }
            textCell.setSubtitle(pluralString);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$2(View view) {
            CacheControlActivity.this.collapsed = !r2.collapsed;
            CacheControlActivity.this.updateRows();
            CacheControlActivity.this.updateChart();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$3(CheckBoxCell checkBoxCell, View view) {
            CacheControlActivity.this.toggleOtherSelected(checkBoxCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return ((ItemInner) CacheControlActivity.this.itemInners.get(i)).viewType;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionMode() {
        String pluralString;
        int selectedFiles = this.cacheModel.getSelectedFiles();
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        int i = 0;
        if (selectedFiles <= 0) {
            cachedMediaLayout.showActionMode(false);
            return;
        }
        if (cachedMediaLayout != null) {
            boolean zIsEmpty = this.cacheModel.selectedDialogs.isEmpty();
            CacheModel cacheModel = this.cacheModel;
            if (zIsEmpty) {
                pluralString = LocaleController.formatPluralString("Files", cacheModel.getSelectedFiles(), Integer.valueOf(this.cacheModel.getSelectedFiles()));
            } else {
                ArrayList<DialogFileEntities> arrayList = cacheModel.entities;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    DialogFileEntities dialogFileEntities = arrayList.get(i2);
                    i2++;
                    DialogFileEntities dialogFileEntities2 = dialogFileEntities;
                    if (this.cacheModel.selectedDialogs.contains(Long.valueOf(dialogFileEntities2.dialogId))) {
                        i += dialogFileEntities2.filesCount;
                    }
                }
                int selectedFiles2 = this.cacheModel.getSelectedFiles() - i;
                CacheModel cacheModel2 = this.cacheModel;
                if (selectedFiles2 <= 0) {
                    pluralString = LocaleController.formatPluralString("Chats", cacheModel2.selectedDialogs.size(), Integer.valueOf(this.cacheModel.selectedDialogs.size()));
                } else {
                    pluralString = String.format("%s, %s", LocaleController.formatPluralString("Chats", cacheModel2.selectedDialogs.size(), Integer.valueOf(this.cacheModel.selectedDialogs.size())), LocaleController.formatPluralString("Files", selectedFiles2, Integer.valueOf(selectedFiles2)));
                }
            }
            this.actionModeTitle.setText(AndroidUtilities.formatFileSize(this.cacheModel.getSelectedFilesSize()), !LocaleController.isRTL);
            this.actionModeSubtitle.setText(pluralString, !LocaleController.isRTL);
            this.cachedMediaLayout.showActionMode(true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$25();
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, SlideChooseView.class, StorageUsageView.class, HeaderCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        int i2 = Theme.key_windowBackgroundWhiteValueText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"paintFill"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_player_progressBackground));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"paintProgress"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_player_progress));
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"telegramCacheTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"freeSizeTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"calculationgTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{CheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{CheckBoxCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{CheckBoxCell.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{StorageDiagramView.class}, null, null, null, i));
        arrayList.add(new ThemeDescription((View) null, 0, new Class[]{TextCheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_dialogBackground));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_blue));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_green));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_red));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_golden));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_lightblue));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_lightgreen));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_orange));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, Theme.key_statisticChartLine_indigo));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$25() {
        BottomSheet bottomSheet = this.bottomSheet;
        if (bottomSheet != null) {
            bottomSheet.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
        }
        View view = this.actionTextView;
        if (view != null) {
            view.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 4.0f));
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class UserCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        private boolean canDisable;
        protected CheckBox2 checkBox;
        public DialogFileEntities dialogFileEntities;
        private BackupImageView imageView;
        private boolean needDivider;
        private Theme.ResourcesProvider resourcesProvider;
        private TextView textView;
        private AnimatedTextView valueTextView;

        public UserCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setSingleLine();
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setTextSize(1, 16.0f);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView2, LayoutHelper.createFrame(-1, -1.0f, (z ? 5 : 3) | 48, z ? 21.0f : 72.0f, 0.0f, z ? 72.0f : 21.0f, 0.0f));
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, !LocaleController.isRTL);
            this.valueTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.55f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.valueTextView.setTextSize(AndroidUtilities.dp(16.0f));
            this.valueTextView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
            this.valueTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText, resourcesProvider));
            AnimatedTextView animatedTextView2 = this.valueTextView;
            boolean z2 = LocaleController.isRTL;
            addView(animatedTextView2, LayoutHelper.createFrame(-2, -1.0f, (z2 ? 3 : 5) | 48, z2 ? 21.0f : 72.0f, 0.0f, z2 ? 72.0f : 21.0f, 0.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.getAvatarDrawable().setScaleSize(0.8f);
            addView(this.imageView, LayoutHelper.createFrame(38, 38.0f, (LocaleController.isRTL ? 5 : 3) | 16, 17.0f, 0.0f, 17.0f, 0.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(50.0f) + (this.needDivider ? 1 : 0));
            int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.dp(34.0f);
            int i3 = measuredWidth / 2;
            if (this.imageView.getVisibility() == 0) {
                this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(38.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(38.0f), TLObject.FLAG_30));
            }
            if (this.valueTextView.getVisibility() == 0) {
                this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
                measuredWidth = (measuredWidth - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.dp(8.0f);
            }
            int measuredWidth2 = this.valueTextView.getMeasuredWidth() + AndroidUtilities.dp(12.0f);
            boolean z = LocaleController.isRTL;
            TextView textView = this.textView;
            if (z) {
                ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).leftMargin = measuredWidth2;
            } else {
                ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).rightMargin = measuredWidth2;
            }
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth - measuredWidth2, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), TLObject.FLAG_30));
            CheckBox2 checkBox2 = this.checkBox;
            if (checkBox2 != null) {
                checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), TLObject.FLAG_30));
            }
        }

        public BackupImageView getImageView() {
            return this.imageView;
        }

        public TextView getTextView() {
            return this.textView;
        }

        public void setCanDisable(boolean z) {
            this.canDisable = z;
        }

        public AnimatedTextView getValueTextView() {
            return this.valueTextView;
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
        }

        public void setTextValueColor(int i) {
            this.valueTextView.setTextColor(i);
        }

        public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z) {
            setTextAndValue(charSequence, charSequence2, false, z);
        }

        public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
            this.textView.setText(Emoji.replaceEmoji(charSequence, this.textView.getPaint().getFontMetricsInt(), false));
            AnimatedTextView animatedTextView = this.valueTextView;
            if (charSequence2 != null) {
                animatedTextView.setText(charSequence2, z);
                this.valueTextView.setVisibility(0);
            } else {
                animatedTextView.setVisibility(4);
            }
            this.needDivider = z2;
            setWillNotDraw(!z2);
            requestLayout();
        }

        @Override // android.view.View
        public void setEnabled(boolean z) {
            super.setEnabled(z);
            float f = 1.0f;
            this.textView.setAlpha((z || !this.canDisable) ? 1.0f : 0.5f);
            if (this.valueTextView.getVisibility() == 0) {
                AnimatedTextView animatedTextView = this.valueTextView;
                if (!z && this.canDisable) {
                    f = 0.5f;
                }
                animatedTextView.setAlpha(f);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.needDivider) {
                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(72.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(72.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            String str;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            StringBuilder sb = new StringBuilder();
            sb.append((Object) this.textView.getText());
            AnimatedTextView animatedTextView = this.valueTextView;
            if (animatedTextView == null || animatedTextView.getVisibility() != 0) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str = "\n" + ((Object) this.valueTextView.getText());
            }
            sb.append(str);
            accessibilityNodeInfo.setText(sb.toString());
            accessibilityNodeInfo.setEnabled(isEnabled());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            TextView textView;
            if (i != NotificationCenter.emojiLoaded || (textView = this.textView) == null) {
                return;
            }
            textView.invalidate();
        }

        public void setChecked(boolean z, boolean z2) {
            CheckBox2 checkBox2 = this.checkBox;
            if (checkBox2 != null || z) {
                if (checkBox2 == null) {
                    CheckBox2 checkBox22 = new CheckBox2(getContext(), 21, this.resourcesProvider);
                    this.checkBox = checkBox22;
                    checkBox22.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                    this.checkBox.setDrawUnchecked(false);
                    this.checkBox.setDrawBackgroundAsArc(3);
                    addView(this.checkBox, LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 5 : 3) | 48, 38.0f, 25.0f, 38.0f, 0.0f));
                }
                this.checkBox.setChecked(z, z2);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        FilesMigrationService.FilesMigrationBottomSheet filesMigrationBottomSheet;
        if (i == 4) {
            for (int i2 : iArr) {
                if (i2 != 0) {
                    return;
                }
            }
            if (Build.VERSION.SDK_INT < 30 || (filesMigrationBottomSheet = FilesMigrationService.filesMigrationBottomSheet) == null) {
                return;
            }
            filesMigrationBottomSheet.migrateOldFolder();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class DialogFileEntities {
        public long dialogId;
        public final SparseArray<FileEntities> entitiesByType = new SparseArray<>();
        int filesCount;
        long totalSize;

        public DialogFileEntities(long j) {
            this.dialogId = j;
        }

        public void addFile(CacheModel.FileInfo fileInfo, int i) {
            FileEntities fileEntities = this.entitiesByType.get(i, null);
            if (fileEntities == null) {
                fileEntities = new FileEntities();
                this.entitiesByType.put(i, fileEntities);
            }
            fileEntities.count++;
            long j = fileInfo.size;
            fileEntities.totalSize += j;
            this.totalSize += j;
            this.filesCount++;
            fileEntities.files.add(fileInfo);
        }

        public void merge(DialogFileEntities dialogFileEntities) {
            for (int i = 0; i < dialogFileEntities.entitiesByType.size(); i++) {
                int iKeyAt = dialogFileEntities.entitiesByType.keyAt(i);
                FileEntities fileEntitiesValueAt = dialogFileEntities.entitiesByType.valueAt(i);
                FileEntities fileEntities = this.entitiesByType.get(iKeyAt, null);
                if (fileEntities == null) {
                    fileEntities = new FileEntities();
                    this.entitiesByType.put(iKeyAt, fileEntities);
                }
                fileEntities.count += fileEntitiesValueAt.count;
                fileEntities.totalSize += fileEntitiesValueAt.totalSize;
                this.totalSize += fileEntitiesValueAt.totalSize;
                fileEntities.files.addAll(fileEntitiesValueAt.files);
            }
            this.filesCount += dialogFileEntities.filesCount;
        }

        public void removeFile(CacheModel.FileInfo fileInfo) {
            FileEntities fileEntities = this.entitiesByType.get(fileInfo.type, null);
            if (fileEntities != null && fileEntities.files.remove(fileInfo)) {
                fileEntities.count--;
                long j = fileEntities.totalSize;
                long j2 = fileInfo.size;
                fileEntities.totalSize = j - j2;
                this.totalSize -= j2;
                this.filesCount--;
            }
        }

        public boolean isEmpty() {
            return this.totalSize <= 0;
        }

        public CacheModel createCacheModel() {
            CacheModel cacheModel = new CacheModel(true);
            if (this.entitiesByType.get(0) != null) {
                cacheModel.media.addAll(this.entitiesByType.get(0).files);
            }
            if (this.entitiesByType.get(1) != null) {
                cacheModel.media.addAll(this.entitiesByType.get(1).files);
            }
            if (this.entitiesByType.get(2) != null) {
                cacheModel.documents.addAll(this.entitiesByType.get(2).files);
            }
            if (this.entitiesByType.get(3) != null) {
                cacheModel.music.addAll(this.entitiesByType.get(3).files);
            }
            if (this.entitiesByType.get(4) != null) {
                cacheModel.voice.addAll(this.entitiesByType.get(4).files);
            }
            cacheModel.selectAllFiles();
            cacheModel.sortBySize();
            return cacheModel;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class ItemInner extends AdapterWithDiffUtils.Item {
        int colorKey;
        DialogFileEntities entities;
        int headerBottomMargin;
        CharSequence headerName;
        int headerTopMargin;
        public int index;
        int keepMediaType;
        boolean last;
        public boolean pad;
        public long size;
        String text;

        public ItemInner(int i, String str, DialogFileEntities dialogFileEntities) {
            super(i, true);
            this.headerTopMargin = 15;
            this.headerBottomMargin = 0;
            this.keepMediaType = -1;
            this.headerName = str;
            this.entities = dialogFileEntities;
        }

        public ItemInner(int i, int i2) {
            super(i, true);
            this.headerTopMargin = 15;
            this.headerBottomMargin = 0;
            this.keepMediaType = i2;
        }

        private ItemInner(int i) {
            super(i, true);
            this.headerTopMargin = 15;
            this.headerBottomMargin = 0;
            this.keepMediaType = -1;
        }

        public static ItemInner asCheckBox(CharSequence charSequence, int i, long j, int i2) {
            return asCheckBox(charSequence, i, j, i2, false);
        }

        public static ItemInner asCheckBox(CharSequence charSequence, int i, long j, int i2, boolean z) {
            ItemInner itemInner = new ItemInner(11);
            itemInner.index = i;
            itemInner.headerName = charSequence;
            itemInner.size = j;
            itemInner.colorKey = i2;
            itemInner.last = z;
            return itemInner;
        }

        public static ItemInner asInfo(String str) {
            ItemInner itemInner = new ItemInner(1);
            itemInner.text = str;
            return itemInner;
        }

        public boolean equals(Object obj) {
            DialogFileEntities dialogFileEntities;
            DialogFileEntities dialogFileEntities2;
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ItemInner itemInner = (ItemInner) obj;
                int i = this.viewType;
                if (i == itemInner.viewType) {
                    if (i != 9 && i != 10) {
                        if (i == 5 && (dialogFileEntities = this.entities) != null && (dialogFileEntities2 = itemInner.entities) != null) {
                            return dialogFileEntities.dialogId == dialogFileEntities2.dialogId;
                        }
                        if (i != 8 && i != 4 && i != 2 && i != 0 && i != 13) {
                            if (i == 3) {
                                return Objects.equals(this.headerName, itemInner.headerName);
                            }
                            if (i == 1) {
                                return Objects.equals(this.text, itemInner.text);
                            }
                            return i == 11 ? this.index == itemInner.index && this.size == itemInner.size : i == 7 && this.keepMediaType == itemInner.keepMediaType;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout == null || motionEvent == null) {
            return true;
        }
        Rect rect = AndroidUtilities.rectTmp2;
        cachedMediaLayout.getHitRect(rect);
        if (rect.contains((int) motionEvent.getX(), ((int) motionEvent.getY()) - this.actionBar.getMeasuredHeight())) {
            return this.cachedMediaLayout.viewPagerFixed.isCurrentTabFirst();
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        CacheModel cacheModel = this.cacheModel;
        if (cacheModel == null || cacheModel.selectedFiles.isEmpty()) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.cacheModel.clearSelection();
            CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
            if (cachedMediaLayout != null) {
                cachedMediaLayout.showActionMode(false);
                this.cachedMediaLayout.updateVisibleRows();
            }
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, AndroidUtilities.statusBarHeight + (ActionBar.getCurrentActionBarHeight() / 2), 0, i4);
        this.listView.setClipToPadding(false);
    }
}
