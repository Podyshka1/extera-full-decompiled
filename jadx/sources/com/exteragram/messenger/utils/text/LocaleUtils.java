package com.exteragram.messenger.utils.text;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.p017ui.ColorRectSpan;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LinkifyPort;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.p029ui.Components.URLSpanReplacement;
import org.telegram.p029ui.FilterCreateActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public abstract class LocaleUtils {
    private static final Pattern FILTRATION_PATTERN = Pattern.compile("\\p{Mn}{3,}|[\u202a-\u202e\u2066-\u2069\u200e\u200f\u061c]");
    private static final Pattern MARKDOWN_LINK_PATTERN = Pattern.compile("\\[([^]]+?)]\\(" + LinkifyPort.WEB_URL_REGEX + "\\)");
    private static final Pattern HEX_PATTERN = Pattern.compile("(?<![a-zA-Z0-9])#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})(?![a-zA-Z0-9])");

    public static String getActionBarTitle() {
        return getActionBarTitle(UserConfig.selectedAccount);
    }

    public static String getActionBarTitle(int i) {
        int i2 = ExteraConfig.titleText;
        if (i2 == 0) {
            return LocaleController.getString(C2888R.string.exteraAppName);
        }
        if (i2 == 3) {
            return LocaleController.getString(C2888R.string.FilterChats);
        }
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        return (i2 != 1 || TextUtils.isEmpty(UserObject.getPublicUsername(currentUser))) ? UserObject.getFirstName(currentUser) : UserObject.getPublicUsername(currentUser);
    }

    public static CharSequence formatWithUsernames(CharSequence charSequence) {
        return formatWithUsernames(charSequence, LaunchActivity.getSafeLastFragment());
    }

    public static CharSequence formatWithUsernames(CharSequence charSequence, BaseFragment baseFragment) {
        return formatWithUsernames(charSequence, baseFragment, null);
    }

    public static CharSequence formatWithUsernames(CharSequence charSequence, final BaseFragment baseFragment, final Runnable runnable) {
        int i;
        URLSpan[] uRLSpanArr;
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        int i2 = -1;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (charSequence.charAt(i3) == '@') {
                i2 = i3;
            } else if (i2 != -1 && ((i = i3 + 1) == charSequence.length() || (!Character.isLetterOrDigit(charSequence.charAt(i)) && charSequence.charAt(i) != '_'))) {
                if (i - i2 > 1 && ((uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(i2, i, URLSpan.class)) == null || uRLSpanArr.length <= 0)) {
                    final String string = charSequence.subSequence(i2, i).toString();
                    try {
                        spannableStringBuilder.setSpan(new URLSpanNoUnderline(string) { // from class: com.exteragram.messenger.utils.text.LocaleUtils.1
                            @Override // org.telegram.p029ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                            public void onClick(View view) {
                                Runnable runnable2 = runnable;
                                if (runnable2 != null) {
                                    runnable2.run();
                                }
                                BaseFragment baseFragment2 = baseFragment;
                                if (baseFragment2 == null || baseFragment2.getMessagesController() == null) {
                                    return;
                                }
                                baseFragment.getMessagesController().openByUserName(string.substring(1), baseFragment, 1);
                            }
                        }, i2, i, 33);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
                i2 = -1;
            }
        }
        return spannableStringBuilder;
    }

    public static CharSequence formatWithHtmlURLs(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence;
        }
        SpannableString spannableString = new SpannableString(charSequence);
        URLSpan[] uRLSpanArr = (URLSpan[]) spannableString.getSpans(0, charSequence.length(), URLSpan.class);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannableString);
        for (URLSpan uRLSpan : uRLSpanArr) {
            int spanStart = spannableStringBuilder.getSpanStart(uRLSpan);
            int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan);
            String url = uRLSpan.getURL();
            spannableStringBuilder.removeSpan(uRLSpan);
            spannableStringBuilder.setSpan(new URLSpanNoUnderline(url) { // from class: com.exteragram.messenger.utils.text.LocaleUtils.2
                @Override // org.telegram.p029ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                public void onClick(View view) {
                    super.onClick(view);
                }
            }, spanStart, spanEnd, 33);
        }
        return spannableStringBuilder;
    }

    public static CharSequence formatWithURLs(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        Matcher matcher = LinkifyPort.WEB_URL.matcher(charSequence);
        while (matcher.find()) {
            try {
                spannableStringBuilder.setSpan(new URLSpanNoUnderline(ensureUrlHasHttps(matcher.group(0))) { // from class: com.exteragram.messenger.utils.text.LocaleUtils.3
                    @Override // org.telegram.p029ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
                    public void onClick(View view) {
                        super.onClick(view);
                    }
                }, matcher.start(), matcher.end(), 33);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        return spannableStringBuilder;
    }

    public static CharSequence fullyFormatText(CharSequence charSequence) {
        return fullyFormatText(charSequence, null, null);
    }

    public static CharSequence fullyFormatText(CharSequence charSequence, BaseFragment baseFragment, Runnable runnable) {
        CharSequence withUsernames;
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence;
        }
        CharSequence[] charSequenceArr = {formatWithURLs(charSequence)};
        parseMarkdownLinks(charSequenceArr, runnable);
        CharSequence charSequence2 = charSequenceArr[0];
        if (baseFragment != null && runnable != null) {
            withUsernames = formatWithUsernames(charSequence2, baseFragment, runnable);
        } else {
            withUsernames = formatWithUsernames(charSequence2);
        }
        return AndroidUtilities.replaceTags(withUsernames);
    }

    public static CharSequence fromHtml(String str) {
        Spanned spannedFromHtml;
        if (Build.VERSION.SDK_INT >= 24) {
            spannedFromHtml = Html.fromHtml(str, 0);
        } else {
            spannedFromHtml = Html.fromHtml(str);
        }
        return new SpannableString(spannedFromHtml);
    }

    public static String capitalize(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i == 0) {
                charArray[i] = Character.toUpperCase(charArray[i]);
            } else if (Character.isLetter(charArray[i])) {
                charArray[i] = Character.toLowerCase(charArray[i]);
            }
        }
        return new String(charArray);
    }

    public static String getAppName() {
        try {
            return ApplicationLoader.applicationContext.getString(C2888R.string.exteraAppName);
        } catch (Exception unused) {
            return "exteraGram";
        }
    }

    private static boolean canFilter(CharSequence charSequence) {
        return ExteraConfig.filterZalgo && !TextUtils.isEmpty(charSequence) && FILTRATION_PATTERN.matcher(charSequence).find();
    }

    public static CharSequence filterSpannable(CharSequence charSequence) {
        if (!canFilter(charSequence)) {
            return charSequence;
        }
        if (!(charSequence instanceof Spannable)) {
            return filter(charSequence);
        }
        Spannable spannable = (Spannable) charSequence;
        SpannableString spannableString = new SpannableString(filter(spannable.toString()));
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            int iMin = Math.min(spannable.getSpanStart(obj), spannableString.length());
            int iMin2 = Math.min(spannable.getSpanEnd(obj), spannableString.length());
            int spanFlags = spannable.getSpanFlags(obj);
            if (iMin < 0) {
                iMin = 0;
            }
            if (iMin2 > spannableString.length()) {
                iMin2 = spannableString.length();
            }
            if (iMin > iMin2) {
                iMin = iMin2;
            }
            spannableString.setSpan(obj, iMin, iMin2, spanFlags);
        }
        return spannableString;
    }

    public static String filter(CharSequence charSequence) {
        return filter(charSequence.toString());
    }

    public static String filter(String str) {
        if (!canFilter(str)) {
            return str;
        }
        Matcher matcher = FILTRATION_PATTERN.matcher(str);
        StringBuilder sb = new StringBuilder(str.length());
        int iEnd = 0;
        while (matcher.find()) {
            sb.append((CharSequence) str, iEnd, matcher.start());
            int iEnd2 = matcher.end() - matcher.start();
            for (int i = 0; i < iEnd2; i++) {
                sb.append((char) 8288);
            }
            iEnd = matcher.end();
        }
        sb.append((CharSequence) str, iEnd, str.length());
        return sb.toString();
    }

    public static void parseMarkdownLinks(CharSequence[] charSequenceArr) {
        parseMarkdownLinks(charSequenceArr, null);
    }

    public static void parseMarkdownLinks(CharSequence[] charSequenceArr, final Runnable runnable) {
        CharSequence charSequence;
        if (charSequenceArr == null || charSequenceArr.length == 0 || (charSequence = charSequenceArr[0]) == null) {
            return;
        }
        Spannable spannableNewSpannable = charSequence instanceof Spannable ? (Spannable) charSequence : Spannable.Factory.getInstance().newSpannable(charSequenceArr[0].toString());
        Matcher matcher = MARKDOWN_LINK_PATTERN.matcher(spannableNewSpannable);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (matcher.find()) {
            int iStart = matcher.start(1);
            int iEnd = matcher.end(1);
            if (iStart >= 0 && iEnd >= 0 && iStart <= iEnd && iEnd <= spannableNewSpannable.length()) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(spannableNewSpannable.subSequence(iStart, iEnd));
                spannableStringBuilder.setSpan(new URLSpanReplacement(ensureUrlHasHttps(matcher.group(2))) { // from class: com.exteragram.messenger.utils.text.LocaleUtils.4
                    @Override // org.telegram.p029ui.Components.URLSpanReplacement, android.text.style.URLSpan, android.text.style.ClickableSpan
                    public void onClick(View view) {
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                        super.onClick(view);
                    }
                }, 0, spannableStringBuilder.length(), 33);
                arrayList.add(matcher.group(0));
                arrayList2.add(spannableStringBuilder);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        charSequenceArr[0] = TextUtils.replace(charSequenceArr[0], (String[]) arrayList.toArray(new String[0]), (CharSequence[]) arrayList2.toArray(new CharSequence[0]));
    }

    public static CharSequence applyNewSpan(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.append((CharSequence) "  d");
        FilterCreateActivity.NewSpan newSpan = new FilterCreateActivity.NewSpan(10.0f);
        newSpan.setText("NEW");
        newSpan.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
        newSpan.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
        newSpan.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        spannableStringBuilder.setSpan(newSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    public static String ensureUrlHasHttps(String str) {
        if (str == null) {
            return null;
        }
        if (!LinkifyPort.WEB_URL.matcher(str).matches() || str.startsWith("http://") || str.startsWith("https://") || str.contains("://")) {
            return str;
        }
        return "https://" + str;
    }

    public static boolean parseCustomEmojis(CharSequence charSequence, ArrayList arrayList, long j) {
        TLRPC.TL_messageEntityTextUrl tL_messageEntityTextUrl;
        String str;
        int i;
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList2.get(i3);
            if ((messageEntity instanceof TLRPC.TL_messageEntityTextUrl) && (str = (tL_messageEntityTextUrl = (TLRPC.TL_messageEntityTextUrl) messageEntity).url) != null && str.startsWith("tg://emoji?id=")) {
                try {
                    long j2 = Long.parseLong(tL_messageEntityTextUrl.url.substring(14));
                    int i4 = tL_messageEntityTextUrl.offset;
                    if (i4 >= 0 && (i = tL_messageEntityTextUrl.length) > 0 && i4 + i <= charSequence.length()) {
                        int[] iArr = new int[1];
                        int i5 = tL_messageEntityTextUrl.offset;
                        ArrayList<Emoji.EmojiSpanRange> emojis = Emoji.parseEmojis(charSequence.subSequence(i5, tL_messageEntityTextUrl.length + i5).toString(), iArr);
                        if (iArr[0] > 0 && emojis.size() == 1) {
                            TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = new TLRPC.TL_messageEntityCustomEmoji();
                            tL_messageEntityCustomEmoji.document_id = j2;
                            tL_messageEntityCustomEmoji.offset = tL_messageEntityTextUrl.offset;
                            tL_messageEntityCustomEmoji.length = tL_messageEntityTextUrl.length;
                            tL_messageEntityCustomEmoji.local = true;
                            if (j > 0) {
                                arrayList.set(i3, tL_messageEntityCustomEmoji);
                            } else {
                                arrayList.add(i3 + i2, tL_messageEntityCustomEmoji);
                                i2++;
                            }
                            z = true;
                        }
                    }
                } catch (NumberFormatException e) {
                    FileLog.m1135e("Failed to parse custom emoji id: " + tL_messageEntityTextUrl.url, e);
                }
            }
        }
        return z;
    }

    public static void replaceCustomEmojis(int i, long j, ArrayList arrayList) {
        replaceCustomEmojis(i, j, arrayList, false);
    }

    public static void replaceCustomEmojis(int i, long j, ArrayList arrayList, boolean z) {
        TLRPC.ChatFull chatFull;
        TLRPC.TL_messages_stickerSet groupStickerSetById;
        ArrayList arrayList2;
        if ((!canUseLocalPremiumEmojis(i) && !z) || arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (z || j <= 0 || j != UserConfig.getInstance(i).getClientUserId()) {
            HashSet hashSet = new HashSet();
            if (!z && j < 0 && (chatFull = MessagesController.getInstance(i).getChatFull(-j)) != null && chatFull.emojiset != null && (groupStickerSetById = MediaDataController.getInstance(i).getGroupStickerSetById(chatFull.emojiset)) != null && (arrayList2 = groupStickerSetById.documents) != null) {
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    hashSet.add(Long.valueOf(((TLRPC.Document) obj).f1668id));
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList.get(i3);
                if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                    TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = (TLRPC.TL_messageEntityCustomEmoji) messageEntity;
                    if ((!z || tL_messageEntityCustomEmoji.local) && !hashSet.contains(Long.valueOf(tL_messageEntityCustomEmoji.document_id))) {
                        TLRPC.TL_messageEntityTextUrl tL_messageEntityTextUrl = new TLRPC.TL_messageEntityTextUrl();
                        tL_messageEntityTextUrl.offset = tL_messageEntityCustomEmoji.offset;
                        tL_messageEntityTextUrl.length = tL_messageEntityCustomEmoji.length;
                        tL_messageEntityTextUrl.url = "tg://emoji?id=" + tL_messageEntityCustomEmoji.document_id;
                        arrayList.set(i3, tL_messageEntityTextUrl);
                    }
                }
            }
        }
    }

    public static boolean canUseLocalPremiumEmojis() {
        return canUseLocalPremiumEmojis(UserConfig.selectedAccount);
    }

    public static boolean canUseLocalPremiumEmojis(int i) {
        return RemoteUtils.getBooleanConfigValue("local_premium_emojis", false).booleanValue() && !UserConfig.getInstance(i).isPremium();
    }

    public static Spannable createCopySpan(BaseFragment baseFragment) {
        SpannableString spannableString = new SpannableString(" ");
        Drawable drawableMutate = ContextCompat.getDrawable(baseFragment.getParentActivity(), C2888R.drawable.msg_copy).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_undo_cancelColor, baseFragment.getResourceProvider()), PorterDuff.Mode.SRC_IN));
        drawableMutate.setBounds(0, 0, AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(22.0f));
        spannableString.setSpan(new ImageSpan(drawableMutate, 0), 0, 1, 33);
        return spannableString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.regex.Pattern] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.text.Spannable, android.text.Spanned, java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v5 */
    public static CharSequence insertHexColorsPreview(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && charSequence.toString().contains("#")) {
            charSequence = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
            Matcher matcher = HEX_PATTERN.matcher(charSequence);
            while (matcher.find()) {
                int iStart = matcher.start();
                int iEnd = matcher.end();
                Object[] spans = charSequence.getSpans(iStart, iEnd, Object.class);
                int length = spans.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        Object obj = spans[i];
                        if (!(obj instanceof ColorRectSpan)) {
                            int spanStart = charSequence.getSpanStart(obj);
                            int spanEnd = charSequence.getSpanEnd(obj);
                            if ((spanStart <= iStart || spanStart >= iEnd) && (spanEnd <= iStart || spanEnd >= iEnd)) {
                            }
                        }
                        i++;
                    } else {
                        try {
                            charSequence.setSpan(new ColorRectSpan(Color.parseColor(matcher.group())), iEnd - 1, iEnd, 33);
                            break;
                        } catch (IllegalArgumentException unused) {
                            FileLog.m1134e("Invalid HEX color: " + matcher.group());
                        }
                    }
                }
            }
        }
        return charSequence;
    }
}
