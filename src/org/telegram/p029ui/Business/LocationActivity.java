package org.telegram.p029ui.Business;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.location.Address;
import android.location.Geocoder;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedColor;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CircularProgressDrawable;
import org.telegram.p029ui.Components.ClipRoundedDrawable;
import org.telegram.p029ui.Components.CrossfadeDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.LocationActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class LocationActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private String address;
    private boolean clearVisible;
    private TLRPC.TL_businessLocation currentLocation;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private EditTextBoldCursor editText;
    private FrameLayout editTextContainer;
    private TLRPC.GeoPoint geo;
    private boolean ignoreEditText;
    private UniversalRecyclerView listView;
    private boolean mapAddress;
    private ClipRoundedDrawable mapLoadingDrawable;
    private View mapMarker;
    private BackupImageView mapPreview;
    private FrameLayout mapPreviewContainer;
    private boolean valueSet;
    final int MAX_NAME_LENGTH = 96;
    private int shiftDp = -4;
    private final int BUTTON_MAP = 1;
    private final int BUTTON_CLEAR = 2;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.BusinessLocation));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Business.LocationActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (LocationActivity.this.onBackPressed(true)) {
                        LocationActivity.this.finishFragment();
                    }
                } else if (i == 1) {
                    LocationActivity.this.processDone();
                }
            }
        });
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.ic_ab_done).mutate();
        int i = Theme.key_actionBarDefaultIcon;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        this.doneButtonDrawable = new CrossfadeDrawable(drawableMutate, new CircularProgressDrawable(Theme.getColor(i)));
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, this.doneButtonDrawable, AndroidUtilities.m1124dp(56.0f), LocaleController.getString(C2888R.string.Done));
        checkDone(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext()) { // from class: org.telegram.ui.Business.LocationActivity.2
            AnimatedTextView.AnimatedTextDrawable limit;
            AnimatedColor limitColor = new AnimatedColor(this);
            private int limitCount;

            {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
                this.limit = animatedTextDrawable;
                animatedTextDrawable.setAnimationProperties(0.2f, 0L, 160L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.limit.setTextSize(AndroidUtilities.m1124dp(15.33f));
                this.limit.setCallback(this);
                this.limit.setGravity(5);
            }

            @Override // android.widget.TextView, android.view.View
            protected boolean verifyDrawable(Drawable drawable) {
                return drawable == this.limit || super.verifyDrawable(drawable);
            }

            @Override // org.telegram.p029ui.Components.EditTextEffects, android.widget.TextView
            protected void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                super.onTextChanged(charSequence, i2, i3, i4);
                if (this.limit != null) {
                    this.limitCount = 96 - charSequence.length();
                    this.limit.cancelAnimation();
                    AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.limit;
                    int i5 = this.limitCount;
                    String str = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (i5 <= 12) {
                        str = _UrlKt.FRAGMENT_ENCODE_SET + this.limitCount;
                    }
                    animatedTextDrawable.setText(str);
                }
            }

            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.limit.setTextColor(this.limitColor.set(Theme.getColor(this.limitCount < 0 ? Theme.key_text_RedRegular : Theme.key_dialogSearchHint, LocationActivity.this.getResourceProvider())));
                this.limit.setBounds(getScrollX(), 0, getScrollX() + getWidth(), getHeight());
                this.limit.draw(canvas);
            }
        };
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 17.0f);
        this.editText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor2.setTextColor(Theme.getColor(i2));
        this.editText.setBackgroundDrawable(null);
        this.editText.setMaxLines(5);
        this.editText.setSingleLine(false);
        this.editText.setPadding(0, 0, AndroidUtilities.m1124dp(42.0f), 0);
        this.editText.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        this.editText.setInputType(180225);
        this.editText.setHint(LocaleController.getString(C2888R.string.BusinessLocationAddress));
        this.editText.setCursorColor(Theme.getColor(i2));
        this.editText.setCursorSize(AndroidUtilities.m1124dp(19.0f));
        this.editText.setCursorWidth(1.5f);
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Business.LocationActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (LocationActivity.this.ignoreEditText) {
                    return;
                }
                LocationActivity.this.mapAddress = false;
                LocationActivity.this.address = editable.toString();
                LocationActivity.this.checkDone(true);
            }
        });
        this.editText.setFilters(new InputFilter[]{new InputFilter() { // from class: org.telegram.ui.Business.LocationActivity.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i3, int i4, Spanned spanned, int i5, int i6) {
                if (charSequence == null) {
                    return null;
                }
                String string = charSequence.toString();
                if (string.contains("\n")) {
                    return string.replaceAll("\n", _UrlKt.FRAGMENT_ENCODE_SET);
                }
                return null;
            }
        }});
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.editTextContainer = frameLayout2;
        frameLayout2.addView(this.editText, LayoutHelper.createFrame(-1, -1.0f, 48, 21.0f, 15.0f, 21.0f, 15.0f));
        FrameLayout frameLayout3 = this.editTextContainer;
        int i3 = Theme.key_windowBackgroundWhite;
        frameLayout3.setBackgroundColor(getThemedColor(i3));
        EditTextBoldCursor editTextBoldCursor3 = this.editText;
        if (editTextBoldCursor3 != null) {
            this.ignoreEditText = true;
            editTextBoldCursor3.setText(this.address);
            EditTextBoldCursor editTextBoldCursor4 = this.editText;
            editTextBoldCursor4.setSelection(editTextBoldCursor4.getText().length());
            this.ignoreEditText = false;
        }
        this.mapPreview = new BackupImageView(context) { // from class: org.telegram.ui.Business.LocationActivity.5
            @Override // org.telegram.p029ui.Components.BackupImageView
            protected ImageReceiver createImageReciever() {
                return new ImageReceiver(this) { // from class: org.telegram.ui.Business.LocationActivity.5.1
                    @Override // org.telegram.messenger.ImageReceiver
                    protected boolean setImageBitmapByKey(Drawable drawable, String str, int i4, boolean z, int i5) {
                        if (drawable != null && i4 != 1) {
                            LocationActivity.this.mapMarker.animate().alpha(1.0f).translationY(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_BACK).setDuration(250L).start();
                        }
                        return super.setImageBitmapByKey(drawable, str, i4, z, i5);
                    }
                };
            }

            @Override // android.view.View
            protected void onMeasure(int i4, int i5) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(240.0f), TLObject.FLAG_30));
            }

            @Override // org.telegram.p029ui.Components.BackupImageView, android.view.View
            protected boolean verifyDrawable(Drawable drawable) {
                return drawable == LocationActivity.this.mapLoadingDrawable || super.verifyDrawable(drawable);
            }
        };
        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(C2888R.raw.map_placeholder, Theme.key_chat_outLocationIcon, 0.2f);
        svgThumb.setColorKey(i2, getResourceProvider());
        svgThumb.setAspectCenter(true);
        svgThumb.setParent(this.mapPreview.getImageReceiver());
        ClipRoundedDrawable clipRoundedDrawable = new ClipRoundedDrawable(svgThumb);
        this.mapLoadingDrawable = clipRoundedDrawable;
        clipRoundedDrawable.setCallback(this.mapPreview);
        this.mapPreview.setBackgroundColor(getThemedColor(i3));
        this.mapMarker = new View(context) { // from class: org.telegram.ui.Business.LocationActivity.6
            final AvatarDrawable avatarDrawable;
            final ImageReceiver avatarImage;
            final Drawable pin = getContext().getResources().getDrawable(C2888R.drawable.map_pin_photo).mutate();

            {
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                this.avatarDrawable = avatarDrawable;
                ImageReceiver imageReceiver = new ImageReceiver(this);
                this.avatarImage = imageReceiver;
                avatarDrawable.setInfo(LocationActivity.this.getUserConfig().getCurrentUser());
                imageReceiver.setForUserOrChat(LocationActivity.this.getUserConfig().getCurrentUser(), avatarDrawable);
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                this.pin.setBounds(0, 0, AndroidUtilities.m1124dp(62.0f), AndroidUtilities.m1124dp(85.0f));
                this.pin.draw(canvas);
                this.avatarImage.setRoundRadius(AndroidUtilities.m1124dp(62.0f));
                this.avatarImage.setImageCoords(AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(50.0f));
                this.avatarImage.draw(canvas);
            }

            @Override // android.view.View
            protected void onMeasure(int i4, int i5) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(62.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(85.0f), TLObject.FLAG_30));
            }
        };
        FrameLayout frameLayout4 = new FrameLayout(context);
        this.mapPreviewContainer = frameLayout4;
        frameLayout4.addView(this.mapPreview, LayoutHelper.createFrame(-1, -1.0f));
        this.mapPreviewContainer.addView(this.mapMarker, LayoutHelper.createFrame(-2, -2.0f, 17, 0.0f, -31.0f, 0.0f, 0.0f));
        updateMapPreview();
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null);
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.adapter.setApplyBackground(false);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.actionBar.setAdaptiveBackground(this.listView);
        setValue();
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.userInfoDidLoad) {
            setValue();
        }
    }

    private void setValue() {
        UniversalAdapter universalAdapter;
        if (this.valueSet) {
            return;
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        if (userFull == null) {
            getMessagesController().loadUserInfo(getUserConfig().getCurrentUser(), true, getClassGuid());
            return;
        }
        TLRPC.TL_businessLocation tL_businessLocation = userFull.business_location;
        this.currentLocation = tL_businessLocation;
        if (tL_businessLocation != null) {
            this.geo = tL_businessLocation.geo_point;
            this.address = tL_businessLocation.address;
        } else {
            this.geo = null;
            this.address = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        EditTextBoldCursor editTextBoldCursor = this.editText;
        if (editTextBoldCursor != null) {
            this.ignoreEditText = true;
            editTextBoldCursor.setText(this.address);
            EditTextBoldCursor editTextBoldCursor2 = this.editText;
            editTextBoldCursor2.setSelection(editTextBoldCursor2.getText().length());
            this.ignoreEditText = false;
        }
        updateMapPreview();
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView != null && (universalAdapter = universalRecyclerView.adapter) != null) {
            universalAdapter.update(true);
        }
        this.valueSet = true;
    }

    private void updateMapPreview() {
        BackupImageView backupImageView;
        View view = this.mapMarker;
        if (view == null || (backupImageView = this.mapPreview) == null) {
            return;
        }
        if (this.geo != null) {
            view.setAlpha(0.0f);
            this.mapMarker.setTranslationY(-AndroidUtilities.m1124dp(12.0f));
            int measuredWidth = this.mapPreview.getMeasuredWidth() <= 0 ? AndroidUtilities.displaySize.x : this.mapPreview.getMeasuredWidth();
            float f = AndroidUtilities.density;
            int i = (int) (measuredWidth / f);
            int iMin = Math.min(2, (int) Math.ceil(f));
            BackupImageView backupImageView2 = this.mapPreview;
            TLRPC.GeoPoint geoPoint = this.geo;
            backupImageView2.setImage(ImageLocation.getForWebFile(WebFile.createWithGeoPoint(geoPoint.lat, geoPoint._long, 0L, iMin * i, iMin * 240, 15, iMin)), i + "_240", this.mapLoadingDrawable, 0, (Object) null);
            return;
        }
        backupImageView.setImageBitmap(null);
    }

    public boolean hasChanges() {
        TLRPC.GeoPoint geoPoint;
        if (((this.geo == null && TextUtils.isEmpty(this.address)) ? false : true) != (this.currentLocation != null)) {
            return true;
        }
        boolean z = (this.geo == null && TextUtils.isEmpty(this.address)) ? false : true;
        TLRPC.TL_businessLocation tL_businessLocation = this.currentLocation;
        if (z != ((tL_businessLocation == null || (tL_businessLocation.geo_point instanceof TLRPC.TL_geoPointEmpty)) ? false : true)) {
            return true;
        }
        if (!TextUtils.equals(this.address, tL_businessLocation != null ? tL_businessLocation.address : _UrlKt.FRAGMENT_ENCODE_SET)) {
            return true;
        }
        TLRPC.GeoPoint geoPoint2 = this.geo;
        boolean z2 = geoPoint2 != null;
        TLRPC.TL_businessLocation tL_businessLocation2 = this.currentLocation;
        if (z2 != ((tL_businessLocation2 == null || tL_businessLocation2.geo_point == null) ? false : true)) {
            return true;
        }
        return geoPoint2 != null && (tL_businessLocation2 == null || (geoPoint = tL_businessLocation2.geo_point) == null || !((geoPoint instanceof TLRPC.TL_geoPointEmpty) || (geoPoint2.lat == geoPoint.lat && geoPoint2._long == geoPoint._long)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDone(boolean z) {
        if (this.doneButton == null) {
            return;
        }
        boolean zHasChanges = hasChanges();
        this.doneButton.setEnabled(zHasChanges);
        if (z) {
            this.doneButton.animate().alpha(zHasChanges ? 1.0f : 0.0f).scaleX(zHasChanges ? 1.0f : 0.0f).scaleY(zHasChanges ? 1.0f : 0.0f).setDuration(180L).start();
        } else {
            this.doneButton.setAlpha(zHasChanges ? 1.0f : 0.0f);
            this.doneButton.setScaleX(zHasChanges ? 1.0f : 0.0f);
            this.doneButton.setScaleY(zHasChanges ? 1.0f : 0.0f);
        }
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (universalRecyclerView == null || universalRecyclerView.adapter == null) {
            return;
        }
        if (this.clearVisible != ((this.currentLocation == null || (this.geo == null && TextUtils.isEmpty(this.address))) ? false : true)) {
            this.listView.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        if (this.doneButtonDrawable.getProgress() > 0.0f) {
            return;
        }
        boolean z = this.geo == null && TextUtils.isEmpty(this.address);
        if (!z) {
            if (!hasChanges()) {
                finishFragment();
                return;
            }
            String str = this.address;
            String strTrim = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str.trim();
            if (TextUtils.isEmpty(strTrim) || strTrim.length() > 96) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                EditTextBoldCursor editTextBoldCursor = this.editText;
                int i = -this.shiftDp;
                this.shiftDp = i;
                AndroidUtilities.shakeViewSpring(editTextBoldCursor, i);
                return;
            }
        }
        this.doneButtonDrawable.animateToProgress(1.0f);
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        TL_account.updateBusinessLocation updatebusinesslocation = new TL_account.updateBusinessLocation();
        if (!z) {
            if (this.geo != null) {
                updatebusinesslocation.flags |= 2;
                TLRPC.TL_inputGeoPoint tL_inputGeoPoint = new TLRPC.TL_inputGeoPoint();
                updatebusinesslocation.geo_point = tL_inputGeoPoint;
                TLRPC.GeoPoint geoPoint = this.geo;
                tL_inputGeoPoint.lat = geoPoint.lat;
                tL_inputGeoPoint._long = geoPoint._long;
            }
            updatebusinesslocation.flags |= 1;
            updatebusinesslocation.address = this.address;
            if (userFull != null) {
                userFull.flags2 |= 2;
                TLRPC.TL_businessLocation tL_businessLocation = new TLRPC.TL_businessLocation();
                userFull.business_location = tL_businessLocation;
                tL_businessLocation.address = this.address;
                if (this.geo != null) {
                    tL_businessLocation.flags = 1 | tL_businessLocation.flags;
                    tL_businessLocation.geo_point = new TLRPC.TL_geoPoint();
                    TLRPC.GeoPoint geoPoint2 = userFull.business_location.geo_point;
                    TLRPC.GeoPoint geoPoint3 = this.geo;
                    geoPoint2.lat = geoPoint3.lat;
                    geoPoint2._long = geoPoint3._long;
                }
            }
        } else if (userFull != null) {
            userFull.flags2 &= -3;
            userFull.business_location = null;
        }
        getConnectionsManager().sendRequest(updatebusinesslocation, new RequestDelegate() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$processDone$1(tLObject, tL_error);
            }
        });
        getMessagesStorage().updateUserInfo(userFull, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$1(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$0(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$0(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error != null) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.showError(tL_error);
        } else if (tLObject instanceof TLRPC.TL_boolFalse) {
            this.doneButtonDrawable.animateToProgress(0.0f);
            BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
        } else {
            finishFragment();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        boolean z2 = this.geo == null && TextUtils.isEmpty(this.address);
        if (!hasChanges() || z2) {
            return super.onBackPressed(z);
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.UnsavedChanges));
            builder.setMessage(LocaleController.getString(C2888R.string.BusinessLocationUnsavedChanges));
            builder.setPositiveButton(LocaleController.getString(C2888R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onBackPressed$2(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$onBackPressed$3(alertDialog, i);
                }
            });
            showDialog(builder.create());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$2(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$3(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return !hasChanges();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(LocaleController.getString(C2888R.string.BusinessLocationInfo), C2888R.raw.biz_map));
        arrayList.add(UItem.asCustom(this.editTextContainer));
        arrayList.add(UItem.asShadow(null));
        boolean z = false;
        arrayList.add(UItem.asCheck(1, LocaleController.getString(C2888R.string.BusinessLocationMap)).setChecked(this.geo != null));
        if (this.geo != null) {
            arrayList.add(UItem.asCustom(this.mapPreviewContainer));
        }
        arrayList.add(UItem.asShadow(null));
        if (this.currentLocation != null && (this.geo != null || !TextUtils.isEmpty(this.address))) {
            z = true;
        }
        this.clearVisible = z;
        if (z) {
            arrayList.add(UItem.asButton(2, LocaleController.getString(C2888R.string.BusinessLocationClear)).red());
            arrayList.add(UItem.asShadow(null));
        }
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 == 1 || uItem.view == this.mapPreviewContainer) {
            if (this.geo == null || uItem.view == this.mapPreviewContainer) {
                showLocationAlert();
                return;
            } else {
                this.geo = null;
                this.listView.adapter.update(true);
                return;
            }
        }
        if (i2 == 2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.BusinessLocationClearTitle));
            builder.setMessage(LocaleController.getString(C2888R.string.BusinessLocationClearMessage));
            builder.setPositiveButton(LocaleController.getString(C2888R.string.Remove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda5
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i3) {
                    this.f$0.lambda$onClick$6(alertDialog, i3);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            showDialog(builder.create());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$6(AlertDialog alertDialog, int i) {
        this.doneButtonDrawable.animateToProgress(1.0f);
        TLRPC.UserFull userFull = getMessagesController().getUserFull(getUserConfig().getClientUserId());
        TL_account.updateBusinessLocation updatebusinesslocation = new TL_account.updateBusinessLocation();
        if (userFull != null) {
            userFull.business_location = null;
            userFull.flags2 &= -3;
        }
        getConnectionsManager().sendRequest(updatebusinesslocation, new RequestDelegate() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onClick$5(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$5(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onClick$4(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$4(TLRPC.TL_error tL_error, TLObject tLObject) {
        this.doneButtonDrawable.animateToProgress(0.0f);
        if (tL_error != null) {
            BulletinFactory.showError(tL_error);
        } else if (tLObject instanceof TLRPC.TL_boolFalse) {
            BulletinFactory.m1246of(this).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
        } else {
            finishFragment();
        }
    }

    private void showLocationAlert() {
        final org.telegram.p029ui.LocationActivity locationActivity = new org.telegram.p029ui.LocationActivity(8);
        if (this.geo != null) {
            TLRPC.TL_channelLocation tL_channelLocation = new TLRPC.TL_channelLocation();
            tL_channelLocation.address = this.address;
            tL_channelLocation.geo_point = this.geo;
            locationActivity.setInitialLocation(tL_channelLocation);
        }
        locationActivity.setDelegate(new LocationActivity.LocationActivityDelegate() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.LocationActivity.LocationActivityDelegate
            public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
                this.f$0.lambda$showLocationAlert$7(locationActivity, messageMedia, i, z, i2, j);
            }
        });
        if (this.geo == null && !TextUtils.isEmpty(this.address)) {
            final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.showDelayed(200L);
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showLocationAlert$9(locationActivity, alertDialog);
                }
            });
            return;
        }
        presentFragment(locationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLocationAlert$7(org.telegram.p029ui.LocationActivity locationActivity, TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        this.geo = messageMedia.geo;
        if ((TextUtils.isEmpty(this.address) && !TextUtils.isEmpty(locationActivity.getAddressName())) || this.mapAddress) {
            this.mapAddress = true;
            String addressName = locationActivity.getAddressName();
            this.address = addressName;
            if (addressName == null) {
                this.address = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            EditTextBoldCursor editTextBoldCursor = this.editText;
            if (editTextBoldCursor != null) {
                this.ignoreEditText = true;
                editTextBoldCursor.setText(this.address);
                EditTextBoldCursor editTextBoldCursor2 = this.editText;
                editTextBoldCursor2.setSelection(editTextBoldCursor2.getText().length());
                this.ignoreEditText = false;
            }
        }
        updateMapPreview();
        this.listView.adapter.update(true);
        checkDone(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLocationAlert$9(final org.telegram.p029ui.LocationActivity locationActivity, final AlertDialog alertDialog) {
        try {
            List<Address> fromLocationName = new Geocoder(getContext(), LocaleController.getInstance().getCurrentLocale()).getFromLocationName(this.address, 1);
            if (!fromLocationName.isEmpty()) {
                Address address = fromLocationName.get(0);
                TLRPC.TL_channelLocation tL_channelLocation = new TLRPC.TL_channelLocation();
                tL_channelLocation.address = this.address;
                TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
                tL_channelLocation.geo_point = tL_geoPoint;
                tL_geoPoint.lat = address.getLatitude();
                tL_channelLocation.geo_point._long = address.getLongitude();
                locationActivity.setInitialLocation(tL_channelLocation);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.LocationActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showLocationAlert$8(alertDialog, locationActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLocationAlert$8(AlertDialog alertDialog, org.telegram.p029ui.LocationActivity locationActivity) {
        alertDialog.dismiss();
        presentFragment(locationActivity);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
    }
}
