package org.telegram.messenger;

import android.os.SystemClock;
import android.util.Pair;
import com.exteragram.messenger.updater.UpdaterUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Stories.StoriesController;

/* JADX INFO: loaded from: classes.dex */
public class FileRefController extends BaseController {
    private static volatile FileRefController[] Instance = new FileRefController[16];
    private ArrayList<Waiter> favStickersWaiter;
    private long lastCleanupTime;
    private HashMap<String, ArrayList<Requester>> locationRequester;
    private HashMap<TLObject, Object[]> multiMediaCache;
    private HashMap<String, ArrayList<Requester>> parentRequester;
    private ArrayList<Waiter> recentStickersWaiter;
    private HashMap<String, CachedResult> responseCache;
    private ArrayList<Waiter> savedGifsWaiters;
    private ArrayList<Waiter> wallpaperWaiters;

    public static /* synthetic */ void $r8$lambda$2OHiWI1UXGwPuBabnEX2xeeojUw(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$ZToGQFtw2zognfQdJ83dZILab_A(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$bP6KBJG6eRnD1L1Fw9rrtHGm3Ic(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$zLpXUCCmmkTcmIXKtdR8GqrnykY(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class Requester {
        private Object[] args;
        private boolean completed;
        private TLRPC.InputFileLocation location;
        private String locationKey;

        private Requester() {
        }
    }

    public static class CachedResult {
        private long firstQueryTime;
        private TLObject response;

        private CachedResult() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class Waiter {
        private String locationKey;
        private String parentKey;

        public Waiter(String str, String str2) {
            this.locationKey = str;
            this.parentKey = str2;
        }
    }

    public static FileRefController getInstance(int i) {
        FileRefController fileRefController;
        FileRefController fileRefController2 = Instance[i];
        if (fileRefController2 != null) {
            return fileRefController2;
        }
        synchronized (FileRefController.class) {
            try {
                fileRefController = Instance[i];
                if (fileRefController == null) {
                    FileRefController[] fileRefControllerArr = Instance;
                    FileRefController fileRefController3 = new FileRefController(i);
                    fileRefControllerArr[i] = fileRefController3;
                    fileRefController = fileRefController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileRefController;
    }

    public FileRefController(int i) {
        super(i);
        this.locationRequester = new HashMap<>();
        this.parentRequester = new HashMap<>();
        this.responseCache = new HashMap<>();
        this.multiMediaCache = new HashMap<>();
        this.lastCleanupTime = SystemClock.elapsedRealtime();
        this.wallpaperWaiters = new ArrayList<>();
        this.savedGifsWaiters = new ArrayList<>();
        this.recentStickersWaiter = new ArrayList<>();
        this.favStickersWaiter = new ArrayList<>();
    }

    public static String getKeyForParentObject(Object obj) {
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        if (obj instanceof StoriesController.BotPreview) {
            StoriesController.BotPreview botPreview = (StoriesController.BotPreview) obj;
            if (botPreview.list == null) {
                FileLog.m895d("failed request reference can't find list in botpreview");
                return null;
            }
            TLRPC.MessageMedia messageMedia = botPreview.media;
            if (messageMedia.document != null) {
                return "botstory_doc_" + botPreview.media.document.id;
            }
            if (messageMedia.photo != null) {
                return "botstory_photo_" + botPreview.media.photo.id;
            }
            return "botstory_" + botPreview.id;
        }
        if (obj instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            if (storyItem.dialogId == 0) {
                FileLog.m895d("failed request reference can't find dialogId");
                return null;
            }
            return "story_" + storyItem.dialogId + "_" + storyItem.id;
        }
        if (obj instanceof TLRPC.TL_help_premiumPromo) {
            return "premium_promo";
        }
        if (obj instanceof TLRPC.TL_availableReaction) {
            return "available_reaction_" + ((TLRPC.TL_availableReaction) obj).reaction;
        }
        if (obj instanceof TL_bots.BotInfo) {
            return "bot_info_" + ((TL_bots.BotInfo) obj).user_id;
        }
        if (obj instanceof TLRPC.TL_attachMenuBot) {
            return "attach_menu_bot_" + ((TLRPC.TL_attachMenuBot) obj).bot_id;
        }
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            long channelId = messageObject.getChannelId();
            if (messageObject.type == 29 && (message = messageObject.messageOwner) != null && (messageFwdHeader = message.fwd_from) != null && (peer = messageFwdHeader.from_id) != null) {
                channelId = DialogObject.getPeerDialogId(peer);
            }
            return "message" + messageObject.getRealId() + "_" + channelId + "_" + messageObject.scheduled + "_" + messageObject.getQuickReplyId();
        }
        if (obj instanceof TLRPC.Message) {
            TLRPC.Message message2 = (TLRPC.Message) obj;
            TLRPC.Peer peer2 = message2.peer_id;
            return "message" + message2.id + "_" + (peer2 != null ? peer2.channel_id : 0L) + "_" + message2.from_scheduled;
        }
        if (obj instanceof TLRPC.WebPage) {
            return "webpage" + ((TLRPC.WebPage) obj).id;
        }
        if (obj instanceof TLRPC.User) {
            return "user" + ((TLRPC.User) obj).id;
        }
        if (obj instanceof TLRPC.Chat) {
            return "chat" + ((TLRPC.Chat) obj).id;
        }
        if (obj instanceof String) {
            return "str".concat((String) obj);
        }
        if (obj instanceof TLRPC.TL_messages_stickerSet) {
            return "set" + ((TLRPC.TL_messages_stickerSet) obj).set.id;
        }
        if (obj instanceof TLRPC.StickerSetCovered) {
            return "set" + ((TLRPC.StickerSetCovered) obj).set.id;
        }
        if (obj instanceof TLRPC.InputStickerSet) {
            return "set" + ((TLRPC.InputStickerSet) obj).id;
        }
        if (obj instanceof TLRPC.TL_wallPaper) {
            return "wallpaper" + ((TLRPC.TL_wallPaper) obj).id;
        }
        if (obj instanceof TLRPC.TL_theme) {
            return "theme" + ((TLRPC.TL_theme) obj).id;
        }
        if (obj == null) {
            return null;
        }
        return _UrlKt.FRAGMENT_ENCODE_SET + obj;
    }

    public Pair<TLRPC.InputFileLocation, String> getLocationAndKey(Object obj, Object... objArr) {
        Object obj2 = objArr[0];
        if (obj2 instanceof TLRPC.TL_messages_sendMultiMedia) {
            return null;
        }
        if ((obj2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && (obj instanceof ArrayList)) {
            return null;
        }
        if ((obj2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj2).media instanceof TLRPC.TL_inputMediaPoll) && (obj instanceof ArrayList)) {
            return null;
        }
        if ((obj2 instanceof TLRPC.TL_ephemeral_sendMessage) && (((TLRPC.TL_ephemeral_sendMessage) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && (obj instanceof ArrayList)) {
            return null;
        }
        if ((obj2 instanceof TLRPC.TL_ephemeral_sendMessage) && (((TLRPC.TL_ephemeral_sendMessage) obj2).media instanceof TLRPC.TL_inputMediaPoll) && (obj instanceof ArrayList)) {
            return null;
        }
        if (obj2 instanceof StoriesController.BotPreview) {
            StoriesController.BotPreview botPreview = (StoriesController.BotPreview) obj2;
            TLRPC.MessageMedia messageMedia = botPreview.media;
            if (messageMedia.document != null) {
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                tL_inputDocumentFileLocation.id = botPreview.media.document.id;
                return new Pair<>(tL_inputDocumentFileLocation, "botstory_doc_" + botPreview.media.document.id);
            }
            if (messageMedia.photo != null) {
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                tL_inputPhotoFileLocation.id = botPreview.media.photo.id;
                return new Pair<>(tL_inputPhotoFileLocation, "botstory_photo_" + botPreview.media.photo.id);
            }
            return new Pair<>(new TLRPC.TL_inputDocumentFileLocation(), "botstory_" + botPreview.id);
        }
        if (obj2 instanceof TL_stories.TL_storyItem) {
            TL_stories.TL_storyItem tL_storyItem = (TL_stories.TL_storyItem) obj2;
            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation2 = new TLRPC.TL_inputDocumentFileLocation();
            tL_inputDocumentFileLocation2.id = tL_storyItem.media.document.id;
            return new Pair<>(tL_inputDocumentFileLocation2, "story_" + tL_storyItem.id);
        }
        if (obj2 instanceof TLRPC.TL_inputSingleMedia) {
            TLRPC.InputMedia inputMedia = ((TLRPC.TL_inputSingleMedia) obj2).media;
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation3 = new TLRPC.TL_inputDocumentFileLocation();
                tL_inputDocumentFileLocation3.id = tL_inputMediaDocument.id.id;
                return new Pair<>(tL_inputDocumentFileLocation3, "file_" + tL_inputMediaDocument.id.id);
            }
            if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = (TLRPC.TL_inputMediaPhoto) inputMedia;
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation2 = new TLRPC.TL_inputPhotoFileLocation();
                tL_inputPhotoFileLocation2.id = tL_inputMediaPhoto.id.id;
                return new Pair<>(tL_inputPhotoFileLocation2, "photo_" + tL_inputMediaPhoto.id.id);
            }
        } else {
            if (obj2 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) obj2;
                TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation4 = new TLRPC.TL_inputDocumentFileLocation();
                tL_inputDocumentFileLocation4.id = tL_inputMediaDocument2.id.id;
                return new Pair<>(tL_inputDocumentFileLocation4, "file_" + tL_inputMediaDocument2.id.id);
            }
            if (obj2 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto2 = (TLRPC.TL_inputMediaPhoto) obj2;
                TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation3 = new TLRPC.TL_inputPhotoFileLocation();
                tL_inputPhotoFileLocation3.id = tL_inputMediaPhoto2.id.id;
                return new Pair<>(tL_inputPhotoFileLocation3, "photo_" + tL_inputMediaPhoto2.id.id);
            }
            if (obj2 instanceof TLRPC.TL_messages_sendMedia) {
                TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_sendMedia) obj2).media;
                if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
                    TLRPC.TL_inputMediaDocument tL_inputMediaDocument3 = (TLRPC.TL_inputMediaDocument) inputMedia2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation5 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation5.id = tL_inputMediaDocument3.id.id;
                    return new Pair<>(tL_inputDocumentFileLocation5, "file_" + tL_inputMediaDocument3.id.id);
                }
                if (inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) {
                    TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto3 = (TLRPC.TL_inputMediaPhoto) inputMedia2;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation4 = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation4.id = tL_inputMediaPhoto3.id.id;
                    return new Pair<>(tL_inputPhotoFileLocation4, "photo_" + tL_inputMediaPhoto3.id.id);
                }
                if (inputMedia2 instanceof TLRPC.TL_inputMediaPaidMedia) {
                    TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) inputMedia2;
                    if (!(obj instanceof ArrayList) && tL_inputMediaPaidMedia.extended_media.size() == 1) {
                        TLRPC.InputMedia inputMedia3 = tL_inputMediaPaidMedia.extended_media.get(0);
                        if (inputMedia3 instanceof TLRPC.TL_inputMediaDocument) {
                            TLRPC.TL_inputMediaDocument tL_inputMediaDocument4 = (TLRPC.TL_inputMediaDocument) inputMedia3;
                            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation6 = new TLRPC.TL_inputDocumentFileLocation();
                            tL_inputDocumentFileLocation6.id = tL_inputMediaDocument4.id.id;
                            return new Pair<>(tL_inputDocumentFileLocation6, "file_" + tL_inputMediaDocument4.id.id);
                        }
                        if (inputMedia3 instanceof TLRPC.TL_inputMediaPhoto) {
                            TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto4 = (TLRPC.TL_inputMediaPhoto) inputMedia3;
                            TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation5 = new TLRPC.TL_inputPhotoFileLocation();
                            tL_inputPhotoFileLocation5.id = tL_inputMediaPhoto4.id.id;
                            return new Pair<>(tL_inputPhotoFileLocation5, "photo_" + tL_inputMediaPhoto4.id.id);
                        }
                    }
                }
            } else if (obj2 instanceof TLRPC.TL_ephemeral_sendMessage) {
                TLRPC.InputMedia inputMedia4 = ((TLRPC.TL_ephemeral_sendMessage) obj2).media;
                if (inputMedia4 instanceof TLRPC.TL_inputMediaDocument) {
                    TLRPC.TL_inputMediaDocument tL_inputMediaDocument5 = (TLRPC.TL_inputMediaDocument) inputMedia4;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation7 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation7.id = tL_inputMediaDocument5.id.id;
                    return new Pair<>(tL_inputDocumentFileLocation7, "file_" + tL_inputMediaDocument5.id.id);
                }
                if (inputMedia4 instanceof TLRPC.TL_inputMediaPhoto) {
                    TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto5 = (TLRPC.TL_inputMediaPhoto) inputMedia4;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation6 = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation6.id = tL_inputMediaPhoto5.id.id;
                    return new Pair<>(tL_inputPhotoFileLocation6, "photo_" + tL_inputMediaPhoto5.id.id);
                }
                if (inputMedia4 instanceof TLRPC.TL_inputMediaPaidMedia) {
                    TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia2 = (TLRPC.TL_inputMediaPaidMedia) inputMedia4;
                    if (!(obj instanceof ArrayList) && tL_inputMediaPaidMedia2.extended_media.size() == 1) {
                        TLRPC.InputMedia inputMedia5 = tL_inputMediaPaidMedia2.extended_media.get(0);
                        if (inputMedia5 instanceof TLRPC.TL_inputMediaDocument) {
                            TLRPC.TL_inputMediaDocument tL_inputMediaDocument6 = (TLRPC.TL_inputMediaDocument) inputMedia5;
                            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation8 = new TLRPC.TL_inputDocumentFileLocation();
                            tL_inputDocumentFileLocation8.id = tL_inputMediaDocument6.id.id;
                            return new Pair<>(tL_inputDocumentFileLocation8, "file_" + tL_inputMediaDocument6.id.id);
                        }
                        if (inputMedia5 instanceof TLRPC.TL_inputMediaPhoto) {
                            TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto6 = (TLRPC.TL_inputMediaPhoto) inputMedia5;
                            TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation7 = new TLRPC.TL_inputPhotoFileLocation();
                            tL_inputPhotoFileLocation7.id = tL_inputMediaPhoto6.id.id;
                            return new Pair<>(tL_inputPhotoFileLocation7, "photo_" + tL_inputMediaPhoto6.id.id);
                        }
                    }
                }
            } else if (obj2 instanceof TLRPC.TL_messages_editMessage) {
                TLRPC.InputMedia inputMedia6 = ((TLRPC.TL_messages_editMessage) obj2).media;
                if (inputMedia6 instanceof TLRPC.TL_inputMediaDocument) {
                    TLRPC.TL_inputMediaDocument tL_inputMediaDocument7 = (TLRPC.TL_inputMediaDocument) inputMedia6;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation9 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation9.id = tL_inputMediaDocument7.id.id;
                    return new Pair<>(tL_inputDocumentFileLocation9, "file_" + tL_inputMediaDocument7.id.id);
                }
                if (inputMedia6 instanceof TLRPC.TL_inputMediaPhoto) {
                    TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto7 = (TLRPC.TL_inputMediaPhoto) inputMedia6;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation8 = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation8.id = tL_inputMediaPhoto7.id.id;
                    return new Pair<>(tL_inputPhotoFileLocation8, "photo_" + tL_inputMediaPhoto7.id.id);
                }
            } else {
                if (obj2 instanceof TLRPC.InputPhoto) {
                    TLRPC.InputPhoto inputPhoto = (TLRPC.InputPhoto) obj2;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation9 = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation9.id = inputPhoto.id;
                    return new Pair<>(tL_inputPhotoFileLocation9, "photo_" + inputPhoto.id);
                }
                if (obj2 instanceof TLRPC.InputDocument) {
                    TLRPC.InputDocument inputDocument = (TLRPC.InputDocument) obj2;
                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation10 = new TLRPC.TL_inputDocumentFileLocation();
                    tL_inputDocumentFileLocation10.id = inputDocument.id;
                    return new Pair<>(tL_inputDocumentFileLocation10, "file_" + inputDocument.id);
                }
                if (obj2 instanceof TLRPC.TL_messages_addPollAnswer) {
                    TLRPC.InputMedia inputMedia7 = ((TLRPC.TL_messages_addPollAnswer) obj2).answer.input_media;
                    if (inputMedia7 instanceof TLRPC.TL_inputMediaDocument) {
                        TLRPC.TL_inputMediaDocument tL_inputMediaDocument8 = (TLRPC.TL_inputMediaDocument) inputMedia7;
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation11 = new TLRPC.TL_inputDocumentFileLocation();
                        tL_inputDocumentFileLocation11.id = tL_inputMediaDocument8.id.id;
                        return new Pair<>(tL_inputDocumentFileLocation11, "file_" + tL_inputMediaDocument8.id.id);
                    }
                    if (inputMedia7 instanceof TLRPC.TL_inputMediaPhoto) {
                        TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto8 = (TLRPC.TL_inputMediaPhoto) inputMedia7;
                        TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation10 = new TLRPC.TL_inputPhotoFileLocation();
                        tL_inputPhotoFileLocation10.id = tL_inputMediaPhoto8.id.id;
                        return new Pair<>(tL_inputPhotoFileLocation10, "photo_" + tL_inputMediaPhoto8.id.id);
                    }
                } else {
                    if (obj2 instanceof TLRPC.TL_messages_saveGif) {
                        TLRPC.TL_messages_saveGif tL_messages_saveGif = (TLRPC.TL_messages_saveGif) obj2;
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation12 = new TLRPC.TL_inputDocumentFileLocation();
                        tL_inputDocumentFileLocation12.id = tL_messages_saveGif.id.id;
                        return new Pair<>(tL_inputDocumentFileLocation12, "file_" + tL_messages_saveGif.id.id);
                    }
                    if (obj2 instanceof TLRPC.TL_messages_saveRecentSticker) {
                        TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = (TLRPC.TL_messages_saveRecentSticker) obj2;
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation13 = new TLRPC.TL_inputDocumentFileLocation();
                        tL_inputDocumentFileLocation13.id = tL_messages_saveRecentSticker.id.id;
                        return new Pair<>(tL_inputDocumentFileLocation13, "file_" + tL_messages_saveRecentSticker.id.id);
                    }
                    if (obj2 instanceof TLRPC.TL_stickers_addStickerToSet) {
                        TLRPC.TL_stickers_addStickerToSet tL_stickers_addStickerToSet = (TLRPC.TL_stickers_addStickerToSet) obj2;
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation14 = new TLRPC.TL_inputDocumentFileLocation();
                        tL_inputDocumentFileLocation14.id = tL_stickers_addStickerToSet.sticker.document.id;
                        return new Pair<>(tL_inputDocumentFileLocation14, "file_" + tL_stickers_addStickerToSet.sticker.document.id);
                    }
                    if (obj2 instanceof TLRPC.TL_messages_faveSticker) {
                        TLRPC.TL_messages_faveSticker tL_messages_faveSticker = (TLRPC.TL_messages_faveSticker) obj2;
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation15 = new TLRPC.TL_inputDocumentFileLocation();
                        tL_inputDocumentFileLocation15.id = tL_messages_faveSticker.id.id;
                        return new Pair<>(tL_inputDocumentFileLocation15, "file_" + tL_messages_faveSticker.id.id);
                    }
                    if (obj2 instanceof TLRPC.TL_messages_getAttachedStickers) {
                        TLRPC.InputStickeredMedia inputStickeredMedia = ((TLRPC.TL_messages_getAttachedStickers) obj2).media;
                        if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaDocument) {
                            TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = (TLRPC.TL_inputStickeredMediaDocument) inputStickeredMedia;
                            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation16 = new TLRPC.TL_inputDocumentFileLocation();
                            tL_inputDocumentFileLocation16.id = tL_inputStickeredMediaDocument.id.id;
                            return new Pair<>(tL_inputDocumentFileLocation16, "file_" + tL_inputStickeredMediaDocument.id.id);
                        }
                        if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaPhoto) {
                            TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = (TLRPC.TL_inputStickeredMediaPhoto) inputStickeredMedia;
                            TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation11 = new TLRPC.TL_inputPhotoFileLocation();
                            tL_inputPhotoFileLocation11.id = tL_inputStickeredMediaPhoto.id.id;
                            return new Pair<>(tL_inputPhotoFileLocation11, "photo_" + tL_inputStickeredMediaPhoto.id.id);
                        }
                    } else {
                        if (obj2 instanceof TLRPC.TL_inputFileLocation) {
                            TLRPC.TL_inputFileLocation tL_inputFileLocation = (TLRPC.TL_inputFileLocation) obj2;
                            return new Pair<>(tL_inputFileLocation, "loc_" + tL_inputFileLocation.local_id + "_" + tL_inputFileLocation.volume_id);
                        }
                        if (obj2 instanceof TLRPC.TL_inputDocumentFileLocation) {
                            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation17 = (TLRPC.TL_inputDocumentFileLocation) obj2;
                            return new Pair<>(tL_inputDocumentFileLocation17, "file_" + tL_inputDocumentFileLocation17.id);
                        }
                        if (obj2 instanceof TLRPC.TL_inputPhotoFileLocation) {
                            TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation12 = (TLRPC.TL_inputPhotoFileLocation) obj2;
                            return new Pair<>(tL_inputPhotoFileLocation12, "photo_" + tL_inputPhotoFileLocation12.id);
                        }
                        if (obj2 instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
                            TLRPC.TL_inputPeerPhotoFileLocation tL_inputPeerPhotoFileLocation = (TLRPC.TL_inputPeerPhotoFileLocation) obj2;
                            return new Pair<>(tL_inputPeerPhotoFileLocation, "avatar_" + tL_inputPeerPhotoFileLocation.id);
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void requestReference(Object obj, Object... objArr) {
        String str;
        FileRefController fileRefController;
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        TLRPC.WebPage webPage;
        int i = 0;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("start loading request reference parent " + getObjectString(obj) + " args = " + objArr[0]);
        }
        Object obj2 = objArr[0];
        if (obj2 instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) obj2;
            ArrayList arrayList = (ArrayList) obj;
            this.multiMediaCache.put(tL_messages_sendMultiMedia, objArr);
            int size = tL_messages_sendMultiMedia.multi_media.size();
            while (i < size) {
                TLRPC.TL_inputSingleMedia tL_inputSingleMedia = tL_messages_sendMultiMedia.multi_media.get(i);
                Object obj3 = arrayList.get(i);
                if (obj3 != null) {
                    requestReference(obj3, tL_inputSingleMedia, tL_messages_sendMultiMedia);
                }
                i++;
            }
            return;
        }
        if ((obj2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && (obj instanceof ArrayList)) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) obj2;
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia = (TLRPC.TL_inputMediaPaidMedia) tL_messages_sendMedia.media;
            ArrayList arrayList2 = (ArrayList) obj;
            this.multiMediaCache.put(tL_messages_sendMedia, objArr);
            int size2 = tL_inputMediaPaidMedia.extended_media.size();
            while (i < size2) {
                TLRPC.InputMedia inputMedia = tL_inputMediaPaidMedia.extended_media.get(i);
                Object obj4 = arrayList2.get(i);
                if (obj4 != null) {
                    requestReference(obj4, inputMedia, tL_messages_sendMedia);
                }
                i++;
            }
            return;
        }
        if ((obj2 instanceof TLRPC.TL_ephemeral_sendMessage) && (((TLRPC.TL_ephemeral_sendMessage) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && (obj instanceof ArrayList)) {
            TLRPC.TL_ephemeral_sendMessage tL_ephemeral_sendMessage = (TLRPC.TL_ephemeral_sendMessage) obj2;
            TLRPC.TL_inputMediaPaidMedia tL_inputMediaPaidMedia2 = (TLRPC.TL_inputMediaPaidMedia) tL_ephemeral_sendMessage.media;
            ArrayList arrayList3 = (ArrayList) obj;
            this.multiMediaCache.put(tL_ephemeral_sendMessage, objArr);
            int size3 = tL_inputMediaPaidMedia2.extended_media.size();
            while (i < size3) {
                TLRPC.InputMedia inputMedia2 = tL_inputMediaPaidMedia2.extended_media.get(i);
                Object obj5 = arrayList3.get(i);
                if (obj5 != null) {
                    requestReference(obj5, inputMedia2, tL_ephemeral_sendMessage);
                }
                i++;
            }
            return;
        }
        Pair<TLRPC.InputFileLocation, String> locationAndKey = getLocationAndKey(obj, objArr);
        if (locationAndKey == null) {
            sendErrorToObject(objArr, 0);
            return;
        }
        TLRPC.InputFileLocation inputFileLocation = (TLRPC.InputFileLocation) locationAndKey.first;
        String str2 = (String) locationAndKey.second;
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.getRealId() < 0 && (message = messageObject.messageOwner) != null && (messageMedia = message.media) != null && (webPage = messageMedia.webpage) != null) {
                obj = webPage;
            }
        }
        String keyForParentObject = getKeyForParentObject(obj);
        if (keyForParentObject == null) {
            sendErrorToObject(objArr, 0);
            return;
        }
        Requester requester = new Requester();
        requester.args = objArr;
        requester.location = inputFileLocation;
        requester.locationKey = str2;
        ArrayList<Requester> arrayList4 = this.locationRequester.get(str2);
        if (arrayList4 == null) {
            arrayList4 = new ArrayList<>();
            this.locationRequester.put(str2, arrayList4);
            i = 1;
        }
        arrayList4.add(requester);
        ArrayList<Requester> arrayList5 = this.parentRequester.get(keyForParentObject);
        if (arrayList5 == null) {
            arrayList5 = new ArrayList<>();
            this.parentRequester.put(keyForParentObject, arrayList5);
            i++;
        }
        arrayList5.add(requester);
        if (i != 2) {
            return;
        }
        if (obj instanceof String) {
            String str3 = (String) obj;
            str = "wallpaper";
            if (!"wallpaper".equals(str3)) {
                str = "gif";
                if (!str3.startsWith("gif")) {
                    str = "recent";
                    if (!"recent".equals(str3)) {
                        str = "fav";
                        if (!"fav".equals(str3)) {
                            str = "update";
                            if (!"update".equals(str3)) {
                                str = str2;
                            }
                        }
                    }
                }
            }
        }
        cleanupCache();
        CachedResult cachedResponse = getCachedResponse(str);
        if (cachedResponse != null) {
            fileRefController = this;
            if (fileRefController.onRequestComplete(str2, keyForParentObject, cachedResponse.response, null, false, true)) {
                return;
            } else {
                fileRefController.responseCache.remove(str2);
            }
        } else {
            fileRefController = this;
            CachedResult cachedResponse2 = fileRefController.getCachedResponse(keyForParentObject);
            if (cachedResponse2 != null) {
                if (fileRefController.onRequestComplete(str2, keyForParentObject, cachedResponse2.response, null, false, true)) {
                    return;
                } else {
                    fileRefController.responseCache.remove(keyForParentObject);
                }
            }
        }
        fileRefController.requestReferenceFromServer(obj, str2, keyForParentObject, objArr);
    }

    private String getObjectString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            return "story(dialogId=" + storyItem.dialogId + " id=" + storyItem.id + ")";
        }
        if (!(obj instanceof MessageObject)) {
            if (obj == null) {
                return null;
            }
            return obj.getClass().getSimpleName();
        }
        MessageObject messageObject = (MessageObject) obj;
        return "message(dialogId=" + messageObject.getDialogId() + "messageId" + messageObject.getId() + ")";
    }

    private void broadcastWaitersData(ArrayList<Waiter> arrayList, TLObject tLObject, TLRPC.TL_error tL_error) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Waiter waiter = arrayList.get(i);
            onRequestComplete(waiter.locationKey, waiter.parentKey, tLObject, tL_error, i == size + (-1), false);
            i++;
        }
        arrayList.clear();
    }

    private void requestReferenceFromServer(Object obj, final String str, final String str2, Object[] objArr) {
        if (obj instanceof StoriesController.BotPreview) {
            StoriesController.BotPreview botPreview = (StoriesController.BotPreview) obj;
            StoriesController.BotPreviewsList botPreviewsList = botPreview.list;
            if (botPreviewsList == null) {
                sendErrorToObject(objArr, 0);
                return;
            } else {
                botPreviewsList.requestReference(botPreview, new Utilities.Callback() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda21
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        this.f$0.lambda$requestReferenceFromServer$1(str, str2, (StoriesController.BotPreview) obj2);
                    }
                });
                return;
            }
        }
        if (obj instanceof TL_stories.StoryItem) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
            tL_stories_getStoriesByID.peer = getMessagesController().getInputPeer(storyItem.dialogId);
            tL_stories_getStoriesByID.id.add(Integer.valueOf(storyItem.id));
            getConnectionsManager().sendRequest(tL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda32
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$2(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_help_premiumPromo) {
            getConnectionsManager().sendRequest(new TLRPC.TL_help_getPremiumPromo(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda41
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$3(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_availableReaction) {
            TLRPC.TL_messages_getAvailableReactions tL_messages_getAvailableReactions = new TLRPC.TL_messages_getAvailableReactions();
            tL_messages_getAvailableReactions.hash = 0;
            getConnectionsManager().sendRequest(tL_messages_getAvailableReactions, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda42
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$4(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TL_bots.BotInfo) {
            TLRPC.TL_users_getFullUser tL_users_getFullUser = new TLRPC.TL_users_getFullUser();
            tL_users_getFullUser.id = getMessagesController().getInputUser(((TL_bots.BotInfo) obj).user_id);
            getConnectionsManager().sendRequest(tL_users_getFullUser, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda43
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$5(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_attachMenuBot) {
            TLRPC.TL_messages_getAttachMenuBot tL_messages_getAttachMenuBot = new TLRPC.TL_messages_getAttachMenuBot();
            tL_messages_getAttachMenuBot.bot = getMessagesController().getInputUser(((TLRPC.TL_attachMenuBot) obj).bot_id);
            getConnectionsManager().sendRequest(tL_messages_getAttachMenuBot, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda44
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$6(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            long channelId = messageObject.getChannelId();
            if (messageObject.scheduled) {
                TLRPC.TL_messages_getScheduledMessages tL_messages_getScheduledMessages = new TLRPC.TL_messages_getScheduledMessages();
                tL_messages_getScheduledMessages.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
                tL_messages_getScheduledMessages.id.add(Integer.valueOf(messageObject.getRealId()));
                getConnectionsManager().sendRequest(tL_messages_getScheduledMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda45
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$7(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            if (messageObject.isQuickReply()) {
                TLRPC.TL_messages_getQuickReplyMessages tL_messages_getQuickReplyMessages = new TLRPC.TL_messages_getQuickReplyMessages();
                tL_messages_getQuickReplyMessages.shortcut_id = messageObject.getQuickReplyId();
                tL_messages_getQuickReplyMessages.flags |= 1;
                tL_messages_getQuickReplyMessages.id.add(Integer.valueOf(messageObject.getRealId()));
                getConnectionsManager().sendRequest(tL_messages_getQuickReplyMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda46
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$8(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            if (channelId != 0) {
                TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
                tL_channels_getMessages.channel = getMessagesController().getInputChannel(channelId);
                tL_channels_getMessages.id.add(Integer.valueOf(messageObject.getRealId()));
                getConnectionsManager().sendRequest(tL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda47
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$9(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
            tL_messages_getMessages.id.add(Integer.valueOf(messageObject.getRealId()));
            getConnectionsManager().sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda48
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$10(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_wallPaper) {
            TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) obj;
            TL_account.getWallPaper getwallpaper = new TL_account.getWallPaper();
            TLRPC.TL_inputWallPaper tL_inputWallPaper = new TLRPC.TL_inputWallPaper();
            tL_inputWallPaper.id = tL_wallPaper.id;
            tL_inputWallPaper.access_hash = tL_wallPaper.access_hash;
            getwallpaper.wallpaper = tL_inputWallPaper;
            getConnectionsManager().sendRequest(getwallpaper, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda22
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$11(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_theme) {
            TLRPC.TL_theme tL_theme = (TLRPC.TL_theme) obj;
            TL_account.getTheme gettheme = new TL_account.getTheme();
            TLRPC.TL_inputTheme tL_inputTheme = new TLRPC.TL_inputTheme();
            tL_inputTheme.id = tL_theme.id;
            tL_inputTheme.access_hash = tL_theme.access_hash;
            gettheme.theme = tL_inputTheme;
            gettheme.format = "android";
            getConnectionsManager().sendRequest(gettheme, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda23
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$12(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.WebPage) {
            TLRPC.TL_messages_getWebPage tL_messages_getWebPage = new TLRPC.TL_messages_getWebPage();
            tL_messages_getWebPage.url = ((TLRPC.WebPage) obj).url;
            tL_messages_getWebPage.hash = 0;
            getConnectionsManager().sendRequest(tL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda24
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$13(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.User) {
            TLRPC.TL_users_getUsers tL_users_getUsers = new TLRPC.TL_users_getUsers();
            tL_users_getUsers.id.add(getMessagesController().getInputUser((TLRPC.User) obj));
            getConnectionsManager().sendRequest(tL_users_getUsers, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda25
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$14(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) obj;
            if (chat instanceof TLRPC.TL_chat) {
                TLRPC.TL_messages_getChats tL_messages_getChats = new TLRPC.TL_messages_getChats();
                tL_messages_getChats.id.add(Long.valueOf(chat.id));
                getConnectionsManager().sendRequest(tL_messages_getChats, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda26
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$15(str, str2, tLObject, tL_error);
                    }
                });
                return;
            } else {
                if ((chat instanceof TLRPC.TL_channel) || (chat instanceof TLRPC.TL_community)) {
                    TLRPC.TL_channels_getChannels tL_channels_getChannels = new TLRPC.TL_channels_getChannels();
                    tL_channels_getChannels.id.add(MessagesController.getInputChannel(chat));
                    getConnectionsManager().sendRequest(tL_channels_getChannels, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda27
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$16(str, str2, tLObject, tL_error);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if (obj instanceof String) {
            String str3 = (String) obj;
            if ("wallpaper".equals(str3)) {
                if (this.wallpaperWaiters.isEmpty()) {
                    getConnectionsManager().sendRequest(new TL_account.getWallPapers(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda28
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$17(tLObject, tL_error);
                        }
                    });
                }
                this.wallpaperWaiters.add(new Waiter(str, str2));
                return;
            }
            if (str3.startsWith("gif")) {
                if (this.savedGifsWaiters.isEmpty()) {
                    getConnectionsManager().sendRequest(new TLRPC.TL_messages_getSavedGifs(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda29
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$18(tLObject, tL_error);
                        }
                    });
                }
                this.savedGifsWaiters.add(new Waiter(str, str2));
                return;
            }
            if ("recent".equals(str3)) {
                if (this.recentStickersWaiter.isEmpty()) {
                    getConnectionsManager().sendRequest(new TLRPC.TL_messages_getRecentStickers(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda30
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$19(tLObject, tL_error);
                        }
                    });
                }
                this.recentStickersWaiter.add(new Waiter(str, str2));
                return;
            }
            if ("fav".equals(str3)) {
                if (this.favStickersWaiter.isEmpty()) {
                    getConnectionsManager().sendRequest(new TLRPC.TL_messages_getFavedStickers(), new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda31
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$20(tLObject, tL_error);
                        }
                    });
                }
                this.favStickersWaiter.add(new Waiter(str, str2));
                return;
            }
            if ("update".equals(str3)) {
                UpdaterUtils.getAppUpdate(new Utilities.Callback2() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda33
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj2, Object obj3) {
                        this.f$0.lambda$requestReferenceFromServer$21(str, str2, (TLRPC.TL_help_appUpdate) obj2, (TLRPC.TL_error) obj3);
                    }
                });
                return;
            }
            if (str3.startsWith("avatar_")) {
                long jLongValue = Utilities.parseLong(str3).longValue();
                if (jLongValue > 0) {
                    TLRPC.TL_photos_getUserPhotos tL_photos_getUserPhotos = new TLRPC.TL_photos_getUserPhotos();
                    tL_photos_getUserPhotos.limit = 80;
                    tL_photos_getUserPhotos.offset = 0;
                    tL_photos_getUserPhotos.max_id = 0L;
                    tL_photos_getUserPhotos.user_id = getMessagesController().getInputUser(jLongValue);
                    getConnectionsManager().sendRequest(tL_photos_getUserPhotos, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda34
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$22(str, str2, tLObject, tL_error);
                        }
                    });
                    return;
                }
                TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterChatPhotos();
                tL_messages_search.limit = 80;
                tL_messages_search.offset_id = 0;
                tL_messages_search.f871q = _UrlKt.FRAGMENT_ENCODE_SET;
                tL_messages_search.peer = getMessagesController().getInputPeer(jLongValue);
                getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda35
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$requestReferenceFromServer$23(str, str2, tLObject, tL_error);
                    }
                });
                return;
            }
            if (str3.startsWith("sent_")) {
                String[] strArrSplit = str3.split("_");
                if (strArrSplit.length >= 3) {
                    long jLongValue2 = Utilities.parseLong(strArrSplit[1]).longValue();
                    if (jLongValue2 != 0) {
                        TLRPC.TL_channels_getMessages tL_channels_getMessages2 = new TLRPC.TL_channels_getMessages();
                        tL_channels_getMessages2.channel = getMessagesController().getInputChannel(jLongValue2);
                        tL_channels_getMessages2.id.add(Utilities.parseInt((CharSequence) strArrSplit[2]));
                        getConnectionsManager().sendRequest(tL_channels_getMessages2, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda36
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                this.f$0.lambda$requestReferenceFromServer$24(str, str2, tLObject, tL_error);
                            }
                        });
                        return;
                    }
                    TLRPC.TL_messages_getMessages tL_messages_getMessages2 = new TLRPC.TL_messages_getMessages();
                    tL_messages_getMessages2.id.add(Utilities.parseInt((CharSequence) strArrSplit[2]));
                    getConnectionsManager().sendRequest(tL_messages_getMessages2, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda37
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$requestReferenceFromServer$25(str, str2, tLObject, tL_error);
                        }
                    });
                    return;
                }
                sendErrorToObject(objArr, 0);
                return;
            }
            sendErrorToObject(objArr, 0);
            return;
        }
        if (obj instanceof TLRPC.TL_messages_stickerSet) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet = new TLRPC.TL_messages_getStickerSet();
            TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
            tL_messages_getStickerSet.stickerset = tL_inputStickerSetID;
            TLRPC.StickerSet stickerSet = ((TLRPC.TL_messages_stickerSet) obj).set;
            tL_inputStickerSetID.id = stickerSet.id;
            tL_inputStickerSetID.access_hash = stickerSet.access_hash;
            getConnectionsManager().sendRequest(tL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda38
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$26(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.StickerSetCovered) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet2 = new TLRPC.TL_messages_getStickerSet();
            TLRPC.TL_inputStickerSetID tL_inputStickerSetID2 = new TLRPC.TL_inputStickerSetID();
            tL_messages_getStickerSet2.stickerset = tL_inputStickerSetID2;
            TLRPC.StickerSet stickerSet2 = ((TLRPC.StickerSetCovered) obj).set;
            tL_inputStickerSetID2.id = stickerSet2.id;
            tL_inputStickerSetID2.access_hash = stickerSet2.access_hash;
            getConnectionsManager().sendRequest(tL_messages_getStickerSet2, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda39
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$27(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.InputStickerSet) {
            TLRPC.TL_messages_getStickerSet tL_messages_getStickerSet3 = new TLRPC.TL_messages_getStickerSet();
            tL_messages_getStickerSet3.stickerset = (TLRPC.InputStickerSet) obj;
            getConnectionsManager().sendRequest(tL_messages_getStickerSet3, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda40
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$requestReferenceFromServer$28(str, str2, tLObject, tL_error);
                }
            });
            return;
        }
        sendErrorToObject(objArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$1(final String str, final String str2, final StoriesController.BotPreview botPreview) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$requestReferenceFromServer$0(str, str2, botPreview);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$0(String str, String str2, StoriesController.BotPreview botPreview) {
        onRequestComplete(str, str2, botPreview, null, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$2(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$3(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (tLObject instanceof TLRPC.TL_help_premiumPromo) {
            getMediaDataController().processLoadedPremiumPromo((TLRPC.TL_help_premiumPromo) tLObject, iCurrentTimeMillis, false);
        }
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$4(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$5(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$6(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$7(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$8(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$9(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$10(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$11(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$12(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$13(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$14(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$15(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$16(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$17(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.wallpaperWaiters, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$18(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.savedGifsWaiters, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$19(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.recentStickersWaiter, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$20(TLObject tLObject, TLRPC.TL_error tL_error) {
        broadcastWaitersData(this.favStickersWaiter, tLObject, tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$21(String str, String str2, TLRPC.TL_help_appUpdate tL_help_appUpdate, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tL_help_appUpdate, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$22(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$23(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$24(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$25(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$26(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$27(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestReferenceFromServer$28(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error) {
        onRequestComplete(str, str2, tLObject, tL_error, true, false);
    }

    private boolean isSameReference(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    private boolean onUpdateObjectReference(final Requester requester, byte[] bArr, TLRPC.InputFileLocation inputFileLocation, boolean z) {
        String strBytesToHex;
        Object obj;
        Object obj2;
        if (BuildVars.DEBUG_VERSION) {
            FileLog.m895d("fileref updated for " + requester.args[0] + " " + requester.locationKey);
        }
        if (requester.args[0] instanceof TL_stories.TL_storyItem) {
            ((TL_stories.TL_storyItem) requester.args[0]).media.document.file_reference = bArr;
            return true;
        }
        String strBytesToHex2 = null;
        if (requester.args[0] instanceof TLRPC.TL_inputSingleMedia) {
            final TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) requester.args[1];
            final Object[] objArr = this.multiMediaCache.get(tL_messages_sendMultiMedia);
            if (objArr == null) {
                return true;
            }
            TLRPC.TL_inputSingleMedia tL_inputSingleMedia = (TLRPC.TL_inputSingleMedia) requester.args[0];
            TLRPC.InputMedia inputMedia = tL_inputSingleMedia.media;
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                if (z && isSameReference(tL_inputMediaDocument.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument.id.file_reference = bArr;
            } else if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = (TLRPC.TL_inputMediaPhoto) inputMedia;
                if (z && isSameReference(tL_inputMediaPhoto.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto.id.file_reference = bArr;
            }
            int iIndexOf = tL_messages_sendMultiMedia.multi_media.indexOf(tL_inputSingleMedia);
            if (iIndexOf < 0) {
                return true;
            }
            ArrayList arrayList = (ArrayList) objArr[3];
            arrayList.set(iIndexOf, null);
            boolean z2 = true;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) != null) {
                    z2 = false;
                }
            }
            if (z2) {
                this.multiMediaCache.remove(tL_messages_sendMultiMedia);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onUpdateObjectReference$29(tL_messages_sendMultiMedia, objArr);
                    }
                });
            }
        } else if (requester.args.length >= 2 && (requester.args[1] instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) requester.args[1]).media instanceof TLRPC.TL_inputMediaPaidMedia) && ((requester.args[0] instanceof TLRPC.TL_inputMediaPhoto) || (requester.args[0] instanceof TLRPC.TL_inputMediaDocument))) {
            final TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) requester.args[1];
            final Object[] objArr2 = this.multiMediaCache.get(tL_messages_sendMedia);
            if (objArr2 == null) {
                return true;
            }
            if (requester.args[0] instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) requester.args[0];
                if (z && isSameReference(tL_inputMediaDocument2.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument2.id.file_reference = bArr;
                obj2 = tL_inputMediaDocument2;
            } else if (requester.args[0] instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto2 = (TLRPC.TL_inputMediaPhoto) requester.args[0];
                if (z && isSameReference(tL_inputMediaPhoto2.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto2.id.file_reference = bArr;
                obj2 = tL_inputMediaPhoto2;
            } else {
                obj2 = null;
            }
            int iIndexOf2 = ((TLRPC.TL_inputMediaPaidMedia) tL_messages_sendMedia.media).extended_media.indexOf(obj2);
            if (iIndexOf2 < 0) {
                return true;
            }
            ArrayList arrayList2 = (ArrayList) objArr2[3];
            arrayList2.set(iIndexOf2, null);
            boolean z3 = true;
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                if (arrayList2.get(i2) != null) {
                    z3 = false;
                }
            }
            if (z3) {
                this.multiMediaCache.remove(tL_messages_sendMedia);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onUpdateObjectReference$30(tL_messages_sendMedia, objArr2);
                    }
                });
            }
        } else if (requester.args.length >= 2 && (requester.args[1] instanceof TLRPC.TL_ephemeral_sendMessage) && (((TLRPC.TL_ephemeral_sendMessage) requester.args[1]).media instanceof TLRPC.TL_inputMediaPaidMedia) && ((requester.args[0] instanceof TLRPC.TL_inputMediaPhoto) || (requester.args[0] instanceof TLRPC.TL_inputMediaDocument))) {
            final TLRPC.TL_ephemeral_sendMessage tL_ephemeral_sendMessage = (TLRPC.TL_ephemeral_sendMessage) requester.args[1];
            final Object[] objArr3 = this.multiMediaCache.get(tL_ephemeral_sendMessage);
            if (objArr3 == null) {
                return true;
            }
            if (requester.args[0] instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument3 = (TLRPC.TL_inputMediaDocument) requester.args[0];
                if (z && isSameReference(tL_inputMediaDocument3.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument3.id.file_reference = bArr;
                obj = tL_inputMediaDocument3;
            } else if (requester.args[0] instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto3 = (TLRPC.TL_inputMediaPhoto) requester.args[0];
                if (z && isSameReference(tL_inputMediaPhoto3.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto3.id.file_reference = bArr;
                obj = tL_inputMediaPhoto3;
            } else {
                obj = null;
            }
            int iIndexOf3 = ((TLRPC.TL_inputMediaPaidMedia) tL_ephemeral_sendMessage.media).extended_media.indexOf(obj);
            if (iIndexOf3 < 0) {
                return true;
            }
            ArrayList arrayList3 = (ArrayList) objArr3[3];
            arrayList3.set(iIndexOf3, null);
            boolean z4 = true;
            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                if (arrayList3.get(i3) != null) {
                    z4 = false;
                }
            }
            if (z4) {
                this.multiMediaCache.remove(tL_ephemeral_sendMessage);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onUpdateObjectReference$31(tL_ephemeral_sendMessage, objArr3);
                    }
                });
            }
        } else if (requester.args[0] instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_messages_sendMedia) requester.args[0]).media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument4 = (TLRPC.TL_inputMediaDocument) inputMedia2;
                if (z && isSameReference(tL_inputMediaDocument4.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument4.id.file_reference = bArr;
            } else if (inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto4 = (TLRPC.TL_inputMediaPhoto) inputMedia2;
                if (z && isSameReference(tL_inputMediaPhoto4.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto4.id.file_reference = bArr;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdateObjectReference$32(requester);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_ephemeral_sendMessage) {
            TLRPC.InputMedia inputMedia3 = ((TLRPC.TL_ephemeral_sendMessage) requester.args[0]).media;
            if (inputMedia3 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument5 = (TLRPC.TL_inputMediaDocument) inputMedia3;
                if (z && isSameReference(tL_inputMediaDocument5.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument5.id.file_reference = bArr;
            } else if (inputMedia3 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto5 = (TLRPC.TL_inputMediaPhoto) inputMedia3;
                if (z && isSameReference(tL_inputMediaPhoto5.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto5.id.file_reference = bArr;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdateObjectReference$33(requester);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_editMessage) {
            TLRPC.InputMedia inputMedia4 = ((TLRPC.TL_messages_editMessage) requester.args[0]).media;
            if (inputMedia4 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument6 = (TLRPC.TL_inputMediaDocument) inputMedia4;
                if (z && isSameReference(tL_inputMediaDocument6.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument6.id.file_reference = bArr;
            } else if (inputMedia4 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto6 = (TLRPC.TL_inputMediaPhoto) inputMedia4;
                if (z && isSameReference(tL_inputMediaPhoto6.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto6.id.file_reference = bArr;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdateObjectReference$34(requester);
                }
            });
        } else if ((requester.args[0] instanceof TLRPC.InputPhoto) || (requester.args[0] instanceof TLRPC.InputDocument)) {
            if (requester.args[0] instanceof TLRPC.InputPhoto) {
                TLRPC.InputPhoto inputPhoto = (TLRPC.InputPhoto) requester.args[0];
                if (z && isSameReference(inputPhoto.file_reference, bArr)) {
                    return false;
                }
                inputPhoto.file_reference = bArr;
            } else {
                TLRPC.InputDocument inputDocument = (TLRPC.InputDocument) requester.args[0];
                if (z && isSameReference(inputDocument.file_reference, bArr)) {
                    return false;
                }
                inputDocument.file_reference = bArr;
            }
            if (requester.args.length > 1 && (requester.args[1] instanceof Runnable)) {
                AndroidUtilities.runOnUIThread((Runnable) requester.args[1]);
            }
        } else if (requester.args[0] instanceof TLRPC.TL_messages_addPollAnswer) {
            TLRPC.InputMedia inputMedia5 = ((TLRPC.TL_messages_addPollAnswer) requester.args[0]).answer.input_media;
            if (inputMedia5 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument7 = (TLRPC.TL_inputMediaDocument) inputMedia5;
                if (z && isSameReference(tL_inputMediaDocument7.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument7.id.file_reference = bArr;
            } else if (inputMedia5 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto7 = (TLRPC.TL_inputMediaPhoto) inputMedia5;
                if (z && isSameReference(tL_inputMediaPhoto7.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto7.id.file_reference = bArr;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUpdateObjectReference$35(requester);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_saveGif) {
            TLRPC.TL_messages_saveGif tL_messages_saveGif = (TLRPC.TL_messages_saveGif) requester.args[0];
            if (z && isSameReference(tL_messages_saveGif.id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveGif.id.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_messages_saveGif, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda18
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$zLpXUCCmmkTcmIXKtdR8GqrnykY(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_saveRecentSticker) {
            TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = (TLRPC.TL_messages_saveRecentSticker) requester.args[0];
            if (z && isSameReference(tL_messages_saveRecentSticker.id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveRecentSticker.id.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_messages_saveRecentSticker, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda19
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$bP6KBJG6eRnD1L1Fw9rrtHGm3Ic(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_stickers_addStickerToSet) {
            TLRPC.TL_stickers_addStickerToSet tL_stickers_addStickerToSet = (TLRPC.TL_stickers_addStickerToSet) requester.args[0];
            if (z && isSameReference(tL_stickers_addStickerToSet.sticker.document.file_reference, bArr)) {
                return false;
            }
            tL_stickers_addStickerToSet.sticker.document.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_stickers_addStickerToSet, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda20
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$ZToGQFtw2zognfQdJ83dZILab_A(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_faveSticker) {
            TLRPC.TL_messages_faveSticker tL_messages_faveSticker = (TLRPC.TL_messages_faveSticker) requester.args[0];
            if (z && isSameReference(tL_messages_faveSticker.id.file_reference, bArr)) {
                return false;
            }
            tL_messages_faveSticker.id.file_reference = bArr;
            getConnectionsManager().sendRequest(tL_messages_faveSticker, new RequestDelegate() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda11
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    FileRefController.$r8$lambda$2OHiWI1UXGwPuBabnEX2xeeojUw(tLObject, tL_error);
                }
            });
        } else if (requester.args[0] instanceof TLRPC.TL_messages_getAttachedStickers) {
            TLRPC.TL_messages_getAttachedStickers tL_messages_getAttachedStickers = (TLRPC.TL_messages_getAttachedStickers) requester.args[0];
            TLRPC.InputStickeredMedia inputStickeredMedia = tL_messages_getAttachedStickers.media;
            if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaDocument) {
                TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = (TLRPC.TL_inputStickeredMediaDocument) inputStickeredMedia;
                if (z && isSameReference(tL_inputStickeredMediaDocument.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaDocument.id.file_reference = bArr;
            } else if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaPhoto) {
                TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = (TLRPC.TL_inputStickeredMediaPhoto) inputStickeredMedia;
                if (z && isSameReference(tL_inputStickeredMediaPhoto.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaPhoto.id.file_reference = bArr;
            }
            getConnectionsManager().sendRequest(tL_messages_getAttachedStickers, (RequestDelegate) requester.args[1]);
        } else if (requester.args[1] instanceof FileLoadOperation) {
            FileLoadOperation fileLoadOperation = (FileLoadOperation) requester.args[1];
            if (inputFileLocation != null) {
                if (z && isSameReference(fileLoadOperation.location.file_reference, inputFileLocation.file_reference)) {
                    return false;
                }
                strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                fileLoadOperation.location = inputFileLocation;
                if (BuildVars.LOGS_ENABLED) {
                    strBytesToHex2 = Utilities.bytesToHex(inputFileLocation.file_reference);
                }
            } else {
                if (z && isSameReference(requester.location.file_reference, bArr)) {
                    return false;
                }
                strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                TLRPC.InputFileLocation inputFileLocation2 = fileLoadOperation.location;
                requester.location.file_reference = bArr;
                inputFileLocation2.file_reference = bArr;
                if (BuildVars.LOGS_ENABLED) {
                    strBytesToHex2 = Utilities.bytesToHex(fileLoadOperation.location.file_reference);
                }
            }
            fileLoadOperation.requestingReference = false;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("debug_loading: " + fileLoadOperation.getCacheFileFinal().getName() + " " + strBytesToHex + " " + strBytesToHex2 + " reference updated resume download");
            }
            fileLoadOperation.startDownloadRequest(-1);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$29(TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$64(tL_messages_sendMultiMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$30(TLRPC.TL_messages_sendMedia tL_messages_sendMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$64(tL_messages_sendMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$31(TLRPC.TL_ephemeral_sendMessage tL_ephemeral_sendMessage, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$64(tL_ephemeral_sendMessage, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$32(Requester requester) {
        getSendMessagesHelper().lambda$performSendMessageRequest$82((TLObject) requester.args[0], (MessageObject) requester.args[1], (String) requester.args[2], (SendMessagesHelper.DelayedMessage) requester.args[3], ((Boolean) requester.args[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) requester.args[5], null, null, ((Boolean) requester.args[6]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$33(Requester requester) {
        getSendMessagesHelper().lambda$performSendMessageRequest$82((TLObject) requester.args[0], (MessageObject) requester.args[1], (String) requester.args[2], (SendMessagesHelper.DelayedMessage) requester.args[3], ((Boolean) requester.args[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) requester.args[5], null, null, ((Boolean) requester.args[6]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$34(Requester requester) {
        getSendMessagesHelper().lambda$performSendMessageRequest$82((TLObject) requester.args[0], (MessageObject) requester.args[1], (String) requester.args[2], (SendMessagesHelper.DelayedMessage) requester.args[3], ((Boolean) requester.args[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) requester.args[5], null, null, ((Boolean) requester.args[6]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateObjectReference$35(Requester requester) {
        getSendMessagesHelper().lambda$performSendMessageRequest$82((TLObject) requester.args[0], (MessageObject) requester.args[1], (String) requester.args[2], (SendMessagesHelper.DelayedMessage) requester.args[3], ((Boolean) requester.args[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) requester.args[5], null, null, ((Boolean) requester.args[6]).booleanValue());
    }

    private void sendErrorToObject(final Object[] objArr, int i) {
        Object obj = objArr[0];
        if (obj instanceof TLRPC.TL_inputSingleMedia) {
            final TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) objArr[1];
            final Object[] objArr2 = this.multiMediaCache.get(tL_messages_sendMultiMedia);
            if (objArr2 != null) {
                this.multiMediaCache.remove(tL_messages_sendMultiMedia);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$sendErrorToObject$40(tL_messages_sendMultiMedia, objArr2);
                    }
                });
                return;
            }
            return;
        }
        if ((obj instanceof TLRPC.TL_inputMediaDocument) || (obj instanceof TLRPC.TL_inputMediaPhoto)) {
            Object obj2 = objArr[1];
            if (obj2 instanceof TLRPC.TL_messages_sendMedia) {
                final TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) obj2;
                final Object[] objArr3 = this.multiMediaCache.get(tL_messages_sendMedia);
                if (objArr3 != null) {
                    this.multiMediaCache.remove(tL_messages_sendMedia);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendErrorToObject$41(tL_messages_sendMedia, objArr3);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if ((obj instanceof TLRPC.TL_inputMediaDocument) || (obj instanceof TLRPC.TL_inputMediaPhoto)) {
            Object obj3 = objArr[1];
            if (obj3 instanceof TLRPC.TL_ephemeral_sendMessage) {
                final TLRPC.TL_ephemeral_sendMessage tL_ephemeral_sendMessage = (TLRPC.TL_ephemeral_sendMessage) obj3;
                final Object[] objArr4 = this.multiMediaCache.get(tL_ephemeral_sendMessage);
                if (objArr4 != null) {
                    this.multiMediaCache.remove(tL_ephemeral_sendMessage);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendErrorToObject$42(tL_ephemeral_sendMessage, objArr4);
                        }
                    });
                    return;
                }
                return;
            }
        }
        if (((obj instanceof TLRPC.TL_messages_sendMedia) && !(((TLRPC.TL_messages_sendMedia) obj).media instanceof TLRPC.TL_inputMediaPaidMedia) && !(((TLRPC.TL_messages_sendMedia) obj).media instanceof TLRPC.TL_inputMediaPoll)) || (obj instanceof TLRPC.TL_messages_editMessage) || (obj instanceof TLRPC.TL_messages_addPollAnswer)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendErrorToObject$43(objArr);
                }
            });
            return;
        }
        if (((obj instanceof TLRPC.TL_ephemeral_sendMessage) && !(((TLRPC.TL_ephemeral_sendMessage) obj).media instanceof TLRPC.TL_inputMediaPaidMedia) && !(((TLRPC.TL_ephemeral_sendMessage) obj).media instanceof TLRPC.TL_inputMediaPoll)) || (obj instanceof TLRPC.TL_messages_editMessage) || (obj instanceof TLRPC.TL_messages_addPollAnswer)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendErrorToObject$44(objArr);
                }
            });
            return;
        }
        if (obj instanceof TLRPC.TL_messages_saveGif) {
            return;
        }
        if (obj instanceof TLRPC.TL_messages_saveRecentSticker) {
            return;
        }
        if (obj instanceof TLRPC.TL_stickers_addStickerToSet) {
            return;
        }
        if (obj instanceof TLRPC.TL_messages_faveSticker) {
            return;
        }
        if (obj instanceof TLRPC.TL_messages_getAttachedStickers) {
            getConnectionsManager().sendRequest((TLRPC.TL_messages_getAttachedStickers) obj, (RequestDelegate) objArr[1]);
            return;
        }
        Object obj4 = objArr[1];
        if (obj4 instanceof FileLoadOperation) {
            FileLoadOperation fileLoadOperation = (FileLoadOperation) obj4;
            fileLoadOperation.requestingReference = false;
            FileLog.m896e("debug_loading: " + fileLoadOperation.getCacheFileFinal().getName() + " reference can't update: fail operation ");
            fileLoadOperation.onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$40(TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$64(tL_messages_sendMultiMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$41(TLRPC.TL_messages_sendMedia tL_messages_sendMedia, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$64(tL_messages_sendMedia, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$42(TLRPC.TL_ephemeral_sendMessage tL_ephemeral_sendMessage, Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequestMulti$64(tL_ephemeral_sendMessage, (ArrayList) objArr[1], (ArrayList) objArr[2], null, (SendMessagesHelper.DelayedMessage) objArr[4], ((Boolean) objArr[5]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$43(Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequest$82((TLObject) objArr[0], (MessageObject) objArr[1], (String) objArr[2], (SendMessagesHelper.DelayedMessage) objArr[3], ((Boolean) objArr[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) objArr[5], null, null, ((Boolean) objArr[6]).booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendErrorToObject$44(Object[] objArr) {
        getSendMessagesHelper().lambda$performSendMessageRequest$82((TLObject) objArr[0], (MessageObject) objArr[1], (String) objArr[2], (SendMessagesHelper.DelayedMessage) objArr[3], ((Boolean) objArr[4]).booleanValue(), (SendMessagesHelper.DelayedMessage) objArr[5], null, null, ((Boolean) objArr[6]).booleanValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0294, code lost:
    
        r4 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0875  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0886  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x08a1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0094 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0095  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v47 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean onRequestComplete(String str, String str2, TLObject tLObject, TLRPC.TL_error tL_error, boolean z, boolean z2) {
        String str3;
        String str4;
        TLRPC.TL_error tL_error2;
        TLObject tLObject2;
        boolean z3;
        ArrayList<Requester> arrayList;
        Requester requester;
        boolean[] zArr;
        boolean[] zArr2;
        Requester requester2;
        TL_stories.StoryItem storyItem;
        byte[] fileReference;
        byte[] bArr;
        TLRPC.MessageMedia messageMedia;
        TLRPC.Document document;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        TLRPC.Document document2;
        Object obj;
        Vector vector;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        byte[] fileReference2;
        ArrayList<Requester> arrayList2;
        TLObject tLObject3;
        final FileRefController fileRefController = this;
        TLObject tLObject4 = tLObject;
        boolean z4 = tLObject4 instanceof TLRPC.TL_help_premiumPromo;
        if (z4) {
            str4 = "premium_promo";
        } else if (tLObject4 instanceof TL_account.TL_wallPapers) {
            str4 = "wallpaper";
        } else if (tLObject4 instanceof TLRPC.TL_messages_savedGifs) {
            str4 = "gif";
        } else if (tLObject4 instanceof TLRPC.TL_messages_recentStickers) {
            str4 = "recent";
        } else if (tLObject4 instanceof TLRPC.TL_messages_favedStickers) {
            str4 = "fav";
        } else {
            str3 = str2;
            int i6 = 1;
            if (str2 != null || (arrayList2 = fileRefController.parentRequester.get(str2)) == null) {
                tL_error2 = tL_error;
                tLObject2 = tLObject4;
                z3 = false;
            } else {
                int size = arrayList2.size();
                int i7 = 0;
                z3 = false;
                while (i7 < size) {
                    Requester requester3 = arrayList2.get(i7);
                    if (requester3.completed) {
                        tLObject3 = tLObject4;
                    } else {
                        tLObject3 = tLObject4;
                        if (fileRefController.onRequestComplete(requester3.locationKey, null, tLObject4, tL_error, z && !z3, z2)) {
                            z3 = true;
                        }
                    }
                    i7++;
                    tLObject4 = tLObject3;
                }
                tL_error2 = tL_error;
                tLObject2 = tLObject4;
                if (z3) {
                    fileRefController.putReponseToCache(str3, tLObject2);
                }
                fileRefController.parentRequester.remove(str2);
            }
            arrayList = fileRefController.locationRequester.get(str);
            if (arrayList != null) {
                return z3;
            }
            int size2 = arrayList.size();
            boolean[] zArr3 = null;
            TLRPC.InputFileLocation[] inputFileLocationArr = null;
            byte[] fileReference3 = null;
            int i8 = 0;
            while (i8 < size2) {
                Requester requester4 = arrayList.get(i8);
                if (requester4.completed) {
                    i3 = i6;
                } else {
                    if (tL_error2 != null && BuildVars.LOGS_ENABLED && requester4.args.length > i6 && (requester4.args[i6] instanceof FileLoadOperation)) {
                        FileLog.m896e("debug_loading: " + ((FileLoadOperation) requester4.args[i6]).getCacheFileFinal().getName() + " can't update file reference: " + tL_error2.code + " " + tL_error2.text);
                    }
                    if ((requester4.location instanceof TLRPC.TL_inputFileLocation) || (requester4.location instanceof TLRPC.TL_inputPeerPhotoFileLocation)) {
                        inputFileLocationArr = new TLRPC.InputFileLocation[i6];
                        zArr3 = new boolean[i6];
                    }
                    TLRPC.InputFileLocation[] inputFileLocationArr2 = inputFileLocationArr;
                    boolean[] zArr4 = zArr3;
                    requester4.completed = i6;
                    if (tLObject2 instanceof StoriesController.BotPreview) {
                        TLRPC.MessageMedia messageMedia2 = ((StoriesController.BotPreview) tLObject2).media;
                        requester = requester4;
                        zArr = zArr4;
                        TLRPC.Document document3 = messageMedia2.document;
                        if (document3 != null) {
                            fileReference3 = fileRefController.getFileReference(document3, messageMedia2.alt_documents, requester.location, zArr, inputFileLocationArr2);
                        } else {
                            TLRPC.Photo photo3 = messageMedia2.photo;
                            if (photo3 != null) {
                                fileReference3 = fileRefController.getFileReference(photo3, requester.location, zArr, inputFileLocationArr2);
                            }
                        }
                    } else {
                        requester = requester4;
                        zArr = zArr4;
                        if (tLObject2 instanceof TLRPC.messages_Messages) {
                            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject2;
                            if (!messages_messages.messages.isEmpty()) {
                                int size3 = messages_messages.messages.size();
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= size3) {
                                        break;
                                    }
                                    TLRPC.Message message = messages_messages.messages.get(i9);
                                    TLRPC.MessageMedia messageMedia3 = message.media;
                                    int i10 = size3;
                                    if (messageMedia3 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                        TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia3;
                                        i5 = i9;
                                        int i11 = 0;
                                        while (i11 < tL_messageMediaPaidMedia.extended_media.size()) {
                                            TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i11);
                                            int i12 = i11;
                                            if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                                fileReference3 = fileRefController.getFileReferenceForMediaImpl(((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media, requester.location, zArr, inputFileLocationArr2);
                                            }
                                            if (fileReference3 != null) {
                                                break;
                                            }
                                            i11 = i12 + 1;
                                        }
                                    } else {
                                        i5 = i9;
                                        TL_iv.RichMessage richMessage = message.rich_message;
                                        if (richMessage != null) {
                                            fileReference2 = fileRefController.getFileReferenceForRichMessage(richMessage, requester.location, zArr, inputFileLocationArr2);
                                        } else if (messageMedia3 instanceof TLRPC.TL_messageMediaPoll) {
                                            fileReference2 = fileRefController.getFileReferenceForPoll((TLRPC.TL_messageMediaPoll) messageMedia3, requester.location, zArr, inputFileLocationArr2);
                                        } else if (messageMedia3 != null) {
                                            fileReference2 = fileRefController.getFileReferenceForMediaImpl(messageMedia3, requester.location, zArr, inputFileLocationArr2);
                                        } else {
                                            TLRPC.MessageAction messageAction = message.action;
                                            if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto)) {
                                                fileReference2 = fileRefController.getFileReference(messageAction.photo, requester.location, zArr, inputFileLocationArr2);
                                            }
                                        }
                                        fileReference3 = fileReference2;
                                    }
                                    if (fileReference3 == null) {
                                        i9 = i5 + 1;
                                        fileRefController = this;
                                        size3 = i10;
                                    } else if (z) {
                                        i4 = 0;
                                        fileRefController.getMessagesStorage().replaceMessageIfExists(message, messages_messages.users, messages_messages.chats, false);
                                    }
                                }
                                i4 = 0;
                                if (fileReference3 == null) {
                                    getMessagesStorage().replaceMessageIfExists(messages_messages.messages.get(i4), messages_messages.users, messages_messages.chats, true);
                                    if (BuildVars.DEBUG_VERSION) {
                                        FileLog.m895d("file ref not found in messages, replacing message");
                                    }
                                }
                            } else if (BuildVars.DEBUG_VERSION) {
                                FileLog.m895d("empty messages, file ref not found");
                            }
                        } else if (z4) {
                            ArrayList<TLRPC.Document> arrayList3 = ((TLRPC.TL_help_premiumPromo) tLObject2).videos;
                            int size4 = arrayList3.size();
                            int i13 = 0;
                            while (i13 < size4) {
                                int i14 = i13 + 1;
                                fileReference3 = getFileReference(arrayList3.get(i13), null, requester.location, zArr, inputFileLocationArr2);
                                if (fileReference3 != null) {
                                    break;
                                }
                                i13 = i14;
                            }
                        } else if (tLObject2 instanceof TLRPC.TL_messages_availableReactions) {
                            TLRPC.TL_messages_availableReactions tL_messages_availableReactions = (TLRPC.TL_messages_availableReactions) tLObject2;
                            boolean[] zArr5 = zArr;
                            getMediaDataController().processLoadedReactions(tL_messages_availableReactions.reactions, tL_messages_availableReactions.hash, (int) (System.currentTimeMillis() / 1000), false);
                            ArrayList<TLRPC.TL_availableReaction> arrayList4 = tL_messages_availableReactions.reactions;
                            int size5 = arrayList4.size();
                            fileReference3 = fileReference3;
                            int i15 = 0;
                            while (true) {
                                if (i15 >= size5) {
                                    zArr = zArr5;
                                    break;
                                }
                                int i16 = i15 + 1;
                                TLRPC.TL_availableReaction tL_availableReaction = arrayList4.get(i15);
                                ArrayList<TLRPC.TL_availableReaction> arrayList5 = arrayList4;
                                zArr = zArr5;
                                int i17 = size5;
                                byte[] fileReference4 = getFileReference(tL_availableReaction.static_icon, null, requester.location, zArr, inputFileLocationArr2);
                                if (fileReference4 != null || (fileReference4 = getFileReference(tL_availableReaction.appear_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference4 = getFileReference(tL_availableReaction.select_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference4 = getFileReference(tL_availableReaction.activate_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference4 = getFileReference(tL_availableReaction.effect_animation, null, requester.location, zArr, inputFileLocationArr2)) != null || (fileReference4 = getFileReference(tL_availableReaction.around_animation, null, requester.location, zArr, inputFileLocationArr2)) != null) {
                                    break;
                                }
                                fileReference3 = getFileReference(tL_availableReaction.center_icon, null, requester.location, zArr, inputFileLocationArr2);
                                if (fileReference3 != null) {
                                    break;
                                }
                                size5 = i17;
                                i15 = i16;
                                arrayList4 = arrayList5;
                                zArr5 = zArr;
                            }
                        } else {
                            byte[] bArr2 = fileReference3;
                            if (tLObject2 instanceof TLRPC.TL_users_userFull) {
                                TLRPC.TL_users_userFull tL_users_userFull = (TLRPC.TL_users_userFull) tLObject2;
                                getMessagesController().putUsers(tL_users_userFull.users, false);
                                getMessagesController().putChats(tL_users_userFull.chats, false);
                                TLRPC.UserFull userFull = tL_users_userFull.full_user;
                                TL_bots.BotInfo botInfo = userFull.bot_info;
                                if (botInfo != null) {
                                    getMessagesStorage().updateUserInfo(userFull, true);
                                    fileRefController = this;
                                    fileReference3 = fileRefController.getFileReference(botInfo.description_document, null, requester.location, zArr, inputFileLocationArr2);
                                    if (fileReference3 != null) {
                                        zArr3 = zArr;
                                        inputFileLocationArr = inputFileLocationArr2;
                                        i3 = 1;
                                    } else {
                                        fileReference3 = fileRefController.getFileReference(botInfo.description_photo, requester.location, zArr, inputFileLocationArr2);
                                    }
                                } else {
                                    fileRefController = this;
                                    fileReference3 = bArr2;
                                }
                            } else {
                                FileRefController fileRefController2 = this;
                                if (tLObject2 instanceof TLRPC.TL_attachMenuBotsBot) {
                                    TLRPC.TL_attachMenuBot tL_attachMenuBot = ((TLRPC.TL_attachMenuBotsBot) tLObject2).bot;
                                    ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList6 = tL_attachMenuBot.icons;
                                    int size6 = arrayList6.size();
                                    byte[] fileReference5 = bArr2;
                                    int i18 = 0;
                                    while (i18 < size6) {
                                        int i19 = i18 + 1;
                                        int i20 = size6;
                                        fileReference5 = fileRefController2.getFileReference(arrayList6.get(i18).icon, null, requester.location, zArr, inputFileLocationArr2);
                                        if (fileReference5 != null) {
                                            break;
                                        }
                                        fileRefController2 = this;
                                        i18 = i19;
                                        size6 = i20;
                                    }
                                    if (z) {
                                        TLRPC.TL_attachMenuBots attachMenuBots = getMediaDataController().getAttachMenuBots();
                                        ArrayList<TLRPC.TL_attachMenuBot> arrayList7 = new ArrayList<>(attachMenuBots.bots);
                                        int i21 = 0;
                                        while (true) {
                                            if (i21 >= arrayList7.size()) {
                                                bArr2 = fileReference5;
                                                zArr2 = zArr;
                                                break;
                                            }
                                            bArr2 = fileReference5;
                                            zArr2 = zArr;
                                            if (arrayList7.get(i21).bot_id == tL_attachMenuBot.bot_id) {
                                                arrayList7.set(i21, tL_attachMenuBot);
                                                break;
                                            }
                                            i21++;
                                            fileReference5 = bArr2;
                                            zArr = zArr2;
                                        }
                                        attachMenuBots.bots = arrayList7;
                                        getMediaDataController().processLoadedMenuBots(attachMenuBots, attachMenuBots.hash, (int) (System.currentTimeMillis() / 1000), false);
                                    } else {
                                        bArr2 = fileReference5;
                                        zArr2 = zArr;
                                    }
                                    fileRefController = this;
                                    inputFileLocationArr = inputFileLocationArr2;
                                    requester2 = requester;
                                } else if (tLObject2 instanceof TLRPC.TL_help_appUpdate) {
                                    TLRPC.TL_help_appUpdate tL_help_appUpdate = (TLRPC.TL_help_appUpdate) tLObject2;
                                    try {
                                        SharedConfig.pendingAppUpdate = tL_help_appUpdate;
                                        SharedConfig.saveConfig();
                                    } catch (Exception e) {
                                        FileLog.m898e(e);
                                    }
                                    try {
                                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
                                    } catch (Exception e2) {
                                        FileLog.m898e(e2);
                                    }
                                    try {
                                        TLRPC.Document document4 = tL_help_appUpdate.document;
                                        if (document4 != null) {
                                            fileReference3 = document4.file_reference;
                                            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                                            TLRPC.Document document5 = tL_help_appUpdate.document;
                                            tL_inputDocumentFileLocation.id = document5.id;
                                            tL_inputDocumentFileLocation.access_hash = document5.access_hash;
                                            tL_inputDocumentFileLocation.file_reference = document5.file_reference;
                                            tL_inputDocumentFileLocation.thumb_size = _UrlKt.FRAGMENT_ENCODE_SET;
                                            inputFileLocationArr2 = new TLRPC.InputFileLocation[]{tL_inputDocumentFileLocation};
                                        } else {
                                            fileReference3 = bArr2;
                                        }
                                    } catch (Exception e3) {
                                        FileLog.m898e(e3);
                                        fileReference3 = null;
                                    }
                                    if (fileReference3 == null) {
                                        zArr = zArr;
                                        fileReference3 = getFileReference(tL_help_appUpdate.document, null, requester.location, zArr, inputFileLocationArr2);
                                    } else {
                                        zArr = zArr;
                                    }
                                    if (fileReference3 == null) {
                                        fileRefController = this;
                                        fileReference3 = fileRefController.getFileReference(tL_help_appUpdate.sticker, null, requester.location, zArr, inputFileLocationArr2);
                                    }
                                } else {
                                    fileRefController = this;
                                    zArr = zArr;
                                    if (tLObject2 instanceof TLRPC.TL_messages_webPage) {
                                        TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject2;
                                        fileRefController.getMessagesController().putChats(tL_messages_webPage.chats, false);
                                        fileRefController.getMessagesController().putUsers(tL_messages_webPage.users, false);
                                        fileReference3 = fileRefController.getFileReference(tL_messages_webPage.webpage, requester.location, zArr, inputFileLocationArr2);
                                    } else if (tLObject2 instanceof TLRPC.WebPage) {
                                        fileReference3 = fileRefController.getFileReference((TLRPC.WebPage) tLObject2, requester.location, zArr, inputFileLocationArr2);
                                    } else if (tLObject2 instanceof TL_account.TL_wallPapers) {
                                        TL_account.TL_wallPapers tL_wallPapers = (TL_account.TL_wallPapers) tLObject2;
                                        int size7 = tL_wallPapers.wallpapers.size();
                                        fileReference3 = bArr2;
                                        int i22 = 0;
                                        while (i22 < size7) {
                                            fileReference3 = fileRefController.getFileReference(tL_wallPapers.wallpapers.get(i22).document, null, requester.location, zArr, inputFileLocationArr2);
                                            if (fileReference3 != null) {
                                                break;
                                            }
                                            i22++;
                                            fileRefController = this;
                                        }
                                        if (fileReference3 != null && z) {
                                            getMessagesStorage().putWallpapers(tL_wallPapers.wallpapers, 1);
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_wallPaper) {
                                        TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) tLObject2;
                                        fileReference3 = getFileReference(tL_wallPaper.document, null, requester.location, zArr, inputFileLocationArr2);
                                        if (fileReference3 != null && z) {
                                            ArrayList<TLRPC.WallPaper> arrayList8 = new ArrayList<>();
                                            arrayList8.add(tL_wallPaper);
                                            getMessagesStorage().putWallpapers(arrayList8, 0);
                                        }
                                    } else if (tLObject2 instanceof TLRPC.TL_theme) {
                                        final TLRPC.TL_theme tL_theme = (TLRPC.TL_theme) tLObject2;
                                        fileRefController = this;
                                        fileReference3 = fileRefController.getFileReference(tL_theme.document, null, requester.location, zArr, inputFileLocationArr2);
                                        if (fileReference3 != null && z) {
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda0
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    Theme.setThemeFileReference(tL_theme);
                                                }
                                            });
                                        }
                                    } else {
                                        fileRefController = this;
                                        if (tLObject2 instanceof Vector) {
                                            Vector vector2 = (Vector) tLObject2;
                                            if (vector2.objects.isEmpty()) {
                                                fileReference3 = bArr2;
                                            } else {
                                                int size8 = vector2.objects.size();
                                                fileReference3 = bArr2;
                                                int i23 = 0;
                                                while (i23 < size8) {
                                                    Object obj2 = vector2.objects.get(i23);
                                                    if (obj2 instanceof TLRPC.User) {
                                                        final TLRPC.User user = (TLRPC.User) obj2;
                                                        fileReference3 = fileRefController.getFileReference(user, requester.location, zArr, inputFileLocationArr2);
                                                        if (!z || fileReference3 == null) {
                                                            vector = vector2;
                                                            i = size8;
                                                            i2 = i23;
                                                        } else {
                                                            ArrayList arrayList9 = new ArrayList();
                                                            arrayList9.add(user);
                                                            vector = vector2;
                                                            i = size8;
                                                            i2 = i23;
                                                            fileRefController.getMessagesStorage().putUsersAndChats(arrayList9, null, true, true);
                                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    this.f$0.lambda$onRequestComplete$46(user);
                                                                }
                                                            });
                                                        }
                                                    } else {
                                                        vector = vector2;
                                                        i = size8;
                                                        i2 = i23;
                                                        if (obj2 instanceof TLRPC.Chat) {
                                                            final TLRPC.Chat chat = (TLRPC.Chat) obj2;
                                                            byte[] fileReference6 = fileRefController.getFileReference(chat, requester.location, zArr, inputFileLocationArr2);
                                                            if (z && fileReference6 != null) {
                                                                ArrayList arrayList10 = new ArrayList();
                                                                arrayList10.add(chat);
                                                                fileRefController.getMessagesStorage().putUsersAndChats(null, arrayList10, true, true);
                                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda2
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        this.f$0.lambda$onRequestComplete$47(chat);
                                                                    }
                                                                });
                                                            }
                                                            fileReference3 = fileReference6;
                                                        }
                                                    }
                                                    if (fileReference3 != null) {
                                                        break;
                                                    }
                                                    i23 = i2 + 1;
                                                    vector2 = vector;
                                                    size8 = i;
                                                }
                                            }
                                        } else if (tLObject2 instanceof TLRPC.TL_messages_chats) {
                                            TLRPC.TL_messages_chats tL_messages_chats = (TLRPC.TL_messages_chats) tLObject2;
                                            if (tL_messages_chats.chats.isEmpty()) {
                                                fileReference3 = bArr2;
                                            } else {
                                                int size9 = tL_messages_chats.chats.size();
                                                fileReference3 = bArr2;
                                                int i24 = 0;
                                                while (true) {
                                                    if (i24 >= size9) {
                                                        break;
                                                    }
                                                    final TLRPC.Chat chat2 = tL_messages_chats.chats.get(i24);
                                                    byte[] fileReference7 = fileRefController.getFileReference(chat2, requester.location, zArr, inputFileLocationArr2);
                                                    if (fileReference7 != null) {
                                                        if (z) {
                                                            ArrayList arrayList11 = new ArrayList();
                                                            arrayList11.add(chat2);
                                                            obj = null;
                                                            fileRefController.getMessagesStorage().putUsersAndChats(null, arrayList11, true, true);
                                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda3
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    this.f$0.lambda$onRequestComplete$48(chat2);
                                                                }
                                                            });
                                                        } else {
                                                            obj = null;
                                                        }
                                                        fileReference3 = fileReference7;
                                                    } else {
                                                        i24++;
                                                        fileReference3 = fileReference7;
                                                    }
                                                }
                                            }
                                        } else if (tLObject2 instanceof TLRPC.TL_messages_savedGifs) {
                                            TLRPC.TL_messages_savedGifs tL_messages_savedGifs = (TLRPC.TL_messages_savedGifs) tLObject2;
                                            int size10 = tL_messages_savedGifs.gifs.size();
                                            fileReference3 = bArr2;
                                            int i25 = 0;
                                            while (i25 < size10) {
                                                int i26 = size10;
                                                fileReference3 = fileRefController.getFileReference(tL_messages_savedGifs.gifs.get(i25), null, requester.location, zArr, inputFileLocationArr2);
                                                if (fileReference3 != null) {
                                                    break;
                                                }
                                                i25++;
                                                fileRefController = this;
                                                size10 = i26;
                                            }
                                            if (z) {
                                                getMediaDataController().processLoadedRecentDocuments(0, tL_messages_savedGifs.gifs, true, 0, true);
                                            }
                                        } else if (tLObject2 instanceof TLRPC.TL_messages_stickerSet) {
                                            final TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject2;
                                            if (bArr2 == null) {
                                                int size11 = tL_messages_stickerSet.documents.size();
                                                fileReference3 = bArr2;
                                                int i27 = 0;
                                                while (true) {
                                                    if (i27 >= size11) {
                                                        fileRefController = this;
                                                        break;
                                                    }
                                                    int i28 = size11;
                                                    fileRefController = this;
                                                    fileReference3 = fileRefController.getFileReference(tL_messages_stickerSet.documents.get(i27), null, requester.location, zArr, inputFileLocationArr2);
                                                    if (fileReference3 != null) {
                                                        break;
                                                    }
                                                    i27++;
                                                    size11 = i28;
                                                }
                                            } else {
                                                fileRefController = this;
                                                fileReference3 = bArr2;
                                            }
                                            if (z) {
                                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileRefController$$ExternalSyntheticLambda4
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        this.f$0.lambda$onRequestComplete$49(tL_messages_stickerSet);
                                                    }
                                                });
                                            }
                                        } else {
                                            FileRefController fileRefController3 = this;
                                            if (tLObject2 instanceof TLRPC.TL_messages_recentStickers) {
                                                TLRPC.TL_messages_recentStickers tL_messages_recentStickers = (TLRPC.TL_messages_recentStickers) tLObject2;
                                                int size12 = tL_messages_recentStickers.stickers.size();
                                                fileReference3 = bArr2;
                                                int i29 = 0;
                                                while (i29 < size12) {
                                                    int i30 = size12;
                                                    fileReference3 = fileRefController3.getFileReference(tL_messages_recentStickers.stickers.get(i29), null, requester.location, zArr, inputFileLocationArr2);
                                                    if (fileReference3 != null) {
                                                        break;
                                                    }
                                                    i29++;
                                                    fileRefController3 = this;
                                                    size12 = i30;
                                                }
                                                if (z) {
                                                    getMediaDataController().processLoadedRecentDocuments(0, tL_messages_recentStickers.stickers, false, 0, true);
                                                }
                                            } else if (tLObject2 instanceof TLRPC.TL_messages_favedStickers) {
                                                TLRPC.TL_messages_favedStickers tL_messages_favedStickers = (TLRPC.TL_messages_favedStickers) tLObject2;
                                                int size13 = tL_messages_favedStickers.stickers.size();
                                                fileReference3 = bArr2;
                                                int i31 = 0;
                                                while (true) {
                                                    if (i31 >= size13) {
                                                        fileRefController = this;
                                                        break;
                                                    }
                                                    int i32 = size13;
                                                    fileRefController = this;
                                                    fileReference3 = fileRefController.getFileReference(tL_messages_favedStickers.stickers.get(i31), null, requester.location, zArr, inputFileLocationArr2);
                                                    if (fileReference3 != null) {
                                                        break;
                                                    }
                                                    i31++;
                                                    size13 = i32;
                                                }
                                                if (z) {
                                                    fileRefController.getMediaDataController().processLoadedRecentDocuments(2, tL_messages_favedStickers.stickers, false, 0, true);
                                                }
                                            } else {
                                                fileRefController = this;
                                                if (tLObject2 instanceof TLRPC.photos_Photos) {
                                                    TLRPC.photos_Photos photos_photos = (TLRPC.photos_Photos) tLObject2;
                                                    int size14 = photos_photos.photos.size();
                                                    fileReference3 = bArr2;
                                                    for (int i33 = 0; i33 < size14; i33++) {
                                                        fileReference3 = fileRefController.getFileReference(photos_photos.photos.get(i33), requester.location, zArr, inputFileLocationArr2);
                                                        if (fileReference3 != null) {
                                                            break;
                                                        }
                                                    }
                                                } else if (tLObject2 instanceof TL_stories.TL_stories_stories) {
                                                    TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject2;
                                                    if (tL_stories_stories.stories.isEmpty()) {
                                                        storyItem = null;
                                                        fileReference = bArr2;
                                                    } else {
                                                        TL_stories.StoryItem storyItem2 = tL_stories_stories.stories.get(0);
                                                        fileReference = (bArr2 != null || (document2 = storyItem2.music) == null) ? bArr2 : fileRefController.getFileReference(document2, null, requester.location, zArr, inputFileLocationArr2);
                                                        TLRPC.MessageMedia messageMedia4 = storyItem2.media;
                                                        if (messageMedia4 != null) {
                                                            if (fileReference == null && (photo2 = messageMedia4.photo) != null) {
                                                                fileReference = fileRefController.getFileReference(photo2, requester.location, zArr, inputFileLocationArr2);
                                                            }
                                                            if (fileReference == null && (photo = storyItem2.media.video_cover) != null) {
                                                                fileReference = fileRefController.getFileReference(photo, requester.location, zArr, inputFileLocationArr2);
                                                            }
                                                            if (fileReference == null && (document = (messageMedia = storyItem2.media).document) != null) {
                                                                fileReference = fileRefController.getFileReference(document, messageMedia.alt_documents, requester.location, zArr, inputFileLocationArr2);
                                                            }
                                                            storyItem = storyItem2;
                                                        } else {
                                                            storyItem = null;
                                                        }
                                                    }
                                                    if (requester.args[1] instanceof FileLoadOperation) {
                                                        Object obj3 = ((FileLoadOperation) requester.args[1]).parentObject;
                                                        if (obj3 instanceof TL_stories.StoryItem) {
                                                            TL_stories.StoryItem storyItem3 = (TL_stories.StoryItem) obj3;
                                                            if (storyItem == null) {
                                                                TL_stories.TL_updateStory tL_updateStory = new TL_stories.TL_updateStory();
                                                                requester2 = requester;
                                                                tL_updateStory.peer = fileRefController.getMessagesController().getPeer(storyItem3.dialogId);
                                                                TL_stories.TL_storyItemDeleted tL_storyItemDeleted = new TL_stories.TL_storyItemDeleted();
                                                                tL_updateStory.story = tL_storyItemDeleted;
                                                                tL_storyItemDeleted.id = storyItem3.id;
                                                                ArrayList<TLRPC.Update> arrayList12 = new ArrayList<>();
                                                                arrayList12.add(tL_updateStory);
                                                                fileRefController.getMessagesController().processUpdateArray(arrayList12, null, null, false, 0);
                                                            } else {
                                                                requester2 = requester;
                                                                TLRPC.User user2 = fileRefController.getMessagesController().getUser(Long.valueOf(storyItem3.dialogId));
                                                                if (user2 != null && user2.contact) {
                                                                    MessagesController.getInstance(fileRefController.currentAccount).getStoriesController().getStoriesStorage().updateStoryItem(storyItem3.dialogId, storyItem);
                                                                }
                                                            }
                                                            if (storyItem == null || fileReference != null) {
                                                                bArr = fileReference;
                                                                zArr2 = zArr;
                                                            } else {
                                                                TL_stories.TL_updateStory tL_updateStory2 = new TL_stories.TL_updateStory();
                                                                bArr = fileReference;
                                                                zArr2 = zArr;
                                                                tL_updateStory2.peer = MessagesController.getInstance(fileRefController.currentAccount).getPeer(storyItem3.dialogId);
                                                                tL_updateStory2.story = storyItem;
                                                                ArrayList<TLRPC.Update> arrayList13 = new ArrayList<>();
                                                                arrayList13.add(tL_updateStory2);
                                                                MessagesController.getInstance(fileRefController.currentAccount).processUpdateArray(arrayList13, null, null, false, 0);
                                                            }
                                                        } else {
                                                            zArr2 = zArr;
                                                            requester2 = requester;
                                                            bArr = fileReference;
                                                        }
                                                        inputFileLocationArr = inputFileLocationArr2;
                                                        fileReference3 = bArr;
                                                        if (fileReference3 == null) {
                                                            i3 = 1;
                                                            fileRefController.sendErrorToObject(requester2.args, 1);
                                                        } else if (fileRefController.onUpdateObjectReference(requester2, fileReference3, inputFileLocationArr != null ? inputFileLocationArr[0] : null, z2)) {
                                                            zArr3 = zArr2;
                                                            i3 = 1;
                                                            z3 = true;
                                                        } else {
                                                            i3 = 1;
                                                        }
                                                        zArr3 = zArr2;
                                                    }
                                                } else {
                                                    zArr2 = zArr;
                                                    requester2 = requester;
                                                    inputFileLocationArr = inputFileLocationArr2;
                                                }
                                            }
                                        }
                                    }
                                }
                                fileReference3 = bArr2;
                                if (fileReference3 == null) {
                                }
                                zArr3 = zArr2;
                            }
                            i8++;
                            tL_error2 = tL_error;
                            i6 = i3;
                        }
                        fileRefController = this;
                    }
                    zArr2 = zArr;
                    inputFileLocationArr = inputFileLocationArr2;
                    requester2 = requester;
                    if (fileReference3 == null) {
                    }
                    zArr3 = zArr2;
                    i8++;
                    tL_error2 = tL_error;
                    i6 = i3;
                }
                i8++;
                tL_error2 = tL_error;
                i6 = i3;
            }
            fileRefController.locationRequester.remove(str);
            if (z3) {
                fileRefController.putReponseToCache(str, tLObject2);
            }
            return z3;
        }
        str3 = str4;
        int i62 = 1;
        if (str2 != null) {
            tL_error2 = tL_error;
            tLObject2 = tLObject4;
            z3 = false;
        }
        arrayList = fileRefController.locationRequester.get(str);
        if (arrayList != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$46(TLRPC.User user) {
        getMessagesController().putUser(user, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$47(TLRPC.Chat chat) {
        getMessagesController().putChat(chat, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$48(TLRPC.Chat chat) {
        getMessagesController().putChat(chat, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestComplete$49(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        getMediaDataController().replaceStickerSet(tL_messages_stickerSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x057d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Pair<byte[], TLRPC.InputFileLocation> getFileReferenceFromResponse(TLRPC.InputFileLocation inputFileLocation, String str, String str2, TLObject tLObject, Object... objArr) {
        TLRPC.InputFileLocation[] inputFileLocationArr;
        boolean[] zArr;
        TLObject tLObject2;
        byte[] fileReference;
        TLRPC.InputFileLocation[] inputFileLocationArr2;
        TL_stories.StoryItem storyItem;
        TLRPC.MessageMedia messageMedia;
        TLRPC.MessageMedia messageMedia2;
        TLRPC.Document document;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        byte[] fileReference2;
        boolean[] zArr2;
        TLRPC.InputFileLocation[] inputFileLocationArr3;
        FileRefController fileRefController;
        TLRPC.InputFileLocation inputFileLocation2;
        TLRPC.InputFileLocation inputFileLocation3;
        TLRPC.InputFileLocation inputFileLocation4 = null;
        if ((inputFileLocation instanceof TLRPC.TL_inputFileLocation) || (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation)) {
            inputFileLocationArr = new TLRPC.InputFileLocation[1];
            zArr = new boolean[1];
        } else {
            inputFileLocationArr = null;
            zArr = null;
        }
        if (str2 != null) {
            tLObject2 = tLObject;
            Pair<byte[], TLRPC.InputFileLocation> fileReferenceFromResponse = getFileReferenceFromResponse(inputFileLocation, str, null, tLObject2, objArr);
            if (fileReferenceFromResponse != null) {
                fileReference = (byte[]) fileReferenceFromResponse.first;
                Object obj = fileReferenceFromResponse.second;
                if (obj != null && inputFileLocationArr != null) {
                    inputFileLocationArr[0] = (TLRPC.InputFileLocation) obj;
                }
            }
            if (!(tLObject2 instanceof StoriesController.BotPreview)) {
                TLRPC.MessageMedia messageMedia3 = ((StoriesController.BotPreview) tLObject2).media;
                TLRPC.Document document2 = messageMedia3.document;
                if (document2 != null) {
                    inputFileLocationArr2 = inputFileLocationArr;
                    fileReference = getFileReference(document2, messageMedia3.alt_documents, inputFileLocation, zArr, inputFileLocationArr2);
                } else {
                    inputFileLocationArr2 = inputFileLocationArr;
                    boolean[] zArr3 = zArr;
                    TLRPC.Photo photo3 = messageMedia3.photo;
                    if (photo3 != null) {
                        fileReference = getFileReference(photo3, inputFileLocation, zArr3, inputFileLocationArr2);
                    }
                }
            } else {
                FileRefController fileRefController2 = this;
                TLRPC.InputFileLocation inputFileLocation5 = inputFileLocation;
                inputFileLocationArr2 = inputFileLocationArr;
                boolean[] zArr4 = zArr;
                if (tLObject2 instanceof TLRPC.messages_Messages) {
                    TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject2;
                    if (!messages_messages.messages.isEmpty()) {
                        int size = messages_messages.messages.size();
                        for (int i = 0; i < size; i++) {
                            TLRPC.Message message = messages_messages.messages.get(i);
                            TLRPC.MessageMedia messageMedia4 = message.media;
                            if (messageMedia4 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia4;
                                for (int i2 = 0; i2 < tL_messageMediaPaidMedia.extended_media.size(); i2++) {
                                    TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i2);
                                    if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                        fileReference = fileRefController2.getFileReferenceForMediaImpl(((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media, inputFileLocation5, zArr4, inputFileLocationArr2);
                                    }
                                    if (fileReference != null) {
                                        break;
                                    }
                                }
                            } else if (messageMedia4 instanceof TLRPC.TL_messageMediaPoll) {
                                fileReference = fileRefController2.getFileReferenceForPoll((TLRPC.TL_messageMediaPoll) messageMedia4, inputFileLocation5, zArr4, inputFileLocationArr2);
                            } else if (messageMedia4 != null) {
                                fileReference = fileRefController2.getFileReferenceForMediaImpl(messageMedia4, inputFileLocation5, zArr4, inputFileLocationArr2);
                            } else {
                                TLRPC.MessageAction messageAction = message.action;
                                if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto)) {
                                    fileReference = fileRefController2.getFileReference(messageAction.photo, inputFileLocation5, zArr4, inputFileLocationArr2);
                                }
                            }
                        }
                        if (fileReference == null) {
                            fileRefController2.getMessagesStorage().replaceMessageIfExists(messages_messages.messages.get(0), messages_messages.users, messages_messages.chats, true);
                            if (BuildVars.DEBUG_VERSION) {
                                FileLog.m895d("file ref not found in messages, replacing message");
                            }
                        }
                    } else if (BuildVars.DEBUG_VERSION) {
                        FileLog.m895d("empty messages, file ref not found");
                    }
                } else if (tLObject2 instanceof TLRPC.TL_help_premiumPromo) {
                    ArrayList<TLRPC.Document> arrayList = ((TLRPC.TL_help_premiumPromo) tLObject2).videos;
                    int size2 = arrayList.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        int i4 = i3 + 1;
                        TLRPC.Document document3 = arrayList.get(i3);
                        boolean[] zArr5 = zArr4;
                        fileReference2 = fileRefController2.getFileReference(document3, null, inputFileLocation5, zArr5, inputFileLocationArr2);
                        zArr4 = zArr5;
                        if (fileReference2 != null) {
                            fileReference = fileReference2;
                            break;
                        }
                        inputFileLocation5 = inputFileLocation;
                        fileReference = fileReference2;
                        i3 = i4;
                        fileRefController2 = this;
                    }
                } else {
                    if (tLObject2 instanceof TLRPC.TL_messages_availableReactions) {
                        TLRPC.TL_messages_availableReactions tL_messages_availableReactions = (TLRPC.TL_messages_availableReactions) tLObject2;
                        getMediaDataController().processLoadedReactions(tL_messages_availableReactions.reactions, tL_messages_availableReactions.hash, (int) (System.currentTimeMillis() / 1000), false);
                        ArrayList<TLRPC.TL_availableReaction> arrayList2 = tL_messages_availableReactions.reactions;
                        int size3 = arrayList2.size();
                        int i5 = 0;
                        while (i5 < size3) {
                            int i6 = i5 + 1;
                            TLRPC.TL_availableReaction tL_availableReaction = arrayList2.get(i5);
                            boolean[] zArr6 = zArr4;
                            fileReference2 = getFileReference(tL_availableReaction.static_icon, null, inputFileLocation, zArr6, inputFileLocationArr2);
                            if (fileReference2 == null && (fileReference2 = getFileReference(tL_availableReaction.appear_animation, null, inputFileLocation, zArr6, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.select_animation, null, inputFileLocation, zArr6, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.activate_animation, null, inputFileLocation, zArr6, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.effect_animation, null, inputFileLocation, zArr6, inputFileLocationArr2)) == null && (fileReference2 = getFileReference(tL_availableReaction.around_animation, null, inputFileLocation, zArr6, inputFileLocationArr2)) == null) {
                                fileReference2 = getFileReference(tL_availableReaction.center_icon, null, inputFileLocation, zArr6, inputFileLocationArr2);
                                zArr4 = zArr6;
                                if (fileReference2 == null) {
                                    fileReference = fileReference2;
                                    i5 = i6;
                                }
                            }
                            fileReference = fileReference2;
                            break;
                        }
                    }
                    if (tLObject2 instanceof TLRPC.TL_users_userFull) {
                        TLRPC.TL_users_userFull tL_users_userFull = (TLRPC.TL_users_userFull) tLObject2;
                        getMessagesController().putUsers(tL_users_userFull.users, false);
                        getMessagesController().putChats(tL_users_userFull.chats, false);
                        TLRPC.UserFull userFull = tL_users_userFull.full_user;
                        TL_bots.BotInfo botInfo = userFull.bot_info;
                        if (botInfo != null) {
                            getMessagesStorage().updateUserInfo(userFull, true);
                            if (fileReference == null) {
                                inputFileLocation2 = inputFileLocation;
                                byte[] fileReference3 = getFileReference(botInfo.description_document, null, inputFileLocation2, zArr4, inputFileLocationArr2);
                                fileRefController = this;
                                zArr4 = zArr4;
                                fileReference = fileReference3;
                            } else {
                                fileRefController = this;
                                inputFileLocation2 = inputFileLocation;
                            }
                            if (fileReference == null) {
                                fileReference = fileRefController.getFileReference(botInfo.description_photo, inputFileLocation2, zArr4, inputFileLocationArr2);
                            }
                        }
                    } else {
                        FileRefController fileRefController3 = this;
                        TLRPC.InputFileLocation inputFileLocation6 = inputFileLocation;
                        if (tLObject2 instanceof TLRPC.TL_attachMenuBotsBot) {
                            ArrayList<TLRPC.TL_attachMenuBotIcon> arrayList3 = ((TLRPC.TL_attachMenuBotsBot) tLObject2).bot.icons;
                            int size4 = arrayList3.size();
                            int i7 = 0;
                            while (i7 < size4) {
                                int i8 = i7 + 1;
                                TLRPC.Document document4 = arrayList3.get(i7).icon;
                                boolean[] zArr7 = zArr4;
                                fileReference2 = fileRefController3.getFileReference(document4, null, inputFileLocation6, zArr7, inputFileLocationArr2);
                                zArr4 = zArr7;
                                if (fileReference2 != null) {
                                    fileReference = fileReference2;
                                    break;
                                }
                                inputFileLocation6 = inputFileLocation;
                                fileReference = fileReference2;
                                i7 = i8;
                                fileRefController3 = this;
                            }
                        } else if (tLObject2 instanceof TLRPC.TL_help_appUpdate) {
                            TLRPC.TL_help_appUpdate tL_help_appUpdate = (TLRPC.TL_help_appUpdate) tLObject2;
                            try {
                                SharedConfig.pendingAppUpdate = tL_help_appUpdate;
                                SharedConfig.saveConfig();
                            } catch (Exception e) {
                                FileLog.m898e(e);
                            }
                            try {
                                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
                            } catch (Exception e2) {
                                FileLog.m898e(e2);
                            }
                            try {
                                TLRPC.Document document5 = tL_help_appUpdate.document;
                                if (document5 != null) {
                                    fileReference = document5.file_reference;
                                    TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                                    TLRPC.Document document6 = tL_help_appUpdate.document;
                                    tL_inputDocumentFileLocation.id = document6.id;
                                    tL_inputDocumentFileLocation.access_hash = document6.access_hash;
                                    tL_inputDocumentFileLocation.file_reference = document6.file_reference;
                                    tL_inputDocumentFileLocation.thumb_size = _UrlKt.FRAGMENT_ENCODE_SET;
                                    inputFileLocationArr3 = new TLRPC.InputFileLocation[]{tL_inputDocumentFileLocation};
                                } else {
                                    inputFileLocationArr3 = inputFileLocationArr2;
                                }
                                inputFileLocationArr2 = inputFileLocationArr3;
                            } catch (Exception e3) {
                                FileLog.m898e(e3);
                                fileReference = null;
                            }
                            if (fileReference == null) {
                                zArr2 = zArr4;
                                fileReference = getFileReference(tL_help_appUpdate.document, null, inputFileLocation, zArr2, inputFileLocationArr2);
                            } else {
                                zArr2 = zArr4;
                            }
                            if (fileReference == null) {
                                fileReference = getFileReference(tL_help_appUpdate.sticker, null, inputFileLocation, zArr2, inputFileLocationArr2);
                            }
                        } else {
                            FileRefController fileRefController4 = this;
                            TLRPC.InputFileLocation inputFileLocation7 = inputFileLocation;
                            if (tLObject2 instanceof TLRPC.TL_messages_webPage) {
                                TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject2;
                                fileRefController4.getMessagesController().putChats(tL_messages_webPage.chats, false);
                                fileRefController4.getMessagesController().putUsers(tL_messages_webPage.users, false);
                                fileReference = fileRefController4.getFileReference(tL_messages_webPage.webpage, inputFileLocation7, zArr4, inputFileLocationArr2);
                            } else if (tLObject2 instanceof TLRPC.WebPage) {
                                fileReference = fileRefController4.getFileReference((TLRPC.WebPage) tLObject2, inputFileLocation7, zArr4, inputFileLocationArr2);
                            } else if (tLObject2 instanceof TL_account.TL_wallPapers) {
                                TL_account.TL_wallPapers tL_wallPapers = (TL_account.TL_wallPapers) tLObject2;
                                int size5 = tL_wallPapers.wallpapers.size();
                                int i9 = 0;
                                while (i9 < size5) {
                                    boolean[] zArr8 = zArr4;
                                    fileReference2 = fileRefController4.getFileReference(tL_wallPapers.wallpapers.get(i9).document, null, inputFileLocation7, zArr8, inputFileLocationArr2);
                                    zArr4 = zArr8;
                                    if (fileReference2 != null) {
                                        fileReference = fileReference2;
                                        break;
                                    }
                                    i9++;
                                    inputFileLocation7 = inputFileLocation;
                                    fileReference = fileReference2;
                                    fileRefController4 = this;
                                }
                            } else if (tLObject2 instanceof TLRPC.TL_wallPaper) {
                                fileReference = getFileReference(((TLRPC.TL_wallPaper) tLObject2).document, null, inputFileLocation, zArr4, inputFileLocationArr2);
                            } else if (tLObject2 instanceof TLRPC.TL_theme) {
                                fileReference = getFileReference(((TLRPC.TL_theme) tLObject2).document, null, inputFileLocation, zArr4, inputFileLocationArr2);
                            } else {
                                FileRefController fileRefController5 = this;
                                TLRPC.InputFileLocation inputFileLocation8 = inputFileLocation;
                                if (tLObject2 instanceof Vector) {
                                    Vector vector = (Vector) tLObject2;
                                    if (!vector.objects.isEmpty()) {
                                        int size6 = vector.objects.size();
                                        for (int i10 = 0; i10 < size6; i10++) {
                                            Object obj2 = vector.objects.get(i10);
                                            if (obj2 instanceof TLRPC.User) {
                                                fileReference = fileRefController5.getFileReference((TLRPC.User) obj2, inputFileLocation8, zArr4, inputFileLocationArr2);
                                            } else if (obj2 instanceof TLRPC.Chat) {
                                                fileReference = fileRefController5.getFileReference((TLRPC.Chat) obj2, inputFileLocation8, zArr4, inputFileLocationArr2);
                                            }
                                            if (fileReference != null) {
                                                break;
                                            }
                                        }
                                    }
                                } else if (tLObject2 instanceof TLRPC.TL_messages_chats) {
                                    TLRPC.TL_messages_chats tL_messages_chats = (TLRPC.TL_messages_chats) tLObject2;
                                    if (!tL_messages_chats.chats.isEmpty()) {
                                        int size7 = tL_messages_chats.chats.size();
                                        for (int i11 = 0; i11 < size7; i11++) {
                                            fileReference = fileRefController5.getFileReference(tL_messages_chats.chats.get(i11), inputFileLocation8, zArr4, inputFileLocationArr2);
                                            if (fileReference != null) {
                                                break;
                                            }
                                        }
                                    }
                                } else if (tLObject2 instanceof TLRPC.TL_messages_savedGifs) {
                                    TLRPC.TL_messages_savedGifs tL_messages_savedGifs = (TLRPC.TL_messages_savedGifs) tLObject2;
                                    int size8 = tL_messages_savedGifs.gifs.size();
                                    int i12 = 0;
                                    while (i12 < size8) {
                                        boolean[] zArr9 = zArr4;
                                        fileReference2 = fileRefController5.getFileReference(tL_messages_savedGifs.gifs.get(i12), null, inputFileLocation8, zArr9, inputFileLocationArr2);
                                        zArr4 = zArr9;
                                        if (fileReference2 != null) {
                                            fileReference = fileReference2;
                                            break;
                                        }
                                        i12++;
                                        inputFileLocation8 = inputFileLocation;
                                        fileReference = fileReference2;
                                        fileRefController5 = this;
                                    }
                                } else if (tLObject2 instanceof TLRPC.TL_messages_stickerSet) {
                                    TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) tLObject2;
                                    if (fileReference == null) {
                                        int size9 = tL_messages_stickerSet.documents.size();
                                        int i13 = 0;
                                        while (i13 < size9) {
                                            boolean[] zArr10 = zArr4;
                                            fileReference2 = getFileReference(tL_messages_stickerSet.documents.get(i13), null, inputFileLocation, zArr10, inputFileLocationArr2);
                                            zArr4 = zArr10;
                                            if (fileReference2 != null) {
                                                fileReference = fileReference2;
                                                break;
                                            }
                                            i13++;
                                            fileReference = fileReference2;
                                        }
                                    }
                                } else if (tLObject2 instanceof TLRPC.TL_messages_recentStickers) {
                                    TLRPC.TL_messages_recentStickers tL_messages_recentStickers = (TLRPC.TL_messages_recentStickers) tLObject2;
                                    int size10 = tL_messages_recentStickers.stickers.size();
                                    int i14 = 0;
                                    while (i14 < size10) {
                                        boolean[] zArr11 = zArr4;
                                        fileReference2 = getFileReference(tL_messages_recentStickers.stickers.get(i14), null, inputFileLocation, zArr11, inputFileLocationArr2);
                                        zArr4 = zArr11;
                                        if (fileReference2 != null) {
                                            fileReference = fileReference2;
                                            break;
                                        }
                                        i14++;
                                        fileReference = fileReference2;
                                    }
                                } else if (tLObject2 instanceof TLRPC.TL_messages_favedStickers) {
                                    TLRPC.TL_messages_favedStickers tL_messages_favedStickers = (TLRPC.TL_messages_favedStickers) tLObject2;
                                    int size11 = tL_messages_favedStickers.stickers.size();
                                    int i15 = 0;
                                    while (i15 < size11) {
                                        boolean[] zArr12 = zArr4;
                                        fileReference2 = getFileReference(tL_messages_favedStickers.stickers.get(i15), null, inputFileLocation, zArr12, inputFileLocationArr2);
                                        if (fileReference2 != null) {
                                            fileReference = fileReference2;
                                            break;
                                        }
                                        i15++;
                                        fileReference = fileReference2;
                                        zArr4 = zArr12;
                                    }
                                } else {
                                    FileRefController fileRefController6 = this;
                                    if (tLObject2 instanceof TLRPC.photos_Photos) {
                                        TLRPC.photos_Photos photos_photos = (TLRPC.photos_Photos) tLObject2;
                                        int size12 = photos_photos.photos.size();
                                        for (int i16 = 0; i16 < size12; i16++) {
                                            fileReference = fileRefController6.getFileReference(photos_photos.photos.get(i16), inputFileLocation, zArr4, inputFileLocationArr2);
                                            if (fileReference != null) {
                                                break;
                                            }
                                        }
                                    } else if (tLObject2 instanceof TL_stories.TL_stories_stories) {
                                        TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject2;
                                        if (tL_stories_stories.stories.isEmpty() || (messageMedia = (storyItem = tL_stories_stories.stories.get(0)).media) == null) {
                                            storyItem = null;
                                        } else {
                                            if (fileReference == null && (photo2 = messageMedia.photo) != null) {
                                                fileReference = fileRefController6.getFileReference(photo2, inputFileLocation, zArr4, inputFileLocationArr2);
                                            }
                                            if (fileReference == null && (photo = storyItem.media.video_cover) != null) {
                                                fileReference = fileRefController6.getFileReference(photo, inputFileLocation, zArr4, inputFileLocationArr2);
                                            }
                                            if (fileReference == null && (document = (messageMedia2 = storyItem.media).document) != null) {
                                                byte[] fileReference4 = fileRefController6.getFileReference(document, messageMedia2.alt_documents, inputFileLocation, zArr4, inputFileLocationArr2);
                                                fileRefController6 = fileRefController6;
                                                fileReference = fileReference4;
                                            }
                                        }
                                        Object obj3 = objArr[1];
                                        if (obj3 instanceof FileLoadOperation) {
                                            Object obj4 = ((FileLoadOperation) obj3).parentObject;
                                            if (obj4 instanceof TL_stories.StoryItem) {
                                                TL_stories.StoryItem storyItem2 = (TL_stories.StoryItem) obj4;
                                                if (storyItem == null) {
                                                    TL_stories.TL_updateStory tL_updateStory = new TL_stories.TL_updateStory();
                                                    tL_updateStory.peer = fileRefController6.getMessagesController().getPeer(storyItem2.dialogId);
                                                    TL_stories.TL_storyItemDeleted tL_storyItemDeleted = new TL_stories.TL_storyItemDeleted();
                                                    tL_updateStory.story = tL_storyItemDeleted;
                                                    tL_storyItemDeleted.id = storyItem2.id;
                                                    ArrayList<TLRPC.Update> arrayList4 = new ArrayList<>();
                                                    arrayList4.add(tL_updateStory);
                                                    fileRefController6.getMessagesController().processUpdateArray(arrayList4, null, null, false, 0);
                                                } else {
                                                    TLRPC.User user = fileRefController6.getMessagesController().getUser(Long.valueOf(storyItem2.dialogId));
                                                    if (user != null && user.contact) {
                                                        MessagesController.getInstance(fileRefController6.currentAccount).getStoriesController().getStoriesStorage().updateStoryItem(storyItem2.dialogId, storyItem);
                                                    }
                                                }
                                                if (storyItem != null && fileReference == null) {
                                                    TL_stories.TL_updateStory tL_updateStory2 = new TL_stories.TL_updateStory();
                                                    tL_updateStory2.peer = MessagesController.getInstance(fileRefController6.currentAccount).getPeer(storyItem2.dialogId);
                                                    tL_updateStory2.story = storyItem;
                                                    ArrayList<TLRPC.Update> arrayList5 = new ArrayList<>();
                                                    arrayList5.add(tL_updateStory2);
                                                    MessagesController.getInstance(fileRefController6.currentAccount).processUpdateArray(arrayList5, null, null, false, 0);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            TLRPC.InputFileLocation[] inputFileLocationArr4 = inputFileLocationArr2;
            if (fileReference != null) {
                return null;
            }
            if (inputFileLocationArr4 != null && (inputFileLocation3 = inputFileLocationArr4[0]) != null) {
                inputFileLocation4 = inputFileLocation3;
            }
            return new Pair<>(fileReference, inputFileLocation4);
        }
        tLObject2 = tLObject;
        fileReference = null;
        if (!(tLObject2 instanceof StoriesController.BotPreview)) {
        }
        TLRPC.InputFileLocation[] inputFileLocationArr42 = inputFileLocationArr2;
        if (fileReference != null) {
        }
    }

    private byte[] getFileReferenceForPoll(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        ArrayList<TLRPC.PollAnswer> arrayList;
        TLRPC.PollResults pollResults;
        TLRPC.MessageMedia messageMedia;
        if (tL_messageMediaPoll == null) {
            return null;
        }
        byte[] fileReferenceForMediaImpl = getFileReferenceForMediaImpl(tL_messageMediaPoll.attached_media, inputFileLocation, zArr, inputFileLocationArr);
        if (fileReferenceForMediaImpl == null && (pollResults = tL_messageMediaPoll.results) != null && (messageMedia = pollResults.solution_media) != null) {
            fileReferenceForMediaImpl = getFileReferenceForMediaImpl(messageMedia, inputFileLocation, zArr, inputFileLocationArr);
        }
        if (fileReferenceForMediaImpl == null && (arrayList = tL_messageMediaPoll.poll.answers) != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.PollAnswer pollAnswer = arrayList.get(i);
                i++;
                fileReferenceForMediaImpl = getFileReferenceForMediaImpl(pollAnswer.media, inputFileLocation, zArr, inputFileLocationArr);
                if (fileReferenceForMediaImpl != null) {
                    break;
                }
            }
        }
        return fileReferenceForMediaImpl;
    }

    private byte[] getFileReferenceForRichMessage(TL_iv.RichMessage richMessage, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        byte[] fileReference = null;
        if (richMessage == null) {
            return null;
        }
        ArrayList<TLRPC.Photo> arrayList = richMessage.photos;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            TLRPC.Photo photo = arrayList.get(i2);
            i2++;
            fileReference = getFileReference(photo, inputFileLocation, zArr, inputFileLocationArr);
            if (fileReference != null) {
                return fileReference;
            }
        }
        ArrayList<TLRPC.Document> arrayList2 = richMessage.documents;
        int size2 = arrayList2.size();
        while (i < size2) {
            TLRPC.Document document = arrayList2.get(i);
            i++;
            FileRefController fileRefController = this;
            TLRPC.InputFileLocation inputFileLocation2 = inputFileLocation;
            boolean[] zArr2 = zArr;
            TLRPC.InputFileLocation[] inputFileLocationArr2 = inputFileLocationArr;
            fileReference = fileRefController.getFileReference(document, null, inputFileLocation2, zArr2, inputFileLocationArr2);
            if (fileReference != null) {
                return fileReference;
            }
            this = fileRefController;
            inputFileLocation = inputFileLocation2;
            zArr = zArr2;
            inputFileLocationArr = inputFileLocationArr2;
        }
        return fileReference;
    }

    private byte[] getFileReferenceForMediaImpl(TLRPC.MessageMedia messageMedia, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        FileRefController fileRefController;
        TLRPC.InputFileLocation inputFileLocation2;
        boolean[] zArr2;
        TLRPC.InputFileLocation[] inputFileLocationArr2;
        TLRPC.Photo photo;
        byte[] fileReference = null;
        if (messageMedia == null) {
            return null;
        }
        TLRPC.Document document = messageMedia.document;
        if (document != null) {
            fileRefController = this;
            inputFileLocation2 = inputFileLocation;
            zArr2 = zArr;
            inputFileLocationArr2 = inputFileLocationArr;
            fileReference = fileRefController.getFileReference(document, messageMedia.alt_documents, inputFileLocation2, zArr2, inputFileLocationArr2);
        } else {
            fileRefController = this;
            inputFileLocation2 = inputFileLocation;
            zArr2 = zArr;
            inputFileLocationArr2 = inputFileLocationArr;
            TLRPC.TL_game tL_game = messageMedia.game;
            if (tL_game != null) {
                fileReference = fileRefController.getFileReference(tL_game.document, null, inputFileLocation2, zArr2, inputFileLocationArr2);
                if (fileReference == null) {
                    fileReference = fileRefController.getFileReference(messageMedia.game.photo, inputFileLocation2, zArr2, inputFileLocationArr2);
                }
            } else {
                TLRPC.Photo photo2 = messageMedia.photo;
                if (photo2 != null) {
                    fileReference = fileRefController.getFileReference(photo2, inputFileLocation2, zArr2, inputFileLocationArr2);
                } else {
                    TLRPC.WebPage webPage = messageMedia.webpage;
                    if (webPage != null) {
                        fileReference = fileRefController.getFileReference(webPage, inputFileLocation2, zArr2, inputFileLocationArr2);
                    }
                }
            }
        }
        return (fileReference != null || (photo = messageMedia.video_cover) == null) ? fileReference : fileRefController.getFileReference(photo, inputFileLocation2, zArr2, inputFileLocationArr2);
    }

    private boolean updateFileReferenceFromCache(byte[] bArr, TLRPC.InputFileLocation inputFileLocation, TLRPC.InputFileLocation inputFileLocation2, String str, Object... objArr) {
        String strBytesToHex;
        Object obj = objArr[0];
        if (obj instanceof TL_stories.TL_storyItem) {
            ((TL_stories.TL_storyItem) obj).media.document.file_reference = bArr;
            return true;
        }
        if (obj instanceof TLRPC.TL_inputSingleMedia) {
            return false;
        }
        if (objArr.length >= 2) {
            Object obj2 = objArr[1];
            if ((obj2 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj2).media instanceof TLRPC.TL_inputMediaPaidMedia) && ((obj instanceof TLRPC.TL_inputMediaPhoto) || (obj instanceof TLRPC.TL_inputMediaDocument))) {
                return false;
            }
        }
        if (objArr.length >= 2) {
            Object obj3 = objArr[1];
            if ((obj3 instanceof TLRPC.TL_messages_sendMedia) && (((TLRPC.TL_messages_sendMedia) obj3).media instanceof TLRPC.TL_inputMediaPoll) && ((obj instanceof TLRPC.TL_inputMediaPhoto) || (obj instanceof TLRPC.TL_inputMediaDocument))) {
                return false;
            }
        }
        if (objArr.length >= 2) {
            Object obj4 = objArr[1];
            if ((obj4 instanceof TLRPC.TL_ephemeral_sendMessage) && (((TLRPC.TL_ephemeral_sendMessage) obj4).media instanceof TLRPC.TL_inputMediaPaidMedia) && ((obj instanceof TLRPC.TL_inputMediaPhoto) || (obj instanceof TLRPC.TL_inputMediaDocument))) {
                return false;
            }
        }
        if (objArr.length >= 2) {
            Object obj5 = objArr[1];
            if ((obj5 instanceof TLRPC.TL_ephemeral_sendMessage) && (((TLRPC.TL_ephemeral_sendMessage) obj5).media instanceof TLRPC.TL_inputMediaPoll) && ((obj instanceof TLRPC.TL_inputMediaPhoto) || (obj instanceof TLRPC.TL_inputMediaDocument))) {
                return false;
            }
        }
        if (obj instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.InputMedia inputMedia = ((TLRPC.TL_messages_sendMedia) obj).media;
            if (inputMedia instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument = (TLRPC.TL_inputMediaDocument) inputMedia;
                if (isSameReference(tL_inputMediaDocument.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument.id.file_reference = bArr;
            } else if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = (TLRPC.TL_inputMediaPhoto) inputMedia;
                if (isSameReference(tL_inputMediaPhoto.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto.id.file_reference = bArr;
            }
        } else if (obj instanceof TLRPC.TL_ephemeral_sendMessage) {
            TLRPC.InputMedia inputMedia2 = ((TLRPC.TL_ephemeral_sendMessage) obj).media;
            if (inputMedia2 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument2 = (TLRPC.TL_inputMediaDocument) inputMedia2;
                if (isSameReference(tL_inputMediaDocument2.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument2.id.file_reference = bArr;
            } else if (inputMedia2 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto2 = (TLRPC.TL_inputMediaPhoto) inputMedia2;
                if (isSameReference(tL_inputMediaPhoto2.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto2.id.file_reference = bArr;
            }
        } else if (obj instanceof TLRPC.TL_messages_editMessage) {
            TLRPC.InputMedia inputMedia3 = ((TLRPC.TL_messages_editMessage) obj).media;
            if (inputMedia3 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument3 = (TLRPC.TL_inputMediaDocument) inputMedia3;
                if (isSameReference(tL_inputMediaDocument3.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument3.id.file_reference = bArr;
            } else if (inputMedia3 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto3 = (TLRPC.TL_inputMediaPhoto) inputMedia3;
                if (isSameReference(tL_inputMediaPhoto3.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto3.id.file_reference = bArr;
            }
        } else if (obj instanceof TLRPC.TL_messages_addPollAnswer) {
            TLRPC.InputMedia inputMedia4 = ((TLRPC.TL_messages_addPollAnswer) obj).answer.input_media;
            if (inputMedia4 instanceof TLRPC.TL_inputMediaDocument) {
                TLRPC.TL_inputMediaDocument tL_inputMediaDocument4 = (TLRPC.TL_inputMediaDocument) inputMedia4;
                if (isSameReference(tL_inputMediaDocument4.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaDocument4.id.file_reference = bArr;
            } else if (inputMedia4 instanceof TLRPC.TL_inputMediaPhoto) {
                TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto4 = (TLRPC.TL_inputMediaPhoto) inputMedia4;
                if (isSameReference(tL_inputMediaPhoto4.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputMediaPhoto4.id.file_reference = bArr;
            }
        } else if (obj instanceof TLRPC.TL_messages_saveGif) {
            TLRPC.TL_messages_saveGif tL_messages_saveGif = (TLRPC.TL_messages_saveGif) obj;
            if (isSameReference(tL_messages_saveGif.id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveGif.id.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_messages_saveRecentSticker) {
            TLRPC.TL_messages_saveRecentSticker tL_messages_saveRecentSticker = (TLRPC.TL_messages_saveRecentSticker) obj;
            if (isSameReference(tL_messages_saveRecentSticker.id.file_reference, bArr)) {
                return false;
            }
            tL_messages_saveRecentSticker.id.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_stickers_addStickerToSet) {
            TLRPC.TL_stickers_addStickerToSet tL_stickers_addStickerToSet = (TLRPC.TL_stickers_addStickerToSet) obj;
            if (isSameReference(tL_stickers_addStickerToSet.sticker.document.file_reference, bArr)) {
                return false;
            }
            tL_stickers_addStickerToSet.sticker.document.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_messages_faveSticker) {
            TLRPC.TL_messages_faveSticker tL_messages_faveSticker = (TLRPC.TL_messages_faveSticker) obj;
            if (isSameReference(tL_messages_faveSticker.id.file_reference, bArr)) {
                return false;
            }
            tL_messages_faveSticker.id.file_reference = bArr;
        } else if (obj instanceof TLRPC.TL_messages_getAttachedStickers) {
            TLRPC.InputStickeredMedia inputStickeredMedia = ((TLRPC.TL_messages_getAttachedStickers) obj).media;
            if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaDocument) {
                TLRPC.TL_inputStickeredMediaDocument tL_inputStickeredMediaDocument = (TLRPC.TL_inputStickeredMediaDocument) inputStickeredMedia;
                if (isSameReference(tL_inputStickeredMediaDocument.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaDocument.id.file_reference = bArr;
            } else if (inputStickeredMedia instanceof TLRPC.TL_inputStickeredMediaPhoto) {
                TLRPC.TL_inputStickeredMediaPhoto tL_inputStickeredMediaPhoto = (TLRPC.TL_inputStickeredMediaPhoto) inputStickeredMedia;
                if (isSameReference(tL_inputStickeredMediaPhoto.id.file_reference, bArr)) {
                    return false;
                }
                tL_inputStickeredMediaPhoto.id.file_reference = bArr;
            }
        } else {
            Object obj6 = objArr[1];
            if (obj6 instanceof FileLoadOperation) {
                FileLoadOperation fileLoadOperation = (FileLoadOperation) obj6;
                String strBytesToHex2 = null;
                if (inputFileLocation != null) {
                    if (isSameReference(fileLoadOperation.location.file_reference, inputFileLocation.file_reference)) {
                        return false;
                    }
                    strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                    fileLoadOperation.location = inputFileLocation;
                    if (BuildVars.LOGS_ENABLED) {
                        strBytesToHex2 = Utilities.bytesToHex(inputFileLocation.file_reference);
                    }
                } else {
                    if (isSameReference(inputFileLocation2.file_reference, bArr)) {
                        return false;
                    }
                    strBytesToHex = BuildVars.LOGS_ENABLED ? Utilities.bytesToHex(fileLoadOperation.location.file_reference) : null;
                    TLRPC.InputFileLocation inputFileLocation3 = fileLoadOperation.location;
                    inputFileLocation2.file_reference = bArr;
                    inputFileLocation3.file_reference = bArr;
                    if (BuildVars.LOGS_ENABLED) {
                        strBytesToHex2 = Utilities.bytesToHex(bArr);
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("debug_loading: from fileref cache updated fileref from " + strBytesToHex + " to " + strBytesToHex2);
                }
            }
        }
        return true;
    }

    private void cleanupCache() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastCleanupTime) < 600000) {
            return;
        }
        this.lastCleanupTime = SystemClock.elapsedRealtime();
        ArrayList arrayList = null;
        for (Map.Entry<String, CachedResult> entry : this.responseCache.entrySet()) {
            if (Math.abs(System.currentTimeMillis() - entry.getValue().firstQueryTime) >= 60000) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(entry.getKey());
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.responseCache.remove(arrayList.get(i));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean applyCachedFileReference(Object obj, Object... objArr) {
        String str;
        FileRefController fileRefController;
        Object[] objArr2;
        Pair<byte[], TLRPC.InputFileLocation> fileReferenceFromResponse;
        Pair<TLRPC.InputFileLocation, String> locationAndKey = getLocationAndKey(obj, objArr);
        if (locationAndKey == null) {
            return false;
        }
        TLRPC.InputFileLocation inputFileLocation = (TLRPC.InputFileLocation) locationAndKey.first;
        String str2 = (String) locationAndKey.second;
        String keyForParentObject = getKeyForParentObject(obj);
        if (keyForParentObject == null) {
            return false;
        }
        if (obj instanceof String) {
            String str3 = (String) obj;
            str = "wallpaper";
            if (!"wallpaper".equals(str3)) {
                str = "gif";
                if (!str3.startsWith("gif")) {
                    str = "recent";
                    if (!"recent".equals(str3)) {
                        str = "fav";
                        if (!"fav".equals(str3)) {
                            str = "update";
                            if (!"update".equals(str3)) {
                                str = str2;
                            }
                        }
                    }
                }
            }
        }
        CachedResult cachedResponse = getCachedResponse(str);
        if (cachedResponse != null) {
            fileRefController = this;
            objArr2 = objArr;
            Pair<byte[], TLRPC.InputFileLocation> fileReferenceFromResponse2 = fileRefController.getFileReferenceFromResponse(inputFileLocation, str2, keyForParentObject, cachedResponse.response, objArr2);
            if (fileReferenceFromResponse2 != null) {
                return fileRefController.updateFileReferenceFromCache((byte[]) fileReferenceFromResponse2.first, (TLRPC.InputFileLocation) fileReferenceFromResponse2.second, inputFileLocation, str2, objArr2);
            }
        } else {
            fileRefController = this;
            objArr2 = objArr;
        }
        CachedResult cachedResponse2 = fileRefController.getCachedResponse(keyForParentObject);
        if (cachedResponse2 == null || (fileReferenceFromResponse = fileRefController.getFileReferenceFromResponse(inputFileLocation, keyForParentObject, null, cachedResponse2.response, objArr2)) == null) {
            return false;
        }
        return fileRefController.updateFileReferenceFromCache((byte[]) fileReferenceFromResponse.first, (TLRPC.InputFileLocation) fileReferenceFromResponse.second, inputFileLocation, keyForParentObject, objArr2);
    }

    private CachedResult getCachedResponse(String str) {
        CachedResult cachedResult = this.responseCache.get(str);
        if (cachedResult == null || Math.abs(System.currentTimeMillis() - cachedResult.firstQueryTime) < 60000) {
            return cachedResult;
        }
        this.responseCache.remove(str);
        return null;
    }

    private void putReponseToCache(String str, TLObject tLObject) {
        if (this.responseCache.get(str) == null) {
            CachedResult cachedResult = new CachedResult();
            cachedResult.response = tLObject;
            cachedResult.firstQueryTime = System.currentTimeMillis();
            this.responseCache.put(str, cachedResult);
        }
    }

    private byte[] getFileReference(TLRPC.Document document, ArrayList<TLRPC.Document> arrayList, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        if (document != null && inputFileLocation != null) {
            int i = 0;
            if (!(inputFileLocation instanceof TLRPC.TL_inputDocumentFileLocation)) {
                int size = document.thumbs.size();
                for (int i2 = 0; i2 < size; i2++) {
                    TLRPC.PhotoSize photoSize = document.thumbs.get(i2);
                    byte[] fileReference = getFileReference(photoSize, inputFileLocation, zArr);
                    if (zArr != null && zArr[0]) {
                        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
                        inputFileLocationArr[0] = tL_inputDocumentFileLocation;
                        tL_inputDocumentFileLocation.id = document.id;
                        tL_inputDocumentFileLocation.volume_id = inputFileLocation.volume_id;
                        tL_inputDocumentFileLocation.local_id = inputFileLocation.local_id;
                        tL_inputDocumentFileLocation.access_hash = document.access_hash;
                        byte[] bArr = document.file_reference;
                        tL_inputDocumentFileLocation.file_reference = bArr;
                        tL_inputDocumentFileLocation.thumb_size = photoSize.type;
                        return bArr;
                    }
                    if (fileReference != null) {
                        return fileReference;
                    }
                }
            } else if (document.id == inputFileLocation.id) {
                return document.file_reference;
            }
            if (arrayList != null) {
                while (i < arrayList.size()) {
                    FileRefController fileRefController = this;
                    TLRPC.InputFileLocation inputFileLocation2 = inputFileLocation;
                    boolean[] zArr2 = zArr;
                    TLRPC.InputFileLocation[] inputFileLocationArr2 = inputFileLocationArr;
                    byte[] fileReference2 = fileRefController.getFileReference(arrayList.get(i), null, inputFileLocation2, zArr2, inputFileLocationArr2);
                    if (fileReference2 != null) {
                        return fileReference2;
                    }
                    i++;
                    this = fileRefController;
                    inputFileLocation = inputFileLocation2;
                    zArr = zArr2;
                    inputFileLocationArr = inputFileLocationArr2;
                }
            }
        }
        return null;
    }

    private boolean getPeerReferenceReplacement(TLRPC.User user, TLRPC.Chat chat, boolean z, TLRPC.InputFileLocation inputFileLocation, TLRPC.InputFileLocation[] inputFileLocationArr, boolean[] zArr) {
        TLRPC.InputPeer tL_inputPeerChat;
        TLRPC.InputPeer tL_inputPeerUser;
        if (zArr == null || !zArr[0]) {
            return false;
        }
        TLRPC.TL_inputPeerPhotoFileLocation tL_inputPeerPhotoFileLocation = new TLRPC.TL_inputPeerPhotoFileLocation();
        long j = inputFileLocation.volume_id;
        tL_inputPeerPhotoFileLocation.id = j;
        tL_inputPeerPhotoFileLocation.volume_id = j;
        tL_inputPeerPhotoFileLocation.local_id = inputFileLocation.local_id;
        tL_inputPeerPhotoFileLocation.big = z;
        if (user == null) {
            if (!ChatObject.isChannel(chat)) {
                tL_inputPeerChat = new TLRPC.TL_inputPeerChat();
                tL_inputPeerChat.chat_id = chat.id;
            } else if (chat.access_hash == 0 && chat.fromMessageDialogId != 0 && chat.fromMessageId != 0) {
                TLRPC.TL_inputPeerChannelFromMessage tL_inputPeerChannelFromMessage = new TLRPC.TL_inputPeerChannelFromMessage();
                tL_inputPeerChannelFromMessage.channel_id = chat.id;
                tL_inputPeerChannelFromMessage.peer = getMessagesController().getInputPeer(chat.fromMessageDialogId);
                tL_inputPeerChannelFromMessage.msg_id = chat.fromMessageId;
                tL_inputPeerChat = tL_inputPeerChannelFromMessage;
            } else {
                tL_inputPeerChat = new TLRPC.TL_inputPeerChannel();
                tL_inputPeerChat.channel_id = chat.id;
                tL_inputPeerChat.access_hash = chat.access_hash;
            }
            tL_inputPeerPhotoFileLocation.photo_id = chat.photo.photo_id;
            tL_inputPeerUser = tL_inputPeerChat;
        } else if (user.access_hash == 0 && user.fromMessageId != 0 && user.fromMessageDialogId != 0) {
            tL_inputPeerUser = new TLRPC.TL_inputPeerUserFromMessage();
            tL_inputPeerUser.user_id = user.id;
            tL_inputPeerUser.peer = getMessagesController().getInputPeer(user.fromMessageDialogId);
            tL_inputPeerUser.msg_id = user.fromMessageId;
            tL_inputPeerPhotoFileLocation.photo_id = user.photo.photo_id;
        } else {
            tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
            tL_inputPeerUser.user_id = user.id;
            tL_inputPeerUser.access_hash = user.access_hash;
            tL_inputPeerPhotoFileLocation.photo_id = user.photo.photo_id;
        }
        tL_inputPeerPhotoFileLocation.peer = tL_inputPeerUser;
        inputFileLocationArr[0] = tL_inputPeerPhotoFileLocation;
        return true;
    }

    private byte[] getFileReference(TLRPC.User user, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        TLRPC.UserProfilePhoto userProfilePhoto;
        if (user == null || (userProfilePhoto = user.photo) == null || !(inputFileLocation instanceof TLRPC.TL_inputFileLocation)) {
            return null;
        }
        byte[] fileReference = getFileReference(userProfilePhoto.photo_small, inputFileLocation, zArr);
        if (getPeerReferenceReplacement(user, null, false, inputFileLocation, inputFileLocationArr, zArr)) {
            return new byte[0];
        }
        if (fileReference == null) {
            return getPeerReferenceReplacement(user, null, true, inputFileLocation, inputFileLocationArr, zArr) ? new byte[0] : getFileReference(user.photo.photo_big, inputFileLocation, zArr);
        }
        return fileReference;
    }

    private byte[] getFileReference(TLRPC.Chat chat, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        TLRPC.ChatPhoto chatPhoto;
        if (chat == null || (chatPhoto = chat.photo) == null || !((inputFileLocation instanceof TLRPC.TL_inputFileLocation) || (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation))) {
            return null;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputPeerPhotoFileLocation) {
            zArr[0] = true;
            if (getPeerReferenceReplacement(null, chat, false, inputFileLocation, inputFileLocationArr, zArr)) {
                return new byte[0];
            }
            return null;
        }
        byte[] fileReference = getFileReference(chatPhoto.photo_small, inputFileLocation, zArr);
        if (getPeerReferenceReplacement(null, chat, false, inputFileLocation, inputFileLocationArr, zArr)) {
            return new byte[0];
        }
        if (fileReference == null) {
            return getPeerReferenceReplacement(null, chat, true, inputFileLocation, inputFileLocationArr, zArr) ? new byte[0] : getFileReference(chat.photo.photo_big, inputFileLocation, zArr);
        }
        return fileReference;
    }

    private byte[] getFileReference(TLRPC.Photo photo, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        if (photo == null) {
            return null;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputPhotoFileLocation) {
            if (photo.id == inputFileLocation.id) {
                return photo.file_reference;
            }
            return null;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputFileLocation) {
            int size = photo.sizes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PhotoSize photoSize = photo.sizes.get(i);
                byte[] fileReference = getFileReference(photoSize, inputFileLocation, zArr);
                if (zArr != null && zArr[0]) {
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                    inputFileLocationArr[0] = tL_inputPhotoFileLocation;
                    tL_inputPhotoFileLocation.id = photo.id;
                    tL_inputPhotoFileLocation.volume_id = inputFileLocation.volume_id;
                    tL_inputPhotoFileLocation.local_id = inputFileLocation.local_id;
                    tL_inputPhotoFileLocation.access_hash = photo.access_hash;
                    byte[] bArr = photo.file_reference;
                    tL_inputPhotoFileLocation.file_reference = bArr;
                    tL_inputPhotoFileLocation.thumb_size = photoSize.type;
                    return bArr;
                }
                if (fileReference != null) {
                    return fileReference;
                }
            }
        }
        return null;
    }

    private byte[] getFileReference(TLRPC.PhotoSize photoSize, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr) {
        if (photoSize == null || !(inputFileLocation instanceof TLRPC.TL_inputFileLocation)) {
            return null;
        }
        return getFileReference(photoSize.location, inputFileLocation, zArr);
    }

    private byte[] getFileReference(TLRPC.FileLocation fileLocation, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr) {
        byte[] bArr = null;
        if (fileLocation != null && (inputFileLocation instanceof TLRPC.TL_inputFileLocation) && fileLocation.local_id == inputFileLocation.local_id && fileLocation.volume_id == inputFileLocation.volume_id && (bArr = fileLocation.file_reference) == null && zArr != null) {
            zArr[0] = true;
        }
        return bArr;
    }

    private byte[] getFileReference(TLRPC.WebPage webPage, TLRPC.InputFileLocation inputFileLocation, boolean[] zArr, TLRPC.InputFileLocation[] inputFileLocationArr) {
        byte[] fileReference = getFileReference(webPage.document, null, inputFileLocation, zArr, inputFileLocationArr);
        if (fileReference != null) {
            return fileReference;
        }
        byte[] fileReference2 = getFileReference(webPage.photo, inputFileLocation, zArr, inputFileLocationArr);
        if (fileReference2 != null) {
            return fileReference2;
        }
        if (!webPage.attributes.isEmpty()) {
            int size = webPage.attributes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.WebPageAttribute webPageAttribute = webPage.attributes.get(i);
                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeTheme) {
                    TLRPC.TL_webPageAttributeTheme tL_webPageAttributeTheme = (TLRPC.TL_webPageAttributeTheme) webPageAttribute;
                    int size2 = tL_webPageAttributeTheme.documents.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        byte[] fileReference3 = getFileReference(tL_webPageAttributeTheme.documents.get(i2), null, inputFileLocation, zArr, inputFileLocationArr);
                        if (fileReference3 != null) {
                            return fileReference3;
                        }
                    }
                }
            }
        }
        TL_iv.Page page = webPage.cached_page;
        if (page == null) {
            return null;
        }
        int size3 = page.documents.size();
        int i3 = 0;
        while (true) {
            TL_iv.Page page2 = webPage.cached_page;
            if (i3 < size3) {
                byte[] fileReference4 = getFileReference(page2.documents.get(i3), null, inputFileLocation, zArr, inputFileLocationArr);
                if (fileReference4 != null) {
                    return fileReference4;
                }
                i3++;
            } else {
                int size4 = page2.photos.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    byte[] fileReference5 = getFileReference(webPage.cached_page.photos.get(i4), inputFileLocation, zArr, inputFileLocationArr);
                    if (fileReference5 != null) {
                        return fileReference5;
                    }
                }
                return null;
            }
        }
    }

    public static boolean isFileRefError(String str) {
        if ("FILEREF_EXPIRED".equals(str) || "FILE_REFERENCE_EXPIRED".equals(str) || "FILE_REFERENCE_EMPTY".equals(str)) {
            return true;
        }
        return str != null && str.startsWith("FILE_REFERENCE_");
    }

    public static int getFileRefErrorIndex(String str) {
        if (str != null && str.startsWith("FILE_REFERENCE_") && str.endsWith("_EXPIRED")) {
            try {
                return Integer.parseInt(str.substring(15, str.length() - 8));
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static boolean isFileRefErrorCover(String str) {
        return str != null && isFileRefError(str) && str.endsWith("COVER_EXPIRED");
    }
}
