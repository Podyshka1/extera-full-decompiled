package com.exteragram.messenger.ai.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Message;
import com.exteragram.messenger.ai.data.Role;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.ai.network.Client;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.ai.network.GenerationCallback;
import com.exteragram.messenger.ai.network.backend.OnDeviceAvailability;
import com.exteragram.messenger.ai.ui.GenerateFromMessageBottomSheet;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.UnaryOperator;
import java.util.regex.Matcher;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LinkifyPort;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkPath;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.MarkdownParser;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.TypingDotsDrawable;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.iv.RichMessageConvert;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AiResponseAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private final PaddedAdapter adapter;
    private final Client client;
    private final View contextDivider;
    private final LinearLayout contextView;
    private String currentRequestId;
    private CharSequence currentResponse;
    private TL_iv.RichMessage currentRichMessage;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    private boolean errorState;
    private BaseFragment fragment;
    private boolean generating;
    private final HeaderView headerView;
    private String imagePath;
    private final RecyclerListView listView;
    private final LoadingTextView loadingTextView;
    private final ButtonWithCounterView mainButton;
    private Utilities.Callback3<String, CharSequence, TL_iv.RichMessage> onInsertPress;
    private Utilities.CallbackReturn<URLSpan, Boolean> onLinkPress;
    private int parseGeneration;
    private boolean parsingMarkdown;
    private String pendingMarkdown;
    private final RichMessageLayout.PreviewView previewView;
    private String prompt;
    private final TextView promptTextView;
    private final ResponseContainer responseContainer;
    private final AnimatedFloat sheetTopAnimated;
    private boolean sheetTopNotAnimate;
    private final TextSelectionHelper.ArticleTextSelectionHelper textSelectionHelper;
    private final TextSelectionHelper.TextSelectionOverlay textSelectionOverlay;
    private final ThinkingDotsView thinkingDotsView;
    private boolean thinkingVisible;
    private boolean turnSaved;
    private boolean useHistory;

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return false;
    }

    private AiResponseAlert(Context context, Client client, String str, String str2, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        this.client = client;
        this.imagePath = str2;
        this.useHistory = z;
        this.backgroundPaddingLeft = 0;
        fixNavigationBar();
        ContainerView containerView = new ContainerView(context);
        this.containerView = containerView;
        this.sheetTopAnimated = new AnimatedFloat(containerView, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        LoadingTextView loadingTextView = new LoadingTextView(context);
        this.loadingTextView = loadingTextView;
        loadingTextView.setPadding(AndroidUtilities.dp(22.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(22.0f), AndroidUtilities.dp(6.0f));
        loadingTextView.setTextSize(1, SharedConfig.fontSize);
        int i = Theme.key_dialogTextBlack;
        loadingTextView.setTextColor(getThemedColor(i));
        loadingTextView.setTypeface(AndroidUtilities.regular());
        loadingTextView.setLinkTextColor(Theme.multAlpha(getThemedColor(i), 0.2f));
        this.thinkingDotsView = new ThinkingDotsView(context, getThemedColor(i));
        TextView textView = new TextView(context);
        this.promptTextView = textView;
        textView.setPadding(AndroidUtilities.dp(22.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(22.0f), 0);
        textView.setTextSize(1, SharedConfig.fontSize);
        textView.setTypeface(AndroidUtilities.regular());
        textView.setTextColor(getThemedColor(Theme.key_player_actionBarSubtitle));
        RichMessageLayout.PreviewView previewView = new RichMessageLayout.PreviewView(context, UserConfig.selectedAccount, createRichResourcesProvider());
        this.previewView = previewView;
        previewView.setPadding(AndroidUtilities.dp(22.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(22.0f), AndroidUtilities.dp(6.0f));
        previewView.setOnLinkPress(new Utilities.Callback() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$0((URLSpan) obj);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context) { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.1
            @Override // android.view.View
            public boolean hasOverlappingRendering() {
                return false;
            }
        };
        this.contextView = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setAlpha(0.55f);
        linearLayout.setVisibility(8);
        View view = new View(context);
        this.contextDivider = view;
        view.setBackgroundColor(Theme.multAlpha(getThemedColor(Theme.key_divider), 0.75f));
        view.setVisibility(8);
        ResponseContainer responseContainer = new ResponseContainer(context);
        this.responseContainer = responseContainer;
        responseContainer.addView(linearLayout, LayoutHelper.createLinear(-1, -2));
        responseContainer.addView(view, LayoutHelper.createLinear(-1, 1, 22.0f, 10.0f, 22.0f, 0.0f));
        responseContainer.addView(textView, LayoutHelper.createLinear(-1, -2));
        responseContainer.addView(previewView, LayoutHelper.createLinear(-1, -2));
        setPrompt(str.trim());
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.2
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onRequestFocusInDescendants(int i2, Rect rect) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
            public void requestChildFocus(View view2, View view3) {
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && motionEvent.getY() < AiResponseAlert.this.getSheetTop() - getTop()) {
                    AiResponseAlert.this.lambda$new$0();
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(1);
        recyclerListView.setPadding(0, AndroidUtilities.statusBarHeight + AndroidUtilities.dp(56.0f), 0, AndroidUtilities.dp(80.0f));
        recyclerListView.setClipToPadding(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        recyclerListView.setLayoutManager(linearLayoutManager);
        PaddedAdapter paddedAdapter = new PaddedAdapter(context, loadingTextView);
        this.adapter = paddedAdapter;
        recyclerListView.setAdapter(paddedAdapter);
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ((BottomSheet) AiResponseAlert.this).containerView.invalidate();
                AiResponseAlert.this.textSelectionHelper.onParentScrolled();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                if (i2 == 0) {
                    AiResponseAlert.this.sheetTopNotAnimate = false;
                }
                if ((i2 == 0 || i2 == 2) && AiResponseAlert.this.getSheetTop(false) > 0.0f && AiResponseAlert.this.getSheetTop(false) < AndroidUtilities.dp(96.0f) && AiResponseAlert.this.listView.canScrollVertically(1) && AiResponseAlert.this.hasEnoughHeight()) {
                    AiResponseAlert.this.sheetTopNotAnimate = true;
                    AiResponseAlert.this.listView.smoothScrollBy(0, (int) AiResponseAlert.this.getSheetTop(false));
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) AiResponseAlert.this).containerView.invalidate();
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) AiResponseAlert.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(180L);
        defaultItemAnimator.setInterpolator(new LinearInterpolator());
        recyclerListView.setItemAnimator(defaultItemAnimator);
        this.containerView.addView(recyclerListView, LayoutHelper.createFrame(-1, -2, 80));
        TextSelectionHelper.ArticleTextSelectionHelper articleTextSelectionHelper = new TextSelectionHelper.ArticleTextSelectionHelper();
        this.textSelectionHelper = articleTextSelectionHelper;
        articleTextSelectionHelper.setParentView(recyclerListView);
        articleTextSelectionHelper.layoutManager = linearLayoutManager;
        TextSelectionHelper.TextSelectionOverlay overlayView = articleTextSelectionHelper.getOverlayView(context);
        this.textSelectionOverlay = overlayView;
        AndroidUtilities.removeFromParent(overlayView);
        this.containerView.addView(overlayView, LayoutHelper.createFrame(-1, -1, 119));
        previewView.setTextSelectionHelper(articleTextSelectionHelper);
        HeaderView headerView = new HeaderView(context);
        this.headerView = headerView;
        this.containerView.addView(headerView, LayoutHelper.createFrame(-1, 78, 55));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.mainButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        buttonWithCounterView.setColor(getThemedColor(Theme.key_featuredStickers_addButton));
        buttonWithCounterView.setText(LocaleController.getString(C2665R.string.Stop), false);
        this.generating = true;
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$1(view2);
            }
        });
        this.containerView.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 87, 16.0f, 16.0f, 16.0f, 16.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(URLSpan uRLSpan) {
        openUrl(uRLSpan.getURL());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (this.errorState) {
            regenerate();
        } else if (this.generating) {
            stopGeneration();
        } else {
            lambda$new$0();
        }
    }

    private Theme.ResourcesProvider createRichResourcesProvider() {
        final Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return new Theme.ResourcesProvider() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.5
            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public int getColor(int i) {
                if (i == Theme.key_chat_messageTextIn || i == Theme.key_chat_messageTextOut) {
                    i = Theme.key_dialogTextBlack;
                } else if (i == Theme.key_chat_messageLinkIn || i == Theme.key_chat_messageLinkOut) {
                    i = Theme.key_dialogTextLink;
                }
                return Theme.getColor(i, resourcesProvider);
            }

            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public Drawable getDrawable(String str) {
                Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                if (resourcesProvider2 == null) {
                    return null;
                }
                return resourcesProvider2.getDrawable(str);
            }

            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public Paint getPaint(String str) {
                Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                return resourcesProvider2 == null ? Theme.getThemePaint(str) : resourcesProvider2.getPaint(str);
            }

            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public boolean hasGradientService() {
                Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                return resourcesProvider2 != null && resourcesProvider2.hasGradientService();
            }

            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public boolean isDark() {
                Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                return resourcesProvider2 == null ? Theme.isCurrentThemeDark() : resourcesProvider2.isDark();
            }

            @Override // org.telegram.ui.ActionBar.Theme.ResourcesProvider
            public void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
                Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
                if (resourcesProvider2 == null) {
                    Theme.applyServiceShaderMatrix(i, i2, f, f2);
                } else {
                    resourcesProvider2.applyServiceShaderMatrix(i, i2, f, f2);
                }
            }
        };
    }

    public static AiResponseAlert showAlert(BaseFragment baseFragment, Client client, String str, boolean z, boolean z2, Utilities.CallbackReturn<URLSpan, Boolean> callbackReturn, Runnable runnable, Utilities.Callback3<String, CharSequence, TL_iv.RichMessage> callback3) {
        return showAlert(baseFragment, client, str, null, z, z2, callbackReturn, runnable, callback3);
    }

    public static AiResponseAlert showAlert(BaseFragment baseFragment, Client client, String str, String str2, boolean z, boolean z2, Utilities.CallbackReturn<URLSpan, Boolean> callbackReturn, final Runnable runnable, Utilities.Callback3<String, CharSequence, TL_iv.RichMessage> callback3) {
        AiResponseAlert aiResponseAlert = new AiResponseAlert(baseFragment.getContext(), client, str, str2, z, baseFragment.getResourceProvider()) { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.6
            @Override // com.exteragram.messenger.ai.ui.AiResponseAlert, org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
            /* JADX INFO: renamed from: dismiss */
            public void lambda$new$0() {
                super.lambda$new$0();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        aiResponseAlert.setNoforwards(z2);
        aiResponseAlert.setFragment(baseFragment);
        aiResponseAlert.setOnLinkPress(callbackReturn);
        aiResponseAlert.setOnInsertPress(callback3);
        if (baseFragment.getParentActivity() != null) {
            baseFragment.showDialog(aiResponseAlert);
        }
        aiResponseAlert.generate();
        return aiResponseAlert;
    }

    public void setPrompt(String str) {
        this.prompt = str;
        LoadingTextView loadingTextView = this.loadingTextView;
        loadingTextView.setText(Emoji.replaceEmoji(str, loadingTextView.getPaint().getFontMetricsInt(), true));
        formatPrompt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMainButton(boolean z) {
        updateMainButton(z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMainButton(boolean z, boolean z2) {
        this.generating = z;
        this.errorState = z2;
        this.mainButton.setText(LocaleController.getString(z ? C2665R.string.Stop : z2 ? C2665R.string.Retry : C2665R.string.Close), true);
        boolean z3 = false;
        boolean z4 = (z || z2 || TextUtils.isEmpty(this.currentResponse)) ? false : true;
        ActionBarMenuItem actionBarMenuItem = this.headerView.optionsButton;
        if (this.useHistory && this.turnSaved) {
            z3 = true;
        }
        actionBarMenuItem.setSubItemShown(4, z3);
        AndroidUtilities.updateViewVisibilityAnimated(this.headerView.optionsButton, z4, 0.5f, true);
        if (this.onInsertPress != null) {
            AndroidUtilities.updateViewVisibilityAnimated(this.headerView.insertButton, z4, 0.5f, true);
        }
    }

    private void stopGeneration() {
        this.client.stopRequest(this.currentRequestId);
        this.currentRequestId = null;
        stopThinking();
        if (TextUtils.isEmpty(this.currentResponse)) {
            lambda$new$0();
        } else {
            this.adapter.updateMainView(this.responseContainer);
            updateMainButton(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void regenerate() {
        dropLastTurnFromHistory();
        showLoadingView();
        generate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dropLastTurnFromHistory() {
        if (this.turnSaved) {
            AiConfig.removeLastFromHistory();
            this.turnSaved = false;
        }
    }

    private void formatPrompt() {
        if (AiConfig.getShowResponseOnly() || TextUtils.isEmpty(this.prompt)) {
            this.promptTextView.setVisibility(8);
            this.promptTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        } else {
            this.promptTextView.setVisibility(0);
            this.promptTextView.setText(Emoji.replaceEmoji(formatPromptText(this.prompt), this.promptTextView.getPaint().getFontMetricsInt(), false));
        }
    }

    private CharSequence formatPromptText(String str) {
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2665R.drawable.msg_mini_arrow_mediathin);
        int i = Theme.key_player_actionBarSubtitle;
        coloredImageSpan.setColorKey(i);
        coloredImageSpan.setScale(1.0f, 1.0f);
        coloredImageSpan.setTranslateY(AndroidUtilities.dpf2(1.5f));
        coloredImageSpan.spaceScaleX = 0.95f;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("→ " + str);
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.dp(4.0f)), 1, 2, 33);
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.8f), 2, spannableStringBuilder.length(), 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(getThemedColor(i)), 2, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<Service> availableServices() {
        ArrayList<Service> arrayList = new ArrayList<>();
        for (Service service : AiController.getInstance().getAll()) {
            if (!service.isOnDevice() || OnDeviceAvailability.isReady()) {
                arrayList.add(service);
            }
        }
        return arrayList;
    }

    private void updateContextView() {
        this.contextView.removeAllViews();
        ArrayList<Message> conversationHistory = (!this.useHistory || AiConfig.getShowResponseOnly()) ? null : AiConfig.getConversationHistory();
        ArrayList<Message> arrayList = new ArrayList<>();
        if (conversationHistory != null) {
            for (int iMax = Math.max(0, conversationHistory.size() - 6); iMax < conversationHistory.size(); iMax++) {
                Message message = conversationHistory.get(iMax);
                if (message != null && !TextUtils.isEmpty(message.content())) {
                    arrayList.add(message);
                    this.contextView.addView(createContextTextView(message), LayoutHelper.createLinear(-1, -2));
                }
            }
        }
        boolean z = this.contextView.getChildCount() > 0;
        this.contextView.setVisibility(z ? 0 : 8);
        this.contextDivider.setVisibility(z ? 0 : 8);
        formatContextAsync(arrayList);
    }

    private void formatContextAsync(final ArrayList<Message> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        final int i = this.parseGeneration;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$formatContextAsync$3(arrayList, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$formatContextAsync$3(ArrayList arrayList, final int i) {
        final ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Message message = (Message) obj;
            arrayList2.add("assistant".equals(message.role()) ? MarkdownPreview.format(message.content()) : null);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$formatContextAsync$2(i, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$formatContextAsync$2(int i, ArrayList arrayList) {
        if (i == this.parseGeneration && this.contextView.getChildCount() == arrayList.size()) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                CharSequence charSequence = (CharSequence) arrayList.get(i2);
                if (charSequence != null) {
                    View childAt = this.contextView.getChildAt(i2);
                    if (childAt instanceof TextView) {
                        TextView textView = (TextView) childAt;
                        textView.setText(Emoji.replaceEmoji(charSequence, textView.getPaint().getFontMetricsInt(), false));
                    }
                }
            }
        }
    }

    private TextView createContextTextView(Message message) {
        boolean zEquals = "assistant".equals(message.role());
        TextView textView = new TextView(getContext());
        textView.setTextSize(1, SharedConfig.fontSize);
        textView.setTypeface(AndroidUtilities.regular());
        textView.setMaxLines(3);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setPadding(AndroidUtilities.dp(22.0f), AndroidUtilities.dp(!zEquals ? 12.0f : 6.0f), AndroidUtilities.dp(22.0f), 0);
        textView.setTextColor(getThemedColor(!zEquals ? Theme.key_player_actionBarSubtitle : Theme.key_dialogTextBlack));
        textView.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
        textView.setText(Emoji.replaceEmoji(!zEquals ? formatPromptText(message.content()) : message.content(), textView.getPaint().getFontMetricsInt(), false));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getRawResponse(CharSequence charSequence) {
        if (AiConfig.getShowResponseOnly() || TextUtils.isEmpty(this.prompt)) {
            return charSequence;
        }
        return "→ " + this.prompt + "\n\n" + ((Object) charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getInsertResponse() {
        TL_iv.RichMessage richMessage = this.currentRichMessage;
        if (richMessage == null) {
            return getRawResponse(this.currentResponse);
        }
        CharSequence charSequenceBlocksToCharSequence = RichMessageConvert.blocksToCharSequence(richMessage.blocks);
        if (AiConfig.getInsertAsQuote()) {
            charSequenceBlocksToCharSequence = AndroidUtilities.removeSpans(AndroidUtilities.removeSpans(charSequenceBlocksToCharSequence, QuoteSpan.QuoteStyleSpan.class), QuoteSpan.class);
        }
        if (AiConfig.getShowResponseOnly() || TextUtils.isEmpty(this.prompt)) {
            return charSequenceBlocksToCharSequence;
        }
        return new SpannableStringBuilder("→ " + this.prompt + "\n\n").append(charSequenceBlocksToCharSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generate() {
        this.currentResponse = null;
        this.currentRichMessage = null;
        this.pendingMarkdown = null;
        this.turnSaved = false;
        this.parseGeneration++;
        updateMainButton(true);
        updateContextView();
        this.textSelectionHelper.clear(true);
        stopThinking();
        if (AiController.getInstance().getSelected().isReasoningEnabled() && AiConfig.getResponseStreaming()) {
            showThinking();
        }
        this.currentRequestId = this.client.getResponse(this.prompt, this.useHistory, AiConfig.getResponseStreaming(), this.imagePath, new C12017());
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.ai.ui.AiResponseAlert$7 */
    public class C12017 implements GenerationCallback {
        public C12017() {
        }

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onThinking() {
            AiResponseAlert.this.showThinking();
        }

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onResponse(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            AiResponseAlert.this.currentResponse = str;
            AiResponseAlert aiResponseAlert = AiResponseAlert.this;
            aiResponseAlert.turnSaved = aiResponseAlert.useHistory;
            AiResponseAlert.this.setResponse(str);
            AiResponseAlert.this.updateMainButton(false);
        }

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onChunk(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            AiResponseAlert.this.currentResponse = str;
            AiResponseAlert.this.setResponse(str);
        }

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onError(int i, String str) {
            AiResponseAlert.this.stopThinking();
            AiController.showErrorBulletin(((BottomSheet) AiResponseAlert.this).containerView, ((BottomSheet) AiResponseAlert.this).resourcesProvider, i, str, (!AiController.isOnDeviceError(i) || AiResponseAlert.this.availableServices().size() <= 1) ? null : new Runnable() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$0();
                }
            });
            AiResponseAlert.this.adapter.updateMainView(AiResponseAlert.this.responseContainer);
            AiResponseAlert.this.updateMainButton(false, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$0() {
            AiResponseAlert.this.headerView.openModelSelect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showThinking() {
        if (this.thinkingVisible || !TextUtils.isEmpty(this.currentResponse)) {
            return;
        }
        this.thinkingVisible = true;
        this.thinkingDotsView.start();
        this.adapter.updateMainView(this.thinkingDotsView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopThinking() {
        this.thinkingVisible = false;
        this.thinkingDotsView.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLoadingView() {
        this.textSelectionHelper.clear(true);
        this.adapter.updateMainView(this.loadingTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResponse(String str) {
        this.pendingMarkdown = str;
        parseMarkdownAsync();
    }

    private void parseMarkdownAsync() {
        final String str;
        if (this.parsingMarkdown || (str = this.pendingMarkdown) == null) {
            return;
        }
        final int i = this.parseGeneration;
        this.pendingMarkdown = null;
        this.parsingMarkdown = true;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$parseMarkdownAsync$5(str, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$parseMarkdownAsync$5(String str, final int i) {
        final TL_iv.RichMessage markdown = parseMarkdown(str);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$parseMarkdownAsync$4(i, markdown);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$parseMarkdownAsync$4(int i, TL_iv.RichMessage richMessage) {
        this.parsingMarkdown = false;
        if (i != this.parseGeneration) {
            return;
        }
        stopThinking();
        this.currentRichMessage = richMessage;
        this.previewView.set(richMessage);
        this.adapter.updateMainView(this.responseContainer);
        parseMarkdownAsync();
    }

    private static TL_iv.RichMessage parseMarkdown(String str) {
        TL_iv.RichMessage richMessage = new TL_iv.RichMessage();
        try {
            MarkdownParser.parse(str, richMessage.blocks);
        } catch (Throwable th) {
            FileLog.m992e(th);
            richMessage.blocks.clear();
        }
        if (richMessage.blocks.isEmpty()) {
            TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
            pageblockparagraph.text = plainText(str);
            richMessage.blocks.add(pageblockparagraph);
        }
        linkifyBlocks(richMessage.blocks);
        return richMessage;
    }

    private static void linkifyBlocks(ArrayList<TL_iv.PageBlock> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_iv.PageBlock pageBlock = arrayList.get(i);
            i++;
            TL_iv.PageBlock pageBlock2 = pageBlock;
            if (!(pageBlock2 instanceof TL_iv.pageBlockPreformatted)) {
                if (pageBlock2 instanceof TL_iv.pageBlockDetails) {
                    TL_iv.pageBlockDetails pageblockdetails = (TL_iv.pageBlockDetails) pageBlock2;
                    pageblockdetails.title = linkify(pageblockdetails.title);
                    linkifyBlocks(pageblockdetails.blocks);
                } else if (pageBlock2 instanceof TL_iv.pageBlockList) {
                    ArrayList<TL_iv.PageListItem> arrayList2 = ((TL_iv.pageBlockList) pageBlock2).items;
                    int size2 = arrayList2.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        TL_iv.PageListItem pageListItem = arrayList2.get(i2);
                        i2++;
                        TL_iv.PageListItem pageListItem2 = pageListItem;
                        if (pageListItem2 instanceof TL_iv.TL_pageListItemText) {
                            TL_iv.TL_pageListItemText tL_pageListItemText = (TL_iv.TL_pageListItemText) pageListItem2;
                            tL_pageListItemText.text = linkify(tL_pageListItemText.text);
                        } else if (pageListItem2 instanceof TL_iv.TL_pageListItemBlocks) {
                            linkifyBlocks(((TL_iv.TL_pageListItemBlocks) pageListItem2).blocks);
                        }
                    }
                } else if (pageBlock2 instanceof TL_iv.pageBlockOrderedList) {
                    ArrayList<TL_iv.PageListOrderedItem> arrayList3 = ((TL_iv.pageBlockOrderedList) pageBlock2).items;
                    int size3 = arrayList3.size();
                    int i3 = 0;
                    while (i3 < size3) {
                        TL_iv.PageListOrderedItem pageListOrderedItem = arrayList3.get(i3);
                        i3++;
                        TL_iv.PageListOrderedItem pageListOrderedItem2 = pageListOrderedItem;
                        if (pageListOrderedItem2 instanceof TL_iv.TL_pageListOrderedItemText) {
                            TL_iv.TL_pageListOrderedItemText tL_pageListOrderedItemText = (TL_iv.TL_pageListOrderedItemText) pageListOrderedItem2;
                            tL_pageListOrderedItemText.text = linkify(tL_pageListOrderedItemText.text);
                        } else if (pageListOrderedItem2 instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                            linkifyBlocks(((TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem2).blocks);
                        }
                    }
                } else if (pageBlock2 instanceof TL_iv.pageBlockTable) {
                    ArrayList<TL_iv.pageTableRow> arrayList4 = ((TL_iv.pageBlockTable) pageBlock2).rows;
                    int size4 = arrayList4.size();
                    int i4 = 0;
                    while (i4 < size4) {
                        TL_iv.pageTableRow pagetablerow = arrayList4.get(i4);
                        i4++;
                        ArrayList<TL_iv.pageTableCell> arrayList5 = pagetablerow.cells;
                        int size5 = arrayList5.size();
                        int i5 = 0;
                        while (i5 < size5) {
                            TL_iv.pageTableCell pagetablecell = arrayList5.get(i5);
                            i5++;
                            TL_iv.pageTableCell pagetablecell2 = pagetablecell;
                            pagetablecell2.text = linkify(pagetablecell2.text);
                        }
                    }
                } else {
                    pageBlock2.text = linkify(pageBlock2.text);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TL_iv.RichText linkify(TL_iv.RichText richText) {
        if (richText == null || (richText instanceof TL_iv.textEmpty) || (richText instanceof TL_iv.textUrl) || (richText instanceof TL_iv.textEmail) || (richText instanceof TL_iv.textPhone) || (richText instanceof TL_iv.textFixed) || (richText instanceof TL_iv.textMath) || (richText instanceof TL_iv.textImage)) {
            return richText;
        }
        if (richText instanceof TL_iv.textConcat) {
            richText.texts.replaceAll(new UnaryOperator() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AiResponseAlert.linkify((TL_iv.RichText) obj);
                }
            });
            return richText;
        }
        if (richText instanceof TL_iv.textPlain) {
            return linkifyPlain((TL_iv.textPlain) richText);
        }
        richText.text = linkify(richText.text);
        return richText;
    }

    private static TL_iv.RichText linkifyPlain(TL_iv.textPlain textplain) {
        if (LinkifyPort.WEB_URL == null || TextUtils.isEmpty(textplain.text)) {
            return textplain;
        }
        String str = textplain.text;
        Matcher matcher = LinkifyPort.WEB_URL.matcher(str);
        TL_iv.textConcat textconcat = null;
        int iEnd = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            if (!TextUtils.isEmpty(strGroup)) {
                if (textconcat == null) {
                    textconcat = new TL_iv.textConcat();
                }
                if (matcher.start() > iEnd) {
                    textconcat.texts.add(plainText(str.substring(iEnd, matcher.start())));
                }
                TL_iv.textUrl texturl = new TL_iv.textUrl();
                texturl.text = plainText(strGroup);
                texturl.url = strGroup;
                textconcat.texts.add(texturl);
                iEnd = matcher.end();
            }
        }
        if (textconcat == null) {
            return textplain;
        }
        if (iEnd < str.length()) {
            textconcat.texts.add(plainText(str.substring(iEnd)));
        }
        return textconcat;
    }

    private static TL_iv.RichText plainText(String str) {
        TL_iv.textPlain textplain = new TL_iv.textPlain();
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        textplain.text = str;
        return textplain;
    }

    private void openUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Utilities.CallbackReturn<URLSpan, Boolean> callbackReturn = this.onLinkPress;
        if (callbackReturn != null) {
            if (callbackReturn.run(new URLSpan(str)).booleanValue()) {
                lambda$new$0();
            }
        } else {
            BaseFragment baseFragment = this.fragment;
            if (baseFragment != null) {
                AlertsCreator.showOpenUrlAlert(baseFragment, str, false, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasEnoughHeight() {
        RecyclerListView recyclerListView;
        float height = 0.0f;
        int i = 0;
        while (true) {
            int childCount = this.listView.getChildCount();
            recyclerListView = this.listView;
            if (i >= childCount) {
                break;
            }
            if (this.listView.getChildAdapterPosition(recyclerListView.getChildAt(i)) == 1) {
                height += r3.getHeight();
            }
            i++;
        }
        return height >= ((float) ((recyclerListView.getHeight() - this.listView.getPaddingTop()) - this.listView.getPaddingBottom()));
    }

    public void setFragment(BaseFragment baseFragment) {
        this.fragment = baseFragment;
    }

    public void setOnLinkPress(Utilities.CallbackReturn<URLSpan, Boolean> callbackReturn) {
        this.onLinkPress = callbackReturn;
    }

    private void setOnInsertPress(Utilities.Callback3<String, CharSequence, TL_iv.RichMessage> callback3) {
        this.onInsertPress = callback3;
    }

    public void setNoforwards(boolean z) {
        this.previewView.setTextSelectionHelper(z ? null : this.textSelectionHelper);
        if (z) {
            this.textSelectionHelper.clear(true);
        }
        if (getWindow() != null) {
            if (z) {
                getWindow().addFlags(8192);
            } else {
                getWindow().clearFlags(8192);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getSheetTop() {
        return getSheetTop(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getSheetTop(boolean z) {
        AnimatedFloat animatedFloat;
        float top = this.listView.getTop();
        if (this.listView.getChildCount() >= 1) {
            RecyclerListView recyclerListView = this.listView;
            top += Math.max(0, recyclerListView.getChildAt(recyclerListView.getChildCount() - 1).getTop());
        }
        float fMax = Math.max(0.0f, top - AndroidUtilities.dp(78.0f));
        if (z && (animatedFloat = this.sheetTopAnimated) != null) {
            if (!this.listView.scrollingByUser && !this.sheetTopNotAnimate) {
                return animatedFloat.set(fMax);
            }
            animatedFloat.set(fMax, true);
        }
        return fMax;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        this.client.stopRequest(this.currentRequestId);
        this.currentRequestId = null;
        stopThinking();
        this.pendingMarkdown = null;
        this.parseGeneration++;
        this.textSelectionHelper.clear(true);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            this.loadingTextView.invalidate();
            this.promptTextView.invalidate();
            this.previewView.invalidate();
        }
    }

    public class ResponseContainer extends LinearLayout implements TextSelectionHelper.ArticleSelectableView {
        public ResponseContainer(Context context) {
            super(context);
            setOrientation(1);
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.ArticleSelectableView
        public void fillTextLayoutBlocks(ArrayList<TextSelectionHelper.TextLayoutBlock> arrayList) {
            AiResponseAlert.this.previewView.fillTextLayoutBlocks(arrayList);
            for (int size = arrayList.size(); size < arrayList.size(); size++) {
                arrayList.set(size, new OffsetTextLayoutBlock(arrayList.get(size), AiResponseAlert.this.previewView.getLeft(), AiResponseAlert.this.previewView.getTop()));
            }
        }

        @Override // android.view.View, org.telegram.ui.Cells.TextSelectionHelper.SelectableView
        public void invalidate() {
            super.invalidate();
            if (AiResponseAlert.this.previewView != null) {
                AiResponseAlert.this.previewView.invalidate();
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }
    }

    public static final class OffsetTextLayoutBlock extends RecordTag implements TextSelectionHelper.TextLayoutBlock {
        private final TextSelectionHelper.TextLayoutBlock block;
        private final int offsetX;
        private final int offsetY;

        public final /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof OffsetTextLayoutBlock)) {
                return false;
            }
            OffsetTextLayoutBlock offsetTextLayoutBlock = (OffsetTextLayoutBlock) obj;
            return this.offsetX == offsetTextLayoutBlock.offsetX && this.offsetY == offsetTextLayoutBlock.offsetY && Objects.equals(this.block, offsetTextLayoutBlock.block);
        }

        public final /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.block, Integer.valueOf(this.offsetX), Integer.valueOf(this.offsetY)};
        }

        private OffsetTextLayoutBlock(TextSelectionHelper.TextLayoutBlock textLayoutBlock, int i, int i2) {
            this.block = textLayoutBlock;
            this.offsetX = i;
            this.offsetY = i2;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return AiResponseAlert$OffsetTextLayoutBlock$$ExternalSyntheticRecord0.m239m(this.offsetX, this.offsetY, this.block);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m235m($record$getFieldsAsObjects(), OffsetTextLayoutBlock.class, "block;offsetX;offsetY");
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public Layout getLayout() {
            return this.block.getLayout();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getX() {
            return this.block.getX() + this.offsetX;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getY() {
            return this.block.getY() + this.offsetY;
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public int getRow() {
            return this.block.getRow();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public CharSequence getPrefix() {
            return this.block.getPrefix();
        }

        @Override // org.telegram.ui.Cells.TextSelectionHelper.TextLayoutBlock
        public CharSequence getText() {
            return this.block.getText();
        }
    }

    public static class LoadingTextView extends TextView {
        private final LoadingDrawable loadingDrawable;
        private final LinkPath path;

        public LoadingTextView(Context context) {
            super(context);
            LinkPath linkPath = new LinkPath(true);
            this.path = linkPath;
            LoadingDrawable loadingDrawable = new LoadingDrawable();
            this.loadingDrawable = loadingDrawable;
            loadingDrawable.usePath(linkPath);
            loadingDrawable.setSpeed(0.65f);
            loadingDrawable.setRadiiDp(4.0f);
            setBackground(loadingDrawable);
        }

        @Override // android.widget.TextView
        public void setTextColor(int i) {
            super.setTextColor(Theme.multAlpha(i, 0.2f));
            this.loadingDrawable.setColors(Theme.multAlpha(i, 0.03f), Theme.multAlpha(i, 0.175f), Theme.multAlpha(i, 0.2f), Theme.multAlpha(i, 0.45f));
        }

        private void updateDrawable() {
            LinkPath linkPath = this.path;
            if (linkPath == null || this.loadingDrawable == null) {
                return;
            }
            linkPath.rewind();
            if (getLayout() != null) {
                getLayout().getText();
                this.path.setCurrentLayout(getLayout(), 0, getPaddingLeft(), getPaddingTop());
                getLayout().getSelectionPath(0, getLayout().getText().length(), this.path);
            }
            this.loadingDrawable.updateBounds();
        }

        @Override // android.widget.TextView
        public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
            super.setText(charSequence, bufferType);
            updateDrawable();
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            updateDrawable();
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.loadingDrawable.reset();
        }
    }

    public static class ThinkingDotsView extends View {
        private final TypingDotsDrawable drawable;

        public ThinkingDotsView(Context context, int i) {
            super(context);
            TypingDotsDrawable typingDotsDrawable = new TypingDotsDrawable(true);
            this.drawable = typingDotsDrawable;
            typingDotsDrawable.setCallback(this);
            typingDotsDrawable.setIgnoreAnimationLocks();
            typingDotsDrawable.setColor(i);
        }

        public void start() {
            if (this.drawable.isStarted()) {
                return;
            }
            this.drawable.start();
        }

        public void stop() {
            this.drawable.stop();
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return super.verifyDrawable(drawable) || drawable == this.drawable;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(42.0f));
        }

        @Override // android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.drawable.isStarted()) {
                invalidate();
            }
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            DrawableUtils.setBounds(this.drawable, AndroidUtilities.dp(22.0f), i2 / 2.0f, 19);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.drawable.draw(canvas);
            if (this.drawable.isStarted()) {
                invalidate();
            }
        }

        @Override // android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            stop();
        }
    }

    public static class PaddedAdapter extends RecyclerView.Adapter {
        private final Context mContext;
        private View mMainView;
        private int mainViewType = 1;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public PaddedAdapter(Context context, View view) {
            this.mContext = context;
            this.mMainView = view;
        }

        public void updateMainView(View view) {
            if (this.mMainView == view) {
                return;
            }
            this.mainViewType++;
            this.mMainView = view;
            notifyItemChanged(1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return new RecyclerListView.Holder(new View(this.mContext) { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.PaddedAdapter.1
                    @Override // android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (AndroidUtilities.displaySize.y * 0.4f), TLObject.FLAG_30));
                    }
                });
            }
            return new RecyclerListView.Holder(this.mMainView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            return this.mainViewType;
        }
    }

    public class HeaderView extends FrameLayout {
        private final ImageView backButton;
        public final ImageView insertButton;
        private final AnimatedTextView modelSelector;
        public final ActionBarMenuItem optionsButton;
        private final View shadow;
        private final LinearLayout subtitleView;
        private final TextView titleTextView;

        public HeaderView(Context context) {
            float f;
            super(context);
            View view = new View(context);
            view.setBackgroundColor(AiResponseAlert.this.getThemedColor(Theme.key_dialogBackground));
            addView(view, LayoutHelper.createFrame(-1, 44.0f, 55, 0.0f, 12.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(context);
            this.backButton = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            imageView.setImageResource(C2665R.drawable.ic_ab_back);
            int i = Theme.key_dialogTextBlack;
            int themedColor = AiResponseAlert.this.getThemedColor(i);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageView.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            int i2 = Theme.key_listSelector;
            imageView.setBackground(Theme.createSelectorDrawable(AiResponseAlert.this.getThemedColor(i2)));
            imageView.setAlpha(0.0f);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$0(view2);
                }
            });
            addView(imageView, LayoutHelper.createFrame(54, 54.0f, 48, 1.0f, 1.0f, 1.0f, 1.0f));
            ImageView imageView2 = new ImageView(context);
            this.insertButton = imageView2;
            ScaleStateListAnimator.apply(imageView2, 0.15f, 1.5f);
            imageView2.setScaleType(scaleType);
            imageView2.setImageResource(C2665R.drawable.msg_send);
            int i3 = Theme.key_player_actionBarSubtitle;
            imageView2.setColorFilter(new PorterDuffColorFilter(AiResponseAlert.this.getThemedColor(i3), mode));
            imageView2.setBackground(Theme.createSelectorDrawable(AiResponseAlert.this.getThemedColor(i2)));
            imageView2.setVisibility(8);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$1(view2);
                }
            });
            addView(imageView2, LayoutHelper.createFrame(48, 54.0f, 53, 1.0f, 1.0f, 64.0f, 1.0f));
            ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, i3, false, ((BottomSheet) AiResponseAlert.this).resourcesProvider);
            this.optionsButton = actionBarMenuItem;
            actionBarMenuItem.setLongClickEnabled(false);
            actionBarMenuItem.setShowSubmenuByMove(false);
            actionBarMenuItem.setIcon(C2665R.drawable.ic_ab_other);
            actionBarMenuItem.setSubMenuOpenSide(2);
            actionBarMenuItem.setVisibility(8);
            actionBarMenuItem.setBackground(Theme.createSelectorDrawable(AiResponseAlert.this.getThemedColor(i2), 1, AndroidUtilities.dp(18.0f)));
            addView(actionBarMenuItem, LayoutHelper.createFrame(48, 54.0f, 53, 1.0f, 1.0f, 16.0f, 1.0f));
            actionBarMenuItem.addSubItem(1, C2665R.drawable.msg_copy, LocaleController.getString(C2665R.string.Copy));
            actionBarMenuItem.addSubItem(2, C2665R.drawable.msg_retry, LocaleController.getString(C2665R.string.Retry));
            actionBarMenuItem.addSubItem(3, C2665R.drawable.msg_edit, LocaleController.getString(C2665R.string.Edit));
            actionBarMenuItem.addSubItem(4, C2665R.drawable.msg_discuss, LocaleController.getString(C2665R.string.AIAskMore));
            actionBarMenuItem.setSubItemShown(4, false);
            actionBarMenuItem.setShowedFromBottom(false);
            actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$2(view2);
                }
            });
            actionBarMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
                public final void onItemClick(int i4) {
                    this.f$0.lambda$new$5(i4);
                }
            });
            actionBarMenuItem.setContentDescription(LocaleController.getString(C2665R.string.AccDescrMoreOptions));
            TextView textView = new TextView(context) { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.HeaderView.1
                @Override // android.widget.TextView, android.view.View
                public void onMeasure(int i4, int i5) {
                    super.onMeasure(i4, i5);
                    if (LocaleController.isRTL) {
                        HeaderView.this.titleTextView.setPivotX(getMeasuredWidth());
                    }
                }
            };
            this.titleTextView = textView;
            textView.setTextColor(AiResponseAlert.this.getThemedColor(i));
            textView.setTextSize(1, 20.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setText(AiConfig.getSelectedRole());
            textView.setIncludeFontPadding(false);
            textView.setGravity(LocaleController.isRTL ? 5 : 3);
            textView.setMaxWidth(((AndroidUtilities.displaySize.x - AndroidUtilities.dp(22.0f)) - AndroidUtilities.dp(112.0f)) - AndroidUtilities.dp(2.0f));
            Drawable drawable = ContextCompat.getDrawable(getContext(), C2665R.drawable.ic_arrow_drop_down);
            if (drawable != null) {
                Drawable drawableMutate = drawable.mutate();
                f = 1.0f;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(AiResponseAlert.this.getThemedColor(i), mode));
                drawableMutate.setBounds(0, -AndroidUtilities.dp(1.0f), AndroidUtilities.dp(22.0f), AndroidUtilities.dp(21.0f));
                if (LocaleController.isRTL) {
                    textView.setCompoundDrawables(drawableMutate, null, null, null);
                } else {
                    textView.setCompoundDrawables(null, null, drawableMutate, null);
                }
            } else {
                f = 1.0f;
            }
            textView.setCompoundDrawablePadding(AndroidUtilities.dp(2.0f));
            textView.setPadding(0, 0, 0, 0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$6(view2);
                }
            });
            textView.setPivotX(0.0f);
            textView.setPivotY(0.0f);
            addView(textView, LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 5 : 3) | 48, 22.0f, 20.0f, 112.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context);
            this.subtitleView = linearLayout;
            linearLayout.setPivotX(0.0f);
            linearLayout.setPivotY(0.0f);
            AnimatedTextView animatedTextView = new AnimatedTextView(context) { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.HeaderView.2
                private final Paint bgPaint = new Paint(1);
                private final LinkSpanDrawable.LinkCollector links = new LinkSpanDrawable.LinkCollector();

                @Override // org.telegram.ui.Components.AnimatedTextView, android.view.View
                public void onDraw(Canvas canvas) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, (getHeight() - AndroidUtilities.dp(18.0f)) / 2.0f, width(), (getHeight() + AndroidUtilities.dp(18.0f)) / 2.0f);
                    this.bgPaint.setColor(Theme.multAlpha(AiResponseAlert.this.getThemedColor(Theme.key_player_actionBarSubtitle), 0.1175f));
                    canvas.drawRoundRect(rectF, AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), this.bgPaint);
                    if (this.links.draw(canvas)) {
                        invalidate();
                    }
                    super.onDraw(canvas);
                }

                @Override // android.view.View
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(null, ((BottomSheet) AiResponseAlert.this).resourcesProvider, motionEvent.getX(), motionEvent.getY());
                        linkSpanDrawable.setColor(Theme.multAlpha(AiResponseAlert.this.getThemedColor(Theme.key_player_actionBarSubtitle), 0.1175f));
                        LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(0.0f, (getHeight() - AndroidUtilities.dp(18.0f)) / 2.0f, width(), (getHeight() + AndroidUtilities.dp(18.0f)) / 2.0f);
                        linkPathObtainNewPath.addRect(rectF, Path.Direction.CW);
                        this.links.addLink(linkSpanDrawable);
                        invalidate();
                        return true;
                    }
                    if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                        if (motionEvent.getAction() == 1) {
                            performClick();
                        }
                        this.links.clear();
                        invalidate();
                    }
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.modelSelector = animatedTextView;
            animatedTextView.setAnimationProperties(0.25f, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            animatedTextView.setTextColor(AiResponseAlert.this.getThemedColor(i3));
            animatedTextView.setTextSize(AndroidUtilities.dp(14.0f));
            animatedTextView.setText(AiController.getInstance().getSelected().getShortModel());
            animatedTextView.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(2.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(2.0f));
            animatedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$7(view2);
                }
            });
            linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 3, 0));
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 55, 22.0f, 43.0f, 22.0f, 0.0f));
            View view2 = new View(context);
            this.shadow = view2;
            view2.setBackgroundColor(AiResponseAlert.this.getThemedColor(Theme.key_divider));
            view2.setAlpha(0.0f);
            addView(view2, LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight() / AndroidUtilities.dpf2(f), 55, 0.0f, 56.0f, 0.0f, 0.0f));
            imageView.bringToFront();
            imageView2.bringToFront();
            actionBarMenuItem.bringToFront();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            AiResponseAlert.this.lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            AiResponseAlert.this.onInsertPress.run(AiResponseAlert.this.prompt, AiResponseAlert.this.getInsertResponse(), AiResponseAlert.this.currentRichMessage);
            AiResponseAlert.this.lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            this.optionsButton.toggleSubMenu();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(GenerateFromMessageBottomSheet.GenerationData generationData) {
            AiResponseAlert.this.dropLastTurnFromHistory();
            AiResponseAlert.this.setPrompt(generationData.prompt());
            AiResponseAlert.this.imagePath = generationData.imagePath();
            AiResponseAlert.this.useHistory = generationData.useHistory();
            AiResponseAlert.this.showLoadingView();
            AiResponseAlert.this.generate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(int i) {
            if (i == 1) {
                AiResponseAlert aiResponseAlert = AiResponseAlert.this;
                if (AndroidUtilities.addToClipboard(aiResponseAlert.getRawResponse(aiResponseAlert.currentResponse))) {
                    BulletinFactory.of((FrameLayout) ((BottomSheet) AiResponseAlert.this).containerView, ((BottomSheet) AiResponseAlert.this).resourcesProvider).createCopyBulletin(LocaleController.getString(C2665R.string.TextCopied)).show();
                    return;
                }
                return;
            }
            if (i == 2) {
                AiResponseAlert.this.regenerate();
            } else if (i == 3) {
                new GenerateFromMessageBottomSheet(AiResponseAlert.this.prompt, AiResponseAlert.this.imagePath, AiResponseAlert.this.fragment, getContext(), new Utilities.Callback() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$3((GenerateFromMessageBottomSheet.GenerationData) obj);
                    }
                }, AiResponseAlert.this.useHistory).show();
            } else {
                if (i != 4) {
                    return;
                }
                new GenerateFromMessageBottomSheet(AiResponseAlert.this.fragment, getContext(), new Utilities.Callback() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda8
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$4((GenerateFromMessageBottomSheet.GenerationData) obj);
                    }
                }, false).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(GenerateFromMessageBottomSheet.GenerationData generationData) {
            AiResponseAlert.this.setPrompt(generationData.prompt());
            AiResponseAlert.this.imagePath = null;
            AiResponseAlert.this.useHistory = generationData.useHistory();
            AiResponseAlert.this.showLoadingView();
            AiResponseAlert.this.generate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(View view) {
            openRoleSelect();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(View view) {
            openModelSelect();
        }

        public void openModelSelect() {
            if (AiResponseAlert.this.client.isGenerating()) {
                return;
            }
            final ItemOptions itemOptionsTranslate = ItemOptions.makeOptions(((BottomSheet) AiResponseAlert.this).containerView, ((BottomSheet) AiResponseAlert.this).resourcesProvider, this.modelSelector, false, false, true).setDrawScrim(false).setDimAlpha(0).setMaxHeight(AndroidUtilities.dp(336.0f)).setGravity(LocaleController.isRTL ? 5 : 3).translate(LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : -AndroidUtilities.dp(8.0f), 0.0f);
            ArrayList arrayListAvailableServices = AiResponseAlert.this.availableServices();
            int size = arrayListAvailableServices.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayListAvailableServices.get(i);
                i++;
                final Service service = (Service) obj;
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), 2, false, false, ((BottomSheet) AiResponseAlert.this).resourcesProvider);
                actionBarMenuSubItem.setText(service.getModel());
                actionBarMenuSubItem.setSubtext(service.isOnDevice() ? LocaleController.getString(C2665R.string.AIOnDevice) : service.getUrl());
                actionBarMenuSubItem.subtextView.setPadding(0, 0, service.isSelected() ? AndroidUtilities.dp(34.0f) : 0, 0);
                actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(196.0f));
                actionBarMenuSubItem.setItemHeight(56);
                actionBarMenuSubItem.setChecked(service.isSelected());
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$openModelSelect$8(itemOptionsTranslate, service, view);
                    }
                });
                itemOptionsTranslate.add(actionBarMenuSubItem);
            }
            itemOptionsTranslate.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openModelSelect$8(ItemOptions itemOptions, Service service, View view) {
            itemOptions.dismiss();
            if (service.isSelected()) {
                return;
            }
            AiResponseAlert.this.dropLastTurnFromHistory();
            AiConfig.setSelectedServices(service);
            this.modelSelector.setText(service.getShortModel());
            AiResponseAlert.this.showLoadingView();
            AiResponseAlert.this.generate();
        }

        public void openRoleSelect() {
            if (AiResponseAlert.this.client.isGenerating()) {
                return;
            }
            int i = 0;
            ItemOptions itemOptionsTranslate = ItemOptions.makeOptions(((BottomSheet) AiResponseAlert.this).containerView, ((BottomSheet) AiResponseAlert.this).resourcesProvider, this.titleTextView).setDrawScrim(false).setDimAlpha(0).setGravity(LocaleController.isRTL ? 5 : 3).translate(LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : -AndroidUtilities.dp(8.0f), 0.0f);
            ArrayList arrayList = new ArrayList(AiController.getInstance().getSuggestedRoles());
            for (Role role : AiController.getInstance().getRoles()) {
                if (!arrayList.contains(role)) {
                    arrayList.add(role);
                }
            }
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                final Role role2 = (Role) obj;
                itemOptionsTranslate.addChecked(role2.isSelected(), role2.getName(), new Runnable() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert$HeaderView$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$openRoleSelect$9(role2);
                    }
                });
            }
            itemOptionsTranslate.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openRoleSelect$9(Role role) {
            if (role.isSelected()) {
                return;
            }
            AiResponseAlert.this.dropLastTurnFromHistory();
            this.titleTextView.setText(role.getName());
            AiConfig.setSelectedRole(role.getName());
            AiResponseAlert.this.showLoadingView();
            AiResponseAlert.this.generate();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            float fClamp = MathUtils.clamp((f - AndroidUtilities.statusBarHeight) / AndroidUtilities.dp(64.0f), 0.0f, 1.0f);
            if (!AiResponseAlert.this.hasEnoughHeight()) {
                fClamp = 1.0f;
            }
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(fClamp);
            this.titleTextView.setScaleX(AndroidUtilities.lerp(0.85f, 1.0f, interpolation));
            this.titleTextView.setScaleY(AndroidUtilities.lerp(0.85f, 1.0f, interpolation));
            this.titleTextView.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(-12.0f), 0.0f, interpolation));
            this.titleTextView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(50.0f), 0.0f, interpolation));
            this.subtitleView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(50.0f), 0.0f, interpolation));
            this.subtitleView.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(-22.0f), 0.0f, interpolation));
            this.backButton.setTranslationX(AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(-25.0f), interpolation));
            float f2 = 1.0f - interpolation;
            this.backButton.setAlpha(f2);
            this.insertButton.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(14.0f), AndroidUtilities.dpf2(8.0f), interpolation));
            this.insertButton.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(0.0f), AndroidUtilities.dpf2(16.0f), interpolation));
            ImageView imageView = this.insertButton;
            AiResponseAlert aiResponseAlert = AiResponseAlert.this;
            int i = Theme.key_dialogTextBlack;
            int themedColor = aiResponseAlert.getThemedColor(i);
            AiResponseAlert aiResponseAlert2 = AiResponseAlert.this;
            int i2 = Theme.key_player_actionBarSubtitle;
            imageView.setColorFilter(ColorUtils.blendARGB(themedColor, aiResponseAlert2.getThemedColor(i2), interpolation), PorterDuff.Mode.MULTIPLY);
            this.optionsButton.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(14.0f), AndroidUtilities.dpf2(8.0f), interpolation));
            this.optionsButton.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(0.0f), AndroidUtilities.dpf2(16.0f), interpolation));
            this.optionsButton.setIconColor(ColorUtils.blendARGB(AiResponseAlert.this.getThemedColor(i), AiResponseAlert.this.getThemedColor(i2), interpolation));
            this.shadow.setTranslationY(AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(22.0f), interpolation));
            this.shadow.setAlpha(f2);
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(78.0f), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            EllipsizeSpanAnimator ellipsizeSpanAnimator = AiResponseAlert.this.ellipsizeSpanAnimator;
            if (ellipsizeSpanAnimator != null) {
                ellipsizeSpanAnimator.onAttachedToWindow();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            EllipsizeSpanAnimator ellipsizeSpanAnimator = AiResponseAlert.this.ellipsizeSpanAnimator;
            if (ellipsizeSpanAnimator != null) {
                ellipsizeSpanAnimator.onDetachedFromWindow();
            }
        }
    }

    public class ContainerView extends FrameLayout {
        private final Paint bgPaint;
        private final Path bgPath;
        private Boolean lightStatusBarFull;

        public ContainerView(Context context) {
            super(context);
            this.bgPath = new Path();
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            paint.setColor(AiResponseAlert.this.getThemedColor(Theme.key_dialogBackground));
            Theme.applyDefaultShadow(paint);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (AiResponseAlert.this.textSelectionHelper.isInSelectionMode() && AiResponseAlert.this.textSelectionOverlay.onTouchEvent(motionEvent)) {
                return true;
            }
            if (AiResponseAlert.this.textSelectionOverlay.checkOnTap(motionEvent)) {
                motionEvent.setAction(3);
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            float sheetTop = AiResponseAlert.this.getSheetTop();
            float fLerp = AndroidUtilities.lerp(0, AndroidUtilities.dp(12.0f), MathUtils.clamp(sheetTop / AndroidUtilities.dpf2(24.0f), 0.0f, 1.0f));
            AiResponseAlert.this.headerView.setTranslationY(Math.max(AndroidUtilities.statusBarHeight, sheetTop));
            updateLightStatusBar(sheetTop <= ((float) AndroidUtilities.statusBarHeight) / 2.0f);
            this.bgPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, sheetTop, getWidth(), getHeight() + fLerp);
            this.bgPath.addRoundRect(rectF, fLerp, fLerp, Path.Direction.CW);
            canvas.drawPath(this.bgPath, this.bgPaint);
            super.dispatchDraw(canvas);
        }

        private void updateLightStatusBar(boolean z) {
            int iBlendOver;
            Boolean bool = this.lightStatusBarFull;
            if (bool == null || bool.booleanValue() != z) {
                this.lightStatusBarFull = Boolean.valueOf(z);
                Window window = AiResponseAlert.this.getWindow();
                AiResponseAlert aiResponseAlert = AiResponseAlert.this;
                if (z) {
                    iBlendOver = aiResponseAlert.getThemedColor(Theme.key_dialogBackground);
                } else {
                    iBlendOver = Theme.blendOver(aiResponseAlert.getThemedColor(Theme.key_actionBarDefault), 855638016);
                }
                AndroidUtilities.setLightStatusBar(window, AndroidUtilities.computePerceivedBrightness(iBlendOver) > 0.721f);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: com.exteragram.messenger.ai.ui.AiResponseAlert.ContainerView.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    return AndroidUtilities.dp(80.0f);
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
        }
    }
}
