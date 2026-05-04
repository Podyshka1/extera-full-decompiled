package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.GestureDetectorCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Calendar;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BackDrawable;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.Easings;
import org.telegram.p029ui.Components.HideViewAfterAnimation;
import org.telegram.p029ui.Components.HintView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.p029ui.Stories.StoryViewer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.time.YearMonth;

/* JADX INFO: loaded from: classes6.dex */
public class CalendarActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    TextPaint activeTextPaint;
    CalendarAdapter adapter;
    BackDrawable backDrawable;
    Paint blackoutPaint;
    private View blurredView;
    private FrameLayout bottomBar;
    private int calendarType;
    Callback callback;
    private boolean canClearHistory;
    ChatActivity chatActivity;
    private boolean checkEnterItems;
    FrameLayout contentView;
    private int dateSelectedEnd;
    private int dateSelectedStart;
    private long dialogId;
    boolean endReached;
    private boolean inSelectionMode;
    private boolean isOpened;
    int lastDaysSelected;
    int lastId;
    boolean lastInSelectionMode;
    LinearLayoutManager layoutManager;
    RecyclerListView listView;
    private boolean loading;
    private SpoilerEffect mediaSpoilerEffect;
    SparseArray messagesByYearMounth;
    private int minDate;
    int minMontYear;
    int monthCount;
    private Path path;
    private int photosVideosTypeFilter;
    TextView removeDaysButton;
    TextView selectDaysButton;
    HintView selectDaysHint;
    private Paint selectOutlinePaint;
    private Paint selectPaint;
    int selectedMonth;
    int selectedYear;
    private ValueAnimator selectionAnimator;
    int startFromMonth;
    int startFromYear;
    int startOffset;
    private StoriesController.StoriesList storiesList;
    private int storiesPlaceDay;
    private StoryViewer.HolderDrawAbove storiesPlaceDrawAbove;
    private StoryViewer.PlaceProvider storiesPlaceProvider;
    TextPaint textPaint;
    TextPaint textPaint2;
    private long topicId;

    public interface Callback {
        void onDateSelected(int i, int i2);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    public CalendarActivity(Bundle bundle, int i, int i2) {
        super(bundle);
        this.textPaint = new TextPaint(1);
        this.activeTextPaint = new TextPaint(1);
        this.textPaint2 = new TextPaint(1);
        this.selectOutlinePaint = new Paint(1);
        this.selectPaint = new Paint(1);
        this.blackoutPaint = new Paint(1);
        this.messagesByYearMounth = new SparseArray();
        this.startOffset = 0;
        this.path = new Path();
        this.mediaSpoilerEffect = new SpoilerEffect();
        this.photosVideosTypeFilter = i;
        if (i2 != 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(((long) i2) * 1000);
            this.selectedYear = calendar.get(1);
            this.selectedMonth = calendar.get(2);
        }
        this.selectOutlinePaint.setStyle(Paint.Style.STROKE);
        this.selectOutlinePaint.setStrokeCap(Paint.Cap.ROUND);
        this.selectOutlinePaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.dialogId = getArguments().getLong("dialog_id");
        this.topicId = getArguments().getLong("topic_id");
        int i = getArguments().getInt("type");
        this.calendarType = i;
        if (i == 2) {
            this.storiesList = MessagesController.getInstance(this.currentAccount).getStoriesController().getStoriesList(this.dialogId, 0);
        } else if (i == 3) {
            this.storiesList = MessagesController.getInstance(this.currentAccount).getStoriesController().getStoriesList(this.dialogId, 1);
        }
        if (this.storiesList != null) {
            this.storiesPlaceProvider = new C32921();
        }
        if (this.dialogId >= 0) {
            this.canClearHistory = true;
        } else {
            this.canClearHistory = false;
        }
        if (this.storiesList != null) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesListUpdated);
        }
        return super.onFragmentCreate();
    }

    /* JADX INFO: renamed from: org.telegram.ui.CalendarActivity$1 */
    class C32921 implements StoryViewer.PlaceProvider {
        @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
        public /* synthetic */ void loadNext(boolean z) {
            StoryViewer.PlaceProvider.CC.$default$loadNext(this, z);
        }

        C32921() {
        }

        @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
        public boolean findView(long j, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
            if (CalendarActivity.this.listView == null) {
                return false;
            }
            for (int i4 = 0; i4 < CalendarActivity.this.listView.getChildCount(); i4++) {
                View childAt = CalendarActivity.this.listView.getChildAt(i4);
                if (childAt instanceof MonthView) {
                    MonthView monthView = (MonthView) childAt;
                    if (monthView.messagesByDays == null) {
                        continue;
                    } else {
                        for (int i5 = 0; i5 < monthView.messagesByDays.size(); i5++) {
                            ArrayList arrayList = ((PeriodDay) monthView.messagesByDays.valueAt(i5)).storyItems;
                            if (arrayList != null && arrayList.contains(Integer.valueOf(i2))) {
                                CalendarActivity calendarActivity = CalendarActivity.this;
                                int iKeyAt = monthView.messagesByDays.keyAt(i5);
                                calendarActivity.storiesPlaceDay = iKeyAt;
                                ImageReceiver imageReceiver = (ImageReceiver) monthView.imagesByDays.get(iKeyAt);
                                if (imageReceiver == null) {
                                    return false;
                                }
                                transitionViewHolder.storyImage = imageReceiver;
                                if (CalendarActivity.this.storiesPlaceDrawAbove == null) {
                                    CalendarActivity.this.storiesPlaceDrawAbove = new StoryViewer.HolderDrawAbove() { // from class: org.telegram.ui.CalendarActivity$1$$ExternalSyntheticLambda0
                                        @Override // org.telegram.ui.Stories.StoryViewer.HolderDrawAbove
                                        public final void draw(Canvas canvas, RectF rectF, float f, boolean z) {
                                            this.f$0.lambda$findView$0(canvas, rectF, f, z);
                                        }
                                    };
                                }
                                transitionViewHolder.drawAbove = CalendarActivity.this.storiesPlaceDrawAbove;
                                transitionViewHolder.view = monthView;
                                transitionViewHolder.clipParent = CalendarActivity.this.fragmentView;
                                transitionViewHolder.clipTop = AndroidUtilities.m1124dp(36.0f);
                                transitionViewHolder.clipBottom = CalendarActivity.this.fragmentView.getBottom();
                                transitionViewHolder.avatarImage = null;
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$findView$0(Canvas canvas, RectF rectF, float f, boolean z) {
            CalendarActivity.this.blackoutPaint.setAlpha((int) (80.0f * f));
            float fLerp = AndroidUtilities.lerp(0.0f, Math.min(rectF.width(), rectF.height()) / 2.0f, f);
            canvas.drawRoundRect(rectF, fLerp, fLerp, CalendarActivity.this.blackoutPaint);
            float fClamp = Utilities.clamp((f - 0.5f) / 0.5f, 1.0f, 0.0f);
            if (fClamp > 0.0f) {
                int alpha = CalendarActivity.this.activeTextPaint.getAlpha();
                CalendarActivity.this.activeTextPaint.setAlpha((int) (alpha * fClamp));
                canvas.save();
                float fMin = Math.min(2.0f, Math.min(rectF.height(), rectF.width()) / AndroidUtilities.m1124dp(44.0f));
                canvas.scale(fMin, fMin, rectF.centerX(), rectF.centerY());
                canvas.drawText(Integer.toString(CalendarActivity.this.storiesPlaceDay + 1), rectF.centerX(), rectF.centerY() + AndroidUtilities.m1124dp(5.0f), CalendarActivity.this.activeTextPaint);
                canvas.restore();
                CalendarActivity.this.activeTextPaint.setAlpha(alpha);
            }
        }

        @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
        public void preLayout(long j, int i, Runnable runnable) {
            if (CalendarActivity.this.listView == null) {
                runnable.run();
            }
            CalendarActivity.this.listView.post(runnable);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.storiesList != null) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesListUpdated);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
        TextPaint textPaint = this.textPaint;
        Paint.Align align = Paint.Align.CENTER;
        textPaint.setTextAlign(align);
        this.textPaint2.setTextSize(AndroidUtilities.m1124dp(11.0f));
        this.textPaint2.setTextAlign(align);
        this.textPaint2.setTypeface(AndroidUtilities.bold());
        this.activeTextPaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
        this.activeTextPaint.setTypeface(AndroidUtilities.bold());
        this.activeTextPaint.setTextAlign(align);
        this.contentView = new FrameLayout(context) { // from class: org.telegram.ui.CalendarActivity.2
            int lastSize;

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
                if (this.lastSize != measuredHeight) {
                    this.lastSize = measuredHeight;
                    CalendarActivity.this.adapter.notifyDataSetChanged();
                }
            }
        };
        createActionBar(context);
        this.contentView.addView(this.actionBar);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.Calendar));
        this.actionBar.setCastShadows(false);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.CalendarActivity.3
            @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                CalendarActivity.this.checkEnterItems = false;
            }
        };
        this.listView = recyclerListView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        this.layoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        this.layoutManager.setReverseLayout(true);
        RecyclerListView recyclerListView2 = this.listView;
        CalendarAdapter calendarAdapter = new CalendarAdapter();
        this.adapter = calendarAdapter;
        recyclerListView2.setAdapter(calendarAdapter);
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.CalendarActivity.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                CalendarActivity.this.checkLoadNext();
            }
        });
        boolean z = this.calendarType == 0 && this.canClearHistory;
        this.contentView.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f, 0, 0.0f, 36.0f, 0.0f, z ? 48.0f : 0.0f));
        final String[] strArr = {LocaleController.getString(C2888R.string.CalendarWeekNameShortMonday), LocaleController.getString(C2888R.string.CalendarWeekNameShortTuesday), LocaleController.getString(C2888R.string.CalendarWeekNameShortWednesday), LocaleController.getString(C2888R.string.CalendarWeekNameShortThursday), LocaleController.getString(C2888R.string.CalendarWeekNameShortFriday), LocaleController.getString(C2888R.string.CalendarWeekNameShortSaturday), LocaleController.getString(C2888R.string.CalendarWeekNameShortSunday)};
        final Drawable drawableMutate = ContextCompat.getDrawable(context, C2888R.drawable.header_shadow).mutate();
        this.contentView.addView(new View(context) { // from class: org.telegram.ui.CalendarActivity.5
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                float measuredWidth = getMeasuredWidth() / 7.0f;
                for (int i = 0; i < 7; i++) {
                    canvas.drawText(strArr[i], (i * measuredWidth) + (measuredWidth / 2.0f), ((getMeasuredHeight() - AndroidUtilities.m1124dp(2.0f)) / 2.0f) + AndroidUtilities.m1124dp(5.0f), CalendarActivity.this.textPaint2);
                }
                drawableMutate.setBounds(0, getMeasuredHeight() - AndroidUtilities.m1124dp(3.0f), getMeasuredWidth(), getMeasuredHeight());
                drawableMutate.draw(canvas);
            }
        }, LayoutHelper.createFrame(-1, 38.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.CalendarActivity.6
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (CalendarActivity.this.dateSelectedStart != 0 || CalendarActivity.this.dateSelectedEnd != 0 || CalendarActivity.this.inSelectionMode) {
                        CalendarActivity.this.inSelectionMode = false;
                        CalendarActivity.this.dateSelectedStart = 0;
                        CalendarActivity.this.dateSelectedEnd = 0;
                        CalendarActivity.this.updateTitle();
                        CalendarActivity.this.animateSelection();
                        return;
                    }
                    CalendarActivity.this.finishFragment();
                }
            }
        });
        this.fragmentView = this.contentView;
        Calendar calendar = Calendar.getInstance();
        this.startFromYear = calendar.get(1);
        int i = calendar.get(2);
        this.startFromMonth = i;
        int i2 = this.selectedYear;
        if (i2 != 0) {
            int i3 = (((this.startFromYear - i2) * 12) + i) - this.selectedMonth;
            this.monthCount = i3 + 1;
            this.layoutManager.scrollToPositionWithOffset(i3, AndroidUtilities.m1124dp(120.0f));
        }
        if (this.monthCount < 3) {
            this.monthCount = 3;
        }
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        this.actionBar.setBackButtonDrawable(backDrawable);
        this.backDrawable.setRotation(0.0f, false);
        loadNext();
        updateColors();
        this.activeTextPaint.setColor(-1);
        if (z) {
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.CalendarActivity.7
                @Override // android.view.View
                public void onDraw(Canvas canvas) {
                    canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.getShadowHeight(), Theme.dividerPaint);
                }
            };
            this.bottomBar = frameLayout;
            frameLayout.setWillNotDraw(false);
            this.bottomBar.setPadding(0, AndroidUtilities.getShadowHeight(), 0, 0);
            this.bottomBar.setClipChildren(false);
            TextView textView = new TextView(context);
            this.selectDaysButton = textView;
            textView.setGravity(17);
            this.selectDaysButton.setTextSize(1, 15.0f);
            this.selectDaysButton.setTypeface(AndroidUtilities.bold());
            this.selectDaysButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$0(view);
                }
            });
            this.selectDaysButton.setText(LocaleController.getString(C2888R.string.SelectDays));
            this.selectDaysButton.setAllCaps(true);
            this.bottomBar.addView(this.selectDaysButton, LayoutHelper.createFrame(-1, -1.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
            TextView textView2 = new TextView(context);
            this.removeDaysButton = textView2;
            textView2.setGravity(17);
            this.removeDaysButton.setTextSize(1, 15.0f);
            this.removeDaysButton.setTypeface(AndroidUtilities.bold());
            this.removeDaysButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$1(view);
                }
            });
            this.removeDaysButton.setAllCaps(true);
            this.removeDaysButton.setVisibility(8);
            this.bottomBar.addView(this.removeDaysButton, LayoutHelper.createFrame(-1, -1.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
            this.contentView.addView(this.bottomBar, LayoutHelper.createFrame(-1, 48.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
            TextView textView3 = this.selectDaysButton;
            int i4 = Theme.key_chat_fieldOverlayText;
            textView3.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor(i4), 51), 2));
            TextView textView4 = this.removeDaysButton;
            int i5 = Theme.key_text_RedBold;
            textView4.setBackground(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor(i5), 51), 2));
            this.selectDaysButton.setTextColor(Theme.getColor(i4));
            this.removeDaysButton.setTextColor(Theme.getColor(i5));
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        this.inSelectionMode = true;
        updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        int i = this.lastDaysSelected;
        if (i == 0) {
            if (this.selectDaysHint == null) {
                HintView hintView = new HintView(this.contentView.getContext(), 8);
                this.selectDaysHint = hintView;
                hintView.setExtraTranslationY(AndroidUtilities.m1124dp(24.0f));
                this.contentView.addView(this.selectDaysHint, LayoutHelper.createFrame(-2, -2.0f, 51, 19.0f, 0.0f, 19.0f, 0.0f));
                this.selectDaysHint.setText(LocaleController.getString(C2888R.string.SelectDaysTooltip));
            }
            this.selectDaysHint.showForView(this.bottomBar, true);
            return;
        }
        AlertsCreator.createClearDaysDialogAlert(this, i, getMessagesController().getUser(Long.valueOf(this.dialogId)), null, false, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.CalendarActivity.8
            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
            public void run(boolean z) {
                CalendarActivity.this.finishFragment();
                if (((BaseFragment) CalendarActivity.this).parentLayout != null && ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() >= 2) {
                    BaseFragment baseFragment = (BaseFragment) ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().get(((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() - 2);
                    if (baseFragment instanceof ChatActivity) {
                        ((ChatActivity) baseFragment).deleteHistory(CalendarActivity.this.dateSelectedStart, CalendarActivity.this.dateSelectedEnd + 86400, z);
                        return;
                    }
                    return;
                }
                CalendarActivity calendarActivity = CalendarActivity.this;
                ChatActivity chatActivity = calendarActivity.chatActivity;
                if (chatActivity != null) {
                    chatActivity.deleteHistory(calendarActivity.dateSelectedStart, CalendarActivity.this.dateSelectedEnd + 86400, z);
                }
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        this.actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        this.activeTextPaint.setColor(-1);
        TextPaint textPaint = this.textPaint;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textPaint.setColor(Theme.getColor(i));
        this.textPaint2.setColor(Theme.getColor(i));
        this.actionBar.setTitleColor(Theme.getColor(i));
        this.backDrawable.setColor(Theme.getColor(i));
        this.actionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_listSelector), false);
    }

    private void loadNext() {
        if (this.loading || this.endReached) {
            return;
        }
        if (this.storiesList != null) {
            updateFromStoriesList();
            this.storiesList.load(false, 100);
            this.loading = this.storiesList.isLoading();
            return;
        }
        this.loading = true;
        TLRPC.TL_messages_getSearchResultsCalendar tL_messages_getSearchResultsCalendar = new TLRPC.TL_messages_getSearchResultsCalendar();
        int i = this.photosVideosTypeFilter;
        if (i == 1) {
            tL_messages_getSearchResultsCalendar.filter = new TLRPC.TL_inputMessagesFilterPhotos();
        } else if (i == 2) {
            tL_messages_getSearchResultsCalendar.filter = new TLRPC.TL_inputMessagesFilterVideo();
        } else {
            tL_messages_getSearchResultsCalendar.filter = new TLRPC.TL_inputMessagesFilterPhotoVideo();
        }
        tL_messages_getSearchResultsCalendar.peer = getMessagesController().getInputPeer(this.dialogId);
        if (this.topicId != 0 && this.dialogId == getUserConfig().getClientUserId()) {
            tL_messages_getSearchResultsCalendar.flags |= 4;
            tL_messages_getSearchResultsCalendar.saved_peer_id = getMessagesController().getInputPeer(this.topicId);
        }
        tL_messages_getSearchResultsCalendar.offset_id = this.lastId;
        final Calendar calendar = Calendar.getInstance();
        this.listView.setItemAnimator(null);
        getConnectionsManager().sendRequest(tL_messages_getSearchResultsCalendar, new RequestDelegate() { // from class: org.telegram.ui.CalendarActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadNext$3(calendar, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadNext$3(final Calendar calendar, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CalendarActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadNext$2(tL_error, tLObject, calendar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public /* synthetic */ void lambda$loadNext$2(TLRPC.TL_error tL_error, TLObject tLObject, Calendar calendar) {
        int i;
        if (tL_error == null) {
            TLRPC.TL_messages_searchResultsCalendar tL_messages_searchResultsCalendar = (TLRPC.TL_messages_searchResultsCalendar) tLObject;
            ?? r3 = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= tL_messages_searchResultsCalendar.periods.size()) {
                    break;
                }
                calendar.setTimeInMillis(((long) ((TLRPC.TL_searchResultsCalendarPeriod) tL_messages_searchResultsCalendar.periods.get(i2)).date) * 1000);
                int i3 = (calendar.get(1) * 100) + calendar.get(2);
                SparseArray sparseArray = (SparseArray) this.messagesByYearMounth.get(i3);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    this.messagesByYearMounth.put(i3, sparseArray);
                }
                PeriodDay periodDay = new PeriodDay();
                periodDay.messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) tL_messages_searchResultsCalendar.messages.get(i2), false, false);
                periodDay.date = (int) (calendar.getTimeInMillis() / 1000);
                int i4 = this.startOffset + ((TLRPC.TL_searchResultsCalendarPeriod) tL_messages_searchResultsCalendar.periods.get(i2)).count;
                this.startOffset = i4;
                periodDay.startOffset = i4;
                int i5 = calendar.get(5) - 1;
                if (sparseArray.get(i5, null) == null || !((PeriodDay) sparseArray.get(i5, null)).hasImage) {
                    sparseArray.put(i5, periodDay);
                }
                int i6 = this.minMontYear;
                if (i3 < i6 || i6 == 0) {
                    this.minMontYear = i3;
                }
                i2++;
            }
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            int i7 = tL_messages_searchResultsCalendar.min_date;
            this.minDate = i7;
            while (true) {
                calendar.setTimeInMillis(((long) i7) * 1000);
                calendar.set(11, r3);
                calendar.set(12, r3);
                calendar.set(13, r3);
                calendar.set(14, r3);
                if (calendar.getTimeInMillis() / 1000 > iCurrentTimeMillis) {
                    break;
                }
                int i8 = (calendar.get(1) * 100) + calendar.get(2);
                SparseArray sparseArray2 = (SparseArray) this.messagesByYearMounth.get(i8);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    this.messagesByYearMounth.put(i8, sparseArray2);
                }
                int i9 = calendar.get(5) - 1;
                if (sparseArray2.get(i9, null) == null) {
                    PeriodDay periodDay2 = new PeriodDay();
                    periodDay2.hasImage = r3;
                    i = iCurrentTimeMillis;
                    periodDay2.date = (int) (calendar.getTimeInMillis() / 1000);
                    sparseArray2.put(i9, periodDay2);
                } else {
                    i = iCurrentTimeMillis;
                }
                i7 += 86400;
                iCurrentTimeMillis = i;
                r3 = 0;
            }
            this.loading = r3;
            if (!tL_messages_searchResultsCalendar.messages.isEmpty()) {
                ArrayList arrayList = tL_messages_searchResultsCalendar.messages;
                this.lastId = ((TLRPC.Message) arrayList.get(arrayList.size() - 1)).f1686id;
                this.endReached = r3;
                checkLoadNext();
            } else {
                this.endReached = true;
            }
            if (this.isOpened) {
                this.checkEnterItems = true;
            }
            this.listView.invalidate();
            int timeInMillis = ((int) (((calendar.getTimeInMillis() / 1000) - ((long) tL_messages_searchResultsCalendar.min_date)) / 2629800)) + 1;
            this.adapter.notifyItemRangeChanged(r3, this.monthCount);
            int i10 = this.monthCount;
            if (timeInMillis > i10) {
                this.adapter.notifyItemRangeInserted(i10 + 1, timeInMillis);
                this.monthCount = timeInMillis;
            }
            if (this.endReached) {
                resumeDelayedFragmentAnimation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLoadNext() {
        if (this.loading || this.endReached) {
            return;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof MonthView) {
                MonthView monthView = (MonthView) childAt;
                int i3 = (monthView.currentYear * 100) + monthView.currentMonthInYear;
                if (i3 < i) {
                    i = i3;
                }
            }
        }
        int i4 = this.minMontYear;
        if (((i4 / 100) * 12) + (i4 % 100) + 3 >= ((i / 100) * 12) + (i % 100)) {
            loadNext();
        }
    }

    private void updateFromStoriesList() {
        this.loading = this.storiesList.isLoading();
        Calendar calendar = Calendar.getInstance();
        this.messagesByYearMounth.clear();
        this.minDate = Integer.MAX_VALUE;
        int i = 0;
        while (true) {
            if (i >= this.storiesList.messageObjects.size()) {
                break;
            }
            MessageObject messageObject = (MessageObject) this.storiesList.messageObjects.get(i);
            this.minDate = Math.min(this.minDate, messageObject.messageOwner.date);
            calendar.setTimeInMillis(((long) messageObject.messageOwner.date) * 1000);
            int i2 = (calendar.get(1) * 100) + calendar.get(2);
            SparseArray sparseArray = (SparseArray) this.messagesByYearMounth.get(i2);
            if (sparseArray == null) {
                sparseArray = new SparseArray();
                this.messagesByYearMounth.put(i2, sparseArray);
            }
            int i3 = calendar.get(5) - 1;
            PeriodDay periodDay = (PeriodDay) sparseArray.get(i3);
            if (periodDay == null) {
                periodDay = new PeriodDay();
                periodDay.storyItems = new ArrayList();
            }
            periodDay.storyItems.add(Integer.valueOf(messageObject.getId()));
            periodDay.messageObject = messageObject;
            periodDay.date = (int) (calendar.getTimeInMillis() / 1000);
            sparseArray.put(i3, periodDay);
            int i4 = this.minMontYear;
            if (i2 < i4 || i4 == 0) {
                this.minMontYear = i2;
            }
            i++;
        }
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        for (int i5 = this.minDate; i5 < iCurrentTimeMillis; i5 += 86400) {
            calendar.setTimeInMillis(((long) i5) * 1000);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            int i6 = (calendar.get(1) * 100) + calendar.get(2);
            SparseArray sparseArray2 = (SparseArray) this.messagesByYearMounth.get(i6);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray();
                this.messagesByYearMounth.put(i6, sparseArray2);
            }
            int i7 = calendar.get(5) - 1;
            if (sparseArray2.get(i7, null) == null) {
                PeriodDay periodDay2 = new PeriodDay();
                periodDay2.hasImage = false;
                periodDay2.date = (int) (calendar.getTimeInMillis() / 1000);
                sparseArray2.put(i7, periodDay2);
            }
        }
        this.endReached = this.storiesList.isFull();
        if (this.isOpened) {
            this.checkEnterItems = true;
        }
        this.listView.invalidate();
        int timeInMillis = ((int) (((calendar.getTimeInMillis() / 1000) - ((long) this.minDate)) / 2629800)) + 1;
        this.adapter.notifyItemRangeChanged(0, this.monthCount);
        int i8 = this.monthCount;
        if (timeInMillis > i8) {
            this.adapter.notifyItemRangeInserted(i8 + 1, timeInMillis);
            this.monthCount = timeInMillis;
        }
        if (this.endReached) {
            resumeDelayedFragmentAnimation();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesListUpdated && this.storiesList == ((StoriesController.StoriesList) objArr[0])) {
            updateFromStoriesList();
        }
    }

    private class CalendarAdapter extends RecyclerView.Adapter {
        private CalendarAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(CalendarActivity.this.new MonthView(viewGroup.getContext()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            MonthView monthView = (MonthView) viewHolder.itemView;
            CalendarActivity calendarActivity = CalendarActivity.this;
            int i2 = calendarActivity.startFromYear - (i / 12);
            int i3 = calendarActivity.startFromMonth - (i % 12);
            if (i3 < 0) {
                i3 += 12;
                i2--;
            }
            monthView.setDate(i2, i3, (SparseArray) calendarActivity.messagesByYearMounth.get((i2 * 100) + i3), monthView.currentYear == i2 && monthView.currentMonthInYear == i3);
            monthView.startSelectionAnimation(CalendarActivity.this.dateSelectedStart, CalendarActivity.this.dateSelectedEnd);
            monthView.setSelectionValue(1.0f);
            CalendarActivity.this.updateRowSelections(monthView, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            CalendarActivity calendarActivity = CalendarActivity.this;
            return (((long) (calendarActivity.startFromYear - (i / 12))) * 100) + ((long) (calendarActivity.startFromMonth - (i % 12)));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CalendarActivity.this.monthCount;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class MonthView extends FrameLayout {
        boolean attached;
        int cellCount;
        int currentMonthInYear;
        int currentYear;
        int daysInMonth;
        GestureDetectorCompat gestureDetector;
        SparseArray imagesByDays;
        SparseArray messagesByDays;
        private SparseArray rowAnimators;
        private SparseArray rowSelectionPos;
        int startDayOfWeek;
        int startMonthTime;
        SimpleTextView titleView;

        public MonthView(Context context) {
            super(context);
            this.messagesByDays = new SparseArray();
            this.imagesByDays = new SparseArray();
            this.rowAnimators = new SparseArray();
            this.rowSelectionPos = new SparseArray();
            setWillNotDraw(false);
            this.titleView = new SimpleTextView(context);
            if (CalendarActivity.this.calendarType == 0 && CalendarActivity.this.canClearHistory) {
                this.titleView.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.CalendarActivity$MonthView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$new$0(view);
                    }
                });
                this.titleView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity.MonthView.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MonthView monthView;
                        MonthView monthView2 = MonthView.this;
                        if (monthView2.messagesByDays != null && CalendarActivity.this.inSelectionMode) {
                            int i = 0;
                            int i2 = -1;
                            int i3 = -1;
                            while (true) {
                                monthView = MonthView.this;
                                if (i >= monthView.daysInMonth) {
                                    break;
                                }
                                PeriodDay periodDay = (PeriodDay) monthView.messagesByDays.get(i, null);
                                if (periodDay != null) {
                                    if (i2 == -1) {
                                        i2 = periodDay.date;
                                    }
                                    i3 = periodDay.date;
                                }
                                i++;
                            }
                            if (i2 < 0 || i3 < 0) {
                                return;
                            }
                            CalendarActivity.this.dateSelectedStart = i2;
                            CalendarActivity.this.dateSelectedEnd = i3;
                            CalendarActivity.this.updateTitle();
                            CalendarActivity.this.animateSelection();
                        }
                    }
                });
            }
            this.titleView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            this.titleView.setTextSize(15);
            this.titleView.setTypeface(AndroidUtilities.bold());
            this.titleView.setGravity(17);
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(this.titleView, LayoutHelper.createFrame(-1, 28.0f, 0, 0.0f, 12.0f, 0.0f, 4.0f));
            GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(context, new C33032(CalendarActivity.this, context));
            this.gestureDetector = gestureDetectorCompat;
            gestureDetectorCompat.setIsLongpressEnabled(CalendarActivity.this.calendarType == 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$0(View view) {
            if (this.messagesByDays == null) {
                return false;
            }
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < this.daysInMonth; i3++) {
                PeriodDay periodDay = (PeriodDay) this.messagesByDays.get(i3, null);
                if (periodDay != null) {
                    if (i == -1) {
                        i = periodDay.date;
                    }
                    i2 = periodDay.date;
                }
            }
            if (i >= 0 && i2 >= 0) {
                CalendarActivity.this.inSelectionMode = true;
                CalendarActivity.this.dateSelectedStart = i;
                CalendarActivity.this.dateSelectedEnd = i2;
                CalendarActivity.this.updateTitle();
                CalendarActivity.this.animateSelection();
            }
            return false;
        }

        /* JADX INFO: renamed from: org.telegram.ui.CalendarActivity$MonthView$2 */
        class C33032 extends GestureDetector.SimpleOnGestureListener {
            final /* synthetic */ Context val$context;
            final /* synthetic */ CalendarActivity val$this$0;

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            C33032(CalendarActivity calendarActivity, Context context) {
                this.val$this$0 = calendarActivity;
                this.val$context = context;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                PeriodDay dayAtCoord;
                if (((BaseFragment) CalendarActivity.this).parentLayout == null) {
                    return false;
                }
                if (((CalendarActivity.this.calendarType == 1 && MonthView.this.messagesByDays != null) || CalendarActivity.this.storiesList != null) && (dayAtCoord = getDayAtCoord(motionEvent.getX(), motionEvent.getY())) != null && dayAtCoord.messageObject != null) {
                    CalendarActivity calendarActivity = CalendarActivity.this;
                    if (calendarActivity.callback != null) {
                        if (calendarActivity.storiesList != null) {
                            StoryViewer orCreateStoryViewer = CalendarActivity.this.getOrCreateStoryViewer();
                            Context context = MonthView.this.getContext();
                            MessageObject messageObject = dayAtCoord.messageObject;
                            orCreateStoryViewer.open(context, messageObject.storyItem, messageObject.getId(), CalendarActivity.this.storiesList, true, CalendarActivity.this.storiesPlaceProvider);
                        } else {
                            CalendarActivity.this.callback.onDateSelected(dayAtCoord.messageObject.getId(), dayAtCoord.startOffset);
                            CalendarActivity.this.finishFragment();
                        }
                    }
                }
                MonthView monthView = MonthView.this;
                if (monthView.messagesByDays != null) {
                    if (CalendarActivity.this.inSelectionMode) {
                        PeriodDay dayAtCoord2 = getDayAtCoord(motionEvent.getX(), motionEvent.getY());
                        if (dayAtCoord2 != null) {
                            if (CalendarActivity.this.selectionAnimator != null) {
                                CalendarActivity.this.selectionAnimator.cancel();
                                CalendarActivity.this.selectionAnimator = null;
                            }
                            if (CalendarActivity.this.dateSelectedStart != 0 || CalendarActivity.this.dateSelectedEnd != 0) {
                                if (CalendarActivity.this.dateSelectedStart == dayAtCoord2.date && CalendarActivity.this.dateSelectedEnd == dayAtCoord2.date) {
                                    CalendarActivity calendarActivity2 = CalendarActivity.this;
                                    calendarActivity2.dateSelectedEnd = 0;
                                    calendarActivity2.dateSelectedStart = 0;
                                } else if (CalendarActivity.this.dateSelectedStart == dayAtCoord2.date) {
                                    CalendarActivity calendarActivity3 = CalendarActivity.this;
                                    calendarActivity3.dateSelectedStart = calendarActivity3.dateSelectedEnd;
                                } else if (CalendarActivity.this.dateSelectedEnd == dayAtCoord2.date) {
                                    CalendarActivity calendarActivity4 = CalendarActivity.this;
                                    calendarActivity4.dateSelectedEnd = calendarActivity4.dateSelectedStart;
                                } else if (CalendarActivity.this.dateSelectedStart == CalendarActivity.this.dateSelectedEnd) {
                                    if (dayAtCoord2.date > CalendarActivity.this.dateSelectedEnd) {
                                        CalendarActivity.this.dateSelectedEnd = dayAtCoord2.date;
                                    } else {
                                        CalendarActivity.this.dateSelectedStart = dayAtCoord2.date;
                                    }
                                } else {
                                    CalendarActivity calendarActivity5 = CalendarActivity.this;
                                    int i = dayAtCoord2.date;
                                    calendarActivity5.dateSelectedEnd = i;
                                    calendarActivity5.dateSelectedStart = i;
                                }
                            } else {
                                CalendarActivity calendarActivity6 = CalendarActivity.this;
                                int i2 = dayAtCoord2.date;
                                calendarActivity6.dateSelectedEnd = i2;
                                calendarActivity6.dateSelectedStart = i2;
                            }
                            CalendarActivity.this.updateTitle();
                            CalendarActivity.this.animateSelection();
                        }
                    } else {
                        PeriodDay dayAtCoord3 = getDayAtCoord(motionEvent.getX(), motionEvent.getY());
                        if (dayAtCoord3 != null && ((BaseFragment) CalendarActivity.this).parentLayout != null && ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() >= 2) {
                            BaseFragment baseFragment = (BaseFragment) ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().get(((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() - 2);
                            if (baseFragment instanceof ChatActivity) {
                                CalendarActivity.this.finishFragment();
                                ((ChatActivity) baseFragment).jumpToDate(dayAtCoord3.date);
                            }
                        } else if (dayAtCoord3 != null) {
                            CalendarActivity calendarActivity7 = CalendarActivity.this;
                            if (calendarActivity7.chatActivity != null) {
                                calendarActivity7.finishFragment();
                                CalendarActivity.this.chatActivity.jumpToDate(dayAtCoord3.date);
                            }
                        }
                    }
                }
                return false;
            }

            private PeriodDay getDayAtCoord(float f, float f2) {
                PeriodDay periodDay;
                MonthView monthView = MonthView.this;
                if (monthView.messagesByDays == null) {
                    return null;
                }
                int i = monthView.startDayOfWeek;
                float measuredWidth = monthView.getMeasuredWidth() / 7.0f;
                float fM1124dp = AndroidUtilities.m1124dp(52.0f);
                int iM1124dp = AndroidUtilities.m1124dp(44.0f) / 2;
                int i2 = 0;
                for (int i3 = 0; i3 < MonthView.this.daysInMonth; i3++) {
                    float f3 = (i * measuredWidth) + (measuredWidth / 2.0f);
                    float fM1124dp2 = (i2 * fM1124dp) + (fM1124dp / 2.0f) + AndroidUtilities.m1124dp(44.0f);
                    float f4 = iM1124dp;
                    if (f >= f3 - f4 && f <= f3 + f4 && f2 >= fM1124dp2 - f4 && f2 <= fM1124dp2 + f4 && (periodDay = (PeriodDay) MonthView.this.messagesByDays.get(i3, null)) != null) {
                        return periodDay;
                    }
                    i++;
                    if (i >= 7) {
                        i2++;
                        i = 0;
                    }
                }
                return null;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                final PeriodDay dayAtCoord;
                super.onLongPress(motionEvent);
                if (CalendarActivity.this.calendarType != 0 || AndroidUtilities.isTablet() || (dayAtCoord = getDayAtCoord(motionEvent.getX(), motionEvent.getY())) == null) {
                    return;
                }
                try {
                    MonthView.this.performHapticFeedback(0);
                } catch (Exception unused) {
                }
                Bundle bundle = new Bundle();
                if (CalendarActivity.this.dialogId > 0) {
                    bundle.putLong("user_id", CalendarActivity.this.dialogId);
                } else {
                    bundle.putLong("chat_id", -CalendarActivity.this.dialogId);
                }
                bundle.putInt("start_from_date", dayAtCoord.date);
                bundle.putBoolean("need_remove_previous_same_chat_activity", false);
                ChatActivity chatActivity = new ChatActivity(bundle);
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(CalendarActivity.this.getParentActivity(), C2888R.drawable.popup_fixed_alert, CalendarActivity.this.getResourceProvider());
                actionBarPopupWindowLayout.setBackgroundColor(CalendarActivity.this.getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(CalendarActivity.this.getParentActivity(), true, false);
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.JumpToDate), C2888R.drawable.msg_message);
                actionBarMenuSubItem.setMinimumWidth(160);
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity$MonthView$2$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onLongPress$1(dayAtCoord, view);
                    }
                });
                actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
                if (CalendarActivity.this.canClearHistory) {
                    ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(CalendarActivity.this.getParentActivity(), false, false);
                    actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2888R.string.SelectThisDay), C2888R.drawable.msg_select);
                    actionBarMenuSubItem2.setMinimumWidth(160);
                    actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity$MonthView$2$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onLongPress$2(dayAtCoord, view);
                        }
                    });
                    actionBarPopupWindowLayout.addView(actionBarMenuSubItem2);
                    ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(CalendarActivity.this.getParentActivity(), false, true);
                    actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(C2888R.string.ClearHistory), C2888R.drawable.msg_delete);
                    actionBarMenuSubItem3.setMinimumWidth(160);
                    actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity$MonthView$2$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onLongPress$3(view);
                        }
                    });
                    actionBarPopupWindowLayout.addView(actionBarMenuSubItem3);
                }
                actionBarPopupWindowLayout.setFitItems(true);
                CalendarActivity.this.blurredView = new View(this.val$context) { // from class: org.telegram.ui.CalendarActivity.MonthView.2.2
                    @Override // android.view.View
                    public void setAlpha(float f) {
                        super.setAlpha(f);
                        View view = CalendarActivity.this.fragmentView;
                        if (view != null) {
                            view.invalidate();
                        }
                    }
                };
                CalendarActivity.this.blurredView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CalendarActivity$MonthView$2$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onLongPress$4(view);
                    }
                });
                CalendarActivity.this.blurredView.setVisibility(8);
                CalendarActivity.this.blurredView.setFitsSystemWindows(true);
                ((BaseFragment) CalendarActivity.this).parentLayout.getOverlayContainerView().addView(CalendarActivity.this.blurredView, LayoutHelper.createFrame(-1, -1.0f));
                CalendarActivity.this.prepareBlurBitmap();
                CalendarActivity.this.presentFragmentAsPreviewWithMenu(chatActivity, actionBarPopupWindowLayout);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongPress$1(final PeriodDay periodDay, View view) {
                if (((BaseFragment) CalendarActivity.this).parentLayout != null && ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() >= 3) {
                    final BaseFragment baseFragment = (BaseFragment) ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().get(((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() - 3);
                    if (baseFragment instanceof ChatActivity) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CalendarActivity$MonthView$2$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onLongPress$0(baseFragment, periodDay);
                            }
                        }, 300L);
                    }
                }
                CalendarActivity.this.finishPreviewFragment();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongPress$0(BaseFragment baseFragment, PeriodDay periodDay) {
                CalendarActivity.this.finishFragment();
                ((ChatActivity) baseFragment).jumpToDate(periodDay.date);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongPress$2(PeriodDay periodDay, View view) {
                CalendarActivity calendarActivity = CalendarActivity.this;
                int i = periodDay.date;
                calendarActivity.dateSelectedEnd = i;
                calendarActivity.dateSelectedStart = i;
                CalendarActivity.this.inSelectionMode = true;
                CalendarActivity.this.updateTitle();
                CalendarActivity.this.animateSelection();
                CalendarActivity.this.finishPreviewFragment();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongPress$3(View view) {
                if (((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() >= 3) {
                    final BaseFragment baseFragment = (BaseFragment) ((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().get(((BaseFragment) CalendarActivity.this).parentLayout.getFragmentStack().size() - 3);
                    if (baseFragment instanceof ChatActivity) {
                        CalendarActivity calendarActivity = CalendarActivity.this;
                        AlertsCreator.createClearDaysDialogAlert(calendarActivity, 1, calendarActivity.getMessagesController().getUser(Long.valueOf(CalendarActivity.this.dialogId)), null, false, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.CalendarActivity.MonthView.2.1
                            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                            public void run(boolean z) {
                                CalendarActivity.this.finishFragment();
                                ((ChatActivity) baseFragment).deleteHistory(CalendarActivity.this.dateSelectedStart, CalendarActivity.this.dateSelectedEnd + 86400, z);
                            }
                        }, null);
                    }
                }
                CalendarActivity.this.finishPreviewFragment();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLongPress$4(View view) {
                CalendarActivity.this.finishPreviewFragment();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startSelectionAnimation(int i, int i2) {
            if (this.messagesByDays != null) {
                for (int i3 = 0; i3 < this.daysInMonth; i3++) {
                    PeriodDay periodDay = (PeriodDay) this.messagesByDays.get(i3, null);
                    if (periodDay != null) {
                        periodDay.fromSelProgress = periodDay.selectProgress;
                        int i4 = periodDay.date;
                        periodDay.toSelProgress = (i4 < i || i4 > i2) ? 0.0f : 1.0f;
                        periodDay.fromSelSEProgress = periodDay.selectStartEndProgress;
                        if (i4 == i || i4 == i2) {
                            periodDay.toSelSEProgress = 1.0f;
                        } else {
                            periodDay.toSelSEProgress = 0.0f;
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSelectionValue(float f) {
            if (this.messagesByDays != null) {
                for (int i = 0; i < this.daysInMonth; i++) {
                    PeriodDay periodDay = (PeriodDay) this.messagesByDays.get(i, null);
                    if (periodDay != null) {
                        float f2 = periodDay.fromSelProgress;
                        periodDay.selectProgress = f2 + ((periodDay.toSelProgress - f2) * f);
                        float f3 = periodDay.fromSelSEProgress;
                        periodDay.selectStartEndProgress = f3 + ((periodDay.toSelSEProgress - f3) * f);
                    }
                }
            }
            invalidate();
        }

        public void dismissRowAnimations(boolean z) {
            for (int i = 0; i < this.rowSelectionPos.size(); i++) {
                animateRow(this.rowSelectionPos.keyAt(i), 0, 0, false, z);
            }
        }

        public void animateRow(final int i, int i2, int i3, final boolean z, boolean z2) {
            final float f;
            final float f2;
            float f3;
            final float f4;
            ValueAnimator valueAnimator = (ValueAnimator) this.rowAnimators.get(i);
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float measuredWidth = getMeasuredWidth() / 7.0f;
            RowAnimationValue rowAnimationValue = (RowAnimationValue) this.rowSelectionPos.get(i);
            if (rowAnimationValue != null) {
                float f5 = rowAnimationValue.startX;
                float f6 = rowAnimationValue.endX;
                f = rowAnimationValue.alpha;
                f2 = f5;
                f3 = 2.0f;
                f4 = f6;
            } else {
                f = 0.0f;
                f2 = (measuredWidth / 2.0f) + (i2 * measuredWidth);
                f3 = 2.0f;
                f4 = f2;
            }
            float f7 = z ? (i2 * measuredWidth) + (measuredWidth / f3) : f2;
            final float f8 = z ? (i3 * measuredWidth) + (measuredWidth / f3) : f4;
            final float f9 = z ? 1.0f : 0.0f;
            final RowAnimationValue rowAnimationValue2 = new RowAnimationValue(f2, f4);
            this.rowSelectionPos.put(i, rowAnimationValue2);
            if (z2) {
                ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
                duration.setInterpolator(Easings.easeInOutQuad);
                final float f10 = f7;
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CalendarActivity$MonthView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$animateRow$1(rowAnimationValue2, f2, f10, f4, f8, f, f9, valueAnimator2);
                    }
                });
                final float f11 = f8;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.CalendarActivity.MonthView.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        RowAnimationValue rowAnimationValue3 = rowAnimationValue2;
                        rowAnimationValue3.startX = f10;
                        rowAnimationValue3.endX = f11;
                        rowAnimationValue3.alpha = f9;
                        MonthView.this.invalidate();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        MonthView.this.rowAnimators.remove(i);
                        if (z) {
                            return;
                        }
                        MonthView.this.rowSelectionPos.remove(i);
                    }
                });
                duration.start();
                this.rowAnimators.put(i, duration);
                return;
            }
            rowAnimationValue2.startX = f7;
            rowAnimationValue2.endX = f8;
            rowAnimationValue2.alpha = f9;
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateRow$1(RowAnimationValue rowAnimationValue, float f, float f2, float f3, float f4, float f5, float f6, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            rowAnimationValue.startX = f + ((f2 - f) * fFloatValue);
            rowAnimationValue.endX = f3 + ((f4 - f3) * fFloatValue);
            rowAnimationValue.alpha = f5 + ((f6 - f5) * fFloatValue);
            invalidate();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.gestureDetector.onTouchEvent(motionEvent);
        }

        public void setDate(int i, int i2, SparseArray sparseArray, boolean z) {
            boolean z2 = false;
            boolean z3 = (i == this.currentYear && i2 == this.currentMonthInYear) ? false : true;
            this.currentYear = i;
            this.currentMonthInYear = i2;
            this.messagesByDays = sparseArray;
            boolean z4 = false;
            if (z3 && this.imagesByDays != null) {
                for (int i3 = 0; i3 < this.imagesByDays.size(); i3++) {
                    ((ImageReceiver) this.imagesByDays.valueAt(i3)).onDetachedFromWindow();
                    ((ImageReceiver) this.imagesByDays.valueAt(i3)).setParentView(null);
                }
                this.imagesByDays = null;
            }
            if (sparseArray != null) {
                if (this.imagesByDays == null) {
                    this.imagesByDays = new SparseArray();
                }
                int i4 = 0;
                while (i4 < sparseArray.size()) {
                    int iKeyAt = sparseArray.keyAt(i4);
                    if (this.imagesByDays.get(iKeyAt, z4) == null && ((PeriodDay) sparseArray.get(iKeyAt)).hasImage) {
                        ImageReceiver imageReceiver = new ImageReceiver();
                        imageReceiver.setParentView(this);
                        MessageObject messageObject = ((PeriodDay) sparseArray.get(iKeyAt)).messageObject;
                        if (messageObject != null) {
                            boolean zHasMediaSpoilers = messageObject.hasMediaSpoilers();
                            if (messageObject.isVideo()) {
                                TLRPC.Document document = messageObject.getDocument();
                                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 50);
                                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320);
                                if (closestPhotoSizeWithSize == closestPhotoSizeWithSize2) {
                                    closestPhotoSizeWithSize2 = null;
                                }
                                if (closestPhotoSizeWithSize != null) {
                                    if (messageObject.strippedThumb != null) {
                                        imageReceiver.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), zHasMediaSpoilers ? "5_5_b" : "44_44", messageObject.strippedThumb, null, messageObject, 0);
                                    } else {
                                        imageReceiver.setImage(ImageLocation.getForDocument(closestPhotoSizeWithSize2, document), zHasMediaSpoilers ? "5_5_b" : "44_44", ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "b", (String) null, messageObject, 0);
                                    }
                                }
                            } else {
                                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                                if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && messageMedia.photo != null && !messageObject.photoThumbs.isEmpty()) {
                                    TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 50);
                                    TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 320, z2, closestPhotoSizeWithSize3, z2);
                                    if (messageObject.mediaExists || DownloadController.getInstance(((BaseFragment) CalendarActivity.this).currentAccount).canDownloadMedia(messageObject)) {
                                        if (closestPhotoSizeWithSize4 == closestPhotoSizeWithSize3) {
                                            closestPhotoSizeWithSize3 = null;
                                        }
                                        if (messageObject.strippedThumb != null) {
                                            imageReceiver.setImage(ImageLocation.getForObject(closestPhotoSizeWithSize4, messageObject.photoThumbsObject), zHasMediaSpoilers ? "5_5_b" : "44_44", null, null, messageObject.strippedThumb, closestPhotoSizeWithSize4 != null ? closestPhotoSizeWithSize4.size : 0L, null, messageObject, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 1);
                                        } else {
                                            imageReceiver.setImage(ImageLocation.getForObject(closestPhotoSizeWithSize4, messageObject.photoThumbsObject), zHasMediaSpoilers ? "5_5_b" : "44_44", ImageLocation.getForObject(closestPhotoSizeWithSize3, messageObject.photoThumbsObject), "b", closestPhotoSizeWithSize4 != null ? closestPhotoSizeWithSize4.size : 0L, null, messageObject, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 1);
                                        }
                                    } else {
                                        BitmapDrawable bitmapDrawable = messageObject.strippedThumb;
                                        if (bitmapDrawable != null) {
                                            imageReceiver.setImage(null, null, bitmapDrawable, null, messageObject, 0);
                                        } else {
                                            imageReceiver.setImage((ImageLocation) null, (String) null, ImageLocation.getForObject(closestPhotoSizeWithSize3, messageObject.photoThumbsObject), "b", (String) null, messageObject, 0);
                                        }
                                    }
                                }
                            }
                            imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(22.0f));
                            this.imagesByDays.put(iKeyAt, imageReceiver);
                        }
                    }
                    i4++;
                    z2 = false;
                    z4 = false;
                }
            }
            int i5 = i2 + 1;
            this.daysInMonth = YearMonth.m633of(i, i5).lengthOfMonth();
            Calendar calendar = Calendar.getInstance();
            calendar.set(i, i2, 0);
            this.startDayOfWeek = (calendar.get(7) + 6) % 7;
            this.startMonthTime = (int) (calendar.getTimeInMillis() / 1000);
            int i6 = this.daysInMonth + this.startDayOfWeek;
            this.cellCount = ((int) (i6 / 7.0f)) + (i6 % 7 == 0 ? 0 : 1);
            calendar.set(i, i5, 0);
            this.titleView.setText(LocaleController.formatYearMont(calendar.getTimeInMillis() / 1000, true));
            CalendarActivity.this.updateRowSelections(this, false);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp((this.cellCount * 52) + 44), TLObject.FLAG_30));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            int i;
            PeriodDay periodDay;
            Canvas canvas2 = canvas;
            super.onDraw(canvas);
            int i2 = this.startDayOfWeek;
            float f9 = 7.0f;
            float measuredWidth = getMeasuredWidth() / 7.0f;
            float fM1124dp = AndroidUtilities.m1124dp(52.0f);
            float f10 = 44.0f;
            int iM1124dp = AndroidUtilities.m1124dp(44.0f);
            int i3 = 0;
            while (true) {
                f = 2.0f;
                if (i3 >= Math.ceil((this.startDayOfWeek + this.daysInMonth) / 7.0f)) {
                    break;
                }
                float fM1124dp2 = (i3 * fM1124dp) + (fM1124dp / 2.0f) + AndroidUtilities.m1124dp(44.0f);
                RowAnimationValue rowAnimationValue = (RowAnimationValue) this.rowSelectionPos.get(i3);
                if (rowAnimationValue != null) {
                    CalendarActivity.this.selectPaint.setColor(Theme.getColor(Theme.key_chat_messagePanelVoiceBackground));
                    CalendarActivity.this.selectPaint.setAlpha((int) (rowAnimationValue.alpha * 40.8f));
                    RectF rectF = AndroidUtilities.rectTmp;
                    float f11 = iM1124dp / 2.0f;
                    rectF.set(rowAnimationValue.startX - f11, fM1124dp2 - f11, rowAnimationValue.endX + f11, fM1124dp2 + f11);
                    float fM1124dp3 = AndroidUtilities.m1124dp(32.0f);
                    canvas2.drawRoundRect(rectF, fM1124dp3, fM1124dp3, CalendarActivity.this.selectPaint);
                }
                i3++;
            }
            int i4 = i2;
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.daysInMonth) {
                float f12 = (i4 * measuredWidth) + (measuredWidth / f);
                float fM1124dp4 = (i6 * fM1124dp) + (fM1124dp / f) + AndroidUtilities.m1124dp(f10);
                int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                SparseArray sparseArray = this.messagesByDays;
                PeriodDay periodDay2 = sparseArray != null ? (PeriodDay) sparseArray.get(i5, null) : null;
                int i7 = i5 + 1;
                if (iCurrentTimeMillis < this.startMonthTime + (i7 * 86400) || (CalendarActivity.this.minDate > 0 && CalendarActivity.this.minDate > this.startMonthTime + ((i5 + 2) * 86400))) {
                    f2 = f9;
                    f3 = f10;
                    f4 = f;
                    int alpha = CalendarActivity.this.textPaint.getAlpha();
                    CalendarActivity.this.textPaint.setAlpha((int) (alpha * 0.3f));
                    canvas2.drawText(Integer.toString(i7), f12, AndroidUtilities.m1124dp(5.0f) + fM1124dp4, CalendarActivity.this.textPaint);
                    CalendarActivity.this.textPaint.setAlpha(alpha);
                } else {
                    f2 = f9;
                    if (periodDay2 == null || !periodDay2.hasImage) {
                        f3 = f10;
                        f4 = f;
                        if (periodDay2 != null && periodDay2.selectStartEndProgress >= 0.01f) {
                            CalendarActivity.this.selectPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                            CalendarActivity.this.selectPaint.setAlpha((int) (periodDay2.selectStartEndProgress * 255.0f));
                            canvas2.drawCircle(f12, fM1124dp4, AndroidUtilities.m1124dp(f3) / f4, CalendarActivity.this.selectPaint);
                            Paint paint = CalendarActivity.this.selectOutlinePaint;
                            int i8 = Theme.key_chat_messagePanelVoiceBackground;
                            paint.setColor(Theme.getColor(i8));
                            RectF rectF2 = AndroidUtilities.rectTmp;
                            rectF2.set(f12 - (AndroidUtilities.m1124dp(f3) / f4), fM1124dp4 - (AndroidUtilities.m1124dp(f3) / f4), (AndroidUtilities.m1124dp(f3) / f4) + f12, (AndroidUtilities.m1124dp(f3) / f4) + fM1124dp4);
                            canvas2.drawArc(rectF2, -90.0f, periodDay2.selectStartEndProgress * 360.0f, false, CalendarActivity.this.selectOutlinePaint);
                            int iM1124dp2 = (int) (AndroidUtilities.m1124dp(f2) * periodDay2.selectStartEndProgress);
                            CalendarActivity.this.selectPaint.setColor(Theme.getColor(i8));
                            CalendarActivity.this.selectPaint.setAlpha((int) (periodDay2.selectStartEndProgress * 255.0f));
                            canvas2.drawCircle(f12, fM1124dp4, (AndroidUtilities.m1124dp(f3) - iM1124dp2) / f4, CalendarActivity.this.selectPaint);
                            float f13 = periodDay2.selectStartEndProgress;
                            if (f13 != 1.0f) {
                                int alpha2 = CalendarActivity.this.textPaint.getAlpha();
                                CalendarActivity.this.textPaint.setAlpha((int) (alpha2 * (1.0f - f13)));
                                canvas2.drawText(Integer.toString(i7), f12, AndroidUtilities.m1124dp(5.0f) + fM1124dp4, CalendarActivity.this.textPaint);
                                CalendarActivity.this.textPaint.setAlpha(alpha2);
                                int alpha3 = CalendarActivity.this.textPaint.getAlpha();
                                CalendarActivity.this.activeTextPaint.setAlpha((int) (alpha3 * f13));
                                canvas2.drawText(Integer.toString(i7), f12, AndroidUtilities.m1124dp(5.0f) + fM1124dp4, CalendarActivity.this.activeTextPaint);
                                CalendarActivity.this.activeTextPaint.setAlpha(alpha3);
                            } else {
                                canvas2.drawText(Integer.toString(i7), f12, AndroidUtilities.m1124dp(5.0f) + fM1124dp4, CalendarActivity.this.activeTextPaint);
                            }
                        } else {
                            canvas2.drawText(Integer.toString(i7), f12, AndroidUtilities.m1124dp(5.0f) + fM1124dp4, CalendarActivity.this.textPaint);
                        }
                    } else {
                        if (this.imagesByDays.get(i5) != null) {
                            if (!CalendarActivity.this.checkEnterItems || periodDay2.wasDrawn) {
                                f3 = f10;
                            } else {
                                periodDay2.enterAlpha = 0.0f;
                                f3 = f10;
                                periodDay2.startEnterDelay = Math.max(0.0f, ((getY() + fM1124dp4) / CalendarActivity.this.listView.getMeasuredHeight()) * 150.0f);
                            }
                            float f14 = periodDay2.startEnterDelay;
                            if (f14 > 0.0f) {
                                float f15 = f14 - 16.0f;
                                periodDay2.startEnterDelay = f15;
                                if (f15 < 0.0f) {
                                    periodDay2.startEnterDelay = 0.0f;
                                } else {
                                    invalidate();
                                }
                            }
                            if (periodDay2.startEnterDelay >= 0.0f) {
                                float f16 = periodDay2.enterAlpha;
                                if (f16 != 1.0f) {
                                    float f17 = f16 + 0.07272727f;
                                    periodDay2.enterAlpha = f17;
                                    if (f17 > 1.0f) {
                                        periodDay2.enterAlpha = 1.0f;
                                    } else {
                                        invalidate();
                                    }
                                }
                            }
                            f8 = periodDay2.enterAlpha;
                            if (f8 != 1.0f) {
                                canvas2.save();
                                float f18 = (0.2f * f8) + 0.8f;
                                canvas2.scale(f18, f18, f12, fM1124dp4);
                            }
                            int iM1124dp3 = (int) (AndroidUtilities.m1124dp(f2) * periodDay2.selectProgress);
                            if (periodDay2.selectStartEndProgress >= 0.01f) {
                                f6 = 1.0f;
                                CalendarActivity.this.selectPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                                CalendarActivity.this.selectPaint.setAlpha((int) (periodDay2.selectStartEndProgress * 255.0f));
                                canvas2.drawCircle(f12, fM1124dp4, AndroidUtilities.m1124dp(f3) / f, CalendarActivity.this.selectPaint);
                                CalendarActivity.this.selectOutlinePaint.setColor(Theme.getColor(Theme.key_chat_messagePanelVoiceBackground));
                                RectF rectF3 = AndroidUtilities.rectTmp;
                                f4 = f;
                                rectF3.set(f12 - (AndroidUtilities.m1124dp(f3) / f), fM1124dp4 - (AndroidUtilities.m1124dp(f3) / f), (AndroidUtilities.m1124dp(f3) / f4) + f12, (AndroidUtilities.m1124dp(f3) / f4) + fM1124dp4);
                                f5 = fM1124dp4;
                                periodDay = periodDay2;
                                f7 = f12;
                                i = iM1124dp3;
                                canvas2 = canvas;
                                canvas2.drawArc(rectF3, -90.0f, periodDay2.selectStartEndProgress * 360.0f, false, CalendarActivity.this.selectOutlinePaint);
                            } else {
                                f5 = fM1124dp4;
                                i = iM1124dp3;
                                f6 = 1.0f;
                                f4 = f;
                                f7 = f12;
                                periodDay = periodDay2;
                            }
                            ((ImageReceiver) this.imagesByDays.get(i5)).setAlpha(periodDay.enterAlpha);
                            ((ImageReceiver) this.imagesByDays.get(i5)).setImageCoords(f7 - ((AndroidUtilities.m1124dp(f3) - i) / f4), f5 - ((AndroidUtilities.m1124dp(f3) - i) / f4), AndroidUtilities.m1124dp(f3) - i, AndroidUtilities.m1124dp(f3) - i);
                            ((ImageReceiver) this.imagesByDays.get(i5)).draw(canvas2);
                            if (this.messagesByDays.get(i5) != null && ((PeriodDay) this.messagesByDays.get(i5)).messageObject != null && ((PeriodDay) this.messagesByDays.get(i5)).messageObject.hasMediaSpoilers()) {
                                float fM1124dp5 = (AndroidUtilities.m1124dp(f3) - i) / f4;
                                CalendarActivity.this.path.rewind();
                                CalendarActivity.this.path.addCircle(f7, f5, fM1124dp5, Path.Direction.CW);
                                canvas2.save();
                                canvas2.clipPath(CalendarActivity.this.path);
                                CalendarActivity.this.mediaSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f * periodDay.enterAlpha)));
                                CalendarActivity.this.mediaSpoilerEffect.setBounds((int) (f7 - fM1124dp5), (int) (f5 - fM1124dp5), (int) (f7 + fM1124dp5), (int) (fM1124dp5 + f5));
                                CalendarActivity.this.mediaSpoilerEffect.draw(canvas2);
                                invalidate();
                                canvas2.restore();
                            }
                            CalendarActivity.this.blackoutPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (periodDay.enterAlpha * 80.0f)));
                            canvas2.drawCircle(f7, f5, (AndroidUtilities.m1124dp(f3) - i) / f4, CalendarActivity.this.blackoutPaint);
                            periodDay.wasDrawn = true;
                            if (f8 != 1.0f) {
                                canvas2.restore();
                            }
                        } else {
                            f5 = fM1124dp4;
                            f6 = 1.0f;
                            f3 = f10;
                            f4 = f;
                            f7 = f12;
                            f8 = 1.0f;
                        }
                        if (f8 != f6) {
                            int alpha4 = CalendarActivity.this.textPaint.getAlpha();
                            CalendarActivity.this.textPaint.setAlpha((int) (alpha4 * (f6 - f8)));
                            canvas2.drawText(Integer.toString(i7), f7, AndroidUtilities.m1124dp(5.0f) + f5, CalendarActivity.this.textPaint);
                            CalendarActivity.this.textPaint.setAlpha(alpha4);
                            int alpha5 = CalendarActivity.this.textPaint.getAlpha();
                            CalendarActivity.this.activeTextPaint.setAlpha((int) (alpha5 * f8));
                            canvas2.drawText(Integer.toString(i7), f7, AndroidUtilities.m1124dp(5.0f) + f5, CalendarActivity.this.activeTextPaint);
                            CalendarActivity.this.activeTextPaint.setAlpha(alpha5);
                        } else {
                            canvas2.drawText(Integer.toString(i7), f7, AndroidUtilities.m1124dp(5.0f) + f5, CalendarActivity.this.activeTextPaint);
                        }
                    }
                }
                i4++;
                if (i4 >= 7) {
                    i6++;
                    i4 = 0;
                }
                i5 = i7;
                f9 = f2;
                f10 = f3;
                f = f4;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
            if (this.imagesByDays != null) {
                for (int i = 0; i < this.imagesByDays.size(); i++) {
                    ((ImageReceiver) this.imagesByDays.valueAt(i)).onAttachedToWindow();
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            if (this.imagesByDays != null) {
                for (int i = 0; i < this.imagesByDays.size(); i++) {
                    ((ImageReceiver) this.imagesByDays.valueAt(i)).onDetachedFromWindow();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitle() {
        String string;
        HintView hintView;
        if (!this.canClearHistory) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.Calendar));
            this.backDrawable.setRotation(0.0f, true);
            return;
        }
        int i = this.dateSelectedStart;
        int i2 = this.dateSelectedEnd;
        int iAbs = (i == i2 && i == 0) ? 0 : (Math.abs(i - i2) / 86400) + 1;
        boolean z = this.lastInSelectionMode;
        int i3 = this.lastDaysSelected;
        if (iAbs == i3 && z == this.inSelectionMode) {
            return;
        }
        boolean z2 = i3 > iAbs;
        this.lastDaysSelected = iAbs;
        boolean z3 = this.inSelectionMode;
        this.lastInSelectionMode = z3;
        if (iAbs > 0) {
            string = LocaleController.formatPluralString("Days", iAbs, new Object[0]);
            this.backDrawable.setRotation(1.0f, true);
        } else if (z3) {
            string = LocaleController.getString(C2888R.string.SelectDays);
            this.backDrawable.setRotation(1.0f, true);
        } else {
            string = LocaleController.getString(C2888R.string.Calendar);
            this.backDrawable.setRotation(0.0f, true);
        }
        if (iAbs > 1) {
            this.removeDaysButton.setText(LocaleController.formatString("ClearHistoryForTheseDays", C2888R.string.ClearHistoryForTheseDays, new Object[0]));
        } else if (iAbs > 0 || this.inSelectionMode) {
            this.removeDaysButton.setText(LocaleController.formatString("ClearHistoryForThisDay", C2888R.string.ClearHistoryForThisDay, new Object[0]));
        }
        this.actionBar.setTitleAnimated(string, z2, 150L);
        if ((!this.inSelectionMode || iAbs > 0) && (hintView = this.selectDaysHint) != null) {
            hintView.hide();
        }
        if (iAbs > 0 || this.inSelectionMode) {
            if (this.removeDaysButton.getVisibility() == 8) {
                this.removeDaysButton.setAlpha(0.0f);
                this.removeDaysButton.setTranslationY(-AndroidUtilities.m1124dp(20.0f));
            }
            this.removeDaysButton.setVisibility(0);
            this.selectDaysButton.animate().setListener(null).cancel();
            this.removeDaysButton.animate().setListener(null).cancel();
            this.selectDaysButton.animate().alpha(0.0f).translationY(AndroidUtilities.m1124dp(20.0f)).setDuration(150L).setListener(new HideViewAfterAnimation(this.selectDaysButton)).start();
            this.removeDaysButton.animate().alpha(iAbs == 0 ? 0.5f : 1.0f).translationY(0.0f).start();
            this.selectDaysButton.setEnabled(false);
            this.removeDaysButton.setEnabled(true);
            return;
        }
        if (this.selectDaysButton.getVisibility() == 8) {
            this.selectDaysButton.setAlpha(0.0f);
            this.selectDaysButton.setTranslationY(AndroidUtilities.m1124dp(20.0f));
        }
        this.selectDaysButton.setVisibility(0);
        this.selectDaysButton.animate().setListener(null).cancel();
        this.removeDaysButton.animate().setListener(null).cancel();
        this.selectDaysButton.animate().alpha(1.0f).translationY(0.0f).start();
        this.removeDaysButton.animate().alpha(0.0f).translationY(-AndroidUtilities.m1124dp(20.0f)).setDuration(150L).setListener(new HideViewAfterAnimation(this.removeDaysButton)).start();
        this.selectDaysButton.setEnabled(true);
        this.removeDaysButton.setEnabled(false);
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public void setChatActivity(ChatActivity chatActivity) {
        this.chatActivity = chatActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PeriodDay {
        int date;
        float enterAlpha;
        float fromSelProgress;
        float fromSelSEProgress;
        boolean hasImage;
        MessageObject messageObject;
        float selectProgress;
        float selectStartEndProgress;
        float startEnterDelay;
        int startOffset;
        ArrayList storyItems;
        float toSelProgress;
        float toSelSEProgress;
        boolean wasDrawn;

        private PeriodDay() {
            this.enterAlpha = 1.0f;
            this.startEnterDelay = 1.0f;
            this.hasImage = true;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.CalendarActivity.9
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public void didSetColor() {
                CalendarActivity.this.updateColors();
            }
        };
        new ArrayList();
        new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhite);
        new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlackText);
        new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_listSelector);
        return super.getThemeDescriptions();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        super.onTransitionAnimationStart(z, z2);
        this.isOpened = true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        super.onTransitionAnimationProgress(z, f);
        View view = this.blurredView;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        if (z) {
            this.blurredView.setAlpha(1.0f - f);
        } else {
            this.blurredView.setAlpha(f);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        View view;
        if (z && (view = this.blurredView) != null && view.getVisibility() == 0) {
            this.blurredView.setVisibility(8);
            this.blurredView.setBackground(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateSelection() {
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(300L);
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CalendarActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateSelection$4(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.CalendarActivity.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                for (int i = 0; i < CalendarActivity.this.listView.getChildCount(); i++) {
                    ((MonthView) CalendarActivity.this.listView.getChildAt(i)).startSelectionAnimation(CalendarActivity.this.dateSelectedStart, CalendarActivity.this.dateSelectedEnd);
                }
            }
        });
        duration.start();
        this.selectionAnimator = duration;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            updateRowSelections((MonthView) this.listView.getChildAt(i), true);
        }
        for (int i2 = 0; i2 < this.listView.getCachedChildCount(); i2++) {
            MonthView monthView = (MonthView) this.listView.getCachedChildAt(i2);
            updateRowSelections(monthView, false);
            monthView.startSelectionAnimation(this.dateSelectedStart, this.dateSelectedEnd);
            monthView.setSelectionValue(1.0f);
        }
        for (int i3 = 0; i3 < this.listView.getHiddenChildCount(); i3++) {
            MonthView monthView2 = (MonthView) this.listView.getHiddenChildAt(i3);
            updateRowSelections(monthView2, false);
            monthView2.startSelectionAnimation(this.dateSelectedStart, this.dateSelectedEnd);
            monthView2.setSelectionValue(1.0f);
        }
        for (int i4 = 0; i4 < this.listView.getAttachedScrapChildCount(); i4++) {
            MonthView monthView3 = (MonthView) this.listView.getAttachedScrapChildAt(i4);
            updateRowSelections(monthView3, false);
            monthView3.startSelectionAnimation(this.dateSelectedStart, this.dateSelectedEnd);
            monthView3.setSelectionValue(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSelection$4(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            ((MonthView) this.listView.getChildAt(i)).setSelectionValue(fFloatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRowSelections(MonthView monthView, boolean z) {
        int i;
        int i2;
        if (this.dateSelectedStart == 0 || this.dateSelectedEnd == 0) {
            monthView.dismissRowAnimations(z);
            return;
        }
        if (monthView.messagesByDays == null) {
            return;
        }
        if (!z) {
            monthView.dismissRowAnimations(false);
        }
        int i3 = monthView.startDayOfWeek;
        int i4 = 0;
        int i5 = -1;
        int i6 = -1;
        for (int i7 = 0; i7 < monthView.daysInMonth; i7++) {
            PeriodDay periodDay = (PeriodDay) monthView.messagesByDays.get(i7, null);
            if (periodDay != null && (i2 = periodDay.date) >= this.dateSelectedStart && i2 <= this.dateSelectedEnd) {
                if (i5 == -1) {
                    i5 = i3;
                }
                i6 = i3;
            }
            i3++;
            if (i3 >= 7) {
                if (i5 != -1 && i6 != -1) {
                    i = i4;
                    monthView.animateRow(i, i5, i6, true, z);
                } else {
                    i = i4;
                    monthView.animateRow(i, 0, 0, false, z);
                }
                i4 = i + 1;
                i3 = 0;
                i5 = -1;
                i6 = -1;
            }
        }
        if (i5 != -1 && i6 != -1) {
            monthView.animateRow(i4, i5, i6, true, z);
        } else {
            monthView.animateRow(i4, 0, 0, false, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class RowAnimationValue {
        float alpha;
        float endX;
        float startX;

        RowAnimationValue(float f, float f2) {
            this.startX = f;
            this.endX = f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareBlurBitmap() {
        if (this.blurredView == null) {
            return;
        }
        int measuredWidth = (int) (this.parentLayout.getView().getMeasuredWidth() / 6.0f);
        int measuredHeight = (int) (this.parentLayout.getView().getMeasuredHeight() / 6.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.scale(0.16666667f, 0.16666667f);
        this.parentLayout.getView().draw(canvas);
        Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
        this.blurredView.setBackground(new BitmapDrawable(bitmapCreateBitmap));
        this.blurredView.setAlpha(0.0f);
        this.blurredView.setVisibility(0);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!this.inSelectionMode) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.inSelectionMode = false;
            this.dateSelectedEnd = 0;
            this.dateSelectedStart = 0;
            updateTitle();
            animateSelection();
        }
        return false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) > 0.699999988079071d;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return getThemedColor(Theme.key_windowBackgroundWhite);
    }
}
