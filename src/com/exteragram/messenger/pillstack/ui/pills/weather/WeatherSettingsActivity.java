package com.exteragram.messenger.pillstack.ui.pills.weather;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.core.PillType;
import com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import java.util.ArrayList;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.ClipRoundedDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.LocationActivity;
import org.telegram.ui.Stories.recorder.Weather;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\u001e\u0010\u001a\u001a\u00020\u00192\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J0\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&H\u0014J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0014H\u0002J\b\u0010*\u001a\u00020\u0019H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherSettingsActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "mapPreviewContainer", "Landroid/widget/FrameLayout;", "mapMarker", "Landroid/view/View;", "mapLoadingDrawable", "Lorg/telegram/ui/Components/ClipRoundedDrawable;", "mapPreview", "Lorg/telegram/ui/Components/BackupImageView;", "currentGeo", "Lorg/telegram/tgnet/TLRPC$GeoPoint;", "addressContainer", "addressText", "Landroid/widget/TextView;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "needHideTitle", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "context", "Landroid/content/Context;", "updateMapPreview", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "updateLocationSetting", "useCurrent", "openMapPicker", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class WeatherSettingsActivity extends BasePreferencesActivity {
    private FrameLayout addressContainer;
    private TextView addressText;
    private TLRPC.GeoPoint currentGeo;
    private ClipRoundedDrawable mapLoadingDrawable;
    private View mapMarker;
    private BackupImageView mapPreview;
    private FrameLayout mapPreviewContainer;

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public boolean needHideTitle() {
        return true;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.WeatherPill);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        TextView textView = new TextView(context);
        this.addressText = textView;
        textView.setTextSize(1, 14.0f);
        TextView textView2 = this.addressText;
        if (textView2 == null) {
            textView2 = null;
        }
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        TextView textView3 = this.addressText;
        if (textView3 == null) {
            textView3 = null;
        }
        textView3.setGravity(17);
        TextView textView4 = this.addressText;
        if (textView4 == null) {
            textView4 = null;
        }
        textView4.setPadding(0, 0, 0, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        this.addressContainer = frameLayout;
        TextView textView5 = this.addressText;
        if (textView5 == null) {
            textView5 = null;
        }
        frameLayout.addView(textView5, LayoutHelper.createFrame(-1, -2.0f, 48, 21.0f, 15.0f, 21.0f, 15.0f));
        FrameLayout frameLayout2 = this.addressContainer;
        if (frameLayout2 == null) {
            frameLayout2 = null;
        }
        int i = Theme.key_windowBackgroundWhite;
        frameLayout2.setBackgroundColor(getThemedColor(i));
        this.mapPreview = new BackupImageView(context) { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity.createView.1
            @Override // org.telegram.ui.Components.BackupImageView
            public ImageReceiver createImageReciever() {
                final WeatherSettingsActivity weatherSettingsActivity = this;
                return new ImageReceiver(this) { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity$createView$1$createImageReciever$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(this);
                    }

                    @Override // org.telegram.messenger.ImageReceiver
                    public boolean setImageBitmapByKey(Drawable drawable, String key, int type, boolean memCache, int guid) {
                        if (drawable != null && type != 1) {
                            View view = weatherSettingsActivity.mapMarker;
                            if (view == null) {
                                view = null;
                            }
                            view.animate().alpha(1.0f).translationY(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_BACK).setDuration(250L).start();
                        }
                        return super.setImageBitmapByKey(drawable, key, type, memCache, guid);
                    }
                };
            }

            @Override // android.view.View
            public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(widthMeasureSpec), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(240.0f), TLObject.FLAG_30));
            }

            @Override // org.telegram.ui.Components.BackupImageView, android.view.View
            public boolean verifyDrawable(Drawable who) {
                return who == this.mapLoadingDrawable || super.verifyDrawable(who);
            }
        };
        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(C2807R.raw.map_placeholder, Theme.key_chat_outLocationIcon, 0.2f);
        svgThumb.setColorKey(Theme.key_windowBackgroundWhiteBlackText, this.resourceProvider);
        svgThumb.setAspectCenter(true);
        BackupImageView backupImageView = this.mapPreview;
        if (backupImageView == null) {
            backupImageView = null;
        }
        svgThumb.setParent(backupImageView.getImageReceiver());
        ClipRoundedDrawable clipRoundedDrawable = new ClipRoundedDrawable(svgThumb);
        this.mapLoadingDrawable = clipRoundedDrawable;
        BackupImageView backupImageView2 = this.mapPreview;
        if (backupImageView2 == null) {
            backupImageView2 = null;
        }
        clipRoundedDrawable.setCallback(backupImageView2);
        BackupImageView backupImageView3 = this.mapPreview;
        if (backupImageView3 == null) {
            backupImageView3 = null;
        }
        backupImageView3.setBackgroundColor(getThemedColor(i));
        this.mapMarker = new View(context, this) { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity.createView.2
            private final AvatarDrawable avatarDrawable;
            private final ImageReceiver avatarImage;
            private final Drawable pin;

            {
                super(context);
                Drawable drawable = ContextCompat.getDrawable(context, C2807R.drawable.map_pin_photo);
                if (drawable == null) {
                    f$$ExternalSyntheticBUOutline1.m215m("Required value was null.");
                    throw null;
                }
                this.pin = drawable.mutate();
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                this.avatarDrawable = avatarDrawable;
                ImageReceiver imageReceiver = new ImageReceiver(this);
                this.avatarImage = imageReceiver;
                avatarDrawable.setInfo(this.getUserConfig().getCurrentUser());
                imageReceiver.setForUserOrChat(this.getUserConfig().getCurrentUser(), avatarDrawable);
            }

            @Override // android.view.View
            public void dispatchDraw(Canvas canvas) {
                this.pin.setBounds(0, 0, AndroidUtilities.dp(62.0f), AndroidUtilities.dp(85.0f));
                this.pin.draw(canvas);
                this.avatarImage.setRoundRadius(AndroidUtilities.dp(62.0f));
                this.avatarImage.setImageCoords(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f));
                this.avatarImage.draw(canvas);
            }

            @Override // android.view.View
            public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(62.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(85.0f), TLObject.FLAG_30));
            }
        };
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.mapPreviewContainer = frameLayout3;
        BackupImageView backupImageView4 = this.mapPreview;
        if (backupImageView4 == null) {
            backupImageView4 = null;
        }
        frameLayout3.addView(backupImageView4, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout4 = this.mapPreviewContainer;
        if (frameLayout4 == null) {
            frameLayout4 = null;
        }
        View view = this.mapMarker;
        if (view == null) {
            view = null;
        }
        frameLayout4.addView(view, LayoutHelper.createFrame(-2, -2.0f, 17, 0.0f, -31.0f, 0.0f, 0.0f));
        FrameLayout frameLayout5 = this.mapPreviewContainer;
        (frameLayout5 != null ? frameLayout5 : null).setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.openMapPicker();
            }
        });
        String customWeatherLocation = PillStackConfig.getCustomWeatherLocation();
        if (customWeatherLocation != null) {
            try {
                this.currentGeo = (TLRPC.GeoPoint) ExteraConfig.getGSON().fromJson(customWeatherLocation, TLRPC.TL_geoPoint.class);
            } catch (Exception unused) {
            }
        }
        updateMapPreview();
        return super.createView(context);
    }

    private final void updateMapPreview() {
        int measuredWidth;
        TLRPC.GeoPoint geoPoint = this.currentGeo;
        if (geoPoint == null) {
            BackupImageView backupImageView = this.mapPreview;
            if (backupImageView == null) {
                backupImageView = null;
            }
            backupImageView.setImageBitmap(null);
            return;
        }
        View view = this.mapMarker;
        if (view == null) {
            view = null;
        }
        view.setAlpha(0.0f);
        View view2 = this.mapMarker;
        if (view2 == null) {
            view2 = null;
        }
        view2.setTranslationY(-AndroidUtilities.dp(12.0f));
        BackupImageView backupImageView2 = this.mapPreview;
        if (backupImageView2 == null) {
            backupImageView2 = null;
        }
        if (backupImageView2.getMeasuredWidth() <= 0) {
            measuredWidth = AndroidUtilities.displaySize.x;
        } else {
            BackupImageView backupImageView3 = this.mapPreview;
            if (backupImageView3 == null) {
                backupImageView3 = null;
            }
            measuredWidth = backupImageView3.getMeasuredWidth();
        }
        int i = (int) (measuredWidth / AndroidUtilities.density);
        int iMin = Math.min(2, (int) Math.ceil(r3));
        BackupImageView backupImageView4 = this.mapPreview;
        BackupImageView backupImageView5 = backupImageView4 == null ? null : backupImageView4;
        backupImageView5.setImage(ImageLocation.getForWebFile(WebFile.createWithGeoPoint(geoPoint.lat, geoPoint._long, 0L, iMin * i, iMin * 240, 15, iMin)), i + "_240", this.mapLoadingDrawable, 0, (Object) null);
        TextView textView = this.addressText;
        (textView != null ? textView : null).setText(PillStackConfig.getCustomWeatherAddress());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asTopView(getTitle(), LocaleController.getString(C2807R.string.WeatherPillTopInfo), "RestrictedEmoji", "🌤"));
        items.add(UItem.asButton(1, C2807R.drawable.msg_settings_old, LocaleController.getString(C2807R.string.PillStackPills)));
        items.add(UItem.asShadow());
        if (PillStackConfig.getActivePills().contains(Integer.valueOf(PillType.WEATHER.getId()))) {
            items.add(UItem.asHeader(LocaleController.getString(C2807R.string.WeatherLocation)));
            items.add(UItem.asRadio(2, LocaleController.getString(C2807R.string.CurrentLocation)).setChecked(PillStackConfig.getUseCurrentLocation()));
            items.add(UItem.asRadio(3, LocaleController.getString(C2807R.string.SelectLocation)).setChecked(true ^ PillStackConfig.getUseCurrentLocation()));
            if (PillStackConfig.getUseCurrentLocation()) {
                items.add(UItem.asShadow(LocaleController.getString(C2807R.string.WeatherSettingsInfo)));
                if (!Weather.isLocationPermissionGranted()) {
                    items.add(UItem.asButton(2, C2807R.drawable.report, LocaleController.getString(C2807R.string.WeatherLocationPermissionGrant)).red());
                    items.add(UItem.asShadow(LocaleController.getString(C2807R.string.WeatherLocationPermissionNo)));
                    return;
                } else {
                    if (Weather.isLocationEnabled()) {
                        return;
                    }
                    items.add(UItem.asButton(4, C2807R.drawable.filled_location, LocaleController.getString(C2807R.string.WeatherLocationServicesEnable)).accent());
                    items.add(UItem.asShadow(LocaleController.getString(C2807R.string.GpsDisabledAlertText)));
                    return;
                }
            }
            FrameLayout frameLayout = this.mapPreviewContainer;
            if (frameLayout == null) {
                frameLayout = null;
            }
            items.add(UItem.asCustom(5, frameLayout));
            String customWeatherAddress = PillStackConfig.getCustomWeatherAddress();
            if (customWeatherAddress != null && customWeatherAddress.length() != 0) {
                FrameLayout frameLayout2 = this.addressContainer;
                items.add(UItem.asCustom(6, frameLayout2 != null ? frameLayout2 : null));
            }
            items.add(UItem.asShadow(LocaleController.getString(C2807R.string.WeatherSettingsInfo)));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        switch (item.id) {
            case 1:
                presentFragment(new PillStackPreferencesActivity());
                break;
            case 2:
                if (!PillStackConfig.getUseCurrentLocation() || !Weather.isLocationPermissionGranted()) {
                    Weather.getUserLocation(true, new Utilities.Callback() { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            WeatherSettingsActivity.$r8$lambda$K18aKbEB02VwdgSk6OgSRlmQkY4(this.f$0, (Location) obj);
                        }
                    });
                }
                break;
            case 3:
                if (PillStackConfig.getUseCurrentLocation()) {
                    if (this.currentGeo == null) {
                        TLRPC.TL_geoPoint tL_geoPoint = new TLRPC.TL_geoPoint();
                        tL_geoPoint.lat = 55.7558d;
                        tL_geoPoint._long = 37.6173d;
                        this.currentGeo = tL_geoPoint;
                        PillStackConfig.setCustomWeatherLocation(ExteraConfig.getGSON().toJson(this.currentGeo));
                    }
                    updateLocationSetting(false);
                }
                openMapPicker();
                break;
            case 4:
                Weather.getUserLocation(true, new Utilities.Callback() { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        WeatherSettingsActivity.$r8$lambda$dyTW6MAr64ZRqyJ5JhTAxzD0hK4(this.f$0, (Location) obj);
                    }
                });
                break;
            case 5:
            case 6:
                openMapPicker();
                break;
        }
    }

    public static void $r8$lambda$K18aKbEB02VwdgSk6OgSRlmQkY4(WeatherSettingsActivity weatherSettingsActivity, Location location) {
        if (location != null) {
            weatherSettingsActivity.updateLocationSetting(true);
        }
    }

    public static void $r8$lambda$dyTW6MAr64ZRqyJ5JhTAxzD0hK4(WeatherSettingsActivity weatherSettingsActivity, Location location) {
        UniversalAdapter universalAdapter;
        if (location == null || weatherSettingsActivity.fragmentView == null || (universalAdapter = weatherSettingsActivity.getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    private final void updateLocationSetting(boolean useCurrent) {
        PillStackConfig.setUseCurrentLocation(useCurrent);
        PillStackConfig.notifySettingsChanged(PillType.WEATHER.getId());
        if (this.fragmentView != null) {
            updateMapPreview();
            UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
            if (universalAdapter != null) {
                universalAdapter.update(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openMapPicker() {
        final LocationActivity locationActivity = new LocationActivity(8);
        TLRPC.GeoPoint geoPoint = this.currentGeo;
        if (geoPoint != null) {
            TLRPC.TL_channelLocation tL_channelLocation = new TLRPC.TL_channelLocation();
            tL_channelLocation.geo_point = geoPoint;
            tL_channelLocation.address = PillStackConfig.getCustomWeatherAddress();
            locationActivity.setInitialLocation(tL_channelLocation);
        }
        locationActivity.setDelegate(new LocationActivity.LocationActivityDelegate() { // from class: com.exteragram.messenger.pillstack.ui.pills.weather.WeatherSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.LocationActivity.LocationActivityDelegate
            public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
                WeatherSettingsActivity.$r8$lambda$r1F3JTTSwGevkR3rdkI74dTACBQ(this.f$0, locationActivity, messageMedia, i, z, i2, j);
            }
        });
        presentFragment(locationActivity);
    }

    public static void $r8$lambda$r1F3JTTSwGevkR3rdkI74dTACBQ(WeatherSettingsActivity weatherSettingsActivity, LocationActivity locationActivity, TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        weatherSettingsActivity.currentGeo = messageMedia.geo;
        String addressName = locationActivity.getAddressName();
        if (addressName == null) {
            addressName = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        PillStackConfig.setCustomWeatherLocation(ExteraConfig.getGSON().toJson(weatherSettingsActivity.currentGeo));
        PillStackConfig.setCustomWeatherAddress(addressName);
        weatherSettingsActivity.updateLocationSetting(false);
    }
}
