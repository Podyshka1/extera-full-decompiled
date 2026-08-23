package org.telegram.ui.Business;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import j$.time.DayOfWeek;
import j$.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.OpeningHoursActivity;
import org.telegram.ui.Components.ClickableAnimatedTextView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public class ProfileHoursCell extends LinearLayout {
    private ImageView arrowView;
    private boolean expanded;
    private boolean firstAfterAttach;
    private final TextView[] labelText;
    private TextView[] labelTimeText;
    private final ViewGroup[] lines;
    private boolean needDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private ClickableAnimatedTextView switchText;
    private TextView textView;
    private final TextView[][] timeText;
    private int todayLinesCount;
    private int todayLinesHeight;
    private FrameLayout todayTimeContainer;
    private FrameLayout todayTimeTextContainer;
    private LinearLayout todayTimeTextContainer2;

    public int processColor(int i) {
        return i;
    }

    public ProfileHoursCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.labelTimeText = new TextView[2];
        this.lines = new ViewGroup[7];
        this.labelText = new TextView[7];
        this.timeText = new TextView[7][];
        this.todayLinesCount = 1;
        this.todayLinesHeight = 0;
        this.firstAfterAttach = true;
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        setClipChildren(false);
        int i = 0;
        for (int i2 = 7; i < i2; i2 = 7) {
            if (i == 0) {
                FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Business.ProfileHoursCell.1
                    @Override // android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i3, int i4) {
                        super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(Math.max(View.MeasureSpec.getSize(i4), AndroidUtilities.dp(60.0f)), View.MeasureSpec.getMode(i4)));
                    }
                };
                frameLayout.setMinimumHeight(AndroidUtilities.dp(60.0f));
                TextView textView = new TextView(context);
                this.textView = textView;
                textView.setGravity(LocaleController.isRTL ? 5 : 3);
                this.textView.setTextSize(1, 16.0f);
                frameLayout.addView(this.textView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388659, 0.0f, 9.33f, 0.0f, 0.0f));
                this.labelText[i] = new TextView(context);
                this.labelText[i].setGravity(LocaleController.isRTL ? 5 : 3);
                this.labelText[i].setTextSize(1, 13.0f);
                this.labelText[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                frameLayout.addView(this.labelText[i], LayoutHelper.createFrameRelatively(-2.0f, -2.0f, 8388659, 0.0f, 33.0f, 0.0f, 10.0f));
                LinearLayout linearLayout = new LinearLayout(context);
                this.todayTimeTextContainer2 = linearLayout;
                linearLayout.setOrientation(1);
                this.todayTimeTextContainer = new FrameLayout(context);
                this.timeText[i] = new TextView[2];
                for (int i3 = 0; i3 < 2; i3++) {
                    this.timeText[i][i3] = new TextView(context);
                    this.timeText[i][i3].setTextSize(1, 14.0f);
                    this.timeText[i][i3].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    this.timeText[i][i3].setGravity(LocaleController.isRTL ? 3 : 5);
                    this.todayTimeTextContainer.addView(this.timeText[i][i3], LayoutHelper.createFrameRelatively(-1.0f, -1.0f, 119, 0.0f, 0.0f, 20.0f, 0.0f));
                }
                for (int i4 = 0; i4 < 2; i4++) {
                    this.labelTimeText[i4] = new TextView(context);
                    this.labelTimeText[i4].setTextSize(1, 14.0f);
                    this.labelTimeText[i4].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    this.labelTimeText[i4].setGravity(LocaleController.isRTL ? 3 : 5);
                    this.todayTimeTextContainer.addView(this.labelTimeText[i4], LayoutHelper.createFrameRelatively(-1.0f, -1.0f, 119, 0.0f, 0.0f, 20.0f, 0.0f));
                }
                ImageView imageView = new ImageView(context);
                this.arrowView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                this.arrowView.setScaleX(0.6f);
                this.arrowView.setScaleY(0.6f);
                this.arrowView.setImageResource(C2573R.drawable.arrow_more);
                this.arrowView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider), PorterDuff.Mode.SRC_IN));
                this.todayTimeTextContainer.addView(this.arrowView, LayoutHelper.createFrameRelatively(20.0f, 20.0f, 8388629));
                this.todayTimeTextContainer2.addView(this.todayTimeTextContainer, LayoutHelper.createLinearRelatively(-1.0f, -1.0f, 119));
                ClickableAnimatedTextView clickableAnimatedTextView = new ClickableAnimatedTextView(context);
                this.switchText = clickableAnimatedTextView;
                clickableAnimatedTextView.getDrawable().updateAll = true;
                this.switchText.setTextSize(AndroidUtilities.dp(13.0f));
                this.switchText.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
                this.switchText.setGravity(LocaleController.isRTL ? 3 : 5);
                ClickableAnimatedTextView clickableAnimatedTextView2 = this.switchText;
                int iDp = AndroidUtilities.dp(8.0f);
                int i5 = Theme.key_windowBackgroundWhiteBlueText2;
                clickableAnimatedTextView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iDp, Theme.multAlpha(processColor(Theme.getColor(i5, resourcesProvider)), 0.1f), Theme.multAlpha(processColor(Theme.getColor(i5, resourcesProvider)), 0.22f)));
                this.switchText.setTextColor(processColor(Theme.getColor(i5, resourcesProvider)));
                this.switchText.getDrawable().setScaleProperty(0.6f);
                this.switchText.setVisibility(8);
                this.todayTimeTextContainer2.addView(this.switchText, LayoutHelper.createLinearRelatively(-1.0f, 17.0f, 8388613, 0.0f, 4.0f, 18.0f, 0.0f));
                FrameLayout frameLayout2 = new FrameLayout(context);
                this.todayTimeContainer = frameLayout2;
                frameLayout2.addView(this.todayTimeTextContainer2, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388693, 0.0f, 0.0f, 0.0f, 0.0f));
                frameLayout.addView(this.todayTimeContainer, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388693, 0.0f, 0.0f, 0.0f, 12.0f));
                this.lines[i] = frameLayout;
                addView(frameLayout, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 51, 18.0f, 0.0f, 8.0f, 0.0f));
            } else {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(0);
                this.labelText[i] = new TextView(context);
                this.labelText[i].setTextSize(1, 14.0f);
                this.labelText[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                this.labelText[i].setGravity(LocaleController.isRTL ? 5 : 3);
                FrameLayout frameLayout3 = new FrameLayout(context);
                this.timeText[i] = new TextView[2];
                for (int i6 = 0; i6 < 2; i6++) {
                    this.timeText[i][i6] = new TextView(context);
                    this.timeText[i][i6].setTextSize(1, 14.0f);
                    this.timeText[i][i6].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                    this.timeText[i][i6].setGravity(LocaleController.isRTL ? 3 : 5);
                    frameLayout3.addView(this.timeText[i][i6], LayoutHelper.createFrame(-1, -1, 119));
                }
                if (LocaleController.isRTL) {
                    linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-2, -1, 51));
                    linearLayout2.addView(this.labelText[i], LayoutHelper.createLinear(-1, -1, 53));
                } else {
                    linearLayout2.addView(this.labelText[i], LayoutHelper.createLinear(-2, -1, 51));
                    linearLayout2.addView(frameLayout3, LayoutHelper.createLinear(-1, -1, 53));
                }
                this.lines[i] = linearLayout2;
                addView(linearLayout2, LayoutHelper.createLinearRelatively(-1.0f, -2.0f, 51, 18.0f, i == 1 ? 1.0f : 11.66f, 28.0f, i == 6 ? 16.66f : 0.0f));
            }
            i++;
        }
        setWillNotDraw(false);
    }

    public void updateColors() {
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        int iDp = AndroidUtilities.dp(8.0f);
        int i = Theme.key_windowBackgroundWhiteBlueText2;
        clickableAnimatedTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iDp, Theme.multAlpha(processColor(Theme.getColor(i, this.resourcesProvider)), 0.1f), Theme.multAlpha(processColor(Theme.getColor(i, this.resourcesProvider)), 0.22f)));
        this.switchText.setTextColor(processColor(Theme.getColor(i, this.resourcesProvider)));
    }

    public void setOnTimezoneSwitchClick(View.OnClickListener onClickListener) {
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        if (clickableAnimatedTextView != null) {
            clickableAnimatedTextView.setOnClickListener(onClickListener);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void set(TL_account.TL_businessWorkHours tL_businessWorkHours, boolean z, boolean z2, boolean z3) {
        boolean z4;
        boolean z5;
        ArrayList<TL_account.TL_businessWeeklyOpen> arrayList;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        boolean z6 = z;
        this.expanded = z6;
        this.needDivider = z3;
        if (tL_businessWorkHours == null) {
            return;
        }
        boolean zIs24x7 = OpeningHoursActivity.is24x7(tL_businessWorkHours);
        int i5 = 0;
        if (zIs24x7) {
            this.expanded = false;
            z6 = false;
        }
        int i6 = 8;
        this.arrowView.setVisibility(zIs24x7 ? 8 : 0);
        this.todayTimeTextContainer2.setTranslationX(zIs24x7 ? AndroidUtilities.dp(11.0f) : 0.0f);
        TLRPC.TL_timezone tL_timezoneFindTimezone = TimezonesController.getInstance(UserConfig.selectedAccount).findTimezone(tL_businessWorkHours.timezone_id);
        Calendar calendar = Calendar.getInstance();
        int offset = (calendar.getTimeZone().getOffset(System.currentTimeMillis()) / 1000) - (tL_timezoneFindTimezone == null ? 0 : tL_timezoneFindTimezone.utc_offset);
        int i7 = 60;
        int i8 = offset / 60;
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        if (i8 != 0 && !zIs24x7) {
            i6 = 0;
        }
        clickableAnimatedTextView.setVisibility(i6);
        boolean z7 = i8 == 0 ? false : z2;
        invalidate();
        boolean z8 = this.firstAfterAttach;
        TextView[] textViewArr = this.labelTimeText;
        if (z8) {
            textViewArr[0].setAlpha((z6 || z7) ? 0.0f : 1.0f);
            this.labelTimeText[1].setAlpha((z6 || !z7) ? 0.0f : 1.0f);
            this.arrowView.setRotation(z6 ? 180.0f : 0.0f);
        } else {
            ViewPropertyAnimator duration = textViewArr[0].animate().alpha((z6 || z7) ? 0.0f : 1.0f).setDuration(320L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            this.labelTimeText[1].animate().alpha((z6 || !z7) ? 0.0f : 1.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            this.timeText[0][0].animate().alpha(z6 ? 1.0f : 0.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            this.timeText[0][1].animate().alpha(z6 ? 1.0f : 0.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
            this.arrowView.animate().rotation(z6 ? 180.0f : 0.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).start();
        }
        for (int i9 = 0; i9 < this.timeText.length; i9++) {
            int i10 = 0;
            while (true) {
                TextView[] textViewArr2 = this.timeText[i9];
                if (i10 < textViewArr2.length) {
                    if (i9 != 0 || z6) {
                        f = (i10 == 1) == z7 ? 1.0f : 0.0f;
                    }
                    int i11 = i7;
                    if (this.firstAfterAttach) {
                        textViewArr2[i10].setAlpha(f);
                    } else {
                        textViewArr2[i10].animate().alpha(f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                    }
                    i10++;
                    i7 = i11;
                }
            }
        }
        int i12 = i7;
        ClickableAnimatedTextView clickableAnimatedTextView2 = this.switchText;
        if (clickableAnimatedTextView2 != null) {
            clickableAnimatedTextView2.setText(LocaleController.getString(z7 ? C2573R.string.BusinessHoursProfileSwitchMy : C2573R.string.BusinessHoursProfileSwitchLocal), (LocaleController.isRTL || this.firstAfterAttach) ? false : true);
        }
        this.firstAfterAttach = false;
        ArrayList<OpeningHoursActivity.Period>[] daysHours = OpeningHoursActivity.getDaysHours(new ArrayList(tL_businessWorkHours.weekly_open));
        int i13 = 7;
        int i14 = (calendar.get(7) + 5) % 7;
        int i15 = calendar.get(11);
        int i16 = calendar.get(12);
        ArrayList<TL_account.TL_businessWeeklyOpen> arrayListAdaptWeeklyOpen = OpeningHoursActivity.adaptWeeklyOpen(tL_businessWorkHours.weekly_open, i8);
        int i17 = i16 + (i15 * 60) + (i14 * 1440);
        for (int i18 = 0; i18 < arrayListAdaptWeeklyOpen.size(); i18++) {
            TL_account.TL_businessWeeklyOpen tL_businessWeeklyOpen = arrayListAdaptWeeklyOpen.get(i18);
            int i19 = tL_businessWeeklyOpen.start_minute;
            if ((i17 >= i19 && i17 <= tL_businessWeeklyOpen.end_minute) || (((i3 = i17 + 10080) >= i19 && i3 <= tL_businessWeeklyOpen.end_minute) || (i17 - 10080 >= i19 && i4 <= tL_businessWeeklyOpen.end_minute))) {
                z4 = true;
                break;
            }
        }
        z4 = false;
        ArrayList<OpeningHoursActivity.Period>[] daysHours2 = OpeningHoursActivity.getDaysHours(arrayListAdaptWeeklyOpen);
        this.textView.setText(LocaleController.getString(z4 ? C2573R.string.BusinessHoursProfileNowOpen : C2573R.string.BusinessHoursProfileNowClosed));
        this.textView.setTextColor(Theme.getColor(z4 ? Theme.key_avatar_nameInMessageGreen : Theme.key_text_RedRegular, this.resourcesProvider));
        int i20 = this.todayLinesHeight;
        int i21 = this.todayLinesCount;
        this.todayLinesCount = 1;
        this.todayLinesHeight = 0;
        int i22 = 0;
        while (i22 < 2) {
            ArrayList<OpeningHoursActivity.Period>[] arrayListArr = i22 == 0 ? daysHours : daysHours2;
            int i23 = i5;
            while (i23 < i13) {
                int i24 = (i14 + i23) % 7;
                if (i23 == 0) {
                    this.labelText[i23].setText(LocaleController.getString(C2573R.string.BusinessHoursProfile));
                    z5 = z6;
                } else {
                    String displayName = DayOfWeek.values()[i24].getDisplayName(TextStyle.FULL, LocaleController.getInstance().getCurrentLocale());
                    StringBuilder sb = new StringBuilder();
                    z5 = z6;
                    sb.append(displayName.substring(0, 1).toUpperCase());
                    sb.append(displayName.substring(1));
                    this.labelText[i23].setText(sb.toString());
                    this.timeText[i23][0].setVisibility(z5 ? 0 : 4);
                    this.timeText[i23][1].setVisibility(z5 ? 0 : 4);
                    this.labelText[i23].setVisibility(z5 ? 0 : 4);
                }
                int i25 = 0;
                while (true) {
                    if (i25 < (i23 == 0 ? 2 : 1)) {
                        TextView textView = i25 == 0 ? this.timeText[i23][i22] : this.labelTimeText[i22];
                        if (i23 == 0 && !z4 && i25 == 1) {
                            int i26 = 0;
                            while (true) {
                                i = i25;
                                if (i26 >= arrayListAdaptWeeklyOpen.size()) {
                                    i2 = -1;
                                    break;
                                }
                                i2 = arrayListAdaptWeeklyOpen.get(i26).start_minute;
                                if (i17 < i2) {
                                    break;
                                }
                                i26++;
                                i25 = i;
                            }
                            if (i2 == -1 && !arrayListAdaptWeeklyOpen.isEmpty()) {
                                i2 = arrayListAdaptWeeklyOpen.get(0).start_minute;
                            }
                            if (i2 == -1) {
                                textView.setText(LocaleController.getString(C2573R.string.BusinessHoursProfileClose));
                                arrayList = arrayListAdaptWeeklyOpen;
                            } else {
                                int i27 = i2 < i17 ? i2 + (10080 - i17) : i2 - i17;
                                if (i27 < i12) {
                                    arrayList = arrayListAdaptWeeklyOpen;
                                    textView.setText(LocaleController.formatPluralString("BusinessHoursProfileOpensInMinutes", i27, new Object[0]));
                                } else {
                                    arrayList = arrayListAdaptWeeklyOpen;
                                    if (i27 < 1440) {
                                        textView.setText(LocaleController.formatPluralString("BusinessHoursProfileOpensInHours", (int) Math.ceil(i27 / 60.0f), new Object[0]));
                                    } else {
                                        textView.setText(LocaleController.formatPluralString("BusinessHoursProfileOpensInDays", (int) Math.ceil((i27 / 60.0f) / 24.0f), new Object[0]));
                                    }
                                }
                            }
                        } else {
                            arrayList = arrayListAdaptWeeklyOpen;
                            i = i25;
                            if (zIs24x7) {
                                textView.setText(LocaleController.getString(C2573R.string.BusinessHoursProfileFullOpen));
                            } else if (arrayListArr[i24].isEmpty()) {
                                textView.setText(LocaleController.getString(C2573R.string.BusinessHoursProfileClose));
                            } else if (OpeningHoursActivity.isFull(arrayListArr[i24])) {
                                textView.setText(LocaleController.getString(C2573R.string.BusinessHoursProfileOpen));
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                for (int i28 = 0; i28 < arrayListArr[i24].size(); i28++) {
                                    if (i28 > 0) {
                                        sb2.append("\n");
                                    }
                                    sb2.append(arrayListArr[i24].get(i28));
                                }
                                int size = arrayListArr[i24].size();
                                textView.setText(sb2);
                                if (i23 == 0) {
                                    this.todayLinesCount = Math.max(this.todayLinesCount, size);
                                    this.todayLinesHeight = Math.max(this.todayLinesHeight, textView.getLineHeight() * size);
                                }
                            }
                        }
                        i25 = i + 1;
                        arrayListAdaptWeeklyOpen = arrayList;
                        i12 = 60;
                    }
                }
                i23++;
                i5 = 0;
                z6 = z5;
                i12 = 60;
                i13 = 7;
            }
            i22++;
            z6 = z6;
            i12 = 60;
            i13 = 7;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.todayTimeContainer.getLayoutParams();
        float f2 = 6.0f;
        layoutParams.topMargin = AndroidUtilities.dp((this.todayLinesCount > 2 || this.switchText.getVisibility() == 0) ? 6.0f : 12.0f);
        if (this.todayLinesCount <= 2 && this.switchText.getVisibility() != 0) {
            f2 = 12.0f;
        }
        layoutParams.bottomMargin = AndroidUtilities.dp(f2);
        layoutParams.gravity = ((this.todayLinesCount > 2 || this.switchText.getVisibility() == 0) ? 16 : 80) | (LocaleController.isRTL ? 3 : 5);
        if (i21 == this.todayLinesCount && i20 == this.todayLinesHeight) {
            return;
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.needDivider) {
            Paint themePaint = Theme.getThemePaint("paintDivider", this.resourcesProvider);
            if (themePaint == null) {
                themePaint = Theme.dividerPaint;
            }
            canvas.drawRect(AndroidUtilities.dp(LocaleController.isRTL ? 0.0f : 21.33f), getMeasuredHeight() - 1, getWidth() - AndroidUtilities.dp(LocaleController.isRTL ? 21.33f : 0.0f), getMeasuredHeight(), themePaint);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iDp;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30);
        if (!this.expanded) {
            int iDp2 = AndroidUtilities.dp(60.0f);
            if (this.todayLinesCount > 2 || this.switchText.getVisibility() == 0) {
                iDp = this.todayLinesHeight + AndroidUtilities.dp(15.0f) + AndroidUtilities.dp(this.switchText.getVisibility() == 0 ? 21.0f : 0.0f);
            } else {
                iDp = 0;
            }
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max(iDp2, iDp) + (this.needDivider ? 1 : 0), TLObject.FLAG_30);
        }
        super.onMeasure(iMakeMeasureSpec, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ClickableAnimatedTextView clickableAnimatedTextView = this.switchText;
        if (clickableAnimatedTextView != null && clickableAnimatedTextView.getVisibility() == 0) {
            return this.switchText.getClickBounds().contains((int) ((((motionEvent.getX() - this.lines[0].getX()) - this.todayTimeContainer.getX()) - this.todayTimeTextContainer.getX()) - this.switchText.getX()), (int) ((((motionEvent.getY() - this.lines[0].getY()) - this.todayTimeContainer.getY()) - this.todayTimeTextContainer.getY()) - this.switchText.getY()));
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public static final class Factory extends UItem.UItemFactory<ProfileHoursCell> {
        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public ProfileHoursCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new ProfileHoursCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            ProfileHoursCell profileHoursCell = (ProfileHoursCell) view;
            profileHoursCell.setId(uItem.id);
            profileHoursCell.setOnTimezoneSwitchClick(uItem.clickCallback);
            profileHoursCell.set((TL_account.TL_businessWorkHours) uItem.object, uItem.locked, uItem.accent, z);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem uItem, UItem uItem2) {
            return uItem.id == uItem2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem uItem, UItem uItem2) {
            return uItem.accent == uItem2.accent && uItem.locked == uItem2.locked;
        }
    }
}
