package org.telegram.p029ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.LocationController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.CameraScanActivity;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.p029ui.Components.voip.CellFlickerDrawable;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class ActionIntroActivity extends BaseFragment implements LocationController.LocationFetchCallback {
    private TextView buttonTextView;
    private int[] colors;
    private String currentGroupCreateAddress;
    private String currentGroupCreateDisplayAddress;
    private Location currentGroupCreateLocation;
    private final int currentType;
    private LinearLayout descriptionLayout;
    private final TextView[] descriptionLines = new TextView[6];
    private TextView descriptionText;
    private TextView descriptionText2;
    private boolean flickerButton;
    private RLottieImageView imageView;
    private Runnable openedSettings;
    private ActionIntroQRLoginDelegate qrLoginDelegate;
    private boolean showingAsBottomSheet;
    private GradientDrawable startMessagingButtonBackground;
    private TextView subtitleTextView;
    private TextView titleTextView;

    public interface ActionIntroQRLoginDelegate {
        void didFindQRCode(String str);
    }

    public void setOnOpenedSettings(Runnable runnable) {
        this.openedSettings = runnable;
    }

    public ActionIntroActivity(int i) {
        this.currentType = i;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        float f;
        float f2;
        float f3;
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
            this.actionBar.setItemsColor(Theme.getColor(Theme.key_actionBarDefaultIcon), false);
            this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSelector), false);
            this.actionBar.setCastShadows(false);
            this.actionBar.setAddToContainer(false);
            this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ActionIntroActivity.1
                @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i) {
                    if (i == -1) {
                        ActionIntroActivity.this.finishFragment();
                    }
                }
            });
        }
        ViewGroup viewGroup = new ViewGroup(context) { // from class: org.telegram.ui.ActionIntroActivity.2
            @Override // android.view.View
            protected void onMeasure(int i, int i2) {
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                if (((BaseFragment) ActionIntroActivity.this).actionBar != null) {
                    ((BaseFragment) ActionIntroActivity.this).actionBar.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), i2);
                }
                int i3 = ActionIntroActivity.this.currentType;
                if (i3 != 0) {
                    if (i3 == 3) {
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(150.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(150.0f), TLObject.FLAG_30));
                        if (size > size2) {
                            float f4 = size;
                            ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f4), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            int i4 = (int) (f4 * 0.6f);
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i4, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i4, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                        } else {
                            ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                            ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                        }
                    } else if (i3 != 5) {
                        if (i3 == 6) {
                            if (ActionIntroActivity.this.currentType == 6) {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(140.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(140.0f), TLObject.FLAG_30));
                            } else {
                                ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(100.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(100.0f), TLObject.FLAG_30));
                            }
                            if (size > size2) {
                                int i5 = (int) (size * 0.6f);
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                            } else {
                                ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                                if (ActionIntroActivity.this.currentType == 6) {
                                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                                } else {
                                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(72.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                                }
                            }
                        }
                    } else if (ActionIntroActivity.this.showingAsBottomSheet) {
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.32f), TLObject.FLAG_30));
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                        size2 = ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + ActionIntroActivity.this.imageView.getMeasuredHeight() + ActionIntroActivity.this.titleTextView.getMeasuredHeight() + AndroidUtilities.m1124dp(20.0f) + ActionIntroActivity.this.titleTextView.getMeasuredHeight() + ActionIntroActivity.this.descriptionLayout.getMeasuredHeight();
                    } else if (size > size2) {
                        float f5 = size;
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f5), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), TLObject.FLAG_30));
                        int i6 = (int) (f5 * 0.6f);
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i6, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                    } else {
                        ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), TLObject.FLAG_30));
                        ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.descriptionLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                    }
                } else if (size > size2) {
                    float f6 = size;
                    ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f6), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), TLObject.FLAG_30));
                    int i7 = (int) (f6 * 0.6f);
                    ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(i7, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                    ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(i7, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(i7, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                } else {
                    ActionIntroActivity.this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), TLObject.FLAG_30));
                    ActionIntroActivity.this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                    ActionIntroActivity.this.descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, 0));
                    ActionIntroActivity.this.buttonTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(72.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
                }
                setMeasuredDimension(size, size2);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                float f4;
                if (((BaseFragment) ActionIntroActivity.this).actionBar != null) {
                    ((BaseFragment) ActionIntroActivity.this).actionBar.layout(0, 0, i3, ((BaseFragment) ActionIntroActivity.this).actionBar.getMeasuredHeight());
                }
                int i5 = i3 - i;
                int i6 = i4 - i2;
                int i7 = ActionIntroActivity.this.currentType;
                if (i7 == 0) {
                    if (i3 > i4) {
                        int measuredHeight = (i6 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                        ActionIntroActivity.this.imageView.layout(0, measuredHeight, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight);
                        float f5 = i5;
                        float f6 = 0.4f * f5;
                        int i8 = (int) f6;
                        float f7 = i6;
                        int i9 = (int) (0.22f * f7);
                        ActionIntroActivity.this.titleTextView.layout(i8, i9, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i8, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i9);
                        int i10 = (int) (0.39f * f7);
                        ActionIntroActivity.this.descriptionText.layout(i8, i10, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i8, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i10);
                        int measuredWidth = (int) (f6 + (((f5 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                        int i11 = (int) (f7 * 0.69f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth, i11, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i11);
                        return;
                    }
                    float f8 = i6;
                    int i12 = (int) (0.188f * f8);
                    ActionIntroActivity.this.imageView.layout(0, i12, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i12);
                    int i13 = (int) (0.651f * f8);
                    ActionIntroActivity.this.titleTextView.layout(0, i13, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i13);
                    int i14 = (int) (0.731f * f8);
                    ActionIntroActivity.this.descriptionText.layout(0, i14, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i14);
                    int measuredWidth2 = (i5 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                    int i15 = (int) (f8 * 0.853f);
                    ActionIntroActivity.this.buttonTextView.layout(measuredWidth2, i15, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth2, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i15);
                    return;
                }
                if (i7 == 3) {
                    if (i3 > i4) {
                        float f9 = i6;
                        int measuredHeight2 = ((int) ((0.95f * f9) - ActionIntroActivity.this.imageView.getMeasuredHeight())) / 2;
                        int width = (int) ((getWidth() * 0.35f) - ActionIntroActivity.this.imageView.getMeasuredWidth());
                        ActionIntroActivity.this.imageView.layout(width, measuredHeight2, ActionIntroActivity.this.imageView.getMeasuredWidth() + width, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight2);
                        float f10 = i5;
                        float f11 = 0.4f * f10;
                        int i16 = (int) f11;
                        int i17 = (int) (0.12f * f9);
                        ActionIntroActivity.this.titleTextView.layout(i16, i17, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i16, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i17);
                        int i18 = (int) (0.24f * f9);
                        ActionIntroActivity.this.descriptionText.layout(i16, i18, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i16, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i18);
                        float f12 = f10 * 0.6f;
                        int measuredWidth3 = (int) (((f12 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f) + f11);
                        int i19 = (int) (f9 * 0.8f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth3, i19, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth3, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i19);
                        int measuredWidth4 = (int) (f11 + ((f12 - ActionIntroActivity.this.subtitleTextView.getMeasuredWidth()) / 2.0f));
                        int measuredHeight3 = i19 - (ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + AndroidUtilities.m1124dp(16.0f));
                        ActionIntroActivity.this.subtitleTextView.layout(measuredWidth4, measuredHeight3, ActionIntroActivity.this.subtitleTextView.getMeasuredWidth() + measuredWidth4, ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + measuredHeight3);
                        return;
                    }
                    int i20 = (int) (i6 * 0.3f);
                    int measuredWidth5 = (i5 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                    ActionIntroActivity.this.imageView.layout(measuredWidth5, i20, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth5, ActionIntroActivity.this.imageView.getMeasuredHeight() + i20);
                    int measuredHeight4 = i20 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.m1124dp(24.0f);
                    ActionIntroActivity.this.titleTextView.layout(0, measuredHeight4, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + measuredHeight4);
                    int textSize = (int) (measuredHeight4 + ActionIntroActivity.this.titleTextView.getTextSize() + AndroidUtilities.m1124dp(16.0f));
                    ActionIntroActivity.this.descriptionText.layout(0, textSize, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + textSize);
                    int measuredWidth6 = (i5 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                    int measuredHeight5 = (i6 - ActionIntroActivity.this.buttonTextView.getMeasuredHeight()) - AndroidUtilities.m1124dp(48.0f);
                    ActionIntroActivity.this.buttonTextView.layout(measuredWidth6, measuredHeight5, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth6, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + measuredHeight5);
                    int measuredWidth7 = (i5 - ActionIntroActivity.this.subtitleTextView.getMeasuredWidth()) / 2;
                    int measuredHeight6 = measuredHeight5 - (ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + AndroidUtilities.m1124dp(32.0f));
                    ActionIntroActivity.this.subtitleTextView.layout(measuredWidth7, measuredHeight6, ActionIntroActivity.this.subtitleTextView.getMeasuredWidth() + measuredWidth7, ActionIntroActivity.this.subtitleTextView.getMeasuredHeight() + measuredHeight6);
                    return;
                }
                if (i7 != 5) {
                    if (i7 != 6) {
                        return;
                    }
                    if (i3 > i4) {
                        int measuredHeight7 = (i6 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                        float f13 = i5;
                        int measuredWidth8 = ((int) ((0.5f * f13) - ActionIntroActivity.this.imageView.getMeasuredWidth())) / 2;
                        ActionIntroActivity.this.imageView.layout(measuredWidth8, measuredHeight7, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth8, ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight7);
                        float f14 = 0.4f * f13;
                        int i21 = (int) f14;
                        float f15 = i6;
                        int i22 = (int) (0.14f * f15);
                        ActionIntroActivity.this.titleTextView.layout(i21, i22, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i21, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i22);
                        int i23 = (int) (0.31f * f15);
                        ActionIntroActivity.this.descriptionText.layout(i21, i23, ActionIntroActivity.this.descriptionText.getMeasuredWidth() + i21, ActionIntroActivity.this.descriptionText.getMeasuredHeight() + i23);
                        int measuredWidth9 = (int) (f14 + (((f13 * 0.6f) - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                        int i24 = (int) (f15 * 0.78f);
                        ActionIntroActivity.this.buttonTextView.layout(measuredWidth9, i24, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth9, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i24);
                        return;
                    }
                    int i25 = (int) (i6 * 0.3f);
                    int measuredWidth10 = (i5 - ActionIntroActivity.this.imageView.getMeasuredWidth()) / 2;
                    ActionIntroActivity.this.imageView.layout(measuredWidth10, i25, ActionIntroActivity.this.imageView.getMeasuredWidth() + measuredWidth10, ActionIntroActivity.this.imageView.getMeasuredHeight() + i25);
                    int measuredHeight8 = i25 + ActionIntroActivity.this.imageView.getMeasuredHeight() + AndroidUtilities.m1124dp(24.0f);
                    ActionIntroActivity.this.titleTextView.layout(0, measuredHeight8, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + measuredHeight8);
                    int textSize2 = (int) (measuredHeight8 + ActionIntroActivity.this.titleTextView.getTextSize() + AndroidUtilities.m1124dp(16.0f));
                    ActionIntroActivity.this.descriptionText.layout(0, textSize2, ActionIntroActivity.this.descriptionText.getMeasuredWidth(), ActionIntroActivity.this.descriptionText.getMeasuredHeight() + textSize2);
                    int measuredWidth11 = (i5 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                    int measuredHeight9 = (i6 - ActionIntroActivity.this.buttonTextView.getMeasuredHeight()) - AndroidUtilities.m1124dp(48.0f);
                    ActionIntroActivity.this.buttonTextView.layout(measuredWidth11, measuredHeight9, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth11, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + measuredHeight9);
                    return;
                }
                if (ActionIntroActivity.this.showingAsBottomSheet) {
                    ActionIntroActivity.this.imageView.layout(0, 0, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight());
                    float f16 = i6;
                    int i26 = (int) (0.403f * f16);
                    ActionIntroActivity.this.titleTextView.layout(0, i26, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i26);
                    int i27 = (int) (0.631f * f16);
                    int measuredWidth12 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2;
                    ActionIntroActivity.this.descriptionLayout.layout(measuredWidth12, i27, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth12, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i27);
                    int measuredWidth13 = (i5 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                    int i28 = (int) (f16 * 0.853f);
                    ActionIntroActivity.this.buttonTextView.layout(measuredWidth13, i28, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth13, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i28);
                    return;
                }
                if (i3 > i4) {
                    int measuredHeight10 = (i6 - ActionIntroActivity.this.imageView.getMeasuredHeight()) / 2;
                    ActionIntroActivity.this.imageView.layout(0, measuredHeight10, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + measuredHeight10);
                    float f17 = i5;
                    float f18 = 0.4f * f17;
                    int i29 = (int) f18;
                    float f19 = i6;
                    int i30 = (int) (0.08f * f19);
                    ActionIntroActivity.this.titleTextView.layout(i29, i30, ActionIntroActivity.this.titleTextView.getMeasuredWidth() + i29, ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i30);
                    float f20 = f17 * 0.6f;
                    int measuredWidth14 = (int) (((f20 - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2.0f) + f18);
                    int i31 = (int) (0.25f * f19);
                    ActionIntroActivity.this.descriptionLayout.layout(measuredWidth14, i31, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth14, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i31);
                    int measuredWidth15 = (int) (f18 + ((f20 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2.0f));
                    int i32 = (int) (f19 * 0.78f);
                    ActionIntroActivity.this.buttonTextView.layout(measuredWidth15, i32, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth15, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i32);
                    return;
                }
                if (AndroidUtilities.displaySize.y < 1800) {
                    float f21 = i6;
                    int i33 = (int) (0.06f * f21);
                    ActionIntroActivity.this.imageView.layout(0, i33, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i33);
                    int i34 = (int) (0.463f * f21);
                    ActionIntroActivity.this.titleTextView.layout(0, i34, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i34);
                    f4 = f21 * 0.543f;
                } else {
                    float f22 = i6;
                    int i35 = (int) (0.148f * f22);
                    ActionIntroActivity.this.imageView.layout(0, i35, ActionIntroActivity.this.imageView.getMeasuredWidth(), ActionIntroActivity.this.imageView.getMeasuredHeight() + i35);
                    int i36 = (int) (0.551f * f22);
                    ActionIntroActivity.this.titleTextView.layout(0, i36, ActionIntroActivity.this.titleTextView.getMeasuredWidth(), ActionIntroActivity.this.titleTextView.getMeasuredHeight() + i36);
                    f4 = f22 * 0.631f;
                }
                int i37 = (int) f4;
                int measuredWidth16 = (getMeasuredWidth() - ActionIntroActivity.this.descriptionLayout.getMeasuredWidth()) / 2;
                ActionIntroActivity.this.descriptionLayout.layout(measuredWidth16, i37, ActionIntroActivity.this.descriptionLayout.getMeasuredWidth() + measuredWidth16, ActionIntroActivity.this.descriptionLayout.getMeasuredHeight() + i37);
                int measuredWidth17 = (i5 - ActionIntroActivity.this.buttonTextView.getMeasuredWidth()) / 2;
                int i38 = (int) (i6 * 0.853f);
                ActionIntroActivity.this.buttonTextView.layout(measuredWidth17, i38, ActionIntroActivity.this.buttonTextView.getMeasuredWidth() + measuredWidth17, ActionIntroActivity.this.buttonTextView.getMeasuredHeight() + i38);
            }
        };
        this.fragmentView = viewGroup;
        viewGroup.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        ViewGroup viewGroup2 = (ViewGroup) this.fragmentView;
        viewGroup2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ActionIntroActivity.$r8$lambda$SamJWdYl9lPGaCorXTiRCQP35lI(view, motionEvent);
            }
        });
        ActionBar actionBar2 = this.actionBar;
        if (actionBar2 != null) {
            viewGroup2.addView(actionBar2);
        }
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        viewGroup2.addView(rLottieImageView);
        TextView textView = new TextView(context);
        this.titleTextView = textView;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i));
        this.titleTextView.setGravity(1);
        this.titleTextView.setPadding(AndroidUtilities.m1124dp(32.0f), 0, AndroidUtilities.m1124dp(32.0f), 0);
        float f4 = 24.0f;
        this.titleTextView.setTextSize(1, 24.0f);
        viewGroup2.addView(this.titleTextView);
        TextView textView2 = new TextView(context);
        this.subtitleTextView = textView2;
        if (this.currentType == 3) {
            i = Theme.key_featuredStickers_addButton;
        }
        textView2.setTextColor(Theme.getColor(i));
        this.subtitleTextView.setGravity(1);
        float f5 = 15.0f;
        this.subtitleTextView.setTextSize(1, 15.0f);
        this.subtitleTextView.setSingleLine(true);
        this.subtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.subtitleTextView.setPadding(AndroidUtilities.m1124dp(32.0f), 0, AndroidUtilities.m1124dp(32.0f), 0);
        this.subtitleTextView.setVisibility(8);
        viewGroup2.addView(this.subtitleTextView);
        TextView textView3 = new TextView(context);
        this.descriptionText = textView3;
        textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
        this.descriptionText.setGravity(1);
        float f6 = 2.0f;
        this.descriptionText.setLineSpacing(AndroidUtilities.m1124dp(2.0f), 1.0f);
        this.descriptionText.setTextSize(1, 15.0f);
        int i2 = this.currentType;
        if (i2 == 6 || i2 == 3) {
            this.descriptionText.setPadding(AndroidUtilities.m1124dp(48.0f), 0, AndroidUtilities.m1124dp(48.0f), 0);
        } else {
            this.descriptionText.setPadding(AndroidUtilities.m1124dp(32.0f), 0, AndroidUtilities.m1124dp(32.0f), 0);
        }
        viewGroup2.addView(this.descriptionText);
        if (this.currentType == 5) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.descriptionLayout = linearLayout;
            linearLayout.setOrientation(1);
            f = 32.0f;
            this.descriptionLayout.setPadding(AndroidUtilities.m1124dp(24.0f), 0, AndroidUtilities.m1124dp(24.0f), 0);
            this.descriptionLayout.setGravity(LocaleController.isRTL ? 5 : 3);
            viewGroup2.addView(this.descriptionLayout);
            int i3 = 0;
            for (int i4 = 3; i3 < i4; i4 = 3) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(0);
                float f7 = f4;
                this.descriptionLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 0.0f, 0.0f, 0.0f, i3 != 2 ? 7.0f : 0.0f));
                int i5 = i3 * 2;
                float f8 = f6;
                this.descriptionLines[i5] = new TextView(context);
                TextView textView4 = this.descriptionLines[i5];
                int i6 = Theme.key_windowBackgroundWhiteBlackText;
                textView4.setTextColor(Theme.getColor(i6));
                this.descriptionLines[i5].setGravity(LocaleController.isRTL ? 5 : i4);
                this.descriptionLines[i5].setTextSize(1, f5);
                int i7 = i3 + 1;
                this.descriptionLines[i5].setText(String.format(LocaleController.isRTL ? ".%d" : "%d.", Integer.valueOf(i7)));
                this.descriptionLines[i5].setTypeface(AndroidUtilities.bold());
                int i8 = i5 + 1;
                this.descriptionLines[i8] = new TextView(context);
                this.descriptionLines[i8].setTextColor(Theme.getColor(i6));
                this.descriptionLines[i8].setGravity(LocaleController.isRTL ? 5 : 3);
                this.descriptionLines[i8].setTextSize(1, f5);
                if (i3 == 0) {
                    this.descriptionLines[i8].setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
                    this.descriptionLines[i8].setHighlightColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkSelection));
                    String string = LocaleController.getString(C2888R.string.AuthAnotherClientInfo1);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                    int iIndexOf = string.indexOf(42);
                    int iLastIndexOf = string.lastIndexOf(42);
                    if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf != iLastIndexOf) {
                        this.descriptionLines[i8].setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                        spannableStringBuilder.replace(iLastIndexOf, iLastIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                        spannableStringBuilder.replace(iIndexOf, iIndexOf + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                        spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString(C2888R.string.AuthAnotherClientDownloadClientUrl)), iIndexOf, iLastIndexOf - 1, 33);
                    }
                    this.descriptionLines[i8].setText(spannableStringBuilder);
                } else if (i3 == 1) {
                    this.descriptionLines[i8].setText(LocaleController.getString(C2888R.string.AuthAnotherClientInfo2));
                } else {
                    this.descriptionLines[i8].setText(LocaleController.getString(C2888R.string.AuthAnotherClientInfo3));
                }
                if (LocaleController.isRTL) {
                    linearLayout2.setGravity(5);
                    linearLayout2.addView(this.descriptionLines[i8], LayoutHelper.createLinear(0, -2, 1.0f));
                    linearLayout2.addView(this.descriptionLines[i5], LayoutHelper.createLinear(-2, -2, 4.0f, 0.0f, 0.0f, 0.0f));
                } else {
                    linearLayout2.addView(this.descriptionLines[i5], LayoutHelper.createLinear(-2, -2, 0.0f, 0.0f, 4.0f, 0.0f));
                    linearLayout2.addView(this.descriptionLines[i8], LayoutHelper.createLinear(-2, -2));
                }
                f4 = f7;
                f6 = f8;
                i3 = i7;
                f5 = 15.0f;
            }
            f2 = f4;
            f3 = f6;
            this.descriptionText.setVisibility(8);
        } else {
            f = 32.0f;
            f2 = 24.0f;
            f3 = 2.0f;
        }
        TextView textView5 = new TextView(context);
        this.descriptionText2 = textView5;
        textView5.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText6));
        this.descriptionText2.setGravity(1);
        this.descriptionText2.setLineSpacing(AndroidUtilities.m1124dp(f3), 1.0f);
        this.descriptionText2.setTextSize(1, 13.0f);
        this.descriptionText2.setVisibility(8);
        this.descriptionText2.setPadding(AndroidUtilities.m1124dp(f), 0, AndroidUtilities.m1124dp(f), 0);
        viewGroup2.addView(this.descriptionText2);
        this.startMessagingButtonBackground = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
        TextView textView6 = new TextView(context) { // from class: org.telegram.ui.ActionIntroActivity.3
            private final CellFlickerDrawable cellFlickerDrawable;

            {
                CellFlickerDrawable cellFlickerDrawable = new CellFlickerDrawable();
                this.cellFlickerDrawable = cellFlickerDrawable;
                cellFlickerDrawable.drawFrame = false;
                cellFlickerDrawable.repeatProgress = 2.0f;
            }

            @Override // android.view.View
            protected void onSizeChanged(int i9, int i10, int i11, int i12) {
                super.onSizeChanged(i9, i10, i11, i12);
                ActionIntroActivity.this.startMessagingButtonBackground.setBounds(0, 0, i9, i10);
                ActionIntroActivity.this.startMessagingButtonBackground.setCornerRadius(Math.min(i9, i10) / 2.0f);
                this.cellFlickerDrawable.setParentWidth(i9);
            }

            @Override // android.view.View
            public void draw(Canvas canvas) {
                ActionIntroActivity.this.startMessagingButtonBackground.draw(canvas);
                super.draw(canvas);
            }

            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (ActionIntroActivity.this.flickerButton) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                    this.cellFlickerDrawable.draw(canvas, rectF, getMeasuredHeight() / 2.0f, null);
                    invalidate();
                }
            }
        };
        this.buttonTextView = textView6;
        ScaleStateListAnimator.apply(textView6, 0.02f, 1.2f);
        this.buttonTextView.setPadding(AndroidUtilities.m1124dp(34.0f), 0, AndroidUtilities.m1124dp(34.0f), 0);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setTextSize(1, 14.0f);
        this.buttonTextView.setTypeface(AndroidUtilities.bold());
        this.buttonTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(f2), 0, Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
        viewGroup2.addView(this.buttonTextView);
        this.buttonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$2(view);
            }
        });
        int i9 = this.currentType;
        if (i9 == 0) {
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.imageView.setAnimation(C2888R.raw.channel_create, 200, 200);
            this.titleTextView.setText(LocaleController.getString(C2888R.string.ChannelAlertTitle));
            this.descriptionText.setText(LocaleController.getString(C2888R.string.ChannelAlertText));
            this.buttonTextView.setText(LocaleController.getString(C2888R.string.ChannelAlertCreate2));
            this.imageView.playAnimation();
            this.flickerButton = true;
        } else if (i9 == 3) {
            this.subtitleTextView.setVisibility(0);
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.imageView.setAnimation(C2888R.raw.utyan_change_number, 200, 200);
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$4(view);
                }
            });
            UserConfig userConfig = getUserConfig();
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
            if (user == null) {
                user = userConfig.getCurrentUser();
            }
            if (user != null) {
                this.subtitleTextView.setText(LocaleController.formatString("PhoneNumberKeepButton", C2888R.string.PhoneNumberKeepButton, PhoneFormat.getInstance().format("+" + user.phone)));
            }
            this.subtitleTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$5(view);
                }
            });
            this.titleTextView.setText(LocaleController.getString(C2888R.string.PhoneNumberChange2));
            this.descriptionText.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PhoneNumberHelp)));
            this.buttonTextView.setText(LocaleController.getString(C2888R.string.PhoneNumberChange2));
            this.imageView.playAnimation();
            this.flickerButton = true;
        } else if (i9 == 5) {
            int[] iArr = new int[8];
            this.colors = iArr;
            this.imageView.setAnimation(C2888R.raw.qr_login, 334, 334, iArr);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.titleTextView.setText(LocaleController.getString(C2888R.string.AuthAnotherClient));
            this.buttonTextView.setText(LocaleController.getString(C2888R.string.AuthAnotherClientScan));
            this.imageView.playAnimation();
        } else if (i9 == 6) {
            this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.imageView.setAnimation(C2888R.raw.utyan_passcode, 200, 200);
            this.imageView.setFocusable(false);
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$3(view);
                }
            });
            this.titleTextView.setText(LocaleController.getString(C2888R.string.Passcode));
            this.descriptionText.setText(LocaleController.getString(C2888R.string.ChangePasscodeInfoShort));
            this.buttonTextView.setText(LocaleController.getString(C2888R.string.EnablePasscode));
            this.imageView.playAnimation();
            this.flickerButton = true;
        }
        if (this.flickerButton) {
            this.buttonTextView.setPadding(AndroidUtilities.m1124dp(34.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(34.0f), AndroidUtilities.m1124dp(8.0f));
            this.buttonTextView.setTextSize(1, 15.0f);
        }
        updateColors();
        return this.fragmentView;
    }

    public static /* synthetic */ boolean $r8$lambda$SamJWdYl9lPGaCorXTiRCQP35lI(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        if (getParentActivity() == null) {
            return;
        }
        int i = this.currentType;
        if (i == 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("step", 0);
            presentFragment(new ChannelCreateActivity(bundle), true);
            return;
        }
        if (i == 3) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.PhoneNumberChangeTitle));
            builder.setMessage(LocaleController.getString(C2888R.string.PhoneNumberAlert));
            builder.setPositiveButton(LocaleController.getString(C2888R.string.Change), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$createView$1(alertDialog, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            showDialog(builder.create());
            return;
        }
        if (i == 5) {
            if (getParentActivity() == null) {
                return;
            }
            if (getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
                getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
                return;
            } else {
                processOpenQrReader();
                return;
            }
        }
        if (i != 6) {
            return;
        }
        presentFragment(new PasscodeActivity(1), true);
        Runnable runnable = this.openedSettings;
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
            this.openedSettings = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(AlertDialog alertDialog, int i) {
        presentFragment(new LoginActivity().changePhoneNumber(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        if (this.imageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        if (this.imageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        this.imageView.getAnimatedDrawable().setCurrentFrame(0, false);
        this.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        getParentLayout().closeLastFragment(true);
    }

    @Override // org.telegram.messenger.LocationController.LocationFetchCallback
    public void onLocationAddressAvailable(String str, String str2, TLRPC.TL_messageMediaVenue tL_messageMediaVenue, TLRPC.TL_messageMediaVenue tL_messageMediaVenue2, Location location) {
        TextView textView = this.subtitleTextView;
        if (textView == null) {
            return;
        }
        textView.setText(str);
        this.currentGroupCreateAddress = str;
        this.currentGroupCreateDisplayAddress = str2;
        this.currentGroupCreateLocation = location;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        GradientDrawable gradientDrawable = this.startMessagingButtonBackground;
        int i = Theme.key_featuredStickers_addButton;
        gradientDrawable.setColors(new int[]{getThemedColor(i), getThemedColor(Theme.key_featuredStickers_addButton2)});
        this.buttonTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(24.0f), 0, Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
        int[] iArr = this.colors;
        if (iArr == null || this.imageView == null) {
            return;
        }
        iArr[0] = 3355443;
        iArr[1] = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText);
        int[] iArr2 = this.colors;
        iArr2[2] = 16777215;
        int i2 = Theme.key_windowBackgroundWhite;
        iArr2[3] = Theme.getColor(i2);
        int[] iArr3 = this.colors;
        iArr3[4] = 5285866;
        iArr3[5] = Theme.getColor(i);
        int[] iArr4 = this.colors;
        iArr4[6] = 2170912;
        iArr4[7] = Theme.getColor(i2);
        this.imageView.replaceColors(this.colors);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (getParentActivity() != null && i == 34) {
            if (iArr.length > 0 && iArr[0] == 0) {
                processOpenQrReader();
            } else {
                new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onRequestPermissionsResultFragment$6(alertDialog, i2);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(C2888R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$6(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void setQrLoginDelegate(ActionIntroQRLoginDelegate actionIntroQRLoginDelegate) {
        this.qrLoginDelegate = actionIntroQRLoginDelegate;
    }

    private void processOpenQrReader() {
        CameraScanActivity.showAsSheet((BaseFragment) this, false, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: org.telegram.ui.ActionIntroActivity.4
            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String str) {
                ActionIntroActivity.this.finishFragment(false);
                ActionIntroActivity.this.qrLoginDelegate.didFindQRCode(str);
            }
        });
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ActionIntroActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.updateColors();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(view, i, null, null, null, themeDescriptionDelegate, i2));
        if (this.actionBar != null) {
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
            arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        }
        TextView textView = this.titleTextView;
        int i3 = ThemeDescription.FLAG_TEXTCOLOR;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(textView, i3, null, null, null, themeDescriptionDelegate, i4));
        arrayList.add(new ThemeDescription(this.subtitleTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText6));
        arrayList.add(new ThemeDescription(this.descriptionLines[0], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[1], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[1], ThemeDescription.FLAG_LINKCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteLinkText));
        arrayList.add(new ThemeDescription(this.descriptionLines[2], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[3], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[4], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.descriptionLines[5], ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        return arrayList;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) > 0.699999988079071d;
    }
}
