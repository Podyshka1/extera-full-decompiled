package com.exteragram.messenger.plugins.utils;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.MessageObject;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_bots;

/* JADX INFO: loaded from: classes.dex */
public class MenuContextBuilder {
    private final Map<String, Object> contextData = new HashMap();

    private MenuContextBuilder() {
    }

    public static MenuContextBuilder create() {
        return new MenuContextBuilder();
    }

    public static MenuContextBuilder from(BaseFragment baseFragment) {
        if (baseFragment == null) {
            return create();
        }
        return create().withCustom(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165434398373083L), baseFragment).withAccount(baseFragment.getCurrentAccount()).withContext(baseFragment.getParentActivity());
    }

    public MenuContextBuilder withAccount(int i) {
        this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165473053078747L), Integer.valueOf(i));
        return this;
    }

    public MenuContextBuilder withContext(Context context) {
        if (context != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165507412817115L), context);
        }
        return this;
    }

    public MenuContextBuilder withEncryptedChat(TLRPC.EncryptedChat encryptedChat) {
        if (encryptedChat != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165541772555483L), encryptedChat);
        }
        return this;
    }

    public MenuContextBuilder withChat(TLRPC.Chat chat) {
        if (chat != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165601902097627L), chat);
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165623376934107L), Long.valueOf(chat.f1660id));
        }
        return this;
    }

    public MenuContextBuilder withChatFull(TLRPC.ChatFull chatFull) {
        if (chatFull != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165653441705179L), chatFull);
        }
        return this;
    }

    public MenuContextBuilder withUser(TLRPC.User user) {
        if (user != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165692096410843L), user);
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165713571247323L), Long.valueOf(user.f1825id));
        }
        return this;
    }

    public MenuContextBuilder withUserFull(TLRPC.UserFull userFull) {
        if (userFull != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165743636018395L), userFull);
        }
        return this;
    }

    public MenuContextBuilder withBotInfo(TL_bots.BotInfo botInfo) {
        if (botInfo != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165782290724059L), botInfo);
        }
        return this;
    }

    public MenuContextBuilder withDialogId(long j) {
        this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165816650462427L), Long.valueOf(j));
        return this;
    }

    public MenuContextBuilder withMessage(MessageObject messageObject) {
        if (messageObject != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165859600135387L), messageObject);
        }
        return this;
    }

    public MenuContextBuilder withGroupedMessage(MessageObject.GroupedMessages groupedMessages) {
        if (groupedMessages != null) {
            this.contextData.put(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165893959873755L), groupedMessages);
        }
        return this;
    }

    public MenuContextBuilder withCustom(String str, Object obj) {
        if (str != null && obj != null) {
            this.contextData.put(str, obj);
        }
        return this;
    }

    public Map<String, Object> build() {
        return this.contextData;
    }
}
