package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.MaxFileSizeCell;
import org.telegram.p029ui.Cells.NotificationsCheckCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.Cells.TextCheckBoxCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.SlideChooseView;

/* JADX INFO: loaded from: classes6.dex */
public class DataAutoDownloadActivity extends BaseFragment {
    private boolean animateChecked;

    @Keep
    private int autoDownloadRow;
    private int autoDownloadSectionRow;
    private int currentPresetNum;
    private int currentType;
    private DownloadController.Preset defaultPreset;

    @Keep
    private int filesRow;
    private String key;
    private String key2;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;

    @Keep
    private int photosRow;
    private int rowCount;

    @Keep
    private int storiesRow;
    private int typeHeaderRow;
    private DownloadController.Preset typePreset;
    private int typeSectionRow;
    private int usageHeaderRow;

    @Keep
    private int usageProgressRow;
    private int usageSectionRow;

    @Keep
    private int videosRow;
    private boolean wereAnyChanges;
    private ArrayList presets = new ArrayList();
    private int selectedPreset = 1;
    private DownloadController.Preset lowPreset = DownloadController.getInstance(this.currentAccount).lowPreset;
    private DownloadController.Preset mediumPreset = DownloadController.getInstance(this.currentAccount).mediumPreset;
    private DownloadController.Preset highPreset = DownloadController.getInstance(this.currentAccount).highPreset;

    public DataAutoDownloadActivity(int i) {
        this.currentType = i;
        int i2 = this.currentType;
        if (i2 == 0) {
            this.currentPresetNum = DownloadController.getInstance(this.currentAccount).currentMobilePreset;
            this.typePreset = DownloadController.getInstance(this.currentAccount).mobilePreset;
            this.defaultPreset = this.mediumPreset;
            this.key = "mobilePreset";
            this.key2 = "currentMobilePreset";
            return;
        }
        if (i2 == 1) {
            this.currentPresetNum = DownloadController.getInstance(this.currentAccount).currentWifiPreset;
            this.typePreset = DownloadController.getInstance(this.currentAccount).wifiPreset;
            this.defaultPreset = this.highPreset;
            this.key = "wifiPreset";
            this.key2 = "currentWifiPreset";
            return;
        }
        this.currentPresetNum = DownloadController.getInstance(this.currentAccount).currentRoamingPreset;
        this.typePreset = DownloadController.getInstance(this.currentAccount).roamingPreset;
        this.defaultPreset = this.lowPreset;
        this.key = "roamingPreset";
        this.key2 = "currentRoamingPreset";
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        fillPresets();
        updateRows();
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        int i = this.currentType;
        if (i == 0) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.AutoDownloadOnMobileData));
        } else if (i == 1) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.AutoDownloadOnWiFiData));
        } else if (i == 2) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.AutoDownloadOnRoamingData));
        }
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.DataAutoDownloadActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    DataAutoDownloadActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setVerticalScrollBarEnabled(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda1
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
                this.f$0.lambda$createView$4(view, i2, f, f2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createView$4(final View view, int i, float f, float f2) {
        int i2;
        DownloadController.Preset currentRoamingPreset;
        String str;
        String str2;
        boolean z;
        int i3;
        ArrayList arrayList;
        final TextCheckCell[] textCheckCellArr;
        ?? r15;
        ArrayList arrayList2;
        boolean z2;
        final int i4 = i;
        int i5 = 4;
        int i6 = 2;
        boolean z3 = false;
        if (i4 == this.autoDownloadRow) {
            int i7 = this.currentPresetNum;
            if (i7 != 3) {
                if (i7 == 0) {
                    this.typePreset.set(this.lowPreset);
                } else if (i7 == 1) {
                    this.typePreset.set(this.mediumPreset);
                } else if (i7 == 2) {
                    this.typePreset.set(this.highPreset);
                }
            }
            TextCheckCell textCheckCell = (TextCheckCell) view;
            boolean zIsChecked = textCheckCell.isChecked();
            if (!zIsChecked) {
                DownloadController.Preset preset = this.typePreset;
                if (preset.enabled) {
                    System.arraycopy(this.defaultPreset.mask, 0, preset.mask, 0, 4);
                } else {
                    this.typePreset.enabled = !r3.enabled;
                }
            }
            view.setTag(Integer.valueOf(this.typePreset.enabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            textCheckCell.setBackgroundColorAnimated(!zIsChecked, Theme.getColor(this.typePreset.enabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
            updateRows();
            if (this.typePreset.enabled) {
                this.listAdapter.notifyItemRangeInserted(this.autoDownloadSectionRow + 1, 9);
            } else {
                this.listAdapter.notifyItemRangeRemoved(this.autoDownloadSectionRow + 1, 9);
            }
            this.listAdapter.notifyItemChanged(this.autoDownloadSectionRow);
            SharedPreferences.Editor editorEdit = MessagesController.getMainSettings(this.currentAccount).edit();
            editorEdit.putString(this.key, this.typePreset.toString());
            String str3 = this.key2;
            this.currentPresetNum = 3;
            editorEdit.putInt(str3, 3);
            int i8 = this.currentType;
            if (i8 == 0) {
                DownloadController.getInstance(this.currentAccount).currentMobilePreset = this.currentPresetNum;
            } else if (i8 == 1) {
                DownloadController.getInstance(this.currentAccount).currentWifiPreset = this.currentPresetNum;
            } else {
                DownloadController.getInstance(this.currentAccount).currentRoamingPreset = this.currentPresetNum;
            }
            editorEdit.apply();
            textCheckCell.setChecked(!zIsChecked);
            DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
            this.wereAnyChanges = true;
            return;
        }
        if ((i4 == this.photosRow || i4 == this.videosRow || i4 == this.filesRow || i4 == this.storiesRow) && view.isEnabled()) {
            if (i4 == this.photosRow) {
                i2 = 1;
            } else if (i4 == this.videosRow) {
                i2 = 4;
            } else {
                i2 = i4 == this.storiesRow ? -1 : 8;
            }
            final int iTypeToIndex = DownloadController.typeToIndex(i2);
            int i9 = this.currentType;
            if (i9 == 0) {
                currentRoamingPreset = DownloadController.getInstance(this.currentAccount).getCurrentMobilePreset();
                str = "mobilePreset";
                str2 = "currentMobilePreset";
            } else if (i9 == 1) {
                currentRoamingPreset = DownloadController.getInstance(this.currentAccount).getCurrentWiFiPreset();
                str = "wifiPreset";
                str2 = "currentWifiPreset";
            } else {
                currentRoamingPreset = DownloadController.getInstance(this.currentAccount).getCurrentRoamingPreset();
                str = "roamingPreset";
                str2 = "currentRoamingPreset";
            }
            final String str4 = str;
            final String str5 = str2;
            NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
            boolean zIsChecked2 = notificationsCheckCell.isChecked();
            if (i4 == this.storiesRow || ((LocaleController.isRTL && f <= AndroidUtilities.m1124dp(76.0f)) || (!LocaleController.isRTL && f >= view.getMeasuredWidth() - AndroidUtilities.m1124dp(76.0f)))) {
                DownloadController.Preset preset2 = currentRoamingPreset;
                int i10 = i2;
                int i11 = this.currentPresetNum;
                if (i11 != 3) {
                    if (i11 == 0) {
                        this.typePreset.set(this.lowPreset);
                    } else if (i11 == 1) {
                        this.typePreset.set(this.mediumPreset);
                    } else if (i11 == 2) {
                        this.typePreset.set(this.highPreset);
                    }
                }
                if (i4 != this.storiesRow) {
                    int i12 = 0;
                    while (true) {
                        if (i12 >= this.typePreset.mask.length) {
                            z = false;
                            break;
                        } else {
                            if ((preset2.mask[i12] & i10) != 0) {
                                z = true;
                                break;
                            }
                            i12++;
                        }
                    }
                    int i13 = 0;
                    while (true) {
                        int[] iArr = this.typePreset.mask;
                        if (i13 >= iArr.length) {
                            break;
                        }
                        if (zIsChecked2) {
                            iArr[i13] = iArr[i13] & (~i10);
                        } else if (!z) {
                            iArr[i13] = iArr[i13] | i10;
                        }
                        i13++;
                    }
                } else {
                    this.typePreset.preloadStories = !zIsChecked2;
                }
                SharedPreferences.Editor editorEdit2 = MessagesController.getMainSettings(this.currentAccount).edit();
                editorEdit2.putString(str4, this.typePreset.toString());
                this.currentPresetNum = 3;
                editorEdit2.putInt(str5, 3);
                int i14 = this.currentType;
                if (i14 == 0) {
                    DownloadController.getInstance(this.currentAccount).currentMobilePreset = this.currentPresetNum;
                } else if (i14 == 1) {
                    DownloadController.getInstance(this.currentAccount).currentWifiPreset = this.currentPresetNum;
                } else {
                    DownloadController.getInstance(this.currentAccount).currentRoamingPreset = this.currentPresetNum;
                }
                editorEdit2.apply();
                notificationsCheckCell.setChecked(!zIsChecked2);
                RecyclerView.ViewHolder viewHolderFindContainingViewHolder = this.listView.findContainingViewHolder(view);
                if (viewHolderFindContainingViewHolder != null) {
                    this.listAdapter.onBindViewHolder(viewHolderFindContainingViewHolder, i4);
                }
                DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
                this.wereAnyChanges = true;
                fillPresets();
                return;
            }
            if (getParentActivity() == null) {
                return;
            }
            final BottomSheet.Builder builder = new BottomSheet.Builder(getParentActivity());
            builder.setApplyTopPadding(false);
            builder.setApplyBottomPadding(false);
            LinearLayout linearLayout = new LinearLayout(getParentActivity());
            linearLayout.setOrientation(1);
            builder.setCustomView(linearLayout);
            HeaderCell headerCell = new HeaderCell(getParentActivity(), Theme.key_dialogTextBlue2, 21, 15, false);
            if (i4 == this.photosRow) {
                headerCell.setText(LocaleController.getString(C2888R.string.AutoDownloadPhotosTitle));
            } else if (i4 == this.videosRow) {
                headerCell.setText(LocaleController.getString(C2888R.string.AutoDownloadVideosTitle));
            } else {
                headerCell.setText(LocaleController.getString(C2888R.string.AutoDownloadFilesTitle));
            }
            linearLayout.addView(headerCell, LayoutHelper.createFrame(-1, -2.0f));
            final MaxFileSizeCell[] maxFileSizeCellArr = new MaxFileSizeCell[1];
            final TextCheckCell[] textCheckCellArr2 = new TextCheckCell[1];
            final AnimatorSet[] animatorSetArr = new AnimatorSet[1];
            char c = 3;
            TextCheckBoxCell[] textCheckBoxCellArr = new TextCheckBoxCell[4];
            int i15 = 0;
            while (i15 < i5) {
                final TextCheckBoxCell[] textCheckBoxCellArr2 = textCheckBoxCellArr;
                final TextCheckBoxCell textCheckBoxCell = new TextCheckBoxCell(getParentActivity(), true, z3);
                textCheckBoxCellArr2[i15] = textCheckBoxCell;
                if (i15 == 0) {
                    z2 = z3;
                    textCheckBoxCell.setTextAndCheck(LocaleController.getString(C2888R.string.AutodownloadContacts), (currentRoamingPreset.mask[z2 ? 1 : 0] & i2) != 0 ? true : z2 ? 1 : 0, true);
                } else {
                    z2 = z3;
                    if (i15 == 1) {
                        textCheckBoxCell.setTextAndCheck(LocaleController.getString(C2888R.string.AutodownloadPrivateChats), (currentRoamingPreset.mask[1] & i2) != 0 ? true : z2 ? 1 : 0, true);
                    } else if (i15 == i6) {
                        textCheckBoxCell.setTextAndCheck(LocaleController.getString(C2888R.string.AutodownloadGroupChats), (currentRoamingPreset.mask[i6] & i2) != 0 ? true : z2 ? 1 : 0, true);
                    } else {
                        textCheckBoxCell.setTextAndCheck(LocaleController.getString(C2888R.string.AutodownloadChannels), (currentRoamingPreset.mask[c] & i2) != 0 ? true : z2 ? 1 : 0, i4 != this.photosRow ? true : z2 ? 1 : 0);
                    }
                }
                textCheckBoxCellArr2[i15].setBackgroundDrawable(Theme.getSelectorDrawable(z2));
                LinearLayout linearLayout2 = linearLayout;
                final int i16 = i4;
                i4 = i16;
                textCheckBoxCellArr2[i15].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$0(textCheckBoxCell, textCheckBoxCellArr2, i16, maxFileSizeCellArr, textCheckCellArr2, animatorSetArr, view2);
                    }
                });
                linearLayout2.addView(textCheckBoxCellArr2[i15], LayoutHelper.createFrame(-1, 50.0f));
                i15++;
                maxFileSizeCellArr = maxFileSizeCellArr;
                linearLayout = linearLayout2;
                textCheckBoxCellArr = textCheckBoxCellArr2;
                z3 = z2;
                c = 3;
                i5 = 4;
                animatorSetArr = animatorSetArr;
                currentRoamingPreset = currentRoamingPreset;
                i6 = 2;
            }
            DownloadController.Preset preset3 = currentRoamingPreset;
            final TextCheckBoxCell[] textCheckBoxCellArr3 = textCheckBoxCellArr;
            final AnimatorSet[] animatorSetArr2 = animatorSetArr;
            boolean z4 = z3;
            ViewGroup viewGroup = linearLayout;
            final MaxFileSizeCell[] maxFileSizeCellArr2 = maxFileSizeCellArr;
            if (i4 != this.photosRow) {
                final TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(getParentActivity());
                MaxFileSizeCell maxFileSizeCell = new MaxFileSizeCell(getParentActivity()) { // from class: org.telegram.ui.DataAutoDownloadActivity.3
                    @Override // org.telegram.p029ui.Cells.MaxFileSizeCell
                    protected void didChangedSizeValue(int i17) {
                        if (i4 == DataAutoDownloadActivity.this.videosRow) {
                            textInfoPrivacyCell.setText(LocaleController.formatString("AutoDownloadPreloadVideoInfo", C2888R.string.AutoDownloadPreloadVideoInfo, AndroidUtilities.formatFileSize(i17)));
                            boolean z5 = i17 > 2097152;
                            if (z5 != textCheckCellArr2[0].isEnabled()) {
                                ArrayList arrayList3 = new ArrayList();
                                textCheckCellArr2[0].setEnabled(z5, arrayList3);
                                AnimatorSet animatorSet = animatorSetArr2[0];
                                if (animatorSet != null) {
                                    animatorSet.cancel();
                                    animatorSetArr2[0] = null;
                                }
                                animatorSetArr2[0] = new AnimatorSet();
                                animatorSetArr2[0].playTogether(arrayList3);
                                animatorSetArr2[0].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DataAutoDownloadActivity.3.1
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        if (animator.equals(animatorSetArr2[0])) {
                                            animatorSetArr2[0] = null;
                                        }
                                    }
                                });
                                animatorSetArr2[0].setDuration(150L);
                                animatorSetArr2[0].start();
                            }
                        }
                    }
                };
                final TextCheckCell[] textCheckCellArr3 = textCheckCellArr2;
                maxFileSizeCellArr2[z4 ? 1 : 0] = maxFileSizeCell;
                i3 = i2;
                arrayList = null;
                maxFileSizeCell.setSize(preset3.sizes[iTypeToIndex]);
                viewGroup.addView(maxFileSizeCellArr2[z4 ? 1 : 0], LayoutHelper.createLinear(-1, 50));
                View textCheckCell2 = new TextCheckCell(getParentActivity(), 21, true);
                textCheckCellArr3[z4 ? 1 : 0] = textCheckCell2;
                viewGroup.addView(textCheckCell2, LayoutHelper.createLinear(-1, 48));
                textCheckCellArr3[z4 ? 1 : 0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        textCheckCellArr3[0].setChecked(!r0.isChecked());
                    }
                });
                textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
                viewGroup.addView(textInfoPrivacyCell, LayoutHelper.createLinear(-1, -2));
                if (i4 == this.videosRow) {
                    maxFileSizeCellArr2[z4 ? 1 : 0].setText(LocaleController.getString(C2888R.string.AutoDownloadMaxVideoSize));
                    textCheckCellArr3[z4 ? 1 : 0].setTextAndCheck(LocaleController.getString(C2888R.string.AutoDownloadPreloadVideo), preset3.preloadVideo, z4);
                    int i17 = C2888R.string.AutoDownloadPreloadVideoInfo;
                    Object[] objArr = new Object[1];
                    objArr[z4 ? 1 : 0] = AndroidUtilities.formatFileSize(preset3.sizes[iTypeToIndex]);
                    textInfoPrivacyCell.setText(LocaleController.formatString("AutoDownloadPreloadVideoInfo", i17, objArr));
                    textCheckCellArr = textCheckCellArr3;
                } else {
                    maxFileSizeCellArr2[z4 ? 1 : 0].setText(LocaleController.getString(C2888R.string.AutoDownloadMaxFileSize));
                    textCheckCellArr3[z4 ? 1 : 0].setTextAndCheck(LocaleController.getString(C2888R.string.AutoDownloadPreloadMusic), preset3.preloadMusic, z4);
                    textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.AutoDownloadPreloadMusicInfo));
                    textCheckCellArr = textCheckCellArr3;
                }
            } else {
                i3 = i2;
                arrayList = null;
                maxFileSizeCellArr2[z4 ? 1 : 0] = null;
                textCheckCellArr2[z4 ? 1 : 0] = null;
                View view2 = new View(getParentActivity());
                view2.setBackgroundColor(Theme.getColor(Theme.key_divider));
                viewGroup.addView(view2, new LinearLayout.LayoutParams(-1, 1));
                textCheckCellArr = textCheckCellArr2;
            }
            if (i4 == this.videosRow) {
                int i18 = 0;
                while (true) {
                    if (i18 < 4) {
                        if (textCheckBoxCellArr3[i18].isChecked()) {
                            arrayList2 = arrayList;
                            r15 = 0;
                            break;
                        }
                        i18++;
                    } else {
                        r15 = 0;
                        arrayList2 = arrayList;
                        maxFileSizeCellArr2[0].setEnabled(false, arrayList2);
                        textCheckCellArr[0].setEnabled(false, arrayList2);
                        break;
                    }
                }
                if (preset3.sizes[iTypeToIndex] <= 2097152) {
                    textCheckCellArr[r15].setEnabled(r15, arrayList2);
                }
            }
            FrameLayout frameLayout = new FrameLayout(getParentActivity());
            frameLayout.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
            viewGroup.addView(frameLayout, LayoutHelper.createLinear(-1, 52));
            TextView textView = new TextView(getParentActivity());
            textView.setTextSize(1, 14.0f);
            int i19 = Theme.key_dialogTextBlue2;
            textView.setTextColor(Theme.getColor(i19));
            textView.setGravity(17);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.getString(C2888R.string.Cancel).toUpperCase());
            textView.setPadding(AndroidUtilities.m1124dp(10.0f), 0, AndroidUtilities.m1124dp(10.0f), 0);
            frameLayout.addView(textView, LayoutHelper.createFrame(-2, 36, 51));
            textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    builder.getDismissRunnable().run();
                }
            });
            TextView textView2 = new TextView(getParentActivity());
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(Theme.getColor(i19));
            textView2.setGravity(17);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setText(LocaleController.getString(C2888R.string.Save).toUpperCase());
            textView2.setPadding(AndroidUtilities.m1124dp(10.0f), 0, AndroidUtilities.m1124dp(10.0f), 0);
            frameLayout.addView(textView2, LayoutHelper.createFrame(-2, 36, 53));
            final int i20 = i4;
            final int i21 = i3;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$createView$3(textCheckBoxCellArr3, i21, maxFileSizeCellArr2, iTypeToIndex, textCheckCellArr, i20, str4, str5, builder, view, view3);
                }
            });
            showDialog(builder.create());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(TextCheckBoxCell textCheckBoxCell, TextCheckBoxCell[] textCheckBoxCellArr, int i, MaxFileSizeCell[] maxFileSizeCellArr, TextCheckCell[] textCheckCellArr, final AnimatorSet[] animatorSetArr, View view) {
        if (view.isEnabled()) {
            boolean z = true;
            textCheckBoxCell.setChecked(!textCheckBoxCell.isChecked());
            int i2 = 0;
            while (true) {
                if (i2 >= textCheckBoxCellArr.length) {
                    z = false;
                    break;
                } else if (textCheckBoxCellArr[i2].isChecked()) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i != this.videosRow || maxFileSizeCellArr[0].isEnabled() == z) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            maxFileSizeCellArr[0].setEnabled(z, arrayList);
            if (maxFileSizeCellArr[0].getSize() > 2097152) {
                textCheckCellArr[0].setEnabled(z, arrayList);
            }
            AnimatorSet animatorSet = animatorSetArr[0];
            if (animatorSet != null) {
                animatorSet.cancel();
                animatorSetArr[0] = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSetArr[0] = animatorSet2;
            animatorSet2.playTogether(arrayList);
            animatorSetArr[0].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DataAutoDownloadActivity.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(animatorSetArr[0])) {
                        animatorSetArr[0] = null;
                    }
                }
            });
            animatorSetArr[0].setDuration(150L);
            animatorSetArr[0].start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(TextCheckBoxCell[] textCheckBoxCellArr, int i, MaxFileSizeCell[] maxFileSizeCellArr, int i2, TextCheckCell[] textCheckCellArr, int i3, String str, String str2, BottomSheet.Builder builder, View view, View view2) {
        int i4 = this.currentPresetNum;
        if (i4 != 3) {
            if (i4 == 0) {
                this.typePreset.set(this.lowPreset);
            } else if (i4 == 1) {
                this.typePreset.set(this.mediumPreset);
            } else if (i4 == 2) {
                this.typePreset.set(this.highPreset);
            }
        }
        for (int i5 = 0; i5 < 4; i5++) {
            if (textCheckBoxCellArr[i5].isChecked()) {
                int[] iArr = this.typePreset.mask;
                iArr[i5] = iArr[i5] | i;
            } else {
                int[] iArr2 = this.typePreset.mask;
                iArr2[i5] = iArr2[i5] & (~i);
            }
        }
        MaxFileSizeCell maxFileSizeCell = maxFileSizeCellArr[0];
        if (maxFileSizeCell != null) {
            maxFileSizeCell.getSize();
            this.typePreset.sizes[i2] = (int) maxFileSizeCellArr[0].getSize();
        }
        TextCheckCell textCheckCell = textCheckCellArr[0];
        if (textCheckCell != null) {
            if (i3 == this.videosRow) {
                this.typePreset.preloadVideo = textCheckCell.isChecked();
            } else {
                this.typePreset.preloadMusic = textCheckCell.isChecked();
            }
        }
        SharedPreferences.Editor editorEdit = MessagesController.getMainSettings(this.currentAccount).edit();
        editorEdit.putString(str, this.typePreset.toString());
        this.currentPresetNum = 3;
        editorEdit.putInt(str2, 3);
        int i6 = this.currentType;
        if (i6 == 0) {
            DownloadController.getInstance(this.currentAccount).currentMobilePreset = this.currentPresetNum;
        } else if (i6 == 1) {
            DownloadController.getInstance(this.currentAccount).currentWifiPreset = this.currentPresetNum;
        } else {
            DownloadController.getInstance(this.currentAccount).currentRoamingPreset = this.currentPresetNum;
        }
        editorEdit.apply();
        builder.getDismissRunnable().run();
        RecyclerView.ViewHolder viewHolderFindContainingViewHolder = this.listView.findContainingViewHolder(view);
        if (viewHolderFindContainingViewHolder != null) {
            this.animateChecked = true;
            this.listAdapter.onBindViewHolder(viewHolderFindContainingViewHolder, i3);
            this.animateChecked = false;
        }
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
        this.wereAnyChanges = true;
        fillPresets();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        if (this.wereAnyChanges) {
            DownloadController.getInstance(this.currentAccount).savePresetToServer(this.currentType);
            this.wereAnyChanges = false;
        }
    }

    private void fillPresets() {
        this.presets.clear();
        this.presets.add(this.lowPreset);
        this.presets.add(this.mediumPreset);
        this.presets.add(this.highPreset);
        if (!this.typePreset.equals(this.lowPreset) && !this.typePreset.equals(this.mediumPreset) && !this.typePreset.equals(this.highPreset)) {
            this.presets.add(this.typePreset);
        }
        Collections.sort(this.presets, new Comparator() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DataAutoDownloadActivity.$r8$lambda$ChB6XYg_q_avlxVIMtdo7gbjLdU((DownloadController.Preset) obj, (DownloadController.Preset) obj2);
            }
        });
        int i = this.currentPresetNum;
        if (i == 0 || (i == 3 && this.typePreset.equals(this.lowPreset))) {
            this.selectedPreset = this.presets.indexOf(this.lowPreset);
        } else {
            int i2 = this.currentPresetNum;
            if (i2 == 1 || (i2 == 3 && this.typePreset.equals(this.mediumPreset))) {
                this.selectedPreset = this.presets.indexOf(this.mediumPreset);
            } else {
                int i3 = this.currentPresetNum;
                if (i3 == 2 || (i3 == 3 && this.typePreset.equals(this.highPreset))) {
                    this.selectedPreset = this.presets.indexOf(this.highPreset);
                } else {
                    this.selectedPreset = this.presets.indexOf(this.typePreset);
                }
            }
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerListView.findViewHolderForAdapterPosition(this.usageProgressRow);
            if (viewHolderFindViewHolderForAdapterPosition != null) {
                View view = viewHolderFindViewHolderForAdapterPosition.itemView;
                if (view instanceof SlideChooseView) {
                    updatePresetChoseView((SlideChooseView) view);
                    return;
                }
            }
            this.listAdapter.notifyItemChanged(this.usageProgressRow);
        }
    }

    public static /* synthetic */ int $r8$lambda$ChB6XYg_q_avlxVIMtdo7gbjLdU(DownloadController.Preset preset, DownloadController.Preset preset2) {
        int iTypeToIndex = DownloadController.typeToIndex(4);
        int iTypeToIndex2 = DownloadController.typeToIndex(8);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int[] iArr = preset.mask;
            if (i >= iArr.length) {
                break;
            }
            int i2 = iArr[i];
            z = z;
            if ((i2 & 4) != 0) {
                z = true;
            }
            z2 = z2;
            if ((i2 & 8) != 0) {
                z2 = true;
            }
            if (z && z2) {
                break;
            }
            i++;
            z = z;
            z2 = z2;
        }
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            int[] iArr2 = preset2.mask;
            if (i3 >= iArr2.length) {
                break;
            }
            int i4 = iArr2[i3];
            z3 = z3;
            if ((i4 & 4) != 0) {
                z3 = true;
            }
            z4 = z4;
            if ((i4 & 8) != 0) {
                z4 = true;
            }
            if (z3 && z4) {
                break;
            }
            i3++;
            z3 = z3;
            z4 = z4;
        }
        long j = (z ? preset.sizes[iTypeToIndex] : 0L) + (z2 ? preset.sizes[iTypeToIndex2] : 0L) + (preset.preloadStories ? 1L : 0L);
        long j2 = (z3 ? preset2.sizes[iTypeToIndex] : 0L) + (z4 ? preset2.sizes[iTypeToIndex2] : 0L) + (preset2.preloadStories ? 1L : 0L);
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    private void updateRows() {
        this.autoDownloadRow = 0;
        int i = 1 + 1;
        this.rowCount = i;
        this.autoDownloadSectionRow = 1;
        if (this.typePreset.enabled) {
            this.usageHeaderRow = i;
            this.usageProgressRow = i + 1;
            this.usageSectionRow = i + 2;
            this.typeHeaderRow = i + 3;
            this.photosRow = i + 4;
            this.videosRow = i + 5;
            this.filesRow = i + 6;
            this.storiesRow = i + 7;
            this.rowCount = i + 9;
            this.typeSectionRow = i + 8;
            return;
        }
        this.usageHeaderRow = -1;
        this.usageProgressRow = -1;
        this.usageSectionRow = -1;
        this.typeHeaderRow = -1;
        this.photosRow = -1;
        this.videosRow = -1;
        this.filesRow = -1;
        this.storiesRow = -1;
        this.typeSectionRow = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DataAutoDownloadActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String string2;
            DownloadController.Preset currentWiFiPreset;
            int i2;
            StringBuilder sb;
            StringBuilder sb2;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i == DataAutoDownloadActivity.this.autoDownloadRow) {
                    textCheckCell.setDrawCheckRipple(true);
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2888R.string.AutoDownloadMedia), DataAutoDownloadActivity.this.typePreset.enabled, false);
                    textCheckCell.setTag(Integer.valueOf(DataAutoDownloadActivity.this.typePreset.enabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                    textCheckCell.setBackgroundColor(Theme.getColor(DataAutoDownloadActivity.this.typePreset.enabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                    return;
                }
                return;
            }
            if (itemViewType == 2) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == DataAutoDownloadActivity.this.usageHeaderRow) {
                    headerCell.setText(LocaleController.getString(C2888R.string.AutoDownloadDataUsage));
                    return;
                } else {
                    if (i == DataAutoDownloadActivity.this.typeHeaderRow) {
                        headerCell.setText(LocaleController.getString(C2888R.string.AutoDownloadTypes));
                        return;
                    }
                    return;
                }
            }
            if (itemViewType == 3) {
                DataAutoDownloadActivity.this.updatePresetChoseView((SlideChooseView) viewHolder.itemView);
                return;
            }
            int i3 = -1;
            if (itemViewType != 4) {
                if (itemViewType != 5) {
                    return;
                }
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == DataAutoDownloadActivity.this.typeSectionRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.AutoDownloadAudioInfo));
                    textInfoPrivacyCell.setFixedSize(0);
                    textInfoPrivacyCell.setImportantForAccessibility(1);
                    return;
                } else {
                    if (i == DataAutoDownloadActivity.this.autoDownloadSectionRow) {
                        if (DataAutoDownloadActivity.this.usageHeaderRow == -1) {
                            if (DataAutoDownloadActivity.this.currentType == 0) {
                                textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.AutoDownloadOnMobileDataInfo));
                            } else if (DataAutoDownloadActivity.this.currentType == 1) {
                                textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.AutoDownloadOnWiFiDataInfo));
                            } else if (DataAutoDownloadActivity.this.currentType == 2) {
                                textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.AutoDownloadOnRoamingDataInfo));
                            }
                            textInfoPrivacyCell.setImportantForAccessibility(1);
                            return;
                        }
                        textInfoPrivacyCell.setText(null);
                        textInfoPrivacyCell.setFixedSize(12);
                        textInfoPrivacyCell.setImportantForAccessibility(4);
                        return;
                    }
                    return;
                }
            }
            NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) viewHolder.itemView;
            notificationsCheckCell.setDrawLine(true);
            if (i == DataAutoDownloadActivity.this.photosRow) {
                string2 = LocaleController.getString(C2888R.string.AutoDownloadPhotos);
                i3 = 1;
            } else if (i == DataAutoDownloadActivity.this.videosRow) {
                string2 = LocaleController.getString(C2888R.string.AutoDownloadVideos);
                i3 = 4;
            } else {
                if (i == DataAutoDownloadActivity.this.storiesRow) {
                    string = LocaleController.getString(C2888R.string.AutoDownloadStories);
                    notificationsCheckCell.setDrawLine(false);
                } else {
                    string = LocaleController.getString(C2888R.string.AutoDownloadFiles);
                    i3 = 8;
                }
                string2 = string;
            }
            if (DataAutoDownloadActivity.this.currentType == 0) {
                currentWiFiPreset = DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).getCurrentMobilePreset();
            } else {
                currentWiFiPreset = DataAutoDownloadActivity.this.currentType == 1 ? DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).getCurrentWiFiPreset() : DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).getCurrentRoamingPreset();
            }
            long j = currentWiFiPreset.sizes[DownloadController.typeToIndex(i3)];
            StringBuilder sb3 = new StringBuilder();
            if (i != DataAutoDownloadActivity.this.storiesRow) {
                int i4 = 0;
                i2 = 0;
                while (true) {
                    int[] iArr = currentWiFiPreset.mask;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    if ((iArr[i4] & i3) != 0) {
                        if (sb3.length() != 0) {
                            sb3.append(", ");
                        }
                        if (i4 == 0) {
                            sb3.append(LocaleController.getString(C2888R.string.AutoDownloadContacts));
                        } else if (i4 == 1) {
                            sb3.append(LocaleController.getString(C2888R.string.AutoDownloadPm));
                        } else if (i4 == 2) {
                            sb3.append(LocaleController.getString(C2888R.string.AutoDownloadGroups));
                        } else if (i4 == 3) {
                            sb3.append(LocaleController.getString(C2888R.string.AutoDownloadChannels));
                        }
                        i2++;
                    }
                    i4++;
                }
                if (i2 == 4) {
                    sb3.setLength(0);
                    if (i == DataAutoDownloadActivity.this.photosRow) {
                        sb3.append(LocaleController.getString(C2888R.string.AutoDownloadOnAllChats));
                    } else {
                        sb3.append(LocaleController.formatString("AutoDownloadUpToOnAllChats", C2888R.string.AutoDownloadUpToOnAllChats, AndroidUtilities.formatFileSize(j)));
                    }
                } else if (i2 == 0) {
                    sb3.append(LocaleController.getString(C2888R.string.AutoDownloadOff));
                } else {
                    if (i == DataAutoDownloadActivity.this.photosRow) {
                        sb = new StringBuilder(LocaleController.formatString("AutoDownloadOnFor", C2888R.string.AutoDownloadOnFor, sb3.toString()));
                    } else {
                        sb = new StringBuilder(LocaleController.formatString("AutoDownloadOnUpToFor", C2888R.string.AutoDownloadOnUpToFor, AndroidUtilities.formatFileSize(j), sb3.toString()));
                    }
                    sb2 = sb;
                }
                sb2 = sb3;
            } else if (currentWiFiPreset.preloadStories) {
                sb2 = new StringBuilder(LocaleController.formatString("AutoDownloadOn", C2888R.string.AutoDownloadOn, sb3.toString()));
                i2 = 1;
            } else {
                sb2 = new StringBuilder(LocaleController.formatString("AutoDownloadOff", C2888R.string.AutoDownloadOff, sb3.toString()));
                i2 = 0;
            }
            if (DataAutoDownloadActivity.this.animateChecked) {
                notificationsCheckCell.setChecked(i2 != 0);
            }
            notificationsCheckCell.setTextAndValueAndCheck(string2, sb2, i2 != 0, 0, true, i != DataAutoDownloadActivity.this.storiesRow);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == DataAutoDownloadActivity.this.photosRow || adapterPosition == DataAutoDownloadActivity.this.videosRow || adapterPosition == DataAutoDownloadActivity.this.filesRow || adapterPosition == DataAutoDownloadActivity.this.storiesRow;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(int i) {
            DownloadController.Preset preset = (DownloadController.Preset) DataAutoDownloadActivity.this.presets.get(i);
            if (preset == DataAutoDownloadActivity.this.lowPreset) {
                DataAutoDownloadActivity.this.currentPresetNum = 0;
            } else if (preset == DataAutoDownloadActivity.this.mediumPreset) {
                DataAutoDownloadActivity.this.currentPresetNum = 1;
            } else if (preset == DataAutoDownloadActivity.this.highPreset) {
                DataAutoDownloadActivity.this.currentPresetNum = 2;
            } else {
                DataAutoDownloadActivity.this.currentPresetNum = 3;
            }
            if (DataAutoDownloadActivity.this.currentType == 0) {
                DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).currentMobilePreset = DataAutoDownloadActivity.this.currentPresetNum;
            } else if (DataAutoDownloadActivity.this.currentType == 1) {
                DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).currentWifiPreset = DataAutoDownloadActivity.this.currentPresetNum;
            } else {
                DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).currentRoamingPreset = DataAutoDownloadActivity.this.currentPresetNum;
            }
            SharedPreferences.Editor editorEdit = MessagesController.getMainSettings(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).edit();
            editorEdit.putInt(DataAutoDownloadActivity.this.key2, DataAutoDownloadActivity.this.currentPresetNum);
            editorEdit.apply();
            DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).checkAutodownloadSettings();
            for (int i2 = 0; i2 < 4; i2++) {
                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = DataAutoDownloadActivity.this.listView.findViewHolderForAdapterPosition(DataAutoDownloadActivity.this.photosRow + i2);
                if (viewHolderFindViewHolderForAdapterPosition != null) {
                    DataAutoDownloadActivity.this.listAdapter.onBindViewHolder(viewHolderFindViewHolderForAdapterPosition, DataAutoDownloadActivity.this.photosRow + i2);
                }
            }
            DataAutoDownloadActivity.this.wereAnyChanges = true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View shadowSectionCell;
            if (i == 0) {
                TextCheckCell textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setColors(Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
                textCheckCell.setTypeface(AndroidUtilities.bold());
                textCheckCell.setHeight(56);
                shadowSectionCell = textCheckCell;
            } else if (i == 1) {
                shadowSectionCell = new ShadowSectionCell(this.mContext);
            } else if (i == 2) {
                shadowSectionCell = new HeaderCell(this.mContext);
            } else if (i == 3) {
                SlideChooseView slideChooseView = new SlideChooseView(this.mContext);
                slideChooseView.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.DataAutoDownloadActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Components.SlideChooseView.Callback
                    public final void onOptionSelected(int i2) {
                        this.f$0.lambda$onCreateViewHolder$0(i2);
                    }

                    @Override // org.telegram.ui.Components.SlideChooseView.Callback
                    public /* synthetic */ void onTouchEnd() {
                        SlideChooseView.Callback.CC.$default$onTouchEnd(this);
                    }
                });
                shadowSectionCell = slideChooseView;
            } else if (i == 4) {
                shadowSectionCell = new NotificationsCheckCell(this.mContext);
            } else {
                shadowSectionCell = new TextInfoPrivacyCell(this.mContext);
            }
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == DataAutoDownloadActivity.this.autoDownloadRow) {
                return 0;
            }
            if (i == DataAutoDownloadActivity.this.usageSectionRow) {
                return 1;
            }
            if (i == DataAutoDownloadActivity.this.usageHeaderRow || i == DataAutoDownloadActivity.this.typeHeaderRow) {
                return 2;
            }
            if (i == DataAutoDownloadActivity.this.usageProgressRow) {
                return 3;
            }
            return (i == DataAutoDownloadActivity.this.photosRow || i == DataAutoDownloadActivity.this.videosRow || i == DataAutoDownloadActivity.this.filesRow || i == DataAutoDownloadActivity.this.storiesRow) ? 4 : 5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePresetChoseView(SlideChooseView slideChooseView) {
        String[] strArr = new String[this.presets.size()];
        for (int i = 0; i < this.presets.size(); i++) {
            DownloadController.Preset preset = (DownloadController.Preset) this.presets.get(i);
            if (preset == this.lowPreset) {
                strArr[i] = LocaleController.getString(C2888R.string.AutoDownloadLow);
            } else if (preset == this.mediumPreset) {
                strArr[i] = LocaleController.getString(C2888R.string.AutoDownloadMedium);
            } else if (preset == this.highPreset) {
                strArr[i] = LocaleController.getString(C2888R.string.AutoDownloadHigh);
            } else {
                strArr[i] = LocaleController.getString(C2888R.string.AutoDownloadCustom);
            }
        }
        slideChooseView.setOptions(this.selectedPreset, strArr);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, NotificationsCheckCell.class, SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        int i = Theme.key_switchTrack;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        int i2 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhiteGrayText));
        return arrayList;
    }
}
