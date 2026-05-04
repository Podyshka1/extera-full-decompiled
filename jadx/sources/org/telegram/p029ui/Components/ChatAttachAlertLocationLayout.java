package org.telegram.p029ui.Components;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.media.ExifInterface;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.OvershootInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.IMapsProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenu;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Adapters.BaseLocationAdapter;
import org.telegram.p029ui.Adapters.LocationActivityAdapter;
import org.telegram.p029ui.Adapters.LocationActivitySearchAdapter;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.LocationCell;
import org.telegram.p029ui.Cells.LocationDirectionCell;
import org.telegram.p029ui.Cells.LocationLoadingCell;
import org.telegram.p029ui.Cells.LocationPoweredCell;
import org.telegram.p029ui.Cells.SendLocationCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.Cells.SharingLiveLocationCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachAlertLocationLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate {
    private LocationActivityAdapter adapter;
    private AnimatorSet animatorSet;
    private boolean askedForLocation;
    private Paint backgroundPaint;
    private Bitmap[] bitmapCache;
    private boolean checkBackgroundPermission;
    private boolean checkGpsEnabled;
    private boolean checkPermission;
    private int clipSize;
    private boolean currentMapStyleDark;
    private LocationActivityDelegate delegate;
    private long dialogId;
    private boolean doNotDrawMap;
    private ImageView emptyImageView;
    private TextView emptySubtitleTextView;
    private TextView emptyTitleTextView;
    private LinearLayout emptyView;
    private boolean first;
    private boolean firstFocus;
    private boolean firstWas;
    private IMapsProvider.ICameraUpdate forceUpdate;
    private boolean ignoreIdleCamera;
    private boolean isFirstLocation;
    private IMapsProvider.IMarker lastPressedMarker;
    private FrameLayout lastPressedMarkerView;
    private VenueLocation lastPressedVenue;
    private FillLastLinearLayoutManager layoutManager;
    private RecyclerListView listView;
    private View loadingMapView;
    private ImageView locationButton;
    private boolean locationDenied;
    private int locationType;
    private IMapsProvider.IMap map;
    private int mapHeight;
    private ActionBarMenuItem mapTypeButton;
    private IMapsProvider.IMapView mapView;
    private FrameLayout mapViewClip;
    private boolean mapsInitialized;
    private ImageView markerImageView;
    private int markerTop;
    private Location myLocation;
    private int nonClipSize;
    private boolean onResumeCalled;
    private ActionBarMenuItem otherItem;
    private int overScrollHeight;
    private MapOverlayView overlayView;
    private ArrayList placeMarkers;
    private boolean scrolling;
    private LocationActivitySearchAdapter searchAdapter;
    private SearchButton searchAreaButton;
    private boolean searchInProgress;
    private ActionBarMenuItem searchItem;
    private RecyclerListView searchListView;
    private boolean searchWas;
    private boolean searchedForCustomLocations;
    private boolean searching;
    private Location userLocation;
    private boolean userLocationMoved;
    private float yOffset;

    public interface LocationActivityDelegate {
        void didSelectLocation(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j);
    }

    public static class VenueLocation {
        public IMapsProvider.IMarker marker;
        public int num;
        public TLRPC.TL_messageMediaVenue venue;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    private static class SearchButton extends TextView {
        private float additionanTranslationY;
        private float currentTranslationY;

        public SearchButton(Context context) {
            super(context);
        }

        @Override // android.view.View
        public float getTranslationX() {
            return this.additionanTranslationY;
        }

        @Override // android.view.View
        public void setTranslationX(float f) {
            this.additionanTranslationY = f;
            updateTranslationY();
        }

        public void setTranslation(float f) {
            this.currentTranslationY = f;
            updateTranslationY();
        }

        private void updateTranslationY() {
            setTranslationY(this.currentTranslationY + this.additionanTranslationY);
        }
    }

    public class MapOverlayView extends FrameLayout {
        private HashMap views;

        public MapOverlayView(Context context) {
            super(context);
            this.views = new HashMap();
        }

        public void addInfoView(IMapsProvider.IMarker iMarker) {
            final VenueLocation venueLocation = (VenueLocation) iMarker.getTag();
            if (ChatAttachAlertLocationLayout.this.lastPressedVenue == venueLocation) {
                return;
            }
            ChatAttachAlertLocationLayout.this.showSearchPlacesButton(false);
            if (ChatAttachAlertLocationLayout.this.lastPressedMarker != null) {
                removeInfoView(ChatAttachAlertLocationLayout.this.lastPressedMarker);
                ChatAttachAlertLocationLayout.this.lastPressedMarker = null;
            }
            ChatAttachAlertLocationLayout.this.lastPressedVenue = venueLocation;
            ChatAttachAlertLocationLayout.this.lastPressedMarker = iMarker;
            Context context = getContext();
            FrameLayout frameLayout = new FrameLayout(context);
            addView(frameLayout, LayoutHelper.createFrame(-2, 114.0f));
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView = new FrameLayout(context);
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView.setBackgroundResource(C2888R.drawable.venue_tooltip);
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView.getBackground().setColorFilter(new PorterDuffColorFilter(ChatAttachAlertLocationLayout.this.getThemedColor(Theme.key_dialogBackground), PorterDuff.Mode.MULTIPLY));
            frameLayout.addView(ChatAttachAlertLocationLayout.this.lastPressedMarkerView, LayoutHelper.createFrame(-2, 71.0f));
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView.setAlpha(0.0f);
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$addInfoView$2(venueLocation, view);
                }
            });
            TextView textView = new TextView(context);
            textView.setTextSize(1, 16.0f);
            textView.setMaxLines(1);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            textView.setSingleLine(true);
            textView.setTextColor(ChatAttachAlertLocationLayout.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            textView.setTypeface(AndroidUtilities.bold());
            textView.setGravity(LocaleController.isRTL ? 5 : 3);
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView.addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 18.0f, 10.0f, 18.0f, 0.0f));
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setMaxLines(1);
            textView2.setEllipsize(truncateAt);
            textView2.setSingleLine(true);
            textView2.setTextColor(ChatAttachAlertLocationLayout.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
            textView2.setGravity(LocaleController.isRTL ? 5 : 3);
            ChatAttachAlertLocationLayout.this.lastPressedMarkerView.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 18.0f, 32.0f, 18.0f, 0.0f));
            textView.setText(venueLocation.venue.title);
            textView2.setText(LocaleController.getString(C2888R.string.TapToSendLocation));
            final FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(36.0f), LocationCell.getColorForIndex(venueLocation.num)));
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(36, 36.0f, 81, 0.0f, 0.0f, 0.0f, 4.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setImage("https://ss3.4sqi.net/img/categories_v2/" + venueLocation.venue.venue_type + "_64.png", null, null);
            frameLayout2.addView(backupImageView, LayoutHelper.createFrame(30, 30, 17));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.MapOverlayView.1
                private final float[] animatorValues = {0.0f, 1.0f};
                private boolean startedInner;

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float interpolation;
                    float fLerp = AndroidUtilities.lerp(this.animatorValues, valueAnimator.getAnimatedFraction());
                    if (fLerp >= 0.7f && !this.startedInner && ChatAttachAlertLocationLayout.this.lastPressedMarkerView != null) {
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ObjectAnimator.ofFloat(ChatAttachAlertLocationLayout.this.lastPressedMarkerView, (Property<FrameLayout, Float>) View.SCALE_X, 0.0f, 1.0f), ObjectAnimator.ofFloat(ChatAttachAlertLocationLayout.this.lastPressedMarkerView, (Property<FrameLayout, Float>) View.SCALE_Y, 0.0f, 1.0f), ObjectAnimator.ofFloat(ChatAttachAlertLocationLayout.this.lastPressedMarkerView, (Property<FrameLayout, Float>) View.ALPHA, 0.0f, 1.0f));
                        animatorSet.setInterpolator(new OvershootInterpolator(1.02f));
                        animatorSet.setDuration(250L);
                        animatorSet.start();
                        this.startedInner = true;
                    }
                    if (fLerp <= 0.5f) {
                        interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(fLerp / 0.5f) * 1.1f;
                    } else if (fLerp <= 0.75f) {
                        interpolation = 1.1f - (CubicBezierInterpolator.EASE_OUT.getInterpolation((fLerp - 0.5f) / 0.25f) * 0.2f);
                    } else {
                        interpolation = (CubicBezierInterpolator.EASE_OUT.getInterpolation((fLerp - 0.75f) / 0.25f) * 0.1f) + 0.9f;
                    }
                    frameLayout2.setScaleX(interpolation);
                    frameLayout2.setScaleY(interpolation);
                }
            });
            valueAnimatorOfFloat.setDuration(360L);
            valueAnimatorOfFloat.start();
            this.views.put(iMarker, frameLayout);
            ChatAttachAlertLocationLayout.this.map.animateCamera(ApplicationLoader.getMapsProvider().newCameraUpdateLatLng(iMarker.getPosition()), 300, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addInfoView$2(final VenueLocation venueLocation, View view) {
            ChatActivity chatActivity = (ChatActivity) ChatAttachAlertLocationLayout.this.parentAlert.baseFragment;
            if (chatActivity.isInScheduleMode()) {
                AlertsCreator.createScheduleDatePickerDialog(ChatAttachAlertLocationLayout.this.getParentActivity(), chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i, int i2) {
                        this.f$0.lambda$addInfoView$0(venueLocation, z, i, i2);
                    }
                }, ChatAttachAlertLocationLayout.this.resourcesProvider);
            } else {
                ChatAttachAlert chatAttachAlert = ChatAttachAlertLocationLayout.this.parentAlert;
                AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), ChatAttachAlertLocationLayout.this.parentAlert.getAdditionalMessagesCount() + 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$MapOverlayView$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$addInfoView$1(venueLocation, (Long) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addInfoView$0(VenueLocation venueLocation, boolean z, int i, int i2) {
            ChatAttachAlertLocationLayout.this.delegate.didSelectLocation(venueLocation.venue, ChatAttachAlertLocationLayout.this.locationType, z, i, 0L);
            ChatAttachAlertLocationLayout.this.parentAlert.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addInfoView$1(VenueLocation venueLocation, Long l) {
            ChatAttachAlertLocationLayout.this.delegate.didSelectLocation(venueLocation.venue, ChatAttachAlertLocationLayout.this.locationType, true, 0, l.longValue());
            ChatAttachAlertLocationLayout.this.parentAlert.dismiss(true);
        }

        public void removeInfoView(IMapsProvider.IMarker iMarker) {
            View view = (View) this.views.get(iMarker);
            if (view != null) {
                removeView(view);
                this.views.remove(iMarker);
            }
        }

        public void updatePositions() {
            if (ChatAttachAlertLocationLayout.this.map == null) {
                return;
            }
            IMapsProvider.IProjection projection = ChatAttachAlertLocationLayout.this.map.getProjection();
            for (Map.Entry entry : this.views.entrySet()) {
                IMapsProvider.IMarker iMarker = (IMapsProvider.IMarker) entry.getKey();
                View view = (View) entry.getValue();
                Point screenLocation = projection.toScreenLocation(iMarker.getPosition());
                view.setTranslationX(screenLocation.x - (view.getMeasuredWidth() / 2));
                view.setTranslationY((screenLocation.y - view.getMeasuredHeight()) + AndroidUtilities.m1124dp(22.0f));
            }
        }
    }

    public ChatAttachAlertLocationLayout(ChatAttachAlert chatAttachAlert, Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.checkGpsEnabled = true;
        this.askedForLocation = false;
        this.locationDenied = false;
        this.isFirstLocation = true;
        this.firstFocus = true;
        this.backgroundPaint = new Paint();
        this.placeMarkers = new ArrayList();
        this.checkPermission = true;
        this.checkBackgroundPermission = true;
        int currentActionBarHeight = (AndroidUtilities.displaySize.x - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.m1124dp(66.0f);
        this.overScrollHeight = currentActionBarHeight;
        this.mapHeight = currentActionBarHeight;
        this.first = true;
        this.bitmapCache = new Bitmap[7];
        AndroidUtilities.fixGoogleMapsBug();
        final ChatActivity chatActivity = (ChatActivity) this.parentAlert.baseFragment;
        this.dialogId = chatActivity.getDialogId();
        ChatAttachAlert chatAttachAlert2 = this.parentAlert;
        if (chatAttachAlert2.isStoryLocationPicker) {
            this.locationType = 7;
        } else if (chatAttachAlert2.isBizLocationPicker) {
            this.locationType = 8;
        } else if (chatActivity.getCurrentEncryptedChat() == null && !chatActivity.isInScheduleMode() && !UserObject.isUserSelf(chatActivity.getCurrentUser())) {
            this.locationType = 1;
        } else {
            this.locationType = 0;
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.locationPermissionGranted);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.locationPermissionDenied);
        this.searchWas = false;
        this.searching = false;
        this.searchInProgress = false;
        LocationActivityAdapter locationActivityAdapter = this.adapter;
        if (locationActivityAdapter != null) {
            locationActivityAdapter.destroy();
        }
        LocationActivitySearchAdapter locationActivitySearchAdapter = this.searchAdapter;
        if (locationActivitySearchAdapter != null) {
            locationActivitySearchAdapter.destroy();
        }
        this.locationDenied = (getParentActivity() == null || getParentActivity().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) ? false : true;
        ActionBarMenu actionBarMenuCreateMenu = this.parentAlert.actionBar.createMenu();
        this.overlayView = new MapOverlayView(context);
        ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, C2888R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.1
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                ChatAttachAlertLocationLayout.this.searching = true;
                ChatAttachAlertLocationLayout chatAttachAlertLocationLayout = ChatAttachAlertLocationLayout.this;
                chatAttachAlertLocationLayout.parentAlert.makeFocusable(chatAttachAlertLocationLayout.searchItem.getSearchField(), true);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                ChatAttachAlertLocationLayout.this.searching = false;
                ChatAttachAlertLocationLayout.this.searchWas = false;
                ChatAttachAlertLocationLayout.this.searchAdapter.searchDelayed(null, null);
                ChatAttachAlertLocationLayout.this.updateEmptyView();
                if (ChatAttachAlertLocationLayout.this.otherItem != null) {
                    ChatAttachAlertLocationLayout.this.otherItem.setVisibility(0);
                }
                ChatAttachAlertLocationLayout.this.listView.setVisibility(0);
                ChatAttachAlertLocationLayout.this.mapViewClip.setVisibility(0);
                ChatAttachAlertLocationLayout.this.searchListView.setVisibility(8);
                ChatAttachAlertLocationLayout.this.emptyView.setVisibility(8);
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                if (ChatAttachAlertLocationLayout.this.searchAdapter == null) {
                    return;
                }
                String string = editText.getText().toString();
                if (string.length() != 0) {
                    ChatAttachAlertLocationLayout.this.searchWas = true;
                    ChatAttachAlertLocationLayout.this.searchItem.setShowSearchProgress(true);
                    if (ChatAttachAlertLocationLayout.this.otherItem != null) {
                        ChatAttachAlertLocationLayout.this.otherItem.setVisibility(8);
                    }
                    ChatAttachAlertLocationLayout.this.listView.setVisibility(8);
                    ChatAttachAlertLocationLayout.this.mapViewClip.setVisibility(8);
                    if (ChatAttachAlertLocationLayout.this.searchListView.getAdapter() != ChatAttachAlertLocationLayout.this.searchAdapter) {
                        ChatAttachAlertLocationLayout.this.searchListView.setAdapter(ChatAttachAlertLocationLayout.this.searchAdapter);
                    }
                    ChatAttachAlertLocationLayout.this.searchListView.setVisibility(0);
                    ChatAttachAlertLocationLayout chatAttachAlertLocationLayout = ChatAttachAlertLocationLayout.this;
                    chatAttachAlertLocationLayout.searchInProgress = chatAttachAlertLocationLayout.searchAdapter.isEmpty();
                    ChatAttachAlertLocationLayout.this.updateEmptyView();
                } else {
                    if (ChatAttachAlertLocationLayout.this.otherItem != null) {
                        ChatAttachAlertLocationLayout.this.otherItem.setVisibility(0);
                    }
                    ChatAttachAlertLocationLayout.this.listView.setVisibility(0);
                    ChatAttachAlertLocationLayout.this.mapViewClip.setVisibility(0);
                    ChatAttachAlertLocationLayout.this.searchListView.setAdapter(null);
                    ChatAttachAlertLocationLayout.this.searchListView.setVisibility(8);
                    ChatAttachAlertLocationLayout.this.emptyView.setVisibility(8);
                }
                ChatAttachAlertLocationLayout.this.searchAdapter.searchDelayed(string, ChatAttachAlertLocationLayout.this.userLocation);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setVisibility(((!this.locationDenied || this.parentAlert.isStoryLocationPicker) && !this.parentAlert.isBizLocationPicker) ? 0 : 8);
        this.searchItem.setSearchFieldHint(LocaleController.getString(C2888R.string.Search));
        this.searchItem.setContentDescription(LocaleController.getString(C2888R.string.Search));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        int i = Theme.key_dialogTextBlack;
        searchField.setTextColor(getThemedColor(i));
        searchField.setCursorColor(getThemedColor(i));
        searchField.setHintTextColor(getThemedColor(Theme.key_chat_messagePanelHint));
        new FrameLayout.LayoutParams(-1, AndroidUtilities.m1124dp(21.0f)).gravity = 83;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                if (ChatAttachAlertLocationLayout.this.overlayView != null) {
                    ChatAttachAlertLocationLayout.this.overlayView.updatePositions();
                }
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                canvas.save();
                canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight() - ChatAttachAlertLocationLayout.this.clipSize);
                boolean zDrawChild = ChatAttachAlertLocationLayout.this.doNotDrawMap ? false : super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild;
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                ChatAttachAlertLocationLayout.this.backgroundPaint.setColor(ChatAttachAlertLocationLayout.this.getThemedColor(Theme.key_dialogBackground));
                canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight() - ChatAttachAlertLocationLayout.this.clipSize, ChatAttachAlertLocationLayout.this.backgroundPaint);
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getY() <= getMeasuredHeight() - ChatAttachAlertLocationLayout.this.clipSize || ExteraConfig.canUseYandexMaps()) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getY() <= getMeasuredHeight() - ChatAttachAlertLocationLayout.this.clipSize || ExteraConfig.canUseYandexMaps()) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.mapViewClip = frameLayout;
        frameLayout.setWillNotDraw(false);
        View view = new View(context);
        this.loadingMapView = view;
        view.setBackgroundDrawable(new MapPlaceholderDrawable());
        SearchButton searchButton = new SearchButton(context);
        this.searchAreaButton = searchButton;
        searchButton.setTranslationX(-AndroidUtilities.m1124dp(80.0f));
        this.searchAreaButton.setVisibility(4);
        int iM1124dp = AndroidUtilities.m1124dp(40.0f);
        int i2 = Theme.key_location_actionBackground;
        int themedColor = getThemedColor(i2);
        int i3 = Theme.key_location_actionPressedBackground;
        Drawable drawableCreateSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(iM1124dp, themedColor, getThemedColor(i3));
        ScaleStateListAnimator.apply(this.searchAreaButton);
        this.searchAreaButton.setTranslationZ(AndroidUtilities.m1124dp(2.0f));
        SearchButton searchButton2 = this.searchAreaButton;
        ViewOutlineProvider viewOutlineProvider = ViewOutlineProviderImpl.BOUNDS_OVAL;
        searchButton2.setOutlineProvider(viewOutlineProvider);
        this.searchAreaButton.setBackground(drawableCreateSimpleSelectorRoundRectDrawable);
        SearchButton searchButton3 = this.searchAreaButton;
        int i4 = Theme.key_location_actionActiveIcon;
        searchButton3.setTextColor(getThemedColor(i4));
        this.searchAreaButton.setTextSize(1, 14.0f);
        this.searchAreaButton.setTypeface(AndroidUtilities.bold());
        this.searchAreaButton.setText(LocaleController.getString(C2888R.string.PlacesInThisArea));
        this.searchAreaButton.setGravity(17);
        this.searchAreaButton.setPadding(AndroidUtilities.m1124dp(20.0f), 0, AndroidUtilities.m1124dp(20.0f), 0);
        this.mapViewClip.addView(this.searchAreaButton, LayoutHelper.createFrame(-2, 40.0f, 49, 80.0f, 12.0f, 80.0f, 0.0f));
        this.searchAreaButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$0(view2);
            }
        });
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, (ActionBarMenu) null, 0, getThemedColor(Theme.key_location_actionIcon), resourcesProvider);
        this.mapTypeButton = actionBarMenuItem;
        actionBarMenuItem.setClickable(true);
        this.mapTypeButton.setSubMenuOpenSide(2);
        this.mapTypeButton.setAdditionalXOffset(AndroidUtilities.m1124dp(10.0f));
        this.mapTypeButton.setAdditionalYOffset(-AndroidUtilities.m1124dp(10.0f));
        this.mapTypeButton.addSubItem(2, C2888R.drawable.msg_map, LocaleController.getString(C2888R.string.Map), resourcesProvider);
        this.mapTypeButton.addSubItem(3, C2888R.drawable.msg_satellite, LocaleController.getString(C2888R.string.Satellite), resourcesProvider);
        this.mapTypeButton.addSubItem(4, C2888R.drawable.msg_hybrid, LocaleController.getString(C2888R.string.Hybrid), resourcesProvider);
        this.mapTypeButton.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMoreOptions));
        Drawable drawableCreateSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m1124dp(40.0f), getThemedColor(i2), getThemedColor(i3));
        ScaleStateListAnimator.apply(this.mapTypeButton);
        this.mapTypeButton.setTranslationZ(AndroidUtilities.m1124dp(2.0f));
        this.mapTypeButton.setOutlineProvider(viewOutlineProvider);
        this.mapTypeButton.setBackground(drawableCreateSimpleSelectorCircleDrawable);
        this.mapTypeButton.setIcon(C2888R.drawable.msg_map_type);
        this.mapViewClip.addView(this.mapTypeButton, LayoutHelper.createFrame(40, 40.0f, 53, 0.0f, 12.0f, 12.0f, 0.0f));
        this.mapTypeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$1(view2);
            }
        });
        this.mapTypeButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda10
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i5) {
                this.f$0.lambda$new$2(i5);
            }
        });
        if (!ApplicationLoader.getMapsProvider().supportsOtherMapTypes()) {
            this.mapTypeButton.setVisibility(8);
        }
        this.locationButton = new ImageView(context);
        Drawable drawableCreateSimpleSelectorCircleDrawable2 = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m1124dp(40.0f), getThemedColor(i2), getThemedColor(i3));
        ScaleStateListAnimator.apply(this.locationButton);
        this.locationButton.setTranslationZ(AndroidUtilities.m1124dp(2.0f));
        this.locationButton.setOutlineProvider(viewOutlineProvider);
        this.locationButton.setBackground(drawableCreateSimpleSelectorCircleDrawable2);
        this.locationButton.setImageResource(C2888R.drawable.msg_current_location);
        this.locationButton.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView = this.locationButton;
        int themedColor2 = getThemedColor(i4);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView.setColorFilter(new PorterDuffColorFilter(themedColor2, mode));
        this.locationButton.setTag(Integer.valueOf(i4));
        this.locationButton.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMyLocation));
        this.mapViewClip.addView(this.locationButton, LayoutHelper.createFrame(40, 40.0f, 85, 0.0f, 0.0f, 12.0f, 12.0f));
        this.locationButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$3(view2);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        this.emptyView = linearLayout;
        linearLayout.setOrientation(1);
        this.emptyView.setGravity(1);
        this.emptyView.setPadding(0, AndroidUtilities.m1124dp(160.0f), 0, 0);
        this.emptyView.setVisibility(8);
        addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        this.emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda12
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return ChatAttachAlertLocationLayout.m9369$r8$lambda$NV4s6CRnI_tkfHRJSUIsAp0RZ4(view2, motionEvent);
            }
        });
        ImageView imageView2 = new ImageView(context);
        this.emptyImageView = imageView2;
        imageView2.setImageResource(C2888R.drawable.location_empty);
        this.emptyImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), mode));
        this.emptyView.addView(this.emptyImageView, LayoutHelper.createLinear(-2, -2));
        TextView textView = new TextView(context);
        this.emptyTitleTextView = textView;
        int i5 = Theme.key_dialogEmptyText;
        textView.setTextColor(getThemedColor(i5));
        this.emptyTitleTextView.setGravity(17);
        this.emptyTitleTextView.setTypeface(AndroidUtilities.bold());
        this.emptyTitleTextView.setTextSize(1, 17.0f);
        this.emptyTitleTextView.setText(LocaleController.getString(C2888R.string.NoPlacesFound));
        this.emptyView.addView(this.emptyTitleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 11, 0, 0));
        TextView textView2 = new TextView(context);
        this.emptySubtitleTextView = textView2;
        textView2.setTextColor(getThemedColor(i5));
        this.emptySubtitleTextView.setGravity(17);
        this.emptySubtitleTextView.setTextSize(1, 15.0f);
        this.emptySubtitleTextView.setPadding(AndroidUtilities.m1124dp(40.0f), 0, AndroidUtilities.m1124dp(40.0f), 0);
        this.emptyView.addView(this.emptySubtitleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 6, 0, 0));
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.3
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i6, int i7, int i8, int i9) {
                super.onLayout(z, i6, i7, i8, i9);
                ChatAttachAlertLocationLayout.this.updateClipView();
            }
        };
        this.listView = recyclerListView;
        this.iBlur3Capture = recyclerListView;
        this.iBlur3CaptureView = recyclerListView;
        this.occupyNavigationBar = true;
        recyclerListView.setClipToPadding(false);
        RecyclerListView recyclerListView2 = this.listView;
        int i6 = this.locationType;
        long j = this.dialogId;
        ChatAttachAlert chatAttachAlert3 = this.parentAlert;
        LocationActivityAdapter locationActivityAdapter2 = new LocationActivityAdapter(context, i6, j, true, resourcesProvider, chatAttachAlert3.isStoryLocationPicker, false, chatAttachAlert3.isBizLocationPicker);
        this.adapter = locationActivityAdapter2;
        recyclerListView2.setAdapter(locationActivityAdapter2);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.adapter.setUpdateRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateClipView();
            }
        });
        this.adapter.setMyLocationDenied(this.locationDenied, this.askedForLocation);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setSections();
        RecyclerListView recyclerListView3 = this.listView;
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(context, 1, false, 0, recyclerListView3) { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i7) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.4.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view2, int i8) {
                        return super.calculateDyToMakeVisible(view2, i8) - (ChatAttachAlertLocationLayout.this.listView.getPaddingTop() - (ChatAttachAlertLocationLayout.this.mapHeight - ChatAttachAlertLocationLayout.this.overScrollHeight));
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    protected int calculateTimeForDeceleration(int i8) {
                        return super.calculateTimeForDeceleration(i8) * 4;
                    }
                };
                linearSmoothScroller.setTargetPosition(i7);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = fillLastLinearLayoutManager;
        recyclerListView3.setLayoutManager(fillLastLinearLayoutManager);
        addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i7) {
                RecyclerListView.Holder holder;
                ChatAttachAlertLocationLayout.this.scrolling = i7 != 0;
                if (!ChatAttachAlertLocationLayout.this.scrolling && ChatAttachAlertLocationLayout.this.forceUpdate != null) {
                    ChatAttachAlertLocationLayout.this.forceUpdate = null;
                }
                if (i7 == 0) {
                    int iM1124dp2 = AndroidUtilities.m1124dp(13.0f);
                    int backgroundPaddingTop = ChatAttachAlertLocationLayout.this.parentAlert.getBackgroundPaddingTop();
                    if (((ChatAttachAlertLocationLayout.this.parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - iM1124dp2) + backgroundPaddingTop >= ActionBar.getCurrentActionBarHeight() || (holder = (RecyclerListView.Holder) ChatAttachAlertLocationLayout.this.listView.findViewHolderForAdapterPosition(0)) == null || holder.itemView.getTop() <= ChatAttachAlertLocationLayout.this.mapHeight - ChatAttachAlertLocationLayout.this.overScrollHeight) {
                        return;
                    }
                    ChatAttachAlertLocationLayout.this.listView.smoothScrollBy(0, holder.itemView.getTop() - (ChatAttachAlertLocationLayout.this.mapHeight - ChatAttachAlertLocationLayout.this.overScrollHeight));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i7, int i8) {
                ChatAttachAlertLocationLayout.this.updateClipView();
                if (ChatAttachAlertLocationLayout.this.forceUpdate != null) {
                    ChatAttachAlertLocationLayout.this.yOffset += i8;
                }
                ChatAttachAlertLocationLayout chatAttachAlertLocationLayout = ChatAttachAlertLocationLayout.this;
                chatAttachAlertLocationLayout.parentAlert.updateLayout(chatAttachAlertLocationLayout, true, i8);
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda14
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i7) {
                this.f$0.lambda$new$9(chatActivity, resourcesProvider, view2, i7);
            }
        });
        this.adapter.setDelegate(this.dialogId, new BaseLocationAdapter.BaseLocationAdapterDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda15
            @Override // org.telegram.ui.Adapters.BaseLocationAdapter.BaseLocationAdapterDelegate
            public final void didLoadSearchResult(ArrayList arrayList) {
                this.f$0.updatePlacesMarkers(arrayList);
            }
        });
        this.adapter.setOverScrollHeight(this.overScrollHeight + AndroidUtilities.m1124dp(16.0f));
        addView(this.mapViewClip, LayoutHelper.createFrame(-1, -1, 51));
        IMapsProvider.IMapView iMapViewOnCreateMapView = ApplicationLoader.getMapsProvider().onCreateMapView(context);
        this.mapView = iMapViewOnCreateMapView;
        iMapViewOnCreateMapView.setOnDispatchTouchEventInterceptor(new IMapsProvider.ITouchInterceptor() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.IMapsProvider.ITouchInterceptor
            public final boolean onInterceptTouchEvent(MotionEvent motionEvent, IMapsProvider.ICallableMethod iCallableMethod) {
                return this.f$0.lambda$new$10(motionEvent, iCallableMethod);
            }
        });
        this.mapView.setOnInterceptTouchEventInterceptor(new IMapsProvider.ITouchInterceptor() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.IMapsProvider.ITouchInterceptor
            public final boolean onInterceptTouchEvent(MotionEvent motionEvent, IMapsProvider.ICallableMethod iCallableMethod) {
                return this.f$0.lambda$new$11(motionEvent, iCallableMethod);
            }
        });
        final IMapsProvider.IMapView iMapView = this.mapView;
        new Thread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$16(iMapView);
            }
        }).start();
        ImageView imageView3 = new ImageView(context);
        this.markerImageView = imageView3;
        imageView3.setImageResource(C2888R.drawable.map_pin2);
        this.mapViewClip.addView(this.markerImageView, LayoutHelper.createFrame(28, 48, 49));
        RecyclerListView recyclerListView4 = new RecyclerListView(context, resourcesProvider);
        this.searchListView = recyclerListView4;
        recyclerListView4.setSections(true);
        this.searchListView.setClipToPadding(false);
        this.searchListView.setVisibility(8);
        this.searchListView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        ChatAttachAlert chatAttachAlert4 = this.parentAlert;
        LocationActivitySearchAdapter locationActivitySearchAdapter2 = new LocationActivitySearchAdapter(context, resourcesProvider, chatAttachAlert4.isStoryLocationPicker, chatAttachAlert4.isBizLocationPicker) { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.6
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                if (ChatAttachAlertLocationLayout.this.searchItem != null) {
                    ChatAttachAlertLocationLayout.this.searchItem.setShowSearchProgress(ChatAttachAlertLocationLayout.this.searchAdapter.isSearching());
                }
                if (ChatAttachAlertLocationLayout.this.emptySubtitleTextView != null) {
                    ChatAttachAlertLocationLayout.this.emptySubtitleTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("NoPlacesFoundInfo", C2888R.string.NoPlacesFoundInfo, ChatAttachAlertLocationLayout.this.searchAdapter.getLastSearchString())));
                }
                super.notifyDataSetChanged();
            }
        };
        this.searchAdapter = locationActivitySearchAdapter2;
        locationActivitySearchAdapter2.setMyLocationDenied(this.locationDenied);
        this.searchAdapter.setDelegate(0L, new BaseLocationAdapter.BaseLocationAdapterDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Adapters.BaseLocationAdapter.BaseLocationAdapterDelegate
            public final void didLoadSearchResult(ArrayList arrayList) {
                this.f$0.lambda$new$17(arrayList);
            }
        });
        this.searchListView.setItemAnimator(null);
        addView(this.searchListView, LayoutHelper.createFrame(-1, -1, 51));
        this.searchListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout.7
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i7) {
                if (i7 == 1 && ChatAttachAlertLocationLayout.this.searching && ChatAttachAlertLocationLayout.this.searchWas) {
                    AndroidUtilities.hideKeyboard(ChatAttachAlertLocationLayout.this.parentAlert.getCurrentFocus());
                }
            }
        });
        this.searchListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i7) {
                this.f$0.lambda$new$19(chatActivity, resourcesProvider, view2, i7);
            }
        });
        updateEmptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        showSearchPlacesButton(false);
        this.adapter.searchPlacesWithQuery(null, this.userLocation, true, true);
        this.searchedForCustomLocations = true;
        showResults();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.mapTypeButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i) {
        IMapsProvider.IMap iMap = this.map;
        if (iMap == null) {
            return;
        }
        if (i == 2) {
            iMap.setMapType(0);
        } else if (i == 3) {
            iMap.setMapType(1);
        } else if (i == 4) {
            iMap.setMapType(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        Activity parentActivity = getParentActivity();
        if (parentActivity != null && parentActivity.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            AlertsCreator.createLocationRequiredDialog(getParentActivity(), true).show();
            return;
        }
        if (this.myLocation != null && this.map != null) {
            ImageView imageView = this.locationButton;
            int i = Theme.key_location_actionActiveIcon;
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            this.locationButton.setTag(Integer.valueOf(i));
            this.adapter.setCustomLocation(null);
            this.userLocationMoved = false;
            showSearchPlacesButton(false);
            this.map.animateCamera(ApplicationLoader.getMapsProvider().newCameraUpdateLatLng(new IMapsProvider.LatLng(this.myLocation.getLatitude(), this.myLocation.getLongitude())));
            if (this.searchedForCustomLocations) {
                Location location = this.myLocation;
                if (location != null && this.locationType != 8) {
                    this.adapter.searchPlacesWithQuery(null, location, true, true);
                }
                this.searchedForCustomLocations = false;
                showResults();
            }
        }
        removeInfoView();
    }

    /* JADX INFO: renamed from: $r8$lambda$NV4s6CRnI_tkfHRJSUIsAp0RZ-4, reason: not valid java name */
    public static /* synthetic */ boolean m9369$r8$lambda$NV4s6CRnI_tkfHRJSUIsAp0RZ4(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(final ChatActivity chatActivity, final Theme.ResourcesProvider resourcesProvider, View view, int i) {
        TLRPC.TL_messageMediaVenue tL_messageMediaVenue;
        TLRPC.TL_messageMediaVenue tL_messageMediaVenue2;
        int i2 = this.locationType;
        if (i2 == 7) {
            if (i == 1 && (tL_messageMediaVenue2 = this.adapter.city) != null) {
                this.delegate.didSelectLocation(tL_messageMediaVenue2, i2, true, 0, 0L);
                this.parentAlert.dismiss(true);
                return;
            } else if (i == 2 && (tL_messageMediaVenue = this.adapter.street) != null) {
                this.delegate.didSelectLocation(tL_messageMediaVenue, i2, true, 0, 0L);
                this.parentAlert.dismiss(true);
                return;
            }
        } else {
            if (i == 1) {
                if (this.delegate != null && this.userLocation != null) {
                    FrameLayout frameLayout = this.lastPressedMarkerView;
                    if (frameLayout != null) {
                        frameLayout.callOnClick();
                        return;
                    }
                    final TLRPC.TL_messageMediaGeo tL_messageMediaGeo = new TLRPC.TL_messageMediaGeo();
                    TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
                    tL_messageMediaGeo.geo = tL_geoPoint;
                    tL_geoPoint.lat = AndroidUtilities.fixLocationCoord(this.userLocation.getLatitude());
                    tL_messageMediaGeo.geo._long = AndroidUtilities.fixLocationCoord(this.userLocation.getLongitude());
                    ChatAttachAlert chatAttachAlert = this.parentAlert;
                    AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), this.parentAlert.getAdditionalMessagesCount() + 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda24
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$new$6(chatActivity, tL_messageMediaGeo, resourcesProvider, (Long) obj);
                        }
                    });
                    return;
                }
                if (this.locationDenied) {
                    AlertsCreator.createLocationRequiredDialog(getParentActivity(), true).show();
                    return;
                }
                return;
            }
            if (i == 2 && i2 == 1) {
                if (getLocationController().isSharingLocation(this.dialogId)) {
                    getLocationController().removeSharingLocation(this.dialogId);
                    this.parentAlert.dismiss(true);
                    return;
                } else if (this.myLocation == null && this.locationDenied) {
                    AlertsCreator.createLocationRequiredDialog(getParentActivity(), true).show();
                    return;
                } else {
                    openShareLiveLocation();
                    return;
                }
            }
        }
        final Object item = this.adapter.getItem(i);
        if (item instanceof TLRPC.TL_messageMediaVenue) {
            ChatAttachAlert chatAttachAlert2 = this.parentAlert;
            AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert2.currentAccount, chatAttachAlert2.getDialogId(), this.parentAlert.getAdditionalMessagesCount() + 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda25
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$8(chatActivity, item, resourcesProvider, (Long) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(ChatActivity chatActivity, final TLRPC.TL_messageMediaGeo tL_messageMediaGeo, Theme.ResourcesProvider resourcesProvider, final Long l) {
        if (chatActivity.isInScheduleMode()) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda27
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i, int i2) {
                    this.f$0.lambda$new$5(tL_messageMediaGeo, l, z, i, i2);
                }
            }, resourcesProvider);
        } else {
            this.delegate.didSelectLocation(tL_messageMediaGeo, this.locationType, true, 0, l.longValue());
            this.parentAlert.dismiss(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(TLRPC.TL_messageMediaGeo tL_messageMediaGeo, Long l, boolean z, int i, int i2) {
        this.delegate.didSelectLocation(tL_messageMediaGeo, this.locationType, z, i, l.longValue());
        this.parentAlert.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(ChatActivity chatActivity, final Object obj, Theme.ResourcesProvider resourcesProvider, Long l) {
        if (chatActivity.isInScheduleMode()) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda26
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i, int i2) {
                    this.f$0.lambda$new$7(obj, z, i, i2);
                }
            }, resourcesProvider);
        } else {
            this.delegate.didSelectLocation((TLRPC.TL_messageMediaVenue) obj, this.locationType, true, 0, 0L);
            this.parentAlert.dismiss(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(Object obj, boolean z, int i, int i2) {
        this.delegate.didSelectLocation((TLRPC.TL_messageMediaVenue) obj, this.locationType, z, i, 0L);
        this.parentAlert.dismiss(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$10(MotionEvent motionEvent, IMapsProvider.ICallableMethod iCallableMethod) {
        MotionEvent motionEvent2;
        if (this.yOffset != 0.0f) {
            motionEvent = MotionEvent.obtain(motionEvent);
            motionEvent.offsetLocation(0.0f, (-this.yOffset) / 2.0f);
            motionEvent2 = motionEvent;
        } else {
            motionEvent2 = null;
        }
        boolean zBooleanValue = ((Boolean) iCallableMethod.call(motionEvent)).booleanValue();
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        return zBooleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$11(MotionEvent motionEvent, IMapsProvider.ICallableMethod iCallableMethod) {
        Location location;
        int action = motionEvent.getAction();
        Property property = View.TRANSLATION_Y;
        if (action == 0) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.setDuration(200L);
            this.animatorSet.playTogether(ObjectAnimator.ofFloat(this.markerImageView, (Property<ImageView, Float>) property, this.markerTop - AndroidUtilities.m1124dp(10.0f)));
            this.animatorSet.start();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            AnimatorSet animatorSet3 = this.animatorSet;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            this.yOffset = 0.0f;
            AnimatorSet animatorSet4 = new AnimatorSet();
            this.animatorSet = animatorSet4;
            animatorSet4.setDuration(200L);
            this.animatorSet.playTogether(ObjectAnimator.ofFloat(this.markerImageView, (Property<ImageView, Float>) property, this.markerTop));
            this.animatorSet.start();
        }
        if (motionEvent.getAction() == 2) {
            if (!this.userLocationMoved) {
                ImageView imageView = this.locationButton;
                int i = Theme.key_location_actionIcon;
                imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
                this.locationButton.setTag(Integer.valueOf(i));
                this.userLocationMoved = true;
            }
            IMapsProvider.IMap iMap = this.map;
            if (iMap != null && (location = this.userLocation) != null) {
                location.setLatitude(iMap.getCameraPosition().target.latitude);
                this.userLocation.setLongitude(this.map.getCameraPosition().target.longitude);
            }
            this.adapter.setCustomLocation(this.userLocation);
        }
        return ((Boolean) iCallableMethod.call(motionEvent)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(final IMapsProvider.IMapView iMapView) {
        try {
            if (!ExteraConfig.canUseYandexMaps()) {
                iMapView.onCreate(null);
            }
        } catch (Exception unused) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$15(iMapView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(IMapsProvider.IMapView iMapView) {
        if (this.mapView == null || getParentActivity() == null) {
            return;
        }
        try {
            iMapView.onCreate(null);
            ApplicationLoader.getMapsProvider().initializeMaps(ApplicationLoader.applicationContext);
            this.mapView.getMapAsync(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda28
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$new$14((IMapsProvider.IMap) obj);
                }
            });
            this.mapsInitialized = true;
            if (this.onResumeCalled) {
                this.mapView.onResume();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(IMapsProvider.IMap iMap) {
        this.map = iMap;
        iMap.setOnMapLoadedCallback(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$13();
            }
        });
        if (isActiveThemeDark()) {
            this.currentMapStyleDark = true;
            this.map.setMapStyle(ApplicationLoader.getMapsProvider().loadRawResourceStyle(ApplicationLoader.applicationContext, C2888R.raw.mapstyle_night));
        }
        onMapInit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$12();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12() {
        this.loadingMapView.setTag(1);
        this.loadingMapView.animate().alpha(0.0f).setDuration(180L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17(ArrayList arrayList) {
        this.searchInProgress = false;
        updateEmptyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$19(ChatActivity chatActivity, Theme.ResourcesProvider resourcesProvider, View view, int i) {
        final TLRPC.TL_messageMediaVenue item = this.searchAdapter.getItem(i);
        if (item == null || this.delegate == null) {
            return;
        }
        if (chatActivity.isInScheduleMode()) {
            AlertsCreator.createScheduleDatePickerDialog(getParentActivity(), chatActivity.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda23
                @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z, int i2, int i3) {
                    this.f$0.lambda$new$18(item, z, i2, i3);
                }
            }, resourcesProvider);
        } else {
            this.delegate.didSelectLocation(item, this.locationType, true, 0, 0L);
            this.parentAlert.dismiss(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(TLRPC.TL_messageMediaVenue tL_messageMediaVenue, boolean z, int i, int i2) {
        this.delegate.didSelectLocation(tL_messageMediaVenue, this.locationType, z, i, 0L);
        this.parentAlert.dismiss(true);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean shouldHideBottomButtons() {
        return !this.locationDenied;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPause() {
        IMapsProvider.IMapView iMapView = this.mapView;
        if (iMapView != null && this.mapsInitialized) {
            try {
                iMapView.onPause();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        this.onResumeCalled = false;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        FrameLayout frameLayout;
        IMapsProvider.IMarker iMarker;
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.locationPermissionGranted);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.locationPermissionDenied);
        this.doNotDrawMap = true;
        FrameLayout frameLayout2 = this.mapViewClip;
        if (frameLayout2 != null) {
            frameLayout2.invalidate();
        }
        int i = 0;
        try {
            IMapsProvider.IMap iMap = this.map;
            if (iMap != null) {
                iMap.setMyLocationEnabled(false);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        IMapsProvider.IMapView iMapView = this.mapView;
        if (iMapView != null) {
            iMapView.getView().setTranslationY((-AndroidUtilities.displaySize.y) * 3);
        }
        try {
            if (!this.placeMarkers.isEmpty()) {
                ArrayList arrayList = this.placeMarkers;
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    IMapsProvider.IMarker iMarker2 = ((VenueLocation) obj).marker;
                    if (iMarker2 != null) {
                        iMarker2.remove();
                    }
                }
                this.placeMarkers.clear();
            }
            IMapsProvider.IMarker iMarker3 = this.lastPressedMarker;
            if (iMarker3 != null) {
                iMarker3.remove();
            }
            this.lastPressedMarker = null;
            VenueLocation venueLocation = this.lastPressedVenue;
            if (venueLocation != null && (iMarker = venueLocation.marker) != null) {
                iMarker.remove();
            }
            this.lastPressedVenue = null;
            this.lastPressedMarkerView = null;
        } catch (Exception unused) {
        }
        try {
            IMapsProvider.IMapView iMapView2 = this.mapView;
            if (iMapView2 != null) {
                iMapView2.onPause();
            }
        } catch (Exception unused2) {
        }
        try {
            if (this.mapView != null) {
                if (ExteraConfig.canUseYandexMaps() && (frameLayout = this.mapViewClip) != null) {
                    frameLayout.removeAllViews();
                }
                this.mapView.onDestroy();
                this.mapView = null;
            }
        } catch (Exception unused3) {
        }
        LocationActivityAdapter locationActivityAdapter = this.adapter;
        if (locationActivityAdapter != null) {
            locationActivityAdapter.destroy();
        }
        LocationActivitySearchAdapter locationActivitySearchAdapter = this.searchAdapter;
        if (locationActivitySearchAdapter != null) {
            locationActivitySearchAdapter.destroy();
        }
        this.parentAlert.actionBar.closeSearchField();
        this.parentAlert.actionBar.createMenu().removeView(this.searchItem);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        this.searchItem.setVisibility(8);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onDismiss() {
        onDestroy();
        return false;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            return Integer.MAX_VALUE;
        }
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(0);
        return (holder != null ? Math.max(((int) holder.itemView.getY()) - this.nonClipSize, 0) : 0) + AndroidUtilities.m1124dp(56.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
        updateClipView();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.listView.getPaddingTop();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m1124dp(56.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int iM1124dp;
        if (this.parentAlert.actionBar.isSearchFieldVisible() || this.parentAlert.sizeNotifierFrameLayout.measureKeyboardHeight() > AndroidUtilities.m1124dp(20.0f)) {
            iM1124dp = this.mapHeight - this.overScrollHeight;
            this.parentAlert.setAllowNestedScroll(false);
        } else if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            int i3 = point.x > point.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
            iM1124dp = i3 - AndroidUtilities.m1124dp(52.0f);
            if (iM1124dp < 0) {
                iM1124dp = 0;
            }
            this.parentAlert.setAllowNestedScroll(true);
        }
        this.listView.setPaddingWithoutRequestLayout(0, iM1124dp, 0, this.listPaddingBottom);
        this.searchListView.setPaddingWithoutRequestLayout(0, 0, 0, this.listPaddingBottom);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            fixLayoutInternal(this.first);
            this.first = false;
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getButtonsHideOffset() {
        return AndroidUtilities.m1124dp(56.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.listView.smoothScrollToPosition(0);
    }

    private boolean isActiveThemeDark() {
        return Theme.getActiveTheme().isDark() || AndroidUtilities.computePerceivedBrightness(getThemedColor(Theme.key_windowBackgroundWhite)) < 0.721f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        if (this.searching) {
            if (this.searchInProgress) {
                this.searchListView.setEmptyView(null);
                this.emptyView.setVisibility(8);
                return;
            } else {
                this.searchListView.setEmptyView(this.emptyView);
                return;
            }
        }
        this.emptyView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSearchPlacesButton(boolean z) {
        SearchButton searchButton;
        Location location;
        Location location2;
        if (this.locationDenied) {
            z = false;
        }
        if (z && (searchButton = this.searchAreaButton) != null && searchButton.getTag() == null && ((location = this.myLocation) == null || (location2 = this.userLocation) == null || location2.distanceTo(location) < 300.0f)) {
            z = false;
        }
        if (this.locationType == 8) {
            z = false;
        }
        SearchButton searchButton2 = this.searchAreaButton;
        if (searchButton2 != null) {
            if (!z || searchButton2.getTag() == null) {
                if (z || this.searchAreaButton.getTag() != null) {
                    this.searchAreaButton.setVisibility(z ? 0 : 4);
                    this.searchAreaButton.setTag(z ? 1 : null);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.searchAreaButton, (Property<SearchButton, Float>) View.TRANSLATION_X, z ? 0.0f : -AndroidUtilities.m1124dp(80.0f)));
                    animatorSet.setDuration(180L);
                    animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                    animatorSet.start();
                }
            }
        }
    }

    public void openShareLiveLocation() {
        Activity parentActivity;
        if (this.delegate == null || getParentActivity() == null || this.myLocation == null) {
            return;
        }
        if (this.checkBackgroundPermission && Build.VERSION.SDK_INT >= 29 && (parentActivity = getParentActivity()) != null) {
            this.checkBackgroundPermission = false;
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            if (Math.abs((System.currentTimeMillis() / 1000) - ((long) globalMainSettings.getInt("backgroundloc", 0))) > 86400 && parentActivity.checkSelfPermission("android.permission.ACCESS_BACKGROUND_LOCATION") != 0) {
                globalMainSettings.edit().putInt("backgroundloc", (int) (System.currentTimeMillis() / 1000)).apply();
                AlertsCreator.createBackgroundLocationPermissionDialog(parentActivity, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())), new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.openShareLiveLocation();
                    }
                }, this.resourcesProvider).show();
                return;
            }
        }
        AlertsCreator.createLocationUpdateDialog(getParentActivity(), false, DialogObject.isUserDialog(this.dialogId) ? this.parentAlert.baseFragment.getMessagesController().getUser(Long.valueOf(this.dialogId)) : null, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.MessagesStorage.IntCallback
            public final void run(int i) {
                this.f$0.lambda$openShareLiveLocation$21(i);
            }
        }, this.resourcesProvider).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openShareLiveLocation$21(final int i) {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        AlertsCreator.ensurePaidMessageConfirmation(chatAttachAlert.currentAccount, chatAttachAlert.getDialogId(), this.parentAlert.getAdditionalMessagesCount() + 1, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$openShareLiveLocation$20(i, (Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openShareLiveLocation$20(int i, Long l) {
        TLRPC.TL_messageMediaGeoLive tL_messageMediaGeoLive = new TLRPC.TL_messageMediaGeoLive();
        TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
        tL_messageMediaGeoLive.geo = tL_geoPoint;
        tL_geoPoint.lat = AndroidUtilities.fixLocationCoord(this.myLocation.getLatitude());
        tL_messageMediaGeoLive.geo._long = AndroidUtilities.fixLocationCoord(this.myLocation.getLongitude());
        tL_messageMediaGeoLive.period = i;
        this.delegate.didSelectLocation(tL_messageMediaGeoLive, this.locationType, true, 0, l.longValue());
        this.parentAlert.dismiss(true);
    }

    private Bitmap createPlaceBitmap(int i) {
        Bitmap bitmap = this.bitmapCache[i % 7];
        if (bitmap != null) {
            return bitmap;
        }
        try {
            Paint paint = new Paint(1);
            paint.setColor(-1);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawCircle(AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), paint);
            paint.setColor(LocationCell.getColorForIndex(i));
            canvas.drawCircle(AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(5.0f), paint);
            canvas.setBitmap(null);
            this.bitmapCache[i % 7] = bitmapCreateBitmap;
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            FileLog.m1136e(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlacesMarkers(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        int size = this.placeMarkers.size();
        for (int i = 0; i < size; i++) {
            ((VenueLocation) this.placeMarkers.get(i)).marker.remove();
        }
        this.placeMarkers.clear();
        int size2 = arrayList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            TLRPC.TL_messageMediaVenue tL_messageMediaVenue = (TLRPC.TL_messageMediaVenue) arrayList.get(i2);
            try {
                IMapsProvider.IMarkerOptions iMarkerOptionsOnCreateMarkerOptions = ApplicationLoader.getMapsProvider().onCreateMarkerOptions();
                TLRPC.GeoPoint geoPoint = tL_messageMediaVenue.geo;
                IMapsProvider.IMarkerOptions iMarkerOptionsPosition = iMarkerOptionsOnCreateMarkerOptions.position(new IMapsProvider.LatLng(geoPoint.lat, geoPoint._long));
                iMarkerOptionsPosition.icon(createPlaceBitmap(i2));
                iMarkerOptionsPosition.anchor(0.5f, 0.5f);
                iMarkerOptionsPosition.title(tL_messageMediaVenue.title);
                iMarkerOptionsPosition.snippet(tL_messageMediaVenue.address);
                VenueLocation venueLocation = new VenueLocation();
                venueLocation.num = i2;
                IMapsProvider.IMarker iMarkerAddMarker = this.map.addMarker(iMarkerOptionsPosition);
                venueLocation.marker = iMarkerAddMarker;
                venueLocation.venue = tL_messageMediaVenue;
                iMarkerAddMarker.setTag(venueLocation);
                this.placeMarkers.add(venueLocation);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    private MessagesController getMessagesController() {
        return this.parentAlert.baseFragment.getMessagesController();
    }

    private LocationController getLocationController() {
        return this.parentAlert.baseFragment.getLocationController();
    }

    private UserConfig getUserConfig() {
        return this.parentAlert.baseFragment.getUserConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity getParentActivity() {
        BaseFragment baseFragment;
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert == null || (baseFragment = chatAttachAlert.baseFragment) == null) {
            return null;
        }
        return baseFragment.getParentActivity();
    }

    private void onMapInit() {
        PackageManager packageManager;
        if (this.map == null) {
            return;
        }
        Location location = new Location("network");
        this.userLocation = location;
        location.setLatitude(20.659322d);
        this.userLocation.setLongitude(-11.40625d);
        try {
            this.map.setMyLocationEnabled(true);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        this.map.getUiSettings().setMyLocationButtonEnabled(false);
        this.map.getUiSettings().setZoomControlsEnabled(false);
        this.map.getUiSettings().setCompassEnabled(false);
        this.map.setOnCameraMoveStartedListener(new IMapsProvider.OnCameraMoveStartedListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda31
            @Override // org.telegram.messenger.IMapsProvider.OnCameraMoveStartedListener
            public final void onCameraMoveStarted(int i) {
                this.f$0.lambda$onMapInit$22(i);
            }
        });
        this.map.setOnCameraIdleListener(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMapInit$23();
            }
        });
        this.map.setOnMyLocationChangeListener(new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda33
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$onMapInit$24((Location) obj);
            }
        });
        this.map.setOnMarkerClickListener(new IMapsProvider.OnMarkerClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda34
            @Override // org.telegram.messenger.IMapsProvider.OnMarkerClickListener
            public final boolean onClick(IMapsProvider.IMarker iMarker) {
                return this.f$0.lambda$onMapInit$25(iMarker);
            }
        });
        this.map.setOnCameraMoveListener(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMapInit$26();
            }
        });
        positionMarker();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMapInit$27();
            }
        }, 200L);
        if (this.checkGpsEnabled && getParentActivity() != null) {
            this.checkGpsEnabled = false;
            Activity parentActivity = getParentActivity();
            if (parentActivity != null && (packageManager = parentActivity.getPackageManager()) != null && !packageManager.hasSystemFeature("android.hardware.location.gps")) {
                return;
            }
            try {
                if (!((LocationManager) ApplicationLoader.applicationContext.getSystemService("location")).isProviderEnabled("gps")) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
                    builder.setTopAnimation(C2888R.raw.permission_request_location, 72, false, Theme.getColor(Theme.key_dialogTopBackground, this.resourcesProvider));
                    builder.setMessage(LocaleController.getString(C2888R.string.GpsDisabledAlertText));
                    builder.setPositiveButton(LocaleController.getString(C2888R.string.ConnectingToProxyEnable), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda37
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i) {
                            this.f$0.lambda$onMapInit$28(alertDialog, i);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
                    builder.show();
                }
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
        updateClipView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMapInit$22(int i) {
        View childAt;
        RecyclerView.ViewHolder viewHolderFindContainingViewHolder;
        if (i == 1) {
            showSearchPlacesButton(true);
            removeInfoView();
            if (this.scrolling || this.listView.getChildCount() <= 0 || (childAt = this.listView.getChildAt(0)) == null || (viewHolderFindContainingViewHolder = this.listView.findContainingViewHolder(childAt)) == null || viewHolderFindContainingViewHolder.getAdapterPosition() != 0) {
                return;
            }
            int iM1124dp = this.locationType == 0 ? 0 : AndroidUtilities.m1124dp(66.0f);
            int top = childAt.getTop();
            if (top < (-iM1124dp)) {
                IMapsProvider.CameraPosition cameraPosition = this.map.getCameraPosition();
                this.forceUpdate = ApplicationLoader.getMapsProvider().newCameraUpdateLatLngZoom(cameraPosition.target, cameraPosition.zoom);
                this.listView.smoothScrollBy(0, top + iM1124dp);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMapInit$23() {
        Location location;
        if (this.ignoreIdleCamera) {
            this.ignoreIdleCamera = false;
            return;
        }
        IMapsProvider.IMap iMap = this.map;
        if (iMap != null && (location = this.userLocation) != null) {
            location.setLatitude(iMap.getCameraPosition().target.latitude);
            this.userLocation.setLongitude(this.map.getCameraPosition().target.longitude);
        }
        this.adapter.setCustomLocation(this.userLocation);
        this.adapter.fetchLocationAddress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMapInit$24(Location location) {
        int i;
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert == null || chatAttachAlert.baseFragment == null) {
            return;
        }
        positionMarker(location);
        LocationActivityAdapter locationActivityAdapter = this.adapter;
        if (locationActivityAdapter != null && (((i = this.locationType) == 7 || i == 8) && !this.userLocationMoved)) {
            locationActivityAdapter.setCustomLocation(this.userLocation);
        }
        getLocationController().setMapLocation(location, this.isFirstLocation);
        this.isFirstLocation = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onMapInit$25(IMapsProvider.IMarker iMarker) {
        if (!(iMarker.getTag() instanceof VenueLocation)) {
            return true;
        }
        this.markerImageView.setVisibility(4);
        if (!this.userLocationMoved) {
            ImageView imageView = this.locationButton;
            int i = Theme.key_location_actionIcon;
            imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            this.locationButton.setTag(Integer.valueOf(i));
            this.userLocationMoved = true;
        }
        this.overlayView.addInfoView(iMarker);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMapInit$26() {
        MapOverlayView mapOverlayView = this.overlayView;
        if (mapOverlayView != null) {
            mapOverlayView.updatePositions();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMapInit$27() {
        if (this.loadingMapView.getTag() == null) {
            this.loadingMapView.animate().alpha(0.0f).setDuration(180L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMapInit$28(AlertDialog alertDialog, int i) {
        if (getParentActivity() == null) {
            return;
        }
        try {
            getParentActivity().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: resetMapPosition, reason: merged with bridge method [inline-methods] */
    public void lambda$positionMarker$30(double d, double d2) {
        IMapsProvider.ICameraUpdate iCameraUpdateNewCameraUpdateLatLngZoom;
        if (this.map == null) {
            return;
        }
        if (d != 0.0d && d2 != 0.0d) {
            Location location = new Location(_UrlKt.FRAGMENT_ENCODE_SET);
            this.userLocation = location;
            location.reset();
            this.userLocation.setLatitude(d);
            this.userLocation.setLongitude(d2);
        } else {
            Location location2 = new Location(_UrlKt.FRAGMENT_ENCODE_SET);
            this.myLocation = location2;
            location2.reset();
            this.myLocation.setLatitude(d);
            this.myLocation.setLongitude(d2);
        }
        IMapsProvider.LatLng latLng = new IMapsProvider.LatLng(d, d2);
        if (d != 0.0d && d2 != 0.0d) {
            iCameraUpdateNewCameraUpdateLatLngZoom = ApplicationLoader.getMapsProvider().newCameraUpdateLatLngZoom(latLng, this.map.getMaxZoomLevel() - 4.0f);
        } else {
            iCameraUpdateNewCameraUpdateLatLngZoom = ApplicationLoader.getMapsProvider().newCameraUpdateLatLngZoom(latLng, this.map.getMinZoomLevel());
        }
        this.forceUpdate = iCameraUpdateNewCameraUpdateLatLngZoom;
        this.map.moveCamera(iCameraUpdateNewCameraUpdateLatLngZoom);
        if (d != 0.0d && d2 != 0.0d) {
            this.adapter.setCustomLocation(this.userLocation);
        } else {
            this.adapter.setGpsLocation(this.myLocation);
        }
        this.adapter.fetchLocationAddress();
        this.listView.smoothScrollBy(0, 1);
        this.ignoreIdleCamera = true;
        if (d == 0.0d || d2 == 0.0d) {
            return;
        }
        this.userLocationMoved = true;
        showSearchPlacesButton(false);
        if (this.locationType != 8) {
            this.adapter.searchPlacesWithQuery(null, this.userLocation, true, true);
        }
        this.searchedForCustomLocations = true;
        showResults();
    }

    private void removeInfoView() {
        if (this.lastPressedMarker != null) {
            this.markerImageView.setVisibility(0);
            this.overlayView.removeInfoView(this.lastPressedMarker);
            this.lastPressedMarker = null;
            this.lastPressedVenue = null;
            this.lastPressedMarkerView = null;
        }
    }

    private void showResults() {
        if (this.adapter.getItemCount() != 0 && this.layoutManager.findFirstVisibleItemPosition() == 0) {
            int iM1124dp = AndroidUtilities.m1124dp(258.0f) + this.listView.getChildAt(0).getTop();
            if (iM1124dp < 0 || iM1124dp > AndroidUtilities.m1124dp(258.0f)) {
                return;
            }
            this.listView.smoothScrollBy(0, iM1124dp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateClipView() {
        int y;
        int iMin;
        IMapsProvider.LatLng latLng;
        Location location;
        IMapsProvider.IMap iMap;
        if (this.mapView == null || this.mapViewClip == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(0);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            y = (int) viewHolderFindViewHolderForAdapterPosition.itemView.getY();
            iMin = this.overScrollHeight + Math.min(y, 0);
        } else {
            y = -this.mapViewClip.getMeasuredHeight();
            iMin = 0;
        }
        if (((FrameLayout.LayoutParams) this.mapViewClip.getLayoutParams()) != null) {
            if (iMin <= 0) {
                if (this.mapView.getView().getVisibility() == 0) {
                    this.mapView.getView().setVisibility(4);
                    this.mapViewClip.setVisibility(4);
                    MapOverlayView mapOverlayView = this.overlayView;
                    if (mapOverlayView != null) {
                        mapOverlayView.setVisibility(4);
                    }
                }
                this.mapView.getView().setTranslationY(y);
                return;
            }
            if (this.mapView.getView().getVisibility() == 4) {
                this.mapView.getView().setVisibility(0);
                this.mapViewClip.setVisibility(0);
                MapOverlayView mapOverlayView2 = this.overlayView;
                if (mapOverlayView2 != null) {
                    mapOverlayView2.setVisibility(0);
                }
            }
            int iMax = Math.max(0, (-((y - this.mapHeight) + this.overScrollHeight)) / 2);
            int iMin2 = this.mapHeight - this.overScrollHeight;
            float fMax = 1.0f - Math.max(0.0f, Math.min(1.0f, (this.listView.getPaddingTop() - y) / (this.listView.getPaddingTop() - iMin2)));
            int i = this.clipSize;
            if (this.locationDenied && isTypeSend()) {
                iMin2 += Math.min(y, this.listView.getPaddingTop());
            }
            this.clipSize = (int) (iMin2 * fMax);
            float f = iMax;
            this.mapView.getView().setTranslationY(f);
            this.nonClipSize = iMin2 - this.clipSize;
            this.mapViewClip.invalidate();
            this.mapViewClip.setTranslationY(y - this.nonClipSize);
            IMapsProvider.IMap iMap2 = this.map;
            if (iMap2 != null) {
                iMap2.setPadding(0, AndroidUtilities.m1124dp(6.0f), 0, this.clipSize + AndroidUtilities.m1124dp(6.0f));
                this.map.setLogoPadding(0, Math.max(0, (-(y - this.nonClipSize)) / 2) + AndroidUtilities.m1124dp(6.0f));
            }
            MapOverlayView mapOverlayView3 = this.overlayView;
            if (mapOverlayView3 != null) {
                mapOverlayView3.setTranslationY(f);
            }
            float fMin = Math.min(Math.max(this.nonClipSize - y, 0), (this.mapHeight - this.mapTypeButton.getMeasuredHeight()) - AndroidUtilities.m1124dp(80.0f));
            this.mapTypeButton.setTranslationY(fMin);
            this.searchAreaButton.setTranslation(fMin);
            this.locationButton.setTranslationY(-this.clipSize);
            ImageView imageView = this.markerImageView;
            int iM1124dp = (((this.mapHeight - this.clipSize) / 2) - AndroidUtilities.m1124dp(48.0f)) + iMax;
            this.markerTop = iM1124dp;
            imageView.setTranslationY(iM1124dp);
            if (i != this.clipSize) {
                IMapsProvider.IMarker iMarker = this.lastPressedMarker;
                if (iMarker != null) {
                    latLng = new IMapsProvider.LatLng(iMarker.getPosition().latitude, this.lastPressedMarker.getPosition().longitude);
                } else if (this.userLocationMoved && (location = this.userLocation) != null) {
                    latLng = new IMapsProvider.LatLng(location.getLatitude(), this.userLocation.getLongitude());
                } else {
                    Location location2 = this.myLocation;
                    latLng = location2 != null ? new IMapsProvider.LatLng(location2.getLatitude(), this.myLocation.getLongitude()) : null;
                }
                if (latLng != null && (iMap = this.map) != null) {
                    iMap.moveCamera(ApplicationLoader.getMapsProvider().newCameraUpdateLatLng(latLng));
                }
            }
            if (this.locationDenied && isTypeSend()) {
                int itemCount = this.adapter.getItemCount();
                for (int i2 = 1; i2 < itemCount; i2++) {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.listView.findViewHolderForAdapterPosition(i2);
                    if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                        viewHolderFindViewHolderForAdapterPosition2.itemView.setTranslationY(this.listView.getPaddingTop() - y);
                    }
                }
            }
        }
    }

    private boolean isTypeSend() {
        int i = this.locationType;
        return i == 0 || i == 1;
    }

    private int buttonsHeight() {
        int iM1124dp = AndroidUtilities.m1124dp(66.0f);
        int i = this.locationType;
        return (i == 1 || i == 7 || i == 8) ? iM1124dp + AndroidUtilities.m1124dp(66.0f) : iM1124dp;
    }

    private void fixLayoutInternal(boolean z) {
        FrameLayout.LayoutParams layoutParams;
        if (getMeasuredHeight() == 0 || this.mapView == null) {
            return;
        }
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
        int iButtonsHeight = ((AndroidUtilities.displaySize.y - currentActionBarHeight) - buttonsHeight()) - AndroidUtilities.m1124dp(90.0f);
        int iM1124dp = AndroidUtilities.m1124dp(189.0f);
        this.overScrollHeight = iM1124dp;
        if (!this.locationDenied || !isTypeSend()) {
            iButtonsHeight = Math.min(AndroidUtilities.m1124dp(310.0f), iButtonsHeight);
        }
        this.mapHeight = Math.max(iM1124dp, iButtonsHeight);
        if (this.locationDenied && isTypeSend()) {
            this.overScrollHeight = this.mapHeight;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.listView.getLayoutParams();
        layoutParams2.topMargin = currentActionBarHeight;
        this.listView.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.mapViewClip.getLayoutParams();
        layoutParams3.topMargin = currentActionBarHeight;
        layoutParams3.height = this.mapHeight;
        this.mapViewClip.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.searchListView.getLayoutParams();
        layoutParams4.topMargin = currentActionBarHeight;
        this.searchListView.setLayoutParams(layoutParams4);
        this.adapter.setOverScrollHeight(((this.locationDenied && isTypeSend()) ? this.overScrollHeight - this.listView.getPaddingTop() : this.overScrollHeight) + AndroidUtilities.m1124dp(16.0f));
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.mapView.getView().getLayoutParams();
        if (layoutParams5 != null) {
            layoutParams5.height = this.mapHeight + AndroidUtilities.m1124dp(10.0f);
            this.mapView.getView().setLayoutParams(layoutParams5);
        }
        MapOverlayView mapOverlayView = this.overlayView;
        if (mapOverlayView != null && (layoutParams = (FrameLayout.LayoutParams) mapOverlayView.getLayoutParams()) != null) {
            layoutParams.height = this.mapHeight + AndroidUtilities.m1124dp(10.0f);
            this.overlayView.setLayoutParams(layoutParams);
        }
        this.adapter.notifyDataSetChanged();
        updateClipView();
    }

    @SuppressLint({"MissingPermission"})
    private Location getLastLocation() {
        LocationManager locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
        List<String> providers = locationManager.getProviders(true);
        Location lastKnownLocation = null;
        for (int size = providers.size() - 1; size >= 0; size--) {
            lastKnownLocation = locationManager.getLastKnownLocation(providers.get(size));
            if (lastKnownLocation != null) {
                return lastKnownLocation;
            }
        }
        return lastKnownLocation;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0082 -> B:39:0x008b). Please report as a decompilation issue!!! */
    private void positionMarker() {
        final ChatAttachAlertLocationLayout chatAttachAlertLocationLayout;
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        if (chatAttachAlert.isStoryLocationPicker) {
            if (chatAttachAlert.storyLocationPickerLatLong != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$positionMarker$29();
                    }
                });
                return;
            }
            if (!this.locationDenied) {
                File file = chatAttachAlert.storyLocationPickerPhotoFile;
                boolean z = chatAttachAlert.storyLocationPickerFileIsVideo;
                if (file == null) {
                    chatAttachAlertLocationLayout = this;
                    Location lastLocation = getLastLocation();
                    chatAttachAlertLocationLayout.myLocation = lastLocation;
                    positionMarker(lastLocation);
                } else if (z) {
                    try {
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
                        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(23);
                        if (strExtractMetadata != null) {
                            Matcher matcher = Pattern.compile("([+\\-][0-9.]+)([+\\-][0-9.]+)").matcher(strExtractMetadata);
                            if (matcher.find() && matcher.groupCount() == 2) {
                                String strGroup = matcher.group(1);
                                String strGroup2 = matcher.group(2);
                                final double d = Double.parseDouble(strGroup);
                                final double d2 = Double.parseDouble(strGroup2);
                                chatAttachAlertLocationLayout = this;
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$positionMarker$30(d, d2);
                                    }
                                });
                            }
                        }
                    } catch (NumberFormatException | Exception unused) {
                    }
                    chatAttachAlertLocationLayout = this;
                    Location lastLocation2 = getLastLocation();
                    chatAttachAlertLocationLayout.myLocation = lastLocation2;
                    positionMarker(lastLocation2);
                } else {
                    chatAttachAlertLocationLayout = this;
                    ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
                    final float[] fArr = new float[2];
                    if (exifInterface.getLatLong(fArr)) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$positionMarker$31(fArr);
                            }
                        });
                    } else {
                        Location lastLocation22 = getLastLocation();
                        chatAttachAlertLocationLayout.myLocation = lastLocation22;
                        positionMarker(lastLocation22);
                    }
                }
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$positionMarker$32();
                }
            });
            return;
        }
        Location lastLocation3 = getLastLocation();
        this.myLocation = lastLocation3;
        positionMarker(lastLocation3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$positionMarker$29() {
        double[] dArr = this.parentAlert.storyLocationPickerLatLong;
        lambda$positionMarker$30(dArr[0], dArr[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$positionMarker$31(float[] fArr) {
        lambda$positionMarker$30(fArr[0], fArr[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$positionMarker$32() {
        lambda$positionMarker$30(0.0d, 0.0d);
    }

    private void positionMarker(Location location) {
        if (location == null) {
            return;
        }
        Location location2 = new Location(location);
        this.myLocation = location2;
        if (this.map != null) {
            IMapsProvider.LatLng latLng = new IMapsProvider.LatLng(location.getLatitude(), location.getLongitude());
            LocationActivityAdapter locationActivityAdapter = this.adapter;
            if (locationActivityAdapter != null) {
                if (!this.searchedForCustomLocations && this.locationType != 8) {
                    locationActivityAdapter.searchPlacesWithQuery(null, this.myLocation, true);
                }
                this.adapter.setGpsLocation(this.myLocation);
            }
            if (this.userLocationMoved) {
                return;
            }
            this.userLocation = new Location(location);
            if (this.firstWas) {
                this.map.animateCamera(ApplicationLoader.getMapsProvider().newCameraUpdateLatLng(latLng));
                return;
            } else {
                this.firstWas = true;
                this.map.moveCamera(ApplicationLoader.getMapsProvider().newCameraUpdateLatLngZoom(latLng, this.map.getMaxZoomLevel() - 4.0f));
                return;
            }
        }
        this.adapter.setGpsLocation(location2);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.locationPermissionGranted) {
            this.locationDenied = false;
            this.askedForLocation = false;
            positionMarker();
            LocationActivityAdapter locationActivityAdapter = this.adapter;
            if (locationActivityAdapter != null) {
                locationActivityAdapter.setMyLocationDenied(this.locationDenied, this.askedForLocation);
            }
            LocationActivitySearchAdapter locationActivitySearchAdapter = this.searchAdapter;
            if (locationActivitySearchAdapter != null) {
                locationActivitySearchAdapter.setMyLocationDenied(this.locationDenied);
            }
            IMapsProvider.IMap iMap = this.map;
            if (iMap != null) {
                try {
                    iMap.setMyLocationEnabled(true);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        } else if (i == NotificationCenter.locationPermissionDenied) {
            this.locationDenied = true;
            this.askedForLocation = false;
            LocationActivityAdapter locationActivityAdapter2 = this.adapter;
            if (locationActivityAdapter2 != null) {
                locationActivityAdapter2.setMyLocationDenied(true, false);
            }
            LocationActivitySearchAdapter locationActivitySearchAdapter2 = this.searchAdapter;
            if (locationActivitySearchAdapter2 != null) {
                locationActivitySearchAdapter2.setMyLocationDenied(this.locationDenied);
            }
        }
        fixLayoutInternal(true);
        this.searchItem.setVisibility(((this.locationDenied && !this.parentAlert.isStoryLocationPicker) || this.parentAlert.isBizLocationPicker) ? 8 : 0);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onResume() {
        IMapsProvider.IMapView iMapView = this.mapView;
        if (iMapView != null && this.mapsInitialized) {
            try {
                iMapView.onResume();
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
        }
        this.onResumeCalled = true;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        this.parentAlert.actionBar.setTitle(LocaleController.getString(C2888R.string.ShareLocation));
        if (this.mapView.getView().getParent() == null) {
            this.mapViewClip.addView(this.mapView.getView(), 0, LayoutHelper.createFrame(-1, this.overScrollHeight + AndroidUtilities.m1124dp(10.0f), 51));
            this.mapViewClip.addView(this.overlayView, 1, LayoutHelper.createFrame(-1, this.overScrollHeight + AndroidUtilities.m1124dp(10.0f), 51));
            this.mapViewClip.addView(this.loadingMapView, 2, LayoutHelper.createFrame(-1, -1.0f));
        }
        this.searchItem.setVisibility(0);
        IMapsProvider.IMapView iMapView = this.mapView;
        if (iMapView != null && this.mapsInitialized) {
            try {
                iMapView.onResume();
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
        }
        this.onResumeCalled = true;
        IMapsProvider.IMap iMap = this.map;
        if (iMap != null) {
            try {
                iMap.setMyLocationEnabled(true);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        fixLayoutInternal(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onShow$33();
            }
        }, this.parentAlert.delegate.needEnterComment() ? 200L : 0L);
        this.layoutManager.scrollToPositionWithOffset(0, 0);
        updateClipView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShow$33() {
        String[] strArr;
        if (this.checkPermission) {
            int i = Build.VERSION.SDK_INT;
            Activity parentActivity = getParentActivity();
            if (parentActivity != null) {
                this.checkPermission = false;
                if (parentActivity.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
                    ChatAttachAlert chatAttachAlert = this.parentAlert;
                    if (chatAttachAlert.isStoryLocationPicker && chatAttachAlert.storyLocationPickerPhotoFile != null && i >= 29) {
                        strArr = new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_MEDIA_LOCATION"};
                    } else {
                        strArr = new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
                    }
                    this.askedForLocation = true;
                    LocationActivityAdapter locationActivityAdapter = this.adapter;
                    if (locationActivityAdapter != null) {
                        locationActivityAdapter.setMyLocationDenied(this.locationDenied, true);
                    }
                    parentActivity.requestPermissions(strArr, 2);
                    return;
                }
                if (i >= 29) {
                    ChatAttachAlert chatAttachAlert2 = this.parentAlert;
                    if (!chatAttachAlert2.isStoryLocationPicker || chatAttachAlert2.storyLocationPickerPhotoFile == null || parentActivity.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                        return;
                    }
                    this.askedForLocation = true;
                    LocationActivityAdapter locationActivityAdapter2 = this.adapter;
                    if (locationActivityAdapter2 != null) {
                        locationActivityAdapter2.setMyLocationDenied(this.locationDenied, true);
                    }
                    parentActivity.requestPermissions(new String[]{"android.permission.ACCESS_MEDIA_LOCATION"}, Opcodes.DIV_INT_LIT16);
                }
            }
        }
    }

    public void setDelegate(LocationActivityDelegate locationActivityDelegate) {
        this.delegate = locationActivityDelegate;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertLocationLayout$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$34();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.mapViewClip, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_dialogBackground));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        arrayList.add(new ThemeDescription(actionBarMenuItem != null ? actionBarMenuItem.getSearchField() : null, ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, Theme.key_dialogTextBlack));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        ImageView imageView = this.emptyImageView;
        int i = ThemeDescription.FLAG_IMAGECOLOR;
        int i2 = Theme.key_dialogEmptyImage;
        arrayList.add(new ThemeDescription(imageView, i, null, null, null, null, i2));
        TextView textView = this.emptyTitleTextView;
        int i3 = ThemeDescription.FLAG_TEXTCOLOR;
        int i4 = Theme.key_dialogEmptyText;
        arrayList.add(new ThemeDescription(textView, i3, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.emptySubtitleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        ImageView imageView2 = this.locationButton;
        int i5 = ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_CHECKTAG;
        int i6 = Theme.key_location_actionIcon;
        arrayList.add(new ThemeDescription(imageView2, i5, null, null, null, null, i6));
        ImageView imageView3 = this.locationButton;
        int i7 = ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_CHECKTAG;
        int i8 = Theme.key_location_actionActiveIcon;
        arrayList.add(new ThemeDescription(imageView3, i7, null, null, null, null, i8));
        ImageView imageView4 = this.locationButton;
        int i9 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i10 = Theme.key_location_actionBackground;
        arrayList.add(new ThemeDescription(imageView4, i9, null, null, null, null, i10));
        ImageView imageView5 = this.locationButton;
        int i11 = ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE;
        int i12 = Theme.key_location_actionPressedBackground;
        arrayList.add(new ThemeDescription(imageView5, i11, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.mapTypeButton, 0, null, null, null, themeDescriptionDelegate, i6));
        arrayList.add(new ThemeDescription(this.mapTypeButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.mapTypeButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.searchAreaButton, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.searchAreaButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.searchAreaButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(null, 0, null, null, Theme.avatarDrawables, themeDescriptionDelegate, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, null, Theme.key_location_liveLocationProgress));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, null, Theme.key_location_placeLocationBackground));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, null, Theme.key_dialog_liveLocationProgress));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_CHECKTAG, new Class[]{SendLocationCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_location_sendLocationIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_CHECKTAG, new Class[]{SendLocationCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_location_sendLiveLocationIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_CHECKTAG, new Class[]{SendLocationCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_location_sendLocationBackground));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{SendLocationCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_location_sendLiveLocationBackground));
        int i13 = Theme.key_windowBackgroundWhiteGrayText3;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SendLocationCell.class}, new String[]{"accurateTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{SendLocationCell.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_location_sendLiveLocationText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{SendLocationCell.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_location_sendLocationText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationDirectionCell.class}, new String[]{"buttonTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_buttonText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{LocationDirectionCell.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_addButton));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{LocationDirectionCell.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_featuredStickers_addButtonPressed));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogTextBlue2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{LocationCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        int i14 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationCell.class}, new String[]{"addressTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.searchListView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{LocationCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{LocationCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{LocationCell.class}, new String[]{"addressTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SharingLiveLocationCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SharingLiveLocationCell.class}, new String[]{"distanceTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationLoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationLoadingCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationLoadingCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationPoweredCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{LocationPoweredCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{LocationPoweredCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$34() {
        this.mapTypeButton.setIconColor(getThemedColor(Theme.key_location_actionIcon));
        this.mapTypeButton.redrawPopup(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        this.mapTypeButton.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        this.mapTypeButton.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem), false);
        if (this.map != null) {
            if (isActiveThemeDark()) {
                if (this.currentMapStyleDark) {
                    return;
                }
                this.currentMapStyleDark = true;
                this.map.setMapStyle(ApplicationLoader.getMapsProvider().loadRawResourceStyle(ApplicationLoader.applicationContext, C2888R.raw.mapstyle_night));
                return;
            }
            if (this.currentMapStyleDark) {
                this.currentMapStyleDark = false;
                this.map.setMapStyle(null);
            }
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionStart(boolean z, int i) {
        if (z) {
            this.adapter.animated = false;
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onPanTransitionEnd() {
        LocationActivityAdapter locationActivityAdapter = this.adapter;
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        locationActivityAdapter.animated = (chatAttachAlert == null || chatAttachAlert.isKeyboardVisible()) ? false : true;
    }
}
