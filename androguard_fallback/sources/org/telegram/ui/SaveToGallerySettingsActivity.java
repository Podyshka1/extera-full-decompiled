package org.telegram.ui;
public class SaveToGallerySettingsActivity extends org.telegram.ui.ActionBar.BaseFragment {
    private final int VIEW_TYPE_ADD_EXCEPTION;
    private final int VIEW_TYPE_CHAT;
    private final int VIEW_TYPE_CHOOSER;
    private final int VIEW_TYPE_DELETE_ALL;
    private final int VIEW_TYPE_DIVIDER;
    private final int VIEW_TYPE_DIVIDER_INFO;
    private final int VIEW_TYPE_DIVIDER_LAST;
    private final int VIEW_TYPE_HEADER;
    private final int VIEW_TYPE_TOGGLE;
    org.telegram.ui.SaveToGallerySettingsActivity$Adapter adapter;
    public int addExceptionRow;
    public int deleteAllExceptionsRow;
    org.telegram.messenger.SaveToGallerySettingsHelper$DialogException dialogException;
    long dialogId;
    android.util.LongSparseArray exceptionsDialogs;
    boolean isNewException;
    java.util.ArrayList items;
    public int maxVideoSizeRow;
    org.telegram.ui.Components.RecyclerListView recyclerListView;
    int savePhotosRow;
    int saveVideosRow;
    int type;
    int videoDividerRow;

    public static synthetic boolean $r8$lambda$6jwZRUcuGLe0jRYjI8Z93dB0DqE(org.telegram.ui.SaveToGallerySettingsActivity p0, org.telegram.ui.DialogsActivity p1, java.util.ArrayList p2, CharSequence p3, boolean p4, boolean p5, int p6, int p7, org.telegram.ui.TopicsFragment p8)
    {
        return p0.lambda$createView$0(p1, p2, p3, p4, p5, p6, p7, p8);
    }

    public static synthetic void $r8$lambda$I7AKAJXyQG0jhVB-RxwUDIet36Y(org.telegram.ui.SaveToGallerySettingsActivity p0, android.view.View p1, int p2, float p3, float p4)
    {
        p0.lambda$createView$2(p1, p2, p3, p4);
        return;
    }

    public static synthetic boolean $r8$lambda$LoKI7TdJgkOOlrRfeLESzKOrefE(org.telegram.ui.SaveToGallerySettingsActivity p0, android.view.View p1, int p2, float p3, float p4)
    {
        return p0.lambda$createView$5(p1, p2, p3, p4);
    }

    public static synthetic void $r8$lambda$NLdpExMTVk3BGbKTFTkg-fA4jK4(org.telegram.ui.SaveToGallerySettingsActivity p0, android.view.View p1)
    {
        p0.lambda$createView$6(p1);
        return;
    }

    public static synthetic void $r8$lambda$gQfxSSPCFqdFZwxVdK7ZuAlsxrE(org.telegram.ui.SaveToGallerySettingsActivity p0)
    {
        p0.lambda$createView$1();
        return;
    }

    public static synthetic void $r8$lambda$inE0AvvmrFKJPK1ONTtQpBy_U4A(org.telegram.ui.SaveToGallerySettingsActivity p0, org.telegram.ui.ActionBar.ActionBarPopupWindow p1, int p2, android.view.View p3)
    {
        p0.lambda$createView$3(p1, p2, p3);
        return;
    }

    public static synthetic void $r8$lambda$wYsYoHXc2iY1R_HntlmDt-oCfHs(org.telegram.ui.SaveToGallerySettingsActivity p0, org.telegram.ui.ActionBar.ActionBarPopupWindow p1, org.telegram.messenger.SaveToGallerySettingsHelper$DialogException p2, android.view.View p3)
    {
        p0.lambda$createView$4(p1, p2, p3);
        return;
    }

    static bridge synthetic void -$$Nest$monSettingsUpdated(org.telegram.ui.SaveToGallerySettingsActivity p0)
    {
        p0.onSettingsUpdated();
        return;
    }

    public SaveToGallerySettingsActivity(android.os.Bundle p1)
    {
        super(p1);
        super.VIEW_TYPE_ADD_EXCEPTION = 1;
        super.VIEW_TYPE_CHAT = 2;
        super.VIEW_TYPE_DIVIDER = 3;
        super.VIEW_TYPE_DELETE_ALL = 4;
        super.VIEW_TYPE_HEADER = 5;
        super.VIEW_TYPE_TOGGLE = 6;
        super.VIEW_TYPE_DIVIDER_INFO = 7;
        super.VIEW_TYPE_CHOOSER = 8;
        super.VIEW_TYPE_DIVIDER_LAST = 10;
        super.items = new java.util.ArrayList();
        super.exceptionsDialogs = new android.util.LongSparseArray();
        return;
    }

    static synthetic int access$000(org.telegram.ui.SaveToGallerySettingsActivity p0)
    {
        return p0.currentAccount;
    }

    static synthetic int access$100(org.telegram.ui.SaveToGallerySettingsActivity p0)
    {
        return p0.currentAccount;
    }

    static synthetic int access$200(org.telegram.ui.SaveToGallerySettingsActivity p0)
    {
        return p0.currentAccount;
    }

    private synthetic boolean lambda$createView$0(org.telegram.ui.DialogsActivity p1, java.util.ArrayList p2, CharSequence p3, boolean p4, boolean p5, int p6, int p7, org.telegram.ui.TopicsFragment p8)
    {
        int v1_1 = new android.os.Bundle();
        v1_1.putLong("dialog_id", ((org.telegram.messenger.MessagesStorage$TopicKey) p2.get(0)).dialogId);
        v1_1.putInt("type", this.type);
        this.presentFragment(new org.telegram.ui.SaveToGallerySettingsActivity(v1_1), 1);
        return 1;
    }

    private synthetic void lambda$createView$1()
    {
        this.exceptionsDialogs.clear();
        this.getUserConfig().updateSaveGalleryExceptions(this.type, this.exceptionsDialogs);
        this.updateRows();
        return;
    }

    private synthetic void lambda$createView$2(android.view.View p8, int p9, float p10, float p11)
    {
        if (p9 != this.savePhotosRow) {
            if (p9 != this.saveVideosRow) {
                if (((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p9)).viewType != 1) {
                    if (((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p9)).viewType != 2) {
                        if (((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p9)).viewType == 4) {
                            org.telegram.ui.ActionBar.AlertDialog v8_14 = org.telegram.ui.Components.AlertsCreator.createSimpleAlert(this.getContext(), org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.NotificationsDeleteAllExceptionTitle), org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.NotificationsDeleteAllExceptionAlert), org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.Delete), new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda6(this), 0).create();
                            v8_14.show();
                            v8_14.redPositive();
                        }
                        return;
                    } else {
                        org.telegram.ui.ActionBar.AlertDialog v8_16 = new android.os.Bundle();
                        v8_16.putLong("dialog_id", ((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p9)).exception.dialogId);
                        v8_16.putInt("type", this.type);
                        this.presentFragment(new org.telegram.ui.SaveToGallerySettingsActivity(v8_16));
                        return;
                    }
                } else {
                    org.telegram.ui.ActionBar.AlertDialog v8_19 = new android.os.Bundle();
                    v8_19.putBoolean("onlySelect", 1);
                    v8_19.putBoolean("checkCanWrite", 0);
                    int v9_10 = this.type;
                    if (v9_10 != 2) {
                        if (v9_10 != 4) {
                            v8_19.putInt("dialogsType", 4);
                        } else {
                            v8_19.putInt("dialogsType", 5);
                        }
                    } else {
                        v8_19.putInt("dialogsType", 6);
                    }
                    v8_19.putBoolean("allowGlobalSearch", 0);
                    int v9_15 = new org.telegram.ui.DialogsActivity(v8_19);
                    v9_15.setDelegate(new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda5(this));
                    this.presentFragment(v9_15);
                    return;
                }
            } else {
                org.telegram.ui.ActionBar.AlertDialog v8_24 = this.getSettings();
                v8_24.saveVideo = (v8_24.saveVideo ^ 1);
                this.onSettingsUpdated();
                this.updateRows();
                return;
            }
        } else {
            org.telegram.ui.ActionBar.AlertDialog v8_26 = this.getSettings();
            v8_26.savePhoto = (v8_26.savePhoto ^ 1);
            this.onSettingsUpdated();
            this.updateRows();
            return;
        }
    }

    private synthetic void lambda$createView$3(org.telegram.ui.ActionBar.ActionBarPopupWindow p2, int p3, android.view.View p4)
    {
        p2.dismiss();
        android.os.Bundle v2_2 = new android.os.Bundle();
        v2_2.putLong("dialog_id", ((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p3)).exception.dialogId);
        v2_2.putInt("type", this.type);
        this.presentFragment(new org.telegram.ui.SaveToGallerySettingsActivity(v2_2));
        return;
    }

    private synthetic void lambda$createView$4(org.telegram.ui.ActionBar.ActionBarPopupWindow p1, org.telegram.messenger.SaveToGallerySettingsHelper$DialogException p2, android.view.View p3)
    {
        p1.dismiss();
        android.util.LongSparseArray v1_2 = this.getUserConfig().getSaveGalleryExceptions(this.type);
        v1_2.remove(p2.dialogId);
        this.getUserConfig().updateSaveGalleryExceptions(this.type, v1_2);
        this.updateRows();
        return;
    }

    private synthetic boolean lambda$createView$5(android.view.View p8, int p9, float p10, float p11)
    {
        if (((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p9)).viewType != 2) {
            return 0;
        } else {
            org.telegram.messenger.SaveToGallerySettingsHelper$DialogException v0_3 = ((org.telegram.ui.SaveToGallerySettingsActivity$Item) this.items.get(p9)).exception;
            org.telegram.ui.ActionBar.ActionBarPopupWindow$ActionBarPopupWindowLayout v1_1 = new org.telegram.ui.ActionBar.ActionBarPopupWindow$ActionBarPopupWindowLayout(this.getContext());
            org.telegram.ui.ActionBar.ActionBarMenuSubItem v3_2 = org.telegram.ui.ActionBar.ActionBarMenuItem.addItem(v1_1, org.telegram.messenger.R$drawable.msg_customize, org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.EditException), 0, 0);
            org.telegram.ui.ActionBar.ActionBarMenuSubItem v2_0 = org.telegram.ui.ActionBar.ActionBarMenuItem.addItem(v1_1, org.telegram.messenger.R$drawable.msg_delete, org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.DeleteException), 0, 0);
            int v4_3 = org.telegram.ui.ActionBar.Theme.key_text_RedRegular;
            v2_0.setColors(org.telegram.ui.ActionBar.Theme.getColor(v4_3), org.telegram.ui.ActionBar.Theme.getColor(v4_3));
            int v8_1 = org.telegram.ui.Components.AlertsCreator.createSimplePopup(this, v1_1, p8, p10, p11);
            v1_1.setParentWindow(v8_1);
            v3_2.setOnClickListener(new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda3(this, v8_1, p9));
            v2_0.setOnClickListener(new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda4(this, v8_1, v0_3));
            return 1;
        }
    }

    private synthetic void lambda$createView$6(android.view.View p4)
    {
        if (this.isNewException) {
            android.util.LongSparseArray v4_2 = this.getUserConfig().getSaveGalleryExceptions(this.type);
            org.telegram.messenger.UserConfig v0_2 = this.dialogException;
            v4_2.put(v0_2.dialogId, v0_2);
            this.getUserConfig().updateSaveGalleryExceptions(this.type, v4_2);
        }
        this.finishFragment();
        return;
    }

    private void onSettingsUpdated()
    {
        if (!this.isNewException) {
            if (this.dialogException == null) {
                org.telegram.messenger.SaveToGallerySettingsHelper.saveSettings(this.type);
                return;
            } else {
                int v0_1 = this.getUserConfig().getSaveGalleryExceptions(this.type);
                org.telegram.messenger.UserConfig v1_0 = this.dialogException;
                v0_1.put(v1_0.dialogId, v1_0);
                this.getUserConfig().updateSaveGalleryExceptions(this.type, v0_1);
                return;
            }
        } else {
            return;
        }
    }

    private void updateRows()
    {
        int v1_0;
        this.maxVideoSizeRow = -1;
        this.addExceptionRow = -1;
        this.deleteAllExceptionsRow = -1;
        org.telegram.ui.SaveToGallerySettingsActivity$Item v2_7 = 0;
        if ((this.isPaused) || (this.adapter == null)) {
            v1_0 = 0;
        } else {
            v1_0 = 1;
        }
        int v1_1;
        if (v1_0 == 0) {
            v1_1 = 0;
        } else {
            v1_1 = new java.util.ArrayList();
            v1_1.addAll(this.items);
        }
        this.items.clear();
        if (this.dialogException != null) {
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 9, 0));
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 3, 0));
        }
        org.telegram.ui.SaveToGallerySettingsActivity$Item v5_25;
        this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 5, org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGallery), 0));
        this.savePhotosRow = this.items.size();
        this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 6, 0));
        this.saveVideosRow = this.items.size();
        this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 6, 0));
        if (this.dialogException == null) {
            org.telegram.ui.SaveToGallerySettingsActivity$Item v5_24 = this.type;
            if (v5_24 != 1) {
                if (v5_24 != 4) {
                    if (v5_24 != 2) {
                        v5_25 = 0;
                    } else {
                        v5_25 = org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryHintGroup);
                    }
                } else {
                    v5_25 = org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryHintChannels);
                }
            } else {
                v5_25 = org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryHintUser);
            }
        } else {
            v5_25 = org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryHintCurrent);
        }
        this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 7, v5_25, 0));
        if (!this.getSettings().saveVideo) {
            this.videoDividerRow = -1;
        } else {
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 5, org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.MaxVideoSize), 0));
            this.maxVideoSizeRow = this.items.size();
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 8, 0));
            this.videoDividerRow = this.items.size();
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 7, 0));
        }
        if (this.dialogException == null) {
            this.exceptionsDialogs = this.getUserConfig().getSaveGalleryExceptions(this.type);
            this.addExceptionRow = this.items.size();
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 1, 0));
            java.util.ArrayList v0_11 = 0;
            while (v2_7 < this.exceptionsDialogs.size()) {
                this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 2, ((org.telegram.messenger.SaveToGallerySettingsHelper$DialogException) this.exceptionsDialogs.valueAt(v2_7)), 0));
                v2_7++;
                v0_11 = 1;
            }
            if (v0_11 != null) {
                this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 3, 0));
                this.deleteAllExceptionsRow = this.items.size();
                this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 4, 0));
            }
            this.items.add(new org.telegram.ui.SaveToGallerySettingsActivity$Item(this, 10, 0));
        }
        java.util.ArrayList v0_17 = this.adapter;
        if (v0_17 != null) {
            if (v1_1 == 0) {
                v0_17.notifyDataSetChanged();
            } else {
                v0_17.setItems(v1_1, this.items);
                return;
            }
        }
        return;
    }

    public android.view.View createView(android.content.Context p10)
    {
        android.widget.FrameLayout v0_1 = new android.widget.FrameLayout(p10);
        this.fragmentView = v0_1;
        this.actionBar.setBackButtonDrawable(new org.telegram.ui.ActionBar.BackDrawable(0));
        this.actionBar.setActionBarMenuOnItemClick(new org.telegram.ui.SaveToGallerySettingsActivity$1(this));
        if (this.dialogException == null) {
            android.widget.FrameLayout$LayoutParams v1_6 = this.type;
            if (v1_6 != 1) {
                if (v1_6 != 2) {
                    this.actionBar.setTitle(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryChannels));
                } else {
                    this.actionBar.setTitle(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryGroups));
                }
            } else {
                this.actionBar.setTitle(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryPrivate));
            }
        } else {
            if (!this.isNewException) {
                this.actionBar.setTitle(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.SaveToGalleryException));
            } else {
                this.actionBar.setTitle(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.NotificationsNewException));
            }
        }
        android.widget.FrameLayout$LayoutParams v1_15 = new org.telegram.ui.Components.RecyclerListView(p10);
        this.recyclerListView = v1_15;
        v1_15.setSections();
        this.actionBar.setAdaptiveBackground(this.recyclerListView);
        android.widget.FrameLayout$LayoutParams v1_18 = new androidx.recyclerview.widget.DefaultItemAnimator();
        v1_18.setDurations(400);
        v1_18.setInterpolator(org.telegram.ui.Components.CubicBezierInterpolator.EASE_OUT_QUINT);
        v1_18.setDelayAnimations(0);
        v1_18.setSupportsChangeAnimations(0);
        this.recyclerListView.setItemAnimator(v1_18);
        this.recyclerListView.setLayoutManager(new androidx.recyclerview.widget.LinearLayoutManager(p10));
        android.view.View v10_2 = this.recyclerListView;
        android.widget.FrameLayout$LayoutParams v1_21 = new org.telegram.ui.SaveToGallerySettingsActivity$Adapter(this, 0);
        this.adapter = v1_21;
        v10_2.setAdapter(v1_21);
        this.recyclerListView.setOnItemClickListener(new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda0(this));
        this.recyclerListView.setOnItemLongClickListener(new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda1(this));
        v0_1.addView(this.recyclerListView);
        v0_1.setBackgroundColor(org.telegram.ui.ActionBar.Theme.getColor(org.telegram.ui.ActionBar.Theme.key_windowBackgroundGray));
        if (this.dialogException != null) {
            int v2_2;
            android.view.View v10_10 = new android.widget.FrameLayout(this.getContext());
            int v4_19 = new float[1];
            v4_19[0] = 1090519040;
            v10_10.setBackground(org.telegram.ui.ActionBar.Theme$AdaptiveRipple.filledRectByKey(org.telegram.ui.ActionBar.Theme.key_featuredStickers_addButton, v4_19));
            android.widget.FrameLayout$LayoutParams v1_1 = new android.widget.TextView(this.getContext());
            v1_1.setTextSize(1, 1096810496);
            if (!this.isNewException) {
                v2_2 = org.telegram.messenger.R$string.SaveException;
            } else {
                v2_2 = org.telegram.messenger.R$string.AddException;
            }
            v1_1.setText(org.telegram.messenger.LocaleController.getString(v2_2));
            v1_1.setGravity(17);
            v1_1.setTypeface(org.telegram.messenger.AndroidUtilities.bold());
            v1_1.setTextColor(org.telegram.ui.ActionBar.Theme.getColor(org.telegram.ui.ActionBar.Theme.key_featuredStickers_buttonText));
            v10_10.addView(v1_1, org.telegram.ui.Components.LayoutHelper.createFrame(-2, -2, 17));
            v10_10.setOnClickListener(new org.telegram.ui.SaveToGallerySettingsActivity$$ExternalSyntheticLambda2(this));
            v0_1.addView(v10_10, org.telegram.ui.Components.LayoutHelper.createFrame(-1, 1111490560, 80, 1098907648, 1098907648, 1098907648, 1098907648));
        }
        this.updateRows();
        return this.fragmentView;
    }

    org.telegram.messenger.SaveToGallerySettingsHelper$Settings getSettings()
    {
        org.telegram.messenger.SaveToGallerySettingsHelper$Settings v0_0 = this.dialogException;
        if (v0_0 == null) {
            return org.telegram.messenger.SaveToGallerySettingsHelper.getSettings(this.type);
        } else {
            return v0_0;
        }
    }

    public boolean onFragmentCreate()
    {
        this.type = this.getArguments().getInt("type");
        this.exceptionsDialogs = this.getUserConfig().getSaveGalleryExceptions(this.type);
        org.telegram.messenger.SaveToGallerySettingsHelper$Settings v0_3 = this.getArguments().getLong("dialog_id");
        this.dialogId = v0_3;
        if (v0_3 != 0) {
            org.telegram.messenger.SaveToGallerySettingsHelper$Settings v0_9 = ((org.telegram.messenger.SaveToGallerySettingsHelper$DialogException) org.telegram.messenger.UserConfig.getInstance(this.currentAccount).getSaveGalleryExceptions(this.type).get(this.dialogId));
            this.dialogException = v0_9;
            if (v0_9 == null) {
                this.isNewException = 1;
                this.dialogException = new org.telegram.messenger.SaveToGallerySettingsHelper$DialogException();
                org.telegram.messenger.SaveToGallerySettingsHelper$Settings v0_15 = org.telegram.messenger.SaveToGallerySettingsHelper.getSettings(this.type);
                org.telegram.messenger.SaveToGallerySettingsHelper$DialogException v1_4 = this.dialogException;
                v1_4.savePhoto = v0_15.savePhoto;
                v1_4.saveVideo = v0_15.saveVideo;
                v1_4.limitVideo = v0_15.limitVideo;
                v1_4.dialogId = this.dialogId;
            }
        }
        return super.onFragmentCreate();
    }

    public void onResume()
    {
        super.onResume();
        this.updateRows();
        return;
    }
}
