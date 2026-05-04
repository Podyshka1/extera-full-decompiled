package com.exteragram.messenger.nowplaying.p013ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.api.dto.NowPlayingInfoDTO;
import com.exteragram.messenger.api.model.NowPlayingServiceType;
import com.exteragram.messenger.nowplaying.NowPlayingController;
import java.util.ArrayList;
import java.util.function.Consumer;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.DialogRadioCell;
import org.telegram.p029ui.Cells.EditTextCell;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: loaded from: classes4.dex */
public final class SetupNowPlayingActivity extends BaseFragment {
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private NowPlayingState initialState;
    private UniversalRecyclerView listView;
    private EditTextCell nowPlayingEdit;
    private NowPlayingState currentState = new NowPlayingState(NowPlayingServiceType.NONE, null);
    private int shiftDp = -4;

    private static final class NowPlayingState {
        private final NowPlayingServiceType serviceType;
        private final String username;

        public static /* synthetic */ NowPlayingState copy$default(NowPlayingState nowPlayingState, NowPlayingServiceType nowPlayingServiceType, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                nowPlayingServiceType = nowPlayingState.serviceType;
            }
            if ((i & 2) != 0) {
                str = nowPlayingState.username;
            }
            return nowPlayingState.copy(nowPlayingServiceType, str);
        }

        public final NowPlayingState copy(NowPlayingServiceType serviceType, String str) {
            Intrinsics.checkNotNullParameter(serviceType, "serviceType");
            return new NowPlayingState(serviceType, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof NowPlayingState)) {
                return false;
            }
            NowPlayingState nowPlayingState = (NowPlayingState) obj;
            return this.serviceType == nowPlayingState.serviceType && Intrinsics.areEqual(this.username, nowPlayingState.username);
        }

        public int hashCode() {
            int iHashCode = this.serviceType.hashCode() * 31;
            String str = this.username;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "NowPlayingState(serviceType=" + this.serviceType + ", username=" + this.username + ')';
        }

        public NowPlayingState(NowPlayingServiceType serviceType, String str) {
            Intrinsics.checkNotNullParameter(serviceType, "serviceType");
            this.serviceType = serviceType;
            this.username = str;
        }

        public final NowPlayingServiceType getServiceType() {
            return this.serviceType;
        }

        public final String getUsername() {
            return this.username;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.NowPlaying));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity.createView.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i != -1) {
                    if (i != 0) {
                        return;
                    }
                    SetupNowPlayingActivity.this.processDone(true);
                } else if (SetupNowPlayingActivity.this.onBackPressed(true)) {
                    SetupNowPlayingActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                SetupNowPlayingActivity.createView$lambda$0(this.f$0, (ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                SetupNowPlayingActivity.createView$lambda$1(this.f$0, (UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        ActionBar actionBar = this.actionBar;
        UniversalRecyclerView universalRecyclerView2 = this.listView;
        if (universalRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listView");
            universalRecyclerView2 = null;
        }
        actionBar.setAdaptiveBackground(universalRecyclerView2);
        UniversalRecyclerView universalRecyclerView3 = this.listView;
        if (universalRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listView");
            universalRecyclerView3 = null;
        }
        universalRecyclerView3.adapter.setApplyBackground(false);
        UniversalRecyclerView universalRecyclerView4 = this.listView;
        if (universalRecyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listView");
            universalRecyclerView4 = null;
        }
        frameLayout.addView(universalRecyclerView4, LayoutHelper.createFrame(-1, -1.0f));
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2888R.string.Username), this.resourceProvider) { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity.createView.4
            @Override // org.telegram.p029ui.Cells.EditTextCell
            protected void onTextChanged(CharSequence newText) {
                Intrinsics.checkNotNullParameter(newText, "newText");
                super.onTextChanged(newText);
                SetupNowPlayingActivity setupNowPlayingActivity = this;
                setupNowPlayingActivity.currentState = NowPlayingState.copy$default(setupNowPlayingActivity.currentState, null, newText.toString(), 1, null);
                this.checkDone(true);
            }
        };
        this.nowPlayingEdit = editTextCell;
        editTextCell.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        EditTextCell editTextCell2 = this.nowPlayingEdit;
        if (editTextCell2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nowPlayingEdit");
            editTextCell2 = null;
        }
        editTextCell2.hideKeyboardOnEnter();
        NowPlayingController.getNowPlayingInfo(new Consumer() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                SetupNowPlayingActivity.createView$lambda$2(this.f$0, (NowPlayingInfoDTO) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        Drawable drawable = ContextCompat.getDrawable(context, C2888R.drawable.ic_ab_done);
        Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
        if (drawableMutate != null) {
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultIcon), PorterDuff.Mode.MULTIPLY));
        }
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(Theme.key_actionBarDefaultIcon)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(0, this.doneButtonDrawable, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        checkDone(false);
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$0(SetupNowPlayingActivity setupNowPlayingActivity, ArrayList items, UniversalAdapter adapter) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        setupNowPlayingActivity.fillItems(items, adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$1(SetupNowPlayingActivity setupNowPlayingActivity, UItem item, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(view, "view");
        setupNowPlayingActivity.onClick(item, view, i, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$2(final SetupNowPlayingActivity setupNowPlayingActivity, final NowPlayingInfoDTO nowPlayingInfoDTO) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SetupNowPlayingActivity.createView$lambda$2$0(nowPlayingInfoDTO, setupNowPlayingActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createView$lambda$2$0(NowPlayingInfoDTO nowPlayingInfoDTO, SetupNowPlayingActivity setupNowPlayingActivity) {
        NowPlayingState nowPlayingState;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (nowPlayingInfoDTO != null) {
            NowPlayingServiceType serviceType = nowPlayingInfoDTO.getServiceType();
            String username = nowPlayingInfoDTO.getUsername();
            if (username != null) {
                str = username;
            }
            nowPlayingState = new NowPlayingState(serviceType, str);
        } else {
            nowPlayingState = new NowPlayingState(NowPlayingServiceType.NONE, _UrlKt.FRAGMENT_ENCODE_SET);
        }
        setupNowPlayingActivity.currentState = nowPlayingState;
        setupNowPlayingActivity.initialState = nowPlayingState;
        EditTextCell editTextCell = setupNowPlayingActivity.nowPlayingEdit;
        UniversalRecyclerView universalRecyclerView = null;
        if (editTextCell == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nowPlayingEdit");
            editTextCell = null;
        }
        editTextCell.setText(setupNowPlayingActivity.currentState.getUsername());
        UniversalRecyclerView universalRecyclerView2 = setupNowPlayingActivity.listView;
        if (universalRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listView");
        } else {
            universalRecyclerView = universalRecyclerView2;
        }
        universalRecyclerView.adapter.update(true);
        setupNowPlayingActivity.checkDone(false);
    }

    private final void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.SelectService)));
        for (NowPlayingServiceType nowPlayingServiceType : NowPlayingServiceType.getEntries()) {
            arrayList.add(UItem.asRadio(nowPlayingServiceType.ordinal(), nowPlayingServiceType.getDisplayName()).setChecked(nowPlayingServiceType == this.currentState.getServiceType() && this.initialState != null));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.SelectServiceInfo)));
        if (this.currentState.getServiceType() != NowPlayingServiceType.NONE) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.EnterUsername)));
            EditTextCell editTextCell = this.nowPlayingEdit;
            if (editTextCell == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nowPlayingEdit");
                editTextCell = null;
            }
            arrayList.add(UItem.asCustom(editTextCell));
            SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.EnterUsernameInfo), new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    SetupNowPlayingActivity.fillItems$lambda$0(this.f$0);
                }
            });
            Intrinsics.checkNotNullExpressionValue(spannableStringBuilderReplaceSingleTag, "replaceSingleTag(...)");
            arrayList.add(UItem.asShadow(spannableStringBuilderReplaceSingleTag));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fillItems$lambda$0(SetupNowPlayingActivity setupNowPlayingActivity) {
        Browser.openUrl(setupNowPlayingActivity.getParentActivity(), setupNowPlayingActivity.currentState.getServiceType() == NowPlayingServiceType.LAST_FM ? "https://www.last.fm/" : "https://stats.fm/");
    }

    private final void onClick(UItem uItem, View view, int i, float f, float f2) {
        if (view instanceof DialogRadioCell) {
            UniversalRecyclerView universalRecyclerView = null;
            this.currentState = NowPlayingState.copy$default(this.currentState, ((NowPlayingServiceType[]) NowPlayingServiceType.getEntries().toArray(new NowPlayingServiceType[0]))[uItem.f2105id], null, 2, null);
            UniversalRecyclerView universalRecyclerView2 = this.listView;
            if (universalRecyclerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listView");
            } else {
                universalRecyclerView = universalRecyclerView2;
            }
            universalRecyclerView.adapter.update(true);
            checkDone(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processDone(boolean z) {
        CrossfadeDrawable crossfadeDrawable = this.doneButtonDrawable;
        Intrinsics.checkNotNull(crossfadeDrawable);
        if (crossfadeDrawable.getProgress() > 0.0f) {
            return;
        }
        EditTextCell editTextCell = null;
        if (z && this.currentState.getServiceType() != NowPlayingServiceType.NONE) {
            EditTextCell editTextCell2 = this.nowPlayingEdit;
            if (editTextCell2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nowPlayingEdit");
                editTextCell2 = null;
            }
            CharSequence text = editTextCell2.getText();
            if (text == null || text.length() == 0) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                EditTextCell editTextCell3 = this.nowPlayingEdit;
                if (editTextCell3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("nowPlayingEdit");
                } else {
                    editTextCell = editTextCell3;
                }
                int i = -this.shiftDp;
                this.shiftDp = i;
                AndroidUtilities.shakeViewSpring(editTextCell, i);
                return;
            }
        }
        CrossfadeDrawable crossfadeDrawable2 = this.doneButtonDrawable;
        Intrinsics.checkNotNull(crossfadeDrawable2);
        crossfadeDrawable2.animateToProgress(1.0f);
        final NowPlayingInfoDTO nowPlayingInfoDTO = new NowPlayingInfoDTO(this.currentState.getServiceType(), this.currentState.getServiceType() == NowPlayingServiceType.NONE ? null : this.currentState.getUsername());
        NowPlayingController.updateNowPlayingInfo$default(nowPlayingInfoDTO, false, new Consumer() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            /* JADX INFO: renamed from: accept */
            public final void m940v(Object obj) {
                SetupNowPlayingActivity.processDone$lambda$1(this.f$0, nowPlayingInfoDTO, (Boolean) obj);
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processDone$lambda$1(final SetupNowPlayingActivity setupNowPlayingActivity, final NowPlayingInfoDTO nowPlayingInfoDTO, final Boolean it) {
        Intrinsics.checkNotNullParameter(it, "it");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                SetupNowPlayingActivity.processDone$lambda$1$0(it, setupNowPlayingActivity, nowPlayingInfoDTO);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processDone$lambda$1$0(Boolean bool, SetupNowPlayingActivity setupNowPlayingActivity, NowPlayingInfoDTO nowPlayingInfoDTO) {
        if (!bool.booleanValue()) {
            CrossfadeDrawable crossfadeDrawable = setupNowPlayingActivity.doneButtonDrawable;
            Intrinsics.checkNotNull(crossfadeDrawable);
            crossfadeDrawable.animateToProgress(0.0f);
            BulletinFactory.m1246of(setupNowPlayingActivity).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
            return;
        }
        setupNowPlayingActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.nowPlayingUpdated, nowPlayingInfoDTO.getServiceType());
        setupNowPlayingActivity.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkDone(boolean z) {
        if (this.doneButton == null) {
            return;
        }
        boolean zAreEqual = Intrinsics.areEqual(this.initialState, this.currentState);
        ActionBarMenuItem actionBarMenuItem = this.doneButton;
        Intrinsics.checkNotNull(actionBarMenuItem);
        actionBarMenuItem.setEnabled(!zAreEqual);
        if (z) {
            ActionBarMenuItem actionBarMenuItem2 = this.doneButton;
            Intrinsics.checkNotNull(actionBarMenuItem2);
            actionBarMenuItem2.animate().alpha(!zAreEqual ? 1.0f : 0.0f).scaleX(!zAreEqual ? 1.0f : 0.0f).scaleY(zAreEqual ? 0.0f : 1.0f).setDuration(180L).start();
        } else {
            ActionBarMenuItem actionBarMenuItem3 = this.doneButton;
            if (actionBarMenuItem3 != null) {
                actionBarMenuItem3.setAlpha(!zAreEqual ? 1.0f : 0.0f);
                actionBarMenuItem3.setScaleX(!zAreEqual ? 1.0f : 0.0f);
                actionBarMenuItem3.setScaleY(zAreEqual ? 0.0f : 1.0f);
            }
        }
    }
}
