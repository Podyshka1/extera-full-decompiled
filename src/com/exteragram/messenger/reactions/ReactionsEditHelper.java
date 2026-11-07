package com.exteragram.messenger.reactions;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.text.Spanned;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.AnimatedEmojiSpan;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 *2\u00020\u0001:\u0002)*B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0018\u001a\u00020\u0005J\u001c\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u001c\u001a\u00020\u0014J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u0003J \u0010 \u001a\u00020\u001a2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003J\u0010\u0010%\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006+"}, d2 = {"Lcom/exteragram/messenger/reactions/ReactionsEditHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "account", _UrlKt.FRAGMENT_ENCODE_SET, "chatId", _UrlKt.FRAGMENT_ENCODE_SET, "availableReactions", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/telegram/tgnet/TLRPC$TL_availableReaction;", "<init>", "(IJLjava/util/List;)V", "backupKey", _UrlKt.FRAGMENT_ENCODE_SET, "getBackupKey", "()Ljava/lang/String;", "clipboard", "Landroid/content/ClipboardManager;", "getClipboard", "()Landroid/content/ClipboardManager;", "hasClipboard", _UrlKt.FRAGMENT_ENCODE_SET, "getHasClipboard", "()Z", "findAvailableReaction", "documentId", "saveBackup", _UrlKt.FRAGMENT_ENCODE_SET, "selectedIds", "paid", "loadBackup", "Lcom/exteragram/messenger/reactions/ReactionsEditHelper$Backup;", "limit", "copyReactions", "text", "Landroid/text/Spanned;", "selectionStart", "selectionEnd", "reactionToText", "parseClipboard", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/telegram/ui/Components/AnimatedEmojiSpan;", "Backup", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nReactionsEditHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactionsEditHelper.kt\ncom/exteragram/messenger/reactions/ReactionsEditHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n1#2:128\n1#2:155\n777#3:129\n873#3,2:130\n1642#3,10:144\n1915#3:154\n1916#3:156\n1652#3:157\n777#3:158\n873#3,2:159\n41#4,12:132\n6612#5:161\n*S KotlinDebug\n*F\n+ 1 ReactionsEditHelper.kt\ncom/exteragram/messenger/reactions/ReactionsEditHelper\n*L\n57#1:155\n45#1:129\n45#1:130,2\n57#1:144,10\n57#1:154\n57#1:156\n57#1:157\n60#1:158\n60#1:159,2\n49#1:132,12\n70#1:161\n*E\n"})
public final class ReactionsEditHelper {
    private static final Regex EMOJI_LINK = new Regex("tg://emoji\\?id=(\\d+)");
    private final int account;
    private final List<TLRPC.TL_availableReaction> availableReactions;
    private final long chatId;

    /* JADX WARN: Multi-variable type inference failed */
    public ReactionsEditHelper(int i, long j, List<? extends TLRPC.TL_availableReaction> list) {
        this.account = i;
        this.chatId = j;
        this.availableReactions = list;
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/reactions/ReactionsEditHelper$Backup;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "reactionIds", _UrlKt.FRAGMENT_ENCODE_SET, "paid", "<init>", "(Ljava/util/List;Z)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getReactionIds", "()Ljava/util/List;", "Z", "getPaid", "()Z", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Backup {
        private final boolean paid;
        private final List<Long> reactionIds;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Backup)) {
                return false;
            }
            Backup backup = (Backup) other;
            return Intrinsics.areEqual(this.reactionIds, backup.reactionIds) && this.paid == backup.paid;
        }

        public int hashCode() {
            return (this.reactionIds.hashCode() * 31) + Boolean.hashCode(this.paid);
        }

        public String toString() {
            return "Backup(reactionIds=" + this.reactionIds + ", paid=" + this.paid + ")";
        }

        public Backup(List<Long> list, boolean z) {
            this.reactionIds = list;
            this.paid = z;
        }

        public final boolean getPaid() {
            return this.paid;
        }

        public final List<Long> getReactionIds() {
            return this.reactionIds;
        }
    }

    private final String getBackupKey() {
        return "chat_reactions_backup_" + this.chatId;
    }

    private final ClipboardManager getClipboard() {
        Object systemService = ApplicationLoader.applicationContext.getSystemService("clipboard");
        if (systemService instanceof ClipboardManager) {
            return (ClipboardManager) systemService;
        }
        return null;
    }

    public final boolean getHasClipboard() {
        ClipboardManager clipboard = getClipboard();
        return clipboard != null && clipboard.hasPrimaryClip();
    }

    public final TLRPC.TL_availableReaction findAvailableReaction(long documentId) {
        Object next;
        Iterator<T> it = this.availableReactions.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((TLRPC.TL_availableReaction) next).activate_animation.id == documentId) {
                break;
            }
        }
        return (TLRPC.TL_availableReaction) next;
    }

    public final void saveBackup(List<Long> selectedIds, boolean paid) {
        List arrayList = new ArrayList();
        for (Object obj : selectedIds) {
            if (((Number) obj).longValue() != -1) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        if (paid) {
            arrayList = CollectionsKt.plus((Collection) CollectionsKt.listOf(-1L), (Iterable) arrayList);
        }
        String strJoinToString$default = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
        SharedPreferences.Editor editorEdit = MessagesController.getMainSettings(this.account).edit();
        editorEdit.putString(getBackupKey(), strJoinToString$default);
        editorEdit.apply();
    }

    public final Backup loadBackup(int limit) {
        String string = MessagesController.getMainSettings(this.account).getString(getBackupKey(), null);
        if (string != null) {
            int i = 0;
            List listSplit$default = StringsKt.split$default((CharSequence) string, new char[]{','}, false, 0, 6, (Object) null);
            if (listSplit$default != null) {
                ArrayList arrayList = new ArrayList();
                Iterator it = listSplit$default.iterator();
                while (it.hasNext()) {
                    Long longOrNull = StringsKt.toLongOrNull((String) it.next());
                    if (longOrNull == null || longOrNull.longValue() == 0) {
                        longOrNull = null;
                    }
                    if (longOrNull != null) {
                        arrayList.add(longOrNull);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    if (((Number) obj).longValue() != -1) {
                        arrayList2.add(obj);
                    }
                }
                return new Backup(CollectionsKt.take(arrayList2, limit), arrayList.contains(-1L));
            }
        }
        return null;
    }

    public final void copyReactions(final Spanned text, int selectionStart, int selectionEnd) {
        if (text == null || selectionStart == selectionEnd) {
            return;
        }
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) text.getSpans(Math.min(selectionStart, selectionEnd), Math.max(selectionStart, selectionEnd), AnimatedEmojiSpan.class);
        if (animatedEmojiSpanArr.length == 0) {
            return;
        }
        String strJoinToString$default = CollectionsKt.joinToString$default(ArraysKt.sortedWith(animatedEmojiSpanArr, new Comparator() { // from class: com.exteragram.messenger.reactions.ReactionsEditHelper$copyReactions$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(text.getSpanStart((AnimatedEmojiSpan) t)), Integer.valueOf(text.getSpanStart((AnimatedEmojiSpan) t2)));
            }
        }), " ", null, null, 0, null, new Function1() { // from class: com.exteragram.messenger.reactions.ReactionsEditHelper$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f$0.reactionToText(((AnimatedEmojiSpan) obj).documentId);
            }
        }, 30, null);
        ClipboardManager clipboard = getClipboard();
        if (clipboard != null) {
            clipboard.setPrimaryClip(ClipData.newPlainText("reactions", strJoinToString$default));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String reactionToText(long documentId) {
        String str;
        if (documentId == -1) {
            return "⭐";
        }
        TLRPC.TL_availableReaction tL_availableReactionFindAvailableReaction = findAvailableReaction(documentId);
        if (tL_availableReactionFindAvailableReaction != null && (str = tL_availableReactionFindAvailableReaction.reaction) != null) {
            return str;
        }
        return "tg://emoji?id=" + documentId;
    }

    public final List<AnimatedEmojiSpan> parseClipboard() {
        ClipData primaryClip;
        Object next;
        ClipData.Item itemAt;
        ClipboardManager clipboard = getClipboard();
        if (clipboard == null || (primaryClip = clipboard.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) {
            primaryClip = null;
        }
        CharSequence charSequenceCoerceToText = (primaryClip == null || (itemAt = primaryClip.getItemAt(0)) == null) ? null : itemAt.coerceToText(ApplicationLoader.applicationContext);
        if (charSequenceCoerceToText == null || charSequenceCoerceToText.length() == 0) {
            return new ArrayList();
        }
        TreeMap treeMap = new TreeMap();
        TreeMap treeMap2 = new TreeMap();
        if (charSequenceCoerceToText instanceof Spanned) {
            Spanned spanned = (Spanned) charSequenceCoerceToText;
            Iterator it = ArrayIteratorKt.iterator(spanned.getSpans(0, spanned.length(), AnimatedEmojiSpan.class));
            while (it.hasNext()) {
                AnimatedEmojiSpan animatedEmojiSpan = (AnimatedEmojiSpan) it.next();
                int spanStart = spanned.getSpanStart(animatedEmojiSpan);
                treeMap2.put(Integer.valueOf(spanStart), Integer.valueOf(spanned.getSpanEnd(animatedEmojiSpan)));
                treeMap.put(Integer.valueOf(spanStart), new AnimatedEmojiSpan(animatedEmojiSpan.documentId, (Paint.FontMetricsInt) null));
            }
        }
        for (MatchResult matchResult : Regex.findAll$default(EMOJI_LINK, charSequenceCoerceToText, 0, 2, null)) {
            Long longOrNull = StringsKt.toLongOrNull(matchResult.getGroupValues().get(1));
            if (longOrNull != null) {
                if (longOrNull.longValue() == 0) {
                    longOrNull = null;
                }
                if (longOrNull != null) {
                    treeMap.put(Integer.valueOf(matchResult.getRange().getFirst()), new AnimatedEmojiSpan(longOrNull.longValue(), (Paint.FontMetricsInt) null));
                }
            }
        }
        for (Emoji.EmojiSpanRange emojiSpanRange : Emoji.parseEmojis(charSequenceCoerceToText)) {
            Map.Entry entryFloorEntry = treeMap2.floorEntry(Integer.valueOf(emojiSpanRange.start));
            if (entryFloorEntry == null || emojiSpanRange.start >= ((Number) entryFloorEntry.getValue()).intValue()) {
                String strReplace$default = StringsKt.replace$default(emojiSpanRange.code.toString(), "️", _UrlKt.FRAGMENT_ENCODE_SET, false, 4, (Object) null);
                if (Intrinsics.areEqual(strReplace$default, "⭐")) {
                    treeMap.put(Integer.valueOf(emojiSpanRange.start), new AnimatedEmojiSpan(-1L, (Paint.FontMetricsInt) null));
                } else {
                    Iterator<T> it2 = this.availableReactions.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        if (Intrinsics.areEqual(StringsKt.replace$default(((TLRPC.TL_availableReaction) next).reaction, "️", _UrlKt.FRAGMENT_ENCODE_SET, false, 4, (Object) null), strReplace$default)) {
                            break;
                        }
                    }
                    TLRPC.TL_availableReaction tL_availableReaction = (TLRPC.TL_availableReaction) next;
                    if (tL_availableReaction != null) {
                        treeMap.put(Integer.valueOf(emojiSpanRange.start), new AnimatedEmojiSpan(tL_availableReaction.activate_animation, (Paint.FontMetricsInt) null));
                    }
                }
            }
        }
        return CollectionsKt.toMutableList(treeMap.values());
    }
}
