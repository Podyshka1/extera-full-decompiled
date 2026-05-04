package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.function.ToDoubleFunction;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Adapters.SearchAdapterHelper;
import org.telegram.p029ui.Cells.GraySectionCell;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.NotificationsCheckCell;
import org.telegram.p029ui.Cells.RadioColorCell;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextColorCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.TextSettingsCell;
import org.telegram.p029ui.Cells.UserCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ChatNotificationsPopupWrapper;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EmptyTextProgressView;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.NotificationsSettingsActivity;
import org.telegram.p029ui.ProfileNotificationsActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Comparator;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class NotificationsCustomSettingsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private ListAdapter adapter;

    @Keep
    public int addExceptionRow;
    private AnimatorSet animatorSet;
    private ArrayList autoExceptions;
    private int currentType;

    @Keep
    public int deleteExceptionsRow;
    private EmptyTextProgressView emptyView;
    private ArrayList exceptions;
    private HashMap exceptionsDict;
    private int exceptionsEnd;
    private int exceptionsStart;
    public boolean expanded;

    @Keep
    public int importantRow;
    private final ArrayList items;

    @Keep
    public int lightColorRow;
    private RecyclerListView listView;

    @Keep
    public int messagesRow;

    @Keep
    public int newRow;
    private final ArrayList oldItems;
    private final int[] popupOptions;

    @Keep
    public int popupRow;

    @Keep
    public int previewRow;
    private final int[] priorityOptions;

    @Keep
    public int priorityRow;
    private SearchAdapter searchAdapter;
    private boolean searchWas;
    private boolean searching;
    private int settingsEnd;
    private int settingsStart;
    private boolean showAutoExceptions;

    @Keep
    public int showRow;

    @Keep
    public int showSenderRow;

    @Keep
    public int soundRow;
    private boolean storiesAuto;
    private Boolean storiesEnabled;

    @Keep
    public int storiesRow;
    int topicId;
    private final int[] vibrateLabels;

    @Keep
    public int vibrateRow;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public void toggleShowAutoExceptions() {
        if (this.listView == null || this.adapter == null) {
            return;
        }
        this.showAutoExceptions = !this.showAutoExceptions;
        updateRows(true);
    }

    public NotificationsCustomSettingsActivity(int i, ArrayList arrayList, ArrayList arrayList2) {
        this(i, arrayList, arrayList2, false);
    }

    public NotificationsCustomSettingsActivity(int i, ArrayList arrayList, ArrayList arrayList2, boolean z) {
        this.showAutoExceptions = true;
        this.exceptionsDict = new HashMap();
        this.topicId = 0;
        this.vibrateLabels = new int[]{C2888R.string.VibrationDefault, C2888R.string.Short, C2888R.string.VibrationDisabled, C2888R.string.Long, C2888R.string.OnlyIfSilent};
        this.popupOptions = new int[]{C2888R.string.NoPopup, C2888R.string.OnlyWhenScreenOn, C2888R.string.OnlyWhenScreenOff, C2888R.string.AlwaysShowPopup};
        int i2 = C2888R.string.NotificationsPriorityHigh;
        int i3 = C2888R.string.NotificationsPriorityUrgent;
        int i4 = C2888R.string.NotificationsPriorityMedium;
        this.priorityOptions = new int[]{i2, i3, i3, i4, C2888R.string.NotificationsPriorityLow, i4};
        this.newRow = -1;
        this.showRow = -1;
        this.importantRow = -1;
        this.messagesRow = -1;
        this.storiesRow = -1;
        this.previewRow = -1;
        this.showSenderRow = -1;
        this.soundRow = -1;
        this.addExceptionRow = -1;
        this.deleteExceptionsRow = -1;
        this.lightColorRow = -1;
        this.vibrateRow = -1;
        this.popupRow = -1;
        this.priorityRow = -1;
        this.oldItems = new ArrayList();
        this.items = new ArrayList();
        this.currentType = i;
        this.autoExceptions = arrayList2;
        this.exceptions = arrayList;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                NotificationsSettingsActivity.NotificationException notificationException = (NotificationsSettingsActivity.NotificationException) this.exceptions.get(i5);
                this.exceptionsDict.put(Long.valueOf(notificationException.did), notificationException);
            }
        }
        ArrayList arrayList3 = this.autoExceptions;
        if (arrayList3 != null) {
            int size2 = arrayList3.size();
            for (int i6 = 0; i6 < size2; i6++) {
                NotificationsSettingsActivity.NotificationException notificationException2 = (NotificationsSettingsActivity.NotificationException) this.autoExceptions.get(i6);
                this.exceptionsDict.put(Long.valueOf(notificationException2.did), notificationException2);
            }
        }
        if (z) {
            loadExceptions();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        if (this.currentType == 3) {
            if (getNotificationsSettings().contains("EnableAllStories")) {
                this.storiesEnabled = Boolean.valueOf(getNotificationsSettings().getBoolean("EnableAllStories", true));
                this.storiesAuto = false;
                this.showAutoExceptions = false;
            } else {
                this.storiesEnabled = null;
                this.storiesAuto = true;
                this.showAutoExceptions = true;
            }
        }
        updateRows(true);
        return super.onFragmentCreate();
    }

    private static boolean isTop5Peer(int i, long j) {
        ArrayList arrayList = new ArrayList(MediaDataController.getInstance(i).hints);
        Collections.sort(arrayList, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda5
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return ((TLRPC.TL_topPeer) obj).rating;
            }
        }));
        int i2 = -1;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (DialogObject.getPeerDialogId(((TLRPC.TL_topPeer) arrayList.get(i3)).peer) == j) {
                i2 = i3;
            }
        }
        return i2 >= 0 && i2 >= arrayList.size() + (-5);
    }

    public static boolean areStoriesNotMuted(int i, long j) {
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(i);
        if (notificationsSettings.contains(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + j)) {
            return notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + j, true);
        }
        if (notificationsSettings.contains("EnableAllStories")) {
            return notificationsSettings.getBoolean("EnableAllStories", true);
        }
        return isTop5Peer(i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: deleteException, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$createView$6(NotificationsSettingsActivity.NotificationException notificationException, View view, int i) {
        String sharedPrefKey = NotificationsController.getSharedPrefKey(notificationException.did, 0L);
        getNotificationsSettings().edit().remove(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey).commit();
        ArrayList arrayList = this.autoExceptions;
        if (arrayList != null) {
            arrayList.remove(notificationException);
        }
        ArrayList arrayList2 = this.exceptions;
        if (arrayList2 != null) {
            arrayList2.remove(notificationException);
        }
        if (isTop5Peer(this.currentAccount, notificationException.did)) {
            notificationException.auto = true;
            notificationException.notify = 0;
            this.autoExceptions.add(notificationException);
        }
        if (view instanceof UserCell) {
            UserCell userCell = (UserCell) view;
            userCell.setException(notificationException, null, userCell.needDivider);
        }
        getNotificationsController().updateServerNotificationsSettings(notificationException.did, 0L, false);
        updateRows(true);
    }

    private void updateMute(NotificationsSettingsActivity.NotificationException notificationException, View view, int i, boolean z, boolean z2) {
        String sharedPrefKey = NotificationsController.getSharedPrefKey(notificationException.did, 0L);
        SharedPreferences.Editor editorEdit = getNotificationsSettings().edit();
        boolean zIsTop5Peer = isTop5Peer(this.currentAccount, notificationException.did);
        notificationException.notify = z2 ? Integer.MAX_VALUE : 0;
        if (notificationException.auto) {
            notificationException.auto = false;
            editorEdit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey, !z2).commit();
            ArrayList arrayList = this.autoExceptions;
            if (arrayList != null) {
                arrayList.remove(notificationException);
            }
            if (this.exceptions == null) {
                this.exceptions = new ArrayList();
            }
            this.exceptions.add(0, notificationException);
        } else if (zIsTop5Peer) {
            editorEdit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey, !z2).commit();
        } else {
            Boolean bool = this.storiesEnabled;
            if (!z2 ? !(bool == null || !bool.booleanValue()) : !(bool != null && bool.booleanValue())) {
                lambda$createView$6(notificationException, view, i);
                return;
            }
            editorEdit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey, !z2).commit();
        }
        if (view instanceof UserCell) {
            UserCell userCell = (UserCell) view;
            userCell.setException(notificationException, null, userCell.needDivider);
        }
        getNotificationsController().updateServerNotificationsSettings(notificationException.did, 0L, false);
        updateRows(true);
    }

    private int getLedColor() {
        int i = this.currentType;
        int i2 = -16776961;
        if (i == 0) {
            i2 = getNotificationsSettings().getInt("GroupLed", -16776961);
        } else if (i == 1) {
            i2 = getNotificationsSettings().getInt("MessagesLed", -16776961);
        } else if (i == 2) {
            i2 = getNotificationsSettings().getInt("ChannelLed", -16776961);
        } else if (i == 3) {
            i2 = getNotificationsSettings().getInt("StoriesLed", -16776961);
        } else if (i == 4 || i == 5) {
            i2 = getNotificationsSettings().getInt("ReactionsLed", -16776961);
        }
        for (int i3 = 0; i3 < 9; i3++) {
            if (TextColorCell.colorsToSave[i3] == i2) {
                return TextColorCell.colors[i3];
            }
        }
        return i2;
    }

    private String getPopupOption() {
        int i;
        int i2 = this.currentType;
        if (i2 == 0) {
            i = getNotificationsSettings().getInt("popupGroup", 0);
        } else if (i2 == 1) {
            i = getNotificationsSettings().getInt("popupAll", 0);
        } else {
            i = i2 != 2 ? 0 : getNotificationsSettings().getInt("popupChannel", 0);
        }
        int[] iArr = this.popupOptions;
        return LocaleController.getString(iArr[Utilities.clamp(i, iArr.length - 1, 0)]);
    }

    private String getSound() {
        String string;
        long j;
        SharedPreferences notificationsSettings = getNotificationsSettings();
        String string2 = LocaleController.getString("SoundDefault", C2888R.string.SoundDefault);
        int i = this.currentType;
        if (i == 0) {
            string = notificationsSettings.getString("GroupSound", string2);
            j = notificationsSettings.getLong("GroupSoundDocId", 0L);
        } else if (i == 1) {
            string = notificationsSettings.getString("GlobalSound", string2);
            j = notificationsSettings.getLong("GlobalSoundDocId", 0L);
        } else if (i == 3) {
            string = notificationsSettings.getString("StoriesSound", string2);
            j = notificationsSettings.getLong("StoriesSoundDocId", 0L);
        } else if (i == 4 || i == 5) {
            string = notificationsSettings.getString("ReactionSound", string2);
            j = notificationsSettings.getLong("ReactionSoundDocId", 0L);
        } else {
            string = notificationsSettings.getString("ChannelSound", string2);
            j = notificationsSettings.getLong("ChannelDocId", 0L);
        }
        if (j != 0) {
            TLRPC.Document document = getMediaDataController().ringtoneDataStore.getDocument(j);
            if (document == null) {
                return LocaleController.getString("CustomSound", C2888R.string.CustomSound);
            }
            return NotificationsSoundActivity.trimTitle(document, FileLoader.getDocumentFileName(document));
        }
        if (string.equals("NoSound")) {
            return LocaleController.getString("NoSound", C2888R.string.NoSound);
        }
        return string.equals("Default") ? LocaleController.getString("SoundDefault", C2888R.string.SoundDefault) : string;
    }

    private String getPriorityOption() {
        int i;
        int i2 = this.currentType;
        if (i2 == 0) {
            i = getNotificationsSettings().getInt("priority_group", 1);
        } else if (i2 == 1) {
            i = getNotificationsSettings().getInt("priority_messages", 1);
        } else if (i2 == 2) {
            i = getNotificationsSettings().getInt("priority_channel", 1);
        } else if (i2 == 3) {
            i = getNotificationsSettings().getInt("priority_stories", 1);
        } else {
            i = (i2 == 4 || i2 == 5) ? getNotificationsSettings().getInt("priority_react", 1) : 1;
        }
        int[] iArr = this.priorityOptions;
        return LocaleController.getString(iArr[Utilities.clamp(i, iArr.length - 1, 0)]);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.searching = false;
        this.searchWas = false;
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (this.currentType == -1) {
            this.actionBar.setTitle(LocaleController.getString("NotificationsExceptions", C2888R.string.NotificationsExceptions));
        } else {
            this.actionBar.setTitle(LocaleController.getString("Notifications", C2888R.string.Notifications));
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    NotificationsCustomSettingsActivity.this.finishFragment();
                }
            }
        });
        ArrayList arrayList = this.exceptions;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.actionBar.createMenu().addItem(0, C2888R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.2
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchExpand() {
                    NotificationsCustomSettingsActivity.this.searching = true;
                    NotificationsCustomSettingsActivity.this.emptyView.setShowAtCenter(true);
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchCollapse() {
                    NotificationsCustomSettingsActivity.this.searchAdapter.searchDialogs(null);
                    NotificationsCustomSettingsActivity.this.searching = false;
                    NotificationsCustomSettingsActivity.this.searchWas = false;
                    NotificationsCustomSettingsActivity.this.emptyView.setText(LocaleController.getString("NoExceptions", C2888R.string.NoExceptions));
                    NotificationsCustomSettingsActivity.this.listView.setAdapter(NotificationsCustomSettingsActivity.this.adapter);
                    NotificationsCustomSettingsActivity.this.adapter.notifyDataSetChanged();
                    NotificationsCustomSettingsActivity.this.listView.setFastScrollVisible(true);
                    NotificationsCustomSettingsActivity.this.listView.setVerticalScrollBarEnabled(false);
                    NotificationsCustomSettingsActivity.this.emptyView.setShowAtCenter(false);
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onTextChanged(EditText editText) {
                    if (NotificationsCustomSettingsActivity.this.searchAdapter == null) {
                        return;
                    }
                    String string = editText.getText().toString();
                    if (string.length() != 0) {
                        NotificationsCustomSettingsActivity.this.searchWas = true;
                        if (NotificationsCustomSettingsActivity.this.listView != null) {
                            NotificationsCustomSettingsActivity.this.emptyView.setText(LocaleController.getString("NoResult", C2888R.string.NoResult));
                            NotificationsCustomSettingsActivity.this.emptyView.showProgress();
                            NotificationsCustomSettingsActivity.this.listView.setAdapter(NotificationsCustomSettingsActivity.this.searchAdapter);
                            NotificationsCustomSettingsActivity.this.searchAdapter.notifyDataSetChanged();
                            NotificationsCustomSettingsActivity.this.listView.setFastScrollVisible(false);
                            NotificationsCustomSettingsActivity.this.listView.setVerticalScrollBarEnabled(true);
                        }
                    }
                    NotificationsCustomSettingsActivity.this.searchAdapter.searchDialogs(string);
                }
            }).setSearchFieldHint(LocaleController.getString("Search", C2888R.string.Search));
        }
        this.searchAdapter = new SearchAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
        this.emptyView = emptyTextProgressView;
        emptyTextProgressView.setTextSize(18);
        this.emptyView.setText(LocaleController.getString("NoExceptions", C2888R.string.NoExceptions));
        this.emptyView.showTextView();
        frameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setEmptyView(this.emptyView);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                this.f$0.lambda$createView$17(context, view, i, f, f2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                NotificationsCustomSettingsActivity.this.listView.invalidate();
            }
        };
        defaultItemAnimator.setAddDuration(150L);
        defaultItemAnimator.setMoveDuration(350L);
        defaultItemAnimator.setChangeDuration(0L);
        defaultItemAnimator.setRemoveDuration(0L);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setMoveInterpolator(new OvershootInterpolator(1.1f));
        defaultItemAnimator.setTranslationInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 1) {
                    AndroidUtilities.hideKeyboard(NotificationsCustomSettingsActivity.this.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:302:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createView$17(Context context, final View view, final int i, float f, float f2) {
        NotificationsSettingsActivity.NotificationException notificationException;
        ArrayList arrayList;
        final boolean z;
        long j;
        boolean z2;
        final String str;
        long j2;
        final boolean z3;
        final NotificationsSettingsActivity.NotificationException notificationException2;
        final NotificationsSettingsActivity.NotificationException notificationException3;
        if (getParentActivity() == null) {
            return;
        }
        ItemInner itemInner = (this.listView.getAdapter() != this.adapter || i < 0 || i >= this.items.size()) ? null : (ItemInner) this.items.get(i);
        if (itemInner != null && itemInner.viewType == 8) {
            this.expanded = !this.expanded;
            updateRows(true);
            return;
        }
        int i2 = this.currentType;
        if (i2 == 3 && itemInner != null && (notificationException3 = itemInner.exception) != null) {
            ItemOptions.makeOptions(this, view).setGravity(3).addIf(notificationException3.notify <= 0 || notificationException3.auto, C2888R.drawable.msg_mute, (CharSequence) LocaleController.getString(C2888R.string.NotificationsStoryMute), false, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$1(notificationException3, view, i);
                }
            }).addIf(notificationException3.notify > 0 || notificationException3.auto, C2888R.drawable.msg_unmute, (CharSequence) LocaleController.getString(C2888R.string.NotificationsStoryUnmute), false, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$2(notificationException3, view, i);
                }
            }).addIf(!notificationException3.auto, C2888R.drawable.msg_delete, (CharSequence) LocaleController.getString("DeleteException", C2888R.string.DeleteException), true, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$3(notificationException3, view, i);
                }
            }).setScrimViewBackground(this.listView.getClipBackground(view)).show();
            return;
        }
        if (i2 == 3) {
            RecyclerView.Adapter adapter = this.listView.getAdapter();
            SearchAdapter searchAdapter = this.searchAdapter;
            if (adapter == searchAdapter) {
                Object object = searchAdapter.getObject(i);
                if (object instanceof NotificationsSettingsActivity.NotificationException) {
                    notificationException2 = (NotificationsSettingsActivity.NotificationException) object;
                } else {
                    boolean z4 = object instanceof TLRPC.User;
                    if (z4) {
                        j2 = ((TLRPC.User) object).f1825id;
                    } else {
                        j2 = -((TLRPC.Chat) object).f1660id;
                    }
                    if (this.exceptionsDict.containsKey(Long.valueOf(j2))) {
                        notificationException2 = (NotificationsSettingsActivity.NotificationException) this.exceptionsDict.get(Long.valueOf(j2));
                    } else {
                        NotificationsSettingsActivity.NotificationException notificationException4 = new NotificationsSettingsActivity.NotificationException();
                        notificationException4.story = true;
                        notificationException4.did = j2;
                        if (z4) {
                            notificationException4.did = ((TLRPC.User) object).f1825id;
                        } else {
                            notificationException4.did = -((TLRPC.Chat) object).f1660id;
                        }
                        z3 = true;
                        notificationException2 = notificationException4;
                        if (notificationException2 != null) {
                            return;
                        }
                        ItemOptions.makeOptions(this, view).setGravity(3).addIf(notificationException2.notify <= 0 || notificationException2.auto, C2888R.drawable.msg_mute, (CharSequence) LocaleController.getString(C2888R.string.NotificationsStoryMute), false, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda14
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$createView$4(notificationException2, view, z3);
                            }
                        }).addIf(notificationException2.notify > 0 || notificationException2.auto, C2888R.drawable.msg_unmute, (CharSequence) LocaleController.getString(C2888R.string.NotificationsStoryUnmute), false, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda15
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$createView$5(notificationException2, view, z3);
                            }
                        }).addIf((z3 || notificationException2.auto) ? false : true, C2888R.drawable.msg_delete, (CharSequence) LocaleController.getString("DeleteException", C2888R.string.DeleteException), true, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda16
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$createView$6(notificationException2, view, i);
                            }
                        }).setScrimViewBackground(this.listView.getClipBackground(view)).show();
                        return;
                    }
                }
                z3 = false;
                if (notificationException2 != null) {
                }
            }
        }
        if (this.listView.getAdapter() == this.searchAdapter || !(itemInner == null || itemInner.exception == null)) {
            RecyclerView.Adapter adapter2 = this.listView.getAdapter();
            SearchAdapter searchAdapter2 = this.searchAdapter;
            if (adapter2 == searchAdapter2) {
                Object object2 = searchAdapter2.getObject(i);
                if (object2 instanceof NotificationsSettingsActivity.NotificationException) {
                    notificationException = (NotificationsSettingsActivity.NotificationException) object2;
                    arrayList = this.searchAdapter.searchResult;
                    z = false;
                } else {
                    boolean z5 = object2 instanceof TLRPC.User;
                    if (z5) {
                        j = ((TLRPC.User) object2).f1825id;
                    } else {
                        j = -((TLRPC.Chat) object2).f1660id;
                    }
                    if (this.exceptionsDict.containsKey(Long.valueOf(j))) {
                        notificationException = (NotificationsSettingsActivity.NotificationException) this.exceptionsDict.get(Long.valueOf(j));
                        z = false;
                    } else {
                        NotificationsSettingsActivity.NotificationException notificationException5 = new NotificationsSettingsActivity.NotificationException();
                        notificationException5.did = j;
                        if (z5) {
                            notificationException5.did = ((TLRPC.User) object2).f1825id;
                        } else {
                            notificationException5.did = -((TLRPC.Chat) object2).f1660id;
                        }
                        notificationException = notificationException5;
                    }
                    arrayList = this.exceptions;
                }
                z = z;
            } else {
                notificationException = itemInner.exception;
                if (notificationException.auto) {
                    return;
                }
                arrayList = this.exceptions;
                z = false;
            }
            final NotificationsSettingsActivity.NotificationException notificationException6 = notificationException;
            if (notificationException6 == null) {
                return;
            }
            final long j3 = notificationException6.did;
            final boolean zIsGlobalNotificationsEnabled = NotificationsController.getInstance(this.currentAccount).isGlobalNotificationsEnabled(j3, false, false);
            final ArrayList arrayList2 = arrayList;
            ChatNotificationsPopupWrapper chatNotificationsPopupWrapper = new ChatNotificationsPopupWrapper(context, this.currentAccount, null, true, true, new ChatNotificationsPopupWrapper.Callback() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.3
                @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
                public /* synthetic */ void dismiss() {
                    ChatNotificationsPopupWrapper.Callback.CC.$default$dismiss(this);
                }

                @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
                public /* synthetic */ void openExceptions() {
                    ChatNotificationsPopupWrapper.Callback.CC.$default$openExceptions(this);
                }

                @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
                public void toggleSound() {
                    String sharedPrefKey = NotificationsController.getSharedPrefKey(j3, NotificationsCustomSettingsActivity.this.topicId);
                    SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(((BaseFragment) NotificationsCustomSettingsActivity.this).currentAccount);
                    boolean z6 = notificationsSettings.getBoolean("sound_enabled_" + sharedPrefKey, true);
                    boolean z7 = !z6;
                    notificationsSettings.edit().putBoolean("sound_enabled_" + sharedPrefKey, z7).apply();
                    if (BulletinFactory.canShowBulletin(NotificationsCustomSettingsActivity.this)) {
                        NotificationsCustomSettingsActivity notificationsCustomSettingsActivity = NotificationsCustomSettingsActivity.this;
                        BulletinFactory.createSoundEnabledBulletin(notificationsCustomSettingsActivity, z6 ? 1 : 0, notificationsCustomSettingsActivity.getResourceProvider()).show();
                    }
                }

                @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
                public void muteFor(int i3) {
                    if (i3 != 0) {
                        NotificationsCustomSettingsActivity.this.getNotificationsController().muteUntil(j3, NotificationsCustomSettingsActivity.this.topicId, i3);
                        if (BulletinFactory.canShowBulletin(NotificationsCustomSettingsActivity.this)) {
                            NotificationsCustomSettingsActivity notificationsCustomSettingsActivity = NotificationsCustomSettingsActivity.this;
                            BulletinFactory.createMuteBulletin(notificationsCustomSettingsActivity, 5, i3, notificationsCustomSettingsActivity.getResourceProvider()).show();
                        }
                    } else {
                        if (NotificationsCustomSettingsActivity.this.getMessagesController().isDialogMuted(j3, NotificationsCustomSettingsActivity.this.topicId)) {
                            toggleMute();
                        }
                        if (BulletinFactory.canShowBulletin(NotificationsCustomSettingsActivity.this)) {
                            NotificationsCustomSettingsActivity notificationsCustomSettingsActivity2 = NotificationsCustomSettingsActivity.this;
                            BulletinFactory.createMuteBulletin(notificationsCustomSettingsActivity2, 4, i3, notificationsCustomSettingsActivity2.getResourceProvider()).show();
                        }
                    }
                    update();
                }

                @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
                public void showCustomize() {
                    if (j3 != 0) {
                        Bundle bundle = new Bundle();
                        bundle.putLong("dialog_id", j3);
                        ProfileNotificationsActivity profileNotificationsActivity = new ProfileNotificationsActivity(bundle);
                        profileNotificationsActivity.setDelegate(new ProfileNotificationsActivity.ProfileNotificationsActivityDelegate() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.3.1
                            @Override // org.telegram.ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
                            public void didCreateNewException(NotificationsSettingsActivity.NotificationException notificationException7) {
                            }

                            @Override // org.telegram.ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
                            public void didRemoveException(long j4) {
                                setDefault();
                            }
                        });
                        NotificationsCustomSettingsActivity.this.presentFragment(profileNotificationsActivity);
                    }
                }

                @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
                public void toggleMute() {
                    NotificationsCustomSettingsActivity.this.getNotificationsController().muteDialog(j3, NotificationsCustomSettingsActivity.this.topicId, !NotificationsCustomSettingsActivity.this.getMessagesController().isDialogMuted(j3, NotificationsCustomSettingsActivity.this.topicId));
                    NotificationsCustomSettingsActivity notificationsCustomSettingsActivity = NotificationsCustomSettingsActivity.this;
                    BulletinFactory.createMuteBulletin(notificationsCustomSettingsActivity, notificationsCustomSettingsActivity.getMessagesController().isDialogMuted(j3, NotificationsCustomSettingsActivity.this.topicId), null).show();
                    update();
                }

                private void update() {
                    if (NotificationsCustomSettingsActivity.this.getMessagesController().isDialogMuted(j3, NotificationsCustomSettingsActivity.this.topicId) != zIsGlobalNotificationsEnabled) {
                        setDefault();
                    } else {
                        setNotDefault();
                    }
                }

                private void setNotDefault() {
                    SharedPreferences notificationsSettings = NotificationsCustomSettingsActivity.this.getNotificationsSettings();
                    notificationException6.hasCustom = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + notificationException6.did, false);
                    notificationException6.notify = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + notificationException6.did, 0);
                    if (notificationException6.notify != 0) {
                        int i3 = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + notificationException6.did, -1);
                        if (i3 != -1) {
                            notificationException6.muteUntil = i3;
                        }
                    }
                    if (z) {
                        NotificationsCustomSettingsActivity.this.exceptions.add(notificationException6);
                        NotificationsCustomSettingsActivity.this.exceptionsDict.put(Long.valueOf(notificationException6.did), notificationException6);
                        NotificationsCustomSettingsActivity.this.updateRows(true);
                    } else {
                        NotificationsCustomSettingsActivity.this.listView.getAdapter().notifyItemChanged(i);
                    }
                    ((BaseFragment) NotificationsCustomSettingsActivity.this).actionBar.closeSearchField();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void setDefault() {
                    int iIndexOf;
                    if (z) {
                        return;
                    }
                    if (arrayList2 != NotificationsCustomSettingsActivity.this.exceptions && (iIndexOf = NotificationsCustomSettingsActivity.this.exceptions.indexOf(notificationException6)) >= 0) {
                        NotificationsCustomSettingsActivity.this.exceptions.remove(iIndexOf);
                        NotificationsCustomSettingsActivity.this.exceptionsDict.remove(Long.valueOf(notificationException6.did));
                    }
                    arrayList2.remove(notificationException6);
                    if (arrayList2 == NotificationsCustomSettingsActivity.this.exceptions) {
                        NotificationsCustomSettingsActivity.this.updateRows(true);
                        NotificationsCustomSettingsActivity.this.checkRowsEnabled();
                    } else {
                        NotificationsCustomSettingsActivity.this.updateRows(true);
                        NotificationsCustomSettingsActivity.this.searchAdapter.notifyItemChanged(i);
                    }
                    ((BaseFragment) NotificationsCustomSettingsActivity.this).actionBar.closeSearchField();
                }
            }, getResourceProvider());
            chatNotificationsPopupWrapper.lambda$update$11(j3, this.topicId, null);
            chatNotificationsPopupWrapper.showAsOptions(this, view, f, f2, false);
            return;
        }
        if (itemInner == null) {
            return;
        }
        int i3 = itemInner.f2129id;
        if (i3 == 6) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("checkCanWrite", false);
            int i4 = this.currentType;
            if (i4 == 0) {
                bundle.putInt("dialogsType", 6);
            } else if (i4 == 2) {
                bundle.putInt("dialogsType", 5);
            } else {
                bundle.putInt("dialogsType", 4);
            }
            DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda17
                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public /* synthetic */ boolean canSelectStories() {
                    return DialogsActivity.DialogsActivityDelegate.CC.$default$canSelectStories(this);
                }

                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList3, CharSequence charSequence, boolean z6, boolean z7, int i5, int i6, TopicsFragment topicsFragment) {
                    return this.f$0.lambda$createView$8(dialogsActivity2, arrayList3, charSequence, z6, z7, i5, i6, topicsFragment);
                }

                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public /* synthetic */ boolean didSelectStories(DialogsActivity dialogsActivity2) {
                    return DialogsActivity.DialogsActivityDelegate.CC.$default$didSelectStories(this, dialogsActivity2);
                }
            });
            presentFragment(dialogsActivity);
            return;
        }
        if (i3 == 7) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("NotificationsDeleteAllExceptionTitle", C2888R.string.NotificationsDeleteAllExceptionTitle));
            builder.setMessage(LocaleController.getString("NotificationsDeleteAllExceptionAlert", C2888R.string.NotificationsDeleteAllExceptionAlert));
            builder.setPositiveButton(LocaleController.getString("Delete", C2888R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda18
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    this.f$0.lambda$createView$9(alertDialog, i5);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null);
            AlertDialog alertDialogCreate = builder.create();
            showDialog(alertDialogCreate);
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        if (i3 == 100 || i3 == 101) {
            boolean zIsGlobalNotificationsEnabled2 = getNotificationsController().isGlobalNotificationsEnabled(this.currentType);
            this.listView.findViewHolderForAdapterPosition(i);
            int i5 = this.currentType;
            if (i5 != 3) {
                if (!zIsGlobalNotificationsEnabled2) {
                    getNotificationsController().setGlobalNotificationsEnabled(this.currentType, 0);
                    updateRows(true);
                    return;
                } else {
                    AlertsCreator.showCustomNotificationsDialog(this, 0L, 0, i5, this.exceptions, this.autoExceptions, this.currentAccount, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda19
                        @Override // org.telegram.messenger.MessagesStorage.IntCallback
                        public final void run(int i6) {
                            this.f$0.lambda$createView$10(i6);
                        }
                    });
                    return;
                }
            }
            SharedPreferences.Editor editorEdit = getNotificationsSettings().edit();
            Boolean bool = this.storiesEnabled;
            boolean z6 = bool != null && bool.booleanValue();
            if (this.storiesAuto && z6) {
                editorEdit.remove("EnableAllStories");
                this.storiesEnabled = null;
            } else {
                editorEdit.putBoolean("EnableAllStories", !z6);
                this.storiesEnabled = Boolean.valueOf(!z6);
            }
            editorEdit.apply();
            getNotificationsController().updateServerNotificationsSettings(this.currentType);
            updateRows(true);
            if (this.showAutoExceptions != (this.storiesEnabled == null)) {
                toggleShowAutoExceptions();
            }
            checkRowsEnabled();
            return;
        }
        if (i3 == 3) {
            if (view.isEnabled()) {
                try {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("type", this.currentType);
                    presentFragment(new NotificationsSoundActivity(bundle2, getResourceProvider()));
                    return;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    return;
                }
            }
            return;
        }
        if (itemInner.viewType == 3) {
            if (view.isEnabled()) {
                showDialog(AlertsCreator.createColorSelectDialog(getParentActivity(), 0L, 0, this.currentType, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$11(view, i);
                    }
                }));
                return;
            }
            return;
        }
        if (i3 == 2) {
            if (view.isEnabled()) {
                showDialog(AlertsCreator.createPopupSelectDialog(getParentActivity(), this.currentType, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$12(view, i);
                    }
                }));
                return;
            }
            return;
        }
        if (i3 == 1) {
            if (view.isEnabled()) {
                int i6 = this.currentType;
                if (i6 == 1) {
                    str = "vibrate_messages";
                } else if (i6 == 0) {
                    str = "vibrate_group";
                } else if (i6 == 3) {
                    str = "vibrate_stories";
                } else if (i6 == 4 || i6 == 5) {
                    str = "vibrate_react";
                } else {
                    str = "vibrate_channel";
                }
                showDialog(AlertsCreator.createVibrationSelectDialog(getParentActivity(), 0L, 0L, str, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$13(view, str, i);
                    }
                }));
                return;
            }
            return;
        }
        if (i3 == 4) {
            if (view.isEnabled()) {
                showDialog(AlertsCreator.createPrioritySelectDialog(getParentActivity(), 0L, 0, this.currentType, new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createView$14(view, i);
                    }
                }));
                return;
            }
            return;
        }
        if (i3 == 102) {
            if (view.isEnabled()) {
                SharedPreferences notificationsSettings = getNotificationsSettings();
                if (notificationsSettings.getBoolean("EnableAllStories", false)) {
                    return;
                }
                SharedPreferences.Editor editorEdit2 = notificationsSettings.edit();
                if (this.storiesEnabled != null) {
                    editorEdit2.remove("EnableAllStories");
                    this.storiesEnabled = null;
                    this.storiesAuto = true;
                    itemInner.checked = true;
                } else {
                    editorEdit2.putBoolean("EnableAllStories", false);
                    this.storiesEnabled = Boolean.FALSE;
                    this.storiesAuto = false;
                    itemInner.checked = false;
                }
                if (view instanceof TextCheckCell) {
                    ((TextCheckCell) view).setChecked(this.storiesAuto);
                }
                editorEdit2.commit();
                if (this.storiesAuto != this.showAutoExceptions) {
                    toggleShowAutoExceptions();
                }
                getNotificationsController().updateServerNotificationsSettings(this.currentType);
                checkRowsEnabled();
                return;
            }
            return;
        }
        if (i3 == 0) {
            if (view.isEnabled()) {
                SharedPreferences notificationsSettings2 = getNotificationsSettings();
                SharedPreferences.Editor editorEdit3 = notificationsSettings2.edit();
                int i7 = this.currentType;
                if (i7 == 1) {
                    z2 = notificationsSettings2.getBoolean("EnablePreviewAll", true);
                    editorEdit3.putBoolean("EnablePreviewAll", !z2);
                } else if (i7 == 0) {
                    z2 = notificationsSettings2.getBoolean("EnablePreviewGroup", true);
                    editorEdit3.putBoolean("EnablePreviewGroup", !z2);
                } else if (i7 == 3) {
                    z2 = !notificationsSettings2.getBoolean("EnableHideStoriesSenders", false);
                    editorEdit3.putBoolean("EnableHideStoriesSenders", z2);
                } else if (i7 == 4 || i7 == 5) {
                    z2 = notificationsSettings2.getBoolean("EnableReactionsPreview", true);
                    editorEdit3.putBoolean("EnableReactionsPreview", !z2);
                } else {
                    z2 = notificationsSettings2.getBoolean("EnablePreviewChannel", true);
                    editorEdit3.putBoolean("EnablePreviewChannel", !z2);
                }
                editorEdit3.commit();
                getNotificationsController().updateServerNotificationsSettings(this.currentType);
                if (view instanceof TextCheckCell) {
                    ((TextCheckCell) view).setChecked(!z2);
                    return;
                }
                return;
            }
            return;
        }
        if (i3 == 103 || i3 == 104) {
            boolean z7 = !LocaleController.isRTL ? f <= ((float) (view.getMeasuredWidth() - AndroidUtilities.m1124dp(76.0f))) : f >= ((float) AndroidUtilities.m1124dp(76.0f));
            final SharedPreferences notificationsSettings3 = getNotificationsSettings();
            if (z7) {
                String str2 = itemInner.f2129id == 103 ? "EnableReactionsMessages" : "EnableReactionsStories";
                SharedPreferences.Editor editorEdit4 = notificationsSettings3.edit();
                editorEdit4.putBoolean(str2, !notificationsSettings3.getBoolean(str2, true));
                editorEdit4.apply();
                updateRows(true);
                getNotificationsController().updateServerNotificationsSettings(this.currentType);
                return;
            }
            final String str3 = itemInner.f2129id == 103 ? "EnableReactionsMessagesContacts" : "EnableReactionsStoriesContacts";
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            final boolean[] zArr = {notificationsSettings3.getBoolean(str3, false)};
            final RadioColorCell[] radioColorCellArr = new RadioColorCell[2];
            final int i8 = 0;
            while (i8 < 2) {
                RadioColorCell radioColorCell = new RadioColorCell(context, getResourceProvider());
                radioColorCellArr[i8] = radioColorCell;
                radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
                radioColorCellArr[i8].setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                radioColorCellArr[i8].setTextAndValue(LocaleController.getString(i8 == 0 ? C2888R.string.NotifyAboutReactionsFromEveryone : C2888R.string.NotifyAboutReactionsFromContacts), i8 == 0 ? !zArr[0] : zArr[0]);
                radioColorCellArr[i8].setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
                linearLayout.addView(radioColorCellArr[i8]);
                radioColorCellArr[i8].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        NotificationsCustomSettingsActivity.$r8$lambda$Erodymr_KVVb2h4gNRSVUcqmSnU(zArr, i8, radioColorCellArr, view2);
                    }
                });
                i8++;
            }
            showDialog(new AlertDialog.Builder(getContext(), this.resourceProvider).setTitle(LocaleController.getString(C2888R.string.NotifyAboutReactionsFrom)).setView(linearLayout).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2888R.string.Save), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda11
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i9) {
                    this.f$0.lambda$createView$16(notificationsSettings3, str3, zArr, alertDialog, i9);
                }
            }).create());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(NotificationsSettingsActivity.NotificationException notificationException, View view, int i) {
        updateMute(notificationException, view, i, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(NotificationsSettingsActivity.NotificationException notificationException, View view, int i) {
        updateMute(notificationException, view, i, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(NotificationsSettingsActivity.NotificationException notificationException, View view, boolean z) {
        this.actionBar.closeSearchField();
        updateMute(notificationException, view, -1, z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(NotificationsSettingsActivity.NotificationException notificationException, View view, boolean z) {
        this.actionBar.closeSearchField();
        updateMute(notificationException, view, -1, z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$8(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
        int i3 = 0;
        long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
        if (this.currentType == 3) {
            ArrayList arrayList2 = this.autoExceptions;
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    if (((NotificationsSettingsActivity.NotificationException) it.next()).did == j) {
                        it.remove();
                    }
                }
            }
            ArrayList arrayList3 = this.exceptions;
            if (arrayList3 != null) {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    if (((NotificationsSettingsActivity.NotificationException) it2.next()).did == j) {
                        it2.remove();
                    }
                }
            }
            NotificationsSettingsActivity.NotificationException notificationException = new NotificationsSettingsActivity.NotificationException();
            notificationException.did = j;
            notificationException.story = true;
            Boolean bool = this.storiesEnabled;
            if (bool != null && bool.booleanValue()) {
                i3 = Integer.MAX_VALUE;
            }
            notificationException.notify = i3;
            if (this.exceptions == null) {
                this.exceptions = new ArrayList();
            }
            this.exceptions.add(notificationException);
            updateRows(true);
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("dialog_id", j);
            bundle.putBoolean("exception", true);
            ProfileNotificationsActivity profileNotificationsActivity = new ProfileNotificationsActivity(bundle, getResourceProvider());
            profileNotificationsActivity.setDelegate(new ProfileNotificationsActivity.ProfileNotificationsActivityDelegate() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda21
                @Override // org.telegram.ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
                public final void didCreateNewException(NotificationsSettingsActivity.NotificationException notificationException2) {
                    this.f$0.lambda$createView$7(notificationException2);
                }

                @Override // org.telegram.ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
                public /* synthetic */ void didRemoveException(long j2) {
                    ProfileNotificationsActivity.ProfileNotificationsActivityDelegate.CC.$default$didRemoveException(this, j2);
                }
            });
            presentFragment(profileNotificationsActivity, true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(NotificationsSettingsActivity.NotificationException notificationException) {
        this.exceptions.add(0, notificationException);
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(AlertDialog alertDialog, int i) {
        SharedPreferences.Editor editorEdit = getNotificationsSettings().edit();
        int size = this.exceptions.size();
        for (int i2 = 0; i2 < size; i2++) {
            NotificationsSettingsActivity.NotificationException notificationException = (NotificationsSettingsActivity.NotificationException) this.exceptions.get(i2);
            if (this.currentType == 3) {
                editorEdit.remove(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + notificationException.did);
            } else {
                editorEdit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + notificationException.did).remove(NotificationsSettingsFacade.PROPERTY_CUSTOM + notificationException.did);
            }
            getMessagesStorage().setDialogFlags(notificationException.did, 0L);
            TLRPC.Dialog dialog = (TLRPC.Dialog) getMessagesController().dialogs_dict.get(notificationException.did);
            if (dialog != null) {
                dialog.notify_settings = new TLRPC.TL_peerNotifySettings();
            }
        }
        editorEdit.apply();
        int size2 = this.exceptions.size();
        for (int i3 = 0; i3 < size2; i3++) {
            getNotificationsController().updateServerNotificationsSettings(((NotificationsSettingsActivity.NotificationException) this.exceptions.get(i3)).did, this.topicId, false);
        }
        this.exceptions.clear();
        this.exceptionsDict.clear();
        updateRows(true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsSettingsUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(int i) {
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view, int i) {
        if (view instanceof TextColorCell) {
            if (i >= 0 && i < this.items.size()) {
                ((ItemInner) this.items.get(i)).color = getLedColor();
            }
            ((TextColorCell) view).setTextAndColor(LocaleController.getString("LedColor", C2888R.string.LedColor), getLedColor(), true);
            return;
        }
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(View view, int i) {
        if (view instanceof TextSettingsCell) {
            if (i >= 0 && i < this.items.size()) {
                ((ItemInner) this.items.get(i)).text2 = getPopupOption();
            }
            TextSettingsCell textSettingsCell = (TextSettingsCell) view;
            textSettingsCell.setTextAndValue(LocaleController.getString("PopupNotification", C2888R.string.PopupNotification), getPopupOption(), true, textSettingsCell.needDivider);
            return;
        }
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view, String str, int i) {
        if (view instanceof TextSettingsCell) {
            String string = LocaleController.getString(this.vibrateLabels[Utilities.clamp(getNotificationsSettings().getInt(str, 0), this.vibrateLabels.length - 1, 0)]);
            if (i >= 0 && i < this.items.size()) {
                ((ItemInner) this.items.get(i)).text2 = string;
            }
            ((TextSettingsCell) view).setTextAndValue(LocaleController.getString("Vibrate", C2888R.string.Vibrate), string, true, true);
            return;
        }
        updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(View view, int i) {
        if (view instanceof TextSettingsCell) {
            if (i >= 0 && i < this.items.size()) {
                ((ItemInner) this.items.get(i)).text2 = getPriorityOption();
            }
            TextSettingsCell textSettingsCell = (TextSettingsCell) view;
            textSettingsCell.setTextAndValue(LocaleController.getString("NotificationsImportance", C2888R.string.NotificationsImportance), getPriorityOption(), true, textSettingsCell.needDivider);
            return;
        }
        updateRows(true);
    }

    public static /* synthetic */ void $r8$lambda$Erodymr_KVVb2h4gNRSVUcqmSnU(boolean[] zArr, int i, RadioColorCell[] radioColorCellArr, View view) {
        zArr[0] = i == 1;
        int i2 = 0;
        while (i2 < radioColorCellArr.length) {
            radioColorCellArr[i2].setChecked(zArr[0] == (i2 == 1), true);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(SharedPreferences sharedPreferences, String str, boolean[] zArr, AlertDialog alertDialog, int i) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(str, zArr[0]);
        editorEdit.apply();
        updateRows(true);
        getNotificationsController().updateServerNotificationsSettings(this.currentType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkRowsEnabled() {
        boolean zIsGlobalNotificationsEnabled;
        int i;
        ArrayList arrayList;
        if (this.exceptions.isEmpty() || this.currentType == 3) {
            int childCount = this.listView.getChildCount();
            ArrayList arrayList2 = new ArrayList();
            if (this.currentType == 3) {
                Boolean bool = this.storiesEnabled;
                zIsGlobalNotificationsEnabled = bool == null || bool.booleanValue() || !((arrayList = this.exceptions) == null || arrayList.isEmpty());
            } else {
                zIsGlobalNotificationsEnabled = getNotificationsController().isGlobalNotificationsEnabled(this.currentType);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.listView.getChildAt(i2);
                RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.getChildViewHolder(childAt);
                int childAdapterPosition = this.listView.getChildAdapterPosition(childAt);
                ItemInner itemInner = (childAdapterPosition < 0 || childAdapterPosition >= this.items.size()) ? null : (ItemInner) this.items.get(childAdapterPosition);
                boolean z = (itemInner == null || !((i = itemInner.f2129id) == 102 || i == 101 || i == 100)) ? zIsGlobalNotificationsEnabled : true;
                int itemViewType = holder.getItemViewType();
                if (itemViewType == 0) {
                    ((HeaderCell) holder.itemView).setEnabled(z, arrayList2);
                } else if (itemViewType == 1) {
                    ((TextCheckCell) holder.itemView).setEnabled(z, arrayList2);
                } else if (itemViewType == 3) {
                    ((TextColorCell) holder.itemView).setEnabled(z, arrayList2);
                } else if (itemViewType == 5) {
                    ((TextSettingsCell) holder.itemView).setEnabled(z, arrayList2);
                }
            }
            if (arrayList2.isEmpty()) {
                return;
            }
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.playTogether(arrayList2);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(NotificationsCustomSettingsActivity.this.animatorSet)) {
                        NotificationsCustomSettingsActivity.this.animatorSet = null;
                    }
                }
            });
            this.animatorSet.setDuration(150L);
            this.animatorSet.start();
        }
    }

    private void loadExceptions() {
        final ArrayList arrayList;
        if (this.currentType == 3) {
            MediaDataController.getInstance(this.currentAccount).loadHints(true);
            arrayList = new ArrayList(MediaDataController.getInstance(this.currentAccount).hints);
        } else {
            arrayList = null;
        }
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadExceptions$20(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(8:71|(2:207|73)(2:75|(2:212|211)(1:208))|74|179|78|81|213|211) */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x037f A[LOOP:5: B:161:0x037d->B:162:0x037f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x029d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadExceptions$20(ArrayList arrayList) {
        boolean z;
        final ArrayList<TLRPC.Chat> arrayList2;
        ArrayList<TLRPC.User> arrayList3;
        ArrayList<TLRPC.EncryptedChat> arrayList4;
        int size;
        int i;
        int size2;
        int i2;
        int size3;
        int i3;
        int size4;
        int i4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        Long l;
        long jLongValue;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList<TLRPC.User> arrayList10;
        ArrayList<TLRPC.EncryptedChat> arrayList11;
        final ArrayList arrayList12 = new ArrayList();
        final ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        final ArrayList arrayList16 = new ArrayList();
        LongSparseArray longSparseArray = new LongSparseArray();
        ArrayList<Long> arrayList17 = new ArrayList<>();
        ArrayList arrayList18 = new ArrayList();
        ArrayList arrayList19 = new ArrayList();
        ArrayList<TLRPC.User> arrayList20 = new ArrayList<>();
        ArrayList<TLRPC.Chat> arrayList21 = new ArrayList<>();
        ArrayList<TLRPC.EncryptedChat> arrayList22 = new ArrayList<>();
        long j = getUserConfig().clientUserId;
        SharedPreferences notificationsSettings = getNotificationsSettings();
        Map<String, ?> all = notificationsSettings.getAll();
        Iterator<Map.Entry<String, ?>> it = all.entrySet().iterator();
        while (true) {
            Iterator<Map.Entry<String, ?>> it2 = it;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it2.next();
            String key = next.getKey();
            ArrayList<TLRPC.Chat> arrayList23 = arrayList21;
            if (key.startsWith(NotificationsSettingsFacade.PROPERTY_NOTIFY)) {
                arrayList10 = arrayList20;
                String strReplace = key.replace(NotificationsSettingsFacade.PROPERTY_NOTIFY, _UrlKt.FRAGMENT_ENCODE_SET);
                Long l2 = Utilities.parseLong(strReplace);
                ArrayList arrayList24 = arrayList14;
                arrayList9 = arrayList15;
                long jLongValue2 = l2.longValue();
                if (jLongValue2 == 0 || jLongValue2 == j) {
                    arrayList11 = arrayList22;
                    arrayList8 = arrayList24;
                } else {
                    arrayList8 = arrayList24;
                    NotificationsSettingsActivity.NotificationException notificationException = new NotificationsSettingsActivity.NotificationException();
                    notificationException.did = jLongValue2;
                    arrayList11 = arrayList22;
                    notificationException.hasCustom = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + jLongValue2, false);
                    int iIntValue = ((Integer) next.getValue()).intValue();
                    notificationException.notify = iIntValue;
                    if (iIntValue != 0) {
                        Integer num = (Integer) all.get(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + strReplace);
                        if (num != null) {
                            notificationException.muteUntil = num.intValue();
                        }
                    }
                    if (DialogObject.isEncryptedDialog(jLongValue2)) {
                        int encryptedChatId = DialogObject.getEncryptedChatId(jLongValue2);
                        TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(encryptedChatId));
                        if (encryptedChat == null) {
                            arrayList19.add(Integer.valueOf(encryptedChatId));
                            longSparseArray.put(jLongValue2, notificationException);
                        } else {
                            TLRPC.User user = getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
                            if (user == null) {
                                arrayList17.add(Long.valueOf(encryptedChat.user_id));
                                longSparseArray.put(encryptedChat.user_id, notificationException);
                            } else if (user.deleted) {
                            }
                        }
                        arrayList12.add(notificationException);
                    } else if (DialogObject.isUserDialog(jLongValue2)) {
                        TLRPC.User user2 = getMessagesController().getUser(l2);
                        if (user2 == null) {
                            arrayList17.add(l2);
                            longSparseArray.put(jLongValue2, notificationException);
                        } else if (user2.deleted) {
                        }
                        arrayList12.add(notificationException);
                    } else {
                        long j2 = -jLongValue2;
                        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(j2));
                        if (chat == null) {
                            arrayList18.add(Long.valueOf(j2));
                            longSparseArray.put(jLongValue2, notificationException);
                        } else if (!chat.left && !chat.kicked && chat.migrated_to == null) {
                            if (ChatObject.isChannel(chat) && !chat.megagroup) {
                                arrayList16.add(notificationException);
                            } else {
                                arrayList13.add(notificationException);
                            }
                        }
                    }
                }
            } else {
                arrayList8 = arrayList14;
                arrayList9 = arrayList15;
                arrayList10 = arrayList20;
                arrayList11 = arrayList22;
            }
            it = it2;
            arrayList21 = arrayList23;
            arrayList20 = arrayList10;
            arrayList15 = arrayList9;
            arrayList14 = arrayList8;
            arrayList22 = arrayList11;
        }
        ArrayList arrayList25 = arrayList14;
        ArrayList arrayList26 = arrayList15;
        ArrayList<TLRPC.User> arrayList27 = arrayList20;
        ArrayList<TLRPC.Chat> arrayList28 = arrayList21;
        ArrayList<TLRPC.EncryptedChat> arrayList29 = arrayList22;
        HashSet hashSet = new HashSet();
        Iterator<Map.Entry<String, ?>> it3 = all.entrySet().iterator();
        while (true) {
            z = true;
            if (!it3.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next2 = it3.next();
            String key2 = next2.getKey();
            if (key2.startsWith(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY)) {
                try {
                    l = Utilities.parseLong(key2.substring(8));
                    jLongValue = l.longValue();
                } catch (Exception unused) {
                }
                if (jLongValue != 0 && jLongValue != j) {
                    NotificationsSettingsActivity.NotificationException notificationException2 = new NotificationsSettingsActivity.NotificationException();
                    notificationException2.did = jLongValue;
                    notificationException2.story = true;
                    notificationException2.notify = ((Boolean) next2.getValue()).booleanValue() ? 0 : Integer.MAX_VALUE;
                    if (DialogObject.isUserDialog(jLongValue)) {
                        TLRPC.User user3 = getMessagesController().getUser(l);
                        if (user3 == null) {
                            arrayList17.add(l);
                            longSparseArray.put(jLongValue, notificationException2);
                        } else if (user3.deleted) {
                        }
                        arrayList7 = arrayList25;
                        arrayList7.add(notificationException2);
                        hashSet.add(l);
                        arrayList25 = arrayList7;
                    }
                }
            }
            arrayList7 = arrayList25;
            arrayList25 = arrayList7;
        }
        ArrayList arrayList30 = arrayList25;
        if (arrayList != null) {
            Collections.sort(arrayList, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda3
                @Override // java.util.function.ToDoubleFunction
                public final double applyAsDouble(Object obj) {
                    return ((TLRPC.TL_topPeer) obj).rating;
                }
            }));
            int iMax = Math.max(0, arrayList.size() - 6);
            while (iMax < arrayList.size()) {
                long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_topPeer) arrayList.get(iMax)).peer);
                if (!hashSet.contains(Long.valueOf(peerDialogId))) {
                    NotificationsSettingsActivity.NotificationException notificationException3 = new NotificationsSettingsActivity.NotificationException();
                    notificationException3.did = peerDialogId;
                    notificationException3.story = z;
                    notificationException3.notify = 0;
                    notificationException3.auto = z;
                    if (DialogObject.isUserDialog(peerDialogId)) {
                        TLRPC.User user4 = getMessagesController().getUser(Long.valueOf(peerDialogId));
                        if (user4 == null) {
                            arrayList17.add(Long.valueOf(peerDialogId));
                            longSparseArray.put(peerDialogId, notificationException3);
                        } else if (user4.deleted) {
                        }
                        arrayList5 = arrayList30;
                        arrayList6 = arrayList26;
                        arrayList6.add(0, notificationException3);
                        hashSet.add(Long.valueOf(peerDialogId));
                    } else {
                        arrayList5 = arrayList30;
                        arrayList6 = arrayList26;
                    }
                }
                iMax++;
                arrayList26 = arrayList6;
                arrayList30 = arrayList5;
                z = true;
            }
        }
        final ArrayList arrayList31 = arrayList30;
        final ArrayList arrayList32 = arrayList26;
        if (longSparseArray.size() != 0) {
            try {
                if (arrayList19.isEmpty()) {
                    arrayList4 = arrayList29;
                } else {
                    try {
                        arrayList4 = arrayList29;
                    } catch (Exception e) {
                        e = e;
                        arrayList4 = arrayList29;
                        arrayList2 = arrayList28;
                        arrayList3 = arrayList27;
                        FileLog.m1136e(e);
                        size = arrayList2.size();
                        while (i < size) {
                        }
                        size2 = arrayList3.size();
                        while (i2 < size2) {
                        }
                        size3 = arrayList4.size();
                        while (i3 < size3) {
                        }
                        size4 = longSparseArray.size();
                        while (i4 < size4) {
                        }
                        final ArrayList<TLRPC.User> arrayList33 = arrayList3;
                        final ArrayList<TLRPC.EncryptedChat> arrayList34 = arrayList4;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$loadExceptions$19(arrayList33, arrayList2, arrayList34, arrayList12, arrayList13, arrayList31, arrayList32, arrayList16);
                            }
                        });
                    }
                    try {
                        getMessagesStorage().getEncryptedChatsInternal(TextUtils.join(",", arrayList19), arrayList4, arrayList17);
                    } catch (Exception e2) {
                        e = e2;
                        arrayList2 = arrayList28;
                        arrayList3 = arrayList27;
                        FileLog.m1136e(e);
                        size = arrayList2.size();
                        while (i < size) {
                        }
                        size2 = arrayList3.size();
                        while (i2 < size2) {
                        }
                        size3 = arrayList4.size();
                        while (i3 < size3) {
                        }
                        size4 = longSparseArray.size();
                        while (i4 < size4) {
                        }
                        final ArrayList arrayList332 = arrayList3;
                        final ArrayList arrayList342 = arrayList4;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$loadExceptions$19(arrayList332, arrayList2, arrayList342, arrayList12, arrayList13, arrayList31, arrayList32, arrayList16);
                            }
                        });
                    }
                }
                if (arrayList17.isEmpty()) {
                    arrayList3 = arrayList27;
                } else {
                    try {
                        arrayList3 = arrayList27;
                    } catch (Exception e3) {
                        e = e3;
                        arrayList3 = arrayList27;
                        arrayList2 = arrayList28;
                        FileLog.m1136e(e);
                        size = arrayList2.size();
                        while (i < size) {
                        }
                        size2 = arrayList3.size();
                        while (i2 < size2) {
                        }
                        size3 = arrayList4.size();
                        while (i3 < size3) {
                        }
                        size4 = longSparseArray.size();
                        while (i4 < size4) {
                        }
                        final ArrayList arrayList3322 = arrayList3;
                        final ArrayList arrayList3422 = arrayList4;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$loadExceptions$19(arrayList3322, arrayList2, arrayList3422, arrayList12, arrayList13, arrayList31, arrayList32, arrayList16);
                            }
                        });
                    }
                    try {
                        getMessagesStorage().getUsersInternal(arrayList17, arrayList3);
                    } catch (Exception e4) {
                        e = e4;
                        arrayList2 = arrayList28;
                        FileLog.m1136e(e);
                        size = arrayList2.size();
                        while (i < size) {
                        }
                        size2 = arrayList3.size();
                        while (i2 < size2) {
                        }
                        size3 = arrayList4.size();
                        while (i3 < size3) {
                        }
                        size4 = longSparseArray.size();
                        while (i4 < size4) {
                        }
                        final ArrayList arrayList33222 = arrayList3;
                        final ArrayList arrayList34222 = arrayList4;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$loadExceptions$19(arrayList33222, arrayList2, arrayList34222, arrayList12, arrayList13, arrayList31, arrayList32, arrayList16);
                            }
                        });
                    }
                }
                if (arrayList18.isEmpty()) {
                    arrayList2 = arrayList28;
                } else {
                    MessagesStorage messagesStorage = getMessagesStorage();
                    String strJoin = TextUtils.join(",", arrayList18);
                    arrayList2 = arrayList28;
                    try {
                        messagesStorage.getChatsInternal(strJoin, arrayList2);
                    } catch (Exception e5) {
                        e = e5;
                        FileLog.m1136e(e);
                    }
                }
            } catch (Exception e6) {
                e = e6;
                arrayList2 = arrayList28;
                arrayList3 = arrayList27;
                arrayList4 = arrayList29;
            }
            size = arrayList2.size();
            for (i = 0; i < size; i++) {
                TLRPC.Chat chat2 = arrayList2.get(i);
                if (!chat2.left && !chat2.kicked && chat2.migrated_to == null) {
                    NotificationsSettingsActivity.NotificationException notificationException4 = (NotificationsSettingsActivity.NotificationException) longSparseArray.get(-chat2.f1660id);
                    longSparseArray.remove(-chat2.f1660id);
                    if (notificationException4 != null) {
                        if (ChatObject.isChannel(chat2) && !chat2.megagroup) {
                            arrayList16.add(notificationException4);
                        } else {
                            arrayList13.add(notificationException4);
                        }
                    }
                }
            }
            size2 = arrayList3.size();
            for (i2 = 0; i2 < size2; i2++) {
                TLRPC.User user5 = arrayList3.get(i2);
                if (!user5.deleted) {
                    longSparseArray.remove(user5.f1825id);
                }
            }
            size3 = arrayList4.size();
            for (i3 = 0; i3 < size3; i3++) {
                longSparseArray.remove(DialogObject.makeEncryptedDialogId(arrayList4.get(i3).f1672id));
            }
            size4 = longSparseArray.size();
            for (i4 = 0; i4 < size4; i4++) {
                if (DialogObject.isChatDialog(longSparseArray.keyAt(i4))) {
                    arrayList13.remove(longSparseArray.valueAt(i4));
                    arrayList16.remove(longSparseArray.valueAt(i4));
                } else {
                    arrayList12.remove(longSparseArray.valueAt(i4));
                }
            }
        } else {
            arrayList2 = arrayList28;
            arrayList3 = arrayList27;
            arrayList4 = arrayList29;
        }
        final ArrayList arrayList332222 = arrayList3;
        final ArrayList arrayList342222 = arrayList4;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadExceptions$19(arrayList332222, arrayList2, arrayList342222, arrayList12, arrayList13, arrayList31, arrayList32, arrayList16);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadExceptions$19(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, ArrayList arrayList6, ArrayList arrayList7, ArrayList arrayList8) {
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        getMessagesController().putEncryptedChats(arrayList3, true);
        int i = this.currentType;
        if (i == 1) {
            this.exceptions = arrayList4;
        } else if (i == 0) {
            this.exceptions = arrayList5;
        } else if (i == 3) {
            this.exceptions = arrayList6;
            this.autoExceptions = arrayList7;
        } else {
            this.exceptions = arrayList8;
        }
        updateRows(true);
    }

    public void updateRows(boolean z) {
        ArrayList arrayList;
        int i;
        int i2;
        int i3;
        boolean z2;
        int i4;
        Boolean bool;
        this.newRow = -1;
        this.showRow = -1;
        this.importantRow = -1;
        this.messagesRow = -1;
        this.storiesRow = -1;
        this.previewRow = -1;
        this.showSenderRow = -1;
        this.soundRow = -1;
        this.addExceptionRow = -1;
        this.deleteExceptionsRow = -1;
        this.lightColorRow = -1;
        this.popupRow = -1;
        this.vibrateRow = -1;
        this.priorityRow = -1;
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        SharedPreferences notificationsSettings = getNotificationsSettings();
        if (this.currentType != -1) {
            this.items.add(ItemInner.asHeader(LocaleController.getString(C2888R.string.NotifyMeAbout)));
            int i5 = this.currentType;
            if (i5 == 3) {
                this.newRow = this.items.size();
                this.items.add(ItemInner.asCheck(101, LocaleController.getString(C2888R.string.NotifyMeAboutNewStories), notificationsSettings.getBoolean("EnableAllStories", false)));
                if (!notificationsSettings.getBoolean("EnableAllStories", false)) {
                    this.importantRow = this.items.size();
                    this.items.add(ItemInner.asCheck(102, LocaleController.getString(C2888R.string.NotifyMeAboutImportantStories), this.storiesAuto && ((bool = this.storiesEnabled) == null || !bool.booleanValue())));
                }
                this.items.add(ItemInner.asShadow(-1, LocaleController.getString(C2888R.string.StoryAutoExceptionsInfo)));
            } else if (i5 == 4 || i5 == 5) {
                this.messagesRow = this.items.size();
                ArrayList arrayList2 = this.items;
                int i6 = C2888R.drawable.msg_markunread;
                String string = LocaleController.getString(C2888R.string.NotifyMeAboutMessagesReactions);
                if (!notificationsSettings.getBoolean("EnableReactionsMessages", true)) {
                    i = C2888R.string.NotifyFromNobody;
                } else if (notificationsSettings.getBoolean("EnableReactionsMessagesContacts", false)) {
                    i = C2888R.string.NotifyFromContacts;
                } else {
                    i = C2888R.string.NotifyFromEveryone;
                }
                arrayList2.add(ItemInner.asCheck2(103, i6, string, LocaleController.getString(i), notificationsSettings.getBoolean("EnableReactionsMessages", true)));
                this.storiesRow = this.items.size();
                ArrayList arrayList3 = this.items;
                int i7 = C2888R.drawable.msg_stories_saved;
                String string2 = LocaleController.getString(C2888R.string.NotifyMeAboutStoriesReactions);
                if (!notificationsSettings.getBoolean("EnableReactionsStories", true)) {
                    i2 = C2888R.string.NotifyFromNobody;
                } else if (notificationsSettings.getBoolean("EnableReactionsStoriesContacts", false)) {
                    i2 = C2888R.string.NotifyFromContacts;
                } else {
                    i2 = C2888R.string.NotifyFromEveryone;
                }
                arrayList3.add(ItemInner.asCheck2(104, i7, string2, LocaleController.getString(i2), notificationsSettings.getBoolean("EnableReactionsStories", true)));
                this.items.add(ItemInner.asShadow(-1, null));
            } else {
                if (i5 == 1) {
                    i3 = C2888R.string.NotifyMeAboutPrivate;
                } else if (i5 == 0) {
                    i3 = C2888R.string.NotifyMeAboutGroups;
                } else {
                    i3 = C2888R.string.NotifyMeAboutChannels;
                }
                this.showRow = this.items.size();
                this.items.add(ItemInner.asCheck(100, LocaleController.getString(i3), getNotificationsController().isGlobalNotificationsEnabled(this.currentType)));
                this.items.add(ItemInner.asShadow(-1, null));
            }
            this.items.add(ItemInner.asHeader(LocaleController.getString(C2888R.string.SETTINGS)));
            this.settingsStart = this.items.size() - 1;
            int i8 = this.currentType;
            if (i8 == 3) {
                this.showSenderRow = this.items.size();
                this.items.add(ItemInner.asCheck(0, LocaleController.getString(C2888R.string.NotificationShowSenderNames), !notificationsSettings.getBoolean("EnableHideStoriesSenders", false)));
            } else if (i8 == 4 || i8 == 5) {
                this.showSenderRow = this.items.size();
                this.items.add(ItemInner.asCheck(0, LocaleController.getString(C2888R.string.NotificationShowSenderNames), notificationsSettings.getBoolean("EnableReactionsPreview", true)));
            } else {
                if (i8 == 0) {
                    z2 = notificationsSettings.getBoolean("EnablePreviewGroup", true);
                } else if (i8 == 1) {
                    z2 = notificationsSettings.getBoolean("EnablePreviewAll", true);
                } else {
                    z2 = i8 != 2 ? false : notificationsSettings.getBoolean("EnablePreviewChannel", true);
                }
                this.previewRow = this.items.size();
                this.items.add(ItemInner.asCheck(0, LocaleController.getString(C2888R.string.MessagePreview), z2));
            }
            this.soundRow = this.items.size();
            this.items.add(ItemInner.asSetting(3, LocaleController.getString("Sound", C2888R.string.Sound), getSound()));
            if (this.expanded) {
                this.lightColorRow = this.items.size();
                this.items.add(ItemInner.asColor(LocaleController.getString("LedColor", C2888R.string.LedColor), getLedColor()));
                int i9 = this.currentType;
                if (i9 == 0) {
                    i4 = notificationsSettings.getInt("vibrate_group", 0);
                } else if (i9 == 1) {
                    i4 = notificationsSettings.getInt("vibrate_messages", 0);
                } else if (i9 == 2) {
                    i4 = notificationsSettings.getInt("vibrate_channel", 0);
                } else if (i9 == 3) {
                    i4 = notificationsSettings.getInt("vibrate_stories", 0);
                } else {
                    i4 = (i9 == 4 || i9 == 5) ? notificationsSettings.getInt("vibrate_react", 0) : 0;
                }
                this.vibrateRow = this.items.size();
                ArrayList arrayList4 = this.items;
                String string3 = LocaleController.getString("Vibrate", C2888R.string.Vibrate);
                int[] iArr = this.vibrateLabels;
                arrayList4.add(ItemInner.asSetting(1, string3, LocaleController.getString(iArr[Utilities.clamp(i4, iArr.length - 1, 0)])));
                int i10 = this.currentType;
                if (i10 == 1 || i10 == 0) {
                    this.popupRow = this.items.size();
                    this.items.add(ItemInner.asSetting(2, LocaleController.getString("PopupNotification", C2888R.string.PopupNotification), getPopupOption()));
                }
                this.priorityRow = this.items.size();
                this.items.add(ItemInner.asSetting(4, LocaleController.getString("NotificationsImportance", C2888R.string.NotificationsImportance), getPriorityOption()));
                this.items.add(ItemInner.asExpand(LocaleController.getString(C2888R.string.NotifyLessOptions), false));
            } else {
                this.items.add(ItemInner.asExpand(LocaleController.getString(C2888R.string.NotifyMoreOptions), true));
            }
            this.settingsEnd = this.items.size() - 1;
            this.items.add(ItemInner.asShadow(-2, null));
        }
        int i11 = this.currentType;
        if (i11 != 4 && i11 != 5) {
            if (i11 != -1) {
                this.addExceptionRow = this.items.size();
                this.items.add(ItemInner.asButton(6, C2888R.drawable.msg_contact_add, LocaleController.getString("NotificationsAddAnException", C2888R.string.NotificationsAddAnException)));
            }
            this.exceptionsStart = this.items.size() - 1;
            if (this.autoExceptions != null && this.showAutoExceptions) {
                for (int i12 = 0; i12 < this.autoExceptions.size(); i12++) {
                    this.items.add(ItemInner.asException((NotificationsSettingsActivity.NotificationException) this.autoExceptions.get(i12)));
                }
            }
            if (this.exceptions != null) {
                for (int i13 = 0; i13 < this.exceptions.size(); i13++) {
                    this.items.add(ItemInner.asException((NotificationsSettingsActivity.NotificationException) this.exceptions.get(i13)));
                }
            }
            this.exceptionsEnd = this.items.size() - 1;
            if (this.currentType != -1 || ((arrayList = this.exceptions) != null && !arrayList.isEmpty())) {
                this.items.add(ItemInner.asShadow(-3, null));
            }
            ArrayList arrayList5 = this.exceptions;
            if (arrayList5 != null && !arrayList5.isEmpty()) {
                this.deleteExceptionsRow = this.items.size();
                this.items.add(ItemInner.asButton(7, 0, LocaleController.getString("NotificationsDeleteAllException", C2888R.string.NotificationsDeleteAllException)));
            }
        } else {
            this.exceptionsStart = -1;
            this.exceptionsEnd = -1;
        }
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            if (z) {
                listAdapter.setItems(this.oldItems, this.items);
            } else {
                listAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        updateRows(true);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        String title;
        Ringtone ringtone;
        super.onActivityResultFragment(i, i2, intent);
        if (i2 == -1) {
            Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
            if (uri == null || (ringtone = RingtoneManager.getRingtone(getParentActivity(), uri)) == null) {
                title = null;
            } else {
                if (uri.equals(Settings.System.DEFAULT_NOTIFICATION_URI)) {
                    title = LocaleController.getString("SoundDefault", C2888R.string.SoundDefault);
                } else {
                    title = ringtone.getTitle(getParentActivity());
                }
                ringtone.stop();
            }
            SharedPreferences.Editor editorEdit = getNotificationsSettings().edit();
            int i3 = this.currentType;
            if (i3 == 1) {
                if (title != null && uri != null) {
                    editorEdit.putString("GlobalSound", title);
                    editorEdit.putString("GlobalSoundPath", uri.toString());
                } else {
                    editorEdit.putString("GlobalSound", "NoSound");
                    editorEdit.putString("GlobalSoundPath", "NoSound");
                }
            } else if (i3 == 0) {
                if (title != null && uri != null) {
                    editorEdit.putString("GroupSound", title);
                    editorEdit.putString("GroupSoundPath", uri.toString());
                } else {
                    editorEdit.putString("GroupSound", "NoSound");
                    editorEdit.putString("GroupSoundPath", "NoSound");
                }
            } else if (i3 == 2) {
                if (title != null && uri != null) {
                    editorEdit.putString("ChannelSound", title);
                    editorEdit.putString("ChannelSoundPath", uri.toString());
                } else {
                    editorEdit.putString("ChannelSound", "NoSound");
                    editorEdit.putString("ChannelSoundPath", "NoSound");
                }
            } else if (i3 == 3) {
                if (title != null && uri != null) {
                    editorEdit.putString("StoriesSound", title);
                    editorEdit.putString("StoriesSoundPath", uri.toString());
                } else {
                    editorEdit.putString("StoriesSound", "NoSound");
                    editorEdit.putString("StoriesSoundPath", "NoSound");
                }
            }
            getNotificationsController().deleteNotificationChannelGlobal(this.currentType);
            editorEdit.apply();
            getNotificationsController().updateServerNotificationsSettings(this.currentType);
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(i);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                this.adapter.onBindViewHolder(viewHolderFindViewHolderForAdapterPosition, i);
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        getNotificationCenter().addObserver(this, NotificationCenter.notificationsSettingsUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.reloadHints);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getNotificationCenter().removeObserver(this, NotificationCenter.notificationsSettingsUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.reloadHints);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.notificationsSettingsUpdated) {
            ListAdapter listAdapter = this.adapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (i == NotificationCenter.reloadHints) {
            loadExceptions();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;
        private SearchAdapterHelper searchAdapterHelper;
        private ArrayList searchResult = new ArrayList();
        private ArrayList searchResultNames = new ArrayList();
        private Runnable searchRunnable;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public SearchAdapter(Context context) {
            this.mContext = context;
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$SearchAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ boolean canApplySearchResults(int i) {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$canApplySearchResults(this, i);
                }

                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ androidx.collection.LongSparseArray getExcludeCallParticipants() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
                }

                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ androidx.collection.LongSparseArray getExcludeUsers() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeUsers(this);
                }

                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i) {
                    this.f$0.lambda$new$0(i);
                }

                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ void onSetHashtags(ArrayList arrayList, HashMap map) {
                    SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$onSetHashtags(this, arrayList, map);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            if (this.searchRunnable == null && !this.searchAdapterHelper.isSearchInProgress()) {
                NotificationsCustomSettingsActivity.this.emptyView.showTextView();
            }
            notifyDataSetChanged();
        }

        public void searchDialogs(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            if (str == null) {
                this.searchResult.clear();
                this.searchResultNames.clear();
                this.searchAdapterHelper.mergeResults(null);
                this.searchAdapterHelper.queryServerSearch(null, true, (NotificationsCustomSettingsActivity.this.currentType == 1 || NotificationsCustomSettingsActivity.this.currentType == 3) ? false : true, true, false, false, 0L, false, 0, 0);
                notifyDataSetChanged();
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$SearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$1(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: processSearch, reason: merged with bridge method [inline-methods] */
        public void lambda$searchDialogs$1(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$3(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$3(final String str) {
            this.searchAdapterHelper.queryServerSearch(str, true, (NotificationsCustomSettingsActivity.this.currentType == 1 || NotificationsCustomSettingsActivity.this.currentType == 3) ? false : true, true, false, false, 0L, false, 0, 0);
            final ArrayList arrayList = new ArrayList(NotificationsCustomSettingsActivity.this.exceptions);
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$2(str, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01dc A[LOOP:1: B:54:0x0138->B:84:0x01dc, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x019b A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$processSearch$2(String str, ArrayList arrayList) {
            int i;
            String[] strArr;
            int i2;
            String[] strArr2;
            int i3;
            Object obj;
            String translitString;
            String str2;
            int i4;
            int i5;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList(), new ArrayList(), new ArrayList());
                return;
            }
            String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase);
            if (lowerCase.equals(translitString2) || translitString2.length() == 0) {
                translitString2 = null;
            }
            int i6 = 1;
            int i7 = 0;
            int i8 = (translitString2 != null ? 1 : 0) + 1;
            String[] strArr3 = new String[i8];
            strArr3[0] = lowerCase;
            if (translitString2 != null) {
                strArr3[1] = translitString2;
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            String[] strArr4 = new String[2];
            int i9 = 0;
            while (i9 < arrayList.size()) {
                NotificationsSettingsActivity.NotificationException notificationException = (NotificationsSettingsActivity.NotificationException) arrayList.get(i9);
                if (DialogObject.isEncryptedDialog(notificationException.did)) {
                    strArr = strArr4;
                    TLRPC.EncryptedChat encryptedChat = NotificationsCustomSettingsActivity.this.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(notificationException.did)));
                    if (encryptedChat != null) {
                        i = i7;
                        TLRPC.User user = NotificationsCustomSettingsActivity.this.getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
                        if (user != null) {
                            strArr[i] = ContactsController.formatName(user.first_name, user.last_name);
                            strArr[i6] = UserObject.getPublicUsername(user);
                        }
                    } else {
                        i = i7;
                    }
                } else {
                    i = i7;
                    strArr = strArr4;
                    if (DialogObject.isUserDialog(notificationException.did)) {
                        TLRPC.User user2 = NotificationsCustomSettingsActivity.this.getMessagesController().getUser(Long.valueOf(notificationException.did));
                        if (user2 != null && !user2.deleted) {
                            strArr[i] = ContactsController.formatName(user2.first_name, user2.last_name);
                            strArr[i6] = UserObject.getPublicUsername(user2);
                            obj = user2;
                            String str3 = strArr[i];
                            strArr[i] = str3.toLowerCase();
                            translitString = LocaleController.getInstance().getTranslitString(strArr[i]);
                            str2 = strArr[i];
                            if (str2 != null && str2.equals(translitString)) {
                                translitString = null;
                            }
                            i4 = i;
                            int i10 = i4;
                            while (i4 < i8) {
                                String str4 = strArr3[i4];
                                int i11 = i6;
                                String str5 = strArr[i];
                                i2 = i8;
                                if (str5 != null) {
                                    if (str5.startsWith(str4)) {
                                        strArr2 = strArr3;
                                    } else {
                                        strArr2 = strArr3;
                                        if (!strArr[i].contains(" " + str4)) {
                                        }
                                    }
                                    i5 = i11;
                                    if (i5 == 0) {
                                        i3 = i11;
                                        if (i5 == i3) {
                                            arrayList4.add(AndroidUtilities.generateSearchName(str3, null, str4));
                                        } else {
                                            arrayList4.add(AndroidUtilities.generateSearchName("@" + strArr[i3], null, "@" + str4));
                                        }
                                        arrayList3.add(notificationException);
                                        if (obj != null) {
                                            arrayList2.add(obj);
                                        }
                                    } else {
                                        i4++;
                                        i10 = i5;
                                        i6 = i11;
                                        i8 = i2;
                                        strArr3 = strArr2;
                                    }
                                } else {
                                    strArr2 = strArr3;
                                }
                                if (translitString != null) {
                                    if (!translitString.startsWith(str4)) {
                                        if (translitString.contains(" " + str4)) {
                                        }
                                        if (i5 == 0) {
                                        }
                                    }
                                    i5 = i11;
                                    if (i5 == 0) {
                                    }
                                }
                                String str6 = strArr[i11];
                                i5 = (str6 == null || !str6.startsWith(str4)) ? i10 : 2;
                                if (i5 == 0) {
                                }
                            }
                        }
                        i2 = i8;
                        strArr2 = strArr3;
                        i3 = i6;
                    } else {
                        TLRPC.Chat chat = NotificationsCustomSettingsActivity.this.getMessagesController().getChat(Long.valueOf(-notificationException.did));
                        if (chat != null) {
                            if (!chat.left && !chat.kicked && chat.migrated_to == null) {
                                strArr[i] = chat.title;
                                strArr[i6] = ChatObject.getPublicUsername(chat);
                                obj = chat;
                            }
                            i2 = i8;
                            strArr2 = strArr3;
                            i3 = i6;
                        }
                        String str32 = strArr[i];
                        strArr[i] = str32.toLowerCase();
                        translitString = LocaleController.getInstance().getTranslitString(strArr[i]);
                        str2 = strArr[i];
                        if (str2 != null) {
                            translitString = null;
                        }
                        i4 = i;
                        int i102 = i4;
                        while (i4 < i8) {
                        }
                        i2 = i8;
                        strArr2 = strArr3;
                        i3 = i6;
                    }
                    i9++;
                    i6 = i3;
                    strArr4 = strArr;
                    i7 = i;
                    i8 = i2;
                    strArr3 = strArr2;
                }
                obj = null;
                String str322 = strArr[i];
                strArr[i] = str322.toLowerCase();
                translitString = LocaleController.getInstance().getTranslitString(strArr[i]);
                str2 = strArr[i];
                if (str2 != null) {
                }
                i4 = i;
                int i1022 = i4;
                while (i4 < i8) {
                }
                i2 = i8;
                strArr2 = strArr3;
                i3 = i6;
                i9++;
                i6 = i3;
                strArr4 = strArr;
                i7 = i;
                i8 = i2;
                strArr3 = strArr2;
            }
            updateSearchResults(arrayList2, arrayList3, arrayList4);
        }

        private void updateSearchResults(final ArrayList arrayList, final ArrayList arrayList2, final ArrayList arrayList3) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$SearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$4(arrayList2, arrayList3, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
            if (NotificationsCustomSettingsActivity.this.searching) {
                this.searchRunnable = null;
                this.searchResult = arrayList;
                this.searchResultNames = arrayList2;
                this.searchAdapterHelper.mergeResults(arrayList3);
                if (NotificationsCustomSettingsActivity.this.searching && !this.searchAdapterHelper.isSearchInProgress()) {
                    NotificationsCustomSettingsActivity.this.emptyView.showTextView();
                }
                notifyDataSetChanged();
            }
        }

        public Object getObject(int i) {
            if (i >= 0 && i < this.searchResult.size()) {
                return this.searchResult.get(i);
            }
            int size = i - (this.searchResult.size() + 1);
            ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
            if (size < 0 || size >= globalSearch.size()) {
                return null;
            }
            return this.searchAdapterHelper.getGlobalSearch().get(size);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = this.searchResult.size();
            ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
            return !globalSearch.isEmpty() ? size + globalSearch.size() + 1 : size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View userCell;
            if (i == 0) {
                userCell = new UserCell(this.mContext, 4, 0, false, true);
            } else {
                userCell = new GraySectionCell(this.mContext);
                userCell.setBackgroundColor(0);
                userCell.setTag(-33024);
            }
            return new RecyclerListView.Holder(userCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    return;
                }
                ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString("AddToExceptions", C2888R.string.AddToExceptions));
                return;
            }
            UserCell userCell = (UserCell) viewHolder.itemView;
            if (i < this.searchResult.size()) {
                userCell.setException((NotificationsSettingsActivity.NotificationException) this.searchResult.get(i), (CharSequence) this.searchResultNames.get(i), i != this.searchResult.size() - 1);
                userCell.setAddButtonVisible(false);
            } else {
                int size = i - (this.searchResult.size() + 1);
                ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
                userCell.setData((TLObject) globalSearch.get(size), null, LocaleController.getString("NotificationsOn", C2888R.string.NotificationsOn), 0, size != globalSearch.size() - 1);
                userCell.setAddButtonVisible(true);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == this.searchResult.size() ? 1 : 0;
        }
    }

    private static class ItemInner extends AdapterWithDiffUtils.Item {
        public boolean checked;
        public int color;
        public NotificationsSettingsActivity.NotificationException exception;

        /* JADX INFO: renamed from: id */
        public int f2129id;
        public int resId;
        public CharSequence text;
        public CharSequence text2;

        private ItemInner(int i) {
            super(i, true);
        }

        public static ItemInner asHeader(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(0);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asCheck(int i, CharSequence charSequence, boolean z) {
            ItemInner itemInner = new ItemInner(1);
            itemInner.f2129id = i;
            itemInner.text = charSequence;
            itemInner.checked = z;
            return itemInner;
        }

        public static ItemInner asCheck2(int i, int i2, CharSequence charSequence, CharSequence charSequence2, boolean z) {
            ItemInner itemInner = new ItemInner(6);
            itemInner.f2129id = i;
            itemInner.resId = i2;
            itemInner.text = charSequence;
            itemInner.text2 = charSequence2;
            itemInner.checked = z;
            return itemInner;
        }

        public static ItemInner asException(NotificationsSettingsActivity.NotificationException notificationException) {
            ItemInner itemInner = new ItemInner(2);
            itemInner.exception = notificationException;
            return itemInner;
        }

        public static ItemInner asColor(CharSequence charSequence, int i) {
            ItemInner itemInner = new ItemInner(3);
            itemInner.text = charSequence;
            itemInner.color = i;
            return itemInner;
        }

        public static ItemInner asShadow(int i, CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(4);
            itemInner.f2129id = i;
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asSetting(int i, CharSequence charSequence, CharSequence charSequence2) {
            ItemInner itemInner = new ItemInner(5);
            itemInner.f2129id = i;
            itemInner.text = charSequence;
            itemInner.text2 = charSequence2;
            return itemInner;
        }

        public static ItemInner asButton(int i, int i2, CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(7);
            itemInner.f2129id = i;
            itemInner.resId = i2;
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asExpand(CharSequence charSequence, boolean z) {
            ItemInner itemInner = new ItemInner(8);
            itemInner.text = charSequence;
            itemInner.resId = z ? 1 : 0;
            return itemInner;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ItemInner itemInner = (ItemInner) obj;
                if (this.f2129id == itemInner.f2129id && this.color == itemInner.color && ((this.viewType == 8 || (this.resId == itemInner.resId && Objects.equals(this.text, itemInner.text) && (this.viewType == 6 || Objects.equals(this.text2, itemInner.text2)))) && this.exception == itemInner.exception)) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.ui.Components.ListView.AdapterWithDiffUtils.Item
        protected boolean contentsEquals(AdapterWithDiffUtils.Item item) {
            if (this == item) {
                return true;
            }
            if (item != null && getClass() == item.getClass()) {
                ItemInner itemInner = (ItemInner) item;
                if (this.f2129id == itemInner.f2129id && this.resId == itemInner.resId && this.color == itemInner.color && this.checked == itemInner.checked && Objects.equals(this.text, itemInner.text) && Objects.equals(this.text2, itemInner.text2) && this.exception == itemInner.exception) {
                    return true;
                }
            }
            return false;
        }
    }

    private class ListAdapter extends AdapterWithDiffUtils {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return (itemViewType == 0 || itemViewType == 4) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return NotificationsCustomSettingsActivity.this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            switch (i) {
                case 0:
                    headerCell = new HeaderCell(this.mContext);
                    break;
                case 1:
                    headerCell = new TextCheckCell(this.mContext);
                    break;
                case 2:
                    headerCell = new UserCell(this.mContext, 6, 0, false);
                    break;
                case 3:
                    headerCell = new TextColorCell(this.mContext);
                    break;
                case 4:
                    headerCell = new TextInfoPrivacyCell(this.mContext);
                    break;
                case 5:
                    headerCell = new TextSettingsCell(this.mContext);
                    break;
                case 6:
                    headerCell = new NotificationsCheckCell(this.mContext, 21, 64, true, ((BaseFragment) NotificationsCustomSettingsActivity.this).resourceProvider);
                    break;
                case 7:
                default:
                    headerCell = new TextCell(this.mContext);
                    break;
                case 8:
                    headerCell = NotificationsCustomSettingsActivity.this.new ExpandView(this.mContext);
                    break;
            }
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (i < 0 || i >= NotificationsCustomSettingsActivity.this.items.size()) {
                return;
            }
            ItemInner itemInner = (ItemInner) NotificationsCustomSettingsActivity.this.items.get(i);
            int i2 = i + 1;
            boolean z = i2 < NotificationsCustomSettingsActivity.this.items.size() && ((ItemInner) NotificationsCustomSettingsActivity.this.items.get(i2)).viewType != 4;
            switch (viewHolder.getItemViewType()) {
                case 0:
                    ((HeaderCell) viewHolder.itemView).setText(itemInner.text);
                    break;
                case 1:
                    ((TextCheckCell) viewHolder.itemView).setTextAndCheck(_UrlKt.FRAGMENT_ENCODE_SET + ((Object) itemInner.text), itemInner.checked, z);
                    break;
                case 2:
                    ((UserCell) viewHolder.itemView).setException(itemInner.exception, null, z);
                    break;
                case 3:
                    ((TextColorCell) viewHolder.itemView).setTextAndColor(_UrlKt.FRAGMENT_ENCODE_SET + ((Object) itemInner.text), itemInner.color, z);
                    break;
                case 4:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (itemInner.text == null) {
                        textInfoPrivacyCell.setFixedSize(12);
                        textInfoPrivacyCell.setText(null);
                    } else {
                        textInfoPrivacyCell.setFixedSize(0);
                        textInfoPrivacyCell.setText(itemInner.text);
                    }
                    break;
                case 5:
                    ((TextSettingsCell) viewHolder.itemView).setTextAndValue(itemInner.text, itemInner.text2, z);
                    break;
                case 6:
                    NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) viewHolder.itemView;
                    notificationsCheckCell.setDrawLine(true);
                    notificationsCheckCell.setChecked(itemInner.checked);
                    notificationsCheckCell.setTextAndValueAndIconAndCheck(itemInner.text, itemInner.text2, itemInner.resId, itemInner.checked, 0, false, z, true);
                    break;
                case 7:
                    TextCell textCell = (TextCell) viewHolder.itemView;
                    if (itemInner.resId == 0) {
                        textCell.setColors(-1, Theme.key_text_RedRegular);
                        textCell.setText(_UrlKt.FRAGMENT_ENCODE_SET + ((Object) itemInner.text), z);
                    } else {
                        textCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                        textCell.setTextAndIcon(_UrlKt.FRAGMENT_ENCODE_SET + ((Object) itemInner.text), itemInner.resId, z);
                    }
                    break;
                case 8:
                    ExpandView expandView = (ExpandView) viewHolder.itemView;
                    expandView.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                    expandView.set(itemInner.text, itemInner.resId == 1, z);
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            boolean zIsGlobalNotificationsEnabled;
            if (NotificationsCustomSettingsActivity.this.currentType == 3 || (NotificationsCustomSettingsActivity.this.exceptions != null && NotificationsCustomSettingsActivity.this.exceptions.isEmpty())) {
                if (NotificationsCustomSettingsActivity.this.currentType != 3) {
                    zIsGlobalNotificationsEnabled = NotificationsCustomSettingsActivity.this.getNotificationsController().isGlobalNotificationsEnabled(NotificationsCustomSettingsActivity.this.currentType);
                } else {
                    zIsGlobalNotificationsEnabled = NotificationsCustomSettingsActivity.this.storiesEnabled == null || NotificationsCustomSettingsActivity.this.storiesEnabled.booleanValue() || !(NotificationsCustomSettingsActivity.this.exceptions == null || NotificationsCustomSettingsActivity.this.exceptions.isEmpty());
                }
                int adapterPosition = viewHolder.getAdapterPosition();
                ItemInner itemInner = (adapterPosition < 0 || adapterPosition >= NotificationsCustomSettingsActivity.this.items.size()) ? null : (ItemInner) NotificationsCustomSettingsActivity.this.items.get(adapterPosition);
                if (itemInner == null || itemInner.f2129id != 102) {
                    int itemViewType = viewHolder.getItemViewType();
                    if (itemViewType == 0) {
                        ((HeaderCell) viewHolder.itemView).setEnabled(zIsGlobalNotificationsEnabled, null);
                        return;
                    }
                    if (itemViewType == 1) {
                        ((TextCheckCell) viewHolder.itemView).setEnabled(zIsGlobalNotificationsEnabled, null);
                    } else if (itemViewType == 3) {
                        ((TextColorCell) viewHolder.itemView).setEnabled(zIsGlobalNotificationsEnabled, null);
                    } else {
                        if (itemViewType != 5) {
                            return;
                        }
                        ((TextSettingsCell) viewHolder.itemView).setEnabled(zIsGlobalNotificationsEnabled, null);
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i < 0 || i >= NotificationsCustomSettingsActivity.this.items.size()) {
                return 5;
            }
            return ((ItemInner) NotificationsCustomSettingsActivity.this.items.get(i)).viewType;
        }
    }

    public class ExpandView extends TextCell {
        public ImageView imageView;

        public ExpandView(Context context) {
            super(context);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(NotificationsCustomSettingsActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon), PorterDuff.Mode.SRC_IN));
            this.imageView.setImageResource(C2888R.drawable.msg_expand);
            addView(this.imageView, LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 3 : 5) | 16, 17.0f, 0.0f, 17.0f, 0.0f));
        }

        @Override // org.telegram.p029ui.Cells.TextCell, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.imageView.measure(i, i2);
        }

        @Override // org.telegram.p029ui.Cells.TextCell, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int iM1124dp = LocaleController.isRTL ? AndroidUtilities.m1124dp(17.0f) : (i3 - i) - AndroidUtilities.m1124dp(41.0f);
            int iM1124dp2 = ((i4 - i2) - AndroidUtilities.m1124dp(24.0f)) / 2;
            this.imageView.layout(iM1124dp, iM1124dp2, AndroidUtilities.m1124dp(24.0f) + iM1124dp, AndroidUtilities.m1124dp(24.0f) + iM1124dp2);
        }

        public void set(CharSequence charSequence, boolean z, boolean z2) {
            setArrow(z, true);
            setText(charSequence, z2);
        }

        public void setArrow(boolean z, boolean z2) {
            if (z2) {
                this.imageView.animate().rotation(z ? 0.0f : 180.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).start();
            } else {
                this.imageView.setRotation(z ? 0.0f : 180.0f);
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.NotificationsCustomSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$21();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCheckCell.class, TextColorCell.class, TextSettingsCell.class, UserCell.class, NotificationsCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        int i2 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        int i3 = Theme.key_switchTrack;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i4 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextColorCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueButton));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueIcon));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$21() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
