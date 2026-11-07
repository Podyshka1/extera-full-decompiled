package com.exteragram.messenger.components;

import android.content.Context;
import android.graphics.Paint;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import androidx.core.content.ContextCompat;
import androidx.media3.common.MimeTypes;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.components.BlendedReplyFileText;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.gms.cast.MediaTrack;
import java.io.File;
import java.util.ArrayList;
import java.util.EnumMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0002\u0016\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010J \u0010\u0011\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/components/BlendedReplyFileText;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "icons", "Ljava/util/EnumMap;", "Lcom/exteragram/messenger/components/BlendedReplyFileText$AttachType;", "Lcom/exteragram/messenger/components/BlendedReplyColorIconSpan;", "build", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "reply", "Lorg/telegram/messenger/MessageObject;", "type", "fontMetrics", "Landroid/graphics/Paint$FontMetricsInt;", "formatCaption", MediaTrack.ROLE_CAPTION, "createIcon", "res", _UrlKt.FRAGMENT_ENCODE_SET, "AttachType", "Companion", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBlendedReplySpans.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlendedReplySpans.kt\ncom/exteragram/messenger/components/BlendedReplyFileText\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n410#2,7:173\n1#3:180\n*S KotlinDebug\n*F\n+ 1 BlendedReplySpans.kt\ncom/exteragram/messenger/components/BlendedReplyFileText\n*L\n143#1:173,7\n*E\n"})
public final class BlendedReplyFileText {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final EnumMap<AttachType, BlendedReplyColorIconSpan> icons = new EnumMap<>(AttachType.class);

    @JvmStatic
    public static final AttachType getType(MessageObject messageObject) {
        return INSTANCE.getType(messageObject);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0017"}, d2 = {"Lcom/exteragram/messenger/components/BlendedReplyFileText$AttachType;", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "stringRes", "<init>", "(Ljava/lang/String;IILjava/lang/Integer;)V", "getIconRes", "()I", "getStringRes", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "MUSIC", "GIFT", "VOICE", "ROUND_VIDEO", "PHOTO", "VIDEO", "PLUGIN", "BACKUP", "ICON_PACK", "FILE", "UNKNOWN", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class AttachType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AttachType[] $VALUES;
        private final int iconRes;
        private final Integer stringRes;
        public static final AttachType MUSIC = new AttachType("MUSIC", 0, C2665R.drawable.filled_widget_music, null, 2, null);
        public static final AttachType GIFT = new AttachType("GIFT", 1, C2665R.drawable.gift, Integer.valueOf(C2665R.string.ActionStarGift));
        public static final AttachType VOICE = new AttachType("VOICE", 2, C2665R.drawable.msg_filled_data_voice, Integer.valueOf(C2665R.string.Voice));
        public static final AttachType ROUND_VIDEO = new AttachType("ROUND_VIDEO", 3, C2665R.drawable.filled_profile_video_24, Integer.valueOf(C2665R.string.AttachRound));
        public static final AttachType PHOTO = new AttachType("PHOTO", 4, C2665R.drawable.msg_filled_reply_image, Integer.valueOf(C2665R.string.StoryPhoto));
        public static final AttachType VIDEO = new AttachType("VIDEO", 5, C2665R.drawable.filled_profile_video_24, Integer.valueOf(C2665R.string.StoryVideo));
        public static final AttachType PLUGIN = new AttachType("PLUGIN", 6, C2665R.drawable.plugins_filled, null, 2, null);
        public static final AttachType BACKUP = new AttachType("BACKUP", 7, C2665R.drawable.filled_profile_settings, null, 2, null);
        public static final AttachType ICON_PACK = new AttachType("ICON_PACK", 8, C2665R.drawable.stickers_filled, null, 2, null);
        public static final AttachType FILE = new AttachType("FILE", 9, C2665R.drawable.msg_filled_reply_files, null, 2, null);
        public static final AttachType UNKNOWN = new AttachType("UNKNOWN", 10, C2665R.drawable.msg_filled_reply_files, null, 2, null);

        private static final /* synthetic */ AttachType[] $values() {
            return new AttachType[]{MUSIC, GIFT, VOICE, ROUND_VIDEO, PHOTO, VIDEO, PLUGIN, BACKUP, ICON_PACK, FILE, UNKNOWN};
        }

        public static AttachType valueOf(String str) {
            return (AttachType) Enum.valueOf(AttachType.class, str);
        }

        public static AttachType[] values() {
            return (AttachType[]) $VALUES.clone();
        }

        private AttachType(String str, int i, int i2, Integer num) {
            this.iconRes = i2;
            this.stringRes = num;
        }

        public /* synthetic */ AttachType(String str, int i, int i2, Integer num, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, i2, (i3 & 2) != 0 ? null : num);
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final Integer getStringRes() {
            return this.stringRes;
        }

        static {
            AttachType[] attachTypeArr$values = $values();
            $VALUES = attachTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(attachTypeArr$values);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\b²\u0006\f\u0010\t\u001a\u0004\u0018\u00010\nX\u008a\u0084\u0002"}, d2 = {"Lcom/exteragram/messenger/components/BlendedReplyFileText$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getType", "Lcom/exteragram/messenger/components/BlendedReplyFileText$AttachType;", "reply", "Lorg/telegram/messenger/MessageObject;", "TMessagesProj", "file", "Ljava/io/File;"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBlendedReplySpans.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlendedReplySpans.kt\ncom/exteragram/messenger/components/BlendedReplyFileText$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1#2:173\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AttachType getType(final MessageObject reply) {
            if (reply == null) {
                return AttachType.UNKNOWN;
            }
            TLRPC.Document document = reply.getDocument();
            String str = document != null ? document.mime_type : null;
            Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.exteragram.messenger.components.BlendedReplyFileText$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BlendedReplyFileText.Companion.$r8$lambda$q50XyqiFF0WlGV82xdVe1wcVvn4(reply);
                }
            });
            return getType$isMusic(reply) ? AttachType.MUSIC : reply.isAnyGift() ? AttachType.GIFT : getType$isVoice(reply) ? AttachType.VOICE : getType$isRound(reply) ? AttachType.ROUND_VIDEO : getType$isPhoto(reply, str) ? AttachType.PHOTO : getType$isVideo(reply, str) ? AttachType.VIDEO : getType$isGif(reply, str) ? AttachType.UNKNOWN : getType$isPlugin(lazy, reply) ? AttachType.PLUGIN : getType$isBackup(lazy) ? AttachType.BACKUP : getType$isIconPack(lazy, reply) ? AttachType.ICON_PACK : getType$isFile(reply) ? AttachType.FILE : AttachType.UNKNOWN;
        }

        private static final File getType$lambda$2(Lazy<? extends File> lazy) {
            return lazy.getValue();
        }

        public static File $r8$lambda$q50XyqiFF0WlGV82xdVe1wcVvn4(MessageObject messageObject) {
            String pathToMessage;
            if (messageObject.type == 9 && (pathToMessage = ChatUtils.getInstance().getPathToMessage(messageObject)) != null) {
                if (pathToMessage.length() <= 0) {
                    pathToMessage = null;
                }
                if (pathToMessage != null) {
                    return new File(pathToMessage);
                }
            }
            return null;
        }

        private static final boolean getType$isFile(MessageObject messageObject) {
            return messageObject.type == 9;
        }

        private static final boolean getType$isMusic(MessageObject messageObject) {
            return messageObject.type == 14;
        }

        private static final boolean getType$isVoice(MessageObject messageObject) {
            return messageObject.type == 2;
        }

        private static final boolean getType$isRound(MessageObject messageObject) {
            return messageObject.type == 5;
        }

        private static final boolean getType$isPhoto(MessageObject messageObject, String str) {
            return messageObject.type == 1 || (getType$isFile(messageObject) && MimeTypes.isImage(str));
        }

        private static final boolean getType$isVideo(MessageObject messageObject, String str) {
            if (messageObject.type != 3) {
                return getType$isFile(messageObject) && MimeTypes.isVideo(str);
            }
            return true;
        }

        private static final boolean getType$isGif(MessageObject messageObject, String str) {
            TLRPC.Document document = messageObject.getDocument();
            return Intrinsics.areEqual(document != null ? document.mime_type : null, "image/gif") || MimeTypes.isVideo(str);
        }

        private static final boolean getType$isPlugin(Lazy<? extends File> lazy, MessageObject messageObject) {
            File type$lambda$2 = getType$lambda$2(lazy);
            return type$lambda$2 != null && PluginsController.INSTANCE.isPlugin(type$lambda$2, messageObject);
        }

        private static final boolean getType$isBackup(Lazy<? extends File> lazy) {
            File type$lambda$2 = getType$lambda$2(lazy);
            return type$lambda$2 != null && PreferencesUtils.getInstance().isBackup(type$lambda$2);
        }

        private static final boolean getType$isIconPack(Lazy<? extends File> lazy, MessageObject messageObject) {
            File type$lambda$2 = getType$lambda$2(lazy);
            return type$lambda$2 != null && IconManager.INSTANCE.isIconPack(type$lambda$2.getPath(), messageObject);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CharSequence build(Context context, MessageObject reply, AttachType type, Paint.FontMetricsInt fontMetrics) {
        String documentName;
        EnumMap<AttachType, BlendedReplyColorIconSpan> enumMap = this.icons;
        BlendedReplyColorIconSpan blendedReplyColorIconSpanCreateIcon = enumMap.get(type);
        if (blendedReplyColorIconSpanCreateIcon == null) {
            blendedReplyColorIconSpanCreateIcon = createIcon(context, type.getIconRes());
            enumMap.put(type, blendedReplyColorIconSpanCreateIcon);
        }
        BlendedReplyColorIconSpan blendedReplyColorIconSpan = blendedReplyColorIconSpanCreateIcon;
        if (type == AttachType.MUSIC) {
            documentName = reply.getMusicAuthor() + " – " + reply.getMusicTitle();
        } else if (type.getStringRes() != null) {
            documentName = LocaleController.getString(type.getStringRes().intValue());
        } else {
            documentName = reply.getDocumentName();
            if (documentName == null) {
                documentName = LocaleController.getString(C2665R.string.AttachDocument);
            } else {
                if (documentName.length() <= 0) {
                    documentName = null;
                }
                if (documentName == null) {
                }
            }
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder("d ").append(Emoji.replaceEmoji(documentName, fontMetrics, false));
        spannableStringBuilderAppend.setSpan(blendedReplyColorIconSpan, 0, 1, 33);
        spannableStringBuilderAppend.setSpan(new BlendedReplyColorSpan(), 0, spannableStringBuilderAppend.length(), 33);
        CharSequence charSequence = reply.caption;
        return (charSequence == null || charSequence.length() == 0) ? spannableStringBuilderAppend : spannableStringBuilderAppend.append((CharSequence) ", ").append(formatCaption(reply, reply.caption, fontMetrics));
    }

    private final CharSequence formatCaption(MessageObject reply, CharSequence caption, Paint.FontMetricsInt fontMetrics) {
        ArrayList<TLRPC.MessageEntity> arrayList;
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(StringsKt.replace$default(StringsKt.take(caption.toString(), 150), '\n', ' ', false, 4, (Object) null), fontMetrics, true);
        TLRPC.Message message = reply.messageOwner;
        if (message == null || (arrayList = message.entities) == null) {
            return charSequenceReplaceEmoji;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        LocaleUtils.parseCustomEmojis(charSequenceReplaceEmoji, arrayList2);
        Spannable spannableReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList2, fontMetrics, true);
        MediaDataController.addTextStyleRuns(arrayList, caption, spannableReplaceAnimatedEmoji);
        return spannableReplaceAnimatedEmoji;
    }

    private final BlendedReplyColorIconSpan createIcon(Context context, int res) {
        BlendedReplyColorIconSpan blendedReplyColorIconSpan = new BlendedReplyColorIconSpan(ContextCompat.getDrawable(context, res).mutate());
        blendedReplyColorIconSpan.setScale(0.7f, 0.7f);
        return blendedReplyColorIconSpan;
    }
}
