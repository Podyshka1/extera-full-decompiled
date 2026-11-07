package androidx.mediarouter.app;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.mediarouter.C0879R;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class MediaRouteChooserDialog extends AppCompatDialog {
    private static final int FINDING_DEVICES = 0;
    private static final int MSG_SHOW_NO_ROUTES = 3;
    private static final int MSG_SHOW_WIFI_HINT = 2;
    private static final int MSG_UPDATE_ROUTES = 1;
    private static final int NO_DEVICES_NO_WIFI_HINT = 2;
    private static final int NO_ROUTES = 3;
    private static final int SHOWING_ROUTES = 1;
    private static final int SHOW_NO_ROUTES_DELAY_MS = 15000;
    private static final int SHOW_WIFI_HINT_DELAY_MS = 5000;
    static final String TAG = "MediaRouteChooserDialog";
    private static final long UPDATE_ROUTES_DELAY_MS = 300;
    private RouteAdapter mAdapter;
    private boolean mAttachedToWindow;
    private final MediaRouterCallback mCallback;
    private final Handler mHandler;
    private long mLastUpdateTime;
    private TextView mLearnMoreTextView;
    private ListView mListView;
    private Button mOkButton;
    private LinearLayout mOkButtonContainer;
    private final MediaRouter mRouter;
    private ArrayList<MediaRouter.RouteInfo> mRoutes;
    private ScreenOnOffReceiver mScreenOnOffReceiver;
    private ProgressBar mSearchingProgressBar;
    private TextView mSearchingRoutesTextView;
    private MediaRouteSelector mSelector;
    private TextView mTitleView;
    private RelativeLayout mWifiWarningContainer;
    private TextView mWifiWarningTextView;

    public MediaRouteChooserDialog(Context context) {
        this(context, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MediaRouteChooserDialog(Context context, int i) {
        Context contextCreateThemedDialogContext = MediaRouterThemeHelper.createThemedDialogContext(context, i, false);
        super(contextCreateThemedDialogContext, MediaRouterThemeHelper.createThemedDialogStyle(contextCreateThemedDialogContext));
        this.mSelector = MediaRouteSelector.EMPTY;
        this.mHandler = new Handler() { // from class: androidx.mediarouter.app.MediaRouteChooserDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    MediaRouteChooserDialog.this.handleUpdateRoutes((List) message.obj);
                } else if (i2 == 2) {
                    MediaRouteChooserDialog.this.handleShowNoWifiWarning();
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    MediaRouteChooserDialog.this.handleShowNoRoutes();
                }
            }
        };
        this.mRouter = MediaRouter.getInstance(getContext());
        this.mCallback = new MediaRouterCallback();
        this.mScreenOnOffReceiver = new ScreenOnOffReceiver();
    }

    public MediaRouteSelector getRouteSelector() {
        return this.mSelector;
    }

    public void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            f$$ExternalSyntheticBUOutline1.m215m("selector must not be null");
            return;
        }
        if (this.mSelector.equals(mediaRouteSelector)) {
            return;
        }
        this.mSelector = mediaRouteSelector;
        if (this.mAttachedToWindow) {
            this.mRouter.removeCallback(this.mCallback);
            this.mRouter.addCallback(mediaRouteSelector, this.mCallback, 1);
        }
        refreshRoutes();
    }

    public void onFilterRoutes(List<MediaRouter.RouteInfo> list) {
        int size = list.size();
        while (true) {
            int i = size - 1;
            if (size <= 0) {
                return;
            }
            if (!onFilterRoute(list.get(i))) {
                list.remove(i);
            }
            size = i;
        }
    }

    public boolean onFilterRoute(MediaRouter.RouteInfo routeInfo) {
        return !routeInfo.isDefaultOrBluetooth() && routeInfo.isEnabled() && routeInfo.matchesSelector(this.mSelector);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.mTitleView.setText(charSequence);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(int i) {
        this.mTitleView.setText(i);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.view.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0879R.layout.mr_chooser_dialog);
        this.mRoutes = new ArrayList<>();
        this.mAdapter = new RouteAdapter(getContext(), this.mRoutes);
        this.mTitleView = (TextView) findViewById(C0879R.id.mr_chooser_title);
        this.mSearchingRoutesTextView = (TextView) findViewById(C0879R.id.mr_chooser_searching);
        this.mWifiWarningContainer = (RelativeLayout) findViewById(C0879R.id.mr_chooser_wifi_warning_container);
        this.mWifiWarningTextView = (TextView) findViewById(C0879R.id.mr_chooser_wifi_warning_description);
        this.mLearnMoreTextView = (TextView) findViewById(C0879R.id.mr_chooser_wifi_learn_more);
        this.mOkButtonContainer = (LinearLayout) findViewById(C0879R.id.mr_chooser_ok_button_container);
        this.mOkButton = (Button) findViewById(C0879R.id.mr_chooser_ok_button);
        this.mSearchingProgressBar = (ProgressBar) findViewById(C0879R.id.mr_chooser_search_progress_bar);
        this.mWifiWarningTextView.setText(DeviceUtils.getDialogChooserWifiWarningDescription(getContext()));
        this.mLearnMoreTextView.setMovementMethod(LinkMovementMethod.getInstance());
        this.mOkButton.setOnClickListener(new View.OnClickListener() { // from class: androidx.mediarouter.app.MediaRouteChooserDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        ListView listView = (ListView) findViewById(C0879R.id.mr_chooser_list);
        this.mListView = listView;
        listView.setAdapter((ListAdapter) this.mAdapter);
        this.mListView.setOnItemClickListener(this.mAdapter);
        this.mListView.setEmptyView(findViewById(R.id.empty));
        updateLayout();
        registerBroadcastReceiver();
    }

    private void registerBroadcastReceiver() {
        getContext().registerReceiver(this.mScreenOnOffReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        unregisterBroadcastReceiver();
        super.dismiss();
    }

    private void unregisterBroadcastReceiver() {
        try {
            getContext().unregisterReceiver(this.mScreenOnOffReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public void updateLayout() {
        getWindow().setLayout(MediaRouteDialogHelper.getDialogWidth(getContext()), -2);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        this.mRouter.addCallback(this.mSelector, this.mCallback, 1);
        refreshRoutes();
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(3);
        this.mHandler.removeMessages(1);
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(2), 5000L);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.mAttachedToWindow = false;
        this.mRouter.removeCallback(this.mCallback);
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        this.mHandler.removeMessages(3);
        super.onDetachedFromWindow();
    }

    public void refreshRoutes() {
        if (this.mAttachedToWindow) {
            ArrayList arrayList = new ArrayList(this.mRouter.getRoutes());
            onFilterRoutes(arrayList);
            Collections.sort(arrayList, RouteComparator.sInstance);
            if (SystemClock.uptimeMillis() - this.mLastUpdateTime >= UPDATE_ROUTES_DELAY_MS) {
                handleUpdateRoutes(arrayList);
                return;
            }
            this.mHandler.removeMessages(1);
            Handler handler = this.mHandler;
            handler.sendMessageAtTime(handler.obtainMessage(1, arrayList), this.mLastUpdateTime + UPDATE_ROUTES_DELAY_MS);
        }
    }

    public void handleUpdateRoutes(List<MediaRouter.RouteInfo> list) {
        this.mLastUpdateTime = SystemClock.uptimeMillis();
        this.mRoutes.clear();
        this.mRoutes.addAll(list);
        this.mAdapter.notifyDataSetChanged();
        this.mHandler.removeMessages(3);
        this.mHandler.removeMessages(2);
        if (list.isEmpty()) {
            updateViewForState(0);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(2), 5000L);
            return;
        }
        updateViewForState(1);
    }

    public void handleShowNoWifiWarning() {
        if (this.mRoutes.isEmpty()) {
            updateViewForState(2);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(3), 15000L);
        }
    }

    public void handleShowNoRoutes() {
        if (this.mRoutes.isEmpty()) {
            updateViewForState(3);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mHandler.removeMessages(1);
            this.mRouter.removeCallback(this.mCallback);
        }
    }

    public void updateViewForState(int i) {
        if (i == 0) {
            updateViewForFindingDevices();
            return;
        }
        if (i == 1) {
            updateViewForShowingRoutes();
        } else if (i == 2) {
            updateViewForNoDevicesNoWifiHint();
        } else {
            if (i != 3) {
                return;
            }
            updateViewForNoRoutes();
        }
    }

    private void updateViewForFindingDevices() {
        setTitle(C0879R.string.mr_chooser_title);
        this.mListView.setVisibility(8);
        this.mSearchingRoutesTextView.setVisibility(0);
        this.mSearchingProgressBar.setVisibility(0);
        this.mOkButtonContainer.setVisibility(8);
        this.mOkButton.setVisibility(8);
        this.mLearnMoreTextView.setVisibility(8);
        this.mWifiWarningContainer.setVisibility(8);
    }

    private void updateViewForNoDevicesNoWifiHint() {
        setTitle(C0879R.string.mr_chooser_title);
        this.mListView.setVisibility(8);
        this.mSearchingRoutesTextView.setVisibility(8);
        this.mSearchingProgressBar.setVisibility(0);
        this.mOkButtonContainer.setVisibility(8);
        this.mOkButton.setVisibility(8);
        this.mLearnMoreTextView.setVisibility(4);
        this.mWifiWarningContainer.setVisibility(0);
    }

    private void updateViewForNoRoutes() {
        setTitle(C0879R.string.mr_chooser_zero_routes_found_title);
        this.mListView.setVisibility(8);
        this.mSearchingRoutesTextView.setVisibility(8);
        this.mSearchingProgressBar.setVisibility(8);
        this.mOkButtonContainer.setVisibility(0);
        this.mOkButton.setVisibility(0);
        this.mLearnMoreTextView.setVisibility(0);
        this.mWifiWarningContainer.setVisibility(0);
    }

    private void updateViewForShowingRoutes() {
        setTitle(C0879R.string.mr_chooser_title);
        this.mListView.setVisibility(0);
        this.mSearchingRoutesTextView.setVisibility(8);
        this.mSearchingProgressBar.setVisibility(8);
        this.mOkButtonContainer.setVisibility(8);
        this.mOkButton.setVisibility(8);
        this.mLearnMoreTextView.setVisibility(8);
        this.mWifiWarningContainer.setVisibility(8);
    }

    public static final class RouteAdapter extends ArrayAdapter<MediaRouter.RouteInfo> implements AdapterView.OnItemClickListener {
        private final Drawable mDefaultIcon;
        private final LayoutInflater mInflater;
        private final Drawable mSpeakerGroupIcon;
        private final Drawable mSpeakerIcon;
        private final Drawable mTvIcon;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        public RouteAdapter(Context context, List<MediaRouter.RouteInfo> list) {
            super(context, 0, list);
            this.mInflater = LayoutInflater.from(context);
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{C0879R.attr.mediaRouteDefaultIconDrawable, C0879R.attr.mediaRouteTvIconDrawable, C0879R.attr.mediaRouteSpeakerIconDrawable, C0879R.attr.mediaRouteSpeakerGroupIconDrawable});
            this.mDefaultIcon = AppCompatResources.getDrawable(context, typedArrayObtainStyledAttributes.getResourceId(0, 0));
            this.mTvIcon = AppCompatResources.getDrawable(context, typedArrayObtainStyledAttributes.getResourceId(1, 0));
            this.mSpeakerIcon = AppCompatResources.getDrawable(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
            this.mSpeakerGroupIcon = AppCompatResources.getDrawable(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return ((MediaRouter.RouteInfo) getItem(i)).isEnabled();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.mInflater.inflate(C0879R.layout.mr_chooser_list_item, viewGroup, false);
            }
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) getItem(i);
            TextView textView = (TextView) view.findViewById(C0879R.id.mr_chooser_route_name);
            TextView textView2 = (TextView) view.findViewById(C0879R.id.mr_chooser_route_desc);
            textView.setText(routeInfo.getName());
            String description = routeInfo.getDescription();
            if ((routeInfo.getConnectionState() == 2 || routeInfo.getConnectionState() == 1) && !TextUtils.isEmpty(description)) {
                textView.setGravity(80);
                textView2.setVisibility(0);
                textView2.setText(description);
            } else {
                textView.setGravity(16);
                textView2.setVisibility(8);
                textView2.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            }
            view.setEnabled(routeInfo.isEnabled());
            ImageView imageView = (ImageView) view.findViewById(C0879R.id.mr_chooser_route_icon);
            if (imageView != null) {
                imageView.setImageDrawable(getIconDrawable(routeInfo));
            }
            return view;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) getItem(i);
            ImageView imageView = (ImageView) view.findViewById(C0879R.id.mr_chooser_route_icon);
            ProgressBar progressBar = (ProgressBar) view.findViewById(C0879R.id.mr_chooser_route_progress_bar);
            if (imageView != null && progressBar != null) {
                imageView.setVisibility(8);
                progressBar.setVisibility(0);
            }
            routeInfo.select();
        }

        private Drawable getIconDrawable(MediaRouter.RouteInfo routeInfo) {
            Uri iconUri = routeInfo.getIconUri();
            if (iconUri != null) {
                try {
                    Drawable drawableCreateFromStream = Drawable.createFromStream(getContext().getContentResolver().openInputStream(iconUri), null);
                    if (drawableCreateFromStream != null) {
                        return drawableCreateFromStream;
                    }
                } catch (IOException e) {
                    Log.w(MediaRouteChooserDialog.TAG, "Failed to load " + iconUri, e);
                }
            }
            return getDefaultIconDrawable(routeInfo);
        }

        private Drawable getDefaultIconDrawable(MediaRouter.RouteInfo routeInfo) {
            int deviceType = routeInfo.getDeviceType();
            if (deviceType == 1) {
                return this.mTvIcon;
            }
            if (deviceType == 2) {
                return this.mSpeakerIcon;
            }
            if (routeInfo.isGroup()) {
                return this.mSpeakerGroupIcon;
            }
            return this.mDefaultIcon;
        }
    }

    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.refreshRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.refreshRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.refreshRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public void onRouteSelected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteChooserDialog.this.dismiss();
        }
    }

    public static final class RouteComparator implements Comparator<MediaRouter.RouteInfo> {
        public static final RouteComparator sInstance = new RouteComparator();

        @Override // java.util.Comparator
        public int compare(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            return routeInfo.getName().compareToIgnoreCase(routeInfo2.getName());
        }
    }

    public final class ScreenOnOffReceiver extends BroadcastReceiver {
        public ScreenOnOffReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                MediaRouteChooserDialog.this.dismiss();
            }
        }
    }
}
