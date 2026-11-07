package com.exteragram.messenger.translator;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.translator.core.BaseTranslator;
import com.exteragram.messenger.translator.core.HttpTranslator;
import com.exteragram.messenger.translator.core.ProviderLimits;
import com.exteragram.messenger.translator.core.TranslationDispatcher;
import com.exteragram.messenger.translator.core.TranslationError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000g\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\b\u0006*\u00012\bÆ\u0002\u0018\u00002\u00020\u0001:\u000256B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J5\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000eJ=\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0015\u0010\u0003J[\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00062\u000e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J%\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010!\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J1\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u00060\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00062\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J7\u0010*\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b*\u0010+JU\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b-\u0010.J/\u00101\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0000¢\u0006\u0004\b/\u00100R\u0014\u00103\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104¨\u00067"}, d2 = {"Lcom/exteragram/messenger/translator/ChatTranslator;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "dialogId", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "texts", "toLang", "Lcom/exteragram/messenger/translator/ChatTranslator$Callback;", com.sun.jna.Callback.METHOD_NAME, _UrlKt.FRAGMENT_ENCODE_SET, "translate", "(JLjava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/translator/ChatTranslator$Callback;)V", "Lcom/exteragram/messenger/translator/core/BaseTranslator;", "current", "(JLjava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/translator/core/BaseTranslator;Lcom/exteragram/messenger/translator/ChatTranslator$Callback;)V", "cancel", "(J)V", "cancelAll", "clearCache", "Lcom/exteragram/messenger/translator/core/HttpTranslator;", "translator", "fromLang", _UrlKt.FRAGMENT_ENCODE_SET, "html", "Lcom/exteragram/messenger/translator/ChatTranslator$Piece;", "pieces", _UrlKt.FRAGMENT_ENCODE_SET, "results", "assemble", "(Lcom/exteragram/messenger/translator/core/HttpTranslator;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;[Ljava/lang/String;)V", "text", _UrlKt.FRAGMENT_ENCODE_SET, "limit", "split", "(Ljava/lang/String;I)Ljava/util/List;", "Lcom/exteragram/messenger/translator/core/ProviderLimits;", "limits", "chunk", "(Ljava/util/List;Lcom/exteragram/messenger/translator/core/ProviderLimits;)Ljava/util/List;", "cacheKey", "(Lcom/exteragram/messenger/translator/core/BaseTranslator;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;", PluginsConstants.MenuItemProperties.PRIORITY, "translate$TMessagesProj", "(JLjava/util/List;Ljava/lang/String;Lcom/exteragram/messenger/translator/core/BaseTranslator;Ljava/lang/String;ZZLcom/exteragram/messenger/translator/ChatTranslator$Callback;)V", "invalidate$TMessagesProj", "(Lcom/exteragram/messenger/translator/core/BaseTranslator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "invalidate", "com/exteragram/messenger/translator/ChatTranslator$cache$1", "cache", "Lcom/exteragram/messenger/translator/ChatTranslator$cache$1;", "Callback", "Piece", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nChatTranslator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatTranslator.kt\ncom/exteragram/messenger/translator/ChatTranslator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,230:1\n1#2:231\n1586#3:232\n1661#3,3:233\n654#4,5:236\n627#4,6:241\n*S KotlinDebug\n*F\n+ 1 ChatTranslator.kt\ncom/exteragram/messenger/translator/ChatTranslator\n*L\n92#1:232\n92#1:233,3\n166#1:236,5\n168#1:241,6\n*E\n"})
public final class ChatTranslator {
    public static final ChatTranslator INSTANCE = new ChatTranslator();
    private static final ChatTranslator$cache$1 cache = new ChatTranslator$cache$1();

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/translator/ChatTranslator$Callback;", _UrlKt.FRAGMENT_ENCODE_SET, "onResult", _UrlKt.FRAGMENT_ENCODE_SET, "results", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "error", "Lcom/exteragram/messenger/translator/core/TranslationError;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public interface Callback {
        void onResult(List<String> results, TranslationError error);
    }

    private ChatTranslator() {
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000b\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/translator/ChatTranslator$Piece;", _UrlKt.FRAGMENT_ENCODE_SET, "messageIndex", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ILjava/lang/String;)V", "getMessageIndex", "()I", "getText", "()Ljava/lang/String;", "translated", "getTranslated", "setTranslated", "(Ljava/lang/String;)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Piece {
        private final int messageIndex;
        private final String text;
        private String translated;

        public Piece(int i, String str) {
            this.messageIndex = i;
            this.text = str;
        }

        public final int getMessageIndex() {
            return this.messageIndex;
        }

        public final String getText() {
            return this.text;
        }

        public final String getTranslated() {
            return this.translated;
        }

        public final void setTranslated(String str) {
            this.translated = str;
        }
    }

    @JvmStatic
    public static final void translate(long dialogId, List<String> texts, String toLang, Callback callback) {
        translate(dialogId, texts, toLang, TranslatorUtils.getCurrentTranslator(), callback);
    }

    @JvmStatic
    public static final void translate(long dialogId, List<String> texts, String toLang, BaseTranslator current, Callback callback) {
        INSTANCE.translate$TMessagesProj(dialogId, texts, toLang, current, "auto", false, false, callback);
    }

    public final void translate$TMessagesProj(long dialogId, List<String> texts, final String toLang, BaseTranslator current, final String fromLang, final boolean html, boolean priority, Callback callback) {
        HttpTranslator httpTranslator;
        String str;
        final List<String> list = texts;
        final Callback callback2 = callback;
        if (!(current instanceof HttpTranslator)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.translator.ChatTranslator$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.onResult(ArraysKt.toList(new String[list.size()]), TranslationError.Fatal.INSTANCE);
                }
            });
            return;
        }
        HttpTranslator httpTranslator2 = (HttpTranslator) current;
        ProviderLimits limits = httpTranslator2.getLimits();
        final String[] strArr = new String[list.size()];
        final ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            String str2 = list.get(i);
            if (StringsKt.isBlank(str2)) {
                strArr[i] = str2;
                httpTranslator = httpTranslator2;
            } else {
                ChatTranslator$cache$1 chatTranslator$cache$1 = cache;
                synchronized (chatTranslator$cache$1) {
                    httpTranslator = httpTranslator2;
                    str = (String) chatTranslator$cache$1.get((Object) INSTANCE.cacheKey(httpTranslator, fromLang, toLang, html, str2));
                }
                if (str != null) {
                    strArr[i] = str;
                } else {
                    Iterator<String> it = (html ? CollectionsKt.listOf(str2) : split(str2, limits.getMaxCharsPerText())).iterator();
                    while (it.hasNext()) {
                        arrayList.add(new Piece(i, it.next()));
                    }
                }
            }
            i++;
            httpTranslator2 = httpTranslator;
        }
        HttpTranslator httpTranslator3 = httpTranslator2;
        if (arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.translator.ChatTranslator$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.onResult(ArraysKt.toList(strArr), null);
                }
            });
            return;
        }
        List<List<Piece>> listChunk = chunk(arrayList, limits);
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = listChunk.size();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        for (final List<Piece> list2 : listChunk) {
            List<Piece> list3 = list2;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            Iterator<T> it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((Piece) it2.next()).getText());
            }
            final HttpTranslator httpTranslator4 = httpTranslator3;
            TranslationDispatcher.enqueue(httpTranslator4, dialogId, arrayList2, fromLang, toLang, priority, html, new TranslationDispatcher.Completion() { // from class: com.exteragram.messenger.translator.ChatTranslator$$ExternalSyntheticLambda2
                @Override // com.exteragram.messenger.translator.core.TranslationDispatcher.Completion
                public final void onDone(List list4, TranslationError translationError) {
                    ChatTranslator.$r8$lambda$DYnQCH4yqjzalZx8U3F6BPNenq4(list2, objectRef, intRef, httpTranslator4, fromLang, toLang, html, list, arrayList, strArr, callback2, list4, translationError);
                }
            });
            list = texts;
            httpTranslator3 = httpTranslator4;
            intRef = intRef;
            objectRef = objectRef;
            callback2 = callback;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v2, types: [com.exteragram.messenger.translator.core.TranslationError$Transient] */
    public static void $r8$lambda$DYnQCH4yqjzalZx8U3F6BPNenq4(List list, Ref.ObjectRef objectRef, Ref.IntRef intRef, HttpTranslator httpTranslator, String str, String str2, boolean z, List list2, ArrayList arrayList, String[] strArr, Callback callback, List list3, TranslationError translationError) {
        if (list3 != null && list3.size() == list.size()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ((Piece) list.get(i)).setTranslated((String) list3.get(i));
            }
        } else if ((translationError instanceof TranslationError.Cancelled) || objectRef.element == 0) {
            if (translationError == 0) {
                translationError = TranslationError.Transient.INSTANCE;
            }
            objectRef.element = translationError;
        }
        int i2 = intRef.element - 1;
        intRef.element = i2;
        if (i2 == 0) {
            INSTANCE.assemble(httpTranslator, str, str2, z, list2, arrayList, strArr);
            callback.onResult(ArraysKt.toList(strArr), (TranslationError) objectRef.element);
        }
    }

    @JvmStatic
    public static final void cancel(long dialogId) {
        FormattedTranslation.INSTANCE.cancel$TMessagesProj(Long.valueOf(dialogId));
        TranslationDispatcher.cancel(dialogId);
    }

    @JvmStatic
    public static final void cancelAll() {
        FormattedTranslation.INSTANCE.cancel$TMessagesProj(null);
        TranslationDispatcher.cancelAll();
    }

    @JvmStatic
    public static final void clearCache() {
        ChatTranslator$cache$1 chatTranslator$cache$1 = cache;
        synchronized (chatTranslator$cache$1) {
            chatTranslator$cache$1.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void invalidate$TMessagesProj(BaseTranslator translator, String fromLang, String toLang, String text) {
        ChatTranslator$cache$1 chatTranslator$cache$1 = cache;
        synchronized (chatTranslator$cache$1) {
        }
    }

    private final void assemble(HttpTranslator translator, String fromLang, String toLang, boolean html, List<String> texts, List<Piece> pieces, String[] results) {
        String strSubstring;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < pieces.size()) {
            int messageIndex = pieces.get(i).getMessageIndex();
            boolean z = true;
            int i2 = i;
            while (i2 < pieces.size() && pieces.get(i2).getMessageIndex() == messageIndex) {
                if (pieces.get(i2).getTranslated() == null) {
                    z = false;
                }
                i2++;
            }
            if (z) {
                sb.setLength(0);
                while (i < i2) {
                    String text = pieces.get(i).getText();
                    String translated = pieces.get(i).getTranslated();
                    if (translated != null) {
                        if (html) {
                            sb.append(translated);
                        } else if (StringsKt.isBlank(text)) {
                            sb.append(text);
                        } else {
                            int length = text.length();
                            int i3 = 0;
                            while (true) {
                                if (i3 >= length) {
                                    strSubstring = text;
                                    break;
                                } else {
                                    if (!CharsKt.isWhitespace(text.charAt(i3))) {
                                        strSubstring = text.substring(0, i3);
                                        break;
                                    }
                                    i3++;
                                }
                            }
                            sb.append(strSubstring);
                            sb.append(StringsKt.trim((CharSequence) translated).toString());
                            int lastIndex = StringsKt.getLastIndex(text);
                            while (true) {
                                if (-1 >= lastIndex) {
                                    break;
                                }
                                if (!CharsKt.isWhitespace(text.charAt(lastIndex))) {
                                    text = text.substring(lastIndex + 1);
                                    break;
                                }
                                lastIndex--;
                            }
                            sb.append(text);
                        }
                    }
                    i++;
                }
                String string = sb.toString();
                results[messageIndex] = string;
                ChatTranslator$cache$1 chatTranslator$cache$1 = cache;
                synchronized (chatTranslator$cache$1) {
                    chatTranslator$cache$1.put(INSTANCE.cacheKey(translator, fromLang, toLang, html, texts.get(messageIndex)), string);
                    Unit unit = Unit.INSTANCE;
                }
            }
            i = i2;
        }
    }

    private final List<String> split(String text, int limit) {
        if (text.length() <= limit) {
            return CollectionsKt.listOf(text);
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < text.length()) {
            if (text.length() - i <= limit) {
                arrayList.add(text.substring(i));
                return arrayList;
            }
            int i2 = i + limit;
            int i3 = i2 - 1;
            String str = text;
            int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, '\n', i3, false, 4, (Object) null);
            if (iLastIndexOf$default <= i) {
                iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, ' ', i3, false, 4, (Object) null);
            }
            if (iLastIndexOf$default > i) {
                i2 = iLastIndexOf$default + 1;
            }
            if (i2 < str.length() && Character.isHighSurrogate(str.charAt(i2 - 1)) && Character.isLowSurrogate(str.charAt(i2))) {
                i2--;
            }
            arrayList.add(str.substring(i, i2));
            i = i2;
            text = str;
        }
        return arrayList;
    }

    private final List<List<Piece>> chunk(List<Piece> pieces, ProviderLimits limits) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = 0;
        for (Piece piece : pieces) {
            if (!arrayList2.isEmpty() && (arrayList2.size() >= limits.getMaxTextsPerRequest() || piece.getText().length() + length > limits.getMaxCharsPerRequest())) {
                arrayList.add(arrayList2);
                arrayList2 = new ArrayList();
                length = 0;
            }
            arrayList2.add(piece);
            length += piece.getText().length();
        }
        if (!arrayList2.isEmpty()) {
            arrayList.add(arrayList2);
        }
        return arrayList;
    }

    private final String cacheKey(BaseTranslator translator, String fromLang, String toLang, boolean html, String text) {
        return translator.getClass().getSimpleName() + " " + fromLang + " " + toLang + " " + html + " " + text;
    }
}
