package com.exteragram.messenger.player.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.player.motion.SpotifyAuth;
import com.exteragram.messenger.player.motion.SpotifyCanvasRepository;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class PlayerSettingsSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    private boolean capturing;
    private final SwitchingResourcesProvider colors;
    private boolean coverColorsExpanded;
    private final Delegate delegate;
    private Bitmap snapshot;
    private ValueAnimator snapshotAnimator;
    private final Paint snapshotPaint;
    private int snapshotTop;
    private boolean spotifyLoginPending;

    public interface Delegate {
        void onCoverColorsChanged();

        void onLyricsOnlineChanged();

        void onLyricsProgressChanged();

        void onMotionCoversChanged();

        void onRhythmBackgroundChanged();

        void onSpotifyCanvasChanged();
    }

    public PlayerSettingsSheet(Context context, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, Delegate delegate) {
        this(context, baseFragment, new SwitchingResourcesProvider(resourcesProvider), delegate);
    }

    private PlayerSettingsSheet(Context context, BaseFragment baseFragment, SwitchingResourcesProvider switchingResourcesProvider, Delegate delegate) {
        super(context, baseFragment, false, false, false, true, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, switchingResourcesProvider);
        this.snapshotPaint = new Paint(2);
        this.colors = switchingResourcesProvider;
        this.delegate = delegate;
        this.takeTranslationIntoAccount = true;
        applyColors();
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, AndroidUtilities.dp(12.0f));
        this.recyclerListView.setClipToPadding(false);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet.1
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                ((BottomSheet) PlayerSettingsSheet.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setSections();
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(view, i2);
            }
        });
        this.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        UItem item = this.adapter.getItem(i - 1);
        if (item != null) {
            onItemClick(item, view);
        }
    }

    public void updateColors(Theme.ResourcesProvider resourcesProvider) {
        if (this.colors.current == resourcesProvider) {
            return;
        }
        captureSnapshot();
        this.colors.current = resourcesProvider;
        applyColors();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.recyclerListView.getLayoutManager();
        int iFindFirstVisibleItemPosition = linearLayoutManager != null ? linearLayoutManager.findFirstVisibleItemPosition() : -1;
        View viewFindViewByPosition = iFindFirstVisibleItemPosition != -1 ? linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition) : null;
        int top = viewFindViewByPosition != null ? viewFindViewByPosition.getTop() - this.recyclerListView.getPaddingTop() : 0;
        resetAdapter(getContext());
        if (viewFindViewByPosition != null) {
            linearLayoutManager.scrollToPositionWithOffset(iFindFirstVisibleItemPosition, top);
        }
        fadeSnapshot();
    }

    private void applyColors() {
        int themedColor = getThemedColor(Theme.key_windowBackgroundGray);
        setBackgroundColor(themedColor);
        fixNavigationBar(themedColor);
        this.recyclerListView.setSelectorDrawableColor(getThemedColor(Theme.key_settings_listSelector));
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
            this.actionBar.setTitleColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            this.actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), false);
            this.actionBar.setItemsColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), false);
        }
        this.containerView.invalidate();
    }

    private void captureSnapshot() {
        int width = this.containerView.getWidth();
        int iMax = Math.max(0, this.shadowDrawable.getBounds().top);
        int height = this.containerView.getHeight() - iMax;
        if (!this.containerView.isAttachedToWindow() || width <= 0 || height <= 0) {
            return;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.translate(0.0f, -iMax);
            this.capturing = true;
            this.containerView.draw(canvas);
            this.capturing = false;
            releaseSnapshot();
            this.snapshot = bitmapCreateBitmap;
            this.snapshotTop = iMax;
            this.snapshotPaint.setAlpha(255);
        } catch (OutOfMemoryError unused) {
        }
    }

    private void fadeSnapshot() {
        if (this.snapshot == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.snapshotAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(350L);
        this.snapshotAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.snapshotAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$fadeSnapshot$1(valueAnimator);
            }
        });
        this.snapshotAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (PlayerSettingsSheet.this.snapshotAnimator == animator) {
                    PlayerSettingsSheet.this.snapshotAnimator = null;
                    PlayerSettingsSheet.this.releaseSnapshot();
                }
            }
        });
        this.snapshotAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fadeSnapshot$1(ValueAnimator valueAnimator) {
        this.snapshotPaint.setAlpha((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f));
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseSnapshot() {
        ValueAnimator valueAnimator = this.snapshotAnimator;
        if (valueAnimator != null) {
            this.snapshotAnimator = null;
            valueAnimator.cancel();
        }
        Bitmap bitmap = this.snapshot;
        if (bitmap != null) {
            bitmap.recycle();
            this.snapshot = null;
            this.containerView.invalidate();
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public void postDrawInternal(Canvas canvas, View view) {
        Bitmap bitmap = this.snapshot;
        if (bitmap != null && !this.capturing && view == this.containerView) {
            canvas.drawBitmap(bitmap, 0.0f, this.snapshotTop, this.snapshotPaint);
        }
        super.postDrawInternal(canvas, view);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        releaseSnapshot();
        if (this.spotifyLoginPending) {
            this.spotifyLoginPending = false;
            SpotifyAuth.cancel();
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        return LocaleController.getString(C2807R.string.PlayerSettings);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        if (this.delegate == null) {
            return;
        }
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.Appearance)));
        boolean playerCoverColors = ExteraConfig.getPlayerCoverColors();
        boolean playerMiniCoverColors = ExteraConfig.getPlayerMiniCoverColors();
        final int i = (playerCoverColors ? 1 : 0) + (playerMiniCoverColors ? 1 : 0);
        boolean z = false;
        arrayList.add(UItem.asExteraExpandableSwitch(1, LocaleController.getString(C2807R.string.PlayerCoverColors), i + "/2", new View.OnClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$fillItems$2(i, view);
            }
        }).setChecked(i > 0).setCollapsed(!this.coverColorsExpanded));
        if (this.coverColorsExpanded) {
            arrayList.add(UItem.asRoundCheckbox(6, LocaleController.getString(C2807R.string.PlayerCoverColorsFull)).setChecked(playerCoverColors).pad());
            arrayList.add(UItem.asRoundCheckbox(7, LocaleController.getString(C2807R.string.PlayerCoverColorsMini)).setChecked(playerMiniCoverColors).pad());
        }
        arrayList.add(UItem.asCheck(5, LocaleController.getString(C2807R.string.PlayerRhythmBackground), LocaleController.getString(C2807R.string.PlayerRhythmBackgroundInfo), true).setChecked(ExteraConfig.getPlayerRhythmBackground()));
        arrayList.add(UItem.asCheck(8, LocaleController.getString(C2807R.string.PlayerParticles), LocaleController.getString(C2807R.string.PlayerParticlesInfo), true).setChecked(ExteraConfig.getPlayerParticles()));
        arrayList.add(UItem.asCheck(2, LocaleController.getString(C2807R.string.PlayerMotionCovers), LocaleController.getString(C2807R.string.PlayerMotionCoversEnabled), true).setChecked(ExteraConfig.getPlayerMotionCovers()));
        if (SpotifyCanvasRepository.isSupported()) {
            boolean zIsLoggedIn = SpotifyCanvasRepository.isLoggedIn();
            UItem uItemAsCheck = UItem.asCheck(10, LocaleController.getString(C2807R.string.PlayerSpotifyCanvas), LocaleController.getString(C2807R.string.PlayerSpotifyCanvasInfo), true);
            if (zIsLoggedIn && ExteraConfig.getPlayerSpotifyCanvas()) {
                z = true;
            }
            arrayList.add(uItemAsCheck.setChecked(z));
            if (zIsLoggedIn) {
                arrayList.add(UItem.asButton(11, LocaleController.getString(C2807R.string.PlayerSpotifyLogout)).red());
            }
        }
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.PlayerLyrics)));
        arrayList.add(UItem.asCheck(3, LocaleController.getString(C2807R.string.PlayerLyricsOnline), LocaleController.getString(C2807R.string.PlayerLyricsOnlineInfo), true).setChecked(ExteraConfig.getLyricsOnline()));
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2807R.string.PlayerLyricsProgress)));
        arrayList.add(UItem.asSlideView(9, new String[]{LocaleController.getString(C2807R.string.BlurOff), LocaleController.getString(C2807R.string.PlayerLyricsProgressHorizontal), LocaleController.getString(C2807R.string.PlayerLyricsProgressVertical)}, ExteraConfig.getLyricsProgress(), new Utilities.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$fillItems$3((Integer) obj);
            }
        }));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2807R.string.PlayerLyricsProgressInfo)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$2(int i, View view) {
        setCoverColors(i == 0, i == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$3(Integer num) {
        ExteraConfig.setLyricsProgress(num.intValue());
        this.delegate.onLyricsProgressChanged();
    }

    private void onItemClick(UItem uItem, View view) {
        switch (uItem.id) {
            case 1:
                this.coverColorsExpanded = !this.coverColorsExpanded;
                this.adapter.update(true);
                break;
            case 2:
                boolean z = !ExteraConfig.getPlayerMotionCovers();
                ExteraConfig.setPlayerMotionCovers(z);
                setChecked(view, z);
                this.delegate.onMotionCoversChanged();
                break;
            case 3:
                boolean z2 = !ExteraConfig.getLyricsOnline();
                ExteraConfig.setLyricsOnline(z2);
                setChecked(view, z2);
                this.delegate.onLyricsOnlineChanged();
                break;
            case 5:
                boolean z3 = !ExteraConfig.getPlayerRhythmBackground();
                ExteraConfig.setPlayerRhythmBackground(z3);
                setChecked(view, z3);
                this.delegate.onRhythmBackgroundChanged();
                break;
            case 6:
                setCoverColors(!ExteraConfig.getPlayerCoverColors(), ExteraConfig.getPlayerMiniCoverColors());
                break;
            case 7:
                setCoverColors(ExteraConfig.getPlayerCoverColors(), !ExteraConfig.getPlayerMiniCoverColors());
                break;
            case 8:
                boolean z4 = !ExteraConfig.getPlayerParticles();
                ExteraConfig.setPlayerParticles(z4);
                setChecked(view, z4);
                this.delegate.onRhythmBackgroundChanged();
                break;
            case 10:
                if (!SpotifyCanvasRepository.isLoggedIn()) {
                    this.spotifyLoginPending = true;
                    SpotifyAuth.login(getContext(), new SpotifyAuth.Callback() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda3
                        @Override // com.exteragram.messenger.player.motion.SpotifyAuth.Callback
                        public final void onResult(boolean z5) {
                            this.f$0.lambda$onItemClick$4(z5);
                        }
                    });
                } else {
                    setSpotifyCanvas(!ExteraConfig.getPlayerSpotifyCanvas());
                }
                break;
            case 11:
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2807R.string.PlayerSpotifyLogout)).setMessage(LocaleController.getString(C2807R.string.PlayerSpotifyLogoutInfo)).setPositiveButton(LocaleController.getString(C2807R.string.LogOut), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.player.ui.PlayerSettingsSheet$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$onItemClick$5(alertDialog, i);
                    }
                }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).makeRed(-1).show();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$4(boolean z) {
        this.spotifyLoginPending = false;
        if (isDismissed()) {
            if (z) {
                ExteraConfig.setPlayerSpotifyCanvas(true);
            }
        } else if (z) {
            setSpotifyCanvas(true);
        } else {
            BulletinFactory.of(this.container, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2807R.string.PlayerSpotifyLoginFailed)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$5(AlertDialog alertDialog, int i) {
        SpotifyCanvasRepository.logout();
        setSpotifyCanvas(false);
    }

    private void setCoverColors(boolean z, boolean z2) {
        ExteraConfig.setPlayerCoverColors(z);
        ExteraConfig.setPlayerMiniCoverColors(z2);
        this.adapter.update(true);
        this.delegate.onCoverColorsChanged();
    }

    private void setSpotifyCanvas(boolean z) {
        ExteraConfig.setPlayerSpotifyCanvas(z);
        this.adapter.update(true);
        this.delegate.onSpotifyCanvasChanged();
    }

    private static void setChecked(View view, boolean z) {
        if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).setChecked(z);
        }
    }

    public static final class SwitchingResourcesProvider implements Theme.ResourcesProvider {
        Theme.ResourcesProvider current;

        public SwitchingResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
            this.current = resourcesProvider;
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public int getColor(int i) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.getColor(i) : Theme.getColor(i);
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public int getColorOrDefault(int i) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.getColorOrDefault(i) : Theme.getColor(i);
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public int getCurrentColor(int i) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.getCurrentColor(i) : Theme.getColor(i);
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public void setAnimatedColor(int i, int i2) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            if (resourcesProvider != null) {
                resourcesProvider.setAnimatedColor(i, i2);
            }
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public Drawable getDrawable(String str) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.getDrawable(str) : Theme.getThemeDrawable(str);
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public Paint getPaint(String str) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.getPaint(str) : Theme.getThemePaint(str);
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public boolean hasGradientService() {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService();
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public boolean isDark() {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public boolean isMonet() {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.isMonet() : Theme.isCurrentThemeMonet();
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
            Theme.ResourcesProvider resourcesProvider = this.current;
            if (resourcesProvider != null) {
                resourcesProvider.applyServiceShaderMatrix(i, i2, f, f2);
            } else {
                Theme.applyServiceShaderMatrix(i, i2, f, f2);
            }
        }

        @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
        public ColorFilter getAnimatedEmojiColorFilter() {
            Theme.ResourcesProvider resourcesProvider = this.current;
            return resourcesProvider != null ? resourcesProvider.getAnimatedEmojiColorFilter() : Theme.getAnimatedEmojiColorFilter(null);
        }
    }
}
