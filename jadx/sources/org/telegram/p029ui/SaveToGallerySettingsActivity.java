package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SaveToGallerySettingsHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BackDrawable;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.UserCell;
import org.telegram.p029ui.Cells.UserCell2;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.SeekBarView;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class SaveToGallerySettingsActivity extends BaseFragment {
    private final int VIEW_TYPE_ADD_EXCEPTION;
    private final int VIEW_TYPE_CHAT;
    private final int VIEW_TYPE_CHOOSER;
    private final int VIEW_TYPE_DELETE_ALL;
    private final int VIEW_TYPE_DIVIDER;
    private final int VIEW_TYPE_DIVIDER_INFO;
    private final int VIEW_TYPE_DIVIDER_LAST;
    private final int VIEW_TYPE_HEADER;
    private final int VIEW_TYPE_TOGGLE;
    Adapter adapter;

    @Keep
    public int addExceptionRow;

    @Keep
    public int deleteAllExceptionsRow;
    SaveToGallerySettingsHelper.DialogException dialogException;
    long dialogId;
    LongSparseArray exceptionsDialogs;
    boolean isNewException;
    ArrayList items;

    @Keep
    public int maxVideoSizeRow;
    RecyclerListView recyclerListView;
    int savePhotosRow;
    int saveVideosRow;
    int type;
    int videoDividerRow;

    public SaveToGallerySettingsActivity(Bundle bundle) {
        super(bundle);
        this.VIEW_TYPE_ADD_EXCEPTION = 1;
        this.VIEW_TYPE_CHAT = 2;
        this.VIEW_TYPE_DIVIDER = 3;
        this.VIEW_TYPE_DELETE_ALL = 4;
        this.VIEW_TYPE_HEADER = 5;
        this.VIEW_TYPE_TOGGLE = 6;
        this.VIEW_TYPE_DIVIDER_INFO = 7;
        this.VIEW_TYPE_CHOOSER = 8;
        this.VIEW_TYPE_DIVIDER_LAST = 10;
        this.items = new ArrayList();
        this.exceptionsDialogs = new LongSparseArray();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.type = getArguments().getInt("type");
        this.exceptionsDialogs = getUserConfig().getSaveGalleryExceptions(this.type);
        long j = getArguments().getLong("dialog_id");
        this.dialogId = j;
        if (j != 0) {
            SaveToGallerySettingsHelper.DialogException dialogException = UserConfig.getInstance(this.currentAccount).getSaveGalleryExceptions(this.type).get(this.dialogId);
            this.dialogException = dialogException;
            if (dialogException == null) {
                this.isNewException = true;
                this.dialogException = new SaveToGallerySettingsHelper.DialogException();
                SaveToGallerySettingsHelper.Settings settings = SaveToGallerySettingsHelper.getSettings(this.type);
                SaveToGallerySettingsHelper.DialogException dialogException2 = this.dialogException;
                dialogException2.savePhoto = settings.savePhoto;
                dialogException2.saveVideo = settings.saveVideo;
                dialogException2.limitVideo = settings.limitVideo;
                dialogException2.dialogId = this.dialogId;
            }
        }
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.SaveToGallerySettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SaveToGallerySettingsActivity.this.finishFragment();
                }
            }
        });
        if (this.dialogException != null) {
            if (this.isNewException) {
                this.actionBar.setTitle(LocaleController.getString(C2888R.string.NotificationsNewException));
            } else {
                this.actionBar.setTitle(LocaleController.getString(C2888R.string.SaveToGalleryException));
            }
        } else {
            int i = this.type;
            if (i == 1) {
                this.actionBar.setTitle(LocaleController.getString(C2888R.string.SaveToGalleryPrivate));
            } else if (i == 2) {
                this.actionBar.setTitle(LocaleController.getString(C2888R.string.SaveToGalleryGroups));
            } else {
                this.actionBar.setTitle(LocaleController.getString(C2888R.string.SaveToGalleryChannels));
            }
        }
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.recyclerListView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.recyclerListView);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(400L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setLayoutManager(new LinearLayoutManager(context));
        RecyclerListView recyclerListView2 = this.recyclerListView;
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView2.setAdapter(adapter);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i2, float f, float f2) {
                this.f$0.lambda$createView$2(view, i2, f, f2);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public final boolean onItemClick(View view, int i2, float f, float f2) {
                return this.f$0.lambda$createView$5(view, i2, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public /* synthetic */ void onLongClickRelease() {
                RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onLongClickRelease(this);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public /* synthetic */ void onMove(float f, float f2) {
                RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onMove(this, f, f2);
            }
        });
        frameLayout.addView(this.recyclerListView);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        if (this.dialogException != null) {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            frameLayout2.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 8.0f));
            TextView textView = new TextView(getContext());
            textView.setTextSize(1, 14.0f);
            textView.setText(LocaleController.getString(this.isNewException ? C2888R.string.AddException : C2888R.string.SaveException));
            textView.setGravity(17);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            frameLayout2.addView(textView, LayoutHelper.createFrame(-2, -2, 17));
            frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$6(view);
                }
            });
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 16.0f, 16.0f, 16.0f));
        }
        updateRows();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view, int i, float f, float f2) {
        if (i == this.savePhotosRow) {
            getSettings().savePhoto = !r8.savePhoto;
            onSettingsUpdated();
            updateRows();
            return;
        }
        if (i == this.saveVideosRow) {
            getSettings().saveVideo = !r8.saveVideo;
            onSettingsUpdated();
            updateRows();
            return;
        }
        if (((Item) this.items.get(i)).viewType == 1) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("checkCanWrite", false);
            int i2 = this.type;
            if (i2 == 2) {
                bundle.putInt("dialogsType", 6);
            } else if (i2 == 4) {
                bundle.putInt("dialogsType", 5);
            } else {
                bundle.putInt("dialogsType", 4);
            }
            bundle.putBoolean("allowGlobalSearch", false);
            DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public /* synthetic */ boolean canSelectStories() {
                    return DialogsActivity.DialogsActivityDelegate.CC.$default$canSelectStories(this);
                }

                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i3, int i4, TopicsFragment topicsFragment) {
                    return this.f$0.lambda$createView$0(dialogsActivity2, arrayList, charSequence, z, z2, i3, i4, topicsFragment);
                }

                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public /* synthetic */ boolean didSelectStories(DialogsActivity dialogsActivity2) {
                    return DialogsActivity.DialogsActivityDelegate.CC.$default$didSelectStories(this, dialogsActivity2);
                }
            });
            presentFragment(dialogsActivity);
            return;
        }
        if (((Item) this.items.get(i)).viewType == 2) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("dialog_id", ((Item) this.items.get(i)).exception.dialogId);
            bundle2.putInt("type", this.type);
            presentFragment(new SaveToGallerySettingsActivity(bundle2));
            return;
        }
        if (((Item) this.items.get(i)).viewType == 4) {
            AlertDialog alertDialogCreate = AlertsCreator.createSimpleAlert(getContext(), LocaleController.getString(C2888R.string.NotificationsDeleteAllExceptionTitle), LocaleController.getString(C2888R.string.NotificationsDeleteAllExceptionAlert), LocaleController.getString(C2888R.string.Delete), new Runnable() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$1();
                }
            }, null).create();
            alertDialogCreate.show();
            alertDialogCreate.redPositive();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$0(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
        Bundle bundle = new Bundle();
        bundle.putLong("dialog_id", ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId);
        bundle.putInt("type", this.type);
        presentFragment(new SaveToGallerySettingsActivity(bundle), true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1() {
        this.exceptionsDialogs.clear();
        getUserConfig().updateSaveGalleryExceptions(this.type, this.exceptionsDialogs);
        updateRows();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(View view, final int i, float f, float f2) {
        if (((Item) this.items.get(i)).viewType != 2) {
            return false;
        }
        final SaveToGallerySettingsHelper.DialogException dialogException = ((Item) this.items.get(i)).exception;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext());
        ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C2888R.drawable.msg_customize, LocaleController.getString(C2888R.string.EditException), false, null);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem2 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C2888R.drawable.msg_delete, LocaleController.getString(C2888R.string.DeleteException), false, null);
        int i2 = Theme.key_text_RedRegular;
        actionBarMenuSubItemAddItem2.setColors(Theme.getColor(i2), Theme.getColor(i2));
        final ActionBarPopupWindow actionBarPopupWindowCreateSimplePopup = AlertsCreator.createSimplePopup(this, actionBarPopupWindowLayout, view, f, f2);
        actionBarPopupWindowLayout.setParentWindow(actionBarPopupWindowCreateSimplePopup);
        actionBarMenuSubItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$3(actionBarPopupWindowCreateSimplePopup, i, view2);
            }
        });
        actionBarMenuSubItemAddItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$4(actionBarPopupWindowCreateSimplePopup, dialogException, view2);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(ActionBarPopupWindow actionBarPopupWindow, int i, View view) {
        actionBarPopupWindow.dismiss();
        Bundle bundle = new Bundle();
        bundle.putLong("dialog_id", ((Item) this.items.get(i)).exception.dialogId);
        bundle.putInt("type", this.type);
        presentFragment(new SaveToGallerySettingsActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(ActionBarPopupWindow actionBarPopupWindow, SaveToGallerySettingsHelper.DialogException dialogException, View view) {
        actionBarPopupWindow.dismiss();
        LongSparseArray<SaveToGallerySettingsHelper.DialogException> saveGalleryExceptions = getUserConfig().getSaveGalleryExceptions(this.type);
        saveGalleryExceptions.remove(dialogException.dialogId);
        getUserConfig().updateSaveGalleryExceptions(this.type, saveGalleryExceptions);
        updateRows();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        if (this.isNewException) {
            LongSparseArray<SaveToGallerySettingsHelper.DialogException> saveGalleryExceptions = getUserConfig().getSaveGalleryExceptions(this.type);
            SaveToGallerySettingsHelper.DialogException dialogException = this.dialogException;
            saveGalleryExceptions.put(dialogException.dialogId, dialogException);
            getUserConfig().updateSaveGalleryExceptions(this.type, saveGalleryExceptions);
        }
        finishFragment();
    }

    private void updateRows() {
        ArrayList arrayList;
        String string;
        this.maxVideoSizeRow = -1;
        this.addExceptionRow = -1;
        this.deleteAllExceptionsRow = -1;
        int i = 0;
        int i2 = 1;
        if ((this.isPaused || this.adapter == null) ? false : true) {
            arrayList = new ArrayList();
            arrayList.addAll(this.items);
        } else {
            arrayList = null;
        }
        this.items.clear();
        int i3 = 3;
        if (this.dialogException != null) {
            this.items.add(new Item(9));
            this.items.add(new Item(i3));
        }
        int i4 = 5;
        this.items.add(new Item(i4, LocaleController.getString(C2888R.string.SaveToGallery)));
        this.savePhotosRow = this.items.size();
        int i5 = 6;
        this.items.add(new Item(i5));
        this.saveVideosRow = this.items.size();
        this.items.add(new Item(i5));
        int i6 = 2;
        int i7 = 4;
        if (this.dialogException != null) {
            string = LocaleController.getString(C2888R.string.SaveToGalleryHintCurrent);
        } else {
            int i8 = this.type;
            if (i8 == 1) {
                string = LocaleController.getString(C2888R.string.SaveToGalleryHintUser);
            } else if (i8 == 4) {
                string = LocaleController.getString(C2888R.string.SaveToGalleryHintChannels);
            } else {
                string = i8 == 2 ? LocaleController.getString(C2888R.string.SaveToGalleryHintGroup) : null;
            }
        }
        int i9 = 7;
        this.items.add(new Item(i9, string));
        if (getSettings().saveVideo) {
            this.items.add(new Item(i4, LocaleController.getString(C2888R.string.MaxVideoSize)));
            this.maxVideoSizeRow = this.items.size();
            this.items.add(new Item(8));
            this.videoDividerRow = this.items.size();
            this.items.add(new Item(i9));
        } else {
            this.videoDividerRow = -1;
        }
        if (this.dialogException == null) {
            this.exceptionsDialogs = getUserConfig().getSaveGalleryExceptions(this.type);
            this.addExceptionRow = this.items.size();
            this.items.add(new Item(i2));
            boolean z = false;
            while (i < this.exceptionsDialogs.size()) {
                this.items.add(new Item(i6, (SaveToGallerySettingsHelper.DialogException) this.exceptionsDialogs.valueAt(i)));
                i++;
                z = true;
            }
            if (z) {
                this.items.add(new Item(i3));
                this.deleteAllExceptionsRow = this.items.size();
                this.items.add(new Item(i7));
            }
            this.items.add(new Item(10));
        }
        Adapter adapter = this.adapter;
        if (adapter != null) {
            if (arrayList != null) {
                adapter.setItems(arrayList, this.items);
            } else {
                adapter.notifyDataSetChanged();
            }
        }
    }

    private class Adapter extends AdapterWithDiffUtils {
        private Adapter() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
        /* JADX WARN: Type inference failed for: r2v14 */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v17 */
        /* JADX WARN: Type inference failed for: r2v18 */
        /* JADX WARN: Type inference failed for: r2v19 */
        /* JADX WARN: Type inference failed for: r2v20 */
        /* JADX WARN: Type inference failed for: r2v21 */
        /* JADX WARN: Type inference failed for: r2v22 */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ?? r9;
            ?? shadowSectionCell = 0;
            switch (i) {
                case 1:
                    TextCell textCell = new TextCell(viewGroup.getContext());
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2888R.string.NotificationsAddAnException), C2888R.drawable.msg_contact_add, true);
                    textCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                    textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textCell;
                    break;
                case 2:
                    UserCell userCell = new UserCell(viewGroup.getContext(), 4, 0, false, false);
                    userCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    r9 = userCell;
                    shadowSectionCell = r9;
                    break;
                case 3:
                    shadowSectionCell = new ShadowSectionCell(viewGroup.getContext());
                    break;
                case 4:
                    TextCell textCell2 = new TextCell(viewGroup.getContext());
                    textCell2.setText(LocaleController.getString(C2888R.string.NotificationsDeleteAllException), false);
                    textCell2.setColors(-1, Theme.key_text_RedRegular);
                    textCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textCell2;
                    break;
                case 5:
                    HeaderCell headerCell = new HeaderCell(viewGroup.getContext());
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = headerCell;
                    break;
                case 6:
                    TextCheckCell textCheckCell = new TextCheckCell(viewGroup.getContext());
                    textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = textCheckCell;
                    break;
                case 7:
                    shadowSectionCell = new TextInfoPrivacyCell(viewGroup.getContext());
                    break;
                case 8:
                    ?? linearLayout = new LinearLayout(SaveToGallerySettingsActivity.this.getContext());
                    linearLayout.setOrientation(1);
                    final SeekBarView seekBarView = new SeekBarView(SaveToGallerySettingsActivity.this.getContext());
                    FrameLayout frameLayout = new FrameLayout(SaveToGallerySettingsActivity.this.getContext());
                    SaveToGallerySettingsActivity saveToGallerySettingsActivity = SaveToGallerySettingsActivity.this;
                    final SelectableAnimatedTextView selectableAnimatedTextView = saveToGallerySettingsActivity.new SelectableAnimatedTextView(saveToGallerySettingsActivity.getContext());
                    selectableAnimatedTextView.setTextSize(AndroidUtilities.m1124dp(13.0f));
                    selectableAnimatedTextView.setText(AndroidUtilities.formatFileSize(524288L, true, false));
                    frameLayout.addView(selectableAnimatedTextView, LayoutHelper.createFrame(-2, -2, 83));
                    SaveToGallerySettingsActivity saveToGallerySettingsActivity2 = SaveToGallerySettingsActivity.this;
                    final SelectableAnimatedTextView selectableAnimatedTextView2 = saveToGallerySettingsActivity2.new SelectableAnimatedTextView(saveToGallerySettingsActivity2.getContext());
                    selectableAnimatedTextView2.setTextSize(AndroidUtilities.m1124dp(13.0f));
                    frameLayout.addView(selectableAnimatedTextView2, LayoutHelper.createFrame(-2, -2, 81));
                    SaveToGallerySettingsActivity saveToGallerySettingsActivity3 = SaveToGallerySettingsActivity.this;
                    final SelectableAnimatedTextView selectableAnimatedTextView3 = saveToGallerySettingsActivity3.new SelectableAnimatedTextView(saveToGallerySettingsActivity3.getContext());
                    selectableAnimatedTextView3.setTextSize(AndroidUtilities.m1124dp(13.0f));
                    long j = SaveToGallerySettingsHelper.MAX_VIDEO_LIMIT;
                    selectableAnimatedTextView3.setText(AndroidUtilities.formatFileSize(SaveToGallerySettingsHelper.MAX_VIDEO_LIMIT, true, false));
                    frameLayout.addView(selectableAnimatedTextView3, LayoutHelper.createFrame(-2, -2, 85));
                    linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 20, 0, 21, 10, 21, 0));
                    linearLayout.addView(seekBarView, LayoutHelper.createLinear(-1, 38, 0, 5, 0, 5, 4));
                    long j2 = SaveToGallerySettingsActivity.this.getSettings().limitVideo;
                    if (j2 >= 0 && j2 <= SaveToGallerySettingsHelper.MAX_VIDEO_LIMIT) {
                        j = j2;
                    }
                    seekBarView.setReportChanges(true);
                    seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.SaveToGallerySettingsActivity.Adapter.1
                        @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                        public /* synthetic */ CharSequence getContentDescription() {
                            return SeekBarView.SeekBarViewDelegate.CC.$default$getContentDescription(this);
                        }

                        @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                        public /* synthetic */ int getStepsCount() {
                            return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
                        }

                        @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                        public /* synthetic */ boolean needVisuallyDivideSteps() {
                            return SeekBarView.SeekBarViewDelegate.CC.$default$needVisuallyDivideSteps(this);
                        }

                        @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                        public void onSeekBarPressed(boolean z) {
                        }

                        @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
                        public void onSeekBarDrag(boolean z, float f) {
                            boolean zIsAttachedToWindow = seekBarView.isAttachedToWindow();
                            long j3 = (long) (f > 0.7f ? SaveToGallerySettingsHelper.DEFAULT_VIDEO_LIMIT + (4089446400L * ((f - 0.7f) / 0.3f)) : (104333312 * (f / 0.7f)) + 524288.0f);
                            if (f >= 1.0f) {
                                selectableAnimatedTextView.setSelectedInternal(false, zIsAttachedToWindow);
                                selectableAnimatedTextView2.setSelectedInternal(false, zIsAttachedToWindow);
                                selectableAnimatedTextView3.setSelectedInternal(true, zIsAttachedToWindow);
                                AndroidUtilities.updateViewVisibilityAnimated(selectableAnimatedTextView2, false, 0.8f, zIsAttachedToWindow);
                            } else if (f == 0.0f) {
                                selectableAnimatedTextView.setSelectedInternal(true, zIsAttachedToWindow);
                                selectableAnimatedTextView2.setSelectedInternal(false, zIsAttachedToWindow);
                                selectableAnimatedTextView3.setSelectedInternal(false, zIsAttachedToWindow);
                                AndroidUtilities.updateViewVisibilityAnimated(selectableAnimatedTextView2, false, 0.8f, zIsAttachedToWindow);
                            } else {
                                selectableAnimatedTextView2.setText(LocaleController.formatString("UpToFileSize", C2888R.string.UpToFileSize, AndroidUtilities.formatFileSize(j3, true, false)), false);
                                selectableAnimatedTextView.setSelectedInternal(false, zIsAttachedToWindow);
                                selectableAnimatedTextView2.setSelectedInternal(true, zIsAttachedToWindow);
                                selectableAnimatedTextView3.setSelectedInternal(false, zIsAttachedToWindow);
                                AndroidUtilities.updateViewVisibilityAnimated(selectableAnimatedTextView2, true, 0.8f, zIsAttachedToWindow);
                            }
                            if (z) {
                                SaveToGallerySettingsActivity.this.getSettings().limitVideo = j3;
                                SaveToGallerySettingsActivity.this.onSettingsUpdated();
                            }
                        }
                    });
                    seekBarView.setProgress(((float) j) > ((float) SaveToGallerySettingsHelper.DEFAULT_VIDEO_LIMIT) * 0.7f ? (0.3f * ((j - SaveToGallerySettingsHelper.DEFAULT_VIDEO_LIMIT) / 4089446400L)) + 0.7f : ((j - 524288) / 104333312) * 0.7f);
                    seekBarView.delegate.onSeekBarDrag(false, seekBarView.getProgress());
                    linearLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    r9 = linearLayout;
                    shadowSectionCell = r9;
                    break;
                case 9:
                    UserCell2 userCell2 = new UserCell2(SaveToGallerySettingsActivity.this.getContext(), 4, 0, SaveToGallerySettingsActivity.this.getResourceProvider());
                    userCell2.setData(DialogObject.isUserDialog(SaveToGallerySettingsActivity.this.dialogId) ? MessagesController.getInstance(((BaseFragment) SaveToGallerySettingsActivity.this).currentAccount).getUser(Long.valueOf(SaveToGallerySettingsActivity.this.dialogId)) : MessagesController.getInstance(((BaseFragment) SaveToGallerySettingsActivity.this).currentAccount).getChat(Long.valueOf(-SaveToGallerySettingsActivity.this.dialogId)), null, null, 0);
                    userCell2.setBackgroundColor(SaveToGallerySettingsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    shadowSectionCell = userCell2;
                    break;
                case 10:
                    ShadowSectionCell shadowSectionCell2 = new ShadowSectionCell(viewGroup.getContext());
                    shadowSectionCell2.setBackgroundDrawable(Theme.getThemedDrawable(SaveToGallerySettingsActivity.this.getContext(), C2888R.drawable.greydivider_bottom, Theme.getColor(Theme.key_windowBackgroundGrayShadow, SaveToGallerySettingsActivity.this.getResourceProvider())));
                    shadowSectionCell = shadowSectionCell2;
                    break;
            }
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String name;
            if (((Item) SaveToGallerySettingsActivity.this.items.get(i)).viewType == 1) {
                ((TextCell) viewHolder.itemView).setNeedDivider(SaveToGallerySettingsActivity.this.exceptionsDialogs.size() > 0);
                return;
            }
            if (((Item) SaveToGallerySettingsActivity.this.items.get(i)).viewType == 6) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                SaveToGallerySettingsHelper.Settings settings = SaveToGallerySettingsActivity.this.getSettings();
                if (i == SaveToGallerySettingsActivity.this.savePhotosRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2888R.string.SaveToGalleryPhotos), settings.savePhoto, true);
                    SaveToGallerySettingsActivity saveToGallerySettingsActivity = SaveToGallerySettingsActivity.this;
                    int i2 = Theme.key_statisticChartLine_lightblue;
                    textCheckCell.setColorfullIcon(saveToGallerySettingsActivity.getThemedColor(i2), C2888R.drawable.msg_filled_data_photos);
                    textCheckCell.setColorfullIcon(SaveToGallerySettingsActivity.this.getThemedColor(i2), C2888R.drawable.msg_filled_data_photos);
                    return;
                }
                textCheckCell.setTextAndCheck(LocaleController.getString(C2888R.string.SaveToGalleryVideos), settings.saveVideo, false);
                textCheckCell.setColorfullIcon(SaveToGallerySettingsActivity.this.getThemedColor(Theme.key_statisticChartLine_green), C2888R.drawable.msg_filled_data_videos);
                return;
            }
            if (((Item) SaveToGallerySettingsActivity.this.items.get(i)).viewType == 7) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                SaveToGallerySettingsActivity saveToGallerySettingsActivity2 = SaveToGallerySettingsActivity.this;
                if (i == saveToGallerySettingsActivity2.videoDividerRow) {
                    long j = saveToGallerySettingsActivity2.getSettings().limitVideo;
                    SaveToGallerySettingsActivity saveToGallerySettingsActivity3 = SaveToGallerySettingsActivity.this;
                    if (saveToGallerySettingsActivity3.dialogException != null) {
                        textInfoPrivacyCell.setText(LocaleController.formatString("SaveToGalleryVideoHintCurrent", C2888R.string.SaveToGalleryVideoHintCurrent, new Object[0]));
                        return;
                    }
                    int i3 = saveToGallerySettingsActivity3.type;
                    if (i3 == 1) {
                        textInfoPrivacyCell.setText(LocaleController.formatString("SaveToGalleryVideoHintUser", C2888R.string.SaveToGalleryVideoHintUser, new Object[0]));
                        return;
                    } else if (i3 == 4) {
                        textInfoPrivacyCell.setText(LocaleController.formatString("SaveToGalleryVideoHintChannels", C2888R.string.SaveToGalleryVideoHintChannels, new Object[0]));
                        return;
                    } else {
                        if (i3 == 2) {
                            textInfoPrivacyCell.setText(LocaleController.formatString("SaveToGalleryVideoHintGroup", C2888R.string.SaveToGalleryVideoHintGroup, new Object[0]));
                            return;
                        }
                        return;
                    }
                }
                textInfoPrivacyCell.setText(((Item) saveToGallerySettingsActivity2.items.get(i)).title);
                return;
            }
            if (((Item) SaveToGallerySettingsActivity.this.items.get(i)).viewType == 5) {
                ((HeaderCell) viewHolder.itemView).setText(((Item) SaveToGallerySettingsActivity.this.items.get(i)).title);
                return;
            }
            if (((Item) SaveToGallerySettingsActivity.this.items.get(i)).viewType == 2) {
                UserCell userCell = (UserCell) viewHolder.itemView;
                SaveToGallerySettingsHelper.DialogException dialogException = ((Item) SaveToGallerySettingsActivity.this.items.get(i)).exception;
                TLObject userOrChat = SaveToGallerySettingsActivity.this.getMessagesController().getUserOrChat(dialogException.dialogId);
                if (userOrChat instanceof TLRPC.User) {
                    TLRPC.User user = (TLRPC.User) userOrChat;
                    if (user.self) {
                        name = LocaleController.getString(C2888R.string.SavedMessages);
                    } else {
                        name = ContactsController.formatName(user.first_name, user.last_name);
                    }
                } else {
                    name = userOrChat instanceof TLRPC.Chat ? ((TLRPC.Chat) userOrChat).title : null;
                }
                String str = name;
                userCell.setSelfAsSavedMessages(true);
                userCell.setData(userOrChat, str, dialogException.createDescription(((BaseFragment) SaveToGallerySettingsActivity.this).currentAccount), 0, i == SaveToGallerySettingsActivity.this.items.size() - 1 || ((Item) SaveToGallerySettingsActivity.this.items.get(i + 1)).viewType == 2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SaveToGallerySettingsActivity.this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return ((Item) SaveToGallerySettingsActivity.this.items.get(i)).viewType;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 2 || viewHolder.getItemViewType() == 4 || viewHolder.getItemViewType() == 6;
        }
    }

    private class Item extends AdapterWithDiffUtils.Item {
        final SaveToGallerySettingsHelper.DialogException exception;
        String title;

        private Item(int i) {
            super(i, false);
            this.exception = null;
        }

        private Item(int i, SaveToGallerySettingsHelper.DialogException dialogException) {
            super(i, false);
            this.exception = dialogException;
        }

        private Item(int i, String str) {
            super(i, false);
            this.title = str;
            this.exception = null;
        }

        public boolean equals(Object obj) {
            SaveToGallerySettingsHelper.DialogException dialogException;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Item item = (Item) obj;
            if (this.viewType != item.viewType) {
                return false;
            }
            String str = this.title;
            if (str != null) {
                return Objects.equals(str, item.title);
            }
            SaveToGallerySettingsHelper.DialogException dialogException2 = this.exception;
            return dialogException2 == null || (dialogException = item.exception) == null || dialogException2.dialogId == dialogException.dialogId;
        }
    }

    SaveToGallerySettingsHelper.Settings getSettings() {
        SaveToGallerySettingsHelper.DialogException dialogException = this.dialogException;
        return dialogException != null ? dialogException : SaveToGallerySettingsHelper.getSettings(this.type);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        updateRows();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSettingsUpdated() {
        if (this.isNewException) {
            return;
        }
        if (this.dialogException != null) {
            LongSparseArray<SaveToGallerySettingsHelper.DialogException> saveGalleryExceptions = getUserConfig().getSaveGalleryExceptions(this.type);
            SaveToGallerySettingsHelper.DialogException dialogException = this.dialogException;
            saveGalleryExceptions.put(dialogException.dialogId, dialogException);
            getUserConfig().updateSaveGalleryExceptions(this.type, saveGalleryExceptions);
            return;
        }
        SaveToGallerySettingsHelper.saveSettings(this.type);
    }

    private class SelectableAnimatedTextView extends AnimatedTextView {
        AnimatedFloat progressToSelect;
        boolean selected;

        public SelectableAnimatedTextView(Context context) {
            super(context, true, true, false);
            this.progressToSelect = new AnimatedFloat(this);
            getDrawable().setAllowCancel(true);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.progressToSelect.set(this.selected ? 1.0f : 0.0f);
            setTextColor(ColorUtils.blendARGB(SaveToGallerySettingsActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText), SaveToGallerySettingsActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText), this.progressToSelect.get()));
            super.dispatchDraw(canvas);
        }

        public void setSelectedInternal(boolean z, boolean z2) {
            if (this.selected != z) {
                this.selected = z;
                this.progressToSelect.set(z ? 1.0f : 0.0f, z2);
                invalidate();
            }
        }
    }
}
