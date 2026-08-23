package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChannelMonetizationLayout;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.RestrictedLanguagesSelectActivity;
import org.telegram.p029ui.Stars.StarGiftSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.Stories.recorder.HintView2;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TranslateButton extends FrameLayout {
    private boolean[] accusative;
    private final int currentAccount;
    private final long dialogId;
    private final BaseFragment fragment;
    private ImageView menuView;
    private Theme.ResourcesProvider resourcesProvider;
    private AnimatedTextView textView;
    private final Drawable translateDrawable;
    public final SpannableString translateIcon;

    protected abstract void onButtonClick();

    protected abstract void onCloseClick();

    public TranslateButton(Context context, ChatActivity chatActivity, Theme.ResourcesProvider resourcesProvider) {
        this(context, chatActivity.getCurrentAccount(), chatActivity.getDialogId(), chatActivity, resourcesProvider);
    }

    public TranslateButton(Context context, final int i, final long j, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.accusative = new boolean[1];
        this.currentAccount = i;
        this.dialogId = j;
        this.fragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, false) { // from class: org.telegram.ui.Components.TranslateButton.1
            @Override // org.telegram.p029ui.Components.AnimatedTextView, android.view.View
            protected void onDraw(Canvas canvas) {
                canvas.save();
                canvas.translate(AndroidUtilities.m1124dp(17.0f), 0.0f);
                super.onDraw(canvas);
                canvas.restore();
            }
        };
        this.textView = animatedTextView;
        animatedTextView.setAnimationProperties(0.3f, 0L, 450L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.textView.setTextSize(AndroidUtilities.m1124dp(14.0f));
        this.textView.setTypeface(AndroidUtilities.bold());
        this.textView.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
        this.textView.setGravity(1);
        this.textView.setIgnoreRTL(!LocaleController.isRTL);
        AnimatedTextView animatedTextView2 = this.textView;
        animatedTextView2.adaptWidth = false;
        animatedTextView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        addView(this.textView, LayoutHelper.createFrame(-1, -1.0f, 3, 0.0f, 0.0f, 34.0f, 0.0f));
        Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.msg_translate).mutate();
        this.translateDrawable = drawableMutate;
        drawableMutate.setBounds(0, AndroidUtilities.m1124dp(-6.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(14.0f));
        SpannableString spannableString = new SpannableString("x");
        this.translateIcon = spannableString;
        spannableString.setSpan(new ImageSpan(drawableMutate, 0), 0, 1, 33);
        ImageView imageView = new ImageView(context);
        this.menuView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.menuView.setImageResource(C2888R.drawable.msg_mini_customize);
        this.menuView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(i, j, view);
            }
        });
        addView(this.menuView, LayoutHelper.createFrame(30, 30.0f, 21, 0.0f, 0.0f, 7.0f, 0.0f));
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, long j, View view) {
        TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
        if (UserConfig.getInstance(i).isPremium() || (chat != null && chat.autotranslation)) {
            onMenuClick();
        } else {
            onCloseClick();
        }
    }

    public void updateColors() {
        AnimatedTextView animatedTextView = this.textView;
        int i = Theme.key_chat_addContact;
        animatedTextView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.textView.setBackground(Theme.createInsetRoundRectDrawable(Theme.getColor(i, this.resourcesProvider) & 436207615, AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(3.0f)));
        this.menuView.setBackground(Theme.createCircleSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 0, 0));
        ImageView imageView = this.menuView;
        int color = Theme.getColor(Theme.key_chat_topPanelClose, this.resourcesProvider);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
        this.translateDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, this.resourcesProvider), mode));
    }

    public void setLeftMargin(float f) {
        this.textView.setTranslationX(f / 2.0f);
    }

    protected void onMenuClick() {
        String string;
        final TranslateController translateController = MessagesController.getInstance(this.currentAccount).getTranslateController();
        final ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext(), C2888R.drawable.popup_fixed_alert4, this.resourcesProvider, 1);
        final ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, this.resourcesProvider));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        ScrollView scrollView = new ScrollView(getContext()) { // from class: org.telegram.ui.Components.TranslateButton.2
            AnimatedFloat alphaFloat = new AnimatedFloat(this, 350, CubicBezierInterpolator.EASE_OUT_QUINT);
            Drawable topShadowDrawable;
            private boolean wasCanScrollVertically;

            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
                super.onNestedScroll(view, i, i2, i3, i4);
                boolean zCanScrollVertically = canScrollVertically(-1);
                if (this.wasCanScrollVertically != zCanScrollVertically) {
                    invalidate();
                    this.wasCanScrollVertically = zCanScrollVertically;
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                float f = this.alphaFloat.set(canScrollVertically(-1) ? 1.0f : 0.0f) * 0.5f;
                if (f > 0.0f) {
                    if (this.topShadowDrawable == null) {
                        this.topShadowDrawable = getContext().getResources().getDrawable(C2888R.drawable.header_shadow);
                    }
                    this.topShadowDrawable.setBounds(0, getScrollY(), getWidth(), getScrollY() + this.topShadowDrawable.getIntrinsicHeight());
                    this.topShadowDrawable.setAlpha((int) (f * 255.0f));
                    this.topShadowDrawable.draw(canvas);
                }
            }
        };
        final LinearLayout linearLayout2 = new LinearLayout(getContext());
        scrollView.addView(linearLayout2);
        linearLayout2.setOrientation(1);
        actionBarPopupWindowLayout.swipeBackGravityRight = true;
        final int iAddViewToSwipeBack = actionBarPopupWindowLayout.addViewToSwipeBack(linearLayout);
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, false, this.resourcesProvider);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.TranslateTo), C2888R.drawable.msg_translate);
        actionBarMenuSubItem.setSubtext(TranslateAlert2.capitalFirst(TranslateAlert2.languageName(translateController.getDialogTranslateTo(this.dialogId))));
        actionBarMenuSubItem.setItemHeight(56);
        actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), true, false, this.resourcesProvider);
        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2888R.string.Back), C2888R.drawable.ic_ab_back);
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                actionBarPopupWindowLayout.getSwipeBack().closeForeground();
            }
        });
        linearLayout.addView(actionBarMenuSubItem2);
        linearLayout.addView(scrollView, LayoutHelper.createLinear(-1, 420));
        final String dialogDetectedLanguage = translateController.getDialogDetectedLanguage(this.dialogId);
        TranslateAlert2.languageName(dialogDetectedLanguage);
        final String strLanguageName = TranslateAlert2.languageName(dialogDetectedLanguage, this.accusative);
        final String dialogTranslateTo = translateController.getDialogTranslateTo(this.dialogId);
        final ArrayList<TranslateController.Language> suggestedLanguages = TranslateController.getSuggestedLanguages(dialogTranslateTo);
        final ArrayList<TranslateController.Language> languages = TranslateController.getLanguages();
        linearLayout2.addView(new ActionBarPopupWindow.GapView(getContext(), this.resourcesProvider), LayoutHelper.createLinear(-1, 8));
        final boolean[] zArr = new boolean[1];
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuClick$5(zArr, dialogTranslateTo, linearLayout2, suggestedLanguages, dialogDetectedLanguage, translateController, actionBarPopupWindow, languages);
            }
        };
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TranslateButton.$r8$lambda$esQe9JtamP7M9KjqxifYQ15wmgQ(runnable, actionBarPopupWindowLayout, iAddViewToSwipeBack, view);
            }
        });
        if (UserConfig.getInstance(this.currentAccount).isPremium() && strLanguageName != null) {
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getContext(), false, false, this.resourcesProvider);
            if (this.accusative[0]) {
                string = LocaleController.formatString(C2888R.string.DoNotTranslateLanguage, strLanguageName);
            } else {
                string = LocaleController.formatString(C2888R.string.DoNotTranslateLanguageOther, strLanguageName);
            }
            actionBarMenuSubItem3.setMultiline(false);
            actionBarMenuSubItem3.setTextAndIcon(HintView2.cutInFancyHalfText(string, actionBarMenuSubItem3.getTextView().getPaint()), C2888R.drawable.msg_block2);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$onMenuClick$8(dialogDetectedLanguage, translateController, strLanguageName, actionBarPopupWindow, view);
                }
            });
            actionBarPopupWindowLayout.addView(actionBarMenuSubItem3);
        }
        ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(getContext(), false, false, this.resourcesProvider);
        actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString(C2888R.string.Hide), C2888R.drawable.msg_cancel);
        actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onMenuClick$10(translateController, actionBarPopupWindow, view);
            }
        });
        actionBarPopupWindowLayout.addView(actionBarMenuSubItem4);
        boolean z = ExteraConfig.translationProvider == 0;
        if (z) {
            actionBarPopupWindowLayout.addView(new ActionBarPopupWindow.GapView(getContext(), this.resourcesProvider), LayoutHelper.createLinear(-1, 8));
        }
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext());
        linksTextView.setPadding(AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(8.33f), AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(8.33f));
        linksTextView.setDisablePaddingsOffsetY(true);
        int i = Theme.key_dialogTextBlack;
        linksTextView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourcesProvider));
        linksTextView.setEmojiColor(Theme.getColor(i, this.resourcesProvider));
        CharSequence charSequenceConcat = TextUtils.concat(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.CocoonPoweredBy)), " ", AndroidUtilities.premiumText(LocaleController.getString(C2888R.string.CocoonPoweredByLink), new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuClick$11(actionBarPopupWindow);
            }
        }));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("🥚");
        spannableStringBuilder.setSpan(new AnimatedEmojiSpan(5197252827247841976L, linksTextView.getPaint().getFontMetricsInt()), 0, spannableStringBuilder.length(), 33);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
        spannableStringBuilder2.append((CharSequence) " ");
        linksTextView.setText(HintView2.cutInFancyHalfText(AndroidUtilities.replaceCharSequence("🥚", AndroidUtilities.replaceCharSequence("🥚 ", charSequenceConcat, spannableStringBuilder2), spannableStringBuilder), linksTextView.getPaint()));
        linksTextView.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 0, 12));
        linksTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onMenuClick$12(actionBarPopupWindow, view);
            }
        });
        if (z) {
            actionBarPopupWindowLayout.addView(linksTextView);
        }
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C2888R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        ImageView imageView = this.menuView;
        actionBarPopupWindow.showAsDropDown(imageView, 0, (-imageView.getMeasuredHeight()) - AndroidUtilities.m1124dp(8.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$5(boolean[] zArr, String str, LinearLayout linearLayout, ArrayList arrayList, String str2, final TranslateController translateController, final ActionBarPopupWindow actionBarPopupWindow, ArrayList arrayList2) {
        String strCapitalFirst;
        boolean z = false;
        if (zArr[0]) {
            return;
        }
        if (str != null && (strCapitalFirst = TranslateAlert2.capitalFirst(TranslateAlert2.languageName(str))) != null) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), 2, false, false, this.resourcesProvider);
            actionBarMenuSubItem.setChecked(true);
            actionBarMenuSubItem.setText(strCapitalFirst);
            linearLayout.addView(actionBarMenuSubItem);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TranslateController.Language language = (TranslateController.Language) obj;
            final String str3 = language.code;
            if (!TextUtils.equals(str3, str2)) {
                ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), 2, false, false, this.resourcesProvider);
                boolean z2 = str != null && str.equals(str3);
                actionBarMenuSubItem2.setChecked(z2);
                actionBarMenuSubItem2.setText(language.displayName);
                if (!z2) {
                    actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onMenuClick$3(translateController, str3, actionBarPopupWindow, view);
                        }
                    });
                }
                linearLayout.addView(actionBarMenuSubItem2);
            }
        }
        linearLayout.addView(new ActionBarPopupWindow.GapView(getContext(), this.resourcesProvider), LayoutHelper.createLinear(-1, 8));
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            TranslateController.Language language2 = (TranslateController.Language) obj2;
            final String str4 = language2.code;
            if (!TextUtils.equals(str4, str2)) {
                boolean z3 = (str == null || !str.equals(str4)) ? z : true;
                boolean z4 = z;
                ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getContext(), 2, false, false, this.resourcesProvider);
                actionBarMenuSubItem3.setChecked(z3);
                actionBarMenuSubItem3.setText(language2.displayName);
                if (!z3) {
                    actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onMenuClick$4(translateController, str4, actionBarPopupWindow, view);
                        }
                    });
                }
                linearLayout.addView(actionBarMenuSubItem3);
                z = z4;
            }
        }
        zArr[z ? 1 : 0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$3(TranslateController translateController, String str, ActionBarPopupWindow actionBarPopupWindow, View view) {
        translateController.setDialogTranslateTo(this.dialogId, str);
        actionBarPopupWindow.dismiss();
        updateText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$4(TranslateController translateController, String str, ActionBarPopupWindow actionBarPopupWindow, View view) {
        translateController.setDialogTranslateTo(this.dialogId, str);
        actionBarPopupWindow.dismiss();
        updateText();
    }

    public static /* synthetic */ void $r8$lambda$esQe9JtamP7M9KjqxifYQ15wmgQ(Runnable runnable, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, int i, View view) {
        runnable.run();
        actionBarPopupWindowLayout.getSwipeBack().openForeground(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$8(String str, TranslateController translateController, String str2, ActionBarPopupWindow actionBarPopupWindow, View view) {
        String string;
        RestrictedLanguagesSelectActivity.toggleLanguage(str, true);
        translateController.checkRestrictedLanguagesUpdate();
        translateController.setHideTranslateDialog(this.dialogId, true);
        if (this.accusative[0]) {
            string = LocaleController.formatString(C2888R.string.AddedToDoNotTranslate, str2);
        } else {
            string = LocaleController.formatString(C2888R.string.AddedToDoNotTranslateOther, str2);
        }
        BulletinFactory.m1246of(this.fragment).createSimpleBulletin(C2888R.raw.msg_translate, TranslateAlert2.capitalFirst(AndroidUtilities.replaceTags(string)), LocaleController.getString(C2888R.string.Settings), new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuClick$7();
            }
        }).show();
        actionBarPopupWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$7() {
        this.fragment.presentFragment(new RestrictedLanguagesSelectActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$10(final TranslateController translateController, ActionBarPopupWindow actionBarPopupWindow, View view) {
        String string;
        translateController.setHideTranslateDialog(this.dialogId, true);
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        if (chat != null && ChatObject.isChannelAndNotMegaGroup(chat)) {
            string = LocaleController.getString(C2888R.string.TranslationBarHiddenForChannel);
        } else if (chat != null) {
            string = LocaleController.getString(C2888R.string.TranslationBarHiddenForGroup);
        } else {
            string = LocaleController.getString(C2888R.string.TranslationBarHiddenForChat);
        }
        BulletinFactory.m1246of(this.fragment).createSimpleBulletin(C2888R.raw.msg_translate, AndroidUtilities.replaceTags(string), LocaleController.getString(C2888R.string.UndoNoCaps), new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onMenuClick$9(translateController);
            }
        }).show();
        actionBarPopupWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$9(TranslateController translateController) {
        translateController.setHideTranslateDialog(this.dialogId, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$11(ActionBarPopupWindow actionBarPopupWindow) {
        actionBarPopupWindow.dismiss();
        showCocoonAlert(getContext(), this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMenuClick$12(ActionBarPopupWindow actionBarPopupWindow, View view) {
        actionBarPopupWindow.dismiss();
        showCocoonAlert(getContext(), this.resourcesProvider);
    }

    public void updateText() {
        String string;
        TranslateController translateController = MessagesController.getInstance(this.currentAccount).getTranslateController();
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        if (translateController.isTranslatingDialog(this.dialogId)) {
            String strLanguageName = TranslateAlert2.languageName(translateController.getDialogDetectedLanguage(this.dialogId));
            if (!TextUtils.isEmpty(strLanguageName)) {
                this.textView.setText(TextUtils.concat(this.translateIcon, " ", LocaleController.formatString(C2888R.string.ShowOriginalButtonLanguage, strLanguageName)));
            } else {
                this.textView.setText(TextUtils.concat(this.translateIcon, " ", LocaleController.getString(C2888R.string.ShowOriginalButton)));
            }
        } else {
            String dialogTranslateTo = translateController.getDialogTranslateTo(this.dialogId);
            if (dialogTranslateTo == null) {
                dialogTranslateTo = "en";
            }
            String strLanguageName2 = TranslateAlert2.languageName(dialogTranslateTo, this.accusative);
            if (this.accusative[0]) {
                string = LocaleController.formatString(C2888R.string.TranslateToButton, strLanguageName2);
            } else {
                string = LocaleController.formatString(C2888R.string.TranslateToButtonOther, strLanguageName2);
            }
            this.textView.setText(TextUtils.concat(this.translateIcon, " ", string));
        }
        this.menuView.setImageResource((UserConfig.getInstance(this.currentAccount).isPremium() || (chat != null && chat.autotranslation)) ? C2888R.drawable.msg_mini_customize : C2888R.drawable.msg_close);
    }

    public static void showCocoonAlert(final Context context, Theme.ResourcesProvider resourcesProvider) {
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        builder.setApplyBottomPadding(false);
        builder.setApplyTopPadding(false);
        final BottomSheet[] bottomSheetArr = new BottomSheet[1];
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setGradientType(1);
        gradientDrawable.setColors(new int[]{-15982491, -16379606});
        gradientDrawable.setGradientRadius(AndroidUtilities.m1124dp(150.0f));
        float fM1124dp = AndroidUtilities.m1124dp(12.0f);
        gradientDrawable.setCornerRadii(new float[]{fM1124dp, fM1124dp, fM1124dp, fM1124dp, 0.0f, 0.0f, 0.0f, 0.0f});
        frameLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        frameLayout.addView(linearLayout2, LayoutHelper.createFrame(-1, -1, 119));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageResource(C2888R.drawable.cocoon_logo);
        linearLayout2.addView(imageView, LayoutHelper.createLinear(132, 132, 49, 0, 33, 0, 0));
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageResource(C2888R.drawable.cocoon_text);
        linearLayout2.addView(imageView2, LayoutHelper.createLinear(-2, -2, 49, 32, 12, 32, 0));
        TextView textView = new TextView(context);
        textView.setTextColor(-4666897);
        textView.setTextSize(1, 13.0f);
        textView.setGravity(17);
        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.CocoonSubtitle));
        TypefaceSpan[] typefaceSpanArr = (TypefaceSpan[]) spannableStringBuilderReplaceTags.getSpans(0, spannableStringBuilderReplaceTags.length(), TypefaceSpan.class);
        for (int i = 0; i < typefaceSpanArr.length; i++) {
            spannableStringBuilderReplaceTags.setSpan(new ForegroundColorSpan(-1), spannableStringBuilderReplaceTags.getSpanStart(typefaceSpanArr[i]), spannableStringBuilderReplaceTags.getSpanEnd(typefaceSpanArr[i]), spannableStringBuilderReplaceTags.getSpanFlags(typefaceSpanArr[i]));
        }
        textView.setText(spannableStringBuilderReplaceTags);
        linearLayout2.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 49, 32.0f, 14.0f, 32.0f, 20.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f));
        linearLayout.addView(new ChannelMonetizationLayout.FeatureCell(context, C2888R.drawable.menu_privacy, LocaleController.getString(C2888R.string.CocoonFeature1Title), AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.CocoonFeature1Text), new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                TranslateButton.$r8$lambda$7IrBAcGxwA9QBQqZsA5EUoMbDQM(bottomSheetArr, context);
            }
        }), resourcesProvider), LayoutHelper.createLinear(-1, -2, 49, 32, 16, 32, 16));
        linearLayout.addView(new ChannelMonetizationLayout.FeatureCell(context, C2888R.drawable.msg_stats, LocaleController.getString(C2888R.string.CocoonFeature2Title), LocaleController.getString(C2888R.string.CocoonFeature2Text), resourcesProvider), LayoutHelper.createLinear(-1, -2, 49, 32, 0, 32, 16));
        linearLayout.addView(new ChannelMonetizationLayout.FeatureCell(context, C2888R.drawable.menu_gift, LocaleController.getString(C2888R.string.CocoonFeature3Title), AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.CocoonFeature3Text), new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                TranslateButton.m12986$r8$lambda$wIFbvScs9SbeMJEoA7JlxUZaR8(bottomSheetArr, context);
            }
        }), resourcesProvider), LayoutHelper.createLinear(-1, -2, 49, 32, 0, 32, 16));
        View view = new View(context);
        view.setBackgroundColor(Theme.getColor(Theme.key_divider, resourcesProvider));
        linearLayout.addView(view, LayoutHelper.createLinear(-1, 1.0f / AndroidUtilities.density, 7, 24, 0, 24, 0));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        linksTextView.setTextSize(1, 12.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView.setGravity(17);
        linksTextView.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.CocoonFooter), new Runnable() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                TranslateButton.$r8$lambda$TD2I6POaZ7CKHW15KPwYGNPXWkY(bottomSheetArr, context);
            }
        }));
        linksTextView.setPadding(0, AndroidUtilities.m1124dp(18.0f), 0, AndroidUtilities.m1124dp(18.0f));
        linksTextView.setDisablePaddingsOffsetY(true);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 7, 32, 0, 32, 0));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(StarGiftSheet.replaceUnderstood(LocaleController.getString(C2888R.string.Understood)));
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TranslateButton$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 16, 0, 16, 16));
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetCreate = builder.create();
        bottomSheetArr[0] = bottomSheetCreate;
        bottomSheetCreate.fixNavigationBar();
        bottomSheetArr[0].show();
    }

    public static /* synthetic */ void $r8$lambda$7IrBAcGxwA9QBQqZsA5EUoMbDQM(BottomSheet[] bottomSheetArr, Context context) {
        bottomSheetArr[0].lambda$new$0();
        Browser.openUrl(context, LocaleController.getString(C2888R.string.CocoonFeature1TextLink));
    }

    /* JADX INFO: renamed from: $r8$lambda$wIFbv-Scs9SbeMJEoA7JlxUZaR8, reason: not valid java name */
    public static /* synthetic */ void m12986$r8$lambda$wIFbvScs9SbeMJEoA7JlxUZaR8(BottomSheet[] bottomSheetArr, Context context) {
        bottomSheetArr[0].lambda$new$0();
        Browser.openUrlInSystemBrowser(context, LocaleController.getString(C2888R.string.CocoonFeature3TextLink));
    }

    public static /* synthetic */ void $r8$lambda$TD2I6POaZ7CKHW15KPwYGNPXWkY(BottomSheet[] bottomSheetArr, Context context) {
        bottomSheetArr[0].lambda$new$0();
        Browser.openUrl(context, LocaleController.getString(C2888R.string.CocoonFooterLink));
    }
}
