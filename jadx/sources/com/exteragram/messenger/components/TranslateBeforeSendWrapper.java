package com.exteragram.messenger.components;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.p017ui.PopupUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TranslateBeforeSendWrapper extends ActionBarMenuSubItem {
    protected abstract void onClick();

    public TranslateBeforeSendWrapper(final Context context, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        super(context, z, z2, resourcesProvider);
        setTextAndIcon(LocaleController.getString(C2888R.string.TranslateTo), C2888R.drawable.msg_translate);
        setSubtext(TranslatorUtils.getSendTargetLanguageTitle());
        setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
        setItemHeight(56);
        setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.TranslateBeforeSendWrapper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.components.TranslateBeforeSendWrapper$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$1(context, view);
            }
        });
        setRightIcon(C2888R.drawable.msg_arrowright);
        getRightIcon().setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.TranslateBeforeSendWrapper$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(context, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(Context context, View view) {
        return showDialog(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Context context, View view) {
        showDialog(context);
    }

    private boolean showDialog(Context context) {
        CharSequence[] targetLanguageTitles = TranslatorUtils.getTargetLanguageTitles();
        CharSequence[] charSequenceArr = new CharSequence[targetLanguageTitles.length];
        System.arraycopy(targetLanguageTitles, 0, charSequenceArr, 0, targetLanguageTitles.length);
        PopupUtils.showDialog(charSequenceArr, LocaleController.getString(C2888R.string.Language), TranslatorUtils.getSendTargetLanguageIndex(), context, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.components.TranslateBeforeSendWrapper$$ExternalSyntheticLambda3
            @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
            public final void onClick(int i) {
                this.f$0.lambda$showDialog$3(i);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$3(int i) {
        String targetLanguageCodeByIndex = TranslatorUtils.getTargetLanguageCodeByIndex(i);
        if (TextUtils.isEmpty(targetLanguageCodeByIndex) || TextUtils.equals(targetLanguageCodeByIndex, "en")) {
            ExteraConfig.editor.remove("targetLangSend").apply();
        } else {
            ExteraConfig.editor.putString("targetLangSend", TranslatorUtils.normalizeLanguageCode(targetLanguageCodeByIndex)).apply();
        }
        setSubtext(TranslatorUtils.getSendTargetLanguageTitle());
    }
}
