package org.telegram.ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.TelegramAiReplacement;
import com.exteragram.messenger.translator.TranslatorUtils;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AiTonesController;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LanguageDetector;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.RichMessageLayout;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_aicompose;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Components.AIEditorAlert;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.TranslateAlert3;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.SelectAnimatedEmojiDialog;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.iv.RichTextStyle;

/* JADX INFO: loaded from: classes7.dex */
public class AIEditorAlert extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private final boolean[] accusative;
    private UniversalAdapter adapter;
    private Runnable aiFallbackCancel;
    private boolean aiFallbackFailed;
    private ItemOptions aiIOptions;
    private final ButtonWithCounterView allButton;
    private final FrameLayout bulletinContainer;
    private final ButtonWithCounterView button;
    private final LinearLayout buttonContainer;
    private boolean buttonShowLimit;
    private final ImageView closeView;
    private boolean collapsed;
    private long dialogId;
    private boolean editing;
    private boolean emojify;
    private boolean errored;
    private CharSequence fixedText;
    private boolean fixedTextLoading;
    private TL_iv.RichMessage fixedTextRich;
    private CharSequence fixedTextToCopy;
    private String from_lang;
    private final boolean[] genitive;
    private TLRPC.TL_messages_composeMessageWithAI[] lastRequest;
    private TLRPC.TL_messages_composeRichMessageWithAI[] lastRequestRich;
    private boolean loading;
    private boolean newPrompt;
    private Utilities.Callback4<CharSequence, Integer, Integer, Boolean> onSendListener;
    private Utilities.Callback4<TL_iv.RichMessage, Integer, Integer, Boolean> onSendRichListener;
    private Utilities.Callback<CharSequence> onUseListener;
    private Utilities.Callback<TL_iv.RichMessage> onUseRichListener;
    private final FrameLayout promptBox;
    private final EditTextCell promptCell;
    private String promptText;
    private int requestId;
    private final ButtonWithCounterView sendButton;
    private boolean showLimit;
    private HintView2 styleHint;
    private final Tabs styleTabs;
    private CharSequence styledText;
    private boolean styledTextLoading;
    private TL_iv.RichMessage styledTextRich;
    private final Tabs tabs;
    private final FrameLayout tabsContainer;
    private CharSequence text;
    private TL_iv.RichMessage textRich;
    private CharSequence title;
    private RLottieDrawable titleLoadingDrawable;
    private String to_lang;
    private final AiTonesController tonesController;
    private String translateTone;
    private String translateToneTitle;
    private CharSequence translatedText;
    private boolean translatedTextLoading;
    private TL_iv.RichMessage translatedTextRich;

    public static class PromptTone extends TL_aicompose.AiComposeTone {
    }

    public AIEditorAlert(final Context context, final Theme.ResourcesProvider resourcesProvider) {
        super(context, null, true, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        this.accusative = new boolean[1];
        this.genitive = new boolean[1];
        this.collapsed = true;
        this.requestId = -1;
        this.lastRequest = new TLRPC.TL_messages_composeMessageWithAI[3];
        this.lastRequestRich = new TLRPC.TL_messages_composeRichMessageWithAI[3];
        int i = Theme.key_windowBackgroundGray;
        fixNavigationBar(getThemedColor(i));
        AiTonesController tonesController = MessagesController.getInstance(this.currentAccount).getTonesController();
        this.tonesController = tonesController;
        tonesController.load();
        tonesController.open = true;
        ImageView imageView = new ImageView(context);
        this.closeView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2665R.drawable.ic_close_white);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        imageView.setColorFilter(getThemedColor(i2));
        imageView.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(getThemedColor(i2), 0.1f)));
        this.actionBar.addView(imageView, LayoutHelper.createFrame(54, 54.0f, 85, 0.0f, 0.0f, 8.0f, 0.0f));
        ScaleStateListAnimator.apply(imageView, 0.1f, 1.5f);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.tabsContainer = frameLayout;
        Tabs tabs = new Tabs(context, this.currentAccount, false, resourcesProvider);
        this.tabs = tabs;
        tabs.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f));
        int iDp = AndroidUtilities.dp(28.0f);
        int i3 = Theme.key_windowBackgroundWhite;
        tabs.setBackground(Theme.createRoundRectDrawable(iDp, Theme.getColor(i3, resourcesProvider)));
        tabs.setRoundRadius(28);
        addMainTab(C2665R.drawable.outline_ai_translate2, LocaleController.getString(C2665R.string.AIEditorTabTranslate), 0);
        addMainTab(C2665R.drawable.menu_rewrite, LocaleController.getString(C2665R.string.AIEditorTabStyle), 1);
        addMainTab(C2665R.drawable.menu_proofread, LocaleController.getString(C2665R.string.AIEditorTabFix), 2);
        tabs.selectTab(getDefaultTab());
        frameLayout.addView(tabs, LayoutHelper.createFrame(-1, -1.0f, 119, 12.0f, 0.0f, 12.0f, 0.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.promptBox = frameLayout2;
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2665R.string.ArticleAIPrompt), true, false, MessagesController.getInstance(this.currentAccount).config.aicomposeTonePromptLengthMax.get(), resourcesProvider);
        this.promptCell = editTextCell;
        editTextCell.editText.setImeOptions(6);
        editTextCell.editText.setMaxLines(5);
        editTextCell.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(20.0f), Theme.getColor(i3, resourcesProvider)));
        editTextCell.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AIEditorAlert.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if ((AIEditorAlert.this.tabs != null ? AIEditorAlert.this.tabs.getSelectedTab() : 0) == 1 && AIEditorAlert.this.styleTabs != null && (AIEditorAlert.this.styleTabs.getSelectedTone() instanceof PromptTone)) {
                    AIEditorAlert.this.cancelRequest();
                    AIEditorAlert.this.updatePromptEditText();
                    AIEditorAlert.this.updateButton();
                }
            }
        });
        frameLayout2.addView(editTextCell, LayoutHelper.createFrame(-1, -2.0f));
        frameLayout2.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
        editTextCell.editText.setPadding(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(53.0f), AndroidUtilities.dp(15.0f));
        Tabs tabs2 = new Tabs(context, this.currentAccount, true, resourcesProvider);
        this.styleTabs = tabs2;
        tabs2.setDivider(true);
        tabs2.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f));
        tabs2.setRoundRadius(12);
        tabs2.setOnItemLongClick(new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$new$8(resourcesProvider, context, (AIEditorAlert.Tabs.Tab) obj);
            }
        });
        updateStyles();
        tabs2.selectTab(-1);
        String resolvedSendTargetLanguageCode = TranslatorUtils.getResolvedSendTargetLanguageCode();
        this.to_lang = resolvedSendTargetLanguageCode;
        if (resolvedSendTargetLanguageCode == null) {
            this.to_lang = TranslateController.currentLanguage();
        }
        this.ignoreTouchActionBar = false;
        this.headerMoveTop = AndroidUtilities.dp(12.0f);
        this.topPadding = 0.35f;
        setBackgroundColor(getThemedColor(i));
        LinearLayout linearLayout = new LinearLayout(context);
        this.buttonContainer = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        linearLayout.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Theme.multAlpha(getThemedColor(i), 0.0f), getThemedColor(i), getThemedColor(i)}));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        this.button = round;
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 1.0f, 119));
        ButtonWithCounterView round2 = new ButtonWithCounterView(context, resourcesProvider).setRound();
        this.sendButton = round2;
        round2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$9(view);
            }
        });
        round2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda7
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$13(resourcesProvider, context, view);
            }
        });
        linearLayout.addView(round2, LayoutHelper.createLinear(48, 48, 5, 10, 0, 0, 0));
        ButtonWithCounterView round3 = new ButtonWithCounterView(context, resourcesProvider).setRound();
        this.allButton = round3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2665R.string.AIEditorLimitButton));
        spannableStringBuilder.append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) "x50");
        spannableStringBuilder.setSpan(new LimitSpan("x50"), length, spannableStringBuilder.length(), 33);
        round3.setText(spannableStringBuilder);
        round3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$14(resourcesProvider, view);
            }
        });
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2, 80);
        int i4 = layoutParamsCreateFrame.leftMargin;
        int i5 = this.backgroundPaddingLeft;
        layoutParamsCreateFrame.leftMargin = i4 + i5;
        layoutParamsCreateFrame.rightMargin += i5;
        this.containerView.addView(linearLayout, layoutParamsCreateFrame);
        FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, 48.0f, 80, 12.0f, 6.0f, 12.0f, 12.0f);
        int i6 = layoutParamsCreateFrame2.leftMargin;
        int i7 = this.backgroundPaddingLeft;
        layoutParamsCreateFrame2.leftMargin = i6 + i7;
        layoutParamsCreateFrame2.rightMargin += i7;
        this.containerView.addView(round3, layoutParamsCreateFrame2);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.bulletinContainer = frameLayout3;
        FrameLayout.LayoutParams layoutParamsCreateFrame3 = LayoutHelper.createFrame(-1, 200.0f, 80, 0.0f, 0.0f, 0.0f, 60.0f);
        int i8 = layoutParamsCreateFrame3.leftMargin;
        int i9 = this.backgroundPaddingLeft;
        layoutParamsCreateFrame3.leftMargin = i8 + i9;
        layoutParamsCreateFrame3.rightMargin += i9;
        this.containerView.addView(frameLayout3, layoutParamsCreateFrame3);
        updateButton(false);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i10 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i10, 0, i10, AndroidUtilities.dp(66.0f));
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setSegmentedSectionsEnabled(false);
        this.recyclerListView.setSections();
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i11) {
                this.f$0.lambda$new$15(view, i11);
            }
        });
        this.takeTranslationIntoAccount = true;
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.AIEditorAlert.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) AIEditorAlert.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.AIEditorAlert.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
                AIEditorAlert.this.updateStyleHintY();
            }
        });
        this.adapter.update(false);
        AndroidUtilities.runOnUIThread(new AIEditorAlert$$ExternalSyntheticLambda10(this));
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.loadedAiComposeTones);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$new$8(final Theme.ResourcesProvider resourcesProvider, final Context context, Tabs.Tab tab) {
        TL_aicompose.AiComposeTone aiComposeTone = tab.tone;
        if (aiComposeTone instanceof TL_aicompose.TL_aiComposeTone) {
            final TL_aicompose.TL_aiComposeTone tL_aiComposeTone = (TL_aicompose.TL_aiComposeTone) aiComposeTone;
            ItemOptions.makeOptions(this.container, resourcesProvider, tab).setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(12.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider))).addIf(tL_aiComposeTone.creator, C2665R.drawable.msg_edit, LocaleController.getString(C2665R.string.AIEditorEditStyle), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$2(resourcesProvider, tL_aiComposeTone);
                }
            }).add(C2665R.drawable.msg_share, LocaleController.getString(C2665R.string.AIEditorShareStyle), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3(tL_aiComposeTone, context, resourcesProvider);
                }
            }).addIf(!tL_aiComposeTone.creator, C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.AIEditorRemoveStyle), true, new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$4(tL_aiComposeTone);
                }
            }).addIf(tL_aiComposeTone.creator, C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.AIEditorDeleteStyle), true, new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$7(resourcesProvider, tL_aiComposeTone);
                }
            }).show();
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Theme.ResourcesProvider resourcesProvider, TL_aicompose.TL_aiComposeTone tL_aiComposeTone) {
        new CreateAiStyleAlert(getContext(), resourcesProvider).setEditing(tL_aiComposeTone).setOnToneEdited(new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda45
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$1((TL_aicompose.AiComposeTone) obj);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(TL_aicompose.AiComposeTone aiComposeTone) {
        if (aiComposeTone instanceof TL_aicompose.TL_aiComposeTone) {
            this.tonesController.edit((TL_aicompose.TL_aiComposeTone) aiComposeTone);
        }
        updateStyles();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(TL_aicompose.TL_aiComposeTone tL_aiComposeTone, Context context, Theme.ResourcesProvider resourcesProvider) {
        String str = "https://t.me/addstyle/" + tL_aiComposeTone.slug;
        new ShareAlert(context, null, str, false, str, false, resourcesProvider) { // from class: org.telegram.ui.Components.AIEditorAlert.2
            @Override // org.telegram.ui.Components.ShareAlert
            public void onSend(LongSparseArray<TLRPC.Dialog> longSparseArray, int i, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
                BulletinFactory bulletinFactoryOf;
                if (z && (bulletinFactoryOf = BulletinFactory.of(AIEditorAlert.this.bulletinContainer, this.resourcesProvider)) != null) {
                    if (longSparseArray.size() == 1) {
                        long jKeyAt = longSparseArray.keyAt(0);
                        if (jKeyAt == UserConfig.getInstance(this.currentAccount).clientUserId) {
                            bulletinFactoryOf.createSimpleBulletin(C2665R.raw.saved_messages, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.AIEditorStyleSharedToSavedMessages, new Object[0])), 5000).hideAfterBottomSheet(false).show();
                        } else {
                            int i2 = this.currentAccount;
                            if (jKeyAt < 0) {
                                bulletinFactoryOf.createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.AIEditorStyleSharedTo, tL_forumTopic != null ? tL_forumTopic.title : MessagesController.getInstance(i2).getChat(Long.valueOf(-jKeyAt)).title)), 5000).hideAfterBottomSheet(false).show();
                            } else {
                                bulletinFactoryOf.createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.AIEditorStyleSharedTo, MessagesController.getInstance(i2).getUser(Long.valueOf(jKeyAt)).first_name)), 5000).hideAfterBottomSheet(false).show();
                            }
                        }
                    } else {
                        bulletinFactoryOf.createSimpleBulletin(C2665R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatPluralString("AIEditorStyleSharedToManyChats", longSparseArray.size(), Integer.valueOf(longSparseArray.size())))).hideAfterBottomSheet(false).show();
                    }
                    try {
                        AIEditorAlert.this.bulletinContainer.performHapticFeedback(3);
                    } catch (Exception unused) {
                    }
                }
            }
        }.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TL_aicompose.TL_aiComposeTone tL_aiComposeTone) {
        this.tonesController.unsave(tL_aiComposeTone);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(Theme.ResourcesProvider resourcesProvider, final TL_aicompose.TL_aiComposeTone tL_aiComposeTone) {
        new AlertDialog.Builder(getContext(), resourcesProvider).setTitle(LocaleController.getString(C2665R.string.AIEditorDeleteStyle)).setMessage(LocaleController.getString(C2665R.string.AIEditorDeleteStyleText)).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2665R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda46
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$new$6(tL_aiComposeTone, alertDialog, i);
            }
        }).makeRed(-1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(final TL_aicompose.TL_aiComposeTone tL_aiComposeTone, AlertDialog alertDialog, int i) {
        final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(-1);
        progressMakeButtonLoading.init();
        TL_aicompose.deleteTone deletetone = new TL_aicompose.deleteTone();
        deletetone.tone = TL_aicompose.InputAiComposeTone.from(tL_aiComposeTone);
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(deletetone, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda47
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$new$5(progressMakeButtonLoading, tL_aiComposeTone, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Browser.Progress progress, TL_aicompose.TL_aiComposeTone tL_aiComposeTone, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        progress.end();
        MessagesController.getInstance(this.currentAccount).getTonesController().remove(tL_aiComposeTone);
        updateStyles();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(View view) {
        runSend(0, 0, true);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$13(final Theme.ResourcesProvider resourcesProvider, final Context context, View view) {
        if (this.editing || !hasSendResult()) {
            return false;
        }
        boolean z = this.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
        this.aiIOptions = ItemOptions.makeOptions(this.container, resourcesProvider, this.sendButton).addIf(!z, C2665R.drawable.input_notify_off, LocaleController.getString(C2665R.string.SendWithoutSound), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$10();
            }
        }).add(C2665R.drawable.msg_calendar2, LocaleController.getString(z ? C2665R.string.SetReminder : C2665R.string.ScheduleMessage), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$11(context, resourcesProvider);
            }
        }).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$12();
            }
        }).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10() {
        runSend(0, 0, false);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(Context context, Theme.ResourcesProvider resourcesProvider) {
        AlertsCreator.createScheduleDatePickerDialog(context, this.dialogId, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.AIEditorAlert.3
            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i, int i2) {
                AIEditorAlert.this.runSend(i, i2, z);
                AIEditorAlert.this.lambda$new$0();
            }
        }, resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12() {
        this.aiIOptions = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(Theme.ResourcesProvider resourcesProvider, View view) {
        new PremiumFeatureBottomSheet(getContext(), 42, true, resourcesProvider).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(View view, int i) {
        this.adapter.getItem(i - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButton() {
        updateButton(true);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        Runnable runnable = this.aiFallbackCancel;
        if (runnable != null) {
            runnable.run();
            this.aiFallbackCancel = null;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.loadedAiComposeTones);
        AiTonesController aiTonesController = this.tonesController;
        if (aiTonesController != null) {
            aiTonesController.open = false;
        }
        super.lambda$new$0();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.loadedAiComposeTones) {
            updateStyles();
        }
    }

    private void updateStyles() {
        TL_aicompose.AiComposeTone selectedTone = this.styleTabs.getSelectedTone();
        this.styleTabs.clearTabs();
        if (isRich()) {
            this.styleTabs.addTab(new PromptTone(), new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.selectStyle((TL_aicompose.AiComposeTone) obj);
                }
            });
        }
        this.styleTabs.addTab(null, new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.selectStyle((TL_aicompose.AiComposeTone) obj);
            }
        });
        ArrayList<TL_aicompose.AiComposeTone> arrayList = this.tonesController.tones;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_aicompose.AiComposeTone aiComposeTone = arrayList.get(i);
            i++;
            this.styleTabs.addTab(aiComposeTone, new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.selectStyle((TL_aicompose.AiComposeTone) obj);
                }
            });
        }
        if (selectedTone != this.styleTabs.getSelectedTone()) {
            this.styleTabs.selectTone(null, true);
        }
    }

    private void updateSendButtonIcon() {
        this.sendButton.setVisibility((this.editing || !hasSend()) ? 8 : 0);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2665R.string.Send));
        spannableStringBuilder.setSpan(new ColoredImageSpan(this.editing ? C2665R.drawable.filled_profile_edit_24 : C2665R.drawable.send_extera_24), 0, spannableStringBuilder.length(), 33);
        this.sendButton.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePromptEditText() {
        boolean zEquals = TextUtils.equals(this.promptText, this.promptCell.editText.getText().toString());
        boolean z = !zEquals;
        if (this.newPrompt == z) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = this.promptCell.editText.animate();
        this.newPrompt = z;
        viewPropertyAnimatorAnimate.alpha(!zEquals ? 1.0f : 0.5f).setDuration(320L).start();
        this.adapter.update(true);
    }

    private void updateButton(boolean z) {
        boolean z2 = this.errored;
        if (z2 && this.aiFallbackFailed) {
            this.button.setText(LocaleController.getString(C2665R.string.TryAgain));
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateButton$16(view);
                }
            });
        } else if (z2) {
            this.button.setText(LocaleController.getString(C2665R.string.OK));
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateButton$17(view);
                }
            });
        } else {
            Tabs tabs = this.tabs;
            if ((tabs != null ? tabs.getSelectedTab() : 0) == 1 && (this.styleTabs.getSelectedTone() instanceof PromptTone) && !TextUtils.equals(this.promptCell.getText().toString(), this.promptText)) {
                this.button.setText(LocaleController.getString(C2665R.string.ArticleAIGenerate));
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateButton$18(view);
                    }
                });
            } else if (this.onUseRichListener != null || this.onUseListener != null) {
                this.button.setText(LocaleController.getString(C2665R.string.AIEditorApply));
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateButton$19(view);
                    }
                });
            } else {
                this.button.setText(LocaleController.getString(C2665R.string.OK));
                this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateButton$20(view);
                    }
                });
            }
        }
        this.button.setLoading(this.loading);
        if (z && this.buttonShowLimit == this.showLimit) {
            return;
        }
        boolean z3 = this.showLimit;
        this.buttonShowLimit = z3;
        ButtonWithCounterView buttonWithCounterView = this.allButton;
        if (z) {
            buttonWithCounterView.setVisibility(0);
            this.buttonContainer.setVisibility(0);
            ViewPropertyAnimator viewPropertyAnimatorAlpha = this.allButton.animate().alpha(this.showLimit ? 1.0f : 0.0f);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            viewPropertyAnimatorAlpha.setInterpolator(cubicBezierInterpolator).setDuration(320L).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateButton$21();
                }
            }).start();
            this.buttonContainer.animate().alpha(this.showLimit ? 0.0f : 1.0f).setInterpolator(cubicBezierInterpolator).setDuration(320L).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateButton$22();
                }
            }).start();
            return;
        }
        buttonWithCounterView.setVisibility(z3 ? 0 : 8);
        this.allButton.setAlpha(this.showLimit ? 1.0f : 0.0f);
        this.buttonContainer.setVisibility(this.showLimit ? 8 : 0);
        this.buttonContainer.setAlpha(this.showLimit ? 0.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$16(View view) {
        this.aiFallbackFailed = false;
        this.errored = false;
        updateButton();
        request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$17(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$18(View view) {
        AndroidUtilities.hideKeyboard(this.promptCell.editText);
        this.promptText = this.promptCell.getText().toString();
        updatePromptEditText();
        updateButton(true);
        request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$19(View view) {
        if (this.onUseRichListener != null) {
            TL_iv.RichMessage resultRich = getResultRich();
            if (resultRich != null) {
                this.onUseRichListener.run(resultRich);
            }
        } else if (this.onUseListener != null && getResultText() != null) {
            this.onUseListener.run(getResultText());
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$20(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$21() {
        if (this.showLimit) {
            return;
        }
        this.allButton.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateButton$22() {
        if (this.showLimit) {
            this.buttonContainer.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStyleHint() {
        Tabs tabs = this.tabs;
        if (tabs == null || tabs.getSelectedTab() != 1 || MessagesController.getGlobalMainSettings().getBoolean("aiEditorStyleHintShown", false)) {
            return;
        }
        HintView2 hintView2 = this.styleHint;
        if (hintView2 != null) {
            hintView2.hide();
            this.styleHint = null;
        }
        HintView2 hintView22 = new HintView2(getContext(), 1);
        this.styleHint = hintView22;
        hintView22.setRoundingWithCornerEffect(false);
        this.styleHint.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        this.styleHint.setRounding(20.0f);
        this.styleHint.setShadow(AndroidUtilities.dp(12.0f), 0.0f, AndroidUtilities.dp(4.0f), Theme.multAlpha(-16777216, 0.25f));
        this.styleHint.setText(LocaleController.getString(C2665R.string.AIEditorChooseStyle));
        this.styleHint.setJoint(0.5f, 0.0f);
        this.styleHint.setDuration(8000L);
        this.containerView.addView(this.styleHint, LayoutHelper.createFrame(-1, 200.0f, 55, 0.0f, 0.0f, 0.0f, 0.0f));
        MessagesController.getGlobalMainSettings().edit().putBoolean("aiEditorStyleHintShown", true).apply();
        this.styleHint.show();
        updateStyleHintY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStyleHintY() {
        View childAt;
        if (this.styleHint == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.recyclerListView.getChildCount()) {
                childAt = null;
                break;
            }
            childAt = this.recyclerListView.getChildAt(i);
            UItem item = this.adapter.getItem(this.recyclerListView.getChildAdapterPosition(childAt) - 1);
            if (item != null && item.view == this.styleTabs) {
                break;
            } else {
                i++;
            }
        }
        HintView2 hintView2 = this.styleHint;
        if (childAt != null) {
            hintView2.setVisibility(0);
            this.styleHint.setTranslationY(this.recyclerListView.getY() + childAt.getY() + childAt.getHeight());
        } else {
            hintView2.setVisibility(4);
            this.styleHint.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectTab(int i) {
        selectTab(i, true);
    }

    private void selectTab(int i, boolean z) {
        if (this.tabs.getSelectedTab() == i) {
            return;
        }
        HintView2 hintView2 = this.styleHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        this.tabs.selectTab(i, z);
        if (i == 1) {
            AndroidUtilities.runOnUIThread(new AIEditorAlert$$ExternalSyntheticLambda10(this));
        }
        request();
        this.adapter.update(z);
    }

    private void addMainTab(int i, CharSequence charSequence, final int i2) {
        this.tabs.addTab(i, charSequence, new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda37
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.selectTab(((Integer) obj).intValue());
            }
        }).setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda38
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$addMainTab$23(i2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onTabLongClick, reason: merged with bridge method [inline-methods] */
    public boolean lambda$addMainTab$23(final int i, View view) {
        if (getDefaultTab() == i) {
            return false;
        }
        this.aiIOptions = ItemOptions.makeOptions(this.container, this.resourcesProvider, view).setGravity(1).add(C2665R.drawable.tabs_reorder, LocaleController.getString(C2665R.string.ProfileTabSetAsMain), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTabLongClick$24(i);
            }
        }).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTabLongClick$25();
            }
        }).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$25() {
        this.aiIOptions = null;
    }

    private int getDefaultTab() {
        int i = MessagesController.getGlobalMainSettings().getInt("aiEditorDefaultTab", 1);
        if (i < 0 || i > 2) {
            return 1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setDefaultTab, reason: merged with bridge method [inline-methods] */
    public void lambda$onTabLongClick$24(int i) {
        if (i < 0 || i > 2) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().putInt("aiEditorDefaultTab", i).apply();
    }

    public static void showStylesLimitToast(final BulletinFactory bulletinFactory, int i) {
        String string;
        if (bulletinFactory == null || bulletinFactory.getContext() == null) {
            return;
        }
        MessagesController messagesController = MessagesController.getInstance(i);
        boolean zIsPremium = UserConfig.getInstance(i).isPremium();
        int i2 = !zIsPremium ? C2665R.raw.star_premium_2 : C2665R.raw.error;
        String string2 = LocaleController.getString(C2665R.string.AIEditorStyleLimitTitle);
        if (!zIsPremium) {
            string = LocaleController.formatString(C2665R.string.AIEditorStyleLimitTextPremium, Integer.valueOf(messagesController.config.aicomposeToneSavedLimitDefault.get()), Integer.valueOf(messagesController.config.aicomposeToneSavedLimitPremium.get()));
        } else {
            string = LocaleController.formatString(C2665R.string.AIEditorStyleLimitText, Integer.valueOf(messagesController.config.aicomposeToneSavedLimitPremium.get()));
        }
        bulletinFactory.createSimpleBulletin(i2, string2, AndroidUtilities.replaceSingleTag(string, new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                BulletinFactory bulletinFactory2 = bulletinFactory;
                new PremiumFeatureBottomSheet(bulletinFactory2.getContext(), 42, true, bulletinFactory2.getResourcesProvider()).show();
            }
        })).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectStyle(TL_aicompose.AiComposeTone aiComposeTone) {
        int i;
        HintView2 hintView2 = this.styleHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        if (aiComposeTone instanceof PromptTone) {
            this.styleTabs.selectTone(aiComposeTone);
            this.adapter.update(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$selectStyle$27();
                }
            }, 150L);
            return;
        }
        if (aiComposeTone == null) {
            int savedTonesCount = this.tonesController.getSavedTonesCount() + 1;
            boolean zIsPremium = UserConfig.getInstance(this.currentAccount).isPremium();
            int i2 = this.currentAccount;
            if (zIsPremium) {
                i = MessagesController.getInstance(i2).config.aicomposeToneSavedLimitPremium.get();
            } else {
                i = MessagesController.getInstance(i2).config.aicomposeToneSavedLimitDefault.get();
            }
            if (savedTonesCount > i) {
                showStylesLimitToast(BulletinFactory.of(this.bulletinContainer, this.resourcesProvider), this.currentAccount);
                return;
            } else {
                new CreateAiStyleAlert(getContext(), this.resourcesProvider).setOnToneCreated(new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda36
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$selectStyle$28((TL_aicompose.AiComposeTone) obj);
                    }
                }).show();
                return;
            }
        }
        if (this.styleTabs.getSelectedTone() == aiComposeTone) {
            return;
        }
        this.styleTabs.selectTone(aiComposeTone);
        request();
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectStyle$27() {
        AndroidUtilities.showKeyboard(this.promptCell.editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$selectStyle$28(TL_aicompose.AiComposeTone aiComposeTone) {
        this.tonesController.tones.add(0, aiComposeTone);
        updateStyles();
        BulletinFactory.of(this.bulletinContainer, this.resourcesProvider).createEmojiBulletin(aiComposeTone.emoji_id, LocaleController.formatString(C2665R.string.AIEditorToneCreatedTitle, aiComposeTone.title), LocaleController.getString(C2665R.string.AIEditorToneCreatedText)).show();
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView, org.telegram.ui.ActionBar.BottomSheet
    public void onContainerViewTranslation() {
        super.onContainerViewTranslation();
        ValueAnimator valueAnimator = this.keyboardContentAnimator;
        LinearLayout linearLayout = this.buttonContainer;
        if (valueAnimator != null) {
            linearLayout.setTranslationY(-((Float) valueAnimator.getAnimatedValue()).floatValue());
        } else {
            linearLayout.setTranslationY(0.0f);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public void onActionBarAlpha(float f) {
        float f2 = 1.0f - f;
        this.closeView.setAlpha(f2);
        this.closeView.setScaleX(AndroidUtilities.lerp(0.6f, 1.0f, f2));
        this.closeView.setScaleY(AndroidUtilities.lerp(0.6f, 1.0f, f2));
    }

    public static CharSequence copy(CharSequence charSequence) {
        if (!(charSequence instanceof Spanned)) {
            return charSequence.toString();
        }
        Spanned spanned = (Spanned) charSequence;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence.toString());
        Class[] clsArr = {TextStyleSpan.class, CodeHighlighting.Span.class, SquigglyLinesSpan.class, URLSpanUserMention.class, URLSpanReplacement.class, URLSpanMono.class, URLSpanNoUnderline.class, FormattedDateSpan.class, URLSpanBrowser.class, URLSpanBotCommand.class, AnimatedEmojiSpan.class};
        for (int i = 0; i < 11; i++) {
            for (Object obj : spanned.getSpans(0, spanned.length(), clsArr[i])) {
                spannableStringBuilder.setSpan(obj, spanned.getSpanStart(obj), spanned.getSpanEnd(obj), 33);
            }
        }
        return spannableStringBuilder;
    }

    public AIEditorAlert setText(TL_iv.RichMessage richMessage) {
        this.textRich = richMessage;
        if (LanguageDetector.hasSupport()) {
            LanguageDetector.detectLanguage(format(this.textRich), new LanguageDetector.StringCallback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda21
                @Override // org.telegram.messenger.LanguageDetector.StringCallback
                public final void run(String str) {
                    this.f$0.lambda$setText$29(str);
                }
            }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda22
                @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
                public final void run(Exception exc) {
                    FileLog.m992e(exc);
                }
            });
        }
        updateStyles();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setText$29(String str) {
        this.from_lang = str;
        this.adapter.update(true);
    }

    private static String format(TL_iv.RichMessage richMessage) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < richMessage.blocks.size(); i++) {
            if (i > 0) {
                sb.append("\n");
            }
            format(richMessage.blocks.get(i), sb);
        }
        return sb.toString();
    }

    private static void format(TL_iv.RichText richText, StringBuilder sb) {
        if (richText instanceof TL_iv.textPlain) {
            sb.append(((TL_iv.textPlain) richText).text);
            return;
        }
        if (!(richText instanceof TL_iv.textConcat)) {
            if (richText != null) {
                format(richText.text, sb);
            }
        } else {
            TL_iv.textConcat textconcat = (TL_iv.textConcat) richText;
            for (int i = 0; i < textconcat.texts.size(); i++) {
                format(textconcat.texts.get(i), sb);
            }
        }
    }

    private static void format(TL_iv.PageBlock pageBlock, StringBuilder sb) {
        if ((pageBlock instanceof TL_iv.pageBlockHeading1) || (pageBlock instanceof TL_iv.pageBlockHeading2) || (pageBlock instanceof TL_iv.pageBlockHeading3) || (pageBlock instanceof TL_iv.pageBlockHeading4) || (pageBlock instanceof TL_iv.pageBlockHeading5) || (pageBlock instanceof TL_iv.pageBlockHeading6) || (pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockPreformatted) || (pageBlock instanceof TL_iv.pageBlockFooter)) {
            format(pageBlock.text, sb);
            return;
        }
        if ((pageBlock instanceof TL_iv.pageBlockMap) || (pageBlock instanceof TL_iv.pageBlockAudio) || (pageBlock instanceof TL_iv.pageBlockDocument) || (pageBlock instanceof TL_iv.pageBlockVideo) || (pageBlock instanceof TL_iv.pageBlockPhoto) || (pageBlock instanceof TL_iv.pageBlockSlideshow) || (pageBlock instanceof TL_iv.pageBlockCollage)) {
            TL_iv.PageCaption pageCaption = pageBlock.caption;
            if (pageCaption != null) {
                format(pageCaption.text, sb);
                return;
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            TL_iv.RichText richText = ((TL_iv.pageBlockTable) pageBlock).title;
            if (richText != null) {
                format(richText, sb);
                return;
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockList) {
            TL_iv.pageBlockList pageblocklist = (TL_iv.pageBlockList) pageBlock;
            for (int i = 0; i < pageblocklist.items.size(); i++) {
                if (i > 0) {
                    sb.append("\n");
                }
                TL_iv.PageListItem pageListItem = pageblocklist.items.get(i);
                if (pageListItem instanceof TL_iv.TL_pageListItemText) {
                    format(((TL_iv.TL_pageListItemText) pageListItem).text, sb);
                } else if (pageListItem instanceof TL_iv.TL_pageListItemBlocks) {
                    ArrayList<TL_iv.PageBlock> arrayList = ((TL_iv.TL_pageListItemBlocks) pageListItem).blocks;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (i2 > 0) {
                            sb.append("\n");
                        }
                        format(arrayList.get(i2), sb);
                    }
                }
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
            TL_iv.pageBlockOrderedList pageblockorderedlist = (TL_iv.pageBlockOrderedList) pageBlock;
            for (int i3 = 0; i3 < pageblockorderedlist.items.size(); i3++) {
                if (i3 > 0) {
                    sb.append("\n");
                }
                TL_iv.PageListOrderedItem pageListOrderedItem = pageblockorderedlist.items.get(i3);
                if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemText) {
                    format(((TL_iv.TL_pageListOrderedItemText) pageListOrderedItem).text, sb);
                } else if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                    ArrayList<TL_iv.PageBlock> arrayList2 = ((TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem).blocks;
                    for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                        if (i4 > 0) {
                            sb.append("\n");
                        }
                        format(arrayList2.get(i4), sb);
                    }
                }
            }
        }
    }

    public static CharSequence formatStyled(TL_iv.RichMessage richMessage) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (richMessage != null) {
            for (int i = 0; i < richMessage.blocks.size(); i++) {
                if (i > 0) {
                    spannableStringBuilder.append((CharSequence) "\n");
                }
                formatStyled(richMessage.blocks.get(i), spannableStringBuilder);
            }
        }
        return spannableStringBuilder;
    }

    private static void formatStyled(TL_iv.PageBlock pageBlock, SpannableStringBuilder spannableStringBuilder) {
        if ((pageBlock instanceof TL_iv.pageBlockHeading1) || (pageBlock instanceof TL_iv.pageBlockHeading2) || (pageBlock instanceof TL_iv.pageBlockHeading3) || (pageBlock instanceof TL_iv.pageBlockHeading4) || (pageBlock instanceof TL_iv.pageBlockHeading5) || (pageBlock instanceof TL_iv.pageBlockHeading6) || (pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockPreformatted) || (pageBlock instanceof TL_iv.pageBlockFooter)) {
            spannableStringBuilder.append(RichTextStyle.toSpannable(pageBlock.text, pageBlock));
            return;
        }
        if ((pageBlock instanceof TL_iv.pageBlockMap) || (pageBlock instanceof TL_iv.pageBlockAudio) || (pageBlock instanceof TL_iv.pageBlockDocument) || (pageBlock instanceof TL_iv.pageBlockVideo) || (pageBlock instanceof TL_iv.pageBlockPhoto) || (pageBlock instanceof TL_iv.pageBlockSlideshow) || (pageBlock instanceof TL_iv.pageBlockCollage)) {
            TL_iv.PageCaption pageCaption = pageBlock.caption;
            if (pageCaption != null) {
                spannableStringBuilder.append(RichTextStyle.toSpannable(pageCaption.text, null));
                return;
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockTable) {
            TL_iv.RichText richText = ((TL_iv.pageBlockTable) pageBlock).title;
            if (richText != null) {
                spannableStringBuilder.append(RichTextStyle.toSpannable(richText, null));
                return;
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockList) {
            TL_iv.pageBlockList pageblocklist = (TL_iv.pageBlockList) pageBlock;
            for (int i = 0; i < pageblocklist.items.size(); i++) {
                if (i > 0) {
                    spannableStringBuilder.append("\n");
                }
                TL_iv.PageListItem pageListItem = pageblocklist.items.get(i);
                if (pageListItem instanceof TL_iv.TL_pageListItemText) {
                    spannableStringBuilder.append(RichTextStyle.toSpannable(((TL_iv.TL_pageListItemText) pageListItem).text, null));
                } else if (pageListItem instanceof TL_iv.TL_pageListItemBlocks) {
                    ArrayList<TL_iv.PageBlock> arrayList = ((TL_iv.TL_pageListItemBlocks) pageListItem).blocks;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        if (i2 > 0) {
                            spannableStringBuilder.append("\n");
                        }
                        formatStyled(arrayList.get(i2), spannableStringBuilder);
                    }
                }
            }
            return;
        }
        if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
            TL_iv.pageBlockOrderedList pageblockorderedlist = (TL_iv.pageBlockOrderedList) pageBlock;
            for (int i3 = 0; i3 < pageblockorderedlist.items.size(); i3++) {
                if (i3 > 0) {
                    spannableStringBuilder.append("\n");
                }
                TL_iv.PageListOrderedItem pageListOrderedItem = pageblockorderedlist.items.get(i3);
                if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemText) {
                    spannableStringBuilder.append(RichTextStyle.toSpannable(((TL_iv.TL_pageListOrderedItemText) pageListOrderedItem).text));
                } else if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                    ArrayList<TL_iv.PageBlock> arrayList2 = ((TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem).blocks;
                    for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                        if (i4 > 0) {
                            spannableStringBuilder.append("\n");
                        }
                        formatStyled(arrayList2.get(i4), spannableStringBuilder);
                    }
                }
            }
        }
    }

    private static TL_iv.TL_inputRichMessage toInput(TL_iv.RichMessage richMessage) {
        TL_iv.TL_inputRichMessage tL_inputRichMessage = new TL_iv.TL_inputRichMessage();
        if (richMessage != null) {
            tL_inputRichMessage.rtl = richMessage.rtl;
            tL_inputRichMessage.blocks = new ArrayList<>(richMessage.blocks.size());
            for (int i = 0; i < richMessage.blocks.size(); i++) {
                tL_inputRichMessage.blocks.add(SendMessagesHelper.toInputPageBlock(richMessage.blocks.get(i)));
            }
            ArrayList<TLRPC.Photo> arrayList = richMessage.photos;
            if (arrayList != null && !arrayList.isEmpty()) {
                tL_inputRichMessage.flags |= 4;
                ArrayList<TLRPC.Photo> arrayList2 = richMessage.photos;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    TLRPC.Photo photo = arrayList2.get(i2);
                    i2++;
                    TLRPC.Photo photo2 = photo;
                    TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                    tL_inputPhoto.id = photo2.id;
                    tL_inputPhoto.access_hash = photo2.access_hash;
                    byte[] bArr = photo2.file_reference;
                    if (bArr == null) {
                        bArr = new byte[0];
                    }
                    tL_inputPhoto.file_reference = bArr;
                    tL_inputRichMessage.photos.add(tL_inputPhoto);
                }
            }
            ArrayList<TLRPC.Document> arrayList3 = richMessage.documents;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                tL_inputRichMessage.flags |= 8;
                ArrayList<TLRPC.Document> arrayList4 = richMessage.documents;
                int size2 = arrayList4.size();
                int i3 = 0;
                while (i3 < size2) {
                    TLRPC.Document document = arrayList4.get(i3);
                    i3++;
                    TLRPC.Document document2 = document;
                    TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                    tL_inputDocument.id = document2.id;
                    tL_inputDocument.access_hash = document2.access_hash;
                    byte[] bArr2 = document2.file_reference;
                    if (bArr2 == null) {
                        bArr2 = new byte[0];
                    }
                    tL_inputDocument.file_reference = bArr2;
                    tL_inputRichMessage.documents.add(tL_inputDocument);
                }
            }
        }
        return tL_inputRichMessage;
    }

    private UItem previewItem(int i, TL_iv.RichMessage richMessage, boolean z) {
        if (richMessage == null) {
            richMessage = this.textRich;
        }
        UItem uItemOf = RichMessageLayout.PreviewView.Factory.of(richMessage);
        uItemOf.id = i;
        uItemOf.checked = z;
        return uItemOf;
    }

    public AIEditorAlert setText(CharSequence charSequence) {
        this.text = copy(charSequence);
        if (LanguageDetector.hasSupport()) {
            LanguageDetector.detectLanguage(charSequence.toString(), new LanguageDetector.StringCallback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.LanguageDetector.StringCallback
                public final void run(String str) {
                    this.f$0.lambda$setText$31(str);
                }
            }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda12
                @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
                public final void run(Exception exc) {
                    FileLog.m992e(exc);
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setText$31(String str) {
        this.from_lang = str;
        this.adapter.update(true);
    }

    public AIEditorAlert setOnUse(Utilities.Callback<CharSequence> callback) {
        this.onUseListener = callback;
        return this;
    }

    public AIEditorAlert setOnUseRich(Utilities.Callback<TL_iv.RichMessage> callback) {
        this.onUseRichListener = callback;
        return this;
    }

    private boolean isRich() {
        return this.textRich != null;
    }

    public AIEditorAlert setOnSend(long j, boolean z, Utilities.Callback4<CharSequence, Integer, Integer, Boolean> callback4) {
        this.dialogId = j;
        this.editing = z;
        this.onSendListener = callback4;
        return this;
    }

    public AIEditorAlert setOnSendRich(long j, Utilities.Callback4<TL_iv.RichMessage, Integer, Integer, Boolean> callback4) {
        this.dialogId = j;
        this.onSendRichListener = callback4;
        return this;
    }

    private boolean hasSend() {
        return (this.onSendRichListener == null && this.onSendListener == null) ? false : true;
    }

    private boolean hasSendResult() {
        return this.onSendRichListener != null ? getResultRich() != null : (this.onSendListener == null || getResultText() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runSend(int i, int i2, boolean z) {
        if (this.onSendRichListener != null) {
            TL_iv.RichMessage resultRich = getResultRich();
            if (resultRich != null) {
                this.onSendRichListener.run(resultRich, Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
                return;
            }
            return;
        }
        if (this.onSendListener == null || getResultText() == null) {
            return;
        }
        this.onSendListener.run(getResultText(), Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        if (this.title == null) {
            this.title = LocaleController.getString(C2665R.string.AIEditor);
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2665R.raw.emoji_stars, AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
            this.titleLoadingDrawable = rLottieDrawable;
            rLottieDrawable.setAllowDecodeSingleFrame(true);
            this.titleLoadingDrawable.setAutoRepeat(1);
        }
        return this.title;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda20
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
    public void toggleEmojify(View view) {
        this.emojify = !this.emojify;
        request();
        if (view instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) view;
            if (linearLayout.getChildAt(0) instanceof CheckBox2) {
                ((CheckBox2) linearLayout.getChildAt(0)).setChecked(this.emojify, true);
            }
        }
    }

    private CharSequence getResultText() {
        if (isRich()) {
            TL_iv.RichMessage resultRich = getResultRich();
            if (resultRich == null) {
                return null;
            }
            return formatStyled(resultRich);
        }
        if (this.loading) {
            return null;
        }
        int selectedTab = this.tabs.getSelectedTab();
        if (selectedTab == 0) {
            if (this.translatedTextLoading) {
                return null;
            }
            return this.translatedText;
        }
        if (selectedTab == 2) {
            if (this.fixedTextLoading) {
                return null;
            }
            return this.fixedTextToCopy;
        }
        if (this.styledTextLoading) {
            return null;
        }
        CharSequence charSequence = this.styledText;
        return charSequence == null ? this.text : charSequence;
    }

    private TL_iv.RichMessage getResultRich() {
        if (this.loading) {
            return null;
        }
        int selectedTab = this.tabs.getSelectedTab();
        if (selectedTab == 0) {
            if (this.translatedTextLoading) {
                return null;
            }
            return this.translatedTextRich;
        }
        if (selectedTab == 2) {
            if (this.fixedTextLoading) {
                return null;
            }
            return this.fixedTextRich;
        }
        if (this.styledTextLoading) {
            return null;
        }
        TL_iv.RichMessage richMessage = this.styledTextRich;
        return richMessage == null ? this.textRich : richMessage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyResult(View view) {
        if (this.loading) {
            return;
        }
        AndroidUtilities.addToClipboard(getResultText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collapse(View view) {
        this.collapsed = false;
        saveScrollPosition();
        this.adapter.update(true);
        applyScrolledPosition(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        UItem uItemOf;
        TL_iv.RichMessage richMessage;
        UItem uItemOf2;
        TL_iv.RichMessage richMessage2;
        UItem uItemOf3;
        String strSubstring;
        String str;
        UItem uItemOf4;
        TL_iv.RichMessage richMessage3;
        String strSubstring2;
        String strSubstring3;
        arrayList.add(UItem.asShadow(null));
        arrayList.add(UItem.asCustomShadow(this.tabsContainer));
        arrayList.add(UItem.asShadow(null));
        universalAdapter.itemsOffset = 1;
        universalAdapter.whiteSectionStart();
        Tabs tabs = this.tabs;
        int selectedTab = tabs != null ? tabs.getSelectedTab() : 0;
        if (selectedTab == 0) {
            String str2 = this.from_lang;
            String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str2 != null && !str2.equalsIgnoreCase(TranslateController.UNKNOWN_LANGUAGE)) {
                String strLanguageName = TranslateAlert2.languageName(this.from_lang, null, this.genitive);
                boolean[] zArr = this.genitive;
                String string = LocaleController.getString((zArr == null || !zArr[0]) ? C2665R.string.AIEditorFromOther : C2665R.string.AIEditorFrom);
                int iIndexOf = string.indexOf("%s");
                if (iIndexOf < 0) {
                    strSubstring3 = _UrlKt.FRAGMENT_ENCODE_SET;
                    strSubstring2 = strSubstring3;
                } else {
                    strSubstring2 = string.substring(0, iIndexOf);
                    strSubstring3 = string.substring(iIndexOf + 2);
                }
                if (TextUtils.isEmpty(strSubstring2)) {
                    strLanguageName = TranslateAlert2.capitalFirst(strLanguageName);
                }
                arrayList.add(TranslateAlert3.Header.Factory.of(3, strSubstring2, strLanguageName, strSubstring3, null));
            } else {
                arrayList.add(TranslateAlert3.Header.Factory.of(3, LocaleController.getString(C2665R.string.AIEditorOriginalText), null, null, null));
            }
            arrayList.add(isRich() ? previewItem(4, this.textRich, false) : TranslateAlert3.Text.Factory.of(4, this.text, this.collapsed, false, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda24
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.collapse(view);
                }
            }, null, null));
            String strLanguageName2 = TranslateAlert2.languageName(this.to_lang, this.accusative);
            boolean[] zArr2 = this.accusative;
            String string2 = LocaleController.getString((zArr2 == null || !zArr2[0]) ? C2665R.string.AIEditorToOther : C2665R.string.AIEditorTo);
            int iIndexOf2 = string2.indexOf("%s");
            if (iIndexOf2 < 0) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                strSubstring = str;
            } else {
                String strSubstring4 = string2.substring(0, iIndexOf2);
                strSubstring = string2.substring(iIndexOf2 + 2);
                str = strSubstring4;
            }
            if (TextUtils.isEmpty(str)) {
                strLanguageName2 = TranslateAlert2.capitalFirst(strLanguageName2);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(strLanguageName2);
            if (this.translateToneTitle != null) {
                str3 = " (" + this.translateToneTitle + ")";
            }
            sb.append(str3);
            arrayList.add(TranslateAlert3.Header.Factory.of(5, str, sb.toString(), strSubstring, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda25
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.onToLangMenu(view);
                }
            }, this.emojify, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda26
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.toggleEmojify(view);
                }
            }, null));
            boolean zIsRich = isRich();
            boolean z = this.translatedTextLoading;
            if (zIsRich) {
                if (z || (richMessage3 = this.translatedTextRich) == null) {
                    richMessage3 = this.textRich;
                }
                uItemOf4 = previewItem(6, richMessage3, z);
            } else {
                uItemOf4 = TranslateAlert3.Text.Factory.of(z ? 7 : 6, this.translatedText, false, false, null, null, !z ? new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda27
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.copyResult(view);
                    }
                } : null);
            }
            arrayList.add(uItemOf4);
        } else if (selectedTab == 1) {
            arrayList.add(UItem.asCustom(this.styleTabs));
            if (this.styleTabs.getSelectedTone() instanceof PromptTone) {
                arrayList.add(UItem.asCustom(10, this.promptBox));
                universalAdapter.whiteSectionEnd();
                arrayList.add(UItem.asShadow(11, null));
                universalAdapter.whiteSectionStart();
            }
            Tabs tabs2 = this.styleTabs;
            if ((tabs2 != null && tabs2.getSelectedTab() < 0 && !this.emojify) || ((this.styleTabs.getSelectedTone() instanceof PromptTone) && !TextUtils.equals(this.promptCell.getText().toString(), this.promptText))) {
                arrayList.add(TranslateAlert3.Header.Factory.of(5, LocaleController.getString(C2665R.string.AIEditorOriginal), null, null, null, this.emojify, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda26
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.toggleEmojify(view);
                    }
                }, null));
                if (isRich()) {
                    uItemOf3 = previewItem(6, this.textRich, false);
                } else {
                    uItemOf3 = TranslateAlert3.Text.Factory.of(this.styledTextLoading ? 7 : 6, this.text, false, false, null, null, null);
                }
                arrayList.add(uItemOf3);
            } else {
                arrayList.add(TranslateAlert3.Header.Factory.of(7, LocaleController.getString(C2665R.string.AIEditorResult), null, null, null, this.emojify, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda26
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.toggleEmojify(view);
                    }
                }, null));
                boolean zIsRich2 = isRich();
                boolean z2 = this.styledTextLoading;
                if (zIsRich2) {
                    if (z2 || (richMessage2 = this.styledTextRich) == null) {
                        richMessage2 = this.textRich;
                    }
                    uItemOf2 = previewItem(8, richMessage2, z2);
                } else {
                    uItemOf2 = TranslateAlert3.Text.Factory.of(z2 ? 7 : 6, this.styledText, false, false, null, null, !z2 ? new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda27
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.copyResult(view);
                        }
                    } : null);
                }
                arrayList.add(uItemOf2);
            }
        } else if (selectedTab == 2) {
            arrayList.add(TranslateAlert3.Header.Factory.of(3, LocaleController.getString(C2665R.string.AIEditorOriginal), null, null, null));
            arrayList.add(isRich() ? previewItem(4, this.textRich, false) : TranslateAlert3.Text.Factory.of(4, this.text, this.collapsed, false, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda24
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.collapse(view);
                }
            }, null, null));
            arrayList.add(TranslateAlert3.Header.Factory.of(5, LocaleController.getString(C2665R.string.AIEditorResult), null, null, null));
            boolean zIsRich3 = isRich();
            boolean z3 = this.fixedTextLoading;
            if (zIsRich3) {
                if (z3 || (richMessage = this.fixedTextRich) == null) {
                    richMessage = this.textRich;
                }
                uItemOf = previewItem(6, richMessage, z3);
            } else {
                uItemOf = TranslateAlert3.Text.Factory.of(z3 ? 7 : 6, this.fixedText, false, false, null, null, !z3 ? new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda27
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.copyResult(view);
                    }
                } : null);
            }
            arrayList.add(uItemOf);
        }
        universalAdapter.whiteSectionEnd();
        arrayList.add(UItem.asShadow(null));
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setTitle(getTitle());
        }
        updateSendButtonIcon();
        this.adapter.update(false);
        request();
        updateButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onToLangMenu(View view) {
        final AIEditorAlert aIEditorAlert;
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.container, this.resourcesProvider, view);
        itemOptionsMakeOptions.setMaxHeight(AndroidUtilities.dp(450.0f));
        itemOptionsMakeOptions.setDrawScrim(false);
        itemOptionsMakeOptions.setOnTopOfScrim();
        ScrollView scrollView = new ScrollView(getContext());
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        scrollView.addView(linearLayout);
        itemOptionsMakeOptions.addView(scrollView);
        boolean zIsSendTargetLanguageFollowApp = TranslatorUtils.isSendTargetLanguageFollowApp();
        ArrayList<String> recentSendTargetLanguages = TranslatorUtils.getRecentSendTargetLanguages();
        ArrayList<TranslateController.Language> languages = TranslateController.getLanguages();
        if (zIsSendTargetLanguageFollowApp || TextUtils.isEmpty(this.to_lang)) {
            aIEditorAlert = this;
        } else {
            aIEditorAlert = this;
            aIEditorAlert.addChecked(itemOptionsMakeOptions, linearLayout, true, TranslateAlert2.capitalFirst(TranslateAlert2.languageName(this.to_lang)), null);
        }
        int i = zIsSendTargetLanguageFollowApp ? 2 : 1;
        int size = recentSendTargetLanguages.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 1;
            final String str = recentSendTargetLanguages.get(i2);
            if (i > 0 && (zIsSendTargetLanguageFollowApp || !TextUtils.equals(str, aIEditorAlert.to_lang))) {
                aIEditorAlert.addChecked(itemOptionsMakeOptions, linearLayout, false, TranslateAlert2.capitalFirst(TranslateAlert2.languageName(str)), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onToLangMenu$33(str);
                    }
                });
                i--;
            }
            i2 = i3;
        }
        aIEditorAlert.addChecked(itemOptionsMakeOptions, linearLayout, zIsSendTargetLanguageFollowApp, LocaleController.getString(C2665R.string.TranslationTargetApp), zIsSendTargetLanguageFollowApp ? null : new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onToLangMenu$34();
            }
        });
        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(aIEditorAlert.getContext(), aIEditorAlert.resourcesProvider);
        gapView.setTag(C2665R.id.fit_width_tag, 1);
        linearLayout.addView(gapView, LayoutHelper.createLinear(-1, 8));
        int size2 = languages.size();
        int i4 = 0;
        while (i4 < size2) {
            int i5 = i4 + 1;
            final TranslateController.Language language = languages.get(i4);
            aIEditorAlert.addChecked(itemOptionsMakeOptions, linearLayout, !zIsSendTargetLanguageFollowApp && TextUtils.equals(language.code, aIEditorAlert.to_lang), language.displayName, new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onToLangMenu$35(language);
                }
            });
            i4 = i5;
        }
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onToLangMenu$33(String str) {
        cancelRequest();
        TranslatorUtils.setSendTargetLanguage(str);
        this.to_lang = TranslatorUtils.getResolvedSendTargetLanguageCode();
        request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onToLangMenu$34() {
        cancelRequest();
        TranslatorUtils.setSendTargetLanguage(Common.ASSET_APP);
        this.to_lang = TranslatorUtils.getResolvedSendTargetLanguageCode();
        request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onToLangMenu$35(TranslateController.Language language) {
        cancelRequest();
        TranslatorUtils.setSendTargetLanguage(language.code);
        this.to_lang = TranslatorUtils.getResolvedSendTargetLanguageCode();
        request();
    }

    private void addChecked(final ItemOptions itemOptions, LinearLayout linearLayout, final boolean z, CharSequence charSequence, final Runnable runnable) {
        int i = Theme.key_actionBarDefaultSubmenuItem;
        int i2 = Theme.key_actionBarDefaultSubmenuItemIcon;
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        actionBarMenuSubItem.setText(charSequence);
        actionBarMenuSubItem.setChecked(z);
        actionBarMenuSubItem.setColors(Theme.getColor(i, this.resourcesProvider), Theme.getColor(i2, this.resourcesProvider));
        actionBarMenuSubItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda48
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AIEditorAlert.m9742$r8$lambda$kySe79Kq4SeMJxkSz94Ab_TFeo(itemOptions, z, runnable, view);
            }
        });
        linearLayout.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
    }

    /* JADX INFO: renamed from: $r8$lambda$kySe79Kq4S-eMJxkSz94Ab_TFeo, reason: not valid java name */
    public static /* synthetic */ void m9742$r8$lambda$kySe79Kq4SeMJxkSz94Ab_TFeo(ItemOptions itemOptions, boolean z, Runnable runnable, View view) {
        itemOptions.dismiss();
        if (z || runnable == null) {
            return;
        }
        runnable.run();
    }

    private int estimateLinesCount() {
        CharSequence charSequence;
        CharSequence charSequence2;
        CharSequence charSequence3;
        int selectedTab = this.tabs.getSelectedTab();
        CharSequence charSequence4 = this.text;
        if (selectedTab == 0 && (charSequence3 = this.translatedText) != null) {
            charSequence4 = charSequence3;
        }
        if (selectedTab == 1 && (charSequence2 = this.styledText) != null) {
            charSequence4 = charSequence2;
        }
        CharSequence charSequence5 = (selectedTab != 2 || (charSequence = this.fixedText) == null) ? charSequence4 : charSequence;
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(AndroidUtilities.dp(16.0f));
        int iDp = AndroidUtilities.displaySize.x - AndroidUtilities.dp(64.0f);
        int i = this.backgroundPaddingLeft;
        return MathUtils.clamp(new StaticLayout(charSequence5, textPaint, (iDp - i) - i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount(), 1, 10);
    }

    private void request() {
        if (isRich()) {
            requestRich();
            return;
        }
        TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
        CharSequence[] charSequenceArr = {this.text};
        tL_textWithEntities.entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true);
        CharSequence charSequence = charSequenceArr[0];
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_textWithEntities.text = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
        final int selectedTab = this.tabs.getSelectedTab();
        final TLRPC.TL_messages_composeMessageWithAI tL_messages_composeMessageWithAI = new TLRPC.TL_messages_composeMessageWithAI();
        tL_messages_composeMessageWithAI.text = tL_textWithEntities;
        if (selectedTab == 0) {
            tL_messages_composeMessageWithAI.translate_to_lang = TranslateController.normalizeLanguage(this.to_lang);
            tL_messages_composeMessageWithAI.tone = TL_aicompose.InputAiComposeTone.fromDefault(this.translateTone);
            tL_messages_composeMessageWithAI.emojify = this.emojify;
        } else if (selectedTab == 1) {
            TL_aicompose.AiComposeTone selectedTone = this.styleTabs.getSelectedTone();
            if (selectedTone instanceof PromptTone) {
                TL_aicompose.inputAiComposeToneSingleUse inputaicomposetonesingleuse = new TL_aicompose.inputAiComposeToneSingleUse();
                if (!TextUtils.isEmpty(this.promptText)) {
                    str = this.promptText;
                }
                inputaicomposetonesingleuse.custom_prompt = str;
                tL_messages_composeMessageWithAI.tone = inputaicomposetonesingleuse;
            } else if (selectedTone instanceof TL_aicompose.TL_aiComposeTone) {
                TL_aicompose.inputAiComposeToneID inputaicomposetoneid = new TL_aicompose.inputAiComposeToneID();
                TL_aicompose.TL_aiComposeTone tL_aiComposeTone = (TL_aicompose.TL_aiComposeTone) selectedTone;
                inputaicomposetoneid.id = tL_aiComposeTone.id;
                inputaicomposetoneid.access_hash = tL_aiComposeTone.access_hash;
                tL_messages_composeMessageWithAI.tone = inputaicomposetoneid;
            } else if (selectedTone instanceof TL_aicompose.TL_aiComposeToneDefault) {
                TL_aicompose.inputAiComposeToneDefault inputaicomposetonedefault = new TL_aicompose.inputAiComposeToneDefault();
                inputaicomposetonedefault.tone = ((TL_aicompose.TL_aiComposeToneDefault) selectedTone).tone;
                tL_messages_composeMessageWithAI.tone = inputaicomposetonedefault;
            }
            tL_messages_composeMessageWithAI.emojify = this.emojify;
        } else if (selectedTab == 2) {
            tL_messages_composeMessageWithAI.proofread = true;
        }
        TLRPC.TL_messages_composeMessageWithAI tL_messages_composeMessageWithAI2 = this.lastRequest[selectedTab];
        if (tL_messages_composeMessageWithAI2 != null && tL_messages_composeMessageWithAI2.proofread == tL_messages_composeMessageWithAI.proofread && tL_messages_composeMessageWithAI2.emojify == tL_messages_composeMessageWithAI.emojify && TL_aicompose.InputAiComposeTone.equals(tL_messages_composeMessageWithAI2.tone, tL_messages_composeMessageWithAI.tone) && TextUtils.equals(tL_messages_composeMessageWithAI2.translate_to_lang, tL_messages_composeMessageWithAI.translate_to_lang)) {
            return;
        }
        if (tL_messages_composeMessageWithAI.emojify || tL_messages_composeMessageWithAI.proofread || tL_messages_composeMessageWithAI.tone != null || tL_messages_composeMessageWithAI.translate_to_lang != null) {
            this.loading = true;
            this.errored = false;
            updateButton();
            final SimpleTextView titleTextView = this.actionBar.getTitleTextView();
            titleTextView.setRightDrawable(this.titleLoadingDrawable);
            this.titleLoadingDrawable.start();
            int iEstimateLinesCount = estimateLinesCount();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < iEstimateLinesCount; i++) {
                if (i > 0) {
                    spannableStringBuilder.append((CharSequence) "\n");
                }
                int iDp = AndroidUtilities.dp((int) (Math.random() * 50.0d));
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2665R.string.Loading));
                spannableStringBuilder.setSpan(new LoadingSpan(null, iDp, 0).setHeight(AndroidUtilities.dp(6.0f)).setAlpha(0.5f).setFullWidth(true), length, spannableStringBuilder.length(), 33);
            }
            if (selectedTab == 0) {
                this.translatedTextLoading = true;
                this.translatedText = spannableStringBuilder;
            } else if (selectedTab == 1) {
                this.styledTextLoading = true;
                this.styledText = spannableStringBuilder;
            } else if (selectedTab == 2) {
                this.fixedTextLoading = true;
                this.fixedText = spannableStringBuilder;
            }
            final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$request$37(titleTextView, selectedTab, tL_messages_composeMessageWithAI, (TLRPC.TL_composedMessageWithAI) obj, (TLRPC.TL_error) obj2);
                }
            };
            if (TelegramAiReplacement.replacesEditor(this.currentAccount)) {
                Runnable runnable = this.aiFallbackCancel;
                if (runnable != null) {
                    runnable.run();
                }
                this.aiFallbackCancel = TelegramAiReplacement.compose(tL_messages_composeMessageWithAI, this.styleTabs.getSelectedTone(), this.from_lang, new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        callback2.run((TLRPC.TL_composedMessageWithAI) obj, null);
                    }
                }, new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$request$39(callback2, (Integer) obj, (String) obj2);
                    }
                });
            } else {
                this.requestId = ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_composeMessageWithAI, new AiTonesController$$ExternalSyntheticLambda0(), callback2);
            }
            this.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$37(SimpleTextView simpleTextView, int i, TLRPC.TL_messages_composeMessageWithAI tL_messages_composeMessageWithAI, TLRPC.TL_composedMessageWithAI tL_composedMessageWithAI, TLRPC.TL_error tL_error) {
        this.requestId = -1;
        this.aiFallbackCancel = null;
        this.loading = false;
        if (tL_error != null && ("SUMMARY_FLOOD_PREMIUM".equalsIgnoreCase(tL_error.text) || "AICOMPOSE_FLOOD_PREMIUM".equalsIgnoreCase(tL_error.text))) {
            BulletinFactory.of(this.bulletinContainer, this.resourcesProvider).createSimpleBulletin(C2665R.raw.star_premium_2, LocaleController.getString(C2665R.string.AIEditorLimitTitle), AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.AIEditorLimitText))).show();
            this.showLimit = true;
            updateButton();
            return;
        }
        if (tL_error != null) {
            BulletinFactory.of(this.bulletinContainer, this.resourcesProvider).showForError(tL_error);
            simpleTextView.setRightDrawable((Drawable) null);
            this.errored = true;
            this.showLimit = false;
            updateButton();
            return;
        }
        if (tL_composedMessageWithAI == null) {
            simpleTextView.setRightDrawable((Drawable) null);
            this.errored = true;
            this.showLimit = false;
            updateButton();
            return;
        }
        simpleTextView.setRightDrawable((Drawable) null);
        this.showLimit = false;
        updateButton();
        this.lastRequest[i] = tL_messages_composeMessageWithAI;
        if (i == 0) {
            this.translatedTextLoading = false;
            this.translatedText = MessageObject.formatTextWithEntities(tL_composedMessageWithAI.result_text);
        } else if (i == 1) {
            this.styledTextLoading = false;
            this.styledText = MessageObject.formatTextWithEntities(tL_composedMessageWithAI.result_text);
        } else if (i == 2) {
            this.fixedTextLoading = false;
            TLRPC.TL_textWithEntities tL_textWithEntities = tL_composedMessageWithAI.diff_text;
            if (tL_textWithEntities != null) {
                this.fixedText = MessageObject.formatTextWithEntities(tL_textWithEntities);
                this.fixedTextToCopy = MessageObject.formatTextWithEntities(tL_composedMessageWithAI.result_text);
            } else {
                CharSequence textWithEntities = MessageObject.formatTextWithEntities(tL_composedMessageWithAI.result_text);
                this.fixedTextToCopy = textWithEntities;
                this.fixedText = textWithEntities;
            }
        }
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$request$39(Utilities.Callback2 callback2, Integer num, String str) {
        AiController.showErrorBulletin(this.bulletinContainer, this.resourcesProvider, num.intValue(), str, null);
        this.aiFallbackFailed = true;
        callback2.run(null, null);
    }

    private void requestRich() {
        final int selectedTab = this.tabs.getSelectedTab();
        final TLRPC.TL_messages_composeRichMessageWithAI tL_messages_composeRichMessageWithAI = new TLRPC.TL_messages_composeRichMessageWithAI();
        tL_messages_composeRichMessageWithAI.flags |= 16;
        tL_messages_composeRichMessageWithAI.text = toInput(this.textRich);
        if (selectedTab == 0) {
            tL_messages_composeRichMessageWithAI.translate_to_lang = TranslateController.normalizeLanguage(this.to_lang);
            tL_messages_composeRichMessageWithAI.tone = TL_aicompose.InputAiComposeTone.fromDefault(this.translateTone);
            tL_messages_composeRichMessageWithAI.emojify = this.emojify;
        } else if (selectedTab == 1) {
            TL_aicompose.AiComposeTone selectedTone = this.styleTabs.getSelectedTone();
            if (selectedTone instanceof PromptTone) {
                TL_aicompose.inputAiComposeToneSingleUse inputaicomposetonesingleuse = new TL_aicompose.inputAiComposeToneSingleUse();
                inputaicomposetonesingleuse.custom_prompt = TextUtils.isEmpty(this.promptText) ? _UrlKt.FRAGMENT_ENCODE_SET : this.promptText;
                tL_messages_composeRichMessageWithAI.tone = inputaicomposetonesingleuse;
            } else if (selectedTone instanceof TL_aicompose.TL_aiComposeTone) {
                TL_aicompose.inputAiComposeToneID inputaicomposetoneid = new TL_aicompose.inputAiComposeToneID();
                TL_aicompose.TL_aiComposeTone tL_aiComposeTone = (TL_aicompose.TL_aiComposeTone) selectedTone;
                inputaicomposetoneid.id = tL_aiComposeTone.id;
                inputaicomposetoneid.access_hash = tL_aiComposeTone.access_hash;
                tL_messages_composeRichMessageWithAI.tone = inputaicomposetoneid;
            } else if (selectedTone instanceof TL_aicompose.TL_aiComposeToneDefault) {
                TL_aicompose.inputAiComposeToneDefault inputaicomposetonedefault = new TL_aicompose.inputAiComposeToneDefault();
                inputaicomposetonedefault.tone = ((TL_aicompose.TL_aiComposeToneDefault) selectedTone).tone;
                tL_messages_composeRichMessageWithAI.tone = inputaicomposetonedefault;
            }
            tL_messages_composeRichMessageWithAI.emojify = this.emojify;
        } else if (selectedTab == 2) {
            tL_messages_composeRichMessageWithAI.proofread = true;
        }
        TLRPC.TL_messages_composeRichMessageWithAI tL_messages_composeRichMessageWithAI2 = this.lastRequestRich[selectedTab];
        if (tL_messages_composeRichMessageWithAI2 != null && tL_messages_composeRichMessageWithAI2.proofread == tL_messages_composeRichMessageWithAI.proofread && tL_messages_composeRichMessageWithAI2.emojify == tL_messages_composeRichMessageWithAI.emojify && TL_aicompose.InputAiComposeTone.equals(tL_messages_composeRichMessageWithAI2.tone, tL_messages_composeRichMessageWithAI.tone) && TextUtils.equals(tL_messages_composeRichMessageWithAI2.translate_to_lang, tL_messages_composeRichMessageWithAI.translate_to_lang)) {
            return;
        }
        if (tL_messages_composeRichMessageWithAI.emojify || tL_messages_composeRichMessageWithAI.proofread || tL_messages_composeRichMessageWithAI.tone != null || tL_messages_composeRichMessageWithAI.translate_to_lang != null) {
            this.loading = true;
            this.errored = false;
            updateButton();
            final SimpleTextView titleTextView = this.actionBar.getTitleTextView();
            titleTextView.setRightDrawable(this.titleLoadingDrawable);
            this.titleLoadingDrawable.start();
            if (selectedTab == 0) {
                this.translatedTextLoading = true;
            } else if (selectedTab == 1) {
                this.styledTextLoading = true;
            } else if (selectedTab == 2) {
                this.fixedTextLoading = true;
            }
            this.requestId = ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_composeRichMessageWithAI, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$$ExternalSyntheticLambda39
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$requestRich$40(titleTextView, selectedTab, tL_messages_composeRichMessageWithAI, (TLRPC.TL_composedRichMessageWithAI) obj, (TLRPC.TL_error) obj2);
                }
            });
            this.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestRich$40(SimpleTextView simpleTextView, int i, TLRPC.TL_messages_composeRichMessageWithAI tL_messages_composeRichMessageWithAI, TLRPC.TL_composedRichMessageWithAI tL_composedRichMessageWithAI, TLRPC.TL_error tL_error) {
        this.requestId = -1;
        this.loading = false;
        if (tL_error != null && ("SUMMARY_FLOOD_PREMIUM".equalsIgnoreCase(tL_error.text) || "AICOMPOSE_FLOOD_PREMIUM".equalsIgnoreCase(tL_error.text))) {
            BulletinFactory.of(this.bulletinContainer, this.resourcesProvider).createSimpleBulletin(C2665R.raw.star_premium_2, LocaleController.getString(C2665R.string.AIEditorLimitTitle), AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.AIEditorLimitText))).show();
            this.showLimit = true;
            updateButton();
            return;
        }
        if (tL_error != null) {
            BulletinFactory.of(this.bulletinContainer, this.resourcesProvider).showForError(tL_error);
            simpleTextView.setRightDrawable((Drawable) null);
            this.errored = true;
            this.showLimit = false;
            updateButton();
            return;
        }
        if (tL_composedRichMessageWithAI == null) {
            simpleTextView.setRightDrawable((Drawable) null);
            this.errored = true;
            this.showLimit = false;
            updateButton();
            return;
        }
        simpleTextView.setRightDrawable((Drawable) null);
        this.showLimit = false;
        updateButton();
        this.lastRequestRich[i] = tL_messages_composeRichMessageWithAI;
        if (i == 0) {
            this.translatedTextLoading = false;
            this.translatedTextRich = tL_composedRichMessageWithAI.result;
        } else if (i == 1) {
            this.styledTextLoading = false;
            this.styledTextRich = tL_composedRichMessageWithAI.result;
        } else if (i == 2) {
            this.fixedTextLoading = false;
            this.fixedTextRich = tL_composedRichMessageWithAI.result;
        }
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelRequest() {
        if (this.requestId >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestId, true);
            this.requestId = -1;
        }
        Runnable runnable = this.aiFallbackCancel;
        if (runnable != null) {
            runnable.run();
            this.aiFallbackCancel = null;
        }
        this.loading = false;
        SimpleTextView titleTextView = this.actionBar.getTitleTextView();
        if (titleTextView != null) {
            titleTextView.setRightDrawable((Drawable) null);
        }
    }

    public static final class Tabs extends FrameLayout {
        private AnimatedFloat animatedSelectedTab;
        private final int currentAccount;
        private boolean divider;
        private final LinearLayout layout;
        private Utilities.CallbackReturn<Tab, Boolean> onLongClick;
        private final Theme.ResourcesProvider resourcesProvider;
        private int roundRadiusDp;
        private final FrameLayout scrollView;
        private int selectedTab;

        public Tabs setOnItemLongClick(Utilities.CallbackReturn<Tab, Boolean> callbackReturn) {
            this.onLongClick = callbackReturn;
            return this;
        }

        public Tabs(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
            this(context, i, 0, z, resourcesProvider);
        }

        public Tabs(Context context, int i, int i2, boolean z, final Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.AIEditorAlert.Tabs.1
                private final RectF floorRect = new RectF();
                private final RectF ceilRect = new RectF();
                private final RectF rect = new RectF();
                private final Paint selectorPaint = new Paint(1);

                @Override // android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    float f = Tabs.this.animatedSelectedTab == null ? 0.0f : Tabs.this.animatedSelectedTab.set(Tabs.this.selectedTab);
                    double d = f;
                    int iFloor = (int) Math.floor(d);
                    int iCeil = (int) Math.ceil(d);
                    float f2 = f - iFloor;
                    if (iFloor >= 0 && iFloor < getChildCount()) {
                        View childAt = getChildAt(iFloor);
                        this.floorRect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                    }
                    if (iCeil >= 0 && iCeil < getChildCount()) {
                        View childAt2 = getChildAt(iCeil);
                        this.ceilRect.set(childAt2.getLeft(), childAt2.getTop(), childAt2.getRight(), childAt2.getBottom());
                    }
                    AndroidUtilities.lerp(this.floorRect, this.ceilRect, f2, this.rect);
                    this.selectorPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), 0.1f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(Tabs.this.roundRadiusDp), AndroidUtilities.dp(Tabs.this.roundRadiusDp), this.selectorPaint);
                    for (int i3 = 0; i3 < getChildCount(); i3++) {
                        View childAt3 = getChildAt(i3);
                        if (childAt3 instanceof Tab) {
                            ((Tab) childAt3).updateSelected(Math.max(0.0f, 1.0f - Math.abs(i3 - f)), false);
                        }
                    }
                    super.dispatchDraw(canvas);
                }

                @Override // android.widget.LinearLayout, android.view.View
                public void onMeasure(int i3, int i4) {
                    boolean z2 = getOrientation() == 0;
                    int size = z2 ? View.MeasureSpec.getSize(i3) : View.MeasureSpec.getSize(i4);
                    int i5 = 0;
                    int iMax = 0;
                    for (int i6 = 0; i6 < getChildCount(); i6++) {
                        View childAt = getChildAt(i6);
                        childAt.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
                        childAt.measure(z2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : i3, !z2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : i4);
                        int measuredWidth = z2 ? childAt.getMeasuredWidth() : childAt.getMeasuredHeight();
                        iMax = Math.max(iMax, measuredWidth);
                        i5 += measuredWidth;
                    }
                    boolean z3 = i5 <= size && ((float) iMax) < ((float) size) / ((float) getChildCount());
                    for (int i7 = 0; i7 < getChildCount(); i7++) {
                        View childAt2 = getChildAt(i7);
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt2.getLayoutParams();
                        childAt2.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
                        if (z3) {
                            if (z2) {
                                layoutParams.width = 0;
                            } else {
                                layoutParams.height = 0;
                            }
                            layoutParams.weight = 1.0f;
                        } else {
                            if (z2) {
                                layoutParams.width = -2;
                            } else {
                                layoutParams.height = -2;
                            }
                            layoutParams.weight = 0.0f;
                        }
                    }
                    super.onMeasure(i3, i4);
                }
            };
            this.layout = linearLayout;
            linearLayout.setOrientation(i2);
            this.animatedSelectedTab = new AnimatedFloat(linearLayout, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            if (z) {
                if (i2 == 0) {
                    HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
                    this.scrollView = horizontalScrollView;
                    horizontalScrollView.setFillViewport(true);
                } else {
                    ScrollView scrollView = new ScrollView(context);
                    this.scrollView = scrollView;
                    scrollView.setFillViewport(true);
                }
                this.scrollView.addView(linearLayout);
                addView(this.scrollView, LayoutHelper.createFrame(-1, -1, 119));
                return;
            }
            this.scrollView = null;
            addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
        }

        @Override // android.view.View
        public void setPadding(int i, int i2, int i3, int i4) {
            this.layout.setPadding(i, i2, i3, i4);
        }

        public void setDivider(boolean z) {
            this.divider = z;
        }

        public void setRoundRadius(int i) {
            this.roundRadiusDp = i;
        }

        public void clearTabs() {
            this.layout.removeAllViews();
        }

        public Tab addTab(int i, CharSequence charSequence, final Utilities.Callback<Integer> callback) {
            final int childCount = this.layout.getChildCount();
            Tab tab = new Tab(getContext(), this.currentAccount, this.resourcesProvider);
            tab.setRoundRadius(this.roundRadiusDp);
            tab.set(i, charSequence);
            tab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$Tabs$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    callback.run(Integer.valueOf(childCount));
                }
            });
            this.layout.addView(tab, LayoutHelper.createLinear(0, -1, 1.0f, 119));
            return tab;
        }

        public Tab addTab(final TL_aicompose.AiComposeTone aiComposeTone, final Utilities.Callback<TL_aicompose.AiComposeTone> callback) {
            final Tab tab = new Tab(getContext(), this.currentAccount, this.resourcesProvider);
            tab.tone = aiComposeTone;
            tab.setRoundRadius(this.roundRadiusDp);
            if (aiComposeTone == null) {
                tab.accent = false;
                tab.updateColors();
                tab.set(C2665R.drawable.tone_create, LocaleController.getString(C2665R.string.AIEditorStyleNewCreate));
            } else if (aiComposeTone instanceof PromptTone) {
                tab.accent = false;
                tab.updateColors();
                tab.set(C2665R.drawable.iv_prompt, LocaleController.getString(C2665R.string.AIEditorStylePrompt));
            } else {
                tab.set(null, aiComposeTone.title, Long.valueOf(aiComposeTone.emoji_id));
            }
            tab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$Tabs$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    callback.run(aiComposeTone);
                }
            });
            tab.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$Tabs$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$addTab$3(tab, view);
                }
            });
            LinearLayout linearLayout = this.layout;
            linearLayout.addView(tab, LayoutHelper.createLinear(linearLayout.getOrientation() == 0 ? 0 : -1, this.layout.getOrientation() != 1 ? -1 : 0, 1.0f, 119));
            return tab;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$addTab$3(Tab tab, View view) {
            Utilities.CallbackReturn<Tab, Boolean> callbackReturn = this.onLongClick;
            if (callbackReturn != null) {
                return callbackReturn.run(tab).booleanValue();
            }
            return false;
        }

        public int getSelectedTab() {
            return this.selectedTab;
        }

        public TL_aicompose.AiComposeTone getSelectedTone() {
            int i = this.selectedTab;
            if (i < 0 || i >= this.layout.getChildCount()) {
                return null;
            }
            View childAt = this.layout.getChildAt(this.selectedTab);
            if (childAt instanceof Tab) {
                return ((Tab) childAt).tone;
            }
            return null;
        }

        public void selectTone(TL_aicompose.AiComposeTone aiComposeTone) {
            selectTone(aiComposeTone, true);
        }

        public void selectTone(TL_aicompose.AiComposeTone aiComposeTone, boolean z) {
            TL_aicompose.AiComposeTone aiComposeTone2;
            for (int i = 0; i < this.layout.getChildCount(); i++) {
                View childAt = this.layout.getChildAt(i);
                if ((childAt instanceof Tab) && (aiComposeTone2 = ((Tab) childAt).tone) != null && aiComposeTone2 == aiComposeTone) {
                    selectTab(i, z);
                    return;
                }
            }
        }

        public void selectTab(int i) {
            selectTab(i, true);
        }

        public void selectTab(int i, boolean z) {
            if (this.selectedTab == i) {
                return;
            }
            this.selectedTab = i;
            if (!z) {
                this.animatedSelectedTab.force(i);
            }
            if (i >= 0 && i < this.layout.getChildCount()) {
                View childAt = this.layout.getChildAt(i);
                if (childAt instanceof Tab) {
                    Tab tab = (Tab) childAt;
                    if (tab.imageView.getAnimatedEmojiDrawable() != null) {
                        AnimatedEmojiDrawable animatedEmojiDrawable = tab.imageView.getAnimatedEmojiDrawable();
                        if (animatedEmojiDrawable.getImageReceiver() != null) {
                            animatedEmojiDrawable.getImageReceiver().startAnimation();
                        }
                    } else {
                        tab.imageView.getImageReceiver().startAnimation();
                    }
                }
            }
            this.layout.invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.divider) {
                Paint themePaint = Theme.getThemePaint("paintDivider", this.resourcesProvider);
                if (themePaint == null) {
                    themePaint = Theme.dividerPaint;
                }
                canvas.drawRect(AndroidUtilities.dp(10.0f), getHeight() - 1, getWidth() - AndroidUtilities.dp(10.0f), getHeight(), themePaint);
            }
        }

        public static final class Tab extends FrameLayout implements Theme.Colorable {
            public boolean accent;
            private final int currentAccount;
            private final BackupImageView imageView;
            private boolean isEmoji;
            public final LinearLayout layout;
            private final Theme.ResourcesProvider resourcesProvider;
            private int roundRadiusDp;
            private float selected;
            private final TextView textView;
            public TL_aicompose.AiComposeTone tone;

            @Override // org.telegram.ui.ActionBar.Theme.Colorable
            public /* bridge */ /* synthetic */ int[] getColorKeys() {
                return super.getColorKeys();
            }

            public Tab(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
                super(context);
                this.accent = true;
                this.currentAccount = i;
                this.resourcesProvider = resourcesProvider;
                LinearLayout linearLayout = new LinearLayout(context);
                this.layout = linearLayout;
                linearLayout.setClipToPadding(false);
                linearLayout.setOrientation(1);
                addView(linearLayout, LayoutHelper.createFrame(-2, -2.0f, 17, 0.0f, 2.0f, 0.0f, 2.0f));
                BackupImageView backupImageView = new BackupImageView(context);
                this.imageView = backupImageView;
                NotificationCenter.listenEmojiLoading(backupImageView);
                linearLayout.addView(backupImageView, LayoutHelper.createLinear(24, 24, 49, 0, 4, 0, 0));
                TextView textView = new TextView(context);
                this.textView = textView;
                textView.setTypeface(AndroidUtilities.bold());
                textView.setTextSize(1, 12.0f);
                textView.setGravity(17);
                textView.setSingleLine();
                linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 0, 2, 0, 0));
                ScaleStateListAnimator.apply(this, 0.05f, 1.5f);
                updateSelected(0.0f, true);
            }

            public Tab setRoundRadius(int i) {
                this.roundRadiusDp = i;
                updateColors();
                return this;
            }

            public void set(int i, CharSequence charSequence) {
                this.isEmoji = false;
                this.imageView.setImageResource(i);
                this.textView.setText(charSequence);
            }

            public void set(final String str, CharSequence charSequence, Long l) {
                this.isEmoji = true;
                this.imageView.setColorFilter(null);
                this.imageView.setImageDrawable(Emoji.getEmojiDrawable(str));
                this.textView.setText(charSequence);
                int i = this.currentAccount;
                if (ConnectionsManager.getInstance(i).isTestBackend()) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < 16) {
                            if (UserConfig.getInstance(i2).isClientActivated() && !ConnectionsManager.getInstance(i2).isTestBackend()) {
                                i = i2;
                                break;
                            }
                            i2++;
                        } else {
                            break;
                        }
                    }
                }
                if (l != null) {
                    this.imageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(9, this.currentAccount, l.longValue()));
                } else {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
                    tL_inputStickerSetShortName.short_name = "RestrictedEmoji";
                    MediaDataController.getInstance(i).getStickerSet(tL_inputStickerSetShortName, null, false, new Utilities.Callback() { // from class: org.telegram.ui.Components.AIEditorAlert$Tabs$Tab$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$set$0(str, (TLRPC.TL_messages_stickerSet) obj);
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$set$0(String str, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
                TLRPC.Document document;
                if (tL_messages_stickerSet == null || tL_messages_stickerSet.set == null) {
                    return;
                }
                String strReplace = str.replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
                int i = 0;
                int i2 = 0;
                while (true) {
                    document = null;
                    if (i2 >= tL_messages_stickerSet.packs.size()) {
                        break;
                    }
                    if (tL_messages_stickerSet.packs.get(i2).documents.isEmpty() || !TextUtils.equals(tL_messages_stickerSet.packs.get(i2).emoticon.replace("️", _UrlKt.FRAGMENT_ENCODE_SET), strReplace)) {
                        i2++;
                    } else {
                        long jLongValue = tL_messages_stickerSet.packs.get(i2).documents.get(0).longValue();
                        while (true) {
                            if (i >= tL_messages_stickerSet.documents.size()) {
                                break;
                            }
                            if (tL_messages_stickerSet.documents.get(i).id == jLongValue) {
                                document = tL_messages_stickerSet.documents.get(i);
                                break;
                            }
                            i++;
                        }
                    }
                }
                if (document != null) {
                    this.imageView.setImage(ImageLocation.getForDocument(document), "24_24", ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 24), document), "24_24", Emoji.getEmojiDrawable(str), (Object) null);
                }
            }

            public void updateSelected(float f, boolean z) {
                if (z || Math.abs(f - this.selected) >= 0.01f) {
                    this.selected = f;
                    int i = Theme.key_windowBackgroundWhiteBlackText;
                    int color = Theme.getColor(i, this.resourcesProvider);
                    int i2 = Theme.key_featuredStickers_addButton;
                    int iBlendARGB = ColorUtils.blendARGB(color, Theme.getColor(i2, this.resourcesProvider), f);
                    int iBlendARGB2 = ColorUtils.blendARGB(Theme.getColor(i, this.resourcesProvider), Theme.getColor(i2, this.resourcesProvider), f);
                    this.imageView.setColorFilter(!this.isEmoji ? new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN) : null);
                    this.imageView.setEmojiColorFilter(new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN));
                    this.imageView.invalidate();
                    this.textView.setTextColor(iBlendARGB2);
                }
            }

            @Override // org.telegram.ui.ActionBar.Theme.Colorable
            public void updateColors() {
                int color;
                updateSelected(this.selected, true);
                if (this.accent) {
                    color = Theme.multAlpha(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), 0.1f);
                } else {
                    color = Theme.getColor(Theme.key_listSelector, this.resourcesProvider);
                }
                int i = this.roundRadiusDp;
                setBackground(Theme.createRadSelectorDrawable(color, i, i));
            }
        }
    }

    public final class LimitSpan extends ReplacementSpan {
        private final Paint paint = new Paint(1);
        private final Text text;

        public LimitSpan(CharSequence charSequence) {
            Text text = new Text(charSequence, 13.0f, AndroidUtilities.getTypeface("fonts/num.otf"));
            this.text = text;
            text.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            return (int) (this.text.getCurrentWidth() + AndroidUtilities.dp(6.66f));
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            float f2 = (i3 + i5) / 2.0f;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f, f2 - AndroidUtilities.dp(7.66f), this.text.getCurrentWidth() + f + AndroidUtilities.dp(6.66f), AndroidUtilities.dp(7.66f) + f2);
            canvas.saveLayerAlpha(rectF, 255, 31);
            this.paint.setColor(paint.getColor());
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(5.0f), AndroidUtilities.dp(5.0f), this.paint);
            this.text.draw(canvas, f + AndroidUtilities.dp(3.33f), f2, -1, 1.0f);
            canvas.restore();
        }
    }

    public static class CreateAiStyleAlert extends BottomSheetWithRecyclerListView {
        private UniversalAdapter adapter;
        private final FrameLayout bulletinContainer;
        private final ButtonWithCounterView button;
        private final FrameLayout buttonContainer;
        private final CheckBox2 checkbox;
        private final FrameLayout checkboxCell;
        private final ImageView closeView;
        private TL_aicompose.TL_aiComposeTone editing;
        private Long emoji_id;
        private final BackupImageView icon;
        private final FrameLayout iconButton;
        private final FrameLayout iconCell;
        private boolean localEditing;
        private boolean localMode;
        private boolean localPreview;
        private Utilities.Callback3Return<String, String, Long, Boolean> onLocalSaved;
        private Utilities.Callback<TL_aicompose.AiComposeTone> onToneCreated;
        private Utilities.Callback<TL_aicompose.AiComposeTone> onToneEdited;
        private final EditTextCell promptCell;
        private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
        private final EditTextCell titleCell;

        public CreateAiStyleAlert(Context context, final Theme.ResourcesProvider resourcesProvider) {
            super(context, null, true, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
            ImageView imageView = new ImageView(context);
            this.closeView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C2665R.drawable.ic_close_white);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            imageView.setColorFilter(getThemedColor(i));
            imageView.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(getThemedColor(i), 0.1f)));
            this.actionBar.addView(imageView, LayoutHelper.createFrame(54, 54.0f, 85, 0.0f, 0.0f, 8.0f, 0.0f));
            ScaleStateListAnimator.apply(imageView, 0.1f, 1.5f);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            FrameLayout frameLayout = new FrameLayout(context);
            this.iconCell = frameLayout;
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.iconButton = frameLayout2;
            frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(100.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            ScaleStateListAnimator.apply(frameLayout2);
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(100, 100, 17));
            BackupImageView backupImageView = new BackupImageView(context);
            this.icon = backupImageView;
            updateIcon();
            frameLayout2.addView(backupImageView, LayoutHelper.createFrame(64, 64, 17));
            frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2665R.string.AIEditorStyleTitleHint), false, false, MessagesController.getInstance(this.currentAccount).config.aicomposeToneTitleLengthMax.get(), resourcesProvider);
            this.titleCell = editTextCell;
            editTextCell.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AIEditorAlert.CreateAiStyleAlert.1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    CreateAiStyleAlert.this.updateButton();
                }
            });
            EditTextCell editTextCell2 = new EditTextCell(context, LocaleController.getString(C2665R.string.AIEditorStylePromptHint), true, false, MessagesController.getInstance(this.currentAccount).config.aicomposeTonePromptLengthMax.get(), resourcesProvider);
            this.promptCell = editTextCell2;
            editTextCell2.setShowLimitWhenNear(Math.max(100, MessagesController.getInstance(this.currentAccount).config.aicomposeTonePromptLengthMax.get() / 2));
            editTextCell2.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.AIEditorAlert.CreateAiStyleAlert.2
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    CreateAiStyleAlert.this.updateButton();
                }
            });
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(8.0f));
            linearLayout.setClipToPadding(false);
            linearLayout.setOrientation(0);
            linearLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 24, 24));
            CheckBox2 checkBox2 = new CheckBox2(context, 24, resourcesProvider);
            this.checkbox = checkBox2;
            checkBox2.setColor(Theme.key_radioBackgroundChecked, Theme.key_checkboxDisabled, Theme.key_checkboxCheck);
            checkBox2.setDrawUnchecked(true);
            checkBox2.setChecked(false, false);
            checkBox2.setDrawBackgroundAsArc(10);
            linearLayout.addView(checkBox2, LayoutHelper.createLinear(26, 26, 16, 0, 0, 0, 0));
            TextView textView = new TextView(context);
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, resourcesProvider));
            textView.setTextSize(1, 14.0f);
            textView.setText(LocaleController.getString(C2665R.string.AIEditorStyleAddLink));
            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 16, 9, 0, 0, 0));
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(view);
                }
            });
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.checkboxCell = frameLayout3;
            frameLayout3.addView(linearLayout, LayoutHelper.createFrame(-2, -2.0f, 17, 2.0f, 2.0f, 2.0f, 2.0f));
            int i2 = Theme.key_windowBackgroundGray;
            this.behindKeyboardColorKey = i2;
            setBackgroundColor(getThemedColor(i2));
            RecyclerListView recyclerListView = this.recyclerListView;
            int i3 = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.dp(66.0f));
            this.recyclerListView.setClipToPadding(false);
            this.recyclerListView.setSegmentedSectionsEnabled(false);
            this.recyclerListView.setSections();
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda4
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i4) {
                    this.f$0.lambda$new$5(resourcesProvider, view, i4);
                }
            });
            this.ignoreTouchActionBar = false;
            this.headerMoveTop = AndroidUtilities.dp(12.0f);
            this.topPadding = 0.35f;
            this.smoothKeyboardAnimationEnabled = true;
            this.takeTranslationIntoAccount = true;
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.AIEditorAlert.CreateAiStyleAlert.3
                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    ((BottomSheet) CreateAiStyleAlert.this).containerView.invalidate();
                }
            };
            defaultItemAnimator.setSupportsChangeAnimations(false);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDurations(350L);
            this.recyclerListView.setItemAnimator(defaultItemAnimator);
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.buttonContainer = frameLayout4;
            frameLayout4.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
            frameLayout4.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Theme.multAlpha(getThemedColor(i2), 0.0f), getThemedColor(i2), getThemedColor(i2)}));
            FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2, 80);
            int i4 = layoutParamsCreateFrame.leftMargin;
            int i5 = this.backgroundPaddingLeft;
            layoutParamsCreateFrame.leftMargin = i4 + i5;
            layoutParamsCreateFrame.rightMargin += i5;
            this.containerView.addView(frameLayout4, layoutParamsCreateFrame);
            FrameLayout frameLayout5 = new FrameLayout(context);
            this.bulletinContainer = frameLayout5;
            FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, -2.0f, 80, 6.0f, 0.0f, 6.0f, 60.0f);
            int i6 = layoutParamsCreateFrame2.leftMargin;
            int i7 = this.backgroundPaddingLeft;
            layoutParamsCreateFrame2.leftMargin = i6 + i7;
            layoutParamsCreateFrame2.rightMargin += i7;
            this.containerView.addView(frameLayout5, layoutParamsCreateFrame2);
            ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
            this.button = round;
            round.setText(LocaleController.getString(C2665R.string.AIEditorStyleCreate));
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$8(resourcesProvider, view);
                }
            });
            frameLayout4.addView(round, LayoutHelper.createFrame(-1, 48, 119));
            updateButton();
            this.adapter.update(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            openIconDialog();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            this.checkbox.setChecked(!r1.isChecked(), true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(Theme.ResourcesProvider resourcesProvider, View view, int i) {
            UItem item = this.adapter.getItem(i - 1);
            if (item != null && item.id == 1) {
                new AlertDialog.Builder(getContext(), resourcesProvider).setTitle(LocaleController.getString(C2665R.string.AIEditorDeleteStyle)).setMessage(LocaleController.getString(C2665R.string.AIEditorDeleteStyleText)).setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2665R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$new$4(alertDialog, i2);
                    }
                }).makeRed(-1).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(final AlertDialog alertDialog, int i) {
            final Browser.Progress progressMakeButtonLoading = alertDialog.makeButtonLoading(-1);
            progressMakeButtonLoading.init();
            TL_aicompose.deleteTone deletetone = new TL_aicompose.deleteTone();
            deletetone.tone = TL_aicompose.InputAiComposeTone.from(this.editing);
            ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(deletetone, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$new$3(progressMakeButtonLoading, alertDialog, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(Browser.Progress progress, AlertDialog alertDialog, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
            progress.end();
            alertDialog.dismiss();
            lambda$new$0();
            MessagesController.getInstance(this.currentAccount).getTonesController().remove(this.editing);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8(final Theme.ResourcesProvider resourcesProvider, View view) {
            if (this.button.isLoading() || this.localPreview) {
                return;
            }
            if (!this.button.isEnabled()) {
                if (this.localMode || this.emoji_id != null) {
                    return;
                }
                openIconDialog();
                return;
            }
            boolean z = true;
            this.button.setLoading(true);
            if (this.localMode) {
                Utilities.Callback3Return<String, String, Long, Boolean> callback3Return = this.onLocalSaved;
                if (callback3Return != null && !callback3Return.run(this.titleCell.getText().toString(), this.promptCell.getText().toString(), this.emoji_id).booleanValue()) {
                    z = false;
                }
                this.button.setLoading(false);
                if (z) {
                    lambda$new$0();
                    return;
                } else {
                    this.titleCell.performHapticFeedback(3, 2);
                    AndroidUtilities.shakeView(this.titleCell);
                    return;
                }
            }
            if (this.editing != null) {
                TL_aicompose.updateTone updatetone = new TL_aicompose.updateTone();
                updatetone.flags = 1 | updatetone.flags;
                updatetone.display_author = this.checkbox.isChecked();
                updatetone.tone = TL_aicompose.InputAiComposeTone.from(this.editing);
                updatetone.flags |= 2;
                updatetone.emoji_id = this.emoji_id.longValue();
                updatetone.flags |= 4;
                updatetone.title = this.titleCell.getText().toString();
                updatetone.flags |= 8;
                updatetone.prompt = this.promptCell.getText().toString();
                ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(updatetone, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$new$6(resourcesProvider, (TL_aicompose.AiComposeTone) obj, (TLRPC.TL_error) obj2);
                    }
                });
                return;
            }
            TL_aicompose.createTone createtone = new TL_aicompose.createTone();
            createtone.display_author = this.checkbox.isChecked();
            createtone.emoji_id = this.emoji_id.longValue();
            createtone.title = this.titleCell.getText().toString();
            createtone.prompt = this.promptCell.getText().toString();
            ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(createtone, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$new$7(resourcesProvider, (TL_aicompose.AiComposeTone) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(Theme.ResourcesProvider resourcesProvider, TL_aicompose.AiComposeTone aiComposeTone, TLRPC.TL_error tL_error) {
            this.button.setLoading(false);
            if (aiComposeTone == null) {
                if (tL_error != null) {
                    BulletinFactory.of(this.bulletinContainer, resourcesProvider).showForError(tL_error);
                }
            } else {
                Utilities.Callback<TL_aicompose.AiComposeTone> callback = this.onToneEdited;
                if (callback != null) {
                    callback.run(aiComposeTone);
                }
                lambda$new$0();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(Theme.ResourcesProvider resourcesProvider, TL_aicompose.AiComposeTone aiComposeTone, TLRPC.TL_error tL_error) {
            this.button.setLoading(false);
            if (aiComposeTone != null) {
                lambda$new$0();
                Utilities.Callback<TL_aicompose.AiComposeTone> callback = this.onToneCreated;
                if (callback != null) {
                    callback.run(aiComposeTone);
                    return;
                }
                return;
            }
            if (tL_error != null) {
                boolean zEqualsIgnoreCase = "TONES_SAVED_TOO_MANY".equalsIgnoreCase(tL_error.text);
                FrameLayout frameLayout = this.bulletinContainer;
                if (zEqualsIgnoreCase) {
                    AIEditorAlert.showStylesLimitToast(BulletinFactory.of(frameLayout, resourcesProvider), this.currentAccount);
                } else {
                    BulletinFactory.of(frameLayout, resourcesProvider).showForError(tL_error);
                }
            }
        }

        private void openIconDialog() {
            if (!this.localPreview && this.selectAnimatedEmojiDialog == null) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(null, getContext(), this.localMode, Integer.valueOf(AndroidUtilities.dp(150.0f)), 15, this.resourcesProvider) { // from class: org.telegram.ui.Components.AIEditorAlert.CreateAiStyleAlert.4
                    @Override // org.telegram.ui.SelectAnimatedEmojiDialog
                    public boolean willApplyEmoji(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
                        return tL_starGiftUnique == null || StarsController.getInstance(((BottomSheet) CreateAiStyleAlert.this).currentAccount).findUserStarGift(tL_starGiftUnique.id) == null || MessagesController.getGlobalMainSettings().getInt("statusgiftpage", 0) >= 2;
                    }

                    @Override // org.telegram.ui.SelectAnimatedEmojiDialog
                    public void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
                        CreateAiStyleAlert.this.emoji_id = l;
                        CreateAiStyleAlert.this.updateIcon();
                        CreateAiStyleAlert.this.updateButton();
                        if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                            CreateAiStyleAlert.this.selectAnimatedEmojiDialog = null;
                            selectAnimatedEmojiDialogWindowArr[0].dismiss();
                        }
                    }
                };
                selectAnimatedEmojiDialog.setSelected(this.emoji_id);
                selectAnimatedEmojiDialog.setSaveState(1);
                int i = -2;
                SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, i, i) { // from class: org.telegram.ui.Components.AIEditorAlert.CreateAiStyleAlert.5
                    @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
                    public void dismiss() {
                        super.dismiss();
                        CreateAiStyleAlert.this.selectAnimatedEmojiDialog = null;
                    }
                };
                this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
                final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = {selectAnimatedEmojiDialogWindow};
                selectAnimatedEmojiDialogWindow.showAsDropDown(this.iconButton, AndroidUtilities.dp(150.0f), -AndroidUtilities.dp(390.0f), 80);
                selectAnimatedEmojiDialogWindowArr[0].dimBehind();
            }
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet
        public void onSmoothContainerViewLayout(float f) {
            super.onSmoothContainerViewLayout(f);
            this.buttonContainer.setTranslationY(f);
        }

        public CreateAiStyleAlert setEditing(TL_aicompose.TL_aiComposeTone tL_aiComposeTone) {
            this.editing = tL_aiComposeTone;
            this.emoji_id = Long.valueOf(tL_aiComposeTone.emoji_id);
            updateIcon();
            this.titleCell.setText(this.editing.title);
            this.promptCell.setText(this.editing.prompt);
            this.checkbox.setChecked(this.editing.author_id != 0, false);
            this.actionBar.setTitle(LocaleController.getString(C2665R.string.AIEditorEditStyle));
            this.button.setText(LocaleController.getString(C2665R.string.AIEditorStyleEdit));
            updateButton();
            this.adapter.update(false);
            return this;
        }

        public CreateAiStyleAlert setLocalStyle(String str, String str2, long j, boolean z, int i, int i2, Utilities.Callback3Return<String, String, Long, Boolean> callback3Return) {
            this.localMode = true;
            this.localEditing = z;
            this.localPreview = false;
            this.onLocalSaved = callback3Return;
            this.emoji_id = j != 0 ? Long.valueOf(j) : null;
            updateIcon();
            this.titleCell.setMaxLength(i);
            this.titleCell.editText.setHint(LocaleController.getString(C2665R.string.RoleName));
            this.titleCell.setText(str);
            this.promptCell.setMaxLength(i2);
            this.promptCell.setShowLimitWhenNear(Math.max(100, i2 / 2));
            this.promptCell.editText.setHint(LocaleController.getString(C2665R.string.RolePrompt));
            this.promptCell.setText(str2);
            this.actionBar.setTitle(LocaleController.getString(z ? C2665R.string.EditRole : C2665R.string.NewRole));
            this.button.setText(LocaleController.getString(z ? C2665R.string.AIEditorStyleEdit : C2665R.string.AIEditorStyleCreate));
            updateButton();
            this.adapter.update(false);
            return this;
        }

        public CreateAiStyleAlert setLocalStylePreview(String str, String str2, long j, int i, int i2) {
            setLocalStyle(str, str2, j, false, i, i2, null);
            this.localPreview = true;
            this.iconButton.setEnabled(false);
            this.titleCell.editText.setFocusable(false);
            this.titleCell.editText.setFocusableInTouchMode(false);
            this.titleCell.editText.setCursorVisible(false);
            this.promptCell.editText.setFocusable(false);
            this.promptCell.editText.setFocusableInTouchMode(false);
            this.promptCell.editText.setCursorVisible(false);
            this.promptCell.editText.setMaxLines(Integer.MAX_VALUE);
            RecyclerListView recyclerListView = this.recyclerListView;
            int i3 = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.dp(6.0f));
            this.buttonContainer.setVisibility(8);
            this.actionBar.setTitle(LocaleController.getString(C2665R.string.Info));
            updateButton();
            this.adapter.update(false);
            return this;
        }

        public CreateAiStyleAlert setOnToneCreated(Utilities.Callback<TL_aicompose.AiComposeTone> callback) {
            this.onToneCreated = callback;
            return this;
        }

        public CreateAiStyleAlert setOnToneEdited(Utilities.Callback<TL_aicompose.AiComposeTone> callback) {
            this.onToneEdited = callback;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateIcon() {
            Long l = this.emoji_id;
            BackupImageView backupImageView = this.icon;
            if (l == null) {
                backupImageView.setImageResource(C2665R.drawable.menu_smile_add);
                this.icon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogEmptyImage, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            } else {
                backupImageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(4, this.currentAccount, this.emoji_id.longValue()));
                this.icon.setColorFilter(null);
                this.icon.setEmojiColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateButton() {
            boolean z = this.localPreview;
            ButtonWithCounterView buttonWithCounterView = this.button;
            boolean z2 = false;
            if (z) {
                buttonWithCounterView.setEnabled(false);
                return;
            }
            if ((this.localMode || this.emoji_id != null) && this.titleCell.getText().length() > 0 && this.promptCell.getText().length() > 0) {
                z2 = true;
            }
            buttonWithCounterView.setEnabled(z2);
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
            UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$CreateAiStyleAlert$$ExternalSyntheticLambda0
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
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asCustomShadow(this.iconCell));
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asCustom(this.titleCell));
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asCustom(this.promptCell));
            arrayList.add(UItem.asShadow(null));
            if (this.editing != null && !this.localMode) {
                arrayList.add(UItem.asButton(1, LocaleController.getString(C2665R.string.AIEditorDeleteStyle)).red());
                arrayList.add(UItem.asShadow(null));
            }
            if (this.localMode) {
                return;
            }
            arrayList.add(UItem.asCustomShadow(this.checkboxCell));
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public CharSequence getTitle() {
            if (this.localMode) {
                return LocaleController.getString(this.localEditing ? C2665R.string.EditRole : C2665R.string.NewRole);
            }
            return LocaleController.getString(this.editing != null ? C2665R.string.AIEditorEditStyle : C2665R.string.AIEditorNewStyle);
        }
    }

    public static class AiStyleAlert extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
        private UniversalAdapter adapter;
        private final FrameLayout bulletinContainer;
        private final ButtonWithCounterView button;
        private final FrameLayout buttonContainer;
        private final ImageView closeView;
        private int exampleIndex;
        private TL_aicompose.aiComposeToneExample[] examples;
        private final BackupImageView icon;
        private final FrameLayout iconButton;
        private final FrameLayout iconCell;
        private final TextView subtitle;
        private final TextView title;
        public final TL_aicompose.AiComposeTone tone;
        private final AiTonesController tonesController;

        public AiStyleAlert(Context context, final TL_aicompose.AiComposeTone aiComposeTone, final Theme.ResourcesProvider resourcesProvider) {
            super(context, null, false, false, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
            this.exampleIndex = 0;
            AiTonesController tonesController = MessagesController.getInstance(this.currentAccount).getTonesController();
            this.tonesController = tonesController;
            tonesController.load();
            this.tone = aiComposeTone;
            TL_aicompose.aiComposeToneExample[] aicomposetoneexampleArr = new TL_aicompose.aiComposeToneExample[MessagesController.getInstance(this.currentAccount).config.aicomposeToneExamplesNum.get()];
            this.examples = aicomposetoneexampleArr;
            if (aiComposeTone instanceof TL_aicompose.TL_aiComposeTone) {
                aicomposetoneexampleArr[0] = ((TL_aicompose.TL_aiComposeTone) aiComposeTone).example_english;
            }
            ImageView imageView = new ImageView(context);
            this.closeView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C2665R.drawable.ic_close_white);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            imageView.setColorFilter(getThemedColor(i));
            imageView.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(getThemedColor(i), 0.1f)));
            this.containerView.addView(imageView, LayoutHelper.createFrame(54, 54.0f, 53, 0.0f, 0.0f, 8.0f, 0.0f));
            ScaleStateListAnimator.apply(imageView, 0.1f, 1.5f);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            FrameLayout frameLayout = new FrameLayout(context);
            this.iconCell = frameLayout;
            frameLayout.setClipToPadding(false);
            frameLayout.setClipChildren(false);
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.iconButton = frameLayout2;
            frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(100.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(100, 100.0f, 17, 0.0f, 0.0f, 0.0f, 0.0f));
            BackupImageView backupImageView = new BackupImageView(context);
            this.icon = backupImageView;
            backupImageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(4, this.currentAccount, aiComposeTone.emoji_id));
            frameLayout2.addView(backupImageView, LayoutHelper.createFrame(64, 64, 17));
            TextView textView = new TextView(context);
            this.title = textView;
            textView.setTextColor(getThemedColor(i));
            textView.setTextSize(1, 20.0f);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setGravity(17);
            textView.setText(aiComposeTone.title);
            TextView textView2 = new TextView(context);
            this.subtitle = textView2;
            textView2.setTextColor(getThemedColor(i));
            textView2.setTextSize(1, 14.0f);
            textView2.setGravity(17);
            textView2.setText(LocaleController.getString(C2665R.string.AIEditorStyleText));
            this.actionBar.setTitle(aiComposeTone.title);
            int i2 = Theme.key_windowBackgroundGray;
            this.behindKeyboardColorKey = i2;
            setBackgroundColor(getThemedColor(i2));
            RecyclerListView recyclerListView = this.recyclerListView;
            int i3 = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.dp(66.0f));
            this.recyclerListView.setClipToPadding(false);
            this.recyclerListView.setSegmentedSectionsEnabled(false);
            this.recyclerListView.setSections();
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i4) {
                    this.f$0.lambda$new$1(view, i4);
                }
            });
            this.ignoreTouchActionBar = false;
            this.headerMoveTop = AndroidUtilities.dp(36.0f);
            this.topPadding = 0.35f;
            this.takeTranslationIntoAccount = true;
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.AIEditorAlert.AiStyleAlert.1
                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    ((BottomSheet) AiStyleAlert.this).containerView.invalidate();
                }
            };
            defaultItemAnimator.setSupportsChangeAnimations(false);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDurations(350L);
            this.recyclerListView.setItemAnimator(defaultItemAnimator);
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.buttonContainer = frameLayout3;
            frameLayout3.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(12.0f));
            frameLayout3.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Theme.multAlpha(getThemedColor(i2), 0.0f), getThemedColor(i2), getThemedColor(i2)}));
            FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2, 80);
            int i4 = layoutParamsCreateFrame.leftMargin;
            int i5 = this.backgroundPaddingLeft;
            layoutParamsCreateFrame.leftMargin = i4 + i5;
            layoutParamsCreateFrame.rightMargin += i5;
            this.containerView.addView(frameLayout3, layoutParamsCreateFrame);
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.bulletinContainer = frameLayout4;
            FrameLayout.LayoutParams layoutParamsCreateFrame2 = LayoutHelper.createFrame(-1, -2.0f, 80, 6.0f, 0.0f, 6.0f, 60.0f);
            int i6 = layoutParamsCreateFrame2.leftMargin;
            int i7 = this.backgroundPaddingLeft;
            layoutParamsCreateFrame2.leftMargin = i6 + i7;
            layoutParamsCreateFrame2.rightMargin += i7;
            this.containerView.addView(frameLayout4, layoutParamsCreateFrame2);
            ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
            this.button = round;
            round.setText(LocaleController.getString(isAlreadyAdded() ? C2665R.string.AIEditorStyleDone : C2665R.string.AIEditorAddStyle));
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(aiComposeTone, resourcesProvider, view);
                }
            });
            frameLayout3.addView(round, LayoutHelper.createFrame(-1, 48, 119));
            this.adapter.update(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view, int i) {
            this.adapter.getItem(i - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(final TL_aicompose.AiComposeTone aiComposeTone, final Theme.ResourcesProvider resourcesProvider, View view) {
            if (!this.button.isEnabled() || this.button.isLoading()) {
                return;
            }
            if (isAlreadyAdded()) {
                lambda$new$0();
                return;
            }
            this.button.setLoading(true);
            TL_aicompose.saveTone savetone = new TL_aicompose.saveTone();
            savetone.tone = TL_aicompose.InputAiComposeTone.from(aiComposeTone);
            ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(savetone, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$new$2(resourcesProvider, aiComposeTone, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(Theme.ResourcesProvider resourcesProvider, TL_aicompose.AiComposeTone aiComposeTone, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
            this.button.setLoading(false);
            if (tL_error != null) {
                boolean zEqualsIgnoreCase = "TONES_SAVED_TOO_MANY".equalsIgnoreCase(tL_error.text);
                FrameLayout frameLayout = this.bulletinContainer;
                if (zEqualsIgnoreCase) {
                    AIEditorAlert.showStylesLimitToast(BulletinFactory.of(frameLayout, resourcesProvider), this.currentAccount);
                    return;
                } else {
                    BulletinFactory.of(frameLayout, resourcesProvider).showForError(tL_error);
                    return;
                }
            }
            MessagesController.getInstance(this.currentAccount).getTonesController().add(aiComposeTone);
            lambda$new$0();
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                BulletinFactory.of(safeLastFragment).createEmojiBulletin(aiComposeTone.emoji_id, LocaleController.getString(C2665R.string.AIEditorToneAddedTitle), LocaleController.formatString(C2665R.string.AIEditorToneAddedText, aiComposeTone.title)).show();
            }
        }

        private boolean isAlreadyAdded() {
            TL_aicompose.AiComposeTone aiComposeTone = this.tone;
            if (aiComposeTone instanceof TL_aicompose.TL_aiComposeTone) {
                TL_aicompose.TL_aiComposeTone tL_aiComposeTone = (TL_aicompose.TL_aiComposeTone) aiComposeTone;
                for (int i = 0; i < this.tonesController.tones.size(); i++) {
                    TL_aicompose.AiComposeTone aiComposeTone2 = this.tonesController.tones.get(i);
                    if ((aiComposeTone2 instanceof TL_aicompose.TL_aiComposeTone) && ((TL_aicompose.TL_aiComposeTone) aiComposeTone2).id == tL_aiComposeTone.id) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
        public void show() {
            super.show();
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.loadedAiComposeTones);
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
        /* JADX INFO: renamed from: dismiss */
        public void lambda$new$0() {
            super.lambda$new$0();
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.loadedAiComposeTones);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.loadedAiComposeTones) {
                this.button.setText(LocaleController.getString(isAlreadyAdded() ? C2665R.string.AIEditorStyleDone : C2665R.string.AIEditorAddStyle));
            }
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public void onActionBarAlpha(float f) {
            SimpleTextView titleTextView = this.actionBar.getTitleTextView();
            if (titleTextView != null) {
                titleTextView.setAlpha(f);
            }
            this.closeView.setTranslationY(this.actionBar.getTranslationY() + AndroidUtilities.statusBarHeight + (((this.actionBar.getHeight() - AndroidUtilities.statusBarHeight) - this.closeView.getHeight()) / 2.0f) + (AndroidUtilities.dp(28.0f) * (1.0f - f)));
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
            UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
                }
            }, this.resourcesProvider);
            this.adapter = universalAdapter;
            universalAdapter.setApplyBackground(false);
            return this.adapter;
        }

        private CharSequence loadingText() {
            return loadingText(5);
        }

        private CharSequence loadingText(int i) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 > 0) {
                    spannableStringBuilder.append((CharSequence) "\n");
                }
                int iDp = AndroidUtilities.dp((int) (Math.random() * 50.0d));
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2665R.string.Loading));
                spannableStringBuilder.setSpan(new LoadingSpan(null, iDp, 0).setHeight(AndroidUtilities.dp(6.0f)).setAlpha(0.5f).setFullWidth(true), length, spannableStringBuilder.length(), 33);
            }
            return spannableStringBuilder;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAnotherExample(View view) {
            if (this.tone instanceof TL_aicompose.TL_aiComposeTone) {
                int i = this.exampleIndex + 1;
                this.exampleIndex = i;
                TL_aicompose.aiComposeToneExample[] aicomposetoneexampleArr = this.examples;
                if (i >= aicomposetoneexampleArr.length) {
                    this.exampleIndex = 0;
                }
                final int i2 = this.exampleIndex;
                if (aicomposetoneexampleArr[i2] == null) {
                    TL_aicompose.getToneExample gettoneexample = new TL_aicompose.getToneExample();
                    gettoneexample.tone = TL_aicompose.InputAiComposeTone.from(this.tone);
                    gettoneexample.num = i2;
                    ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(gettoneexample, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda7
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            this.f$0.lambda$onAnotherExample$4(i2, (TL_aicompose.aiComposeToneExample) obj, (TLRPC.TL_error) obj2);
                        }
                    });
                }
                this.adapter.update(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnotherExample$4(int i, TL_aicompose.aiComposeToneExample aicomposetoneexample, TLRPC.TL_error tL_error) {
            if (aicomposetoneexample != null) {
                this.examples[i] = aicomposetoneexample;
                this.adapter.update(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
            String str;
            String string;
            universalAdapter.itemsOffset = 1;
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asCustomShadow((View) this.iconCell, true));
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asCustomShadow(this.title));
            arrayList.add(UItem.asSpace(AndroidUtilities.dp(1.0f)));
            arrayList.add(UItem.asCustomShadow(this.subtitle));
            arrayList.add(UItem.asSpace(AndroidUtilities.dp(24.0f)));
            TL_aicompose.AiComposeTone aiComposeTone = this.tone;
            if (aiComposeTone instanceof TL_aicompose.TL_aiComposeTone) {
                final TL_aicompose.TL_aiComposeTone tL_aiComposeTone = (TL_aicompose.TL_aiComposeTone) aiComposeTone;
                TL_aicompose.aiComposeToneExample aicomposetoneexample = this.examples[this.exampleIndex];
                universalAdapter.whiteSectionStart();
                arrayList.add(TranslateAlert3.Header.Factory.of(3, LocaleController.getString(C2665R.string.AIEditorBefore), null, null, null, false, null, new View.OnClickListener() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.onAnotherExample(view);
                    }
                }));
                arrayList.add(TranslateAlert3.Text.Factory.of(4, aicomposetoneexample == null ? loadingText() : MessageObject.formatTextWithEntities(aicomposetoneexample.from), false, false, null, null, null));
                arrayList.add(TranslateAlert3.Header.Factory.of(5, LocaleController.getString(C2665R.string.AIEditorAfter), null, null, null));
                arrayList.add(TranslateAlert3.Text.Factory.of(6, aicomposetoneexample == null ? loadingText() : MessageObject.formatTextWithEntities(aicomposetoneexample.to), false, false, null, null, null));
                universalAdapter.whiteSectionEnd();
                TLRPC.User user = tL_aiComposeTone.author_id != 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_aiComposeTone.author_id)) : null;
                String publicUsername = UserObject.getPublicUsername(user);
                int i = tL_aiComposeTone.installs_count;
                if (user != null) {
                    StringBuilder sb = new StringBuilder();
                    if (i > 0) {
                        str = LocaleController.formatPluralString("AIEditorUsedBy", tL_aiComposeTone.installs_count, new Object[0]) + " ";
                    } else {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    sb.append(str);
                    if (TextUtils.isEmpty(publicUsername)) {
                        string = LocaleController.formatString(C2665R.string.AIEditorCreatedBy, UserObject.getUserName(user));
                    } else {
                        string = LocaleController.formatString(C2665R.string.AIEditorCreatedBy, "@" + publicUsername);
                    }
                    sb.append(string);
                    arrayList.add(UItem.asShadow(AndroidUtilities.replaceSingleLink(sb.toString(), getThemedColor(Theme.key_chat_messageLinkIn), new Runnable() { // from class: org.telegram.ui.Components.AIEditorAlert$AiStyleAlert$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$fillItems$5(tL_aiComposeTone);
                        }
                    })));
                } else if (i > 0) {
                    arrayList.add(UItem.asShadow(LocaleController.formatPluralString("AIEditorUsedBy", i, new Object[0])));
                }
            }
            arrayList.add(UItem.asSpace(AndroidUtilities.dp(32.0f)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fillItems$5(TL_aicompose.TL_aiComposeTone tL_aiComposeTone) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null) {
                return;
            }
            safeLastFragment.presentFragment(ProfileActivity.of(tL_aiComposeTone.author_id));
            lambda$new$0();
        }

        @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
        public CharSequence getTitle() {
            TL_aicompose.AiComposeTone aiComposeTone = this.tone;
            return aiComposeTone == null ? _UrlKt.FRAGMENT_ENCODE_SET : aiComposeTone.title;
        }
    }
}
