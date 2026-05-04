package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.Log;
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
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.google.common.base.Charsets;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.function.Predicate;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONTokener;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotForumHelper$$ExternalSyntheticLambda2;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LanguageDetector;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.TranslateAlert2;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Collection;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TranslateAlert2 extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private static HashMap localesByCode;
    public static final String[] userAgents = {"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36"};
    private PaddedAdapter adapter;
    private Boolean buttonShadowShown;
    private boolean firstTranslation;
    private BaseFragment fragment;
    private String fromLanguage;
    private HeaderView headerView;
    private LinearLayoutManager layoutManager;
    private RecyclerListView listView;
    private LoadingTextView loadingTextView;
    private ButtonWithCounterView mainButton;
    private Utilities.CallbackReturn onLinkPress;
    private String prevToLanguage;
    private Integer reqId;
    private ArrayList reqMessageEntities;
    private int reqMessageId;
    private TLRPC.InputPeer reqPeer;
    private boolean reqSum;
    private CharSequence reqText;
    private AnimatedFloat sheetTopAnimated;
    private boolean sheetTopNotAnimate;
    private LinkSpanDrawable.LinksTextView textView;
    private FrameLayout textViewContainer;
    private String toLanguage;

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public TranslateAlert2(Context context, String str, String str2, CharSequence charSequence, ArrayList arrayList, Theme.ResourcesProvider resourcesProvider) {
        this(context, str, str2, charSequence, arrayList, null, 0, false, resourcesProvider);
    }

    private TranslateAlert2(Context context, String str, String str2, CharSequence charSequence, ArrayList arrayList, TLRPC.InputPeer inputPeer, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        this.firstTranslation = true;
        this.backgroundPaddingLeft = 0;
        fixNavigationBar();
        this.reqText = charSequence;
        this.reqPeer = inputPeer;
        this.reqMessageId = i;
        this.reqSum = z;
        this.fromLanguage = str;
        this.toLanguage = str2;
        ContainerView containerView = new ContainerView(context);
        this.containerView = containerView;
        this.sheetTopAnimated = new AnimatedFloat(containerView, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        LoadingTextView loadingTextView = new LoadingTextView(context);
        this.loadingTextView = loadingTextView;
        loadingTextView.setPadding(AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(6.0f));
        this.loadingTextView.setTextSize(1, SharedConfig.fontSize);
        LoadingTextView loadingTextView2 = this.loadingTextView;
        int i2 = Theme.key_dialogTextBlack;
        loadingTextView2.setTextColor(getThemedColor(i2));
        this.loadingTextView.setLinkTextColor(Theme.multAlpha(getThemedColor(i2), 0.2f));
        this.loadingTextView.setText(Emoji.replaceEmoji(charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString(), this.loadingTextView.getPaint().getFontMetricsInt(), true));
        this.textViewContainer = new FrameLayout(context) { // from class: org.telegram.ui.Components.TranslateAlert2.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), TLObject.FLAG_30), i4);
            }
        };
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.textView = linksTextView;
        linksTextView.setDisablePaddingsOffsetY(true);
        this.textView.setPadding(AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(6.0f));
        this.textView.setTextSize(1, SharedConfig.fontSize);
        this.textView.setTextColor(getThemedColor(i2));
        this.textView.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkIn));
        this.textView.setTextIsSelectable(true);
        this.textView.setHighlightColor(getThemedColor(Theme.key_chat_inTextSelectionHighlight));
        int themedColor = getThemedColor(Theme.key_chat_TextSelectionCursor);
        try {
            if (Build.VERSION.SDK_INT >= 29 && !XiaomiUtilities.isMIUI()) {
                Drawable textSelectHandleLeft = this.textView.getTextSelectHandleLeft();
                PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                textSelectHandleLeft.setColorFilter(themedColor, mode);
                this.textView.setTextSelectHandleLeft(textSelectHandleLeft);
                Drawable textSelectHandleRight = this.textView.getTextSelectHandleRight();
                textSelectHandleRight.setColorFilter(themedColor, mode);
                this.textView.setTextSelectHandleRight(textSelectHandleRight);
            }
        } catch (Exception unused) {
        }
        this.textViewContainer.addView(this.textView, LayoutHelper.createFrame(-1, -1.0f));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.TranslateAlert2.2
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            protected boolean onRequestFocusInDescendants(int i3, Rect rect) {
                return true;
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
            public void requestChildFocus(View view, View view2) {
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && motionEvent.getY() < TranslateAlert2.this.getSheetTop() - getTop()) {
                    TranslateAlert2.this.lambda$new$0();
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(1);
        this.listView.setPadding(0, AndroidUtilities.statusBarHeight + AndroidUtilities.m1124dp(56.0f), 0, AndroidUtilities.m1124dp(80.0f));
        this.listView.setClipToPadding(true);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        RecyclerListView recyclerListView3 = this.listView;
        PaddedAdapter paddedAdapter = new PaddedAdapter(context, this.loadingTextView);
        this.adapter = paddedAdapter;
        recyclerListView3.setAdapter(paddedAdapter);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.TranslateAlert2.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                ((BottomSheet) TranslateAlert2.this).containerView.invalidate();
                TranslateAlert2 translateAlert2 = TranslateAlert2.this;
                translateAlert2.updateButtonShadow(translateAlert2.listView.canScrollVertically(1));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 0) {
                    TranslateAlert2.this.sheetTopNotAnimate = false;
                }
                if ((i3 == 0 || i3 == 2) && TranslateAlert2.this.getSheetTop(false) > 0.0f && TranslateAlert2.this.getSheetTop(false) < AndroidUtilities.m1124dp(96.0f) && TranslateAlert2.this.listView.canScrollVertically(1) && TranslateAlert2.this.hasEnoughHeight()) {
                    TranslateAlert2.this.sheetTopNotAnimate = true;
                    TranslateAlert2.this.listView.smoothScrollBy(0, (int) TranslateAlert2.this.getSheetTop(false));
                }
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.TranslateAlert2.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) TranslateAlert2.this).containerView.invalidate();
            }

            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                ((BottomSheet) TranslateAlert2.this).containerView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(180L);
        defaultItemAnimator.setInterpolator(new LinearInterpolator());
        this.listView.setItemAnimator(defaultItemAnimator);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -2, 80));
        HeaderView headerView = new HeaderView(context);
        this.headerView = headerView;
        this.containerView.addView(headerView, LayoutHelper.createFrame(-1, 78, 55));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.mainButton = buttonWithCounterView;
        buttonWithCounterView.setRound();
        this.mainButton.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
        this.mainButton.setText(LocaleController.getString(C2888R.string.CloseTranslation), false);
        this.mainButton.setLoading(true);
        this.mainButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        this.containerView.addView(this.mainButton, LayoutHelper.createFrame(-1, 48.0f, 87, 16.0f, 16.0f, 16.0f, 16.0f));
        translate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasEnoughHeight() {
        float height = 0.0f;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            if (this.listView.getChildAdapterPosition(this.listView.getChildAt(i)) == 1) {
                height += r3.getHeight();
            }
        }
        return height >= ((float) ((this.listView.getHeight() - this.listView.getPaddingTop()) - this.listView.getPaddingBottom()));
    }

    public void translate() {
        if (this.reqId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId.intValue(), true);
            this.reqId = null;
        }
        if ("alternative".equalsIgnoreCase(MessagesController.getInstance(this.currentAccount).translationsManualEnabled)) {
            translateAlt();
            return;
        }
        String str = this.toLanguage;
        if (str != null) {
            str = str.split("_")[0];
        }
        if ("nb".equals(str)) {
            str = "no";
        }
        final String str2 = str;
        final TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
        CharSequence charSequence = this.reqText;
        String string = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_textWithEntities.text = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
        ArrayList arrayList = this.reqMessageEntities;
        if (arrayList != null) {
            tL_textWithEntities.entities = arrayList;
        }
        if (this.reqSum && this.reqPeer != null) {
            TLRPC.TL_messages_summarizeText tL_messages_summarizeText = new TLRPC.TL_messages_summarizeText();
            tL_messages_summarizeText.flags = 1 | tL_messages_summarizeText.flags;
            tL_messages_summarizeText.peer = this.reqPeer;
            tL_messages_summarizeText.f1785id = this.reqMessageId;
            tL_messages_summarizeText.to_lang = str2;
            this.reqId = Integer.valueOf(ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_summarizeText, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$translate$1(tL_textWithEntities, (TLRPC.TL_textWithEntities) obj, (TLRPC.TL_error) obj2);
                }
            }));
            return;
        }
        TLRPC.TL_messages_translateText tL_messages_translateText = new TLRPC.TL_messages_translateText();
        TLRPC.InputPeer inputPeer = this.reqPeer;
        if (inputPeer != null) {
            tL_messages_translateText.flags = 1 | tL_messages_translateText.flags;
            tL_messages_translateText.peer = inputPeer;
            tL_messages_translateText.f1786id.add(Integer.valueOf(this.reqMessageId));
        } else {
            tL_messages_translateText.flags |= 2;
            tL_messages_translateText.text.add(tL_textWithEntities);
        }
        tL_messages_translateText.to_lang = str2;
        if (ExteraConfig.translationProvider == 0) {
            CharSequence charSequence2 = this.reqText;
            if (charSequence2 != null) {
                string = charSequence2.toString();
            }
            TranslatorUtils.translateWithDefault(string, this.reqPeer, this.reqMessageId, str2, this.reqMessageEntities, new TranslatorUtils.TranslateCallback() { // from class: org.telegram.ui.Components.TranslateAlert2.5
                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public /* synthetic */ void onSuccess(String str3) {
                    TranslatorUtils.TranslateCallback.CC.$default$onSuccess(this, str3);
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public /* synthetic */ void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities2) {
                    TranslatorUtils.TranslateCallback.CC.$default$onSuccess(this, tL_textWithEntities2);
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onSuccess(TLObject tLObject, TLRPC.TL_error tL_error) {
                    TranslateAlert2.this.reqId = null;
                    if (tLObject instanceof TLRPC.TL_messages_translateResult) {
                        TLRPC.TL_messages_translateResult tL_messages_translateResult = (TLRPC.TL_messages_translateResult) tLObject;
                        if (!tL_messages_translateResult.result.isEmpty() && tL_messages_translateResult.result.get(0) != null && ((TLRPC.TL_textWithEntities) tL_messages_translateResult.result.get(0)).text != null) {
                            TranslateAlert2.this.firstTranslation = false;
                            TLRPC.TL_textWithEntities tL_textWithEntitiesPreprocess = TranslateAlert2.preprocess(tL_textWithEntities, (TLRPC.TL_textWithEntities) tL_messages_translateResult.result.get(0));
                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(tL_textWithEntitiesPreprocess.text);
                            MessageObject.addEntitiesToText(spannableStringBuilderValueOf, tL_textWithEntitiesPreprocess.entities, false, true, false, false);
                            TranslateAlert2.this.textView.setText(TranslateAlert2.this.preprocessText(spannableStringBuilderValueOf));
                            TranslateAlert2.this.adapter.updateMainView(TranslateAlert2.this.textViewContainer);
                            AndroidUtilities.updateViewVisibilityAnimated(TranslateAlert2.this.headerView.copyButton, true, 0.5f, true);
                            TranslateAlert2.this.mainButton.setLoading(false);
                            return;
                        }
                    }
                    if (TranslateAlert2.this.firstTranslation) {
                        TranslateAlert2.this.lambda$new$0();
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert2));
                    }
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onFailed() {
                    BulletinFactory.m1245of((FrameLayout) ((BottomSheet) TranslateAlert2.this).containerView, ((BottomSheet) TranslateAlert2.this).resourcesProvider).createErrorBulletin(LocaleController.getString(C2888R.string.TranslationFailedAlert2)).show();
                    TranslateAlert2.this.headerView.toLanguageTextView.setText(TranslateAlert2.languageName(str2));
                    TranslateAlert2.this.adapter.updateMainView(TranslateAlert2.this.textViewContainer);
                    TranslateAlert2.this.mainButton.setLoading(false);
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onReqId(int i) {
                    TranslateAlert2.this.reqId = Integer.valueOf(i);
                }
            });
            return;
        }
        CharSequence charSequence3 = this.reqText;
        if (charSequence3 != null) {
            string = charSequence3.toString();
        }
        TranslatorUtils.translate(string, str2, this.reqMessageEntities, new TranslatorUtils.TranslateCallback() { // from class: org.telegram.ui.Components.TranslateAlert2.6
            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public /* synthetic */ void onSuccess(String str3) {
                TranslatorUtils.TranslateCallback.CC.$default$onSuccess(this, str3);
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public /* synthetic */ void onSuccess(TLObject tLObject, TLRPC.TL_error tL_error) {
                TranslatorUtils.TranslateCallback.CC.$default$onSuccess(this, tLObject, tL_error);
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities2) {
                if (tL_textWithEntities2 != null && tL_textWithEntities2.text != null) {
                    TranslateAlert2.this.firstTranslation = false;
                    SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(tL_textWithEntities2.text);
                    MessageObject.addEntitiesToText(spannableStringBuilderValueOf, tL_textWithEntities2.entities, false, true, false, false);
                    TranslateAlert2.this.textView.setText(TranslateAlert2.this.preprocessText(spannableStringBuilderValueOf));
                    TranslateAlert2.this.adapter.updateMainView(TranslateAlert2.this.textViewContainer);
                    AndroidUtilities.updateViewVisibilityAnimated(TranslateAlert2.this.headerView.copyButton, true, 0.5f, true);
                    TranslateAlert2.this.mainButton.setLoading(false);
                    return;
                }
                if (TranslateAlert2.this.firstTranslation) {
                    TranslateAlert2.this.lambda$new$0();
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert2));
                }
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onFailed() {
                BulletinFactory.m1245of((FrameLayout) ((BottomSheet) TranslateAlert2.this).containerView, ((BottomSheet) TranslateAlert2.this).resourcesProvider).createErrorBulletin(LocaleController.getString(C2888R.string.TranslationFailedAlert2)).show();
                TranslateAlert2.this.headerView.toLanguageTextView.setText(TranslateAlert2.languageName(str2));
                TranslateAlert2.this.adapter.updateMainView(TranslateAlert2.this.textViewContainer);
                TranslateAlert2.this.mainButton.setLoading(false);
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onReqId(int i) {
                TranslateAlert2.this.reqId = Integer.valueOf(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translate$1(TLRPC.TL_textWithEntities tL_textWithEntities, TLRPC.TL_textWithEntities tL_textWithEntities2, TLRPC.TL_error tL_error) {
        this.reqId = null;
        if (tL_error != null && "TRANSLATIONS_DISABLED_ALT".equalsIgnoreCase(tL_error.text)) {
            translateAlt();
            return;
        }
        if (tL_textWithEntities2 != null) {
            this.firstTranslation = false;
            TLRPC.TL_textWithEntities tL_textWithEntitiesPreprocess = preprocess(tL_textWithEntities, tL_textWithEntities2);
            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(tL_textWithEntitiesPreprocess.text);
            MessageObject.addEntitiesToText(spannableStringBuilderValueOf, tL_textWithEntitiesPreprocess.entities, false, true, false, false);
            this.textView.setText(preprocessText(spannableStringBuilderValueOf));
            this.adapter.updateMainView(this.textViewContainer);
            return;
        }
        if (this.firstTranslation) {
            lambda$new$0();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert2));
            return;
        }
        BulletinFactory.m1245of((FrameLayout) this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.getString(C2888R.string.TranslationFailedAlert2)).show();
        AnimatedTextView animatedTextView = this.headerView.toLanguageTextView;
        String str = this.prevToLanguage;
        this.toLanguage = str;
        animatedTextView.setText(languageName(str));
        this.adapter.updateMainView(this.textViewContainer);
    }

    private void translateAlt() {
        CharSequence charSequence = this.reqText;
        String string = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
        String str = this.fromLanguage;
        if (str != null) {
            str = str.split("_")[0];
        }
        if ("nb".equals(str)) {
            str = "no";
        }
        String str2 = this.toLanguage;
        if (str2 != null) {
            str2 = str2.split("_")[0];
        }
        alternativeTranslate(string, str, "nb".equals(str2) ? "no" : str2, new Utilities.Callback2() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$translateAlt$2((String) obj, (Boolean) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translateAlt$2(String str, Boolean bool) {
        if (str != null) {
            this.firstTranslation = false;
            this.textView.setText(preprocessText(str));
            this.adapter.updateMainView(this.textViewContainer);
        } else {
            if (isDismissed()) {
                return;
            }
            if (this.firstTranslation) {
                lambda$new$0();
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(bool.booleanValue() ? C2888R.string.TranslationFailedAlert1 : C2888R.string.TranslationFailedAlert2));
                return;
            }
            BulletinFactory.m1245of((FrameLayout) this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.getString(bool.booleanValue() ? C2888R.string.TranslationFailedAlert1 : C2888R.string.TranslationFailedAlert2)).show();
            AnimatedTextView animatedTextView = this.headerView.toLanguageTextView;
            String str2 = this.prevToLanguage;
            this.toLanguage = str2;
            animatedTextView.setText(languageName(str2));
            this.adapter.updateMainView(this.textViewContainer);
        }
    }

    private static int lastIndexOfSafe(String str, String str2, int i, int i2) {
        int iLastIndexOf = str.lastIndexOf(str2, i2 - 1);
        if (iLastIndexOf >= i) {
            return iLastIndexOf;
        }
        return -1;
    }

    public static ArrayList cut(String str, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < str.length()) {
            int iMin = Math.min(i2 + i, str.length());
            int iLastIndexOfSafe = lastIndexOfSafe(str, "%0A", i2, iMin);
            if (iLastIndexOfSafe == -1) {
                iLastIndexOfSafe = lastIndexOfSafe(str, "%20", i2, iMin);
            }
            if (iLastIndexOfSafe != -1) {
                iMin = iLastIndexOfSafe + 3;
            }
            arrayList.add(str.substring(i2, iMin));
            i2 = iMin;
        }
        return arrayList;
    }

    public static void alternativeTranslate(final String str, String str2, final String str3, final Utilities.Callback2 callback2) {
        if (callback2 == null) {
            return;
        }
        if (str2 == null) {
            LanguageDetector.detectLanguage(str, new LanguageDetector.StringCallback() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.LanguageDetector.StringCallback
                public final void run(String str4) {
                    TranslateAlert2.alternativeTranslate(str, str4, str3, callback2);
                }
            }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
                public final void run(Exception exc) {
                    TranslateAlert2.alternativeTranslate(str, "en", str3, callback2);
                }
            });
            return;
        }
        String strEncode = Uri.encode(str);
        if (strEncode.length() > 5000) {
            ArrayList arrayListCut = cut(strEncode, 5000);
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < arrayListCut.size(); i++) {
                arrayList.add(null);
            }
            final boolean[] zArr = new boolean[1];
            for (final int i2 = 0; i2 < arrayListCut.size(); i2++) {
                alternativeTranslateInternal((String) arrayListCut.get(i2), str2, str3, new Utilities.Callback2() { // from class: org.telegram.ui.Components.TranslateAlert2$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        TranslateAlert2.$r8$lambda$nlKxrRvPtwwC8pDBgVp5OMawG9U(zArr, arrayList, i2, callback2, (String) obj, (Boolean) obj2);
                    }
                });
            }
            return;
        }
        alternativeTranslateInternal(strEncode, str2, str3, callback2);
    }

    public static /* synthetic */ void $r8$lambda$nlKxrRvPtwwC8pDBgVp5OMawG9U(boolean[] zArr, ArrayList arrayList, int i, Utilities.Callback2 callback2, String str, Boolean bool) {
        if (zArr[0]) {
            return;
        }
        if (str != null) {
            arrayList.set(i, str);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (arrayList.get(i2) == null) {
                    return;
                }
            }
            zArr[0] = true;
            callback2.run(TextUtils.join(_UrlKt.FRAGMENT_ENCODE_SET, arrayList), Boolean.FALSE);
            return;
        }
        zArr[0] = true;
        callback2.run(null, bool);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.TranslateAlert2$7 */
    /* JADX INFO: loaded from: classes7.dex */
    class C52647 extends Thread {
        final /* synthetic */ Utilities.Callback2 val$done;
        final /* synthetic */ String val$fromLng;
        final /* synthetic */ String val$text;
        final /* synthetic */ String val$toLng;

        C52647(String str, String str2, String str3, Utilities.Callback2 callback2) {
            this.val$fromLng = str;
            this.val$toLng = str2;
            this.val$text = str3;
            this.val$done = callback2;
        }

        /* JADX WARN: Removed duplicated region for block: B:62:0x01a5  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            HttpURLConnection httpURLConnection;
            String string;
            final boolean z = true;
            try {
                httpURLConnection = (HttpURLConnection) new URI((((("https://translate.googleapis.com/transl") + "ate_a") + "/singl") + "e?client=gtx&sl=" + Uri.encode(this.val$fromLng) + "&tl=" + Uri.encode(this.val$toLng) + "&dt=t&ie=UTF-8&oe=UTF-8&otf=1&ssel=0&tsel=0&kc=7&dt=at&dt=bd&dt=ex&dt=ld&dt=md&dt=qca&dt=rw&dt=rm&dt=ss&q=") + this.val$text).toURL().openConnection();
            } catch (Exception e) {
                e = e;
                httpURLConnection = null;
            }
            try {
                httpURLConnection.setRequestMethod("GET");
                String[] strArr = TranslateAlert2.userAgents;
                httpURLConnection.setRequestProperty("User-Agent", strArr[(int) Math.round(Math.random() * ((double) (strArr.length - 1)))]);
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), Charsets.UTF_8));
                while (true) {
                    try {
                        int i = bufferedReader.read();
                        if (i == -1) {
                            break;
                        } else {
                            sb.append((char) i);
                        }
                    } finally {
                    }
                }
                bufferedReader.close();
                JSONArray jSONArray = new JSONArray(new JSONTokener(sb.toString()));
                JSONArray jSONArray2 = jSONArray.getJSONArray(0);
                try {
                    string = jSONArray.getString(2);
                } catch (Exception unused) {
                    string = null;
                }
                if (string != null && string.contains("-")) {
                    string.substring(0, string.indexOf("-"));
                }
                final String str = _UrlKt.FRAGMENT_ENCODE_SET;
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    String string2 = jSONArray2.getJSONArray(i2).getString(0);
                    if (string2 != null && !string2.equals("null")) {
                        str = str + string2;
                    }
                }
                if (this.val$text.length() > 0 && this.val$text.charAt(0) == '\n') {
                    str = "\n" + str;
                }
                final Utilities.Callback2 callback2 = this.val$done;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranslateAlert2$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TranslateAlert2.C52647.$r8$lambda$vC9mSOZTOvADbOtfubnnCIoM4SI(callback2, str);
                    }
                });
            } catch (Exception e2) {
                e = e2;
                try {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("failed to translate a text ");
                    sb2.append(httpURLConnection != null ? Integer.valueOf(httpURLConnection.getResponseCode()) : null);
                    sb2.append(" ");
                    sb2.append(httpURLConnection != null ? httpURLConnection.getResponseMessage() : null);
                    Log.e("translate", sb2.toString());
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                e.printStackTrace();
                if (httpURLConnection != null) {
                    try {
                        if (httpURLConnection.getResponseCode() != 429) {
                            z = false;
                        }
                    } catch (Exception unused2) {
                        final Utilities.Callback2 callback22 = this.val$done;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranslateAlert2$7$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                callback22.run(null, Boolean.FALSE);
                            }
                        });
                        return;
                    }
                }
                final Utilities.Callback2 callback23 = this.val$done;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TranslateAlert2$7$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback23.run(null, Boolean.valueOf(z));
                    }
                });
            }
        }

        public static /* synthetic */ void $r8$lambda$vC9mSOZTOvADbOtfubnnCIoM4SI(Utilities.Callback2 callback2, String str) {
            if (callback2 != null) {
                callback2.run(str, Boolean.FALSE);
            }
        }
    }

    private static void alternativeTranslateInternal(String str, String str2, String str3, Utilities.Callback2 callback2) {
        if (callback2 == null) {
            return;
        }
        new C52647(str2, str3, str, callback2).start();
    }

    public static TLRPC.TL_textWithEntities preprocess(TLRPC.TL_textWithEntities tL_textWithEntities, TLRPC.TL_textWithEntities tL_textWithEntities2) {
        Emoji.EmojiSpanRange emojiSpanRange;
        ArrayList arrayList;
        if (tL_textWithEntities2 == null || tL_textWithEntities2.text == null) {
            return null;
        }
        for (int i = 0; i < tL_textWithEntities2.entities.size(); i++) {
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) tL_textWithEntities2.entities.get(i);
            if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                if (messageEntity.url != null) {
                    String str = tL_textWithEntities2.text;
                    int i2 = messageEntity.offset;
                    String strSubstring = str.substring(i2, messageEntity.length + i2);
                    if (TextUtils.equals(strSubstring, messageEntity.url)) {
                        TLRPC.TL_messageEntityUrl tL_messageEntityUrl = new TLRPC.TL_messageEntityUrl();
                        tL_messageEntityUrl.offset = messageEntity.offset;
                        tL_messageEntityUrl.length = messageEntity.length;
                        tL_textWithEntities2.entities.set(i, tL_messageEntityUrl);
                    } else if (messageEntity.url.startsWith("https://t.me/") && strSubstring.startsWith("@") && TextUtils.equals(strSubstring.substring(1), messageEntity.url.substring(13))) {
                        TLRPC.TL_messageEntityMention tL_messageEntityMention = new TLRPC.TL_messageEntityMention();
                        tL_messageEntityMention.offset = messageEntity.offset;
                        tL_messageEntityMention.length = messageEntity.length;
                        tL_textWithEntities2.entities.set(i, tL_messageEntityMention);
                    }
                }
            } else if ((messageEntity instanceof TLRPC.TL_messageEntityPre) && tL_textWithEntities != null && (arrayList = tL_textWithEntities.entities) != null && i < arrayList.size() && (tL_textWithEntities.entities.get(i) instanceof TLRPC.TL_messageEntityPre)) {
                messageEntity.language = ((TLRPC.MessageEntity) tL_textWithEntities.entities.get(i)).language;
            }
        }
        if (tL_textWithEntities != null && tL_textWithEntities.text != null && !tL_textWithEntities.entities.isEmpty()) {
            HashMap mapGroupEmojiRanges = groupEmojiRanges(tL_textWithEntities.text);
            HashMap mapGroupEmojiRanges2 = groupEmojiRanges(tL_textWithEntities2.text);
            for (int i3 = 0; i3 < tL_textWithEntities.entities.size(); i3++) {
                TLRPC.MessageEntity messageEntity2 = (TLRPC.MessageEntity) tL_textWithEntities.entities.get(i3);
                if (messageEntity2 instanceof TLRPC.TL_messageEntityCustomEmoji) {
                    String str2 = tL_textWithEntities.text;
                    int i4 = messageEntity2.offset;
                    String strSubstring2 = str2.substring(i4, messageEntity2.length + i4);
                    if (!TextUtils.isEmpty(strSubstring2)) {
                        ArrayList arrayList2 = (ArrayList) mapGroupEmojiRanges.get(strSubstring2);
                        ArrayList arrayList3 = (ArrayList) mapGroupEmojiRanges2.get(strSubstring2);
                        if (arrayList2 != null && arrayList3 != null) {
                            int i5 = 0;
                            while (true) {
                                if (i5 >= arrayList2.size()) {
                                    i5 = -1;
                                    break;
                                }
                                Emoji.EmojiSpanRange emojiSpanRange2 = (Emoji.EmojiSpanRange) arrayList2.get(i5);
                                int i6 = emojiSpanRange2.start;
                                int i7 = messageEntity2.offset;
                                if (i6 == i7 && emojiSpanRange2.end == i7 + messageEntity2.length) {
                                    break;
                                }
                                i5++;
                            }
                            if (i5 >= 0 && i5 < arrayList3.size() && (emojiSpanRange = (Emoji.EmojiSpanRange) arrayList3.get(i5)) != null) {
                                int i8 = 0;
                                while (true) {
                                    if (i8 < tL_textWithEntities2.entities.size()) {
                                        TLRPC.MessageEntity messageEntity3 = (TLRPC.MessageEntity) tL_textWithEntities2.entities.get(i8);
                                        if (messageEntity3 instanceof TLRPC.TL_messageEntityCustomEmoji) {
                                            int i9 = emojiSpanRange.start;
                                            int i10 = emojiSpanRange.end;
                                            int i11 = messageEntity3.offset;
                                            if (AndroidUtilities.intersect1d(i9, i10, i11, messageEntity3.length + i11)) {
                                                break;
                                            }
                                        }
                                        i8++;
                                    } else {
                                        TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = new TLRPC.TL_messageEntityCustomEmoji();
                                        TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji2 = (TLRPC.TL_messageEntityCustomEmoji) messageEntity2;
                                        tL_messageEntityCustomEmoji.document_id = tL_messageEntityCustomEmoji2.document_id;
                                        tL_messageEntityCustomEmoji.document = tL_messageEntityCustomEmoji2.document;
                                        int i12 = emojiSpanRange.start;
                                        tL_messageEntityCustomEmoji.offset = i12;
                                        tL_messageEntityCustomEmoji.length = emojiSpanRange.end - i12;
                                        tL_textWithEntities2.entities.add(tL_messageEntityCustomEmoji);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return tL_textWithEntities2;
    }

    private static HashMap groupEmojiRanges(CharSequence charSequence) {
        ArrayList<Emoji.EmojiSpanRange> emojis;
        HashMap map = new HashMap();
        if (charSequence != null && (emojis = Emoji.parseEmojis(charSequence)) != null) {
            String string = charSequence.toString();
            for (int i = 0; i < emojis.size(); i++) {
                Emoji.EmojiSpanRange emojiSpanRange = emojis.get(i);
                if (emojiSpanRange != null && emojiSpanRange.code != null) {
                    String strSubstring = string.substring(emojiSpanRange.start, emojiSpanRange.end);
                    ArrayList arrayList = (ArrayList) map.get(strSubstring);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        map.put(strSubstring, arrayList);
                    }
                    arrayList.add(emojiSpanRange);
                }
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence preprocessText(CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        if (this.onLinkPress != null || this.fragment != null) {
            for (final URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class)) {
                int spanStart = spannableStringBuilder.getSpanStart(uRLSpan);
                int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan);
                if (spanStart != -1 && spanEnd != -1) {
                    spannableStringBuilder.removeSpan(uRLSpan);
                    spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.TranslateAlert2.8
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            if (TranslateAlert2.this.onLinkPress != null) {
                                if (((Boolean) TranslateAlert2.this.onLinkPress.run(uRLSpan)).booleanValue()) {
                                    TranslateAlert2.this.lambda$new$0();
                                }
                            } else if (TranslateAlert2.this.fragment != null) {
                                AlertsCreator.showOpenUrlAlert(TranslateAlert2.this.fragment, uRLSpan.getURL(), false, false);
                            }
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            int iMin = Math.min(textPaint.getAlpha(), (textPaint.getColor() >> 24) & 255);
                            if (!(uRLSpan instanceof URLSpanNoUnderline)) {
                                textPaint.setUnderlineText(true);
                            }
                            textPaint.setColor(Theme.getColor(Theme.key_dialogTextLink));
                            textPaint.setAlpha(iMin);
                        }
                    }, spanStart, spanEnd, 33);
                }
            }
        }
        return Emoji.replaceEmoji(spannableStringBuilder, this.textView.getPaint().getFontMetricsInt(), true);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        if (this.reqId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId.intValue(), true);
            this.reqId = null;
        }
        super.dismissInternal();
    }

    public void setFragment(BaseFragment baseFragment) {
        this.fragment = baseFragment;
    }

    public void setOnLinkPress(Utilities.CallbackReturn callbackReturn) {
        this.onLinkPress = callbackReturn;
    }

    public void setNoforwards(boolean z) {
        LinkSpanDrawable.LinksTextView linksTextView = this.textView;
        if (linksTextView != null) {
            linksTextView.setTextIsSelectable(!z);
        }
        if (z) {
            getWindow().addFlags(8192);
            AndroidUtilities.logFlagSecure();
        } else {
            getWindow().clearFlags(8192);
            AndroidUtilities.logFlagSecure();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private class LoadingTextView extends TextView {
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
            if (getLayout() != null && getLayout().getText() != null) {
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
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            updateDrawable();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.loadingDrawable.reset();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private static class PaddedAdapter extends RecyclerView.Adapter {
        private Context mContext;
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
                return new RecyclerListView.Holder(new View(this.mContext) { // from class: org.telegram.ui.Components.TranslateAlert2.PaddedAdapter.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
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
        float fMax = Math.max(0.0f, top - AndroidUtilities.m1124dp(78.0f));
        if (z && (animatedFloat = this.sheetTopAnimated) != null) {
            if (!this.listView.scrollingByUser && !this.sheetTopNotAnimate) {
                return animatedFloat.set(fMax);
            }
            animatedFloat.set(fMax, true);
        }
        return fMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes7.dex */
    class HeaderView extends FrameLayout {
        private ImageView arrowView;
        private ImageView backButton;
        private View backgroundView;
        private ImageView copyButton;
        private TextView fromLanguageTextView;
        private View shadow;
        private LinearLayout subtitleView;
        private TextView titleTextView;
        private AnimatedTextView toLanguageTextView;

        public HeaderView(Context context) {
            super(context);
            View view = new View(context);
            this.backgroundView = view;
            view.setBackgroundColor(TranslateAlert2.this.getThemedColor(Theme.key_dialogBackground));
            addView(this.backgroundView, LayoutHelper.createFrame(-1, 44.0f, 55, 0.0f, 12.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(context);
            this.backButton = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            this.backButton.setImageResource(C2888R.drawable.ic_ab_back);
            ImageView imageView2 = this.backButton;
            int i = Theme.key_dialogTextBlack;
            int themedColor = TranslateAlert2.this.getThemedColor(i);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageView2.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            ImageView imageView3 = this.backButton;
            int i2 = Theme.key_listSelector;
            imageView3.setBackground(Theme.createSelectorDrawable(TranslateAlert2.this.getThemedColor(i2)));
            this.backButton.setAlpha(0.0f);
            this.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$0(view2);
                }
            });
            addView(this.backButton, LayoutHelper.createFrame(54, 54.0f, 48, 1.0f, 1.0f, 1.0f, 1.0f));
            ImageView imageView4 = new ImageView(context);
            this.copyButton = imageView4;
            ScaleStateListAnimator.apply(imageView4, 0.15f, 1.5f);
            this.copyButton.setScaleType(scaleType);
            this.copyButton.setImageResource(C2888R.drawable.msg_copy);
            ImageView imageView5 = this.copyButton;
            int i3 = Theme.key_player_actionBarSubtitle;
            imageView5.setColorFilter(new PorterDuffColorFilter(TranslateAlert2.this.getThemedColor(i3), mode));
            this.copyButton.setBackground(Theme.createSelectorDrawable(TranslateAlert2.this.getThemedColor(i2)));
            this.copyButton.setVisibility(8);
            this.copyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$1(view2);
                }
            });
            addView(this.copyButton, LayoutHelper.createFrame(48, 54.0f, 53, 1.0f, 1.0f, 16.0f, 1.0f));
            TextView textView = new TextView(context) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.1
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i4, int i5) {
                    super.onMeasure(i4, i5);
                    if (LocaleController.isRTL) {
                        HeaderView.this.titleTextView.setPivotX(getMeasuredWidth());
                    }
                }
            };
            this.titleTextView = textView;
            textView.setTextColor(TranslateAlert2.this.getThemedColor(i));
            this.titleTextView.setTextSize(1, 20.0f);
            this.titleTextView.setTypeface(AndroidUtilities.bold());
            this.titleTextView.setText(TranslatorUtils.getCurrentTranslatorName());
            this.titleTextView.setPivotX(0.0f);
            this.titleTextView.setPivotY(0.0f);
            addView(this.titleTextView, LayoutHelper.createFrame(-1, -2.0f, 55, 22.0f, 20.0f, 22.0f, 0.0f));
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.2
                @Override // android.widget.LinearLayout, android.view.View
                protected void onMeasure(int i4, int i5) {
                    super.onMeasure(i4, i5);
                    if (LocaleController.isRTL) {
                        HeaderView.this.subtitleView.setPivotX(getMeasuredWidth());
                    }
                }
            };
            this.subtitleView = linearLayout;
            if (LocaleController.isRTL) {
                linearLayout.setGravity(5);
            }
            this.subtitleView.setPivotX(0.0f);
            this.subtitleView.setPivotY(0.0f);
            if (!TextUtils.isEmpty(TranslateAlert2.this.fromLanguage) && !TranslateController.UNKNOWN_LANGUAGE.equals(TranslateAlert2.this.fromLanguage)) {
                TextView textView2 = new TextView(context);
                this.fromLanguageTextView = textView2;
                textView2.setLines(1);
                this.fromLanguageTextView.setTextColor(TranslateAlert2.this.getThemedColor(i3));
                this.fromLanguageTextView.setTextSize(1, 14.0f);
                this.fromLanguageTextView.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(TranslateAlert2.this.fromLanguage)));
                this.fromLanguageTextView.setPadding(0, AndroidUtilities.m1124dp(2.0f), 0, AndroidUtilities.m1124dp(2.0f));
            }
            ImageView imageView6 = new ImageView(context);
            this.arrowView = imageView6;
            imageView6.setImageResource(C2888R.drawable.search_arrow);
            this.arrowView.setColorFilter(new PorterDuffColorFilter(TranslateAlert2.this.getThemedColor(i3), mode));
            if (LocaleController.isRTL) {
                this.arrowView.setScaleX(-1.0f);
            }
            AnimatedTextView animatedTextView = new AnimatedTextView(context) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.3
                private Paint bgPaint = new Paint(1);
                private LinkSpanDrawable.LinkCollector links = new LinkSpanDrawable.LinkCollector();

                @Override // org.telegram.p029ui.Components.AnimatedTextView, android.view.View
                protected void onDraw(Canvas canvas) {
                    if (LocaleController.isRTL) {
                        AndroidUtilities.rectTmp.set(getWidth() - width(), (getHeight() - AndroidUtilities.m1124dp(18.0f)) / 2.0f, getWidth(), (getHeight() + AndroidUtilities.m1124dp(18.0f)) / 2.0f);
                    } else {
                        AndroidUtilities.rectTmp.set(0.0f, (getHeight() - AndroidUtilities.m1124dp(18.0f)) / 2.0f, width(), (getHeight() + AndroidUtilities.m1124dp(18.0f)) / 2.0f);
                    }
                    this.bgPaint.setColor(Theme.multAlpha(TranslateAlert2.this.getThemedColor(Theme.key_player_actionBarSubtitle), 0.1175f));
                    canvas.drawRoundRect(AndroidUtilities.rectTmp, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), this.bgPaint);
                    if (this.links.draw(canvas)) {
                        invalidate();
                    }
                    super.onDraw(canvas);
                }

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        LinkSpanDrawable linkSpanDrawable = new LinkSpanDrawable(null, ((BottomSheet) TranslateAlert2.this).resourcesProvider, motionEvent.getX(), motionEvent.getY());
                        linkSpanDrawable.setColor(Theme.multAlpha(TranslateAlert2.this.getThemedColor(Theme.key_player_actionBarSubtitle), 0.1175f));
                        LinkPath linkPathObtainNewPath = linkSpanDrawable.obtainNewPath();
                        if (LocaleController.isRTL) {
                            AndroidUtilities.rectTmp.set(getWidth() - width(), (getHeight() - AndroidUtilities.m1124dp(18.0f)) / 2.0f, getWidth(), (getHeight() + AndroidUtilities.m1124dp(18.0f)) / 2.0f);
                        } else {
                            AndroidUtilities.rectTmp.set(0.0f, (getHeight() - AndroidUtilities.m1124dp(18.0f)) / 2.0f, width(), (getHeight() + AndroidUtilities.m1124dp(18.0f)) / 2.0f);
                        }
                        linkPathObtainNewPath.addRect(AndroidUtilities.rectTmp, Path.Direction.CW);
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
            this.toLanguageTextView = animatedTextView;
            if (LocaleController.isRTL) {
                animatedTextView.setGravity(5);
            }
            this.toLanguageTextView.setAnimationProperties(0.25f, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.toLanguageTextView.setTextColor(TranslateAlert2.this.getThemedColor(i3));
            this.toLanguageTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
            this.toLanguageTextView.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(TranslateAlert2.this.toLanguage)));
            this.toLanguageTextView.setPadding(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(2.0f));
            this.toLanguageTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$2(view2);
                }
            });
            if (LocaleController.isRTL) {
                this.subtitleView.addView(this.toLanguageTextView, LayoutHelper.createLinear(-2, -2, 16, 0, 0, this.fromLanguageTextView != null ? 3 : 0, 0));
                if (this.fromLanguageTextView != null) {
                    this.subtitleView.addView(this.arrowView, LayoutHelper.createLinear(-2, -2, 16, 0, 1, 0, 0));
                    this.subtitleView.addView(this.fromLanguageTextView, LayoutHelper.createLinear(-2, -2, 16, 4, 0, 0, 0));
                }
            } else {
                TextView textView3 = this.fromLanguageTextView;
                if (textView3 != null) {
                    this.subtitleView.addView(textView3, LayoutHelper.createLinear(-2, -2, 16, 0, 0, 4, 0));
                    this.subtitleView.addView(this.arrowView, LayoutHelper.createLinear(-2, -2, 16, 0, 1, 0, 0));
                }
                this.subtitleView.addView(this.toLanguageTextView, LayoutHelper.createLinear(-2, -2, 16, this.fromLanguageTextView != null ? 3 : 0, 0, 0, 0));
            }
            addView(this.subtitleView, LayoutHelper.createFrame(-1, -2.0f, 55, 22.0f, 43.0f, 22.0f, 0.0f));
            View view2 = new View(context);
            this.shadow = view2;
            view2.setBackgroundColor(TranslateAlert2.this.getThemedColor(Theme.key_dialogShadowLine));
            this.shadow.setAlpha(0.0f);
            addView(this.shadow, LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight() / AndroidUtilities.dpf2(1.0f), 55, 0.0f, 56.0f, 0.0f, 0.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            TranslateAlert2.this.lambda$new$0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            if (AndroidUtilities.addToClipboard(TranslateAlert2.this.textView.getText())) {
                BulletinFactory.m1245of((FrameLayout) ((BottomSheet) TranslateAlert2.this).containerView, ((BottomSheet) TranslateAlert2.this).resourcesProvider).createCopyBulletin(LocaleController.getString(C2888R.string.TextCopied)).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            openLanguagesSelect();
        }

        public void openLanguagesSelect() {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext()) { // from class: org.telegram.ui.Components.TranslateAlert2.HeaderView.4
                @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.ActionBarPopupWindowLayout, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min((int) (AndroidUtilities.displaySize.y * 0.33f), View.MeasureSpec.getSize(i2)), TLObject.FLAG_30));
                }
            };
            Drawable drawableMutate = ContextCompat.getDrawable(getContext(), C2888R.drawable.popup_fixed_alert).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(TranslateAlert2.this.getThemedColor(Theme.key_actionBarDefaultSubmenuBackground), PorterDuff.Mode.MULTIPLY));
            actionBarPopupWindowLayout.setBackground(drawableMutate);
            final Runnable[] runnableArr = new Runnable[1];
            ArrayList arrayList = new ArrayList(TranslatorUtils.getCurrentTargetLanguages());
            Collection.EL.removeIf(arrayList, new Predicate() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda3
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate$CC.$default$and(this, predicate);
                }

                public /* synthetic */ Predicate negate() {
                    return Predicate$CC.$default$negate(this);
                }

                /* JADX INFO: renamed from: or */
                public /* synthetic */ Predicate m1275or(Predicate predicate) {
                    return Predicate$CC.$default$or(this, predicate);
                }

                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$openLanguagesSelect$3((TranslateController.Language) obj);
                }
            });
            boolean z = true;
            int i = 0;
            while (i < arrayList.size()) {
                final TranslateController.Language language = (TranslateController.Language) arrayList.get(i);
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), 2, z, i == arrayList.size() - 1, ((BottomSheet) TranslateAlert2.this).resourcesProvider);
                actionBarMenuSubItem.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(language.code)));
                actionBarMenuSubItem.setChecked(TextUtils.equals(TranslateAlert2.this.toLanguage, language.code));
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$openLanguagesSelect$4(runnableArr, language, view);
                    }
                });
                actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
                i++;
                z = false;
            }
            final ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
            runnableArr[0] = new Runnable() { // from class: org.telegram.ui.Components.TranslateAlert2$HeaderView$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    actionBarPopupWindow.dismiss();
                }
            };
            actionBarPopupWindow.setPauseNotifications(true);
            actionBarPopupWindow.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
            actionBarPopupWindow.setOutsideTouchable(true);
            actionBarPopupWindow.setClippingEnabled(true);
            actionBarPopupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
            actionBarPopupWindow.setFocusable(true);
            int[] iArr = new int[2];
            this.toLanguageTextView.getLocationInWindow(iArr);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
            int measuredHeight = actionBarPopupWindowLayout.getMeasuredHeight();
            int i2 = iArr[1];
            actionBarPopupWindow.showAtLocation(((BottomSheet) TranslateAlert2.this).containerView, 51, iArr[0] - AndroidUtilities.m1124dp(8.0f), ((float) i2) > (((float) AndroidUtilities.displaySize.y) * 0.9f) - ((float) measuredHeight) ? (i2 - measuredHeight) + AndroidUtilities.m1124dp(8.0f) : (i2 + this.toLanguageTextView.getMeasuredHeight()) - AndroidUtilities.m1124dp(8.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$openLanguagesSelect$3(TranslateController.Language language) {
            return language == null || TextUtils.isEmpty(language.code) || TextUtils.equals(language.code, TranslateAlert2.this.fromLanguage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openLanguagesSelect$4(Runnable[] runnableArr, TranslateController.Language language, View view) {
            Runnable runnable = runnableArr[0];
            if (runnable != null) {
                runnable.run();
            }
            if (TextUtils.equals(TranslateAlert2.this.toLanguage, language.code)) {
                return;
            }
            if (TranslateAlert2.this.adapter.mMainView == TranslateAlert2.this.textViewContainer) {
                TranslateAlert2 translateAlert2 = TranslateAlert2.this;
                translateAlert2.prevToLanguage = translateAlert2.toLanguage;
            }
            AnimatedTextView animatedTextView = this.toLanguageTextView;
            TranslateAlert2 translateAlert22 = TranslateAlert2.this;
            String str = language.code;
            translateAlert22.toLanguage = str;
            animatedTextView.setText(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(str)));
            TranslateAlert2.this.adapter.updateMainView(TranslateAlert2.this.loadingTextView);
            TranslateAlert2.setToLanguage(language.code);
            TranslateAlert2.this.mainButton.setLoading(true);
            AndroidUtilities.updateViewVisibilityAnimated(TranslateAlert2.this.headerView.copyButton, false, 0.5f, true);
            TranslateAlert2.this.translate();
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            float fClamp = MathUtils.clamp((f - AndroidUtilities.statusBarHeight) / AndroidUtilities.m1124dp(64.0f), 0.0f, 1.0f);
            if (!TranslateAlert2.this.hasEnoughHeight()) {
                fClamp = 1.0f;
            }
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(fClamp);
            this.titleTextView.setScaleX(AndroidUtilities.lerp(0.85f, 1.0f, interpolation));
            this.titleTextView.setScaleY(AndroidUtilities.lerp(0.85f, 1.0f, interpolation));
            this.titleTextView.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(-12.0f), 0.0f, interpolation));
            if (!LocaleController.isRTL) {
                this.titleTextView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(50.0f), 0.0f, interpolation));
                this.subtitleView.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(50.0f), 0.0f, interpolation));
            }
            this.subtitleView.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(-22.0f), 0.0f, interpolation));
            this.backButton.setTranslationX(AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(-25.0f), interpolation));
            float f2 = 1.0f - interpolation;
            this.backButton.setAlpha(f2);
            this.copyButton.setTranslationX(AndroidUtilities.lerp(AndroidUtilities.dpf2(14.0f), AndroidUtilities.dpf2(8.0f), interpolation));
            this.copyButton.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dpf2(0.0f), AndroidUtilities.dpf2(16.0f), interpolation));
            this.copyButton.setColorFilter(ColorUtils.blendARGB(TranslateAlert2.this.getThemedColor(Theme.key_dialogTextBlack), TranslateAlert2.this.getThemedColor(Theme.key_player_actionBarSubtitle), interpolation), PorterDuff.Mode.MULTIPLY);
            this.shadow.setTranslationY(AndroidUtilities.lerp(0.0f, AndroidUtilities.dpf2(22.0f), interpolation));
            this.shadow.setAlpha(f2);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(78.0f), TLObject.FLAG_30));
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private class ContainerView extends FrameLayout {
        private Paint bgPaint;
        private Path bgPath;
        private Boolean lightStatusBarFull;

        public ContainerView(Context context) {
            super(context);
            this.bgPath = new Path();
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            paint.setColor(TranslateAlert2.this.getThemedColor(Theme.key_dialogBackground));
            Theme.applyDefaultShadow(this.bgPaint);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float sheetTop = TranslateAlert2.this.getSheetTop();
            float fLerp = AndroidUtilities.lerp(0, AndroidUtilities.m1124dp(12.0f), MathUtils.clamp(sheetTop / AndroidUtilities.dpf2(24.0f), 0.0f, 1.0f));
            TranslateAlert2.this.headerView.setTranslationY(Math.max(AndroidUtilities.statusBarHeight, sheetTop));
            updateLightStatusBar(sheetTop <= ((float) AndroidUtilities.statusBarHeight) / 2.0f);
            TranslateAlert2.this.topBulletinContainer.setTranslationY(((-r2.getTop()) - TranslateAlert2.this.topBulletinContainer.getHeight()) + getTranslationY() + Math.max(AndroidUtilities.statusBarHeight + AndroidUtilities.m1124dp(56.0f) + TranslateAlert2.this.topBulletinContainer.getHeight(), sheetTop));
            this.bgPath.rewind();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, sheetTop, getWidth(), getHeight() + fLerp);
            this.bgPath.addRoundRect(rectF, fLerp, fLerp, Path.Direction.CW);
            canvas.drawPath(this.bgPath, this.bgPaint);
            super.dispatchDraw(canvas);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            TranslateAlert2.this.topBulletinContainer.setTranslationY(((-r0.getTop()) - TranslateAlert2.this.topBulletinContainer.getHeight()) + f + Math.max(AndroidUtilities.statusBarHeight + AndroidUtilities.m1124dp(56.0f) + TranslateAlert2.this.topBulletinContainer.getHeight(), TranslateAlert2.this.getSheetTop()));
        }

        private void updateLightStatusBar(boolean z) {
            int iBlendOver;
            Boolean bool = this.lightStatusBarFull;
            if (bool == null || bool.booleanValue() != z) {
                this.lightStatusBarFull = Boolean.valueOf(z);
                Window window = TranslateAlert2.this.getWindow();
                if (z) {
                    iBlendOver = TranslateAlert2.this.getThemedColor(Theme.key_dialogBackground);
                } else {
                    iBlendOver = Theme.blendOver(TranslateAlert2.this.getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                }
                AndroidUtilities.setLightStatusBar(window, AndroidUtilities.computePerceivedBrightness(iBlendOver) > 0.721f);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.TranslateAlert2.ContainerView.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean bottomOffsetAnimated() {
                    return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    return AndroidUtilities.m1124dp(80.0f);
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
        }
    }

    public static String capitalFirst(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    public static CharSequence capitalFirst(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() <= 0) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilderValueOf = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : SpannableStringBuilder.valueOf(charSequence);
        spannableStringBuilderValueOf.replace(0, 1, (CharSequence) spannableStringBuilderValueOf.toString().substring(0, 1).toUpperCase());
        return spannableStringBuilderValueOf;
    }

    public static String languageName(String str) {
        return languageName(str, null);
    }

    public static String languageName(String str, boolean[] zArr) {
        if (str == null || str.equals(TranslateController.UNKNOWN_LANGUAGE) || str.equals("auto")) {
            return null;
        }
        String str2 = str.split("_")[0];
        if ("nb".equals(str2)) {
            str2 = "no";
        }
        if (zArr != null) {
            String string = LocaleController.getString("TranslateLanguage" + str2.toUpperCase());
            boolean z = (string == null || string.startsWith("LOC_ERR")) ? false : true;
            zArr[0] = z;
            if (z) {
                return string;
            }
        }
        String strSystemLanguageName = systemLanguageName(str);
        if (strSystemLanguageName == null) {
            strSystemLanguageName = systemLanguageName(str2);
        }
        if (strSystemLanguageName != null) {
            return strSystemLanguageName;
        }
        if ("no".equals(str)) {
            str = "nb";
        }
        LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        LocaleController.LocaleInfo builtinLanguageByPlural = LocaleController.getInstance().getBuiltinLanguageByPlural(str);
        if (builtinLanguageByPlural == null) {
            return null;
        }
        if (currentLocaleInfo != null && "en".equals(currentLocaleInfo.pluralLangCode)) {
            return builtinLanguageByPlural.nameEnglish;
        }
        return builtinLanguageByPlural.name;
    }

    public static String languageNameCapital(String str) {
        String strLanguageName = languageName(str);
        if (strLanguageName == null) {
            return null;
        }
        return strLanguageName.substring(0, 1).toUpperCase() + strLanguageName.substring(1);
    }

    public static String systemLanguageName(String str) {
        return systemLanguageName(str, false);
    }

    public static String systemLanguageName(String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (localesByCode == null) {
            localesByCode = new HashMap();
            try {
                Locale[] availableLocales = Locale.getAvailableLocales();
                for (int i = 0; i < availableLocales.length; i++) {
                    localesByCode.put(availableLocales[i].getLanguage(), availableLocales[i]);
                    String country = availableLocales[i].getCountry();
                    if (country != null && country.length() > 0) {
                        localesByCode.put(availableLocales[i].getLanguage() + "-" + country.toLowerCase(), availableLocales[i]);
                    }
                }
            } catch (Exception unused) {
            }
        }
        String lowerCase = str.replace("_", "-").toLowerCase();
        try {
            Locale locale = (Locale) localesByCode.get(lowerCase);
            if (locale != null) {
                String displayLanguage = locale.getDisplayLanguage(z ? locale : Locale.getDefault());
                if (!lowerCase.contains("-")) {
                    return displayLanguage;
                }
                String displayCountry = locale.getDisplayCountry(z ? locale : Locale.getDefault());
                if (TextUtils.isEmpty(displayCountry)) {
                    return displayLanguage;
                }
                return displayLanguage + " (" + displayCountry + ")";
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.translationModelDownloaded);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.translationModelDownloading);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.translationModelDownloaded);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.translationModelDownloading);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            this.loadingTextView.invalidate();
            this.textView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtonShadow(boolean z) {
        Boolean bool = this.buttonShadowShown;
        if (bool == null || bool.booleanValue() != z) {
            this.buttonShadowShown = Boolean.valueOf(z);
        }
    }

    public static TranslateAlert2 showAlert(Context context, BaseFragment baseFragment, int i, TLRPC.InputPeer inputPeer, int i2, boolean z, String str, String str2, CharSequence charSequence, ArrayList arrayList, boolean z2, Utilities.CallbackReturn callbackReturn, final Runnable runnable) {
        TranslateAlert2 translateAlert2 = new TranslateAlert2(context, str, str2, charSequence, arrayList, inputPeer, i2, z, null) { // from class: org.telegram.ui.Components.TranslateAlert2.9
            @Override // org.telegram.p029ui.Components.TranslateAlert2, org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
            /* JADX INFO: renamed from: dismiss */
            public void lambda$new$0() {
                super.lambda$new$0();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        translateAlert2.setNoforwards(z2);
        translateAlert2.setFragment(baseFragment);
        translateAlert2.setOnLinkPress(callbackReturn);
        if (baseFragment != null) {
            if (baseFragment.getParentActivity() != null) {
                baseFragment.showDialog(translateAlert2);
            }
            return translateAlert2;
        }
        translateAlert2.show();
        return translateAlert2;
    }

    public static TranslateAlert2 showAlert(Context context, BaseFragment baseFragment, int i, String str, String str2, CharSequence charSequence, ArrayList arrayList, boolean z, Utilities.CallbackReturn callbackReturn, final Runnable runnable) {
        if (context == null) {
            return null;
        }
        TranslateAlert2 translateAlert2 = new TranslateAlert2(context, str, str2, charSequence, arrayList, null) { // from class: org.telegram.ui.Components.TranslateAlert2.10
            @Override // org.telegram.p029ui.Components.TranslateAlert2, org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
            /* JADX INFO: renamed from: dismiss */
            public void lambda$new$0() {
                super.lambda$new$0();
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        translateAlert2.setNoforwards(z);
        translateAlert2.setFragment(baseFragment);
        translateAlert2.setOnLinkPress(callbackReturn);
        if (baseFragment != null) {
            if (baseFragment.getParentActivity() != null) {
                baseFragment.showDialog(translateAlert2);
            }
            return translateAlert2;
        }
        translateAlert2.show();
        return translateAlert2;
    }

    public static String getToLanguage() {
        return TranslatorUtils.getResolvedTargetLanguageCode();
    }

    public static void setToLanguage(String str) {
        TranslatorUtils.setTargetLanguage(str);
    }
}
