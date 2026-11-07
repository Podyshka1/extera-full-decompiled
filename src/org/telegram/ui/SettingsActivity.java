package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ConfigurationInfo;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import com.exteragram.messenger.config.BottomNavigationBar;
import com.exteragram.messenger.debug.DebugActivity;
import com.exteragram.messenger.preferences.MainPreferencesActivity;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.ui.MainTabsUiHelper;
import com.google.android.material.timepicker.TimeModel;
import java.io.File;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Set;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.AuthTokensHelper;
import org.telegram.messenger.BirthdayController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SharedPrefsHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.SettingsSearchCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.HintsController;
import org.telegram.ui.Components.IconBackgroundColors;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.InstantCameraView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Paint.PersistColorPalette;
import org.telegram.ui.Components.Premium.boosts.UserSelectorBottomSheet;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.MainTabsActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.DualCameraView;
import org.telegram.ui.TON.TONIntroActivity;
import org.telegram.ui.bots.BotBiometry;
import org.telegram.ui.bots.BotDownloads;
import org.telegram.ui.bots.BotLocation;
import org.telegram.ui.bots.BotWebViewSheet;
import org.telegram.ui.bots.SetupEmojiStatusSheet;
import org.telegram.utils.settings.SharedSettings;

/* JADX INFO: loaded from: classes6.dex */
public class SettingsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, ImageUpdater.ImageUpdaterDelegate, MainTabsActivity.TabFragmentDelegate, FactorAnimator.Target {
    private View actionBarBackground;
    private boolean actionBarVisible;
    private ValueAnimator actionBarVisibleAnimator;
    private int additionNavigationBarHeight;
    private final BoolAnimator animatorSearchPageVisible;
    private TLRPC.FileLocation avatar;
    private AnimatorSet avatarAnimation;
    private TLRPC.FileLocation avatarBig;
    private FrameLayout avatarContainer;
    private AvatarDrawable avatarDrawable;
    private RadialProgressView avatarProgressView;
    int avatarUploadingRequest;
    private BackupImageView avatarView;
    private FrameLayout cameraBackground;
    private FrameLayout cameraButton;
    private ImageView cameraImageView;
    private SizeNotifierFrameLayout contentView;
    public boolean hasMainTabs;
    private IBlur3Capture iBlur3Capture;
    private boolean iBlur3Invalidated;
    private final RectF iBlur3PositionActionBar;
    private final RectF iBlur3PositionMainTabs;
    private final ArrayList<RectF> iBlur3Positions;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlass;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlassFrosted;
    private boolean ignoreClearViews;
    private ImageUpdater imageUpdater;
    private UniversalRecyclerView listView;
    private MainTabsActivityController mainTabsActivityController;
    private boolean mainTabsHiddenByScroll;
    private View navigationBar;
    private int navigationBarHeight;
    private ActionBarMenuItem otherItem;
    private String query;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private ProfileActivity.SearchAdapter search;
    private ActionBarMenuItem searchItem;
    private TextView subtitleView;
    private TextView titleView;
    private FrameLayout topView;
    private TextView versionView;
    private int versionViewPressCount;

    public static /* synthetic */ void $r8$lambda$wP8owmPdSSGJetjE9FgLZBKzIqY(DialogInterface dialogInterface) {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    private String getDevicesCount() {
        int i = getMessagesController().lastKnownSessionsCount;
        return i > 0 ? String.format(LocaleController.getInstance().getCurrentLocale(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i)) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private void loadSessionsCount() {
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getAuthorizations(), new RequestDelegate() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadSessionsCount$1(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSessionsCount$1(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSessionsCount$0(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSessionsCount$0(TLRPC.TL_error tL_error, TLObject tLObject) {
        int size;
        UniversalAdapter universalAdapter;
        if (tL_error != null || getMessagesController().lastKnownSessionsCount == (size = ((TL_account.authorizations) tLObject).authorizations.size())) {
            return;
        }
        getMessagesController().lastKnownSessionsCount = size;
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || (universalAdapter = universalRecyclerView.adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    public SettingsActivity() {
        this(null);
    }

    public SettingsActivity(Bundle bundle) {
        super(bundle);
        this.animatorSearchPageVisible = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 350L);
        this.versionViewPressCount = 0;
        this.avatarUploadingRequest = -1;
        ArrayList<RectF> arrayList = new ArrayList<>();
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        RectF rectF2 = new RectF();
        this.iBlur3PositionMainTabs = rectF2;
        arrayList.add(rectF);
        arrayList.add(rectF2);
        if (Build.VERSION.SDK_INT >= 31) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            this.iBlur3SourceGlassFrosted = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlass = new BlurredBackgroundSourceRenderNode(null);
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.iBlur3SourceGlassFrosted = null;
            this.iBlur3SourceGlass = null;
        }
    }

    public void setMainTabsActivityController(MainTabsActivityController mainTabsActivityController) {
        this.mainTabsActivityController = mainTabsActivityController;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().addObserver(this, NotificationCenter.starBalanceUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.newSuggestionsAvailable);
        Bundle bundle = this.arguments;
        if (bundle != null) {
            this.hasMainTabs = bundle.getBoolean("hasMainTabs", false);
        }
        this.additionNavigationBarHeight = MainTabsUiHelper.getAdditionalNavigationBarHeight(this.hasMainTabs);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void clearViews() {
        if (this.ignoreClearViews) {
            return;
        }
        super.clearViews();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.mainTabsHiddenByScroll = false;
        updateMainTabsVisibility();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.additionNavigationBarHeight = MainTabsUiHelper.getAdditionalNavigationBarHeight(this.hasMainTabs);
        this.contentView = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.SettingsActivity.1
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (Build.VERSION.SDK_INT >= 31 && SettingsActivity.this.scrollableViewNoiseSuppressor != null) {
                    SettingsActivity.this.blur3_InvalidateBlur();
                    int measuredWidth = getMeasuredWidth();
                    int measuredHeight = getMeasuredHeight();
                    if (SettingsActivity.this.iBlur3SourceGlassFrosted != null && !SettingsActivity.this.iBlur3SourceGlassFrosted.inRecording()) {
                        RecordingCanvas recordingCanvasBeginRecording = SettingsActivity.this.iBlur3SourceGlassFrosted.beginRecording(measuredWidth, measuredHeight);
                        recordingCanvasBeginRecording.drawColor(SettingsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                        if (SharedConfig.chatBlurEnabled()) {
                            SettingsActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording, -3);
                        }
                        SettingsActivity.this.iBlur3SourceGlassFrosted.endRecording();
                    }
                    if (SettingsActivity.this.iBlur3SourceGlass != null && !SettingsActivity.this.iBlur3SourceGlass.inRecording()) {
                        RecordingCanvas recordingCanvasBeginRecording2 = SettingsActivity.this.iBlur3SourceGlass.beginRecording(measuredWidth, measuredHeight);
                        recordingCanvasBeginRecording2.drawColor(SettingsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                        if (SharedConfig.chatBlurEnabled()) {
                            SettingsActivity.this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording2, -2);
                        }
                        SettingsActivity.this.iBlur3SourceGlass.endRecording();
                    }
                    SettingsActivity.this.iBlur3Invalidated = false;
                }
                super.dispatchDraw(canvas);
                SettingsActivity settingsActivity = SettingsActivity.this;
                if (settingsActivity.hasMainTabs) {
                    return;
                }
                AndroidUtilities.drawNavigationBarProtection(canvas, this, settingsActivity.getThemedColor(Theme.key_windowBackgroundWhite), SettingsActivity.this.navigationBarHeight);
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public void drawBlurRect(Canvas canvas, float f, Rect rect, Paint paint, boolean z) {
                if (Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBlurEnabled() || SettingsActivity.this.iBlur3SourceGlassFrosted == null) {
                    canvas.drawRect(rect, paint);
                    return;
                }
                canvas.save();
                canvas.translate(0.0f, -f);
                SettingsActivity.this.iBlur3SourceGlassFrosted.draw(canvas, rect.left, rect.top + f, rect.right, rect.bottom + f);
                canvas.restore();
                int alpha = paint.getAlpha();
                paint.setAlpha(178);
                canvas.drawRect(rect, paint);
                paint.setAlpha(alpha);
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.ActionBar.Theme.Colorable
            public void updateColors() {
                super.updateColors();
                SettingsActivity.this.updateColors();
            }
        };
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setUseContainerForTitles();
        this.actionBar.setTitle(LocaleController.getString(C2665R.string.Settings));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.SettingsActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SettingsActivity.this.finishFragment();
                } else if (i == 2) {
                    SettingsActivity.this.presentSettingFragment(new LogoutActivity());
                }
            }
        });
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(true);
        this.actionBar.setBackgroundColor(0);
        this.actionBar.setBackground(null);
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, C2665R.drawable.outline_header_search, this.resourceProvider).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.SettingsActivity.3
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                SettingsActivity.this.animatorSearchPageVisible.setValue(false, true);
                SettingsActivity.this.updateActionBarVisible();
                SettingsActivity.this.listView.adapter.update(false);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                SettingsActivity.this.animatorSearchPageVisible.setValue(true, true);
                SettingsActivity.this.search.prepareExteraItems();
                ProfileActivity.SearchAdapter searchAdapter = SettingsActivity.this.search;
                SettingsActivity.this.query = _UrlKt.FRAGMENT_ENCODE_SET;
                searchAdapter.search(_UrlKt.FRAGMENT_ENCODE_SET);
                SettingsActivity.this.updateActionBarVisible();
                SettingsActivity.this.listView.adapter.update(false);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                ProfileActivity.SearchAdapter searchAdapter = SettingsActivity.this.search;
                SettingsActivity settingsActivity = SettingsActivity.this;
                String string = editText.getText().toString();
                settingsActivity.query = string;
                searchAdapter.search(string);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2665R.string.Search));
        ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(1, C2665R.drawable.ic_ab_other);
        this.otherItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2665R.string.AccDescrMoreOptions));
        this.otherItem.addSubItem(2, C2665R.drawable.msg_leave, LocaleController.getString(C2665R.string.LogOut));
        ProfileActivity.SearchAdapter searchAdapter = new ProfileActivity.SearchAdapter(this, context) { // from class: org.telegram.ui.SettingsActivity.4
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                SettingsActivity.this.listView.adapter.update(true);
            }
        };
        this.search = searchAdapter;
        searchAdapter.loadFaqWebPage();
        loadSessionsCount();
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        });
        this.listView = universalRecyclerView;
        universalRecyclerView.adapter.setApplyBackground(false);
        this.listView.setSections();
        this.listView.setPadding(0, AndroidUtilities.statusBarHeight + AndroidUtilities.dp(12.0f), 0, AndroidUtilities.navigationBarHeight + this.additionNavigationBarHeight + MainTabsUiHelper.getFloatingTabsPadding(this.hasMainTabs));
        this.listView.setClipToPadding(false);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.SettingsActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                SettingsActivity.this.updateActionBarVisible();
                if (i2 != 0) {
                    SettingsActivity.this.mainTabsHiddenByScroll = BottomNavigationBar.floating() && i2 > 0 && recyclerView.canScrollVertically(1);
                    SettingsActivity.this.updateMainTabsVisibility();
                }
                if (SettingsActivity.this.listView.scrollingByUser) {
                    AndroidUtilities.hideKeyboard(SettingsActivity.this.fragmentView);
                }
                if (Build.VERSION.SDK_INT < 31 || SettingsActivity.this.scrollableViewNoiseSuppressor == null) {
                    return;
                }
                SettingsActivity.this.scrollableViewNoiseSuppressor.onScrolled(i, i2);
                SettingsActivity.this.blur3_InvalidateBlur();
            }
        });
        UniversalRecyclerView universalRecyclerView2 = this.listView;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.contentView;
        Objects.requireNonNull(universalRecyclerView2);
        this.iBlur3Capture = new ViewGroupPartRenderer(universalRecyclerView2, sizeNotifierFrameLayout, new CallLogActivity$$ExternalSyntheticLambda6(universalRecyclerView2));
        this.listView.addEdgeEffectListener(new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2();
            }
        });
        this.contentView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 119));
        View view = new View(context) { // from class: org.telegram.ui.SettingsActivity.6
            private final Paint blurScrimPaint = new Paint(1);

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int height = ((BaseFragment) SettingsActivity.this).actionBar.getHeight();
                Rect rect = AndroidUtilities.rectTmp2;
                rect.set(0, 0, getMeasuredWidth(), height);
                this.blurScrimPaint.setColor(Theme.getColor(Theme.key_actionBarDefault, ((BaseFragment) SettingsActivity.this).resourceProvider));
                SettingsActivity.this.contentView.drawBlurRect(canvas, 0.0f, rect, this.blurScrimPaint, true);
                if (SettingsActivity.this.getParentLayout() != null) {
                    SettingsActivity.this.getParentLayout().drawHeaderShadow(canvas, height);
                }
            }
        };
        this.actionBarBackground = view;
        this.contentView.addView(view, LayoutHelper.createFrame(-1, 200, 48));
        this.contentView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2, 55));
        ImageUpdater imageUpdater = new ImageUpdater(true, 0, true);
        this.imageUpdater = imageUpdater;
        imageUpdater.setOpenWithFrontfaceCamera(true);
        ImageUpdater imageUpdater2 = this.imageUpdater;
        imageUpdater2.parentFragment = this;
        imageUpdater2.setDelegate(this);
        this.topView = new FrameLayout(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.avatarContainer = frameLayout;
        this.topView.addView(frameLayout, LayoutHelper.createFrame(120, 120.0f, 49, 0.0f, 11.0f, 0.0f, 0.0f));
        this.avatarContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$5(view2);
            }
        });
        ScaleStateListAnimator.apply(this.avatarContainer);
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarView = backupImageView;
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(90.0f));
        this.avatarContainer.addView(this.avatarView, LayoutHelper.createFrame(90, 90.0f, 49, 0.0f, 15.0f, 0.0f, 0.0f));
        RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.SettingsActivity.7
            private Paint paint;

            {
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setColor(1426063360);
            }

            @Override // org.telegram.ui.Components.RadialProgressView, android.view.View
            public void onDraw(Canvas canvas) {
                if (SettingsActivity.this.avatarView != null && SettingsActivity.this.avatarView.getImageReceiver().hasNotThumb()) {
                    this.paint.setAlpha((int) (SettingsActivity.this.avatarView.getImageReceiver().getCurrentAlpha() * 85.0f));
                    canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, getMeasuredWidth() / 2.0f, this.paint);
                }
                super.onDraw(canvas);
            }
        };
        this.avatarProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(26.0f));
        this.avatarProgressView.setProgressColor(-1);
        this.avatarProgressView.setNoProgress(false);
        this.avatarContainer.addView(this.avatarProgressView, LayoutHelper.createFrame(90, 90.0f, 49, 0.0f, 15.0f, 0.0f, 0.0f));
        showAvatarProgress(false, false);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.cameraButton = frameLayout2;
        frameLayout2.setPadding(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f));
        this.cameraButton.setClipToPadding(false);
        this.cameraBackground = new FrameLayout(context);
        ImageView imageView = new ImageView(context);
        this.cameraImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.cameraImageView.setImageResource(C2665R.drawable.filled_premium_camera);
        this.cameraBackground.addView(this.cameraImageView, LayoutHelper.createFrame(22, 22, 17));
        this.cameraButton.addView(this.cameraBackground, LayoutHelper.createFrame(30, 30.0f));
        this.avatarContainer.addView(this.cameraButton, LayoutHelper.createFrame(34, 34.0f, 49, 33.0f, 76.0f, 0.0f, 0.0f));
        ScaleStateListAnimator.apply(this.cameraButton);
        TextView textView = new TextView(context);
        this.titleView = textView;
        NotificationCenter.listenEmojiLoading(textView);
        this.titleView.setTextSize(1, 22.0f);
        this.titleView.setTypeface(AndroidUtilities.bold());
        this.titleView.setGravity(17);
        this.titleView.setSingleLine();
        TextView textView2 = this.titleView;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView2.setEllipsize(truncateAt);
        this.topView.addView(this.titleView, LayoutHelper.createFrame(-1, -2.0f, 49, 16.0f, 126.33299f, 16.0f, 0.0f));
        TextView textView3 = new TextView(context);
        this.subtitleView = textView3;
        textView3.setTextSize(1, 13.0f);
        this.subtitleView.setTypeface(AndroidUtilities.regular());
        this.subtitleView.setGravity(17);
        this.subtitleView.setSingleLine();
        this.subtitleView.setEllipsize(truncateAt);
        this.subtitleView.setTextIsSelectable(true);
        this.topView.addView(this.subtitleView, LayoutHelper.createFrame(-1, -2.0f, 49, 0.0f, 156.0f, 0.0f, 0.0f));
        TextView textView4 = new TextView(context);
        this.versionView = textView4;
        textView4.setTextSize(1, 14.0f);
        this.versionView.setTypeface(AndroidUtilities.regular());
        this.versionView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText4));
        this.versionView.setPadding(AndroidUtilities.dp(21.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(21.0f), AndroidUtilities.dp(10.0f));
        this.versionView.setGravity(17);
        this.versionView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 2));
        this.versionView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$6(view2);
            }
        });
        this.navigationBar = new View(context);
        updateActionBarVisible(true, false);
        this.listView.adapter.update(false);
        setInfo();
        updateColors();
        checkUi_menuItems();
        ViewCompat.setOnApplyWindowInsetsListener(this.contentView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda7
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view2, windowInsetsCompat);
            }
        });
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.contentView;
        this.fragmentView = sizeNotifierFrameLayout2;
        return sizeNotifierFrameLayout2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        this.listView.postOnAnimation(new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.blur3_InvalidateBlur();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        if (user == null) {
            user = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        }
        if (user == null) {
            return;
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
        imageUpdater.openMenu((userProfilePhoto == null || userProfilePhoto.photo_big == null || (userProfilePhoto instanceof TLRPC.TL_userProfilePhotoEmpty)) ? false : true, new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3();
            }
        }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda16
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SettingsActivity.$r8$lambda$wP8owmPdSSGJetjE9FgLZBKzIqY(dialogInterface);
            }
        }, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        MessagesController.getInstance(this.currentAccount).deleteUserPhoto(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        int i = this.versionViewPressCount + 1;
        this.versionViewPressCount = i;
        if (i < 2 && !BuildVars.DEBUG_PRIVATE_VERSION) {
            try {
                Toast.makeText(getParentActivity(), LocaleController.getString(C2665R.string.DebugMenuLongPress), 0).show();
                return;
            } catch (Exception e) {
                FileLog.m992e(e);
                return;
            }
        }
        openDebugMenu();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().removeObserver(this, NotificationCenter.starBalanceUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.newSuggestionsAvailable);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        UniversalRecyclerView universalRecyclerView;
        if (i == NotificationCenter.starBalanceUpdated) {
            setInfo();
            UniversalRecyclerView universalRecyclerView2 = this.listView;
            if (universalRecyclerView2 != null) {
                universalRecyclerView2.adapter.update(true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            setInfo();
        } else {
            if (i != NotificationCenter.newSuggestionsAvailable || (universalRecyclerView = this.listView) == null) {
                return;
            }
            universalRecyclerView.adapter.update(true);
        }
    }

    public void setInfo() {
        setInfo(getUserConfig().getCurrentUser());
    }

    public void setInfo(TLRPC.User user) {
        if (this.avatarView != null && this.avatarUploadingRequest == -1) {
            this.avatarDrawable.setInfo(user);
            this.avatarView.setForUserOrChat(user, this.avatarDrawable);
            this.titleView.setText(Emoji.replaceEmoji(UserObject.getUserName(user), this.titleView.getPaint().getFontMetricsInt(), false));
            StringBuilder sb = new StringBuilder();
            if (user != null && !ExteraConfig.getHidePhoneNumber()) {
                sb.append(PhoneFormat.getInstance().format("+" + user.phone));
            }
            String publicUsername = UserObject.getPublicUsername(user);
            if (publicUsername != null) {
                if (!TextUtils.isEmpty(sb)) {
                    sb.append(" • ");
                }
                sb.append("@");
                sb.append(publicUsername);
            }
            this.subtitleView.setText(sb);
            this.versionView.setText(AppUtils.getVersionText());
        }
    }

    public void updateColors() {
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar.setTitleColor(getThemedColor(i));
        this.actionBar.setItemsColor(getThemedColor(i), false);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.contentView;
        int i2 = Theme.key_windowBackgroundGray;
        sizeNotifierFrameLayout.setBackgroundColor(getThemedColor(i2));
        this.titleView.setTextColor(getThemedColor(i));
        this.subtitleView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.cameraButton.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(32.0f), getThemedColor(i2)));
        this.cameraBackground.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(30.0f), getThemedColor(Theme.key_featuredStickers_addButton)));
        this.cameraImageView.setColorFilter(getThemedColor(Theme.key_chats_actionIcon));
        this.searchItem.updateColor();
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
        this.navigationBar.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Theme.multAlpha(themedColor, 0.0f), themedColor}));
        this.actionBarBackground.invalidate();
        this.listView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarVisible() {
        updateActionBarVisible(false, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateActionBarVisible(boolean z, boolean z2) {
        boolean z3;
        if (!this.searchItem.isSearchFieldVisible2()) {
            if (this.listView.getChildCount() > 0) {
                View childAt = this.listView.getChildAt(0);
                if (this.listView.getChildAdapterPosition(childAt) > 0 || childAt.getY() + childAt.getHeight() < this.actionBar.getHeight()) {
                    z3 = true;
                }
            }
            z3 = false;
        }
        if (this.actionBarVisible != z3 || z) {
            this.actionBarVisible = z3;
            ValueAnimator valueAnimator = this.actionBarVisibleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.actionBarVisibleAnimator = null;
            }
            ActionBar actionBar = this.actionBar;
            if (!z2) {
                actionBar.getTitlesContainer().setAlpha(z3 ? 1.0f : 0.0f);
                this.actionBarBackground.setAlpha(z3 ? 1.0f : 0.0f);
                return;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(actionBar.getTitlesContainer().getAlpha(), z3 ? 1.0f : 0.0f);
            this.actionBarVisibleAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda11
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateActionBarVisible$7(valueAnimator2);
                }
            });
            this.actionBarVisibleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.actionBarVisibleAnimator.setDuration(420L);
            this.actionBarVisibleAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateActionBarVisible$7(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.actionBar.getTitlesContainer().setAlpha(fFloatValue);
        this.actionBarBackground.setAlpha(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        CharSequence charSequence;
        int iIndexOf;
        ArrayList<TLRPC.TL_attachMenuBot> arrayList2;
        if (this.searchItem.isSearchFieldVisible2()) {
            arrayList.add(UItem.asSpace(ActionBar.getCurrentActionBarHeight()));
            this.search.fillItems(arrayList);
            return;
        }
        arrayList.add(UItem.asCustomShadow(this.topView, 188));
        Set<String> set = getMessagesController().pendingSuggestions;
        if (set.contains("PREMIUM_GRACE")) {
            arrayList.add(SuggestionCell.Factory.of(LocaleController.getString(C2665R.string.GraceSuggestionTitle), LocaleController.getString(C2665R.string.GraceSuggestionMessage), null, null, LocaleController.getString(C2665R.string.GraceSuggestionButton), new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$8(view);
                }
            }));
            arrayList.add(UItem.asShadow(null));
        } else if (set.contains("VALIDATE_PHONE_NUMBER") && getUserConfig().getCurrentUser() != null) {
            String str = PhoneFormat.getInstance().format("+" + getUserConfig().getCurrentUser().phone);
            String string = LocaleController.formatString(C2665R.string.CheckPhoneNumber, str);
            if (!ExteraConfig.getHidePhoneNumber() || (iIndexOf = string.indexOf(str)) < 0) {
                charSequence = string;
            } else {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                textStyleRun.flags |= 256;
                spannableStringBuilder.setSpan(new TextStyleSpan(textStyleRun), iIndexOf, str.length() + iIndexOf, 33);
                charSequence = spannableStringBuilder;
            }
            arrayList.add(SuggestionCell.Factory.of(charSequence, AndroidUtilities.replaceSingleTag(LocaleController.getString(C2665R.string.CheckPhoneNumberInfo), new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fillItems$9();
                }
            }), LocaleController.getString(C2665R.string.CheckPhoneNumberNo), new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$10(view);
                }
            }, StarGiftSheet.replaceUnderstood(LocaleController.getString(C2665R.string.CheckPhoneNumberYes2)), new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$11(view);
                }
            }));
            arrayList.add(UItem.asShadow(null));
        } else if (set.contains("VALIDATE_PASSWORD")) {
            arrayList.add(SuggestionCell.Factory.of(LocaleController.getString(C2665R.string.YourPasswordHeader), LocaleController.getString(C2665R.string.YourPasswordRemember), LocaleController.getString(C2665R.string.YourPasswordRememberNo), new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda21
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$12(view);
                }
            }, LocaleController.getString(C2665R.string.YourPasswordRememberYes), new View.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda22
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$13(view);
                }
            }));
            arrayList.add(UItem.asShadow(null));
        }
        arrayList.add(SettingCell.Factory.of(-1, -1560528, -1560528, Theme.isCurrentThemeMonet() ? C2665R.drawable.ic_foreground_solid : C2665R.drawable.ic_foreground, LocaleController.getString(C2665R.string.Preferences)));
        arrayList.add(UItem.asShadow(null));
        IconBackgroundColors iconBackgroundColors = IconBackgroundColors.BLUE;
        arrayList.add(SettingCell.Factory.of(1, iconBackgroundColors.top, iconBackgroundColors.bottom, C2665R.drawable.settings_account, LocaleController.getString(C2665R.string.SettingsAccount), LocaleController.getString(C2665R.string.SettingsAccountInfo)));
        IconBackgroundColors iconBackgroundColors2 = IconBackgroundColors.ORANGE;
        arrayList.add(SettingCell.Factory.of(2, iconBackgroundColors2.top, iconBackgroundColors2.bottom, C2665R.drawable.settings_chat, LocaleController.getString(C2665R.string.SettingsChat), LocaleController.getString(C2665R.string.SettingsChatInfo)));
        IconBackgroundColors iconBackgroundColors3 = IconBackgroundColors.GREEN;
        arrayList.add(SettingCell.Factory.of(3, iconBackgroundColors3.top, iconBackgroundColors3.bottom, C2665R.drawable.settings_privacy, LocaleController.getString(C2665R.string.SettingsPrivacySecurity), LocaleController.getString(C2665R.string.SettingsPrivacySecurityInfo)));
        IconBackgroundColors iconBackgroundColors4 = IconBackgroundColors.RED;
        arrayList.add(SettingCell.Factory.of(5, iconBackgroundColors4.top, iconBackgroundColors4.bottom, C2665R.drawable.settings_sounds, LocaleController.getString(C2665R.string.SettingsNotifications), LocaleController.getString(C2665R.string.SettingsNotificationsInfo)));
        IconBackgroundColors iconBackgroundColors5 = IconBackgroundColors.BLUE_DEEP;
        arrayList.add(SettingCell.Factory.of(6, iconBackgroundColors5.top, iconBackgroundColors5.bottom, C2665R.drawable.settings_data, LocaleController.getString(C2665R.string.SettingsData), LocaleController.getString(C2665R.string.SettingsDataInfo)));
        IconBackgroundColors iconBackgroundColors6 = IconBackgroundColors.BLUE_ALT;
        arrayList.add(SettingCell.Factory.of(7, iconBackgroundColors6.top, iconBackgroundColors6.bottom, C2665R.drawable.settings_folders, LocaleController.getString(C2665R.string.SettingsFolders), LocaleController.getString(C2665R.string.SettingsFoldersInfo)));
        IconBackgroundColors iconBackgroundColors7 = IconBackgroundColors.CYAN;
        arrayList.add(SettingCell.Factory.of(8, iconBackgroundColors7.top, iconBackgroundColors7.bottom, C2665R.drawable.settings_devices, LocaleController.getString(C2665R.string.SettingsDevices), LocaleController.getString(C2665R.string.SettingsDevicesInfo), getDevicesCount()));
        IconBackgroundColors iconBackgroundColors8 = IconBackgroundColors.ORANGE_DEEP;
        arrayList.add(SettingCell.Factory.of(9, iconBackgroundColors8.top, iconBackgroundColors8.bottom, C2665R.drawable.settings_power, LocaleController.getString(C2665R.string.SettingsPowerSaving), LocaleController.getString(C2665R.string.SettingsPowerSavingInfo)));
        IconBackgroundColors iconBackgroundColors9 = IconBackgroundColors.PURPLE;
        arrayList.add(SettingCell.Factory.of(10, iconBackgroundColors9.top, iconBackgroundColors9.bottom, C2665R.drawable.settings_language, LocaleController.getString(C2665R.string.SettingsLanguage), null, LocaleController.getCurrentLanguageName()));
        arrayList.add(UItem.asShadow(null));
        if (!getMessagesController().premiumFeaturesBlocked()) {
            arrayList.add(SettingCell.Factory.of(11, -4826625, -10388225, C2665R.drawable.settings_premium, LocaleController.getString(C2665R.string.TelegramPremium)));
        }
        boolean zStarsPurchaseAvailable = getMessagesController().starsPurchaseAvailable();
        CharSequence starsAmount = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zStarsPurchaseAvailable) {
            StarsController starsController = StarsController.getInstance(this.currentAccount);
            arrayList.add(SettingCell.Factory.of(12, -1071598, -1608430, C2665R.drawable.settings_stars, LocaleController.getString(C2665R.string.TelegramStars), null, (!starsController.balanceAvailable() || starsController.getBalance().amount <= 0) ? _UrlKt.FRAGMENT_ENCODE_SET : StarsIntroActivity.formatStarsAmount(starsController.getBalance(), 0.85f, ' ')));
        }
        StarsController.getInstance(this.currentAccount, true).getBalance();
        if (BuildVars.isBetaApp() || (StarsController.getInstance(this.currentAccount, true).balanceAvailable() && (StarsController.getInstance(this.currentAccount, true).hasTransactions() || StarsController.getInstance(this.currentAccount, true).getBalance().positive()))) {
            StarsController tonInstance = StarsController.getTonInstance(this.currentAccount);
            long j = tonInstance.getBalance().amount;
            int i = C2665R.drawable.settings_gram_24;
            String string2 = LocaleController.getString(C2665R.string.MyTON);
            if (tonInstance.balanceAvailable() && j > 0) {
                starsAmount = StarsIntroActivity.formatStarsAmount(tonInstance.getBalance(), 0.85f, ' ');
            }
            arrayList.add(SettingCell.Factory.of(13, -14965523, -15431455, i, string2, null, starsAmount));
        }
        TLRPC.TL_attachMenuBots attachMenuBots = MediaDataController.getInstance(UserConfig.selectedAccount).getAttachMenuBots();
        if (attachMenuBots != null && (arrayList2 = attachMenuBots.bots) != null && !arrayList2.isEmpty()) {
            ArrayList<TLRPC.TL_attachMenuBot> arrayList3 = attachMenuBots.bots;
            int size = arrayList3.size();
            int i2 = 0;
            while (i2 < size) {
                TLRPC.TL_attachMenuBot tL_attachMenuBot = arrayList3.get(i2);
                i2++;
                TLRPC.TL_attachMenuBot tL_attachMenuBot2 = tL_attachMenuBot;
                if (tL_attachMenuBot2.show_in_side_menu && tL_attachMenuBot2.bot_id == 1985737506) {
                    UItem uItemOfBot = SettingCell.Factory.ofBot(tL_attachMenuBot2, -14965523, -15431455, C2665R.drawable.settings_wallet);
                    uItemOfBot.object = tL_attachMenuBot2;
                    arrayList.add(uItemOfBot);
                }
            }
        }
        if (!getMessagesController().premiumFeaturesBlocked()) {
            arrayList.add(SettingCell.Factory.of(15, -765355, -2148011, C2665R.drawable.settings_business, LocaleController.getString(C2665R.string.TelegramBusiness)));
        }
        if (!getMessagesController().premiumPurchaseBlocked()) {
            arrayList.add(SettingCell.Factory.of(16, -816335, -1940716, C2665R.drawable.settings_gift, LocaleController.getString(C2665R.string.SendAGift)));
        }
        if (arrayList.get(arrayList.size() - 1).viewType != 7) {
            arrayList.add(UItem.asShadow(null));
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2665R.string.SettingsHelp)));
        IconBackgroundColors iconBackgroundColors10 = IconBackgroundColors.ORANGE;
        arrayList.add(SettingCell.Factory.of(17, iconBackgroundColors10.top, iconBackgroundColors10.bottom, C2665R.drawable.settings_ask, LocaleController.getString(C2665R.string.AskAQuestion)));
        IconBackgroundColors iconBackgroundColors11 = IconBackgroundColors.BLUE_LIGHT;
        arrayList.add(SettingCell.Factory.of(18, iconBackgroundColors11.top, iconBackgroundColors11.bottom, C2665R.drawable.settings_faq, LocaleController.getString(C2665R.string.TelegramFAQ)));
        IconBackgroundColors iconBackgroundColors12 = IconBackgroundColors.PURPLE;
        arrayList.add(SettingCell.Factory.of(23, iconBackgroundColors12.top, iconBackgroundColors12.bottom, C2665R.drawable.settings_features, LocaleController.getString(C2665R.string.TelegramFeatures)));
        IconBackgroundColors iconBackgroundColors13 = IconBackgroundColors.GREEN;
        arrayList.add(SettingCell.Factory.of(19, iconBackgroundColors13.top, iconBackgroundColors13.bottom, C2665R.drawable.settings_policy, LocaleController.getString(C2665R.string.PrivacyPolicy)));
        if (SharedSettings.experimentalSettingsAllowed.get()) {
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asHeader("Experimental"));
            arrayList.add(SettingCell.Factory.of(24, -765355, -2148011, 0, LocaleController.getString(C2665R.string.RoundVideoSettings)));
        }
        if (BuildVars.LOGS_ENABLED || BuildVars.DEBUG_PRIVATE_VERSION) {
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2665R.string.SettingsDebug)));
            arrayList.add(SettingCell.Factory.of(20, -11154873, -14175180, 0, LocaleController.getString(C2665R.string.DebugSendLogs)));
            arrayList.add(SettingCell.Factory.of(21, -11154873, -14175180, 0, LocaleController.getString(C2665R.string.DebugSendLastLogs)));
            arrayList.add(SettingCell.Factory.of(22, -765355, -2148011, 0, LocaleController.getString(C2665R.string.DebugClearLogs), null, FileLog.getLogDirSize()));
        }
        arrayList.add(UItem.asCustomShadow(this.versionView));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$8(View view) {
        Browser.openUrl(getContext(), getMessagesController().premiumManageSubscriptionUrl);
        getMessagesController().removeSuggestion(0L, "PREMIUM_GRACE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$9() {
        Browser.openUrl(getContext(), LocaleController.getString(C2665R.string.CheckPhoneNumberLearnMoreUrl));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$10(View view) {
        presentFragment(new ActionIntroActivity(3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$11(View view) {
        getMessagesController().removeSuggestion(0L, "VALIDATE_PHONE_NUMBER");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$12(View view) {
        presentFragment(new TwoStepVerificationSetupActivity(8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$13(View view) {
        getMessagesController().removeSuggestion(0L, "VALIDATE_PASSWORD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void presentSettingFragment(BaseFragment baseFragment) {
        LaunchActivity launchActivity;
        if (AndroidUtilities.isTablet() && (launchActivity = LaunchActivity.instance) != null && launchActivity.getRightActionBarLayout() != null) {
            INavigationLayout rightActionBarLayout = LaunchActivity.instance.getRightActionBarLayout();
            if (!rightActionBarLayout.getFragmentStack().isEmpty()) {
                while (rightActionBarLayout.getFragmentStack().size() - 1 > 0) {
                    rightActionBarLayout.removeFragmentFromStack(rightActionBarLayout.getFragmentStack().get(0));
                }
                rightActionBarLayout.closeLastFragment(false);
            }
            rightActionBarLayout.presentFragment(new INavigationLayout.NavigationParams(baseFragment).setNoAnimation(true).forceRightLayout());
            return;
        }
        presentFragment(baseFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        Object obj = uItem.object;
        if (obj instanceof TLRPC.TL_attachMenuBot) {
            final TLRPC.TL_attachMenuBot tL_attachMenuBot = (TLRPC.TL_attachMenuBot) obj;
            if (tL_attachMenuBot.inactive || tL_attachMenuBot.side_menu_disclaimer_needed) {
                WebAppDisclaimerAlert.show(getContext(), new Utilities.Callback() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        this.f$0.lambda$onClick$16(tL_attachMenuBot, (Boolean) obj2);
                    }
                }, null, null);
                return;
            }
            LaunchActivity.showAttachMenuBot(LaunchActivity.instance, this.currentAccount, tL_attachMenuBot, null, true);
        }
        if (uItem.instanceOf(SettingsSearchCell.Factory.class)) {
            Object obj2 = uItem.object;
            if (obj2 instanceof ProfileActivity.SearchAdapter.SearchResult) {
                ((ProfileActivity.SearchAdapter.SearchResult) obj2).open(getParentLayout());
            } else if (obj2 instanceof MessagesController.FaqSearchResult) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.openArticle, this.search.faqWebPage, ((MessagesController.FaqSearchResult) obj2).url);
            }
            Object obj3 = uItem.object;
            if (obj3 != null) {
                this.search.addRecent(obj3);
                return;
            }
            return;
        }
        switch (uItem.id) {
            case -1:
                presentSettingFragment(new MainPreferencesActivity());
                break;
            case 1:
                presentSettingFragment(new UserInfoActivity());
                break;
            case 2:
                presentSettingFragment(new ThemeActivity(0));
                break;
            case 3:
                presentSettingFragment(new PrivacySettingsActivity());
                break;
            case 5:
                presentSettingFragment(new NotificationsSettingsActivity());
                break;
            case 6:
                presentSettingFragment(new DataSettingsActivity());
                break;
            case 7:
                presentSettingFragment(new FiltersSetupActivity());
                break;
            case 8:
                presentSettingFragment(new SessionsActivity(0));
                break;
            case 9:
                presentSettingFragment(new LiteModeSettingsActivity());
                break;
            case 10:
                presentSettingFragment(new LanguageSelectActivity());
                break;
            case 11:
                presentSettingFragment(new PremiumPreviewFragment("settings"));
                break;
            case 12:
                presentSettingFragment(new StarsIntroActivity());
                break;
            case 13:
                presentSettingFragment(new TONIntroActivity());
                break;
            case 15:
                presentSettingFragment(new PremiumPreviewFragment(1, "settings"));
                break;
            case 16:
                UserSelectorBottomSheet.open(0L, BirthdayController.getInstance(UserConfig.selectedAccount).getState());
                break;
            case 17:
                showDialog(AlertsCreator.createSupportAlert(this, this.resourceProvider));
                break;
            case 18:
                Browser.openUrl(getParentActivity(), LocaleController.getString(C2665R.string.TelegramFaqUrl));
                break;
            case 19:
                Browser.openUrl(getParentActivity(), LocaleController.getString(C2665R.string.PrivacyPolicyUrl));
                break;
            case 20:
                ProfileActivity.sendLogs(getParentActivity(), false);
                break;
            case 21:
                ProfileActivity.sendLogs(getParentActivity(), true);
                break;
            case 22:
                FileLog.cleanupLogs();
                UniversalRecyclerView universalRecyclerView = this.listView;
                if (universalRecyclerView != null) {
                    universalRecyclerView.adapter.update(true);
                }
                break;
            case 23:
                if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
                    AccountFrozenAlert.show(this.currentAccount);
                } else {
                    Browser.openUrl(getContext(), LocaleController.getString(C2665R.string.TelegramFeaturesUrl));
                }
                break;
            case 24:
                presentFragment(new RoundVideoSettingsActivity());
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$16(final TLRPC.TL_attachMenuBot tL_attachMenuBot, Boolean bool) {
        TLRPC.TL_messages_toggleBotInAttachMenu tL_messages_toggleBotInAttachMenu = new TLRPC.TL_messages_toggleBotInAttachMenu();
        tL_messages_toggleBotInAttachMenu.bot = MessagesController.getInstance(this.currentAccount).getInputUser(tL_attachMenuBot.bot_id);
        tL_messages_toggleBotInAttachMenu.enabled = true;
        tL_messages_toggleBotInAttachMenu.write_allowed = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_toggleBotInAttachMenu, new RequestDelegate() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onClick$15(tL_attachMenuBot, tLObject, tL_error);
            }
        }, 66);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$15(final TLRPC.TL_attachMenuBot tL_attachMenuBot, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onClick$14(tL_attachMenuBot);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$14(TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        tL_attachMenuBot.side_menu_disclaimer_needed = false;
        tL_attachMenuBot.inactive = false;
        LaunchActivity.showAttachMenuBot(LaunchActivity.instance, this.currentAccount, tL_attachMenuBot, null, true);
        MediaDataController.getInstance(this.currentAccount).updateAttachMenuBotsInCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        final String str;
        Object obj = uItem.object;
        if (obj instanceof TLRPC.TL_attachMenuBot) {
            BotWebViewSheet.deleteBot(this.currentAccount, ((TLRPC.TL_attachMenuBot) obj).bot_id, new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onLongClick$17();
                }
            });
            return true;
        }
        if (uItem.id == -1) {
            presentFragment(new DebugActivity());
            return true;
        }
        if (!uItem.instanceOf(SettingsSearchCell.Factory.class)) {
            return false;
        }
        Object obj2 = uItem.object;
        if (obj2 instanceof ProfileActivity.SearchAdapter.SearchResult) {
            str = ((ProfileActivity.SearchAdapter.SearchResult) obj2).link;
        } else {
            str = obj2 instanceof MessagesController.FaqSearchResult ? ((MessagesController.FaqSearchResult) obj2).url : null;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ItemOptions.makeOptions(this, view).add(C2665R.drawable.msg_link2, LocaleController.getString(C2665R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$18(str);
            }
        }).setScrimViewBackground(this.listView.getClipBackground(view)).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$17() {
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$18(String str) {
        AndroidUtilities.addToClipboard(str);
        BulletinFactory.of(this).createCopyLinkBulletin().show();
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public void updateMainTabsVisibility() {
        MainTabsActivityController mainTabsActivityController = this.mainTabsActivityController;
        if (mainTabsActivityController != null) {
            mainTabsActivityController.setTabsVisible(BottomNavigationBar.visible() && !this.mainTabsHiddenByScroll);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets defaultWindowInsets = AndroidUtilities.getDefaultWindowInsets(windowInsetsCompat, false);
        this.navigationBarHeight = defaultWindowInsets.bottom;
        this.listView.setPadding(0, defaultWindowInsets.top + AndroidUtilities.dp(12.0f), 0, this.navigationBarHeight + this.additionNavigationBarHeight + MainTabsUiHelper.getFloatingTabsPadding(this.hasMainTabs));
        return WindowInsetsCompat.CONSUMED;
    }

    public static class AccountCell extends LinearLayout implements Theme.Colorable {
        private ImageView arrowView;
        private AvatarDrawable avatarDrawable;
        private BackupImageView avatarView;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable botDrawable;
        private TextView counterView;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatusDrawable;
        private final Theme.ResourcesProvider resourcesProvider;
        private SimpleTextView textView;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public AccountCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setOrientation(0);
            this.avatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarView = backupImageView;
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(28.0f));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            NotificationCenter.listenEmojiLoading(simpleTextView);
            this.textView.setTextSize(15);
            this.textView.setTypeface(AndroidUtilities.bold());
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            this.botDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.textView, AndroidUtilities.dp(24.0f), 7);
            this.emojiStatusDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.textView, AndroidUtilities.dp(24.0f), 7);
            this.textView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.SettingsActivity.AccountCell.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    AccountCell.this.botDrawable.attach();
                    AccountCell.this.emojiStatusDrawable.attach();
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    AccountCell.this.botDrawable.detach();
                    AccountCell.this.emojiStatusDrawable.detach();
                }
            });
            TextView textView = new TextView(context);
            this.counterView = textView;
            textView.setPadding(AndroidUtilities.dp(6.66f), 0, AndroidUtilities.dp(6.66f), 0);
            this.counterView.setTextSize(1, 11.0f);
            this.counterView.setTypeface(AndroidUtilities.bold());
            this.counterView.setGravity(17);
            this.counterView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
            this.counterView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
            ImageView imageView = new ImageView(context);
            this.arrowView = imageView;
            imageView.setImageResource(C2665R.drawable.msg_arrowright);
            this.arrowView.setScaleType(ImageView.ScaleType.CENTER);
            this.arrowView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, resourcesProvider), PorterDuff.Mode.SRC_IN));
            boolean z = LocaleController.isRTL;
            SimpleTextView simpleTextView2 = this.textView;
            if (z) {
                simpleTextView2.setGravity(21);
                this.arrowView.setScaleX(-1.0f);
                addView(this.arrowView, LayoutHelper.createLinear(24, 24, 0.0f, 19, 12, 0, 0, 0));
                addView(this.counterView, LayoutHelper.createLinear(-2, 20, 0.0f, 16, 0, 0, 0, 0));
                addView(this.textView, LayoutHelper.createLinear(0, -1, 1.0f, 119, 18, 0, 0, 0));
                addView(this.avatarView, LayoutHelper.createLinear(28, 28, 21, 18, 0, 18, 0));
                return;
            }
            simpleTextView2.setGravity(19);
            addView(this.avatarView, LayoutHelper.createLinear(28, 28, 19, 18, 0, 18, 0));
            addView(this.textView, LayoutHelper.createLinear(0, -1, 1.0f, 119, 0, 0, 18, 0));
            addView(this.counterView, LayoutHelper.createLinear(-2, 20, 0.0f, 16, 0, 0, 0, 0));
            addView(this.arrowView, LayoutHelper.createLinear(24, 24, 0.0f, 21, 0, 0, 12, 0));
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.counterView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
            this.arrowView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            this.emojiStatusDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_profile_verifiedBackground, this.resourcesProvider)));
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0061  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void set(int i) {
            TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
            this.avatarDrawable.setInfo(i, currentUser);
            this.avatarView.getImageReceiver().setCurrentAccount(i);
            this.avatarView.setForUserOrChat(currentUser, this.avatarDrawable);
            this.textView.setText(Emoji.replaceEmoji(UserObject.getUserName(currentUser), this.textView.getPaint().getFontMetricsInt(), false));
            this.botDrawable.setCurrentAccount(i);
            this.emojiStatusDrawable.setCurrentAccount(i);
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.botDrawable;
            int i2 = Theme.key_profile_verifiedBackground;
            swapAnimatedEmojiDrawable.setColor(Integer.valueOf(Theme.getColor(i2, this.resourcesProvider)));
            if (currentUser != null) {
                long j = currentUser.bot_verification_icon;
                if (j != 0) {
                    this.botDrawable.set(j, false);
                } else {
                    this.botDrawable.set((Drawable) null, false);
                }
            }
            Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(currentUser);
            this.emojiStatusDrawable.setColor(Integer.valueOf(Theme.getColor(i2, this.resourcesProvider)));
            if (emojiStatusDocumentId != null) {
                this.emojiStatusDrawable.set(emojiStatusDocumentId.longValue(), false);
            } else if (currentUser != null && currentUser.premium) {
                this.emojiStatusDrawable.set(getContext().getResources().getDrawable(C2665R.drawable.msg_premium_liststar).mutate(), false);
            } else {
                this.emojiStatusDrawable.set((Drawable) null, false);
            }
            this.textView.setLeftDrawable(!this.botDrawable.isEmpty() ? this.botDrawable : null);
            this.textView.setRightDrawable(this.emojiStatusDrawable.isEmpty() ? null : this.emojiStatusDrawable);
            int mainUnreadCount = MessagesStorage.getInstance(i).getMainUnreadCount();
            this.counterView.setVisibility(mainUnreadCount <= 0 ? 8 : 0);
            this.counterView.setText(LocaleController.formatNumber(mainUnreadCount, ','));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory<AccountCell> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public AccountCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new AccountCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((AccountCell) view).set(uItem.intValue);
            }

            public static UItem of(int i, int i2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.intValue = i2;
                return uItemOfFactory;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean equals(UItem uItem, UItem uItem2) {
                return uItem.id == uItem2.id;
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public boolean contentsEquals(UItem uItem, UItem uItem2) {
                return uItem.intValue == uItem2.intValue;
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!this.actionBar.isSearchFieldVisible()) {
            return super.onBackPressed(z);
        }
        if (!z) {
            return false;
        }
        this.actionBar.closeSearchField();
        return false;
    }

    public static class SettingCell extends LinearLayout implements Theme.Colorable {
        private final Background iconBackground;
        private final FrameLayout iconLayout;
        private final ImageView iconView;
        private final boolean mini;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView subtitleView;
        private final LinearLayout textLayout;
        private final TextView titleView;
        private boolean twoLines;
        private final TextView valueView;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public SettingCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            this(context, resourcesProvider, false);
        }

        public SettingCell(Context context, Theme.ResourcesProvider resourcesProvider, boolean z) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            this.mini = z;
            setOrientation(0);
            FrameLayout frameLayout = new FrameLayout(context);
            this.iconLayout = frameLayout;
            Background background = new Background();
            this.iconBackground = background;
            frameLayout.setBackground(background);
            ImageView imageView = new ImageView(context);
            this.iconView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
            LinearLayout linearLayout = new LinearLayout(context);
            this.textLayout = linearLayout;
            linearLayout.setOrientation(1);
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 16.0f);
            textView.setTypeface(AndroidUtilities.regular());
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.subtitleView = textView2;
            textView2.setTextSize(1, 13.0f);
            textView2.setTypeface(AndroidUtilities.regular());
            linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 4.0f, 0.0f, 0.0f));
            TextView textView3 = new TextView(context);
            this.valueView = textView3;
            textView3.setTextSize(1, 16.0f);
            textView3.setTypeface(AndroidUtilities.regular());
            if (LocaleController.isRTL) {
                addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 20, 0, 0, 0));
                addView(linearLayout, LayoutHelper.createLinear(0, -2, 1.0f, 23, 20, 0, z ? 12 : 18, 0));
                addView(frameLayout, LayoutHelper.createLinear(28, 28, 21, 0, 0, z ? 9 : 18, 0));
            } else {
                addView(frameLayout, LayoutHelper.createLinear(28, 28, 19, z ? 9 : 18, 0, 0, 0));
                addView(linearLayout, LayoutHelper.createLinear(0, -2, 1.0f, 23, z ? 12 : 18, 0, 20, 0));
                addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 20, 0));
            }
            updateColors();
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            this.subtitleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider));
            this.valueView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, this.resourcesProvider));
            Background background = this.iconBackground;
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            background.setDrawBorder(resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark());
            boolean zIsCurrentThemeMonet = Theme.isCurrentThemeMonet();
            int color = Theme.getColor(Theme.key_chats_actionIcon);
            ImageView imageView = this.iconView;
            if (!zIsCurrentThemeMonet) {
                color = -1;
            }
            imageView.setColorFilter(color, PorterDuff.Mode.SRC_IN);
            this.iconBackground.updateColors();
        }

        public void set(int i, int i2, int i3, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
            this.iconLayout.setVisibility(i3 != 0 ? 0 : 8);
            this.titleView.setTranslationX(i3 == 0 ? AndroidUtilities.dp(2.0f) : 0.0f);
            this.subtitleView.setTranslationX(i3 == 0 ? AndroidUtilities.dp(2.0f) : 0.0f);
            this.iconBackground.setColor(i, i2);
            this.iconView.setImageResource(i3);
            this.titleView.setText(charSequence);
            TextView textView = this.subtitleView;
            boolean zIsEmpty = TextUtils.isEmpty(charSequence2);
            this.twoLines = !zIsEmpty;
            textView.setVisibility(zIsEmpty ? 8 : 0);
            this.subtitleView.setText(charSequence2);
            setValue(charSequence3);
        }

        public void setValue(CharSequence charSequence) {
            this.valueView.setVisibility(!TextUtils.isEmpty(charSequence) ? 0 : 8);
            this.valueView.setText(charSequence);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(this.mini ? 44.0f : this.twoLines ? 60.0f : 50.0f), TLObject.FLAG_30));
        }

        public static class Background extends Drawable {
            private boolean border;
            private int bottomColor;
            private LinearGradient gradient;
            private final Matrix matrix;
            private final Paint paint = new Paint(1);
            private LinearGradient strokeGradient;
            private final Paint strokePaint;
            private int topColor;

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            public Background() {
                Paint paint = new Paint(1);
                this.strokePaint = paint;
                this.matrix = new Matrix();
                paint.setStyle(Paint.Style.STROKE);
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, AndroidUtilities.dp(28.0f), new int[]{1308622847, 0, 452984831}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
                this.strokeGradient = linearGradient;
                paint.setShader(linearGradient);
            }

            public void setColor(int i, int i2) {
                setColor(i, i2, Theme.isCurrentThemeMonet());
            }

            public void setColor(int i, int i2, boolean z) {
                this.topColor = i;
                this.bottomColor = i2;
                int color = Theme.getColor(Theme.key_chats_actionBackground);
                float fDp = AndroidUtilities.dp(28.0f);
                if (z) {
                    i = color;
                }
                if (z) {
                    i2 = color;
                }
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, fDp, new int[]{i, i2}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                this.gradient = linearGradient;
                this.paint.setShader(linearGradient);
                invalidateSelf();
            }

            public void updateColors() {
                if (this.gradient != null) {
                    setColor(this.topColor, this.bottomColor);
                }
            }

            public void setDrawBorder(boolean z) {
                this.border = z && !Theme.isCurrentThemeMonet() && ExteraConfig.getGlassOutlineStyle() == GlassOutlineStyle.GLARE;
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                float fDp = AndroidUtilities.dp(10.0f);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(getBounds());
                this.matrix.reset();
                this.matrix.postTranslate(rectF.left, rectF.top);
                canvas.drawRoundRect(rectF, fDp, fDp, this.paint);
                if (this.border) {
                    float fDp2 = AndroidUtilities.dp(1.0f);
                    this.strokePaint.setStrokeWidth(fDp2);
                    this.matrix.reset();
                    this.matrix.postTranslate(rectF.left, rectF.top);
                    float f = fDp2 / 2.0f;
                    rectF.inset(f, f);
                    canvas.drawRoundRect(rectF, fDp, fDp, this.strokePaint);
                }
            }
        }

        public static class Factory extends UItem.UItemFactory<SettingCell> {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public SettingCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new SettingCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                long j = uItem.longValue;
                SettingCell settingCell = (SettingCell) view;
                settingCell.set((int) j, (int) (j >>> 32), uItem.iconResId, uItem.text, uItem.subtext, uItem.textValue);
                settingCell.getIconView().setScaleType(uItem.id == -1 ? ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.CENTER);
            }

            public static UItem of(int i, int i2, int i3, int i4, CharSequence charSequence) {
                return of(i, i2, i3, i4, charSequence, null, null);
            }

            public static UItem of(int i, int i2, int i3, int i4, CharSequence charSequence, CharSequence charSequence2) {
                return of(i, i2, i3, i4, charSequence, charSequence2, null);
            }

            public static UItem of(int i, int i2, int i3, int i4, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = i;
                uItemOfFactory.iconResId = i4;
                uItemOfFactory.text = charSequence;
                uItemOfFactory.textValue = charSequence3;
                uItemOfFactory.longValue = (((long) i2) & 4294967295L) | (((long) i3) << 32);
                return uItemOfFactory;
            }

            public static UItem ofBot(TLRPC.TL_attachMenuBot tL_attachMenuBot, int i, int i2, int i3) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = Long.hashCode(tL_attachMenuBot.bot_id);
                uItemOfFactory.object = tL_attachMenuBot;
                uItemOfFactory.iconResId = i3;
                uItemOfFactory.text = tL_attachMenuBot.short_name;
                uItemOfFactory.longValue = (((long) i) & 4294967295L) | (((long) i2) << 32);
                return uItemOfFactory;
            }
        }

        public ImageView getIconView() {
            return this.iconView;
        }
    }

    public static class SuggestionCell extends LinearLayout implements Theme.Colorable {
        private ButtonWithCounterView no;
        private final Theme.ResourcesProvider resourcesProvider;
        private LinkSpanDrawable.LinksTextView textView;
        private SpoilersTextView titleView;
        private ButtonWithCounterView yes;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public SuggestionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setOrientation(1);
            SpoilersTextView spoilersTextView = new SpoilersTextView(context);
            this.titleView = spoilersTextView;
            spoilersTextView.setTextSize(1, 15.0f);
            this.titleView.setTypeface(AndroidUtilities.bold());
            SpoilersTextView spoilersTextView2 = this.titleView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            spoilersTextView2.setTextColor(Theme.getColor(i, resourcesProvider));
            this.titleView.setGravity(17);
            addView(this.titleView, LayoutHelper.createLinear(-1, -2, 55, 32, 20, 32, 0));
            LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView = TextHelper.makeLinkTextView(context, 13.0f, i, false, resourcesProvider);
            this.textView = linksTextViewMakeLinkTextView;
            linksTextViewMakeLinkTextView.setGravity(17);
            addView(this.textView, LayoutHelper.createLinear(-1, -2, 55, 32.0f, 9.33f, 32.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            this.no = new ButtonWithCounterView(context, resourcesProvider).setRound();
            this.yes = new ButtonWithCounterView(context, resourcesProvider).setRound();
            linearLayout.addView(this.no, LayoutHelper.createLinear(0, 42, 1.0f, 112, 0, 0, 12, 0));
            linearLayout.addView(this.yes, LayoutHelper.createLinear(0, 42, 1.0f, 112, 0, 0, 0, 0));
            addView(linearLayout, LayoutHelper.createLinear(-1, -2, 55, 24, 18, 24, 16));
        }

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
            SpoilersTextView spoilersTextView = this.titleView;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            spoilersTextView.setTextColor(Theme.getColor(i, this.resourcesProvider));
            this.textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        }

        public void set(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, View.OnClickListener onClickListener, CharSequence charSequence4, View.OnClickListener onClickListener2) {
            SpoilersTextView spoilersTextView = this.titleView;
            spoilersTextView.setText(Emoji.replaceEmoji(charSequence, spoilersTextView.getPaint().getFontMetricsInt(), false));
            LinkSpanDrawable.LinksTextView linksTextView = this.textView;
            linksTextView.setText(Emoji.replaceEmoji(charSequence2, linksTextView.getPaint().getFontMetricsInt(), false));
            this.no.setVisibility(TextUtils.isEmpty(charSequence3) ? 8 : 0);
            this.no.setText(charSequence3);
            this.no.setOnClickListener(onClickListener);
            this.yes.setText(charSequence4);
            this.yes.setOnClickListener(onClickListener2);
        }

        public static class Factory extends UItem.UItemFactory<SuggestionCell> {
            @Override // org.telegram.ui.Components.UItem.UItemFactory
            /* JADX INFO: renamed from: isClickable */
            public boolean getIsClickableValue() {
                return false;
            }

            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public SuggestionCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new SuggestionCell(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((SuggestionCell) view).set(uItem.text, uItem.subtext, uItem.textValue, uItem.clickCallback, uItem.animatedText, uItem.clickCallback2);
            }

            public static UItem of(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, View.OnClickListener onClickListener, CharSequence charSequence4, View.OnClickListener onClickListener2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.text = charSequence;
                uItemOfFactory.subtext = charSequence2;
                uItemOfFactory.textValue = charSequence3;
                uItemOfFactory.clickCallback = onClickListener;
                uItemOfFactory.animatedText = charSequence4;
                uItemOfFactory.clickCallback2 = onClickListener2;
                return uItemOfFactory;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0209  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void openDebugMenu() {
        String str;
        int i;
        String str2;
        int i2;
        String string;
        String str3;
        String str4;
        String string2;
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourceProvider);
        builder.setTitle(LocaleController.getString(C2665R.string.DebugMenu));
        String string3 = LocaleController.getString(C2665R.string.DebugMenuImportContacts);
        String string4 = LocaleController.getString(C2665R.string.DebugMenuReloadContacts);
        String string5 = LocaleController.getString(C2665R.string.DebugMenuResetContacts);
        String string6 = LocaleController.getString(C2665R.string.DebugMenuResetDialogs);
        if (BuildVars.LOGS_ENABLED) {
            str = "DebugMenuDisableLogs";
            i = C2665R.string.DebugMenuDisableLogs;
        } else {
            str = "DebugMenuEnableLogs";
            i = C2665R.string.DebugMenuEnableLogs;
        }
        String string7 = LocaleController.getString(str, i);
        if (SharedConfig.inAppCamera) {
            str2 = "DebugMenuDisableCamera";
            i2 = C2665R.string.DebugMenuDisableCamera;
        } else {
            str2 = "DebugMenuEnableCamera";
            i2 = C2665R.string.DebugMenuEnableCamera;
        }
        String string8 = LocaleController.getString(str2, i2);
        String string9 = LocaleController.getString("DebugMenuClearMediaCache", C2665R.string.DebugMenuClearMediaCache);
        String string10 = LocaleController.getString(C2665R.string.DebugMenuCallSettings);
        String string11 = BuildVars.DEBUG_PRIVATE_VERSION ? LocaleController.getString("DebugMenuCheckAppUpdate", C2665R.string.DebugMenuCheckAppUpdate) : null;
        String string12 = LocaleController.getString("DebugMenuReadAllDialogs", C2665R.string.DebugMenuReadAllDialogs);
        String str5 = BuildVars.DEBUG_PRIVATE_VERSION ? SharedConfig.disableVoiceAudioEffects ? "Enable voip audio effects" : "Disable voip audio effects" : null;
        String str6 = BuildVars.DEBUG_VERSION ? "Clean app update" : null;
        boolean z = BuildVars.DEBUG_PRIVATE_VERSION;
        String str7 = z ? "Reset suggestions" : null;
        String string13 = z ? LocaleController.getString(C2665R.string.DebugMenuClearWebViewCache) : null;
        String string14 = LocaleController.getString(C2665R.string.DebugMenuClearWebViewCookies);
        String string15 = LocaleController.getString(SharedConfig.debugWebView ? C2665R.string.DebugMenuDisableWebViewDebug : C2665R.string.DebugMenuEnableWebViewDebug);
        String str8 = (AndroidUtilities.isTabletInternal() && BuildVars.DEBUG_PRIVATE_VERSION) ? SharedConfig.forceDisableTabletMode ? "Enable tablet mode" : "Disable tablet mode" : null;
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            string = LocaleController.getString(SharedConfig.isFloatingDebugActive ? C2665R.string.FloatingDebugDisable : C2665R.string.FloatingDebugEnable);
        } else {
            string = null;
        }
        boolean z2 = BuildVars.DEBUG_PRIVATE_VERSION;
        String str9 = z2 ? "Force remove premium suggestions" : null;
        String str10 = z2 ? "Share device info" : null;
        String str11 = z2 ? "Force performance class" : null;
        String str12 = (!z2 || InstantCameraView.allowBigSizeCameraDebug()) ? null : !SharedConfig.bigCameraForRound ? "Force big camera for round" : "Disable big camera for round";
        String string16 = LocaleController.getString(DualCameraView.dualAvailableStatic(getContext()) ? "DebugMenuDualOff" : "DebugMenuDualOn");
        String str13 = BuildVars.DEBUG_VERSION ? SharedConfig.useSurfaceInStories ? "back to TextureView in stories" : "use SurfaceView in stories" : null;
        String str14 = BuildVars.DEBUG_PRIVATE_VERSION ? SharedConfig.photoViewerBlur ? "do not blur in photoviewer" : "blur in photoviewer" : null;
        String str15 = !SharedConfig.payByInvoice ? "Enable Invoice Payment" : "Disable Invoice Payment";
        String str16 = BuildVars.DEBUG_PRIVATE_VERSION ? "Update Attach Bots" : null;
        String str17 = !SharedConfig.isUsingCamera2(this.currentAccount) ? "Use Camera 2 API" : "Use old Camera 1 API";
        String str18 = BuildVars.DEBUG_VERSION ? "Clear Mini Apps Permissions and Files" : null;
        String str19 = BuildVars.DEBUG_PRIVATE_VERSION ? "Clear all login tokens" : null;
        if (SharedConfig.canBlurChat()) {
            str3 = string4;
            if (Build.VERSION.SDK_INT >= 31) {
                str4 = SharedConfig.useNewBlur ? "back to cpu blur" : "use new gpu blur";
            }
            String str20 = !SharedConfig.adaptableColorInBrowser ? "Disabled adaptive browser colors" : "Enable adaptive browser colors";
            String str21 = !SharedConfig.debugVideoQualities ? "Disable video qualities debug" : "Enable video qualities debug";
            String str22 = str4;
            if (Build.VERSION.SDK_INT < 28) {
                string2 = LocaleController.getString(SharedConfig.useSystemBoldFont ? C2665R.string.DebugMenuDontUseSystemBoldFont : C2665R.string.DebugMenuUseSystemBoldFont);
            } else {
                string2 = null;
            }
            builder.setItems(new CharSequence[]{string3, str3, string5, string6, string7, string8, string9, string10, null, string11, string12, str5, str6, str7, string13, string14, string15, str8, string, str9, str10, str11, str12, string16, str13, str14, str15, str16, str17, str18, str19, str22, str20, str21, string2, "Reload app config", SharedConfig.forceForumTabs ? "Force Forum Tabs" : "Do Not Force Forum Tabs", "Make Memory Dump", !BuildVars.DEBUG_VERSION ? SharedConfig.fastWallpaperDisabled ? "enable wallpaper shader" : "disable wallpaper shader" : null, !SharedConfig.frameMetricsEnabled ? "hide frame metrics" : "show frame metrics", !BuildVars.DEBUG_VERSION ? SharedConfig.shadowsInSections ? "disable shadows in settings" : "enable shadows in settings" : null, !BuildVars.DEBUG_VERSION ? SharedConfig.debugViewMetrics ? "disable debug view metrics" : "enable debug view metrics" : null, !SharedSettings.experimentalSettingsAllowed.get() ? "hide experimental settings" : "show experimental settings"}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda13
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    this.f$0.lambda$openDebugMenu$22(dialogInterface, i3);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
            showDialog(builder.create());
        }
        str3 = string4;
        str4 = null;
        if (!SharedConfig.adaptableColorInBrowser) {
        }
        if (!SharedConfig.debugVideoQualities) {
        }
        String str222 = str4;
        if (Build.VERSION.SDK_INT < 28) {
        }
        builder.setItems(new CharSequence[]{string3, str3, string5, string6, string7, string8, string9, string10, null, string11, string12, str5, str6, str7, string13, string14, string15, str8, string, str9, str10, str11, str12, string16, str13, str14, str15, str16, str17, str18, str19, str222, str20, str21, string2, "Reload app config", SharedConfig.forceForumTabs ? "Force Forum Tabs" : "Do Not Force Forum Tabs", "Make Memory Dump", !BuildVars.DEBUG_VERSION ? SharedConfig.fastWallpaperDisabled ? "enable wallpaper shader" : "disable wallpaper shader" : null, !SharedConfig.frameMetricsEnabled ? "hide frame metrics" : "show frame metrics", !BuildVars.DEBUG_VERSION ? SharedConfig.shadowsInSections ? "disable shadows in settings" : "enable shadows in settings" : null, !BuildVars.DEBUG_VERSION ? SharedConfig.debugViewMetrics ? "disable debug view metrics" : "enable debug view metrics" : null, !SharedSettings.experimentalSettingsAllowed.get() ? "hide experimental settings" : "show experimental settings"}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda13
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f$0.lambda$openDebugMenu$22(dialogInterface, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDebugMenu$22(DialogInterface dialogInterface, int i) {
        long j;
        Long l;
        int i2 = 0;
        if (i == 0) {
            getUserConfig().syncContacts = true;
            getUserConfig().saveConfig(false);
            getContactsController().forceImportContacts();
            return;
        }
        long j2 = 0;
        if (i == 1) {
            getContactsController().loadContacts(false, 0L);
            return;
        }
        if (i == 2) {
            getContactsController().resetImportedContacts();
            return;
        }
        if (i == 3) {
            getMessagesController().forceResetDialogs();
            return;
        }
        if (i == 4) {
            BuildVars.LOGS_ENABLED = !BuildVars.LOGS_ENABLED;
            ApplicationLoader.applicationContext.getSharedPreferences("systemConfig", 0).edit().putBoolean("logsEnabled", BuildVars.LOGS_ENABLED).commit();
            this.listView.adapter.update(true);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("app start time = " + ApplicationLoader.startTime);
                try {
                    FileLog.m989d("buildVersion = " + ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0).versionCode);
                    return;
                } catch (Exception e) {
                    FileLog.m992e(e);
                    return;
                }
            }
            return;
        }
        if (i == 5) {
            SharedConfig.toggleInappCamera();
            return;
        }
        if (i == 6) {
            getMessagesStorage().clearSentMedia();
            SharedConfig.setNoSoundHintShowed(false);
            MessagesController.getGlobalMainSettings().edit().remove("archivehint").remove("proximityhint").remove("archivehint_l").remove("searchpostsnew").remove("speedhint").remove("gifhint").remove("reminderhint").remove("soundHint").remove("themehint").remove("bganimationhint").remove("filterhint").remove("n_0").remove("storyprvhint").remove("storyhint").remove("storyhint2").remove("storydualhint").remove("storysvddualhint").remove("stories_camera").remove("dualcam").remove("dualmatrix").remove("dual_available").remove("archivehint").remove("askNotificationsAfter").remove("askNotificationsDuration").remove("viewoncehint").remove("voicepausehint").remove("taptostorysoundhint").remove("nothanos").remove("voiceoncehint").remove("savedhint").remove("savedsearchhint").remove("savedsearchtaghint").remove("newppsms").remove("monetizationadshint").remove("seekSpeedHintShowed").remove("unsupport_video/av01").remove("statusgiftpage").remove("multistorieshint").remove("trimvoicehint").remove("taptostoryhighlighthint").remove("proxycheckstatusip").remove("callmiconstart").remove("showchattagsinfo").remove("language_showed2").remove("aihintshown").remove("savedmsgschatshint").apply();
            HintsController.resetAll();
            SharedPrefsHelper.cleanupAccount(this.currentAccount);
            MessagesController.getEmojiSettings(this.currentAccount).edit().remove("featured_hidden").remove("emoji_featured_hidden").commit();
            MessagesController.getGlobalNotificationsSettings().edit().remove("disable_sharing_learn").remove("askedAboutFSILockscreen").apply();
            SharedConfig.textSelectionHintShows = 0;
            SharedConfig.lockRecordAudioVideoHint = 0;
            SharedConfig.stickersReorderingHintUsed = false;
            SharedConfig.forwardingOptionsHintShown = false;
            SharedConfig.replyingOptionsHintShown = false;
            SharedConfig.messageSeenHintCount = 3;
            SharedConfig.emojiInteractionsHintCount = 3;
            SharedConfig.dayNightThemeSwitchHintCount = 3;
            SharedConfig.fastScrollHintCount = 3;
            SharedConfig.stealthModeSendMessageConfirm = 2;
            SharedConfig.updateStealthModeSendMessageConfirm(2);
            SharedConfig.setStoriesReactionsLongPressHintUsed(false);
            SharedConfig.setStoriesIntroShown(false);
            SharedConfig.setMultipleReactionsPromoShowed(false);
            ChatThemeController.getInstance(this.currentAccount).clearCache();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, new Object[0]);
            RestrictedLanguagesSelectActivity.cleanup();
            PersistColorPalette.getInstance(this.currentAccount).cleanup();
            SharedPreferences mainSettings = getMessagesController().getMainSettings();
            SharedPreferences.Editor editorEdit = mainSettings.edit();
            editorEdit.remove("peerColors").remove("profilePeerColors").remove("boostingappearance").remove("bizbothint").remove("movecaptionhint");
            for (String str : mainSettings.getAll().keySet()) {
                if (str.contains("show_gift_for_") || str.contains("bdayhint_") || str.contains("bdayanim_") || str.startsWith("ask_paid_message_") || str.startsWith("topicssidetabs")) {
                    editorEdit.remove(str);
                }
            }
            editorEdit.apply();
            SharedPreferences.Editor editorEdit2 = MessagesController.getNotificationsSettings(this.currentAccount).edit();
            for (String str2 : MessagesController.getNotificationsSettings(this.currentAccount).getAll().keySet()) {
                if (str2.startsWith("dialog_bar_botver")) {
                    editorEdit2.remove(str2);
                }
            }
            editorEdit2.apply();
            return;
        }
        if (i == 7) {
            VoIPHelper.showCallDebugSettings(getParentActivity());
            return;
        }
        if (i == 8) {
            SharedConfig.toggleRoundCamera16to9();
            return;
        }
        if (i == 9) {
            ((LaunchActivity) getParentActivity()).checkAppUpdate(true, null);
            return;
        }
        if (i == 10) {
            getMessagesStorage().readAllDialogs(-1);
            return;
        }
        if (i == 11) {
            SharedConfig.toggleDisableVoiceAudioEffects();
            return;
        }
        if (i == 12) {
            SharedConfig.pendingAppUpdate = null;
            SharedConfig.saveConfig();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
            return;
        }
        if (i == 13) {
            Set<String> set = getMessagesController().pendingSuggestions;
            set.add("VALIDATE_PHONE_NUMBER");
            set.add("VALIDATE_PASSWORD");
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, new Object[0]);
            return;
        }
        try {
            if (i == 14) {
                ApplicationLoader.applicationContext.deleteDatabase("webview.db");
                ApplicationLoader.applicationContext.deleteDatabase("webviewCache.db");
                WebStorage.getInstance().deleteAllData();
                WebView webView = new WebView(ApplicationLoader.applicationContext);
                webView.clearHistory();
                webView.destroy();
                return;
            }
            if (i == 15) {
                CookieManager cookieManager = CookieManager.getInstance();
                cookieManager.removeAllCookies(null);
                cookieManager.flush();
                return;
            }
            if (i == 16) {
                SharedConfig.toggleDebugWebView();
                Toast.makeText(getParentActivity(), LocaleController.getString(SharedConfig.debugWebView ? C2665R.string.DebugMenuWebViewDebugEnabled : C2665R.string.DebugMenuWebViewDebugDisabled), 0).show();
                return;
            }
            if (i == 17) {
                SharedConfig.toggleForceDisableTabletMode();
                Activity parentActivity = getParentActivity();
                if (parentActivity != null) {
                    Intent launchIntentForPackage = parentActivity.getPackageManager().getLaunchIntentForPackage(parentActivity.getPackageName());
                    parentActivity.finishAffinity();
                    parentActivity.startActivity(launchIntentForPackage);
                }
                System.exit(0);
                return;
            }
            if (i == 18) {
                FloatingDebugController.setActive((LaunchActivity) getParentActivity(), !FloatingDebugController.isActive());
                return;
            }
            if (i == 19) {
                getMessagesController().loadAppConfig();
                TLRPC.TL_help_dismissSuggestion tL_help_dismissSuggestion = new TLRPC.TL_help_dismissSuggestion();
                tL_help_dismissSuggestion.suggestion = "VALIDATE_PHONE_NUMBER";
                tL_help_dismissSuggestion.peer = new TLRPC.TL_inputPeerEmpty();
                getConnectionsManager().sendRequest(tL_help_dismissSuggestion, new RequestDelegate() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda27
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$openDebugMenu$20(tLObject, tL_error);
                    }
                });
                return;
            }
            if (i != 20) {
                if (i == 21) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourceProvider);
                    builder.setTitle("Force performance class");
                    int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
                    final int iMeasureDevicePerformanceClass = SharedConfig.measureDevicePerformanceClass();
                    String str3 = devicePerformanceClass == 2 ? "**HIGH**" : "HIGH";
                    String str4 = _UrlKt.FRAGMENT_ENCODE_SET;
                    SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(str3.concat(iMeasureDevicePerformanceClass == 2 ? " (measured)" : _UrlKt.FRAGMENT_ENCODE_SET));
                    SpannableStringBuilder spannableStringBuilderReplaceTags2 = AndroidUtilities.replaceTags((devicePerformanceClass == 1 ? "**AVERAGE**" : "AVERAGE").concat(iMeasureDevicePerformanceClass == 1 ? " (measured)" : _UrlKt.FRAGMENT_ENCODE_SET));
                    String str5 = devicePerformanceClass == 0 ? "**LOW**" : "LOW";
                    if (iMeasureDevicePerformanceClass == 0) {
                        str4 = " (measured)";
                    }
                    builder.setItems(new CharSequence[]{spannableStringBuilderReplaceTags, spannableStringBuilderReplaceTags2, AndroidUtilities.replaceTags(str5.concat(str4))}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda28
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface2, int i3) {
                            SettingsActivity.$r8$lambda$9Q7wC5GPsCEq5Sw13kZIXy2dYac(iMeasureDevicePerformanceClass, dialogInterface2, i3);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", C2665R.string.Cancel), null);
                    builder.show();
                    return;
                }
                if (i == 22) {
                    SharedConfig.toggleRoundCamera();
                    return;
                }
                if (i == 23) {
                    boolean zDualAvailableStatic = DualCameraView.dualAvailableStatic(getContext());
                    MessagesController.getGlobalMainSettings().edit().putBoolean("dual_available", !zDualAvailableStatic).apply();
                    Toast.makeText(getParentActivity(), LocaleController.getString(!zDualAvailableStatic ? C2665R.string.DebugMenuDualOnToast : C2665R.string.DebugMenuDualOffToast), 0).show();
                    return;
                }
                if (i == 24) {
                    SharedConfig.toggleSurfaceInStories();
                    while (i2 < getParentLayout().getFragmentStack().size()) {
                        getParentLayout().getFragmentStack().get(i2).clearSheets();
                        i2++;
                    }
                    return;
                }
                if (i == 25) {
                    SharedConfig.togglePhotoViewerBlur();
                    return;
                }
                if (i == 26) {
                    SharedConfig.togglePaymentByInvoice();
                    return;
                }
                if (i == 27) {
                    getMediaDataController().loadAttachMenuBots(false, true);
                    return;
                }
                if (i == 28) {
                    SharedConfig.toggleUseCamera2(this.currentAccount);
                    return;
                }
                if (i == 29) {
                    BotBiometry.clear();
                    BotLocation.clear();
                    BotDownloads.clear();
                    SetupEmojiStatusSheet.clear();
                    return;
                }
                if (i == 30) {
                    AuthTokensHelper.clearLogInTokens();
                    return;
                }
                if (i == 31) {
                    SharedConfig.toggleUseNewBlur();
                    return;
                }
                if (i == 32) {
                    SharedConfig.toggleBrowserAdaptableColors();
                    return;
                }
                if (i == 33) {
                    SharedConfig.toggleDebugVideoQualities();
                    return;
                }
                if (i == 34) {
                    SharedConfig.toggleUseSystemBoldFont();
                    return;
                }
                if (i == 35) {
                    MessagesController.getInstance(this.currentAccount).loadAppConfig(true);
                    return;
                }
                if (i == 36) {
                    SharedConfig.toggleForceForumTabs();
                    return;
                }
                if (i == 37) {
                    FileLog.getInstance().dumpMemory(true);
                    return;
                }
                if (i == 38) {
                    SharedConfig.toggleFastWallpaperDisabled();
                    return;
                }
                if (i == 39) {
                    SharedConfig.toggleFrameMetricsEnabled();
                    LaunchActivity launchActivity = LaunchActivity.instance;
                    if (launchActivity != null) {
                        launchActivity.checkFrameMetrics();
                        return;
                    }
                    return;
                }
                if (i == 40) {
                    SharedPreferences.Editor editorEdit3 = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit();
                    boolean z = !SharedConfig.shadowsInSections;
                    SharedConfig.shadowsInSections = z;
                    editorEdit3.putBoolean("shadowsInSections", z).apply();
                    return;
                }
                if (i == 41) {
                    SharedPreferences.Editor editorEdit4 = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit();
                    boolean z2 = !SharedConfig.debugViewMetrics;
                    SharedConfig.debugViewMetrics = z2;
                    editorEdit4.putBoolean("debugViewMetrics", z2).apply();
                    return;
                }
                if (i == 42) {
                    SharedSettings.experimentalSettingsAllowed.toggle();
                    this.listView.adapter.update(true);
                    return;
                }
                return;
            }
            int i3 = ConnectionsManager.CPU_COUNT;
            int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
            StringBuilder sb = new StringBuilder();
            long jLongValue = 0;
            long j3 = 0;
            long jLongValue2 = 0;
            long j4 = 0;
            long jLongValue3 = 0;
            long j5 = 0;
            long jLongValue4 = 0;
            long j6 = 0;
            while (i2 < i3) {
                long j7 = j2;
                Long sysInfoLong = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_min_freq");
                Long sysInfoLong2 = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_cur_freq");
                Long sysInfoLong3 = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_max_freq");
                Long sysInfoLong4 = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i2 + "/cpu_capacity");
                sb.append("#");
                sb.append(i2);
                sb.append(" ");
                int i4 = i2;
                if (sysInfoLong != null) {
                    sb.append("min=");
                    l = sysInfoLong3;
                    sb.append(sysInfoLong.longValue() / 1000);
                    sb.append(" ");
                    jLongValue += sysInfoLong.longValue() / 1000;
                    j3++;
                } else {
                    l = sysInfoLong3;
                }
                if (sysInfoLong2 != null) {
                    sb.append("cur=");
                    sb.append(sysInfoLong2.longValue() / 1000);
                    sb.append(" ");
                    jLongValue2 += sysInfoLong2.longValue() / 1000;
                    j4++;
                }
                if (l != null) {
                    sb.append("max=");
                    sb.append(l.longValue() / 1000);
                    sb.append(" ");
                    jLongValue3 += l.longValue() / 1000;
                    j5++;
                }
                if (sysInfoLong4 != null) {
                    sb.append("cpc=");
                    sb.append(sysInfoLong4);
                    sb.append(" ");
                    jLongValue4 += sysInfoLong4.longValue();
                    j6++;
                }
                sb.append("\n");
                i2 = i4 + 1;
                j2 = j7;
            }
            long j8 = j2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Build.MANUFACTURER);
            sb2.append(", ");
            sb2.append(Build.MODEL);
            sb2.append(" (");
            sb2.append(Build.PRODUCT);
            sb2.append(", ");
            sb2.append(Build.DEVICE);
            sb2.append(")  (android ");
            int i5 = Build.VERSION.SDK_INT;
            sb2.append(i5);
            sb2.append(")\n");
            if (i5 >= 31) {
                sb2.append("SoC: ");
                sb2.append(Build.SOC_MANUFACTURER);
                sb2.append(", ");
                sb2.append(Build.SOC_MODEL);
                sb2.append("\n");
            }
            String sysInfoString = AndroidUtilities.getSysInfoString("/sys/kernel/gpu/gpu_model");
            if (sysInfoString != null) {
                sb2.append("GPU: ");
                sb2.append(sysInfoString);
                Long sysInfoLong5 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_min_clock");
                Long sysInfoLong6 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_mm_min_clock");
                Long sysInfoLong7 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_max_clock");
                if (sysInfoLong5 != null) {
                    sb2.append(", min=");
                    j = jLongValue;
                    sb2.append(sysInfoLong5.longValue() / 1000);
                } else {
                    j = jLongValue;
                }
                if (sysInfoLong6 != null) {
                    sb2.append(", mmin=");
                    sb2.append(sysInfoLong6.longValue() / 1000);
                }
                if (sysInfoLong7 != null) {
                    sb2.append(", max=");
                    sb2.append(sysInfoLong7.longValue() / 1000);
                }
                sb2.append("\n");
            } else {
                j = jLongValue;
            }
            ConfigurationInfo deviceConfigurationInfo = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getDeviceConfigurationInfo();
            sb2.append("GLES Version: ");
            sb2.append(deviceConfigurationInfo.getGlEsVersion());
            sb2.append("\nMemory: class=");
            sb2.append(AndroidUtilities.formatFileSize(((long) memoryClass) * 1048576));
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryInfo(memoryInfo);
            sb2.append(", total=");
            sb2.append(AndroidUtilities.formatFileSize(memoryInfo.totalMem));
            sb2.append(", avail=");
            sb2.append(AndroidUtilities.formatFileSize(memoryInfo.availMem));
            sb2.append(", low?=");
            sb2.append(memoryInfo.lowMemory);
            sb2.append(" (threshold=");
            sb2.append(AndroidUtilities.formatFileSize(memoryInfo.threshold));
            sb2.append(")\nCurrent class: ");
            sb2.append(SharedConfig.performanceClassName(SharedConfig.getDevicePerformanceClass()));
            sb2.append(", measured: ");
            sb2.append(SharedConfig.performanceClassName(SharedConfig.measureDevicePerformanceClass()));
            if (i5 >= 31) {
                sb2.append(", suggest=");
                sb2.append(Build.VERSION.MEDIA_PERFORMANCE_CLASS);
            }
            sb2.append("\n");
            sb2.append(i3);
            sb2.append(" CPUs");
            if (j3 > j8) {
                sb2.append(", avgMinFreq=");
                sb2.append(j / j3);
            }
            if (j4 > j8) {
                sb2.append(", avgCurFreq=");
                sb2.append(jLongValue2 / j4);
            }
            if (j5 > j8) {
                sb2.append(", avgMaxFreq=");
                sb2.append(jLongValue3 / j5);
            }
            if (j6 > j8) {
                sb2.append(", avgCapacity=");
                sb2.append(jLongValue4 / j6);
            }
            sb2.append("\n");
            sb2.append((CharSequence) sb);
            listCodecs(MediaController.VIDEO_MIME_TYPE, sb2);
            listCodecs("video/hevc", sb2);
            listCodecs("video/x-vnd.on2.vp8", sb2);
            listCodecs("video/x-vnd.on2.vp9", sb2);
            showDialog(new DialogC57518(getParentActivity(), null, sb2.toString(), false, null, false));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDebugMenu$20(TLObject tLObject, TLRPC.TL_error tL_error) {
        TLRPC.TL_help_dismissSuggestion tL_help_dismissSuggestion = new TLRPC.TL_help_dismissSuggestion();
        tL_help_dismissSuggestion.suggestion = "VALIDATE_PASSWORD";
        tL_help_dismissSuggestion.peer = new TLRPC.TL_inputPeerEmpty();
        getConnectionsManager().sendRequest(tL_help_dismissSuggestion, new RequestDelegate() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda30
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                this.f$0.lambda$openDebugMenu$19(tLObject2, tL_error2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDebugMenu$19(TLObject tLObject, TLRPC.TL_error tL_error) {
        getMessagesController().loadAppConfig();
    }

    /* JADX INFO: renamed from: org.telegram.ui.SettingsActivity$8 */
    public class DialogC57518 extends ShareAlert {
        public DialogC57518(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2) {
            super(context, arrayList, str, z, str2, z2);
        }

        @Override // org.telegram.ui.Components.ShareAlert
        public void onSend(final LongSparseArray<TLRPC.Dialog> longSparseArray, final int i, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SettingsActivity$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSend$0(longSparseArray, i);
                    }
                }, 250L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSend$0(LongSparseArray longSparseArray, int i) {
            BulletinFactory.createInviteSentBulletin(SettingsActivity.this.getParentActivity(), SettingsActivity.this.contentView, longSparseArray.size(), longSparseArray.size() == 1 ? ((TLRPC.Dialog) longSparseArray.valueAt(0)).id : 0L, i, getThemedColor(Theme.key_undo_background), getThemedColor(Theme.key_undo_infoColor)).show();
        }
    }

    public static /* synthetic */ void $r8$lambda$9Q7wC5GPsCEq5Sw13kZIXy2dYac(int i, DialogInterface dialogInterface, int i2) {
        int i3 = 2 - i2;
        if (i3 == i) {
            SharedConfig.overrideDevicePerformanceClass(-1);
        } else {
            SharedConfig.overrideDevicePerformanceClass(i3);
        }
    }

    private void listCodecs(String str, StringBuilder sb) {
        String[] supportedTypes;
        try {
            int codecCount = MediaCodecList.getCodecCount();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (codecInfoAt != null && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= supportedTypes.length) {
                            break;
                        } else if (supportedTypes[i2].equals(str)) {
                            (codecInfoAt.isEncoder() ? arrayList2 : arrayList).add(Integer.valueOf(i));
                        } else {
                            i2++;
                        }
                    }
                }
            }
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                return;
            }
            sb.append("\n");
            sb.append(arrayList.size());
            sb.append("+");
            sb.append(arrayList2.size());
            sb.append(" ");
            sb.append(str.substring(6));
            sb.append(" codecs:\n");
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (i3 > 0) {
                    sb.append("\n");
                }
                MediaCodecInfo codecInfoAt2 = MediaCodecList.getCodecInfoAt(((Integer) arrayList.get(i3)).intValue());
                sb.append("{d} ");
                sb.append(codecInfoAt2.getName());
                sb.append(" (");
                if (Build.VERSION.SDK_INT >= 29) {
                    if (codecInfoAt2.isHardwareAccelerated()) {
                        sb.append("gpu");
                    }
                    if (codecInfoAt2.isSoftwareOnly()) {
                        sb.append("cpu");
                    }
                    if (codecInfoAt2.isVendor()) {
                        sb.append(", v");
                    }
                }
                MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt2.getCapabilitiesForType(str);
                sb.append("; mi=");
                sb.append(capabilitiesForType.getMaxSupportedInstances());
                sb.append(")");
            }
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                if (i4 > 0 || !arrayList.isEmpty()) {
                    sb.append("\n");
                }
                MediaCodecInfo codecInfoAt3 = MediaCodecList.getCodecInfoAt(((Integer) arrayList2.get(i4)).intValue());
                sb.append("{e} ");
                sb.append(codecInfoAt3.getName());
                sb.append(" (");
                if (Build.VERSION.SDK_INT >= 29) {
                    if (codecInfoAt3.isHardwareAccelerated()) {
                        sb.append("gpu");
                    }
                    if (codecInfoAt3.isSoftwareOnly()) {
                        sb.append("cpu");
                    }
                    if (codecInfoAt3.isVendor()) {
                        sb.append(", v");
                    }
                }
                MediaCodecInfo.CodecCapabilities capabilitiesForType2 = codecInfoAt3.getCapabilitiesForType(str);
                sb.append("; mi=");
                sb.append(capabilitiesForType2.getMaxSupportedInstances());
                sb.append(")");
            }
            sb.append("\n");
        } catch (Exception unused) {
        }
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC.InputFile inputFile, final TLRPC.InputFile inputFile2, final double d, final String str, final TLRPC.PhotoSize photoSize, final TLRPC.PhotoSize photoSize2, boolean z, final TLRPC.VideoSize videoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didUploadPhoto$25(inputFile, inputFile2, videoSize, d, str, photoSize2, photoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$24(final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didUploadPhoto$23(tL_error, tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$23(TLRPC.TL_error tL_error, TLObject tLObject, String str) {
        this.avatarUploadingRequest = -1;
        if (tL_error == null) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId()));
            if (user == null) {
                user = getUserConfig().getCurrentUser();
                if (user == null) {
                    return;
                } else {
                    getMessagesController().putUser(user, false);
                }
            } else {
                getUserConfig().setCurrentUser(user);
            }
            TLRPC.TL_photos_photo tL_photos_photo = (TLRPC.TL_photos_photo) tLObject;
            ArrayList<TLRPC.PhotoSize> arrayList = tL_photos_photo.photo.sizes;
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 150);
            TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, 800);
            TLRPC.VideoSize closestVideoSizeWithSize = tL_photos_photo.photo.video_sizes.isEmpty() ? null : FileLoader.getClosestVideoSizeWithSize(tL_photos_photo.photo.video_sizes, 1000);
            TLRPC.TL_userProfilePhoto tL_userProfilePhoto = new TLRPC.TL_userProfilePhoto();
            user.photo = tL_userProfilePhoto;
            tL_userProfilePhoto.photo_id = tL_photos_photo.photo.id;
            if (closestPhotoSizeWithSize != null) {
                tL_userProfilePhoto.photo_small = closestPhotoSizeWithSize.location;
            }
            if (closestPhotoSizeWithSize2 != null) {
                tL_userProfilePhoto.photo_big = closestPhotoSizeWithSize2.location;
            }
            if (closestPhotoSizeWithSize != null && this.avatar != null) {
                FileLoader.getInstance(this.currentAccount).getPathToAttach(this.avatar, true).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true));
                ImageLoader.getInstance().replaceImageInCache(this.avatar.volume_id + "_" + this.avatar.local_id + "@90_90", closestPhotoSizeWithSize.location.volume_id + "_" + closestPhotoSizeWithSize.location.local_id + "@90_90", ImageLocation.getForUserOrChat(this.currentAccount, user, 1), false);
            }
            if (closestVideoSizeWithSize != null && str != null) {
                new File(str).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestVideoSizeWithSize, "mp4", true));
            } else if (closestPhotoSizeWithSize2 != null && this.avatarBig != null) {
                FileLoader.getInstance(this.currentAccount).getPathToAttach(this.avatarBig, true).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize2, true));
            }
            getMessagesController().getDialogPhotos(user.id).addPhotoAtStart(tL_photos_photo.photo);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(user);
            getMessagesStorage().putUsersAndChats(arrayList2, null, false, true);
            TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
            if (userFull != null) {
                userFull.profile_photo = tL_photos_photo.photo;
                getMessagesStorage().updateUserInfo(userFull, false);
            }
            setInfo(user);
        }
        this.avatar = null;
        this.avatarBig = null;
        showAvatarProgress(false, true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_ALL));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        getUserConfig().saveConfig(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$25(TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, TLRPC.VideoSize videoSize, double d, final String str, TLRPC.PhotoSize photoSize, TLRPC.PhotoSize photoSize2) {
        if (inputFile != null || inputFile2 != null || videoSize != null) {
            if (this.avatar == null) {
                return;
            }
            TLRPC.TL_photos_uploadProfilePhoto tL_photos_uploadProfilePhoto = new TLRPC.TL_photos_uploadProfilePhoto();
            if (inputFile != null) {
                tL_photos_uploadProfilePhoto.file = inputFile;
                tL_photos_uploadProfilePhoto.flags |= 1;
            }
            if (inputFile2 != null) {
                tL_photos_uploadProfilePhoto.video = inputFile2;
                int i = tL_photos_uploadProfilePhoto.flags;
                tL_photos_uploadProfilePhoto.video_start_ts = d;
                tL_photos_uploadProfilePhoto.flags = i | 6;
            }
            if (videoSize != null) {
                tL_photos_uploadProfilePhoto.video_emoji_markup = videoSize;
                tL_photos_uploadProfilePhoto.flags |= 16;
            }
            this.avatarUploadingRequest = getConnectionsManager().sendRequest(tL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.SettingsActivity$$ExternalSyntheticLambda23
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$didUploadPhoto$24(str, tLObject, tL_error);
                }
            });
        } else {
            TLRPC.FileLocation fileLocation = photoSize.location;
            this.avatar = fileLocation;
            this.avatarBig = photoSize2.location;
            this.avatarView.setImage(ImageLocation.getForLocal(fileLocation), "90_90", this.avatarDrawable, (Object) null);
            showAvatarProgress(true, false);
        }
        this.actionBar.createMenu().requestLayout();
    }

    private void showAvatarProgress(final boolean z, boolean z2) {
        if (this.avatarProgressView == null) {
            return;
        }
        AnimatorSet animatorSet = this.avatarAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.avatarAnimation = null;
        }
        if (z2) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.avatarAnimation = animatorSet2;
            RadialProgressView radialProgressView = this.avatarProgressView;
            if (z) {
                radialProgressView.setVisibility(0);
                this.avatarAnimation.playTogether(ObjectAnimator.ofFloat(this.avatarProgressView, (Property<RadialProgressView, Float>) View.ALPHA, 1.0f));
            } else {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(radialProgressView, (Property<RadialProgressView, Float>) View.ALPHA, 0.0f));
            }
            this.avatarAnimation.setDuration(180L);
            this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SettingsActivity.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (SettingsActivity.this.avatarAnimation == null || SettingsActivity.this.avatarProgressView == null) {
                        return;
                    }
                    if (!z) {
                        SettingsActivity.this.avatarProgressView.setVisibility(4);
                    }
                    SettingsActivity.this.avatarAnimation = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    SettingsActivity.this.avatarAnimation = null;
                }
            });
            this.avatarAnimation.start();
            return;
        }
        RadialProgressView radialProgressView2 = this.avatarProgressView;
        if (z) {
            radialProgressView2.setAlpha(1.0f);
            this.avatarProgressView.setVisibility(0);
        } else {
            radialProgressView2.setAlpha(0.0f);
            this.avatarProgressView.setVisibility(4);
        }
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void onUploadProgressChanged(float f) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(f);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z, boolean z2) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(0.0f);
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            checkUi_menuItems();
        }
    }

    private void checkUi_menuItems() {
        FragmentFloatingButton.setAnimatedVisibility(this.otherItem, 1.0f - this.animatorSearchPageVisible.getFloatValue());
        FragmentFloatingButton.setAnimatedVisibility(this.actionBar.getBackButton(), AndroidUtilities.lerp(this.hasMainTabs ? 0.0f : 1.0f, 1.0f, this.animatorSearchPageVisible.getFloatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_InvalidateBlur() {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(48.0f);
        this.iBlur3PositionActionBar.set(0.0f, -iDp, this.fragmentView.getMeasuredWidth(), this.actionBar.getMeasuredHeight() + iDp);
        MainTabsUiHelper.setBlurBounds(this.iBlur3PositionMainTabs, this.fragmentView, this.navigationBarHeight);
        this.iBlur3PositionMainTabs.inset(0.0f, LiteMode.isEnabled(262144) ? 0.0f : -AndroidUtilities.dp(48.0f));
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3Positions, this.hasMainTabs ? 2 : 1);
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, this.fragmentView.getMeasuredWidth(), this.fragmentView.getMeasuredHeight());
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public BlurredBackgroundSourceRenderNode getGlassSource() {
        return this.iBlur3SourceGlass;
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public void onParentScrollToTop() {
        this.listView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return !this.animatorSearchPageVisible.getValue();
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public boolean canParentTabsSlide(MotionEvent motionEvent, boolean z) {
        return isSwipeBackEnabled(motionEvent);
    }
}
