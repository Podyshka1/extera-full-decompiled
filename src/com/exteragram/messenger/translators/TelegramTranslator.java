package com.exteragram.messenger.translators;

import com.exteragram.messenger.utils.text.TranslatorUtils;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class TelegramTranslator extends BaseTranslator {
    private static TelegramTranslator instance;

    public static TelegramTranslator getInstance() {
        if (instance == null) {
            instance = new TelegramTranslator();
        }
        return instance;
    }

    @Override // com.exteragram.messenger.translators.BaseTranslator
    public String getDisplayName() {
        return "Telegram";
    }

    @Override // com.exteragram.messenger.translators.BaseTranslator
    public Set getSupportedLanguages() {
        return Collections.EMPTY_SET;
    }

    @Override // com.exteragram.messenger.translators.BaseTranslator
    public void translate(String str, String str2, String str3, TranslatorUtils.TranslateCallback translateCallback) {
        TranslatorUtils.translateWithDefault(str, null, 0, str3, null, translateCallback);
    }
}
